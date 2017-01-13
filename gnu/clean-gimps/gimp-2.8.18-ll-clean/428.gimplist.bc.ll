; ModuleID = './app/core/gimplist.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpListClass = type { %struct._GimpContainerClass }
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
%struct._GimpList = type { %struct._GimpContainer, %struct._GList*, i32, i32 (i8*, i8*)*, i32 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@gimp_list_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"GimpList\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"Gimp-Core\00", align 1
@__func__.gimp_list_new = private unnamed_addr constant [14 x i8] c"gimp_list_new\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"g_type_is_a (children_type, GIMP_TYPE_OBJECT)\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"children-type\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"policy\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"unique-names\00", align 1
@__func__.gimp_list_new_weak = private unnamed_addr constant [19 x i8] c"gimp_list_new_weak\00", align 1
@__func__.gimp_list_reverse = private unnamed_addr constant [18 x i8] c"gimp_list_reverse\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"GIMP_IS_LIST (list)\00", align 1
@__func__.gimp_list_set_sort_func = private unnamed_addr constant [24 x i8] c"gimp_list_set_sort_func\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"sort-func\00", align 1
@__func__.gimp_list_sort = private unnamed_addr constant [15 x i8] c"gimp_list_sort\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"sort_func != NULL\00", align 1
@__func__.gimp_list_sort_by_name = private unnamed_addr constant [23 x i8] c"gimp_list_sort_by_name\00", align 1
@gimp_list_parent_class = internal global i8* null, align 8
@GimpList_private_offset = internal global i32 0, align 4
@.str.9 = private unnamed_addr constant [7 x i8] c"append\00", align 1
@.str.10 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"gimplist.c\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"property\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"name-changed\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"%s #%d\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_list_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_list_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_list_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_container_get_type() #6
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 248, void (i8*, i8*)* bitcast (void (i8*)* @gimp_list_class_intern_init to void (i8*, i8*)*), i32 72, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpList*)* @gimp_list_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_list_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_list_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_container_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_list_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_list_parent_class, align 8
  %1 = load i32, i32* @GimpList_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpList_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpListClass*
  call void @gimp_list_class_init(%struct._GimpListClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_list_init(%struct._GimpList* %list) #3 {
entry:
  %list.addr = alloca %struct._GimpList*, align 8
  store %struct._GimpList* %list, %struct._GimpList** %list.addr, align 8
  %0 = load %struct._GimpList*, %struct._GimpList** %list.addr, align 8
  %list1 = getelementptr inbounds %struct._GimpList, %struct._GimpList* %0, i32 0, i32 1
  store %struct._GList* null, %struct._GList** %list1, align 8
  %1 = load %struct._GimpList*, %struct._GimpList** %list.addr, align 8
  %unique_names = getelementptr inbounds %struct._GimpList, %struct._GimpList* %1, i32 0, i32 2
  store i32 0, i32* %unique_names, align 4
  %2 = load %struct._GimpList*, %struct._GimpList** %list.addr, align 8
  %sort_func = getelementptr inbounds %struct._GimpList, %struct._GimpList* %2, i32 0, i32 3
  store i32 (i8*, i8*)* null, i32 (i8*, i8*)** %sort_func, align 8
  %3 = load %struct._GimpList*, %struct._GimpList** %list.addr, align 8
  %append = getelementptr inbounds %struct._GimpList, %struct._GimpList* %3, i32 0, i32 4
  store i32 0, i32* %append, align 4
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GimpContainer* @gimp_list_new(i64 %children_type, i32 %unique_names) #3 {
entry:
  %retval = alloca %struct._GimpContainer*, align 8
  %children_type.addr = alloca i64, align 8
  %unique_names.addr = alloca i32, align 4
  %list = alloca %struct._GimpList*, align 8
  store i64 %children_type, i64* %children_type.addr, align 8
  store i32 %unique_names, i32* %unique_names.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i64, i64* %children_type.addr, align 8
  %call = call i64 @gimp_object_get_type() #6
  %call1 = call i32 @g_type_is_a(i64 %0, i64 %call)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.gimp_list_new, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpContainer* null, %struct._GimpContainer** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %call2 = call i64 @gimp_list_get_type() #6
  %1 = load i64, i64* %children_type.addr, align 8
  %2 = load i32, i32* %unique_names.addr, align 4
  %tobool3 = icmp ne i32 %2, 0
  %cond = select i1 %tobool3, i32 1, i32 0
  %call4 = call i8* (i64, i8*, ...) @g_object_new(i64 %call2, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), i64 %1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0), i32 %cond, i8* null)
  %3 = bitcast i8* %call4 to %struct._GimpList*
  store %struct._GimpList* %3, %struct._GimpList** %list, align 8
  %4 = load %struct._GimpList*, %struct._GimpList** %list, align 8
  %5 = bitcast %struct._GimpList* %4 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_object_get_type() #6
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call5)
  %6 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpObject*
  %7 = load i64, i64* %children_type.addr, align 8
  %call7 = call i8* @g_type_name(i64 %7)
  call void @gimp_object_set_static_name(%struct._GimpObject* %6, i8* %call7)
  %8 = load %struct._GimpList*, %struct._GimpList** %list, align 8
  %9 = bitcast %struct._GimpList* %8 to %struct._GTypeInstance*
  %call8 = call i64 @gimp_container_get_type() #6
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call8)
  %10 = bitcast %struct._GTypeInstance* %call9 to %struct._GimpContainer*
  store %struct._GimpContainer* %10, %struct._GimpContainer** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else
  %11 = load %struct._GimpContainer*, %struct._GimpContainer** %retval
  ret %struct._GimpContainer* %11
}

declare i32 @g_type_is_a(i64, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare i8* @g_object_new(i64, i8*, ...) #1

declare void @gimp_object_set_static_name(%struct._GimpObject*, i8*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare i8* @g_type_name(i64) #1

; Function Attrs: nounwind uwtable
define %struct._GimpContainer* @gimp_list_new_weak(i64 %children_type, i32 %unique_names) #3 {
entry:
  %retval = alloca %struct._GimpContainer*, align 8
  %children_type.addr = alloca i64, align 8
  %unique_names.addr = alloca i32, align 4
  %list = alloca %struct._GimpList*, align 8
  store i64 %children_type, i64* %children_type.addr, align 8
  store i32 %unique_names, i32* %unique_names.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i64, i64* %children_type.addr, align 8
  %call = call i64 @gimp_object_get_type() #6
  %call1 = call i32 @g_type_is_a(i64 %0, i64 %call)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gimp_list_new_weak, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpContainer* null, %struct._GimpContainer** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %call2 = call i64 @gimp_list_get_type() #6
  %1 = load i64, i64* %children_type.addr, align 8
  %2 = load i32, i32* %unique_names.addr, align 4
  %tobool3 = icmp ne i32 %2, 0
  %cond = select i1 %tobool3, i32 1, i32 0
  %call4 = call i8* (i64, i8*, ...) @g_object_new(i64 %call2, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), i64 %1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0), i32 %cond, i8* null)
  %3 = bitcast i8* %call4 to %struct._GimpList*
  store %struct._GimpList* %3, %struct._GimpList** %list, align 8
  %4 = load %struct._GimpList*, %struct._GimpList** %list, align 8
  %5 = bitcast %struct._GimpList* %4 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_object_get_type() #6
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call5)
  %6 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpObject*
  %7 = load i64, i64* %children_type.addr, align 8
  %call7 = call i8* @g_type_name(i64 %7)
  call void @gimp_object_set_static_name(%struct._GimpObject* %6, i8* %call7)
  %8 = load %struct._GimpList*, %struct._GimpList** %list, align 8
  %9 = bitcast %struct._GimpList* %8 to %struct._GTypeInstance*
  %call8 = call i64 @gimp_container_get_type() #6
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call8)
  %10 = bitcast %struct._GTypeInstance* %call9 to %struct._GimpContainer*
  store %struct._GimpContainer* %10, %struct._GimpContainer** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else
  %11 = load %struct._GimpContainer*, %struct._GimpContainer** %retval
  ret %struct._GimpContainer* %11
}

; Function Attrs: nounwind uwtable
define void @gimp_list_reverse(%struct._GimpList* %list) #3 {
entry:
  %list.addr = alloca %struct._GimpList*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpList* %list, %struct._GimpList** %list.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpList*, %struct._GimpList** %list.addr, align 8
  %1 = bitcast %struct._GimpList* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_list_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.gimp_list_reverse, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.23

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpList*, %struct._GimpList** %list.addr, align 8
  %14 = bitcast %struct._GimpList* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_container_get_type() #6
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpContainer*
  %call13 = call i32 @gimp_container_get_n_children(%struct._GimpContainer* %15)
  %cmp14 = icmp sgt i32 %call13, 1
  br i1 %cmp14, label %if.then.15, label %if.end.23

