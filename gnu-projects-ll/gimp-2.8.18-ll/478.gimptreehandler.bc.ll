; ModuleID = './app/core/gimptreehandler.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpTreeHandlerClass = type { %struct._GimpObjectClass }
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
%struct._GimpTreeHandler = type { %struct._GimpObject, %struct._GimpContainer*, i8*, void ()*, i8* }
%struct._GimpContainer = type { %struct._GimpObject, %struct._GimpContainerPriv* }
%struct._GimpContainerPriv = type opaque
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, void (i8*, %struct._GClosure*)* }
%struct._GimpViewable = type { %struct._GimpObject }

@gimp_tree_handler_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"GimpTreeHandler\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"Gimp-Core\00", align 1
@__func__.gimp_tree_handler_connect = private unnamed_addr constant [26 x i8] c"gimp_tree_handler_connect\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"GIMP_IS_CONTAINER (container)\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"signal_name != NULL\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"freeze\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"thaw\00", align 1
@__func__.gimp_tree_handler_disconnect = private unnamed_addr constant [29 x i8] c"gimp_tree_handler_disconnect\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"GIMP_IS_TREE_HANDLER (handler)\00", align 1
@gimp_tree_handler_parent_class = internal global i8* null, align 8
@GimpTreeHandler_private_offset = internal global i32 0, align 4
@.str.7 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"remove\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_tree_handler_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_tree_handler_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_tree_handler_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_object_get_type() #5
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 160, void (i8*, i8*)* bitcast (void (i8*)* @gimp_tree_handler_class_intern_init to void (i8*, i8*)*), i32 64, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpTreeHandler*)* @gimp_tree_handler_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_tree_handler_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_tree_handler_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_tree_handler_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_tree_handler_parent_class, align 8
  %1 = load i32, i32* @GimpTreeHandler_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpTreeHandler_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpTreeHandlerClass*
  call void @gimp_tree_handler_class_init(%struct._GimpTreeHandlerClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_tree_handler_init(%struct._GimpTreeHandler* %handler) #3 {
entry:
  %handler.addr = alloca %struct._GimpTreeHandler*, align 8
  store %struct._GimpTreeHandler* %handler, %struct._GimpTreeHandler** %handler.addr, align 8
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GimpTreeHandler* @gimp_tree_handler_connect(%struct._GimpContainer* %container, i8* %signal_name, void ()* %callback, i8* %user_data) #3 {
entry:
  %retval = alloca %struct._GimpTreeHandler*, align 8
  %container.addr = alloca %struct._GimpContainer*, align 8
  %signal_name.addr = alloca i8*, align 8
  %callback.addr = alloca void ()*, align 8
  %user_data.addr = alloca i8*, align 8
  %handler = alloca %struct._GimpTreeHandler*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpContainer* %container, %struct._GimpContainer** %container.addr, align 8
  store i8* %signal_name, i8** %signal_name.addr, align 8
  store void ()* %callback, void ()** %callback.addr, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %1 = bitcast %struct._GimpContainer* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_container_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_tree_handler_connect, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpTreeHandler* null, %struct._GimpTreeHandler** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i8*, i8** %signal_name.addr, align 8
  %cmp12 = icmp ne i8* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_tree_handler_connect, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GimpTreeHandler* null, %struct._GimpTreeHandler** %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %call17 = call i64 @gimp_tree_handler_get_type() #5
  %call18 = call i8* (i64, i8*, ...) @g_object_new(i64 %call17, i8* null)
  %14 = bitcast i8* %call18 to %struct._GimpTreeHandler*
  store %struct._GimpTreeHandler* %14, %struct._GimpTreeHandler** %handler, align 8
  %15 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %16 = bitcast %struct._GimpContainer* %15 to i8*
  %call19 = call i8* @g_object_ref(i8* %16)
  %17 = bitcast i8* %call19 to %struct._GimpContainer*
  %18 = load %struct._GimpTreeHandler*, %struct._GimpTreeHandler** %handler, align 8
  %container20 = getelementptr inbounds %struct._GimpTreeHandler, %struct._GimpTreeHandler* %18, i32 0, i32 1
  store %struct._GimpContainer* %17, %struct._GimpContainer** %container20, align 8
  %19 = load i8*, i8** %signal_name.addr, align 8
  %call21 = call noalias i8* @g_strdup(i8* %19)
  %20 = load %struct._GimpTreeHandler*, %struct._GimpTreeHandler** %handler, align 8
  %signal_name22 = getelementptr inbounds %struct._GimpTreeHandler, %struct._GimpTreeHandler* %20, i32 0, i32 2
  store i8* %call21, i8** %signal_name22, align 8
  %21 = load void ()*, void ()** %callback.addr, align 8
  %22 = load %struct._GimpTreeHandler*, %struct._GimpTreeHandler** %handler, align 8
  %callback23 = getelementptr inbounds %struct._GimpTreeHandler, %struct._GimpTreeHandler* %22, i32 0, i32 3
  store void ()* %21, void ()** %callback23, align 8
  %23 = load i8*, i8** %user_data.addr, align 8
  %24 = load %struct._GimpTreeHandler*, %struct._GimpTreeHandler** %handler, align 8
  %user_data24 = getelementptr inbounds %struct._GimpTreeHandler, %struct._GimpTreeHandler* %24, i32 0, i32 4
  store i8* %23, i8** %user_data24, align 8
  %25 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %call25 = call i32 @gimp_container_frozen(%struct._GimpContainer* %25)
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %if.end.28, label %if.then.27

if.then.27:                                       ; preds = %do.end.16
  %26 = load %struct._GimpTreeHandler*, %struct._GimpTreeHandler** %handler, align 8
  %27 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  call void @gimp_tree_handler_add_container(%struct._GimpTreeHandler* %26, %struct._GimpContainer* %27)
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.27, %do.end.16
  %28 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %29 = bitcast %struct._GimpContainer* %28 to i8*
  %30 = load %struct._GimpTreeHandler*, %struct._GimpTreeHandler** %handler, align 8
  %31 = bitcast %struct._GimpTreeHandler* %30 to i8*
  %call29 = call i64 @g_signal_connect_object(i8* %29, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), void ()* bitcast (void (%struct._GimpTreeHandler*, %struct._GimpContainer*)* @gimp_tree_handler_freeze to void ()*), i8* %31, i32 2)
  %32 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %33 = bitcast %struct._GimpContainer* %32 to i8*
  %34 = load %struct._GimpTreeHandler*, %struct._GimpTreeHandler** %handler, align 8
  %35 = bitcast %struct._GimpTreeHandler* %34 to i8*
  %call30 = call i64 @g_signal_connect_object(i8* %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), void ()* bitcast (void (%struct._GimpTreeHandler*, %struct._GimpContainer*)* @gimp_tree_handler_thaw to void ()*), i8* %35, i32 2)
  %36 = load %struct._GimpTreeHandler*, %struct._GimpTreeHandler** %handler, align 8
  store %struct._GimpTreeHandler* %36, %struct._GimpTreeHandler** %retval
  br label %return

