; ModuleID = './app/core/gimpfilteredcontainer.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpFilteredContainerClass = type { %struct._GimpContainerClass, void (%struct._GimpFilteredContainer*, %struct._GimpObject*)*, void (%struct._GimpFilteredContainer*, %struct._GimpObject*)*, void (%struct._GimpFilteredContainer*)*, void (%struct._GimpFilteredContainer*)* }
%struct._GimpContainerClass = type { %struct._GimpObjectClass, void (%struct._GimpContainer*, %struct._GimpObject*)*, void (%struct._GimpContainer*, %struct._GimpObject*)*, void (%struct._GimpContainer*, %struct._GimpObject*, i32)*, void (%struct._GimpContainer*)*, void (%struct._GimpContainer*)*, void (%struct._GimpContainer*)*, i32 (%struct._GimpContainer*, %struct._GimpObject*)*, void (%struct._GimpContainer*, void (i8*, i8*)*, i8*)*, %struct._GimpObject* (%struct._GimpContainer*, i8*)*, %struct._GimpObject* (%struct._GimpContainer*, i32)*, i32 (%struct._GimpContainer*, %struct._GimpObject*)* }
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
%struct._GimpContainer = type { %struct._GimpObject, %struct._GimpContainerPriv* }
%struct._GimpContainerPriv = type opaque
%struct._GimpFilteredContainer = type { %struct._GimpList, %struct._GimpContainer*, i32 (%struct._GimpObject*, i8*)*, i8* }
%struct._GimpList = type { %struct._GimpContainer, %struct._GList*, i32, i32 (i8*, i8*)*, i32 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, void (i8*, %struct._GClosure*)* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@gimp_filtered_container_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"GimpFilteredContainer\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"Gimp-Core\00", align 1
@__func__.gimp_filtered_container_new = private unnamed_addr constant [28 x i8] c"gimp_filtered_container_new\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"GIMP_IS_LIST (src_container)\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"sort-func\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"children-type\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"policy\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"unique-names\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"src-container\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"filter-func\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"filter-data\00", align 1
@gimp_filtered_container_parent_class = internal global i8* null, align 8
@GimpFilteredContainer_private_offset = internal global i32 0, align 4
@.str.10 = private unnamed_addr constant [24 x i8] c"gimpfilteredcontainer.c\00", align 1
@__func__.gimp_filtered_container_constructed = private unnamed_addr constant [36 x i8] c"gimp_filtered_container_constructed\00", align 1
@.str.11 = private unnamed_addr constant [54 x i8] c"GIMP_IS_CONTAINER (filtered_container->src_container)\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"remove\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"freeze\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"thaw\00", align 1
@.str.16 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"property\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_filtered_container_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_filtered_container_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_filtered_container_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_list_get_type() #7
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 280, void (i8*, i8*)* bitcast (void (i8*)* @gimp_filtered_container_class_intern_init to void (i8*, i8*)*), i32 96, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpFilteredContainer*)* @gimp_filtered_container_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_filtered_container_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_filtered_container_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_list_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_filtered_container_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_filtered_container_parent_class, align 8
  %1 = load i32, i32* @GimpFilteredContainer_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpFilteredContainer_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpFilteredContainerClass*
  call void @gimp_filtered_container_class_init(%struct._GimpFilteredContainerClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_filtered_container_init(%struct._GimpFilteredContainer* %filtered_container) #3 {
entry:
  %filtered_container.addr = alloca %struct._GimpFilteredContainer*, align 8
  store %struct._GimpFilteredContainer* %filtered_container, %struct._GimpFilteredContainer** %filtered_container.addr, align 8
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GimpContainer* @gimp_filtered_container_new(%struct._GimpContainer* %src_container, i32 (%struct._GimpObject*, i8*)* %filter_func, i8* %filter_data) #3 {
entry:
  %retval = alloca %struct._GimpContainer*, align 8
  %src_container.addr = alloca %struct._GimpContainer*, align 8
  %filter_func.addr = alloca i32 (%struct._GimpObject*, i8*)*, align 8
  %filter_data.addr = alloca i8*, align 8
  %children_type = alloca i64, align 8
  %sort_func = alloca i32 (i8*, i8*)*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpContainer* %src_container, %struct._GimpContainer** %src_container.addr, align 8
  store i32 (%struct._GimpObject*, i8*)* %filter_func, i32 (%struct._GimpObject*, i8*)** %filter_func.addr, align 8
  store i8* %filter_data, i8** %filter_data.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContainer*, %struct._GimpContainer** %src_container.addr, align 8
  %1 = bitcast %struct._GimpContainer* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_list_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_filtered_container_new, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpContainer* null, %struct._GimpContainer** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpContainer*, %struct._GimpContainer** %src_container.addr, align 8
  %call11 = call i64 @gimp_container_get_children_type(%struct._GimpContainer* %13)
  store i64 %call11, i64* %children_type, align 8
  %14 = load %struct._GimpContainer*, %struct._GimpContainer** %src_container.addr, align 8
  %15 = bitcast %struct._GimpContainer* %14 to %struct._GTypeInstance*
  %call12 = call i64 @gimp_list_get_type() #7
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call12)
  %16 = bitcast %struct._GTypeInstance* %call13 to %struct._GimpList*
  %sort_func14 = getelementptr inbounds %struct._GimpList, %struct._GimpList* %16, i32 0, i32 3
  %17 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %sort_func14, align 8
  store i32 (i8*, i8*)* %17, i32 (i8*, i8*)** %sort_func, align 8
  %call15 = call i64 @gimp_filtered_container_get_type() #7
  %18 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %sort_func, align 8
  %19 = load i64, i64* %children_type, align 8
  %20 = load %struct._GimpContainer*, %struct._GimpContainer** %src_container.addr, align 8
  %21 = load i32 (%struct._GimpObject*, i8*)*, i32 (%struct._GimpObject*, i8*)** %filter_func.addr, align 8
  %22 = load i8*, i8** %filter_data.addr, align 8
  %call16 = call i8* (i64, i8*, ...) @g_object_new(i64 %call15, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i32 (i8*, i8*)* %18, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), i64 %19, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i32 0, i32 0), %struct._GimpContainer* %20, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0), i32 (%struct._GimpObject*, i8*)* %21, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0), i8* %22, i8* null)
  %23 = bitcast i8* %call16 to %struct._GimpContainer*
  store %struct._GimpContainer* %23, %struct._GimpContainer** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %24 = load %struct._GimpContainer*, %struct._GimpContainer** %retval
  ret %struct._GimpContainer* %24
}

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare i64 @gimp_container_get_children_type(%struct._GimpContainer*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare i8* @g_object_new(i64, i8*, ...) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_filtered_container_class_init(%struct._GimpFilteredContainerClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpFilteredContainerClass*, align 8
  %g_object_class = alloca %struct._GObjectClass*, align 8
  %filtered_class = alloca %struct._GimpFilteredContainerClass*, align 8
  store %struct._GimpFilteredContainerClass* %klass, %struct._GimpFilteredContainerClass** %klass.addr, align 8
  %0 = load %struct._GimpFilteredContainerClass*, %struct._GimpFilteredContainerClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpFilteredContainerClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %g_object_class, align 8
  %3 = load %struct._GimpFilteredContainerClass*, %struct._GimpFilteredContainerClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpFilteredContainerClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gimp_filtered_container_get_type() #7
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GimpFilteredContainerClass*
  store %struct._GimpFilteredContainerClass* %5, %struct._GimpFilteredContainerClass** %filtered_class, align 8
  %6 = load %struct._GObjectClass*, %struct._GObjectClass** %g_object_class, align 8
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %6, i32 0, i32 9
  store void (%struct._GObject*)* @gimp_filtered_container_constructed, void (%struct._GObject*)** %constructed, align 8
  %7 = load %struct._GObjectClass*, %struct._GObjectClass** %g_object_class, align 8
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %7, i32 0, i32 5
  store void (%struct._GObject*)* @gimp_filtered_container_dispose, void (%struct._GObject*)** %dispose, align 8
  %8 = load %struct._GObjectClass*, %struct._GObjectClass** %g_object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %8, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_filtered_container_finalize, void (%struct._GObject*)** %finalize, align 8
  %9 = load %struct._GObjectClass*, %struct._GObjectClass** %g_object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %9, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_filtered_container_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %10 = load %struct._GObjectClass*, %struct._GObjectClass** %g_object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %10, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_filtered_container_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %11 = load %struct._GimpFilteredContainerClass*, %struct._GimpFilteredContainerClass** %filtered_class, align 8
  %src_add = getelementptr inbounds %struct._GimpFilteredContainerClass, %struct._GimpFilteredContainerClass* %11, i32 0, i32 1
  store void (%struct._GimpFilteredContainer*, %struct._GimpObject*)* @gimp_filtered_container_real_src_add, void (%struct._GimpFilteredContainer*, %struct._GimpObject*)** %src_add, align 8
  %12 = load %struct._GimpFilteredContainerClass*, %struct._GimpFilteredContainerClass** %filtered_class, align 8
  %src_remove = getelementptr inbounds %struct._GimpFilteredContainerClass, %struct._GimpFilteredContainerClass* %12, i32 0, i32 2
  store void (%struct._GimpFilteredContainer*, %struct._GimpObject*)* @gimp_filtered_container_real_src_remove, void (%struct._GimpFilteredContainer*, %struct._GimpObject*)** %src_remove, align 8
  %13 = load %struct._GimpFilteredContainerClass*, %struct._GimpFilteredContainerClass** %filtered_class, align 8
  %src_freeze = getelementptr inbounds %struct._GimpFilteredContainerClass, %struct._GimpFilteredContainerClass* %13, i32 0, i32 3
  store void (%struct._GimpFilteredContainer*)* @gimp_filtered_container_real_src_freeze, void (%struct._GimpFilteredContainer*)** %src_freeze, align 8
  %14 = load %struct._GimpFilteredContainerClass*, %struct._GimpFilteredContainerClass** %filtered_class, align 8
  %src_thaw = getelementptr inbounds %struct._GimpFilteredContainerClass, %struct._GimpFilteredContainerClass* %14, i32 0, i32 4
  store void (%struct._GimpFilteredContainer*)* @gimp_filtered_container_real_src_thaw, void (%struct._GimpFilteredContainer*)** %src_thaw, align 8
  %15 = load %struct._GObjectClass*, %struct._GObjectClass** %g_object_class, align 8
  %call3 = call i64 @gimp_container_get_type() #7
  %call4 = call %struct._GParamSpec* @g_param_spec_object(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i32 0, i32 0), i8* null, i8* null, i64 %call3, i32 235)
  call void @g_object_class_install_property(%struct._GObjectClass* %15, i32 1, %struct._GParamSpec* %call4)
  %16 = load %struct._GObjectClass*, %struct._GObjectClass** %g_object_class, align 8
  %call5 = call %struct._GParamSpec* @g_param_spec_pointer(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0), i8* null, i8* null, i32 235)
  call void @g_object_class_install_property(%struct._GObjectClass* %16, i32 2, %struct._GParamSpec* %call5)
  %17 = load %struct._GObjectClass*, %struct._GObjectClass** %g_object_class, align 8
  %call6 = call %struct._GParamSpec* @g_param_spec_pointer(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0), i8* null, i8* null, i32 235)
  call void @g_object_class_install_property(%struct._GObjectClass* %17, i32 3, %struct._GParamSpec* %call6)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_filtered_container_constructed(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %filtered_container = alloca %struct._GimpFilteredContainer*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_filtered_container_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpFilteredContainer*
  store %struct._GimpFilteredContainer* %2, %struct._GimpFilteredContainer** %filtered_container, align 8
  %3 = load i8*, i8** @gimp_filtered_container_parent_class, align 8
  %4 = bitcast i8* %3 to %struct._GTypeClass*
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 80)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GObjectClass*
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %5, i32 0, i32 9
  %6 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed, align 8
  %tobool = icmp ne void (%struct._GObject*)* %6, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i8*, i8** @gimp_filtered_container_parent_class, align 8
  %8 = bitcast i8* %7 to %struct._GTypeClass*
  %call3 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %8, i64 80)
  %9 = bitcast %struct._GTypeClass* %call3 to %struct._GObjectClass*
  %constructed4 = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %9, i32 0, i32 9
  %10 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed4, align 8
  %11 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %10(%struct._GObject* %11)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %12 = load %struct._GimpFilteredContainer*, %struct._GimpFilteredContainer** %filtered_container, align 8
  %src_container = getelementptr inbounds %struct._GimpFilteredContainer, %struct._GimpFilteredContainer* %12, i32 0, i32 1
  %13 = load %struct._GimpContainer*, %struct._GimpContainer** %src_container, align 8
  %14 = bitcast %struct._GimpContainer* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst, align 8
  %call5 = call i64 @gimp_container_get_type() #7
  store i64 %call5, i64* %__t, align 8
  %15 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool6 = icmp ne %struct._GTypeInstance* %15, null
  br i1 %tobool6, label %if.else, label %if.then.7