if.then.15:                                       ; preds = %do.end
  %16 = load %struct._GimpList*, %struct._GimpList** %list.addr, align 8
  %17 = bitcast %struct._GimpList* %16 to %struct._GTypeInstance*
  %call16 = call i64 @gimp_container_get_type() #6
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call16)
  %18 = bitcast %struct._GTypeInstance* %call17 to %struct._GimpContainer*
  call void @gimp_container_freeze(%struct._GimpContainer* %18)
  %19 = load %struct._GimpList*, %struct._GimpList** %list.addr, align 8
  %list18 = getelementptr inbounds %struct._GimpList, %struct._GimpList* %19, i32 0, i32 1
  %20 = load %struct._GList*, %struct._GList** %list18, align 8
  %call19 = call %struct._GList* @g_list_reverse(%struct._GList* %20)
  %21 = load %struct._GimpList*, %struct._GimpList** %list.addr, align 8
  %list20 = getelementptr inbounds %struct._GimpList, %struct._GimpList* %21, i32 0, i32 1
  store %struct._GList* %call19, %struct._GList** %list20, align 8
  %22 = load %struct._GimpList*, %struct._GimpList** %list.addr, align 8
  %23 = bitcast %struct._GimpList* %22 to %struct._GTypeInstance*
  %call21 = call i64 @gimp_container_get_type() #6
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call21)
  %24 = bitcast %struct._GTypeInstance* %call22 to %struct._GimpContainer*
  call void @gimp_container_thaw(%struct._GimpContainer* %24)
  br label %if.end.23

if.end.23:                                        ; preds = %if.else.9, %if.then.15, %do.end
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare i32 @gimp_container_get_n_children(%struct._GimpContainer*) #1

declare void @gimp_container_freeze(%struct._GimpContainer*) #1

declare %struct._GList* @g_list_reverse(%struct._GList*) #1

declare void @gimp_container_thaw(%struct._GimpContainer*) #1

; Function Attrs: nounwind uwtable
define void @gimp_list_set_sort_func(%struct._GimpList* %list, i32 (i8*, i8*)* %sort_func) #3 {
entry:
  %list.addr = alloca %struct._GimpList*, align 8
  %sort_func.addr = alloca i32 (i8*, i8*)*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpList* %list, %struct._GimpList** %list.addr, align 8
  store i32 (i8*, i8*)* %sort_func, i32 (i8*, i8*)** %sort_func.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpList*, %struct._GimpList** %list.addr, align 8
  %1 = bitcast %struct._GimpList* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_list_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_list_set_sort_func, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.19

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %sort_func.addr, align 8
  %14 = load %struct._GimpList*, %struct._GimpList** %list.addr, align 8
  %sort_func11 = getelementptr inbounds %struct._GimpList, %struct._GimpList* %14, i32 0, i32 3
  %15 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %sort_func11, align 8
  %cmp12 = icmp ne i32 (i8*, i8*)* %13, %15
  br i1 %cmp12, label %if.then.13, label %if.end.19

if.then.13:                                       ; preds = %do.end
  %16 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %sort_func.addr, align 8
  %tobool14 = icmp ne i32 (i8*, i8*)* %16, null
  br i1 %tobool14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.then.13
  %17 = load %struct._GimpList*, %struct._GimpList** %list.addr, align 8
  %18 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %sort_func.addr, align 8
  call void @gimp_list_sort(%struct._GimpList* %17, i32 (i8*, i8*)* %18)
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %if.then.13
  %19 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %sort_func.addr, align 8
  %20 = load %struct._GimpList*, %struct._GimpList** %list.addr, align 8
  %sort_func17 = getelementptr inbounds %struct._GimpList, %struct._GimpList* %20, i32 0, i32 3
  store i32 (i8*, i8*)* %19, i32 (i8*, i8*)** %sort_func17, align 8
  %21 = load %struct._GimpList*, %struct._GimpList** %list.addr, align 8
  %22 = bitcast %struct._GimpList* %21 to %struct._GTypeInstance*
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 80)
  %23 = bitcast %struct._GTypeInstance* %call18 to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %23, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end.19

if.end.19:                                        ; preds = %if.else.9, %if.end.16, %do.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_list_sort(%struct._GimpList* %list, i32 (i8*, i8*)* %sort_func) #3 {
entry:
  %list.addr = alloca %struct._GimpList*, align 8
  %sort_func.addr = alloca i32 (i8*, i8*)*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpList* %list, %struct._GimpList** %list.addr, align 8
  store i32 (i8*, i8*)* %sort_func, i32 (i8*, i8*)** %sort_func.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpList*, %struct._GimpList** %list.addr, align 8
  %1 = bitcast %struct._GimpList* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_list_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.gimp_list_sort, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.29

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %sort_func.addr, align 8
  %cmp12 = icmp ne i32 (i8*, i8*)* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.gimp_list_sort, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end.29

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GimpList*, %struct._GimpList** %list.addr, align 8
  %15 = bitcast %struct._GimpList* %14 to %struct._GTypeInstance*
  %call17 = call i64 @gimp_container_get_type() #6
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call17)
  %16 = bitcast %struct._GTypeInstance* %call18 to %struct._GimpContainer*
  %call19 = call i32 @gimp_container_get_n_children(%struct._GimpContainer* %16)
  %cmp20 = icmp sgt i32 %call19, 1
  br i1 %cmp20, label %if.then.21, label %if.end.29

if.then.21:                                       ; preds = %do.end.16
  %17 = load %struct._GimpList*, %struct._GimpList** %list.addr, align 8
  %18 = bitcast %struct._GimpList* %17 to %struct._GTypeInstance*
  %call22 = call i64 @gimp_container_get_type() #6
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call22)
  %19 = bitcast %struct._GTypeInstance* %call23 to %struct._GimpContainer*
  call void @gimp_container_freeze(%struct._GimpContainer* %19)
  %20 = load %struct._GimpList*, %struct._GimpList** %list.addr, align 8
  %list24 = getelementptr inbounds %struct._GimpList, %struct._GimpList* %20, i32 0, i32 1
  %21 = load %struct._GList*, %struct._GList** %list24, align 8
  %22 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %sort_func.addr, align 8
  %call25 = call %struct._GList* @g_list_sort(%struct._GList* %21, i32 (i8*, i8*)* %22)
  %23 = load %struct._GimpList*, %struct._GimpList** %list.addr, align 8
  %list26 = getelementptr inbounds %struct._GimpList, %struct._GimpList* %23, i32 0, i32 1
  store %struct._GList* %call25, %struct._GList** %list26, align 8
  %24 = load %struct._GimpList*, %struct._GimpList** %list.addr, align 8
  %25 = bitcast %struct._GimpList* %24 to %struct._GTypeInstance*
  %call27 = call i64 @gimp_container_get_type() #6
  %call28 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call27)
  %26 = bitcast %struct._GTypeInstance* %call28 to %struct._GimpContainer*
  call void @gimp_container_thaw(%struct._GimpContainer* %26)
  br label %if.end.29

if.end.29:                                        ; preds = %if.else.9, %if.else.14, %if.then.21, %do.end.16
  ret void
}

declare void @g_object_notify(%struct._GObject*, i8*) #1

declare %struct._GList* @g_list_sort(%struct._GList*, i32 (i8*, i8*)*) #1

; Function Attrs: nounwind uwtable
define void @gimp_list_sort_by_name(%struct._GimpList* %list) #3 {
entry:
  %list.addr = alloca %struct._GimpList*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpList* %list, %struct._GimpList** %list.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpList*, %struct._GimpList** %list.addr, align 8
  %1 = bitcast %struct._GimpList* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_list_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_list_sort_by_name, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpList*, %struct._GimpList** %list.addr, align 8
  call void @gimp_list_sort(%struct._GimpList* %13, i32 (i8*, i8*)* bitcast (i32 (%struct._GimpObject*, %struct._GimpObject*)* @gimp_object_name_collate to i32 (i8*, i8*)*))
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