return:                                           ; preds = %if.end.28, %if.else.14, %if.else.9
  %37 = load %struct._GimpTreeHandler*, %struct._GimpTreeHandler** %retval
  ret %struct._GimpTreeHandler* %37
}

; Function Attrs: nounwind readnone
declare i64 @gimp_container_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare i8* @g_object_new(i64, i8*, ...) #1

declare i8* @g_object_ref(i8*) #1

declare noalias i8* @g_strdup(i8*) #1

declare i32 @gimp_container_frozen(%struct._GimpContainer*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_tree_handler_add_container(%struct._GimpTreeHandler* %handler, %struct._GimpContainer* %container) #3 {
entry:
  %handler.addr = alloca %struct._GimpTreeHandler*, align 8
  %container.addr = alloca %struct._GimpContainer*, align 8
  store %struct._GimpTreeHandler* %handler, %struct._GimpTreeHandler** %handler.addr, align 8
  store %struct._GimpContainer* %container, %struct._GimpContainer** %container.addr, align 8
  %0 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %1 = load %struct._GimpTreeHandler*, %struct._GimpTreeHandler** %handler.addr, align 8
  %2 = bitcast %struct._GimpTreeHandler* %1 to i8*
  call void @gimp_container_foreach(%struct._GimpContainer* %0, void (i8*, i8*)* bitcast (void (%struct._GimpViewable*, %struct._GimpTreeHandler*)* @gimp_tree_handler_add_foreach to void (i8*, i8*)*), i8* %2)
  %3 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %4 = bitcast %struct._GimpContainer* %3 to i8*
  %5 = load %struct._GimpTreeHandler*, %struct._GimpTreeHandler** %handler.addr, align 8
  %6 = bitcast %struct._GimpTreeHandler* %5 to i8*
  %call = call i64 @g_signal_connect_object(i8* %4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), void ()* bitcast (void (%struct._GimpTreeHandler*, %struct._GimpViewable*, %struct._GimpContainer*)* @gimp_tree_handler_add to void ()*), i8* %6, i32 2)
  %7 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %8 = bitcast %struct._GimpContainer* %7 to i8*
  %9 = load %struct._GimpTreeHandler*, %struct._GimpTreeHandler** %handler.addr, align 8
  %10 = bitcast %struct._GimpTreeHandler* %9 to i8*
  %call1 = call i64 @g_signal_connect_object(i8* %8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0), void ()* bitcast (void (%struct._GimpTreeHandler*, %struct._GimpViewable*, %struct._GimpContainer*)* @gimp_tree_handler_remove to void ()*), i8* %10, i32 2)
  ret void
}