if.then.7:                                        ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.14

if.else:                                          ; preds = %do.body
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %16, i32 0, i32 0
  %17 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool8 = icmp ne %struct._GTypeClass* %17, null
  br i1 %tobool8, label %land.lhs.true, label %if.else.11

land.lhs.true:                                    ; preds = %if.else
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class9 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class9, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %19, i32 0, i32 0
  %20 = load i64, i64* %g_type, align 8
  %21 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %20, %21
  br i1 %cmp, label %if.then.10, label %if.else.11

if.then.10:                                       ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end.13

if.else.11:                                       ; preds = %land.lhs.true, %if.else
  %22 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %23 = load i64, i64* %__t, align 8
  %call12 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #8
  store i32 %call12, i32* %__r, align 4
  br label %if.end.13

if.end.13:                                        ; preds = %if.else.11, %if.then.10
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %if.then.7
  %24 = load i32, i32* %__r, align 4
  store i32 %24, i32* %tmp
  %25 = load i32, i32* %tmp
  %tobool15 = icmp ne i32 %25, 0
  br i1 %tobool15, label %if.then.16, label %if.else.17

if.then.16:                                       ; preds = %if.end.14
  br label %if.end.18

if.else.17:                                       ; preds = %if.end.14
  call void @g_assertion_message_expr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.gimp_filtered_container_constructed, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.11, i32 0, i32 0)) #9
  unreachable