declare i32 @gimp_object_name_collate(%struct._GimpObject*, %struct._GimpObject*) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_list_class_init(%struct._GimpListClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpListClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %gimp_object_class = alloca %struct._GimpObjectClass*, align 8
  %container_class = alloca %struct._GimpContainerClass*, align 8
  store %struct._GimpListClass* %klass, %struct._GimpListClass** %klass.addr, align 8
  %0 = load %struct._GimpListClass*, %struct._GimpListClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpListClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpListClass*, %struct._GimpListClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpListClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gimp_object_get_type() #6
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GimpObjectClass*
  store %struct._GimpObjectClass* %5, %struct._GimpObjectClass** %gimp_object_class, align 8
  %6 = load %struct._GimpListClass*, %struct._GimpListClass** %klass.addr, align 8
  %7 = bitcast %struct._GimpListClass* %6 to %struct._GTypeClass*
  %call3 = call i64 @gimp_container_get_type() #6
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %7, i64 %call3)
  %8 = bitcast %struct._GTypeClass* %call4 to %struct._GimpContainerClass*
  store %struct._GimpContainerClass* %8, %struct._GimpContainerClass** %container_class, align 8
  %9 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %9, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_list_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %10 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %10, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_list_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %11 = load %struct._GimpObjectClass*, %struct._GimpObjectClass** %gimp_object_class, align 8
  %get_memsize = getelementptr inbounds %struct._GimpObjectClass, %struct._GimpObjectClass* %11, i32 0, i32 3
  store i64 (%struct._GimpObject*, i64*)* @gimp_list_get_memsize, i64 (%struct._GimpObject*, i64*)** %get_memsize, align 8
  %12 = load %struct._GimpContainerClass*, %struct._GimpContainerClass** %container_class, align 8
  %add = getelementptr inbounds %struct._GimpContainerClass, %struct._GimpContainerClass* %12, i32 0, i32 1
  store void (%struct._GimpContainer*, %struct._GimpObject*)* @gimp_list_add, void (%struct._GimpContainer*, %struct._GimpObject*)** %add, align 8
  %13 = load %struct._GimpContainerClass*, %struct._GimpContainerClass** %container_class, align 8
  %remove = getelementptr inbounds %struct._GimpContainerClass, %struct._GimpContainerClass* %13, i32 0, i32 2
  store void (%struct._GimpContainer*, %struct._GimpObject*)* @gimp_list_remove, void (%struct._GimpContainer*, %struct._GimpObject*)** %remove, align 8
  %14 = load %struct._GimpContainerClass*, %struct._GimpContainerClass** %container_class, align 8
  %reorder = getelementptr inbounds %struct._GimpContainerClass, %struct._GimpContainerClass* %14, i32 0, i32 3
  store void (%struct._GimpContainer*, %struct._GimpObject*, i32)* @gimp_list_reorder, void (%struct._GimpContainer*, %struct._GimpObject*, i32)** %reorder, align 8
  %15 = load %struct._GimpContainerClass*, %struct._GimpContainerClass** %container_class, align 8
  %clear = getelementptr inbounds %struct._GimpContainerClass, %struct._GimpContainerClass* %15, i32 0, i32 6
  store void (%struct._GimpContainer*)* @gimp_list_clear, void (%struct._GimpContainer*)** %clear, align 8
  %16 = load %struct._GimpContainerClass*, %struct._GimpContainerClass** %container_class, align 8
  %have = getelementptr inbounds %struct._GimpContainerClass, %struct._GimpContainerClass* %16, i32 0, i32 7
  store i32 (%struct._GimpContainer*, %struct._GimpObject*)* @gimp_list_have, i32 (%struct._GimpContainer*, %struct._GimpObject*)** %have, align 8
  %17 = load %struct._GimpContainerClass*, %struct._GimpContainerClass** %container_class, align 8
  %foreach = getelementptr inbounds %struct._GimpContainerClass, %struct._GimpContainerClass* %17, i32 0, i32 8
  store void (%struct._GimpContainer*, void (i8*, i8*)*, i8*)* @gimp_list_foreach, void (%struct._GimpContainer*, void (i8*, i8*)*, i8*)** %foreach, align 8
  %18 = load %struct._GimpContainerClass*, %struct._GimpContainerClass** %container_class, align 8
  %get_child_by_name = getelementptr inbounds %struct._GimpContainerClass, %struct._GimpContainerClass* %18, i32 0, i32 9
  store %struct._GimpObject* (%struct._GimpContainer*, i8*)* @gimp_list_get_child_by_name, %struct._GimpObject* (%struct._GimpContainer*, i8*)** %get_child_by_name, align 8
  %19 = load %struct._GimpContainerClass*, %struct._GimpContainerClass** %container_class, align 8
  %get_child_by_index = getelementptr inbounds %struct._GimpContainerClass, %struct._GimpContainerClass* %19, i32 0, i32 10
  store %struct._GimpObject* (%struct._GimpContainer*, i32)* @gimp_list_get_child_by_index, %struct._GimpObject* (%struct._GimpContainer*, i32)** %get_child_by_index, align 8
  %20 = load %struct._GimpContainerClass*, %struct._GimpContainerClass** %container_class, align 8
  %get_child_index = getelementptr inbounds %struct._GimpContainerClass, %struct._GimpContainerClass* %20, i32 0, i32 11
  store i32 (%struct._GimpContainer*, %struct._GimpObject*)* @gimp_list_get_child_index, i32 (%struct._GimpContainer*, %struct._GimpObject*)** %get_child_index, align 8
  %21 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call5 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0), i8* null, i8* null, i32 0, i32 235)
  call void @g_object_class_install_property(%struct._GObjectClass* %21, i32 1, %struct._GParamSpec* %call5)
  %22 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call6 = call %struct._GParamSpec* @g_param_spec_pointer(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i8* null, i8* null, i32 231)
  call void @g_object_class_install_property(%struct._GObjectClass* %22, i32 2, %struct._GParamSpec* %call6)
  %23 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call7 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0), i8* null, i8* null, i32 0, i32 231)
  call void @g_object_class_install_property(%struct._GObjectClass* %23, i32 3, %struct._GParamSpec* %call7)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_list_set_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %list = alloca %struct._GimpList*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_list_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpList*
  store %struct._GimpList* %2, %struct._GimpList** %list, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.3
    i32 3, label %sw.bb.5
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call2 = call i32 @g_value_get_boolean(%struct._GValue* %4)
  %5 = load %struct._GimpList*, %struct._GimpList** %list, align 8
  %unique_names = getelementptr inbounds %struct._GimpList, %struct._GimpList* %5, i32 0, i32 2
  store i32 %call2, i32* %unique_names, align 4
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %6 = load %struct._GimpList*, %struct._GimpList** %list, align 8
  %7 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call4 = call i8* @g_value_get_pointer(%struct._GValue* %7)
  %8 = bitcast i8* %call4 to i32 (i8*, i8*)*
  call void @gimp_list_set_sort_func(%struct._GimpList* %6, i32 (i8*, i8*)* %8)
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %9 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call6 = call i32 @g_value_get_boolean(%struct._GValue* %9)
  %10 = load %struct._GimpList*, %struct._GimpList** %list, align 8
  %append = getelementptr inbounds %struct._GimpList, %struct._GimpList* %10, i32 0, i32 4
  store i32 %call6, i32* %append, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %11 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %11, %struct._GObject** %_glib__object, align 8
  %12 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %12, %struct._GParamSpec** %_glib__pspec, align 8
  %13 = load i32, i32* %property_id.addr, align 4
  store i32 %13, i32* %_glib__property_id, align 4
  %14 = load i32, i32* %_glib__property_id, align 4
  %15 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %15, i32 0, i32 1
  %16 = load i8*, i8** %name, align 8
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
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0), i32 158, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0), i32 %14, i8* %16, i8* %call7, i8* %call10)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.5, %sw.bb.3, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_list_get_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %list = alloca %struct._GimpList*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_list_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpList*
  store %struct._GimpList* %2, %struct._GimpList** %list, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.2
    i32 3, label %sw.bb.3
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %5 = load %struct._GimpList*, %struct._GimpList** %list, align 8
  %unique_names = getelementptr inbounds %struct._GimpList, %struct._GimpList* %5, i32 0, i32 2
  %6 = load i32, i32* %unique_names, align 4
  call void @g_value_set_boolean(%struct._GValue* %4, i32 %6)
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %7 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %8 = load %struct._GimpList*, %struct._GimpList** %list, align 8
  %sort_func = getelementptr inbounds %struct._GimpList, %struct._GimpList* %8, i32 0, i32 3
  %9 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %sort_func, align 8
  %10 = bitcast i32 (i8*, i8*)* %9 to i8*
  call void @g_value_set_pointer(%struct._GValue* %7, i8* %10)
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %11 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %12 = load %struct._GimpList*, %struct._GimpList** %list, align 8
  %append = getelementptr inbounds %struct._GimpList, %struct._GimpList* %12, i32 0, i32 4
  %13 = load i32, i32* %append, align 4
  call void @g_value_set_boolean(%struct._GValue* %11, i32 %13)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %14 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %14, %struct._GObject** %_glib__object, align 8
  %15 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %15, %struct._GParamSpec** %_glib__pspec, align 8
  %16 = load i32, i32* %property_id.addr, align 4
  store i32 %16, i32* %_glib__property_id, align 4
  %17 = load i32, i32* %_glib__property_id, align 4
  %18 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %18, i32 0, i32 1
  %19 = load i8*, i8** %name, align 8
  %20 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %21 = bitcast %struct._GParamSpec* %20 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %21, i32 0, i32 0
  %22 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %22, i32 0, i32 0
  %23 = load i64, i64* %g_type, align 8
  %call4 = call i8* @g_type_name(i64 %23)
  %24 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %25 = bitcast %struct._GObject* %24 to %struct._GTypeInstance*
  %g_class5 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %25, i32 0, i32 0
  %26 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class5, align 8
  %g_type6 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %26, i32 0, i32 0
  %27 = load i64, i64* %g_type6, align 8
  %call7 = call i8* @g_type_name(i64 %27)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0), i32 184, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0), i32 %17, i8* %19, i8* %call4, i8* %call7)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.3, %sw.bb.2, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal i64 @gimp_list_get_memsize(%struct._GimpObject* %object, i64* %gui_size) #3 {