declare i64 @g_signal_connect_object(i8*, i8*, void ()*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_tree_handler_freeze(%struct._GimpTreeHandler* %handler, %struct._GimpContainer* %container) #3 {
entry:
  %handler.addr = alloca %struct._GimpTreeHandler*, align 8
  %container.addr = alloca %struct._GimpContainer*, align 8
  store %struct._GimpTreeHandler* %handler, %struct._GimpTreeHandler** %handler.addr, align 8
  store %struct._GimpContainer* %container, %struct._GimpContainer** %container.addr, align 8
  %0 = load %struct._GimpTreeHandler*, %struct._GimpTreeHandler** %handler.addr, align 8
  %1 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  call void @gimp_tree_handler_remove_container(%struct._GimpTreeHandler* %0, %struct._GimpContainer* %1)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_tree_handler_thaw(%struct._GimpTreeHandler* %handler, %struct._GimpContainer* %container) #3 {
entry:
  %handler.addr = alloca %struct._GimpTreeHandler*, align 8
  %container.addr = alloca %struct._GimpContainer*, align 8
  store %struct._GimpTreeHandler* %handler, %struct._GimpTreeHandler** %handler.addr, align 8
  store %struct._GimpContainer* %container, %struct._GimpContainer** %container.addr, align 8
  %0 = load %struct._GimpTreeHandler*, %struct._GimpTreeHandler** %handler.addr, align 8
  %1 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  call void @gimp_tree_handler_add_container(%struct._GimpTreeHandler* %0, %struct._GimpContainer* %1)
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_tree_handler_disconnect(%struct._GimpTreeHandler* %handler) #3 {
entry:
  %handler.addr = alloca %struct._GimpTreeHandler*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpTreeHandler* %handler, %struct._GimpTreeHandler** %handler.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpTreeHandler*, %struct._GimpTreeHandler** %handler.addr, align 8
  %1 = bitcast %struct._GimpTreeHandler* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_tree_handler_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_tree_handler_disconnect, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpTreeHandler*, %struct._GimpTreeHandler** %handler.addr, align 8
  %14 = bitcast %struct._GimpTreeHandler* %13 to %struct._GTypeInstance*
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 80)
  %15 = bitcast %struct._GTypeInstance* %call11 to %struct._GObject*
  call void @g_object_run_dispose(%struct._GObject* %15)
  %16 = load %struct._GimpTreeHandler*, %struct._GimpTreeHandler** %handler.addr, align 8
  %17 = bitcast %struct._GimpTreeHandler* %16 to i8*
  call void @g_object_unref(i8* %17)
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