if.end.18:                                        ; preds = %if.then.16
  br label %do.end

do.end:                                           ; preds = %if.end.18
  %26 = load %struct._GimpFilteredContainer*, %struct._GimpFilteredContainer** %filtered_container, align 8
  %src_container19 = getelementptr inbounds %struct._GimpFilteredContainer, %struct._GimpFilteredContainer* %26, i32 0, i32 1
  %27 = load %struct._GimpContainer*, %struct._GimpContainer** %src_container19, align 8
  %call20 = call i32 @gimp_container_frozen(%struct._GimpContainer* %27)
  %tobool21 = icmp ne i32 %call20, 0
  br i1 %tobool21, label %if.end.25, label %if.then.22

if.then.22:                                       ; preds = %do.end
  %28 = load %struct._GimpFilteredContainer*, %struct._GimpFilteredContainer** %filtered_container, align 8
  %src_container23 = getelementptr inbounds %struct._GimpFilteredContainer, %struct._GimpFilteredContainer* %28, i32 0, i32 1
  %29 = load %struct._GimpContainer*, %struct._GimpContainer** %src_container23, align 8
  %30 = load %struct._GimpFilteredContainer*, %struct._GimpFilteredContainer** %filtered_container, align 8
  call void @gimp_filtered_container_src_freeze(%struct._GimpContainer* %29, %struct._GimpFilteredContainer* %30)
  %31 = load %struct._GimpFilteredContainer*, %struct._GimpFilteredContainer** %filtered_container, align 8
  %src_container24 = getelementptr inbounds %struct._GimpFilteredContainer, %struct._GimpFilteredContainer* %31, i32 0, i32 1
  %32 = load %struct._GimpContainer*, %struct._GimpContainer** %src_container24, align 8
  %33 = load %struct._GimpFilteredContainer*, %struct._GimpFilteredContainer** %filtered_container, align 8
  call void @gimp_filtered_container_src_thaw(%struct._GimpContainer* %32, %struct._GimpFilteredContainer* %33)
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.22, %do.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_filtered_container_dispose(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %filtered_container = alloca %struct._GimpFilteredContainer*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_filtered_container_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpFilteredContainer*
  store %struct._GimpFilteredContainer* %2, %struct._GimpFilteredContainer** %filtered_container, align 8
  %3 = load %struct._GimpFilteredContainer*, %struct._GimpFilteredContainer** %filtered_container, align 8
  %src_container = getelementptr inbounds %struct._GimpFilteredContainer, %struct._GimpFilteredContainer* %3, i32 0, i32 1
  %4 = load %struct._GimpContainer*, %struct._GimpContainer** %src_container, align 8
  %tobool = icmp ne %struct._GimpContainer* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpFilteredContainer*, %struct._GimpFilteredContainer** %filtered_container, align 8
  %src_container2 = getelementptr inbounds %struct._GimpFilteredContainer, %struct._GimpFilteredContainer* %5, i32 0, i32 1
  %6 = load %struct._GimpContainer*, %struct._GimpContainer** %src_container2, align 8
  %7 = bitcast %struct._GimpContainer* %6 to i8*
  %8 = load %struct._GimpFilteredContainer*, %struct._GimpFilteredContainer** %filtered_container, align 8
  %9 = bitcast %struct._GimpFilteredContainer* %8 to i8*
  %call3 = call i32 @g_signal_handlers_disconnect_matched(i8* %7, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpContainer*, %struct._GimpObject*, %struct._GimpFilteredContainer*)* @gimp_filtered_container_src_add to i8*), i8* %9)
  %10 = load %struct._GimpFilteredContainer*, %struct._GimpFilteredContainer** %filtered_container, align 8
  %src_container4 = getelementptr inbounds %struct._GimpFilteredContainer, %struct._GimpFilteredContainer* %10, i32 0, i32 1
  %11 = load %struct._GimpContainer*, %struct._GimpContainer** %src_container4, align 8
  %12 = bitcast %struct._GimpContainer* %11 to i8*
  %13 = load %struct._GimpFilteredContainer*, %struct._GimpFilteredContainer** %filtered_container, align 8
  %14 = bitcast %struct._GimpFilteredContainer* %13 to i8*
  %call5 = call i32 @g_signal_handlers_disconnect_matched(i8* %12, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpContainer*, %struct._GimpObject*, %struct._GimpFilteredContainer*)* @gimp_filtered_container_src_remove to i8*), i8* %14)
  %15 = load %struct._GimpFilteredContainer*, %struct._GimpFilteredContainer** %filtered_container, align 8
  %src_container6 = getelementptr inbounds %struct._GimpFilteredContainer, %struct._GimpFilteredContainer* %15, i32 0, i32 1
  %16 = load %struct._GimpContainer*, %struct._GimpContainer** %src_container6, align 8
  %17 = bitcast %struct._GimpContainer* %16 to i8*
  %18 = load %struct._GimpFilteredContainer*, %struct._GimpFilteredContainer** %filtered_container, align 8
  %19 = bitcast %struct._GimpFilteredContainer* %18 to i8*
  %call7 = call i32 @g_signal_handlers_disconnect_matched(i8* %17, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpContainer*, %struct._GimpFilteredContainer*)* @gimp_filtered_container_src_freeze to i8*), i8* %19)
  %20 = load %struct._GimpFilteredContainer*, %struct._GimpFilteredContainer** %filtered_container, align 8
  %src_container8 = getelementptr inbounds %struct._GimpFilteredContainer, %struct._GimpFilteredContainer* %20, i32 0, i32 1
  %21 = load %struct._GimpContainer*, %struct._GimpContainer** %src_container8, align 8
  %22 = bitcast %struct._GimpContainer* %21 to i8*
  %23 = load %struct._GimpFilteredContainer*, %struct._GimpFilteredContainer** %filtered_container, align 8
  %24 = bitcast %struct._GimpFilteredContainer* %23 to i8*
  %call9 = call i32 @g_signal_handlers_disconnect_matched(i8* %22, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpContainer*, %struct._GimpFilteredContainer*)* @gimp_filtered_container_src_thaw to i8*), i8* %24)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %25 = load i8*, i8** @gimp_filtered_container_parent_class, align 8
  %26 = bitcast i8* %25 to %struct._GTypeClass*
  %call10 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %26, i64 80)
  %27 = bitcast %struct._GTypeClass* %call10 to %struct._GObjectClass*
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %27, i32 0, i32 5
  %28 = load void (%struct._GObject*)*, void (%struct._GObject*)** %dispose, align 8
  %29 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %28(%struct._GObject* %29)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_filtered_container_finalize(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %filtered_container = alloca %struct._GimpFilteredContainer*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_filtered_container_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpFilteredContainer*
  store %struct._GimpFilteredContainer* %2, %struct._GimpFilteredContainer** %filtered_container, align 8
  %3 = load %struct._GimpFilteredContainer*, %struct._GimpFilteredContainer** %filtered_container, align 8
  %src_container = getelementptr inbounds %struct._GimpFilteredContainer, %struct._GimpFilteredContainer* %3, i32 0, i32 1
  %4 = load %struct._GimpContainer*, %struct._GimpContainer** %src_container, align 8
  %tobool = icmp ne %struct._GimpContainer* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpFilteredContainer*, %struct._GimpFilteredContainer** %filtered_container, align 8
  %src_container2 = getelementptr inbounds %struct._GimpFilteredContainer, %struct._GimpFilteredContainer* %5, i32 0, i32 1
  %6 = load %struct._GimpContainer*, %struct._GimpContainer** %src_container2, align 8
  %7 = bitcast %struct._GimpContainer* %6 to i8*
  call void @g_object_unref(i8* %7)
  %8 = load %struct._GimpFilteredContainer*, %struct._GimpFilteredContainer** %filtered_container, align 8
  %src_container3 = getelementptr inbounds %struct._GimpFilteredContainer, %struct._GimpFilteredContainer* %8, i32 0, i32 1
  store %struct._GimpContainer* null, %struct._GimpContainer** %src_container3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load i8*, i8** @gimp_filtered_container_parent_class, align 8
  %10 = bitcast i8* %9 to %struct._GTypeClass*
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %10, i64 80)
  %11 = bitcast %struct._GTypeClass* %call4 to %struct._GObjectClass*
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %11, i32 0, i32 6
  %12 = load void (%struct._GObject*)*, void (%struct._GObject*)** %finalize, align 8
  %13 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %12(%struct._GObject* %13)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_filtered_container_set_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %filtered_container = alloca %struct._GimpFilteredContainer*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_filtered_container_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpFilteredContainer*
  store %struct._GimpFilteredContainer* %2, %struct._GimpFilteredContainer** %filtered_container, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.11
    i32 3, label %sw.bb.13
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call2 = call i8* @g_value_dup_object(%struct._GValue* %4)
  %5 = bitcast i8* %call2 to %struct._GimpContainer*
  %6 = load %struct._GimpFilteredContainer*, %struct._GimpFilteredContainer** %filtered_container, align 8
  %src_container = getelementptr inbounds %struct._GimpFilteredContainer, %struct._GimpFilteredContainer* %6, i32 0, i32 1
  store %struct._GimpContainer* %5, %struct._GimpContainer** %src_container, align 8
  %7 = load %struct._GimpFilteredContainer*, %struct._GimpFilteredContainer** %filtered_container, align 8
  %src_container3 = getelementptr inbounds %struct._GimpFilteredContainer, %struct._GimpFilteredContainer* %7, i32 0, i32 1
  %8 = load %struct._GimpContainer*, %struct._GimpContainer** %src_container3, align 8
  %9 = bitcast %struct._GimpContainer* %8 to i8*
  %10 = load %struct._GimpFilteredContainer*, %struct._GimpFilteredContainer** %filtered_container, align 8
  %11 = bitcast %struct._GimpFilteredContainer* %10 to i8*
  %call4 = call i64 @g_signal_connect_data(i8* %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), void ()* bitcast (void (%struct._GimpContainer*, %struct._GimpObject*, %struct._GimpFilteredContainer*)* @gimp_filtered_container_src_add to void ()*), i8* %11, void (i8*, %struct._GClosure*)* null, i32 0)
  %12 = load %struct._GimpFilteredContainer*, %struct._GimpFilteredContainer** %filtered_container, align 8
  %src_container5 = getelementptr inbounds %struct._GimpFilteredContainer, %struct._GimpFilteredContainer* %12, i32 0, i32 1
  %13 = load %struct._GimpContainer*, %struct._GimpContainer** %src_container5, align 8
  %14 = bitcast %struct._GimpContainer* %13 to i8*
  %15 = load %struct._GimpFilteredContainer*, %struct._GimpFilteredContainer** %filtered_container, align 8
  %16 = bitcast %struct._GimpFilteredContainer* %15 to i8*
  %call6 = call i64 @g_signal_connect_data(i8* %14, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0), void ()* bitcast (void (%struct._GimpContainer*, %struct._GimpObject*, %struct._GimpFilteredContainer*)* @gimp_filtered_container_src_remove to void ()*), i8* %16, void (i8*, %struct._GClosure*)* null, i32 0)
  %17 = load %struct._GimpFilteredContainer*, %struct._GimpFilteredContainer** %filtered_container, align 8
  %src_container7 = getelementptr inbounds %struct._GimpFilteredContainer, %struct._GimpFilteredContainer* %17, i32 0, i32 1
  %18 = load %struct._GimpContainer*, %struct._GimpContainer** %src_container7, align 8
  %19 = bitcast %struct._GimpContainer* %18 to i8*
  %20 = load %struct._GimpFilteredContainer*, %struct._GimpFilteredContainer** %filtered_container, align 8
  %21 = bitcast %struct._GimpFilteredContainer* %20 to i8*
  %call8 = call i64 @g_signal_connect_data(i8* %19, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), void ()* bitcast (void (%struct._GimpContainer*, %struct._GimpFilteredContainer*)* @gimp_filtered_container_src_freeze to void ()*), i8* %21, void (i8*, %struct._GClosure*)* null, i32 0)
  %22 = load %struct._GimpFilteredContainer*, %struct._GimpFilteredContainer** %filtered_container, align 8
  %src_container9 = getelementptr inbounds %struct._GimpFilteredContainer, %struct._GimpFilteredContainer* %22, i32 0, i32 1
  %23 = load %struct._GimpContainer*, %struct._GimpContainer** %src_container9, align 8
  %24 = bitcast %struct._GimpContainer* %23 to i8*
  %25 = load %struct._GimpFilteredContainer*, %struct._GimpFilteredContainer** %filtered_container, align 8
  %26 = bitcast %struct._GimpFilteredContainer* %25 to i8*
  %call10 = call i64 @g_signal_connect_data(i8* %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0), void ()* bitcast (void (%struct._GimpContainer*, %struct._GimpFilteredContainer*)* @gimp_filtered_container_src_thaw to void ()*), i8* %26, void (i8*, %struct._GClosure*)* null, i32 0)
  br label %sw.epilog