entry:
  %object.addr = alloca %struct._GimpObject*, align 8
  %gui_size.addr = alloca i64*, align 8
  %list = alloca %struct._GimpList*, align 8
  %memsize = alloca i64, align 8
  %glist = alloca %struct._GList*, align 8
  store %struct._GimpObject* %object, %struct._GimpObject** %object.addr, align 8
  store i64* %gui_size, i64** %gui_size.addr, align 8
  %0 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %1 = bitcast %struct._GimpObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_list_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpList*
  store %struct._GimpList* %2, %struct._GimpList** %list, align 8
  store i64 0, i64* %memsize, align 8
  %3 = load %struct._GimpList*, %struct._GimpList** %list, align 8
  %4 = bitcast %struct._GimpList* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_container_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpContainer*
  %call4 = call i32 @gimp_container_get_n_children(%struct._GimpContainer* %5)
  %conv = sext i32 %call4 to i64
  %mul = mul i64 %conv, 24
  %6 = load i64, i64* %memsize, align 8
  %add = add i64 %6, %mul
  store i64 %add, i64* %memsize, align 8
  %7 = load %struct._GimpList*, %struct._GimpList** %list, align 8
  %8 = bitcast %struct._GimpList* %7 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_container_get_type() #6
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call5)
  %9 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpContainer*
  %call7 = call i32 @gimp_container_get_policy(%struct._GimpContainer* %9)
  %cmp = icmp eq i32 %call7, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = load %struct._GimpList*, %struct._GimpList** %list, align 8
  %list9 = getelementptr inbounds %struct._GimpList, %struct._GimpList* %10, i32 0, i32 1
  %11 = load %struct._GList*, %struct._GList** %list9, align 8
  store %struct._GList* %11, %struct._GList** %glist, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %if.then
  %12 = load %struct._GList*, %struct._GList** %glist, align 8
  %tobool = icmp ne %struct._GList* %12, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load %struct._GList*, %struct._GList** %glist, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %13, i32 0, i32 0
  %14 = load i8*, i8** %data, align 8
  %15 = bitcast i8* %14 to %struct._GTypeInstance*
  %call10 = call i64 @gimp_object_get_type() #6
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call10)
  %16 = bitcast %struct._GTypeInstance* %call11 to %struct._GimpObject*
  %17 = load i64*, i64** %gui_size.addr, align 8
  %call12 = call i64 @gimp_object_get_memsize(%struct._GimpObject* %16, i64* %17)
  %18 = load i64, i64* %memsize, align 8
  %add13 = add nsw i64 %18, %call12
  store i64 %add13, i64* %memsize, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %19 = load %struct._GList*, %struct._GList** %glist, align 8
  %tobool14 = icmp ne %struct._GList* %19, null
  br i1 %tobool14, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %20 = load %struct._GList*, %struct._GList** %glist, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %20, i32 0, i32 1
  %21 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %21, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %glist, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  %22 = load i64, i64* %memsize, align 8
  %23 = load i8*, i8** @gimp_list_parent_class, align 8
  %24 = bitcast i8* %23 to %struct._GTypeClass*
  %call15 = call i64 @gimp_object_get_type() #6
  %call16 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %24, i64 %call15)
  %25 = bitcast %struct._GTypeClass* %call16 to %struct._GimpObjectClass*
  %get_memsize = getelementptr inbounds %struct._GimpObjectClass, %struct._GimpObjectClass* %25, i32 0, i32 3
  %26 = load i64 (%struct._GimpObject*, i64*)*, i64 (%struct._GimpObject*, i64*)** %get_memsize, align 8
  %27 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %28 = load i64*, i64** %gui_size.addr, align 8
  %call17 = call i64 %26(%struct._GimpObject* %27, i64* %28)
  %add18 = add nsw i64 %22, %call17
  ret i64 %add18
}

; Function Attrs: nounwind uwtable
define internal void @gimp_list_add(%struct._GimpContainer* %container, %struct._GimpObject* %object) #3 {
entry:
  %container.addr = alloca %struct._GimpContainer*, align 8
  %object.addr = alloca %struct._GimpObject*, align 8
  %list = alloca %struct._GimpList*, align 8
  store %struct._GimpContainer* %container, %struct._GimpContainer** %container.addr, align 8
  store %struct._GimpObject* %object, %struct._GimpObject** %object.addr, align 8
  %0 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %1 = bitcast %struct._GimpContainer* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_list_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpList*
  store %struct._GimpList* %2, %struct._GimpList** %list, align 8
  %3 = load %struct._GimpList*, %struct._GimpList** %list, align 8
  %unique_names = getelementptr inbounds %struct._GimpList, %struct._GimpList* %3, i32 0, i32 2
  %4 = load i32, i32* %unique_names, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpList*, %struct._GimpList** %list, align 8
  %6 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  call void @gimp_list_uniquefy_name(%struct._GimpList* %5, %struct._GimpObject* %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct._GimpList*, %struct._GimpList** %list, align 8
  %unique_names2 = getelementptr inbounds %struct._GimpList, %struct._GimpList* %7, i32 0, i32 2
  %8 = load i32, i32* %unique_names2, align 4
  %tobool3 = icmp ne i32 %8, 0
  br i1 %tobool3, label %if.then.5, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %9 = load %struct._GimpList*, %struct._GimpList** %list, align 8
  %sort_func = getelementptr inbounds %struct._GimpList, %struct._GimpList* %9, i32 0, i32 3
  %10 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %sort_func, align 8
  %tobool4 = icmp ne i32 (i8*, i8*)* %10, null
  br i1 %tobool4, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %lor.lhs.false, %if.end
  %11 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %12 = bitcast %struct._GimpObject* %11 to i8*
  %13 = load %struct._GimpList*, %struct._GimpList** %list, align 8
  %14 = bitcast %struct._GimpList* %13 to i8*
  %call6 = call i64 @g_signal_connect_data(i8* %12, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0), void ()* bitcast (void (%struct._GimpObject*, %struct._GimpList*)* @gimp_list_object_renamed to void ()*), i8* %14, void (i8*, %struct._GClosure*)* null, i32 0)
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.5, %lor.lhs.false
  %15 = load %struct._GimpList*, %struct._GimpList** %list, align 8
  %sort_func8 = getelementptr inbounds %struct._GimpList, %struct._GimpList* %15, i32 0, i32 3
  %16 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %sort_func8, align 8
  %tobool9 = icmp ne i32 (i8*, i8*)* %16, null
  br i1 %tobool9, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %if.end.7
  %17 = load %struct._GimpList*, %struct._GimpList** %list, align 8
  %list11 = getelementptr inbounds %struct._GimpList, %struct._GimpList* %17, i32 0, i32 1
  %18 = load %struct._GList*, %struct._GList** %list11, align 8
  %19 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %20 = bitcast %struct._GimpObject* %19 to i8*
  %21 = load %struct._GimpList*, %struct._GimpList** %list, align 8
  %sort_func12 = getelementptr inbounds %struct._GimpList, %struct._GimpList* %21, i32 0, i32 3
  %22 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %sort_func12, align 8
  %call13 = call %struct._GList* @g_list_insert_sorted(%struct._GList* %18, i8* %20, i32 (i8*, i8*)* %22)
  %23 = load %struct._GimpList*, %struct._GimpList** %list, align 8
  %list14 = getelementptr inbounds %struct._GimpList, %struct._GimpList* %23, i32 0, i32 1
  store %struct._GList* %call13, %struct._GList** %list14, align 8
  br label %if.end.25

if.else:                                          ; preds = %if.end.7
  %24 = load %struct._GimpList*, %struct._GimpList** %list, align 8
  %append = getelementptr inbounds %struct._GimpList, %struct._GimpList* %24, i32 0, i32 4
  %25 = load i32, i32* %append, align 4
  %tobool15 = icmp ne i32 %25, 0
  br i1 %tobool15, label %if.then.16, label %if.else.20

if.then.16:                                       ; preds = %if.else
  %26 = load %struct._GimpList*, %struct._GimpList** %list, align 8
  %list17 = getelementptr inbounds %struct._GimpList, %struct._GimpList* %26, i32 0, i32 1
  %27 = load %struct._GList*, %struct._GList** %list17, align 8
  %28 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %29 = bitcast %struct._GimpObject* %28 to i8*
  %call18 = call %struct._GList* @g_list_append(%struct._GList* %27, i8* %29)
  %30 = load %struct._GimpList*, %struct._GimpList** %list, align 8
  %list19 = getelementptr inbounds %struct._GimpList, %struct._GimpList* %30, i32 0, i32 1
  store %struct._GList* %call18, %struct._GList** %list19, align 8
  br label %if.end.24