declare void @g_object_run_dispose(%struct._GObject*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare void @g_object_unref(i8*) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_tree_handler_class_init(%struct._GimpTreeHandlerClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpTreeHandlerClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  store %struct._GimpTreeHandlerClass* %klass, %struct._GimpTreeHandlerClass** %klass.addr, align 8
  %0 = load %struct._GimpTreeHandlerClass*, %struct._GimpTreeHandlerClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpTreeHandlerClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %3, i32 0, i32 5
  store void (%struct._GObject*)* @gimp_tree_handler_dispose, void (%struct._GObject*)** %dispose, align 8
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_tree_handler_dispose(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %handler = alloca %struct._GimpTreeHandler*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tree_handler_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTreeHandler*
  store %struct._GimpTreeHandler* %2, %struct._GimpTreeHandler** %handler, align 8
  %3 = load %struct._GimpTreeHandler*, %struct._GimpTreeHandler** %handler, align 8
  %container = getelementptr inbounds %struct._GimpTreeHandler, %struct._GimpTreeHandler* %3, i32 0, i32 1
  %4 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %tobool = icmp ne %struct._GimpContainer* %4, null
  br i1 %tobool, label %if.then, label %if.end.14

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpTreeHandler*, %struct._GimpTreeHandler** %handler, align 8
  %container2 = getelementptr inbounds %struct._GimpTreeHandler, %struct._GimpTreeHandler* %5, i32 0, i32 1
  %6 = load %struct._GimpContainer*, %struct._GimpContainer** %container2, align 8
  %7 = bitcast %struct._GimpContainer* %6 to i8*
  %8 = load %struct._GimpTreeHandler*, %struct._GimpTreeHandler** %handler, align 8
  %9 = bitcast %struct._GimpTreeHandler* %8 to i8*
  %call3 = call i32 @g_signal_handlers_disconnect_matched(i8* %7, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpTreeHandler*, %struct._GimpContainer*)* @gimp_tree_handler_freeze to i8*), i8* %9)
  %10 = load %struct._GimpTreeHandler*, %struct._GimpTreeHandler** %handler, align 8
  %container4 = getelementptr inbounds %struct._GimpTreeHandler, %struct._GimpTreeHandler* %10, i32 0, i32 1
  %11 = load %struct._GimpContainer*, %struct._GimpContainer** %container4, align 8
  %12 = bitcast %struct._GimpContainer* %11 to i8*
  %13 = load %struct._GimpTreeHandler*, %struct._GimpTreeHandler** %handler, align 8
  %14 = bitcast %struct._GimpTreeHandler* %13 to i8*
  %call5 = call i32 @g_signal_handlers_disconnect_matched(i8* %12, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpTreeHandler*, %struct._GimpContainer*)* @gimp_tree_handler_thaw to i8*), i8* %14)
  %15 = load %struct._GimpTreeHandler*, %struct._GimpTreeHandler** %handler, align 8
  %container6 = getelementptr inbounds %struct._GimpTreeHandler, %struct._GimpTreeHandler* %15, i32 0, i32 1
  %16 = load %struct._GimpContainer*, %struct._GimpContainer** %container6, align 8
  %call7 = call i32 @gimp_container_frozen(%struct._GimpContainer* %16)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.end, label %if.then.9