sw.bb.11:                                         ; preds = %entry
  %27 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call12 = call i8* @g_value_get_pointer(%struct._GValue* %27)
  %28 = bitcast i8* %call12 to i32 (%struct._GimpObject*, i8*)*
  %29 = load %struct._GimpFilteredContainer*, %struct._GimpFilteredContainer** %filtered_container, align 8
  %filter_func = getelementptr inbounds %struct._GimpFilteredContainer, %struct._GimpFilteredContainer* %29, i32 0, i32 2
  store i32 (%struct._GimpObject*, i8*)* %28, i32 (%struct._GimpObject*, i8*)** %filter_func, align 8
  br label %sw.epilog

sw.bb.13:                                         ; preds = %entry
  %30 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call14 = call i8* @g_value_get_pointer(%struct._GValue* %30)
  %31 = load %struct._GimpFilteredContainer*, %struct._GimpFilteredContainer** %filtered_container, align 8
  %filter_data = getelementptr inbounds %struct._GimpFilteredContainer, %struct._GimpFilteredContainer* %31, i32 0, i32 3
  store i8* %call14, i8** %filter_data, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %32 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %32, %struct._GObject** %_glib__object, align 8
  %33 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %33, %struct._GParamSpec** %_glib__pspec, align 8
  %34 = load i32, i32* %property_id.addr, align 4
  store i32 %34, i32* %_glib__property_id, align 4
  %35 = load i32, i32* %_glib__property_id, align 4
  %36 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %36, i32 0, i32 1
  %37 = load i8*, i8** %name, align 8
  %38 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %39 = bitcast %struct._GParamSpec* %38 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %39, i32 0, i32 0
  %40 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %40, i32 0, i32 0
  %41 = load i64, i64* %g_type, align 8
  %call15 = call i8* @g_type_name(i64 %41)
  %42 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %43 = bitcast %struct._GObject* %42 to %struct._GTypeInstance*
  %g_class16 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %43, i32 0, i32 0
  %44 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class16, align 8
  %g_type17 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %44, i32 0, i32 0
  %45 = load i64, i64* %g_type17, align 8
  %call18 = call i8* @g_type_name(i64 %45)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i32 0, i32 0), i32 217, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0), i32 %35, i8* %37, i8* %call15, i8* %call18)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.13, %sw.bb.11, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_filtered_container_get_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %filtered_container = alloca %struct._GimpFilteredContainer*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_filtered_container_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpFilteredContainer*
  store %struct._GimpFilteredContainer* %2, %struct._GimpFilteredContainer** %filtered_container, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.2
    i32 3, label %sw.bb.3
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %5 = load %struct._GimpFilteredContainer*, %struct._GimpFilteredContainer** %filtered_container, align 8
  %src_container = getelementptr inbounds %struct._GimpFilteredContainer, %struct._GimpFilteredContainer* %5, i32 0, i32 1
  %6 = load %struct._GimpContainer*, %struct._GimpContainer** %src_container, align 8
  %7 = bitcast %struct._GimpContainer* %6 to i8*
  call void @g_value_set_object(%struct._GValue* %4, i8* %7)
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %8 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %9 = load %struct._GimpFilteredContainer*, %struct._GimpFilteredContainer** %filtered_container, align 8
  %filter_func = getelementptr inbounds %struct._GimpFilteredContainer, %struct._GimpFilteredContainer* %9, i32 0, i32 2
  %10 = load i32 (%struct._GimpObject*, i8*)*, i32 (%struct._GimpObject*, i8*)** %filter_func, align 8
  %11 = bitcast i32 (%struct._GimpObject*, i8*)* %10 to i8*
  call void @g_value_set_pointer(%struct._GValue* %8, i8* %11)
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %12 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %13 = load %struct._GimpFilteredContainer*, %struct._GimpFilteredContainer** %filtered_container, align 8
  %filter_data = getelementptr inbounds %struct._GimpFilteredContainer, %struct._GimpFilteredContainer* %13, i32 0, i32 3
  %14 = load i8*, i8** %filter_data, align 8
  call void @g_value_set_pointer(%struct._GValue* %12, i8* %14)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %15 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %15, %struct._GObject** %_glib__object, align 8
  %16 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %16, %struct._GParamSpec** %_glib__pspec, align 8
  %17 = load i32, i32* %property_id.addr, align 4
  store i32 %17, i32* %_glib__property_id, align 4
  %18 = load i32, i32* %_glib__property_id, align 4
  %19 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %19, i32 0, i32 1
  %20 = load i8*, i8** %name, align 8
  %21 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %22 = bitcast %struct._GParamSpec* %21 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %22, i32 0, i32 0
  %23 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %23, i32 0, i32 0
  %24 = load i64, i64* %g_type, align 8
  %call4 = call i8* @g_type_name(i64 %24)
  %25 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %26 = bitcast %struct._GObject* %25 to %struct._GTypeInstance*
  %g_class5 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %26, i32 0, i32 0
  %27 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class5, align 8
  %g_type6 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %27, i32 0, i32 0
  %28 = load i64, i64* %g_type6, align 8
  %call7 = call i8* @g_type_name(i64 %28)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i32 0, i32 0), i32 245, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0), i32 %18, i8* %20, i8* %call4, i8* %call7)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.3, %sw.bb.2, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_filtered_container_real_src_add(%struct._GimpFilteredContainer* %filtered_container, %struct._GimpObject* %object) #3 {