if.else.20:                                       ; preds = %if.else
  %31 = load %struct._GimpList*, %struct._GimpList** %list, align 8
  %list21 = getelementptr inbounds %struct._GimpList, %struct._GimpList* %31, i32 0, i32 1
  %32 = load %struct._GList*, %struct._GList** %list21, align 8
  %33 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %34 = bitcast %struct._GimpObject* %33 to i8*
  %call22 = call %struct._GList* @g_list_prepend(%struct._GList* %32, i8* %34)
  %35 = load %struct._GimpList*, %struct._GimpList** %list, align 8
  %list23 = getelementptr inbounds %struct._GimpList, %struct._GimpList* %35, i32 0, i32 1
  store %struct._GList* %call22, %struct._GList** %list23, align 8
  br label %if.end.24

if.end.24:                                        ; preds = %if.else.20, %if.then.16
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %if.then.10
  %36 = load i8*, i8** @gimp_list_parent_class, align 8
  %37 = bitcast i8* %36 to %struct._GTypeClass*
  %call26 = call i64 @gimp_container_get_type() #6
  %call27 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %37, i64 %call26)
  %38 = bitcast %struct._GTypeClass* %call27 to %struct._GimpContainerClass*
  %add = getelementptr inbounds %struct._GimpContainerClass, %struct._GimpContainerClass* %38, i32 0, i32 1
  %39 = load void (%struct._GimpContainer*, %struct._GimpObject*)*, void (%struct._GimpContainer*, %struct._GimpObject*)** %add, align 8
  %40 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %41 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  call void %39(%struct._GimpContainer* %40, %struct._GimpObject* %41)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_list_remove(%struct._GimpContainer* %container, %struct._GimpObject* %object) #3 {
entry:
  %container.addr = alloca %struct._GimpContainer*, align 8
  %object.addr = alloca %struct._GimpObject*, align 8
  %list = alloca %struct._GimpList*, align 8
  store %struct._GimpContainer* %container, %struct._GimpContainer** %container.addr, align 8
  store %struct._GimpObject* %object, %struct._GimpObject** %object.addr, align 8
  %0 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %1 = bitcast %struct._GimpContainer* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_list_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpList*
  store %struct._GimpList* %2, %struct._GimpList** %list, align 8
  %3 = load %struct._GimpList*, %struct._GimpList** %list, align 8
  %unique_names = getelementptr inbounds %struct._GimpList, %struct._GimpList* %3, i32 0, i32 2
  %4 = load i32, i32* %unique_names, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %5 = load %struct._GimpList*, %struct._GimpList** %list, align 8
  %sort_func = getelementptr inbounds %struct._GimpList, %struct._GimpList* %5, i32 0, i32 3
  %6 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %sort_func, align 8
  %tobool2 = icmp ne i32 (i8*, i8*)* %6, null
  br i1 %tobool2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %7 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %8 = bitcast %struct._GimpObject* %7 to i8*
  %9 = load %struct._GimpList*, %struct._GimpList** %list, align 8
  %10 = bitcast %struct._GimpList* %9 to i8*
  %call3 = call i32 @g_signal_handlers_disconnect_matched(i8* %8, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpObject*, %struct._GimpList*)* @gimp_list_object_renamed to i8*), i8* %10)
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %11 = load %struct._GimpList*, %struct._GimpList** %list, align 8
  %list4 = getelementptr inbounds %struct._GimpList, %struct._GimpList* %11, i32 0, i32 1
  %12 = load %struct._GList*, %struct._GList** %list4, align 8
  %13 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %14 = bitcast %struct._GimpObject* %13 to i8*
  %call5 = call %struct._GList* @g_list_remove(%struct._GList* %12, i8* %14)
  %15 = load %struct._GimpList*, %struct._GimpList** %list, align 8
  %list6 = getelementptr inbounds %struct._GimpList, %struct._GimpList* %15, i32 0, i32 1
  store %struct._GList* %call5, %struct._GList** %list6, align 8
  %16 = load i8*, i8** @gimp_list_parent_class, align 8
  %17 = bitcast i8* %16 to %struct._GTypeClass*
  %call7 = call i64 @gimp_container_get_type() #6
  %call8 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %17, i64 %call7)
  %18 = bitcast %struct._GTypeClass* %call8 to %struct._GimpContainerClass*
  %remove = getelementptr inbounds %struct._GimpContainerClass, %struct._GimpContainerClass* %18, i32 0, i32 2
  %19 = load void (%struct._GimpContainer*, %struct._GimpObject*)*, void (%struct._GimpContainer*, %struct._GimpObject*)** %remove, align 8
  %20 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %21 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  call void %19(%struct._GimpContainer* %20, %struct._GimpObject* %21)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_list_reorder(%struct._GimpContainer* %container, %struct._GimpObject* %object, i32 %new_index) #3 {
entry:
  %container.addr = alloca %struct._GimpContainer*, align 8
  %object.addr = alloca %struct._GimpObject*, align 8
  %new_index.addr = alloca i32, align 4
  %list = alloca %struct._GimpList*, align 8
  store %struct._GimpContainer* %container, %struct._GimpContainer** %container.addr, align 8
  store %struct._GimpObject* %object, %struct._GimpObject** %object.addr, align 8
  store i32 %new_index, i32* %new_index.addr, align 4
  %0 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %1 = bitcast %struct._GimpContainer* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_list_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpList*
  store %struct._GimpList* %2, %struct._GimpList** %list, align 8
  %3 = load %struct._GimpList*, %struct._GimpList** %list, align 8
  %list2 = getelementptr inbounds %struct._GimpList, %struct._GimpList* %3, i32 0, i32 1
  %4 = load %struct._GList*, %struct._GList** %list2, align 8
  %5 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %6 = bitcast %struct._GimpObject* %5 to i8*
  %call3 = call %struct._GList* @g_list_remove(%struct._GList* %4, i8* %6)
  %7 = load %struct._GimpList*, %struct._GimpList** %list, align 8
  %list4 = getelementptr inbounds %struct._GimpList, %struct._GimpList* %7, i32 0, i32 1
  store %struct._GList* %call3, %struct._GList** %list4, align 8
  %8 = load i32, i32* %new_index.addr, align 4
  %cmp = icmp eq i32 %8, -1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %9 = load i32, i32* %new_index.addr, align 4
  %10 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %call5 = call i32 @gimp_container_get_n_children(%struct._GimpContainer* %10)
  %sub = sub nsw i32 %call5, 1
  %cmp6 = icmp eq i32 %9, %sub
  br i1 %cmp6, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %11 = load %struct._GimpList*, %struct._GimpList** %list, align 8
  %list7 = getelementptr inbounds %struct._GimpList, %struct._GimpList* %11, i32 0, i32 1
  %12 = load %struct._GList*, %struct._GList** %list7, align 8
  %13 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %14 = bitcast %struct._GimpObject* %13 to i8*
  %call8 = call %struct._GList* @g_list_append(%struct._GList* %12, i8* %14)
  %15 = load %struct._GimpList*, %struct._GimpList** %list, align 8
  %list9 = getelementptr inbounds %struct._GimpList, %struct._GimpList* %15, i32 0, i32 1
  store %struct._GList* %call8, %struct._GList** %list9, align 8
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  %16 = load %struct._GimpList*, %struct._GimpList** %list, align 8
  %list10 = getelementptr inbounds %struct._GimpList, %struct._GimpList* %16, i32 0, i32 1
  %17 = load %struct._GList*, %struct._GList** %list10, align 8
  %18 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %19 = bitcast %struct._GimpObject* %18 to i8*
  %20 = load i32, i32* %new_index.addr, align 4
  %call11 = call %struct._GList* @g_list_insert(%struct._GList* %17, i8* %19, i32 %20)
  %21 = load %struct._GimpList*, %struct._GimpList** %list, align 8
  %list12 = getelementptr inbounds %struct._GimpList, %struct._GimpList* %21, i32 0, i32 1
  store %struct._GList* %call11, %struct._GList** %list12, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_list_clear(%struct._GimpContainer* %container) #3 {
entry:
  %container.addr = alloca %struct._GimpContainer*, align 8
  %list = alloca %struct._GimpList*, align 8
  store %struct._GimpContainer* %container, %struct._GimpContainer** %container.addr, align 8
  %0 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %1 = bitcast %struct._GimpContainer* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_list_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpList*
  store %struct._GimpList* %2, %struct._GimpList** %list, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %3 = load %struct._GimpList*, %struct._GimpList** %list, align 8
  %list2 = getelementptr inbounds %struct._GimpList, %struct._GimpList* %3, i32 0, i32 1
  %4 = load %struct._GList*, %struct._GList** %list2, align 8
  %tobool = icmp ne %struct._GList* %4, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %6 = load %struct._GimpList*, %struct._GimpList** %list, align 8
  %list3 = getelementptr inbounds %struct._GimpList, %struct._GimpList* %6, i32 0, i32 1
  %7 = load %struct._GList*, %struct._GList** %list3, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %7, i32 0, i32 0
  %8 = load i8*, i8** %data, align 8
  %9 = bitcast i8* %8 to %struct._GimpObject*
  %call4 = call i32 @gimp_container_remove(%struct._GimpContainer* %5, %struct._GimpObject* %9)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_list_have(%struct._GimpContainer* %container, %struct._GimpObject* %object) #3 {