if.then.9:                                        ; preds = %if.then
  %17 = load %struct._GimpTreeHandler*, %struct._GimpTreeHandler** %handler, align 8
  %18 = load %struct._GimpTreeHandler*, %struct._GimpTreeHandler** %handler, align 8
  %container10 = getelementptr inbounds %struct._GimpTreeHandler, %struct._GimpTreeHandler* %18, i32 0, i32 1
  %19 = load %struct._GimpContainer*, %struct._GimpContainer** %container10, align 8
  call void @gimp_tree_handler_remove_container(%struct._GimpTreeHandler* %17, %struct._GimpContainer* %19)
  br label %if.end

if.end:                                           ; preds = %if.then.9, %if.then
  %20 = load %struct._GimpTreeHandler*, %struct._GimpTreeHandler** %handler, align 8
  %container11 = getelementptr inbounds %struct._GimpTreeHandler, %struct._GimpTreeHandler* %20, i32 0, i32 1
  %21 = load %struct._GimpContainer*, %struct._GimpContainer** %container11, align 8
  %22 = bitcast %struct._GimpContainer* %21 to i8*
  call void @g_object_unref(i8* %22)
  %23 = load %struct._GimpTreeHandler*, %struct._GimpTreeHandler** %handler, align 8
  %container12 = getelementptr inbounds %struct._GimpTreeHandler, %struct._GimpTreeHandler* %23, i32 0, i32 1
  store %struct._GimpContainer* null, %struct._GimpContainer** %container12, align 8
  %24 = load %struct._GimpTreeHandler*, %struct._GimpTreeHandler** %handler, align 8
  %signal_name = getelementptr inbounds %struct._GimpTreeHandler, %struct._GimpTreeHandler* %24, i32 0, i32 2
  %25 = load i8*, i8** %signal_name, align 8
  call void @g_free(i8* %25)
  %26 = load %struct._GimpTreeHandler*, %struct._GimpTreeHandler** %handler, align 8
  %signal_name13 = getelementptr inbounds %struct._GimpTreeHandler, %struct._GimpTreeHandler* %26, i32 0, i32 2
  store i8* null, i8** %signal_name13, align 8
  br label %if.end.14

if.end.14:                                        ; preds = %if.end, %entry
  %27 = load i8*, i8** @gimp_tree_handler_parent_class, align 8
  %28 = bitcast i8* %27 to %struct._GTypeClass*
  %call15 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %28, i64 80)
  %29 = bitcast %struct._GTypeClass* %call15 to %struct._GObjectClass*
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %29, i32 0, i32 5
  %30 = load void (%struct._GObject*)*, void (%struct._GObject*)** %dispose, align 8
  %31 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %30(%struct._GObject* %31)
  ret void
}

declare i32 @g_signal_handlers_disconnect_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_tree_handler_remove_container(%struct._GimpTreeHandler* %handler, %struct._GimpContainer* %container) #3 {
entry:
  %handler.addr = alloca %struct._GimpTreeHandler*, align 8
  %container.addr = alloca %struct._GimpContainer*, align 8
  store %struct._GimpTreeHandler* %handler, %struct._GimpTreeHandler** %handler.addr, align 8
  store %struct._GimpContainer* %container, %struct._GimpContainer** %container.addr, align 8
  %0 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %1 = bitcast %struct._GimpContainer* %0 to i8*
  %2 = load %struct._GimpTreeHandler*, %struct._GimpTreeHandler** %handler.addr, align 8
  %3 = bitcast %struct._GimpTreeHandler* %2 to i8*
  %call = call i32 @g_signal_handlers_disconnect_matched(i8* %1, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpTreeHandler*, %struct._GimpViewable*, %struct._GimpContainer*)* @gimp_tree_handler_add to i8*), i8* %3)
  %4 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %5 = bitcast %struct._GimpContainer* %4 to i8*
  %6 = load %struct._GimpTreeHandler*, %struct._GimpTreeHandler** %handler.addr, align 8
  %7 = bitcast %struct._GimpTreeHandler* %6 to i8*
  %call1 = call i32 @g_signal_handlers_disconnect_matched(i8* %5, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpTreeHandler*, %struct._GimpViewable*, %struct._GimpContainer*)* @gimp_tree_handler_remove to i8*), i8* %7)
  %8 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %9 = load %struct._GimpTreeHandler*, %struct._GimpTreeHandler** %handler.addr, align 8
  %10 = bitcast %struct._GimpTreeHandler* %9 to i8*
  call void @gimp_container_foreach(%struct._GimpContainer* %8, void (i8*, i8*)* bitcast (void (%struct._GimpViewable*, %struct._GimpTreeHandler*)* @gimp_tree_handler_remove_foreach to void (i8*, i8*)*), i8* %10)
  ret void
}