entry:
  %filtered_container.addr = alloca %struct._GimpFilteredContainer*, align 8
  %object.addr = alloca %struct._GimpObject*, align 8
  store %struct._GimpFilteredContainer* %filtered_container, %struct._GimpFilteredContainer** %filtered_container.addr, align 8
  store %struct._GimpObject* %object, %struct._GimpObject** %object.addr, align 8
  %0 = load %struct._GimpFilteredContainer*, %struct._GimpFilteredContainer** %filtered_container.addr, align 8
  %1 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %call = call i32 @gimp_filtered_container_object_matches(%struct._GimpFilteredContainer* %0, %struct._GimpObject* %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._GimpFilteredContainer*, %struct._GimpFilteredContainer** %filtered_container.addr, align 8
  %3 = bitcast %struct._GimpFilteredContainer* %2 to %struct._GTypeInstance*
  %call1 = call i64 @gimp_container_get_type() #7
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call1)
  %4 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpContainer*
  %5 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %call3 = call i32 @gimp_container_add(%struct._GimpContainer* %4, %struct._GimpObject* %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_filtered_container_real_src_remove(%struct._GimpFilteredContainer* %filtered_container, %struct._GimpObject* %object) #3 {
entry:
  %filtered_container.addr = alloca %struct._GimpFilteredContainer*, align 8
  %object.addr = alloca %struct._GimpObject*, align 8
  store %struct._GimpFilteredContainer* %filtered_container, %struct._GimpFilteredContainer** %filtered_container.addr, align 8
  store %struct._GimpObject* %object, %struct._GimpObject** %object.addr, align 8
  %0 = load %struct._GimpFilteredContainer*, %struct._GimpFilteredContainer** %filtered_container.addr, align 8
  %1 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %call = call i32 @gimp_filtered_container_object_matches(%struct._GimpFilteredContainer* %0, %struct._GimpObject* %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._GimpFilteredContainer*, %struct._GimpFilteredContainer** %filtered_container.addr, align 8
  %3 = bitcast %struct._GimpFilteredContainer* %2 to %struct._GTypeInstance*
  %call1 = call i64 @gimp_container_get_type() #7
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call1)
  %4 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpContainer*
  %5 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %call3 = call i32 @gimp_container_remove(%struct._GimpContainer* %4, %struct._GimpObject* %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_filtered_container_real_src_freeze(%struct._GimpFilteredContainer* %filtered_container) #3 {
entry:
  %filtered_container.addr = alloca %struct._GimpFilteredContainer*, align 8
  store %struct._GimpFilteredContainer* %filtered_container, %struct._GimpFilteredContainer** %filtered_container.addr, align 8
  %0 = load %struct._GimpFilteredContainer*, %struct._GimpFilteredContainer** %filtered_container.addr, align 8
  %1 = bitcast %struct._GimpFilteredContainer* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_container_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpContainer*
  call void @gimp_container_clear(%struct._GimpContainer* %2)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_filtered_container_real_src_thaw(%struct._GimpFilteredContainer* %filtered_container) #3 {
entry:
  %filtered_container.addr = alloca %struct._GimpFilteredContainer*, align 8
  %list = alloca %struct._GList*, align 8
  %object = alloca %struct._GimpObject*, align 8
  store %struct._GimpFilteredContainer* %filtered_container, %struct._GimpFilteredContainer** %filtered_container.addr, align 8
  %0 = load %struct._GimpFilteredContainer*, %struct._GimpFilteredContainer** %filtered_container.addr, align 8
  %src_container = getelementptr inbounds %struct._GimpFilteredContainer, %struct._GimpFilteredContainer* %0, i32 0, i32 1
  %1 = load %struct._GimpContainer*, %struct._GimpContainer** %src_container, align 8
  %2 = bitcast %struct._GimpContainer* %1 to %struct._GTypeInstance*
  %call = call i64 @gimp_list_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpList*
  %list2 = getelementptr inbounds %struct._GimpList, %struct._GimpList* %3, i32 0, i32 1
  %4 = load %struct._GList*, %struct._GList** %list2, align 8
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
  %8 = bitcast i8* %7 to %struct._GimpObject*
  store %struct._GimpObject* %8, %struct._GimpObject** %object, align 8
  %9 = load %struct._GimpFilteredContainer*, %struct._GimpFilteredContainer** %filtered_container.addr, align 8
  %10 = load %struct._GimpObject*, %struct._GimpObject** %object, align 8
  %call3 = call i32 @gimp_filtered_container_object_matches(%struct._GimpFilteredContainer* %9, %struct._GimpObject* %10)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %11 = load %struct._GimpFilteredContainer*, %struct._GimpFilteredContainer** %filtered_container.addr, align 8
  %12 = bitcast %struct._GimpFilteredContainer* %11 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_container_get_type() #7
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call5)
  %13 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpContainer*
  %14 = load %struct._GimpObject*, %struct._GimpObject** %object, align 8
  %call7 = call i32 @gimp_container_add(%struct._GimpContainer* %13, %struct._GimpObject* %14)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %15 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool8 = icmp ne %struct._GList* %15, null
  br i1 %tobool8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %16 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %16, i32 0, i32 1
  %17 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %17, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_object(i8*, i8*, i8*, i64, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_container_get_type() #2

declare %struct._GParamSpec* @g_param_spec_pointer(i8*, i8*, i8*, i32) #1

; Function Attrs: noreturn
declare void @g_assertion_message_expr(i8*, i8*, i32, i8*, i8*) #5

declare i32 @gimp_container_frozen(%struct._GimpContainer*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_filtered_container_src_freeze(%struct._GimpContainer* %src_container, %struct._GimpFilteredContainer* %filtered_container) #3 {
entry:
  %src_container.addr = alloca %struct._GimpContainer*, align 8
  %filtered_container.addr = alloca %struct._GimpFilteredContainer*, align 8
  store %struct._GimpContainer* %src_container, %struct._GimpContainer** %src_container.addr, align 8
  store %struct._GimpFilteredContainer* %filtered_container, %struct._GimpFilteredContainer** %filtered_container.addr, align 8
  %0 = load %struct._GimpFilteredContainer*, %struct._GimpFilteredContainer** %filtered_container.addr, align 8
  %1 = bitcast %struct._GimpFilteredContainer* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_container_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpContainer*
  call void @gimp_container_freeze(%struct._GimpContainer* %2)
  %3 = load %struct._GimpFilteredContainer*, %struct._GimpFilteredContainer** %filtered_container.addr, align 8
  %4 = bitcast %struct._GimpFilteredContainer* %3 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %4, i32 0, i32 0
  %5 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %6 = bitcast %struct._GTypeClass* %5 to %struct._GimpFilteredContainerClass*
  %src_freeze = getelementptr inbounds %struct._GimpFilteredContainerClass, %struct._GimpFilteredContainerClass* %6, i32 0, i32 3
  %7 = load void (%struct._GimpFilteredContainer*)*, void (%struct._GimpFilteredContainer*)** %src_freeze, align 8
  %8 = load %struct._GimpFilteredContainer*, %struct._GimpFilteredContainer** %filtered_container.addr, align 8
  call void %7(%struct._GimpFilteredContainer* %8)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_filtered_container_src_thaw(%struct._GimpContainer* %src_container, %struct._GimpFilteredContainer* %filtered_container) #3 {
entry:
  %src_container.addr = alloca %struct._GimpContainer*, align 8
  %filtered_container.addr = alloca %struct._GimpFilteredContainer*, align 8
  store %struct._GimpContainer* %src_container, %struct._GimpContainer** %src_container.addr, align 8
  store %struct._GimpFilteredContainer* %filtered_container, %struct._GimpFilteredContainer** %filtered_container.addr, align 8
  %0 = load %struct._GimpFilteredContainer*, %struct._GimpFilteredContainer** %filtered_container.addr, align 8
  %1 = bitcast %struct._GimpFilteredContainer* %0 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %1, i32 0, i32 0
  %2 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %3 = bitcast %struct._GTypeClass* %2 to %struct._GimpFilteredContainerClass*
  %src_thaw = getelementptr inbounds %struct._GimpFilteredContainerClass, %struct._GimpFilteredContainerClass* %3, i32 0, i32 4
  %4 = load void (%struct._GimpFilteredContainer*)*, void (%struct._GimpFilteredContainer*)** %src_thaw, align 8
  %5 = load %struct._GimpFilteredContainer*, %struct._GimpFilteredContainer** %filtered_container.addr, align 8
  call void %4(%struct._GimpFilteredContainer* %5)
  %6 = load %struct._GimpFilteredContainer*, %struct._GimpFilteredContainer** %filtered_container.addr, align 8
  %7 = bitcast %struct._GimpFilteredContainer* %6 to %struct._GTypeInstance*
  %call = call i64 @gimp_container_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call)
  %8 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpContainer*
  call void @gimp_container_thaw(%struct._GimpContainer* %8)
  ret void
}

declare void @gimp_container_freeze(%struct._GimpContainer*) #1

declare void @gimp_container_thaw(%struct._GimpContainer*) #1

declare i32 @g_signal_handlers_disconnect_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_filtered_container_src_add(%struct._GimpContainer* %src_container, %struct._GimpObject* %object, %struct._GimpFilteredContainer* %filtered_container) #3 {
entry:
  %src_container.addr = alloca %struct._GimpContainer*, align 8
  %object.addr = alloca %struct._GimpObject*, align 8
  %filtered_container.addr = alloca %struct._GimpFilteredContainer*, align 8
  store %struct._GimpContainer* %src_container, %struct._GimpContainer** %src_container.addr, align 8
  store %struct._GimpObject* %object, %struct._GimpObject** %object.addr, align 8
  store %struct._GimpFilteredContainer* %filtered_container, %struct._GimpFilteredContainer** %filtered_container.addr, align 8
  %0 = load %struct._GimpFilteredContainer*, %struct._GimpFilteredContainer** %filtered_container.addr, align 8
  %src_container1 = getelementptr inbounds %struct._GimpFilteredContainer, %struct._GimpFilteredContainer* %0, i32 0, i32 1
  %1 = load %struct._GimpContainer*, %struct._GimpContainer** %src_container1, align 8
  %call = call i32 @gimp_container_frozen(%struct._GimpContainer* %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct._GimpFilteredContainer*, %struct._GimpFilteredContainer** %filtered_container.addr, align 8
  %3 = bitcast %struct._GimpFilteredContainer* %2 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %3, i32 0, i32 0
  %4 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %5 = bitcast %struct._GTypeClass* %4 to %struct._GimpFilteredContainerClass*
  %src_add = getelementptr inbounds %struct._GimpFilteredContainerClass, %struct._GimpFilteredContainerClass* %5, i32 0, i32 1
  %6 = load void (%struct._GimpFilteredContainer*, %struct._GimpObject*)*, void (%struct._GimpFilteredContainer*, %struct._GimpObject*)** %src_add, align 8
  %7 = load %struct._GimpFilteredContainer*, %struct._GimpFilteredContainer** %filtered_container.addr, align 8
  %8 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  call void %6(%struct._GimpFilteredContainer* %7, %struct._GimpObject* %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_filtered_container_src_remove(%struct._GimpContainer* %src_container, %struct._GimpObject* %object, %struct._GimpFilteredContainer* %filtered_container) #3 {
entry:
  %src_container.addr = alloca %struct._GimpContainer*, align 8
  %object.addr = alloca %struct._GimpObject*, align 8
  %filtered_container.addr = alloca %struct._GimpFilteredContainer*, align 8
  store %struct._GimpContainer* %src_container, %struct._GimpContainer** %src_container.addr, align 8
  store %struct._GimpObject* %object, %struct._GimpObject** %object.addr, align 8
  store %struct._GimpFilteredContainer* %filtered_container, %struct._GimpFilteredContainer** %filtered_container.addr, align 8
  %0 = load %struct._GimpFilteredContainer*, %struct._GimpFilteredContainer** %filtered_container.addr, align 8
  %src_container1 = getelementptr inbounds %struct._GimpFilteredContainer, %struct._GimpFilteredContainer* %0, i32 0, i32 1
  %1 = load %struct._GimpContainer*, %struct._GimpContainer** %src_container1, align 8
  %call = call i32 @gimp_container_frozen(%struct._GimpContainer* %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct._GimpFilteredContainer*, %struct._GimpFilteredContainer** %filtered_container.addr, align 8
  %3 = bitcast %struct._GimpFilteredContainer* %2 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %3, i32 0, i32 0
  %4 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %5 = bitcast %struct._GTypeClass* %4 to %struct._GimpFilteredContainerClass*
  %src_remove = getelementptr inbounds %struct._GimpFilteredContainerClass, %struct._GimpFilteredContainerClass* %5, i32 0, i32 2
  %6 = load void (%struct._GimpFilteredContainer*, %struct._GimpObject*)*, void (%struct._GimpFilteredContainer*, %struct._GimpObject*)** %src_remove, align 8
  %7 = load %struct._GimpFilteredContainer*, %struct._GimpFilteredContainer** %filtered_container.addr, align 8
  %8 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  call void %6(%struct._GimpFilteredContainer* %7, %struct._GimpObject* %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @g_object_unref(i8*) #1

declare i8* @g_value_dup_object(%struct._GValue*) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

declare i8* @g_value_get_pointer(%struct._GValue*) #1

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
  call void @g_logv(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

declare i8* @g_type_name(i64) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #6

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #6

declare void @g_value_set_object(%struct._GValue*, i8*) #1

declare void @g_value_set_pointer(%struct._GValue*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_filtered_container_object_matches(%struct._GimpFilteredContainer* %filtered_container, %struct._GimpObject* %object) #3 {
entry:
  %filtered_container.addr = alloca %struct._GimpFilteredContainer*, align 8
  %object.addr = alloca %struct._GimpObject*, align 8
  store %struct._GimpFilteredContainer* %filtered_container, %struct._GimpFilteredContainer** %filtered_container.addr, align 8
  store %struct._GimpObject* %object, %struct._GimpObject** %object.addr, align 8
  %0 = load %struct._GimpFilteredContainer*, %struct._GimpFilteredContainer** %filtered_container.addr, align 8
  %filter_func = getelementptr inbounds %struct._GimpFilteredContainer, %struct._GimpFilteredContainer* %0, i32 0, i32 2
  %1 = load i32 (%struct._GimpObject*, i8*)*, i32 (%struct._GimpObject*, i8*)** %filter_func, align 8
  %tobool = icmp ne i32 (%struct._GimpObject*, i8*)* %1, null
  br i1 %tobool, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %entry
  %2 = load %struct._GimpFilteredContainer*, %struct._GimpFilteredContainer** %filtered_container.addr, align 8
  %filter_func1 = getelementptr inbounds %struct._GimpFilteredContainer, %struct._GimpFilteredContainer* %2, i32 0, i32 2
  %3 = load i32 (%struct._GimpObject*, i8*)*, i32 (%struct._GimpObject*, i8*)** %filter_func1, align 8
  %4 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %5 = load %struct._GimpFilteredContainer*, %struct._GimpFilteredContainer** %filtered_container.addr, align 8
  %filter_data = getelementptr inbounds %struct._GimpFilteredContainer, %struct._GimpFilteredContainer* %5, i32 0, i32 3
  %6 = load i8*, i8** %filter_data, align 8
  %call = call i32 %3(%struct._GimpObject* %4, i8* %6)
  %tobool2 = icmp ne i32 %call, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %7 = phi i1 [ true, %entry ], [ %tobool2, %lor.rhs ]
  %lor.ext = zext i1 %7 to i32
  ret i32 %lor.ext
}

declare i32 @gimp_container_add(%struct._GimpContainer*, %struct._GimpObject*) #1

declare i32 @gimp_container_remove(%struct._GimpContainer*, %struct._GimpObject*) #1

declare void @gimp_container_clear(%struct._GimpContainer*) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readnone }
attributes #8 = { nounwind readonly }
attributes #9 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