entry:
  %container.addr = alloca %struct._GimpContainer*, align 8
  %object.addr = alloca %struct._GimpObject*, align 8
  %list = alloca %struct._GimpList*, align 8
  store %struct._GimpContainer* %container, %struct._GimpContainer** %container.addr, align 8
  store %struct._GimpObject* %object, %struct._GimpObject** %object.addr, align 8
  %0 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %1 = bitcast %struct._GimpContainer* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_list_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpList*
  store %struct._GimpList* %2, %struct._GimpList** %list, align 8
  %3 = load %struct._GimpList*, %struct._GimpList** %list, align 8
  %list2 = getelementptr inbounds %struct._GimpList, %struct._GimpList* %3, i32 0, i32 1
  %4 = load %struct._GList*, %struct._GList** %list2, align 8
  %5 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %6 = bitcast %struct._GimpObject* %5 to i8*
  %call3 = call %struct._GList* @g_list_find(%struct._GList* %4, i8* %6)
  %tobool = icmp ne %struct._GList* %call3, null
  %cond = select i1 %tobool, i32 1, i32 0
  ret i32 %cond
}

; Function Attrs: nounwind uwtable
define internal void @gimp_list_foreach(%struct._GimpContainer* %container, void (i8*, i8*)* %func, i8* %user_data) #3 {
entry:
  %container.addr = alloca %struct._GimpContainer*, align 8
  %func.addr = alloca void (i8*, i8*)*, align 8
  %user_data.addr = alloca i8*, align 8
  %list = alloca %struct._GimpList*, align 8
  store %struct._GimpContainer* %container, %struct._GimpContainer** %container.addr, align 8
  store void (i8*, i8*)* %func, void (i8*, i8*)** %func.addr, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  %0 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %1 = bitcast %struct._GimpContainer* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_list_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpList*
  store %struct._GimpList* %2, %struct._GimpList** %list, align 8
  %3 = load %struct._GimpList*, %struct._GimpList** %list, align 8
  %list2 = getelementptr inbounds %struct._GimpList, %struct._GimpList* %3, i32 0, i32 1
  %4 = load %struct._GList*, %struct._GList** %list2, align 8
  %5 = load void (i8*, i8*)*, void (i8*, i8*)** %func.addr, align 8
  %6 = load i8*, i8** %user_data.addr, align 8
  call void @g_list_foreach(%struct._GList* %4, void (i8*, i8*)* %5, i8* %6)
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._GimpObject* @gimp_list_get_child_by_name(%struct._GimpContainer* %container, i8* %name) #3 {
entry:
  %retval = alloca %struct._GimpObject*, align 8
  %container.addr = alloca %struct._GimpContainer*, align 8
  %name.addr = alloca i8*, align 8
  %list = alloca %struct._GimpList*, align 8
  %glist = alloca %struct._GList*, align 8
  %object = alloca %struct._GimpObject*, align 8
  store %struct._GimpContainer* %container, %struct._GimpContainer** %container.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  %0 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %1 = bitcast %struct._GimpContainer* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_list_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpList*
  store %struct._GimpList* %2, %struct._GimpList** %list, align 8
  %3 = load %struct._GimpList*, %struct._GimpList** %list, align 8
  %list2 = getelementptr inbounds %struct._GimpList, %struct._GimpList* %3, i32 0, i32 1
  %4 = load %struct._GList*, %struct._GList** %list2, align 8
  store %struct._GList* %4, %struct._GList** %glist, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %entry
  %5 = load %struct._GList*, %struct._GList** %glist, align 8
  %tobool = icmp ne %struct._GList* %5, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %struct._GList*, %struct._GList** %glist, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %6, i32 0, i32 0
  %7 = load i8*, i8** %data, align 8
  %8 = bitcast i8* %7 to %struct._GimpObject*
  store %struct._GimpObject* %8, %struct._GimpObject** %object, align 8
  %9 = load %struct._GimpObject*, %struct._GimpObject** %object, align 8
  %10 = bitcast %struct._GimpObject* %9 to i8*
  %call3 = call i8* @gimp_object_get_name(i8* %10)
  %11 = load i8*, i8** %name.addr, align 8
  %call4 = call i32 @strcmp(i8* %call3, i8* %11) #7
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  %12 = load %struct._GimpObject*, %struct._GimpObject** %object, align 8
  store %struct._GimpObject* %12, %struct._GimpObject** %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load %struct._GList*, %struct._GList** %glist, align 8
  %tobool6 = icmp ne %struct._GList* %13, null
  br i1 %tobool6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %14 = load %struct._GList*, %struct._GList** %glist, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %14, i32 0, i32 1
  %15 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %15, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %glist, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store %struct._GimpObject* null, %struct._GimpObject** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %16 = load %struct._GimpObject*, %struct._GimpObject** %retval
  ret %struct._GimpObject* %16
}

; Function Attrs: nounwind uwtable
define internal %struct._GimpObject* @gimp_list_get_child_by_index(%struct._GimpContainer* %container, i32 %index) #3 {
entry:
  %retval = alloca %struct._GimpObject*, align 8
  %container.addr = alloca %struct._GimpContainer*, align 8
  %index.addr = alloca i32, align 4
  %list = alloca %struct._GimpList*, align 8
  %glist = alloca %struct._GList*, align 8
  store %struct._GimpContainer* %container, %struct._GimpContainer** %container.addr, align 8
  store i32 %index, i32* %index.addr, align 4
  %0 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %1 = bitcast %struct._GimpContainer* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_list_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpList*
  store %struct._GimpList* %2, %struct._GimpList** %list, align 8
  %3 = load %struct._GimpList*, %struct._GimpList** %list, align 8
  %list2 = getelementptr inbounds %struct._GimpList, %struct._GimpList* %3, i32 0, i32 1
  %4 = load %struct._GList*, %struct._GList** %list2, align 8
  %5 = load i32, i32* %index.addr, align 4
  %call3 = call %struct._GList* @g_list_nth(%struct._GList* %4, i32 %5)
  store %struct._GList* %call3, %struct._GList** %glist, align 8
  %6 = load %struct._GList*, %struct._GList** %glist, align 8
  %tobool = icmp ne %struct._GList* %6, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct._GList*, %struct._GList** %glist, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %7, i32 0, i32 0
  %8 = load i8*, i8** %data, align 8
  %9 = bitcast i8* %8 to %struct._GimpObject*
  store %struct._GimpObject* %9, %struct._GimpObject** %retval
  br label %return

if.end:                                           ; preds = %entry
  store %struct._GimpObject* null, %struct._GimpObject** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %10 = load %struct._GimpObject*, %struct._GimpObject** %retval
  ret %struct._GimpObject* %10
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_list_get_child_index(%struct._GimpContainer* %container, %struct._GimpObject* %object) #3 {
entry:
  %container.addr = alloca %struct._GimpContainer*, align 8
  %object.addr = alloca %struct._GimpObject*, align 8
  %list = alloca %struct._GimpList*, align 8
  store %struct._GimpContainer* %container, %struct._GimpContainer** %container.addr, align 8
  store %struct._GimpObject* %object, %struct._GimpObject** %object.addr, align 8
  %0 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %1 = bitcast %struct._GimpContainer* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_list_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpList*
  store %struct._GimpList* %2, %struct._GimpList** %list, align 8
  %3 = load %struct._GimpList*, %struct._GimpList** %list, align 8
  %list2 = getelementptr inbounds %struct._GimpList, %struct._GimpList* %3, i32 0, i32 1
  %4 = load %struct._GList*, %struct._GList** %list2, align 8
  %5 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %6 = bitcast %struct._GimpObject* %5 to i8*
  %call3 = call i32 @g_list_index(%struct._GList* %4, i8* %6)
  ret i32 %call3
}

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_boolean(i8*, i8*, i8*, i32, i32) #1

declare %struct._GParamSpec* @g_param_spec_pointer(i8*, i8*, i8*, i32) #1

declare i32 @g_value_get_boolean(%struct._GValue*) #1

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

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

declare void @g_value_set_boolean(%struct._GValue*, i32) #1

declare void @g_value_set_pointer(%struct._GValue*, i8*) #1

declare i32 @gimp_container_get_policy(%struct._GimpContainer*) #1