declare void @g_free(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_tree_handler_add(%struct._GimpTreeHandler* %handler, %struct._GimpViewable* %viewable, %struct._GimpContainer* %unused) #3 {
entry:
  %handler.addr = alloca %struct._GimpTreeHandler*, align 8
  %viewable.addr = alloca %struct._GimpViewable*, align 8
  %unused.addr = alloca %struct._GimpContainer*, align 8
  %children = alloca %struct._GimpContainer*, align 8
  store %struct._GimpTreeHandler* %handler, %struct._GimpTreeHandler** %handler.addr, align 8
  store %struct._GimpViewable* %viewable, %struct._GimpViewable** %viewable.addr, align 8
  store %struct._GimpContainer* %unused, %struct._GimpContainer** %unused.addr, align 8
  %0 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %call = call %struct._GimpContainer* @gimp_viewable_get_children(%struct._GimpViewable* %0)
  store %struct._GimpContainer* %call, %struct._GimpContainer** %children, align 8
  %1 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %2 = bitcast %struct._GimpViewable* %1 to i8*
  %3 = load %struct._GimpTreeHandler*, %struct._GimpTreeHandler** %handler.addr, align 8
  %signal_name = getelementptr inbounds %struct._GimpTreeHandler, %struct._GimpTreeHandler* %3, i32 0, i32 2
  %4 = load i8*, i8** %signal_name, align 8
  %5 = load %struct._GimpTreeHandler*, %struct._GimpTreeHandler** %handler.addr, align 8
  %callback = getelementptr inbounds %struct._GimpTreeHandler, %struct._GimpTreeHandler* %5, i32 0, i32 3
  %6 = load void ()*, void ()** %callback, align 8
  %7 = load %struct._GimpTreeHandler*, %struct._GimpTreeHandler** %handler.addr, align 8
  %user_data = getelementptr inbounds %struct._GimpTreeHandler, %struct._GimpTreeHandler* %7, i32 0, i32 4
  %8 = load i8*, i8** %user_data, align 8
  %call1 = call i64 @g_signal_connect_data(i8* %2, i8* %4, void ()* %6, i8* %8, void (i8*, %struct._GClosure*)* null, i32 0)
  %9 = load %struct._GimpContainer*, %struct._GimpContainer** %children, align 8
  %tobool = icmp ne %struct._GimpContainer* %9, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = load %struct._GimpTreeHandler*, %struct._GimpTreeHandler** %handler.addr, align 8
  %11 = load %struct._GimpContainer*, %struct._GimpContainer** %children, align 8
  call void @gimp_tree_handler_add_container(%struct._GimpTreeHandler* %10, %struct._GimpContainer* %11)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_tree_handler_remove(%struct._GimpTreeHandler* %handler, %struct._GimpViewable* %viewable, %struct._GimpContainer* %unused) #3 {
entry:
  %handler.addr = alloca %struct._GimpTreeHandler*, align 8
  %viewable.addr = alloca %struct._GimpViewable*, align 8
  %unused.addr = alloca %struct._GimpContainer*, align 8
  %children = alloca %struct._GimpContainer*, align 8
  store %struct._GimpTreeHandler* %handler, %struct._GimpTreeHandler** %handler.addr, align 8
  store %struct._GimpViewable* %viewable, %struct._GimpViewable** %viewable.addr, align 8
  store %struct._GimpContainer* %unused, %struct._GimpContainer** %unused.addr, align 8
  %0 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %call = call %struct._GimpContainer* @gimp_viewable_get_children(%struct._GimpViewable* %0)
  store %struct._GimpContainer* %call, %struct._GimpContainer** %children, align 8
  %1 = load %struct._GimpContainer*, %struct._GimpContainer** %children, align 8
  %tobool = icmp ne %struct._GimpContainer* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._GimpTreeHandler*, %struct._GimpTreeHandler** %handler.addr, align 8
  %3 = load %struct._GimpContainer*, %struct._GimpContainer** %children, align 8
  call void @gimp_tree_handler_remove_container(%struct._GimpTreeHandler* %2, %struct._GimpContainer* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %5 = bitcast %struct._GimpViewable* %4 to i8*
  %6 = load %struct._GimpTreeHandler*, %struct._GimpTreeHandler** %handler.addr, align 8
  %callback = getelementptr inbounds %struct._GimpTreeHandler, %struct._GimpTreeHandler* %6, i32 0, i32 3
  %7 = load void ()*, void ()** %callback, align 8
  %8 = bitcast void ()* %7 to i8*
  %9 = load %struct._GimpTreeHandler*, %struct._GimpTreeHandler** %handler.addr, align 8
  %user_data = getelementptr inbounds %struct._GimpTreeHandler, %struct._GimpTreeHandler* %9, i32 0, i32 4
  %10 = load i8*, i8** %user_data, align 8
  %call1 = call i32 @g_signal_handlers_disconnect_matched(i8* %5, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* %8, i8* %10)
  ret void
}

declare void @gimp_container_foreach(%struct._GimpContainer*, void (i8*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_tree_handler_remove_foreach(%struct._GimpViewable* %viewable, %struct._GimpTreeHandler* %handler) #3 {
entry:
  %viewable.addr = alloca %struct._GimpViewable*, align 8
  %handler.addr = alloca %struct._GimpTreeHandler*, align 8
  store %struct._GimpViewable* %viewable, %struct._GimpViewable** %viewable.addr, align 8
  store %struct._GimpTreeHandler* %handler, %struct._GimpTreeHandler** %handler.addr, align 8
  %0 = load %struct._GimpTreeHandler*, %struct._GimpTreeHandler** %handler.addr, align 8
  %1 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  call void @gimp_tree_handler_remove(%struct._GimpTreeHandler* %0, %struct._GimpViewable* %1, %struct._GimpContainer* null)
  ret void
}

declare %struct._GimpContainer* @gimp_viewable_get_children(%struct._GimpViewable*) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_tree_handler_add_foreach(%struct._GimpViewable* %viewable, %struct._GimpTreeHandler* %handler) #3 {
entry:
  %viewable.addr = alloca %struct._GimpViewable*, align 8
  %handler.addr = alloca %struct._GimpTreeHandler*, align 8
  store %struct._GimpViewable* %viewable, %struct._GimpViewable** %viewable.addr, align 8
  store %struct._GimpTreeHandler* %handler, %struct._GimpTreeHandler** %handler.addr, align 8
  %0 = load %struct._GimpTreeHandler*, %struct._GimpTreeHandler** %handler.addr, align 8
  %1 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  call void @gimp_tree_handler_add(%struct._GimpTreeHandler* %0, %struct._GimpViewable* %1, %struct._GimpContainer* null)
  ret void
}

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