declare i64 @gimp_object_get_memsize(%struct._GimpObject*, i64*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_list_uniquefy_name(%struct._GimpList* %gimp_list, %struct._GimpObject* %object) #3 {
entry:
  %gimp_list.addr = alloca %struct._GimpList*, align 8
  %object.addr = alloca %struct._GimpObject*, align 8
  %name = alloca i8*, align 8
  %list = alloca %struct._GList*, align 8
  %object2 = alloca %struct._GimpObject*, align 8
  %name2 = alloca i8*, align 8
  %ext = alloca i8*, align 8
  %new_name = alloca i8*, align 8
  %unique_ext = alloca i32, align 4
  %ext_str = alloca [8 x i8], align 1
  %object238 = alloca %struct._GimpObject*, align 8
  %name240 = alloca i8*, align 8
  store %struct._GimpList* %gimp_list, %struct._GimpList** %gimp_list.addr, align 8
  store %struct._GimpObject* %object, %struct._GimpObject** %object.addr, align 8
  %0 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %1 = bitcast %struct._GimpObject* %0 to i8*
  %call = call i8* @gimp_object_get_name(i8* %1)
  store i8* %call, i8** %name, align 8
  %2 = load i8*, i8** %name, align 8
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.60

if.end:                                           ; preds = %entry
  %3 = load %struct._GimpList*, %struct._GimpList** %gimp_list.addr, align 8
  %list1 = getelementptr inbounds %struct._GimpList, %struct._GimpList* %3, i32 0, i32 1
  %4 = load %struct._GList*, %struct._GList** %list1, align 8
  store %struct._GList* %4, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %if.end
  %5 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool2 = icmp ne %struct._GList* %5, null
  br i1 %tobool2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %6, i32 0, i32 0
  %7 = load i8*, i8** %data, align 8
  %8 = bitcast i8* %7 to %struct._GimpObject*
  store %struct._GimpObject* %8, %struct._GimpObject** %object2, align 8
  %9 = load %struct._GimpObject*, %struct._GimpObject** %object2, align 8
  %10 = bitcast %struct._GimpObject* %9 to i8*
  %call3 = call i8* @gimp_object_get_name(i8* %10)
  store i8* %call3, i8** %name2, align 8
  %11 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %12 = load %struct._GimpObject*, %struct._GimpObject** %object2, align 8
  %cmp = icmp ne %struct._GimpObject* %11, %12
  br i1 %cmp, label %land.lhs.true, label %if.end.9

land.lhs.true:                                    ; preds = %for.body
  %13 = load i8*, i8** %name2, align 8
  %tobool4 = icmp ne i8* %13, null
  br i1 %tobool4, label %land.lhs.true.5, label %if.end.9

land.lhs.true.5:                                  ; preds = %land.lhs.true
  %14 = load i8*, i8** %name, align 8
  %15 = load i8*, i8** %name2, align 8
  %call6 = call i32 @strcmp(i8* %14, i8* %15) #7
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.end.9, label %if.then.8

if.then.8:                                        ; preds = %land.lhs.true.5
  br label %for.end

if.end.9:                                         ; preds = %land.lhs.true.5, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.9
  %16 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool10 = icmp ne %struct._GList* %16, null
  br i1 %tobool10, label %cond.true, label %cond.false

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

for.end:                                          ; preds = %if.then.8, %for.cond
  %19 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool11 = icmp ne %struct._GList* %19, null
  br i1 %tobool11, label %if.then.12, label %if.end.60

if.then.12:                                       ; preds = %for.end
  store i8* null, i8** %new_name, align 8
  store i32 0, i32* %unique_ext, align 4
  %20 = load i8*, i8** %name, align 8
  %call13 = call noalias i8* @g_strdup(i8* %20)
  store i8* %call13, i8** %name, align 8
  %21 = load i8*, i8** %name, align 8
  %call14 = call i8* @strrchr(i8* %21, i32 35) #7
  store i8* %call14, i8** %ext, align 8
  %22 = load i8*, i8** %ext, align 8
  %tobool15 = icmp ne i8* %22, null
  br i1 %tobool15, label %if.then.16, label %if.end.32

if.then.16:                                       ; preds = %if.then.12
  %23 = load i8*, i8** %ext, align 8
  %add.ptr = getelementptr inbounds i8, i8* %23, i64 1
  %call17 = call i32 @atoi(i8* %add.ptr) #7
  store i32 %call17, i32* %unique_ext, align 4
  %arraydecay = getelementptr inbounds [8 x i8], [8 x i8]* %ext_str, i32 0, i32 0
  %24 = load i32, i32* %unique_ext, align 4
  %call18 = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* %arraydecay, i64 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i32 0, i32 0), i32 %24)
  %arraydecay19 = getelementptr inbounds [8 x i8], [8 x i8]* %ext_str, i32 0, i32 0
  %25 = load i8*, i8** %ext, align 8
  %add.ptr20 = getelementptr inbounds i8, i8* %25, i64 1
  %call21 = call i32 @strcmp(i8* %arraydecay19, i8* %add.ptr20) #7
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.else, label %if.then.23

if.then.23:                                       ; preds = %if.then.16
  %26 = load i8*, i8** %ext, align 8
  %27 = load i8*, i8** %name, align 8
  %cmp24 = icmp ugt i8* %26, %27
  br i1 %cmp24, label %land.lhs.true.25, label %if.end.30

land.lhs.true.25:                                 ; preds = %if.then.23
  %28 = load i8*, i8** %ext, align 8
  %add.ptr26 = getelementptr inbounds i8, i8* %28, i64 -1
  %29 = load i8, i8* %add.ptr26, align 1
  %conv = sext i8 %29 to i32
  %cmp27 = icmp eq i32 %conv, 32
  br i1 %cmp27, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %land.lhs.true.25
  %30 = load i8*, i8** %ext, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %30, i32 -1
  store i8* %incdec.ptr, i8** %ext, align 8
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.29, %land.lhs.true.25, %if.then.23
  %31 = load i8*, i8** %ext, align 8
  store i8 0, i8* %31, align 1
  br label %if.end.31

if.else:                                          ; preds = %if.then.16
  store i32 0, i32* %unique_ext, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.else, %if.end.30
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.then.12
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end.32
  %32 = load i32, i32* %unique_ext, align 4
  %inc = add nsw i32 %32, 1
  store i32 %inc, i32* %unique_ext, align 4
  %33 = load i8*, i8** %new_name, align 8
  call void @g_free(i8* %33)
  %34 = load i8*, i8** %name, align 8
  %35 = load i32, i32* %unique_ext, align 4
  %call33 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i32 0, i32 0), i8* %34, i32 %35)
  store i8* %call33, i8** %new_name, align 8
  %36 = load %struct._GimpList*, %struct._GimpList** %gimp_list.addr, align 8
  %list34 = getelementptr inbounds %struct._GimpList, %struct._GimpList* %36, i32 0, i32 1
  %37 = load %struct._GList*, %struct._GList** %list34, align 8
  store %struct._GList* %37, %struct._GList** %list, align 8
  br label %for.cond.35

for.cond.35:                                      ; preds = %cond.end.56, %do.body
  %38 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool36 = icmp ne %struct._GList* %38, null
  br i1 %tobool36, label %for.body.37, label %for.end.58

for.body.37:                                      ; preds = %for.cond.35
  %39 = load %struct._GList*, %struct._GList** %list, align 8
  %data39 = getelementptr inbounds %struct._GList, %struct._GList* %39, i32 0, i32 0
  %40 = load i8*, i8** %data39, align 8
  %41 = bitcast i8* %40 to %struct._GimpObject*
  store %struct._GimpObject* %41, %struct._GimpObject** %object238, align 8
  %42 = load %struct._GimpObject*, %struct._GimpObject** %object238, align 8
  %43 = bitcast %struct._GimpObject* %42 to i8*
  %call41 = call i8* @gimp_object_get_name(i8* %43)
  store i8* %call41, i8** %name240, align 8
  %44 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %45 = load %struct._GimpObject*, %struct._GimpObject** %object238, align 8
  %cmp42 = icmp ne %struct._GimpObject* %44, %45
  br i1 %cmp42, label %land.lhs.true.44, label %if.end.50

land.lhs.true.44:                                 ; preds = %for.body.37
  %46 = load i8*, i8** %name240, align 8
  %tobool45 = icmp ne i8* %46, null
  br i1 %tobool45, label %land.lhs.true.46, label %if.end.50

land.lhs.true.46:                                 ; preds = %land.lhs.true.44
  %47 = load i8*, i8** %new_name, align 8
  %48 = load i8*, i8** %name240, align 8
  %call47 = call i32 @strcmp(i8* %47, i8* %48) #7
  %tobool48 = icmp ne i32 %call47, 0
  br i1 %tobool48, label %if.end.50, label %if.then.49

if.then.49:                                       ; preds = %land.lhs.true.46
  br label %for.end.58

if.end.50:                                        ; preds = %land.lhs.true.46, %land.lhs.true.44, %for.body.37
  br label %for.inc.51

for.inc.51:                                       ; preds = %if.end.50
  %49 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool52 = icmp ne %struct._GList* %49, null
  br i1 %tobool52, label %cond.true.53, label %cond.false.55

cond.true.53:                                     ; preds = %for.inc.51
  %50 = load %struct._GList*, %struct._GList** %list, align 8
  %next54 = getelementptr inbounds %struct._GList, %struct._GList* %50, i32 0, i32 1
  %51 = load %struct._GList*, %struct._GList** %next54, align 8
  br label %cond.end.56

cond.false.55:                                    ; preds = %for.inc.51
  br label %cond.end.56

cond.end.56:                                      ; preds = %cond.false.55, %cond.true.53
  %cond57 = phi %struct._GList* [ %51, %cond.true.53 ], [ null, %cond.false.55 ]
  store %struct._GList* %cond57, %struct._GList** %list, align 8
  br label %for.cond.35

for.end.58:                                       ; preds = %if.then.49, %for.cond.35
  br label %do.cond

do.cond:                                          ; preds = %for.end.58
  %52 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool59 = icmp ne %struct._GList* %52, null
  br i1 %tobool59, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %53 = load i8*, i8** %name, align 8
  call void @g_free(i8* %53)
  %54 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %55 = load i8*, i8** %new_name, align 8
  call void @gimp_object_take_name(%struct._GimpObject* %54, i8* %55)
  br label %if.end.60

if.end.60:                                        ; preds = %if.then, %do.end, %for.end
  ret void
}

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_list_object_renamed(%struct._GimpObject* %object, %struct._GimpList* %list) #3 {
entry:
  %object.addr = alloca %struct._GimpObject*, align 8
  %list.addr = alloca %struct._GimpList*, align 8
  %glist = alloca %struct._GList*, align 8
  %old_index = alloca i32, align 4
  %new_index = alloca i32, align 4
  %object2 = alloca %struct._GimpObject*, align 8
  store %struct._GimpObject* %object, %struct._GimpObject** %object.addr, align 8
  store %struct._GimpList* %list, %struct._GimpList** %list.addr, align 8
  %0 = load %struct._GimpList*, %struct._GimpList** %list.addr, align 8
  %unique_names = getelementptr inbounds %struct._GimpList, %struct._GimpList* %0, i32 0, i32 2
  %1 = load i32, i32* %unique_names, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %3 = bitcast %struct._GimpObject* %2 to i8*
  %4 = load %struct._GimpList*, %struct._GimpList** %list.addr, align 8
  %5 = bitcast %struct._GimpList* %4 to i8*
  %call = call i32 @g_signal_handlers_block_matched(i8* %3, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpObject*, %struct._GimpList*)* @gimp_list_object_renamed to i8*), i8* %5)
  %6 = load %struct._GimpList*, %struct._GimpList** %list.addr, align 8
  %7 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  call void @gimp_list_uniquefy_name(%struct._GimpList* %6, %struct._GimpObject* %7)
  %8 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %9 = bitcast %struct._GimpObject* %8 to i8*
  %10 = load %struct._GimpList*, %struct._GimpList** %list.addr, align 8
  %11 = bitcast %struct._GimpList* %10 to i8*
  %call1 = call i32 @g_signal_handlers_unblock_matched(i8* %9, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpObject*, %struct._GimpList*)* @gimp_list_object_renamed to i8*), i8* %11)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load %struct._GimpList*, %struct._GimpList** %list.addr, align 8
  %sort_func = getelementptr inbounds %struct._GimpList, %struct._GimpList* %12, i32 0, i32 3
  %13 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %sort_func, align 8
  %tobool2 = icmp ne i32 (i8*, i8*)* %13, null
  br i1 %tobool2, label %if.then.3, label %if.end.24

if.then.3:                                        ; preds = %if.end
  store i32 0, i32* %new_index, align 4
  %14 = load %struct._GimpList*, %struct._GimpList** %list.addr, align 8
  %list4 = getelementptr inbounds %struct._GimpList, %struct._GimpList* %14, i32 0, i32 1
  %15 = load %struct._GList*, %struct._GList** %list4, align 8
  %16 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %17 = bitcast %struct._GimpObject* %16 to i8*
  %call5 = call i32 @g_list_index(%struct._GList* %15, i8* %17)
  store i32 %call5, i32* %old_index, align 4
  %18 = load %struct._GimpList*, %struct._GimpList** %list.addr, align 8
  %list6 = getelementptr inbounds %struct._GimpList, %struct._GimpList* %18, i32 0, i32 1
  %19 = load %struct._GList*, %struct._GList** %list6, align 8
  store %struct._GList* %19, %struct._GList** %glist, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %if.then.3
  %20 = load %struct._GList*, %struct._GList** %glist, align 8
  %tobool7 = icmp ne %struct._GList* %20, null
  br i1 %tobool7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %21 = load %struct._GList*, %struct._GList** %glist, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %21, i32 0, i32 0
  %22 = load i8*, i8** %data, align 8
  %23 = bitcast i8* %22 to %struct._GTypeInstance*
  %call8 = call i64 @gimp_object_get_type() #6
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call8)
  %24 = bitcast %struct._GTypeInstance* %call9 to %struct._GimpObject*
  store %struct._GimpObject* %24, %struct._GimpObject** %object2, align 8
  %25 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %26 = load %struct._GimpObject*, %struct._GimpObject** %object2, align 8
  %cmp = icmp eq %struct._GimpObject* %25, %26
  br i1 %cmp, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %for.body
  br label %for.inc

if.end.11:                                        ; preds = %for.body
  %27 = load %struct._GimpList*, %struct._GimpList** %list.addr, align 8
  %sort_func12 = getelementptr inbounds %struct._GimpList, %struct._GimpList* %27, i32 0, i32 3
  %28 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %sort_func12, align 8
  %29 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %30 = bitcast %struct._GimpObject* %29 to i8*
  %31 = load %struct._GimpObject*, %struct._GimpObject** %object2, align 8
  %32 = bitcast %struct._GimpObject* %31 to i8*
  %call13 = call i32 %28(i8* %30, i8* %32)
  %cmp14 = icmp sgt i32 %call13, 0
  br i1 %cmp14, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %if.end.11
  %33 = load i32, i32* %new_index, align 4
  %inc = add nsw i32 %33, 1
  store i32 %inc, i32* %new_index, align 4
  br label %if.end.16

if.else:                                          ; preds = %if.end.11
  br label %for.end

if.end.16:                                        ; preds = %if.then.15
  br label %for.inc

for.inc:                                          ; preds = %if.end.16, %if.then.10
  %34 = load %struct._GList*, %struct._GList** %glist, align 8
  %tobool17 = icmp ne %struct._GList* %34, null
  br i1 %tobool17, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %35 = load %struct._GList*, %struct._GList** %glist, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %35, i32 0, i32 1
  %36 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %36, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %glist, align 8
  br label %for.cond

for.end:                                          ; preds = %if.else, %for.cond
  %37 = load i32, i32* %new_index, align 4
  %38 = load i32, i32* %old_index, align 4
  %cmp18 = icmp ne i32 %37, %38
  br i1 %cmp18, label %if.then.19, label %if.end.23

if.then.19:                                       ; preds = %for.end
  %39 = load %struct._GimpList*, %struct._GimpList** %list.addr, align 8
  %40 = bitcast %struct._GimpList* %39 to %struct._GTypeInstance*
  %call20 = call i64 @gimp_container_get_type() #6
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %40, i64 %call20)
  %41 = bitcast %struct._GTypeInstance* %call21 to %struct._GimpContainer*
  %42 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %43 = load i32, i32* %new_index, align 4
  %call22 = call i32 @gimp_container_reorder(%struct._GimpContainer* %41, %struct._GimpObject* %42, i32 %43)
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.19, %for.end
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %if.end
  ret void
}

declare %struct._GList* @g_list_insert_sorted(%struct._GList*, i8*, i32 (i8*, i8*)*) #1

declare %struct._GList* @g_list_append(%struct._GList*, i8*) #1

declare %struct._GList* @g_list_prepend(%struct._GList*, i8*) #1

declare i8* @gimp_object_get_name(i8*) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

declare noalias i8* @g_strdup(i8*) #1

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) #4

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #4

declare i32 @g_snprintf(i8*, i64, i8*, ...) #1

declare void @g_free(i8*) #1

declare noalias i8* @g_strdup_printf(i8*, ...) #1

declare void @gimp_object_take_name(%struct._GimpObject*, i8*) #1

declare i32 @g_signal_handlers_block_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

declare i32 @g_signal_handlers_unblock_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

declare i32 @g_list_index(%struct._GList*, i8*) #1

declare i32 @gimp_container_reorder(%struct._GimpContainer*, %struct._GimpObject*, i32) #1

declare i32 @g_signal_handlers_disconnect_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

declare %struct._GList* @g_list_remove(%struct._GList*, i8*) #1

declare %struct._GList* @g_list_insert(%struct._GList*, i8*, i32) #1

declare i32 @gimp_container_remove(%struct._GimpContainer*, %struct._GimpObject*) #1

declare %struct._GList* @g_list_find(%struct._GList*, i8*) #1

declare void @g_list_foreach(%struct._GList*, void (i8*, i8*)*, i8*) #1

declare %struct._GList* @g_list_nth(%struct._GList*, i32) #1

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
