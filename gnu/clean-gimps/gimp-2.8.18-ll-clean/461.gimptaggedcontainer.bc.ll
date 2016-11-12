; ModuleID = './app/core/gimptaggedcontainer.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpTaggedContainerClass = type { %struct._GimpFilteredContainerClass, void (%struct._GimpTaggedContainer*, i32)* }
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
%struct._GimpTaggedContainer = type { %struct._GimpFilteredContainer, %struct._GList*, %struct._GHashTable*, i32 }
%struct._GHashTable = type opaque
%struct._GimpTag = type { %struct._GObject, i32, i32, i32 }
%struct._GSignalInvocationHint = type { i32, i32, i32 }
%struct._GClosure = type { i32, {}*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, void (i8*, %struct._GClosure*)* }
%struct._GimpTagged = type opaque

@gimp_tagged_container_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"GimpTaggedContainer\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"Gimp-Core\00", align 1
@__func__.gimp_tagged_container_new = private unnamed_addr constant [26 x i8] c"gimp_tagged_container_new\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"GIMP_IS_LIST (src_container)\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"sort-func\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"children-type\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"policy\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"unique-names\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"src-container\00", align 1
@__func__.gimp_tagged_container_set_filter = private unnamed_addr constant [33 x i8] c"gimp_tagged_container_set_filter\00", align 1
@.str.8 = private unnamed_addr constant [44 x i8] c"GIMP_IS_TAGGED_CONTAINER (tagged_container)\00", align 1
@.str.9 = private unnamed_addr constant [47 x i8] c"list->data == NULL || GIMP_IS_TAG (list->data)\00", align 1
@__func__.gimp_tagged_container_get_filter = private unnamed_addr constant [33 x i8] c"gimp_tagged_container_get_filter\00", align 1
@__func__.gimp_tagged_container_get_tag_count = private unnamed_addr constant [36 x i8] c"gimp_tagged_container_get_tag_count\00", align 1
@.str.10 = private unnamed_addr constant [37 x i8] c"GIMP_IS_TAGGED_CONTAINER (container)\00", align 1
@gimp_tagged_container_parent_class = internal global i8* null, align 8
@GimpTaggedContainer_private_offset = internal global i32 0, align 4
@.str.11 = private unnamed_addr constant [18 x i8] c"tag-count-changed\00", align 1
@gimp_tagged_container_signals = internal global [1 x i32] zeroinitializer, align 4
@.str.12 = private unnamed_addr constant [10 x i8] c"tag-added\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"tag-removed\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_tagged_container_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_tagged_container_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_tagged_container_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_filtered_container_get_type() #5
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 288, void (i8*, i8*)* bitcast (void (i8*)* @gimp_tagged_container_class_intern_init to void (i8*, i8*)*), i32 120, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpTaggedContainer*)* @gimp_tagged_container_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_tagged_container_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_tagged_container_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_filtered_container_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_tagged_container_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_tagged_container_parent_class, align 8
  %1 = load i32, i32* @GimpTaggedContainer_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpTaggedContainer_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpTaggedContainerClass*
  call void @gimp_tagged_container_class_init(%struct._GimpTaggedContainerClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_tagged_container_init(%struct._GimpTaggedContainer* %tagged_container) #3 {
entry:
  %tagged_container.addr = alloca %struct._GimpTaggedContainer*, align 8
  store %struct._GimpTaggedContainer* %tagged_container, %struct._GimpTaggedContainer** %tagged_container.addr, align 8
  %call = call %struct._GHashTable* @g_hash_table_new(i32 (i8*)* bitcast (i32 (%struct._GimpTag*)* @gimp_tag_get_hash to i32 (i8*)*), i32 (i8*, i8*)* bitcast (i32 (%struct._GimpTag*, %struct._GimpTag*)* @gimp_tag_equals to i32 (i8*, i8*)*))
  %0 = load %struct._GimpTaggedContainer*, %struct._GimpTaggedContainer** %tagged_container.addr, align 8
  %tag_ref_counts = getelementptr inbounds %struct._GimpTaggedContainer, %struct._GimpTaggedContainer* %0, i32 0, i32 2
  store %struct._GHashTable* %call, %struct._GHashTable** %tag_ref_counts, align 8
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GimpContainer* @gimp_tagged_container_new(%struct._GimpContainer* %src_container) #3 {
entry:
  %retval = alloca %struct._GimpContainer*, align 8
  %src_container.addr = alloca %struct._GimpContainer*, align 8
  %tagged_container = alloca %struct._GimpTaggedContainer*, align 8
  %children_type = alloca i64, align 8
  %sort_func = alloca i32 (i8*, i8*)*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpContainer* %src_container, %struct._GimpContainer** %src_container.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContainer*, %struct._GimpContainer** %src_container.addr, align 8
  %1 = bitcast %struct._GimpContainer* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_list_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_tagged_container_new, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0))
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
  %call12 = call i64 @gimp_list_get_type() #5
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call12)
  %16 = bitcast %struct._GTypeInstance* %call13 to %struct._GimpList*
  %sort_func14 = getelementptr inbounds %struct._GimpList, %struct._GimpList* %16, i32 0, i32 3
  %17 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %sort_func14, align 8
  store i32 (i8*, i8*)* %17, i32 (i8*, i8*)** %sort_func, align 8
  %call15 = call i64 @gimp_tagged_container_get_type() #5
  %18 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %sort_func, align 8
  %19 = load i64, i64* %children_type, align 8
  %20 = load %struct._GimpContainer*, %struct._GimpContainer** %src_container.addr, align 8
  %call16 = call i8* (i64, i8*, ...) @g_object_new(i64 %call15, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i32 (i8*, i8*)* %18, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), i64 %19, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i32 0, i32 0), %struct._GimpContainer* %20, i8* null)
  %21 = bitcast i8* %call16 to %struct._GimpTaggedContainer*
  store %struct._GimpTaggedContainer* %21, %struct._GimpTaggedContainer** %tagged_container, align 8
  %22 = load %struct._GimpTaggedContainer*, %struct._GimpTaggedContainer** %tagged_container, align 8
  %23 = bitcast %struct._GimpTaggedContainer* %22 to %struct._GTypeInstance*
  %call17 = call i64 @gimp_container_get_type() #5
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call17)
  %24 = bitcast %struct._GTypeInstance* %call18 to %struct._GimpContainer*
  store %struct._GimpContainer* %24, %struct._GimpContainer** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %25 = load %struct._GimpContainer*, %struct._GimpContainer** %retval
  ret %struct._GimpContainer* %25
}

; Function Attrs: nounwind readnone
declare i64 @gimp_list_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare i64 @gimp_container_get_children_type(%struct._GimpContainer*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare i8* @g_object_new(i64, i8*, ...) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_container_get_type() #2

; Function Attrs: nounwind uwtable
define void @gimp_tagged_container_set_filter(%struct._GimpTaggedContainer* %tagged_container, %struct._GList* %tags) #3 {
entry:
  %tagged_container.addr = alloca %struct._GimpTaggedContainer*, align 8
  %tags.addr = alloca %struct._GList*, align 8
  %new_filter = alloca %struct._GList*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %list = alloca %struct._GList*, align 8
  %__inst18 = alloca %struct._GTypeInstance*, align 8
  %__t21 = alloca i64, align 8
  %__r24 = alloca i32, align 4
  %tmp39 = alloca i32, align 4
  store %struct._GimpTaggedContainer* %tagged_container, %struct._GimpTaggedContainer** %tagged_container.addr, align 8
  store %struct._GList* %tags, %struct._GList** %tags.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpTaggedContainer*, %struct._GimpTaggedContainer** %tagged_container.addr, align 8
  %1 = bitcast %struct._GimpTaggedContainer* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_tagged_container_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_tagged_container_set_filter, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end.65

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GList*, %struct._GList** %tags.addr, align 8
  %tobool11 = icmp ne %struct._GList* %13, null
  br i1 %tobool11, label %if.then.12, label %if.end.46

if.then.12:                                       ; preds = %do.end
  %14 = load %struct._GList*, %struct._GList** %tags.addr, align 8
  store %struct._GList* %14, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %if.then.12
  %15 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool14 = icmp ne %struct._GList* %15, null
  br i1 %tobool14, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %do.body.15

do.body.15:                                       ; preds = %for.body
  %16 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %16, i32 0, i32 0
  %17 = load i8*, i8** %data, align 8
  %cmp16 = icmp eq i8* %17, null
  br i1 %cmp16, label %if.then.41, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.15
  %18 = load %struct._GList*, %struct._GList** %list, align 8
  %data19 = getelementptr inbounds %struct._GList, %struct._GList* %18, i32 0, i32 0
  %19 = load i8*, i8** %data19, align 8
  %20 = bitcast i8* %19 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %20, %struct._GTypeInstance** %__inst18, align 8
  %call22 = call i64 @gimp_tag_get_type() #5
  store i64 %call22, i64* %__t21, align 8
  %21 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst18, align 8
  %tobool25 = icmp ne %struct._GTypeInstance* %21, null
  br i1 %tobool25, label %if.else.27, label %if.then.26

if.then.26:                                       ; preds = %lor.lhs.false
  store i32 0, i32* %__r24, align 4
  br label %if.end.38

if.else.27:                                       ; preds = %lor.lhs.false
  %22 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst18, align 8
  %g_class28 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %22, i32 0, i32 0
  %23 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class28, align 8
  %tobool29 = icmp ne %struct._GTypeClass* %23, null
  br i1 %tobool29, label %land.lhs.true.30, label %if.else.35

land.lhs.true.30:                                 ; preds = %if.else.27
  %24 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst18, align 8
  %g_class31 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %24, i32 0, i32 0
  %25 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class31, align 8
  %g_type32 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %25, i32 0, i32 0
  %26 = load i64, i64* %g_type32, align 8
  %27 = load i64, i64* %__t21, align 8
  %cmp33 = icmp eq i64 %26, %27
  br i1 %cmp33, label %if.then.34, label %if.else.35

if.then.34:                                       ; preds = %land.lhs.true.30
  store i32 1, i32* %__r24, align 4
  br label %if.end.37

if.else.35:                                       ; preds = %land.lhs.true.30, %if.else.27
  %28 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst18, align 8
  %29 = load i64, i64* %__t21, align 8
  %call36 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %28, i64 %29) #6
  store i32 %call36, i32* %__r24, align 4
  br label %if.end.37

if.end.37:                                        ; preds = %if.else.35, %if.then.34
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %if.then.26
  %30 = load i32, i32* %__r24, align 4
  store i32 %30, i32* %tmp39
  %31 = load i32, i32* %tmp39
  %tobool40 = icmp ne i32 %31, 0
  br i1 %tobool40, label %if.then.41, label %if.else.42

if.then.41:                                       ; preds = %if.end.38, %do.body.15
  br label %if.end.43

if.else.42:                                       ; preds = %if.end.38
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_tagged_container_set_filter, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.9, i32 0, i32 0))
  br label %if.end.65

if.end.43:                                        ; preds = %if.then.41
  br label %do.end.44

do.end.44:                                        ; preds = %if.end.43
  br label %for.inc

for.inc:                                          ; preds = %do.end.44
  %32 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool45 = icmp ne %struct._GList* %32, null
  br i1 %tobool45, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %33 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %33, i32 0, i32 1
  %34 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %34, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.46

if.end.46:                                        ; preds = %for.end, %do.end
  %35 = load %struct._GimpTaggedContainer*, %struct._GimpTaggedContainer** %tagged_container.addr, align 8
  %36 = bitcast %struct._GimpTaggedContainer* %35 to %struct._GTypeInstance*
  %call47 = call i64 @gimp_filtered_container_get_type() #5
  %call48 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %36, i64 %call47)
  %37 = bitcast %struct._GTypeInstance* %call48 to %struct._GimpFilteredContainer*
  %src_container = getelementptr inbounds %struct._GimpFilteredContainer, %struct._GimpFilteredContainer* %37, i32 0, i32 1
  %38 = load %struct._GimpContainer*, %struct._GimpContainer** %src_container, align 8
  %call49 = call i32 @gimp_container_frozen(%struct._GimpContainer* %38)
  %tobool50 = icmp ne i32 %call49, 0
  br i1 %tobool50, label %if.end.54, label %if.then.51

if.then.51:                                       ; preds = %if.end.46
  %39 = load %struct._GimpTaggedContainer*, %struct._GimpTaggedContainer** %tagged_container.addr, align 8
  %40 = bitcast %struct._GimpTaggedContainer* %39 to %struct._GTypeInstance*
  %call52 = call i64 @gimp_filtered_container_get_type() #5
  %call53 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %40, i64 %call52)
  %41 = bitcast %struct._GTypeInstance* %call53 to %struct._GimpFilteredContainer*
  call void @gimp_tagged_container_src_freeze(%struct._GimpFilteredContainer* %41)
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.51, %if.end.46
  %42 = load %struct._GList*, %struct._GList** %tags.addr, align 8
  %call55 = call %struct._GList* @g_list_copy(%struct._GList* %42)
  store %struct._GList* %call55, %struct._GList** %new_filter, align 8
  %43 = load %struct._GList*, %struct._GList** %new_filter, align 8
  call void @g_list_foreach(%struct._GList* %43, void (i8*, i8*)* bitcast (void (%struct._GimpTag*)* @gimp_tag_or_null_ref to void (i8*, i8*)*), i8* null)
  %44 = load %struct._GimpTaggedContainer*, %struct._GimpTaggedContainer** %tagged_container.addr, align 8
  %filter = getelementptr inbounds %struct._GimpTaggedContainer, %struct._GimpTaggedContainer* %44, i32 0, i32 1
  %45 = load %struct._GList*, %struct._GList** %filter, align 8
  call void @g_list_free_full(%struct._GList* %45, void (i8*)* bitcast (void (%struct._GimpTag*)* @gimp_tag_or_null_unref to void (i8*)*))
  %46 = load %struct._GList*, %struct._GList** %new_filter, align 8
  %47 = load %struct._GimpTaggedContainer*, %struct._GimpTaggedContainer** %tagged_container.addr, align 8
  %filter56 = getelementptr inbounds %struct._GimpTaggedContainer, %struct._GimpTaggedContainer* %47, i32 0, i32 1
  store %struct._GList* %46, %struct._GList** %filter56, align 8
  %48 = load %struct._GimpTaggedContainer*, %struct._GimpTaggedContainer** %tagged_container.addr, align 8
  %49 = bitcast %struct._GimpTaggedContainer* %48 to %struct._GTypeInstance*
  %call57 = call i64 @gimp_filtered_container_get_type() #5
  %call58 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %49, i64 %call57)
  %50 = bitcast %struct._GTypeInstance* %call58 to %struct._GimpFilteredContainer*
  %src_container59 = getelementptr inbounds %struct._GimpFilteredContainer, %struct._GimpFilteredContainer* %50, i32 0, i32 1
  %51 = load %struct._GimpContainer*, %struct._GimpContainer** %src_container59, align 8
  %call60 = call i32 @gimp_container_frozen(%struct._GimpContainer* %51)
  %tobool61 = icmp ne i32 %call60, 0
  br i1 %tobool61, label %if.end.65, label %if.then.62

if.then.62:                                       ; preds = %if.end.54
  %52 = load %struct._GimpTaggedContainer*, %struct._GimpTaggedContainer** %tagged_container.addr, align 8
  %53 = bitcast %struct._GimpTaggedContainer* %52 to %struct._GTypeInstance*
  %call63 = call i64 @gimp_filtered_container_get_type() #5
  %call64 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %53, i64 %call63)
  %54 = bitcast %struct._GTypeInstance* %call64 to %struct._GimpFilteredContainer*
  call void @gimp_tagged_container_src_thaw(%struct._GimpFilteredContainer* %54)
  br label %if.end.65

if.end.65:                                        ; preds = %if.else.9, %if.else.42, %if.then.62, %if.end.54
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_tag_get_type() #2

declare i32 @gimp_container_frozen(%struct._GimpContainer*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_tagged_container_src_freeze(%struct._GimpFilteredContainer* %filtered_container) #3 {
entry:
  %filtered_container.addr = alloca %struct._GimpFilteredContainer*, align 8
  store %struct._GimpFilteredContainer* %filtered_container, %struct._GimpFilteredContainer** %filtered_container.addr, align 8
  %0 = load %struct._GimpFilteredContainer*, %struct._GimpFilteredContainer** %filtered_container.addr, align 8
  %1 = bitcast %struct._GimpFilteredContainer* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_container_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpContainer*
  call void @gimp_container_clear(%struct._GimpContainer* %2)
  ret void
}

declare %struct._GList* @g_list_copy(%struct._GList*) #1

declare void @g_list_foreach(%struct._GList*, void (i8*, i8*)*, i8*) #1

declare void @gimp_tag_or_null_ref(%struct._GimpTag*) #1

declare void @g_list_free_full(%struct._GList*, void (i8*)*) #1

declare void @gimp_tag_or_null_unref(%struct._GimpTag*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_tagged_container_src_thaw(%struct._GimpFilteredContainer* %filtered_container) #3 {
entry:
  %filtered_container.addr = alloca %struct._GimpFilteredContainer*, align 8
  %list = alloca %struct._GList*, align 8
  store %struct._GimpFilteredContainer* %filtered_container, %struct._GimpFilteredContainer** %filtered_container.addr, align 8
  %0 = load %struct._GimpFilteredContainer*, %struct._GimpFilteredContainer** %filtered_container.addr, align 8
  %src_container = getelementptr inbounds %struct._GimpFilteredContainer, %struct._GimpFilteredContainer* %0, i32 0, i32 1
  %1 = load %struct._GimpContainer*, %struct._GimpContainer** %src_container, align 8
  %2 = bitcast %struct._GimpContainer* %1 to %struct._GTypeInstance*
  %call = call i64 @gimp_list_get_type() #5
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
  %6 = load %struct._GimpFilteredContainer*, %struct._GimpFilteredContainer** %filtered_container.addr, align 8
  %7 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %7, i32 0, i32 0
  %8 = load i8*, i8** %data, align 8
  %9 = bitcast i8* %8 to %struct._GimpObject*
  call void @gimp_tagged_container_src_add(%struct._GimpFilteredContainer* %6, %struct._GimpObject* %9)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool3 = icmp ne %struct._GList* %10, null
  br i1 %tobool3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %11 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %11, i32 0, i32 1
  %12 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %12, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._GList* @gimp_tagged_container_get_filter(%struct._GimpTaggedContainer* %tagged_container) #3 {
entry:
  %retval = alloca %struct._GList*, align 8
  %tagged_container.addr = alloca %struct._GimpTaggedContainer*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpTaggedContainer* %tagged_container, %struct._GimpTaggedContainer** %tagged_container.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpTaggedContainer*, %struct._GimpTaggedContainer** %tagged_container.addr, align 8
  %1 = bitcast %struct._GimpTaggedContainer* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_tagged_container_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_tagged_container_get_filter, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.8, i32 0, i32 0))
  store %struct._GList* null, %struct._GList** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpTaggedContainer*, %struct._GimpTaggedContainer** %tagged_container.addr, align 8
  %filter = getelementptr inbounds %struct._GimpTaggedContainer, %struct._GimpTaggedContainer* %13, i32 0, i32 1
  %14 = load %struct._GList*, %struct._GList** %filter, align 8
  store %struct._GList* %14, %struct._GList** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %15 = load %struct._GList*, %struct._GList** %retval
  ret %struct._GList* %15
}

; Function Attrs: nounwind uwtable
define i32 @gimp_tagged_container_get_tag_count(%struct._GimpTaggedContainer* %container) #3 {
entry:
  %retval = alloca i32, align 4
  %container.addr = alloca %struct._GimpTaggedContainer*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpTaggedContainer* %container, %struct._GimpTaggedContainer** %container.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpTaggedContainer*, %struct._GimpTaggedContainer** %container.addr, align 8
  %1 = bitcast %struct._GimpTaggedContainer* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_tagged_container_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.gimp_tagged_container_get_tag_count, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpTaggedContainer*, %struct._GimpTaggedContainer** %container.addr, align 8
  %tag_count = getelementptr inbounds %struct._GimpTaggedContainer, %struct._GimpTaggedContainer* %13, i32 0, i32 3
  %14 = load i32, i32* %tag_count, align 4
  store i32 %14, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %15 = load i32, i32* %retval
  ret i32 %15
}

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_tagged_container_class_init(%struct._GimpTaggedContainerClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpTaggedContainerClass*, align 8
  %g_object_class = alloca %struct._GObjectClass*, align 8
  %gimp_object_class = alloca %struct._GimpObjectClass*, align 8
  %container_class = alloca %struct._GimpContainerClass*, align 8
  %filtered_class = alloca %struct._GimpFilteredContainerClass*, align 8
  store %struct._GimpTaggedContainerClass* %klass, %struct._GimpTaggedContainerClass** %klass.addr, align 8
  %0 = load %struct._GimpTaggedContainerClass*, %struct._GimpTaggedContainerClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpTaggedContainerClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %g_object_class, align 8
  %3 = load %struct._GimpTaggedContainerClass*, %struct._GimpTaggedContainerClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpTaggedContainerClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gimp_object_get_type() #5
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GimpObjectClass*
  store %struct._GimpObjectClass* %5, %struct._GimpObjectClass** %gimp_object_class, align 8
  %6 = load %struct._GimpTaggedContainerClass*, %struct._GimpTaggedContainerClass** %klass.addr, align 8
  %7 = bitcast %struct._GimpTaggedContainerClass* %6 to %struct._GTypeClass*
  %call3 = call i64 @gimp_container_get_type() #5
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %7, i64 %call3)
  %8 = bitcast %struct._GTypeClass* %call4 to %struct._GimpContainerClass*
  store %struct._GimpContainerClass* %8, %struct._GimpContainerClass** %container_class, align 8
  %9 = load %struct._GimpTaggedContainerClass*, %struct._GimpTaggedContainerClass** %klass.addr, align 8
  %10 = bitcast %struct._GimpTaggedContainerClass* %9 to %struct._GTypeClass*
  %call5 = call i64 @gimp_filtered_container_get_type() #5
  %call6 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %10, i64 %call5)
  %11 = bitcast %struct._GTypeClass* %call6 to %struct._GimpFilteredContainerClass*
  store %struct._GimpFilteredContainerClass* %11, %struct._GimpFilteredContainerClass** %filtered_class, align 8
  %12 = load %struct._GObjectClass*, %struct._GObjectClass** %g_object_class, align 8
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %12, i32 0, i32 5
  store void (%struct._GObject*)* @gimp_tagged_container_dispose, void (%struct._GObject*)** %dispose, align 8
  %13 = load %struct._GimpObjectClass*, %struct._GimpObjectClass** %gimp_object_class, align 8
  %get_memsize = getelementptr inbounds %struct._GimpObjectClass, %struct._GimpObjectClass* %13, i32 0, i32 3
  store i64 (%struct._GimpObject*, i64*)* @gimp_tagged_container_get_memsize, i64 (%struct._GimpObject*, i64*)** %get_memsize, align 8
  %14 = load %struct._GimpContainerClass*, %struct._GimpContainerClass** %container_class, align 8
  %clear = getelementptr inbounds %struct._GimpContainerClass, %struct._GimpContainerClass* %14, i32 0, i32 6
  store void (%struct._GimpContainer*)* @gimp_tagged_container_clear, void (%struct._GimpContainer*)** %clear, align 8
  %15 = load %struct._GimpFilteredContainerClass*, %struct._GimpFilteredContainerClass** %filtered_class, align 8
  %src_add = getelementptr inbounds %struct._GimpFilteredContainerClass, %struct._GimpFilteredContainerClass* %15, i32 0, i32 1
  store void (%struct._GimpFilteredContainer*, %struct._GimpObject*)* @gimp_tagged_container_src_add, void (%struct._GimpFilteredContainer*, %struct._GimpObject*)** %src_add, align 8
  %16 = load %struct._GimpFilteredContainerClass*, %struct._GimpFilteredContainerClass** %filtered_class, align 8
  %src_remove = getelementptr inbounds %struct._GimpFilteredContainerClass, %struct._GimpFilteredContainerClass* %16, i32 0, i32 2
  store void (%struct._GimpFilteredContainer*, %struct._GimpObject*)* @gimp_tagged_container_src_remove, void (%struct._GimpFilteredContainer*, %struct._GimpObject*)** %src_remove, align 8
  %17 = load %struct._GimpFilteredContainerClass*, %struct._GimpFilteredContainerClass** %filtered_class, align 8
  %src_freeze = getelementptr inbounds %struct._GimpFilteredContainerClass, %struct._GimpFilteredContainerClass* %17, i32 0, i32 3
  store void (%struct._GimpFilteredContainer*)* @gimp_tagged_container_src_freeze, void (%struct._GimpFilteredContainer*)** %src_freeze, align 8
  %18 = load %struct._GimpFilteredContainerClass*, %struct._GimpFilteredContainerClass** %filtered_class, align 8
  %src_thaw = getelementptr inbounds %struct._GimpFilteredContainerClass, %struct._GimpFilteredContainerClass* %18, i32 0, i32 4
  store void (%struct._GimpFilteredContainer*)* @gimp_tagged_container_src_thaw, void (%struct._GimpFilteredContainer*)** %src_thaw, align 8
  %19 = load %struct._GimpTaggedContainerClass*, %struct._GimpTaggedContainerClass** %klass.addr, align 8
  %tag_count_changed = getelementptr inbounds %struct._GimpTaggedContainerClass, %struct._GimpTaggedContainerClass* %19, i32 0, i32 1
  store void (%struct._GimpTaggedContainer*, i32)* @gimp_tagged_container_tag_count_changed, void (%struct._GimpTaggedContainer*, i32)** %tag_count_changed, align 8
  %call7 = call i64 @gimp_tagged_container_get_type() #5
  %call8 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i32 0, i32 0), i64 %call7, i32 2, i32 280, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @g_cclosure_marshal_VOID__INT, i64 4, i32 1, i64 24)
  store i32 %call8, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @gimp_tagged_container_signals, i32 0, i64 0), align 4
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_tagged_container_dispose(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %tagged_container = alloca %struct._GimpTaggedContainer*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tagged_container_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTaggedContainer*
  store %struct._GimpTaggedContainer* %2, %struct._GimpTaggedContainer** %tagged_container, align 8
  %3 = load %struct._GimpTaggedContainer*, %struct._GimpTaggedContainer** %tagged_container, align 8
  %filter = getelementptr inbounds %struct._GimpTaggedContainer, %struct._GimpTaggedContainer* %3, i32 0, i32 1
  %4 = load %struct._GList*, %struct._GList** %filter, align 8
  %tobool = icmp ne %struct._GList* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpTaggedContainer*, %struct._GimpTaggedContainer** %tagged_container, align 8
  %filter2 = getelementptr inbounds %struct._GimpTaggedContainer, %struct._GimpTaggedContainer* %5, i32 0, i32 1
  %6 = load %struct._GList*, %struct._GList** %filter2, align 8
  call void @g_list_free_full(%struct._GList* %6, void (i8*)* bitcast (void (%struct._GimpTag*)* @gimp_tag_or_null_unref to void (i8*)*))
  %7 = load %struct._GimpTaggedContainer*, %struct._GimpTaggedContainer** %tagged_container, align 8
  %filter3 = getelementptr inbounds %struct._GimpTaggedContainer, %struct._GimpTaggedContainer* %7, i32 0, i32 1
  store %struct._GList* null, %struct._GList** %filter3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct._GimpTaggedContainer*, %struct._GimpTaggedContainer** %tagged_container, align 8
  %tag_ref_counts = getelementptr inbounds %struct._GimpTaggedContainer, %struct._GimpTaggedContainer* %8, i32 0, i32 2
  %9 = load %struct._GHashTable*, %struct._GHashTable** %tag_ref_counts, align 8
  %tobool4 = icmp ne %struct._GHashTable* %9, null
  br i1 %tobool4, label %if.then.5, label %if.end.8

if.then.5:                                        ; preds = %if.end
  %10 = load %struct._GimpTaggedContainer*, %struct._GimpTaggedContainer** %tagged_container, align 8
  %tag_ref_counts6 = getelementptr inbounds %struct._GimpTaggedContainer, %struct._GimpTaggedContainer* %10, i32 0, i32 2
  %11 = load %struct._GHashTable*, %struct._GHashTable** %tag_ref_counts6, align 8
  call void @g_hash_table_unref(%struct._GHashTable* %11)
  %12 = load %struct._GimpTaggedContainer*, %struct._GimpTaggedContainer** %tagged_container, align 8
  %tag_ref_counts7 = getelementptr inbounds %struct._GimpTaggedContainer, %struct._GimpTaggedContainer* %12, i32 0, i32 2
  store %struct._GHashTable* null, %struct._GHashTable** %tag_ref_counts7, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.5, %if.end
  %13 = load i8*, i8** @gimp_tagged_container_parent_class, align 8
  %14 = bitcast i8* %13 to %struct._GTypeClass*
  %call9 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %14, i64 80)
  %15 = bitcast %struct._GTypeClass* %call9 to %struct._GObjectClass*
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %15, i32 0, i32 5
  %16 = load void (%struct._GObject*)*, void (%struct._GObject*)** %dispose, align 8
  %17 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %16(%struct._GObject* %17)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i64 @gimp_tagged_container_get_memsize(%struct._GimpObject* %object, i64* %gui_size) #3 {
entry:
  %object.addr = alloca %struct._GimpObject*, align 8
  %gui_size.addr = alloca i64*, align 8
  %memsize = alloca i64, align 8
  store %struct._GimpObject* %object, %struct._GimpObject** %object.addr, align 8
  store i64* %gui_size, i64** %gui_size.addr, align 8
  store i64 0, i64* %memsize, align 8
  %0 = load i64, i64* %memsize, align 8
  %1 = load i8*, i8** @gimp_tagged_container_parent_class, align 8
  %2 = bitcast i8* %1 to %struct._GTypeClass*
  %call = call i64 @gimp_object_get_type() #5
  %call1 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %2, i64 %call)
  %3 = bitcast %struct._GTypeClass* %call1 to %struct._GimpObjectClass*
  %get_memsize = getelementptr inbounds %struct._GimpObjectClass, %struct._GimpObjectClass* %3, i32 0, i32 3
  %4 = load i64 (%struct._GimpObject*, i64*)*, i64 (%struct._GimpObject*, i64*)** %get_memsize, align 8
  %5 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %6 = load i64*, i64** %gui_size.addr, align 8
  %call2 = call i64 %4(%struct._GimpObject* %5, i64* %6)
  %add = add nsw i64 %0, %call2
  ret i64 %add
}

; Function Attrs: nounwind uwtable
define internal void @gimp_tagged_container_clear(%struct._GimpContainer* %container) #3 {
entry:
  %container.addr = alloca %struct._GimpContainer*, align 8
  %filtered_container = alloca %struct._GimpFilteredContainer*, align 8
  %tagged_container = alloca %struct._GimpTaggedContainer*, align 8
  %list = alloca %struct._GList*, align 8
  store %struct._GimpContainer* %container, %struct._GimpContainer** %container.addr, align 8
  %0 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %1 = bitcast %struct._GimpContainer* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_filtered_container_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpFilteredContainer*
  store %struct._GimpFilteredContainer* %2, %struct._GimpFilteredContainer** %filtered_container, align 8
  %3 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %4 = bitcast %struct._GimpContainer* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_tagged_container_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpTaggedContainer*
  store %struct._GimpTaggedContainer* %5, %struct._GimpTaggedContainer** %tagged_container, align 8
  %6 = load %struct._GimpFilteredContainer*, %struct._GimpFilteredContainer** %filtered_container, align 8
  %src_container = getelementptr inbounds %struct._GimpFilteredContainer, %struct._GimpFilteredContainer* %6, i32 0, i32 1
  %7 = load %struct._GimpContainer*, %struct._GimpContainer** %src_container, align 8
  %8 = bitcast %struct._GimpContainer* %7 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_list_get_type() #5
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call4)
  %9 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpList*
  %list6 = getelementptr inbounds %struct._GimpList, %struct._GimpList* %9, i32 0, i32 1
  %10 = load %struct._GList*, %struct._GList** %list6, align 8
  store %struct._GList* %10, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %entry
  %11 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool = icmp ne %struct._GList* %11, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %12, i32 0, i32 0
  %13 = load i8*, i8** %data, align 8
  %14 = load %struct._GimpTaggedContainer*, %struct._GimpTaggedContainer** %tagged_container, align 8
  %15 = bitcast %struct._GimpTaggedContainer* %14 to i8*
  %call7 = call i32 @g_signal_handlers_disconnect_matched(i8* %13, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpTagged*, %struct._GimpTag*, %struct._GimpTaggedContainer*)* @gimp_tagged_container_tag_added to i8*), i8* %15)
  %16 = load %struct._GList*, %struct._GList** %list, align 8
  %data8 = getelementptr inbounds %struct._GList, %struct._GList* %16, i32 0, i32 0
  %17 = load i8*, i8** %data8, align 8
  %18 = load %struct._GimpTaggedContainer*, %struct._GimpTaggedContainer** %tagged_container, align 8
  %19 = bitcast %struct._GimpTaggedContainer* %18 to i8*
  %call9 = call i32 @g_signal_handlers_disconnect_matched(i8* %17, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpTagged*, %struct._GimpTag*, %struct._GimpTaggedContainer*)* @gimp_tagged_container_tag_removed to i8*), i8* %19)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %20 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool10 = icmp ne %struct._GList* %20, null
  br i1 %tobool10, label %cond.true, label %cond.false

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
  %23 = load %struct._GimpTaggedContainer*, %struct._GimpTaggedContainer** %tagged_container, align 8
  %tag_ref_counts = getelementptr inbounds %struct._GimpTaggedContainer, %struct._GimpTaggedContainer* %23, i32 0, i32 2
  %24 = load %struct._GHashTable*, %struct._GHashTable** %tag_ref_counts, align 8
  %tobool11 = icmp ne %struct._GHashTable* %24, null
  br i1 %tobool11, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %25 = load %struct._GimpTaggedContainer*, %struct._GimpTaggedContainer** %tagged_container, align 8
  %tag_ref_counts12 = getelementptr inbounds %struct._GimpTaggedContainer, %struct._GimpTaggedContainer* %25, i32 0, i32 2
  %26 = load %struct._GHashTable*, %struct._GHashTable** %tag_ref_counts12, align 8
  call void @g_hash_table_remove_all(%struct._GHashTable* %26)
  %27 = load %struct._GimpTaggedContainer*, %struct._GimpTaggedContainer** %tagged_container, align 8
  %tag_count = getelementptr inbounds %struct._GimpTaggedContainer, %struct._GimpTaggedContainer* %27, i32 0, i32 3
  store i32 0, i32* %tag_count, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  %28 = load i8*, i8** @gimp_tagged_container_parent_class, align 8
  %29 = bitcast i8* %28 to %struct._GTypeClass*
  %call13 = call i64 @gimp_container_get_type() #5
  %call14 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %29, i64 %call13)
  %30 = bitcast %struct._GTypeClass* %call14 to %struct._GimpContainerClass*
  %clear = getelementptr inbounds %struct._GimpContainerClass, %struct._GimpContainerClass* %30, i32 0, i32 6
  %31 = load void (%struct._GimpContainer*)*, void (%struct._GimpContainer*)** %clear, align 8
  %32 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  call void %31(%struct._GimpContainer* %32)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_tagged_container_src_add(%struct._GimpFilteredContainer* %filtered_container, %struct._GimpObject* %object) #3 {
entry:
  %filtered_container.addr = alloca %struct._GimpFilteredContainer*, align 8
  %object.addr = alloca %struct._GimpObject*, align 8
  %tagged_container = alloca %struct._GimpTaggedContainer*, align 8
  %list = alloca %struct._GList*, align 8
  store %struct._GimpFilteredContainer* %filtered_container, %struct._GimpFilteredContainer** %filtered_container.addr, align 8
  store %struct._GimpObject* %object, %struct._GimpObject** %object.addr, align 8
  %0 = load %struct._GimpFilteredContainer*, %struct._GimpFilteredContainer** %filtered_container.addr, align 8
  %1 = bitcast %struct._GimpFilteredContainer* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tagged_container_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTaggedContainer*
  store %struct._GimpTaggedContainer* %2, %struct._GimpTaggedContainer** %tagged_container, align 8
  %3 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %4 = bitcast %struct._GimpObject* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_tagged_interface_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpTagged*
  %call4 = call %struct._GList* @gimp_tagged_get_tags(%struct._GimpTagged* %5)
  store %struct._GList* %call4, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %entry
  %6 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool = icmp ne %struct._GList* %6, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load %struct._GimpTaggedContainer*, %struct._GimpTaggedContainer** %tagged_container, align 8
  %8 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %8, i32 0, i32 0
  %9 = load i8*, i8** %data, align 8
  %10 = bitcast i8* %9 to %struct._GimpTag*
  call void @gimp_tagged_container_ref_tag(%struct._GimpTaggedContainer* %7, %struct._GimpTag* %10)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool5 = icmp ne %struct._GList* %11, null
  br i1 %tobool5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %12 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %12, i32 0, i32 1
  %13 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %13, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %14 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %15 = bitcast %struct._GimpObject* %14 to i8*
  %16 = load %struct._GimpTaggedContainer*, %struct._GimpTaggedContainer** %tagged_container, align 8
  %17 = bitcast %struct._GimpTaggedContainer* %16 to i8*
  %call6 = call i64 @g_signal_connect_data(i8* %15, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0), void ()* bitcast (void (%struct._GimpTagged*, %struct._GimpTag*, %struct._GimpTaggedContainer*)* @gimp_tagged_container_tag_added to void ()*), i8* %17, void (i8*, %struct._GClosure*)* null, i32 0)
  %18 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %19 = bitcast %struct._GimpObject* %18 to i8*
  %20 = load %struct._GimpTaggedContainer*, %struct._GimpTaggedContainer** %tagged_container, align 8
  %21 = bitcast %struct._GimpTaggedContainer* %20 to i8*
  %call7 = call i64 @g_signal_connect_data(i8* %19, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i32 0, i32 0), void ()* bitcast (void (%struct._GimpTagged*, %struct._GimpTag*, %struct._GimpTaggedContainer*)* @gimp_tagged_container_tag_removed to void ()*), i8* %21, void (i8*, %struct._GClosure*)* null, i32 0)
  %22 = load %struct._GimpTaggedContainer*, %struct._GimpTaggedContainer** %tagged_container, align 8
  %23 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %call8 = call i32 @gimp_tagged_container_object_matches(%struct._GimpTaggedContainer* %22, %struct._GimpObject* %23)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %24 = load %struct._GimpTaggedContainer*, %struct._GimpTaggedContainer** %tagged_container, align 8
  %25 = bitcast %struct._GimpTaggedContainer* %24 to %struct._GTypeInstance*
  %call10 = call i64 @gimp_container_get_type() #5
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call10)
  %26 = bitcast %struct._GTypeInstance* %call11 to %struct._GimpContainer*
  %27 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %call12 = call i32 @gimp_container_add(%struct._GimpContainer* %26, %struct._GimpObject* %27)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_tagged_container_src_remove(%struct._GimpFilteredContainer* %filtered_container, %struct._GimpObject* %object) #3 {
entry:
  %filtered_container.addr = alloca %struct._GimpFilteredContainer*, align 8
  %object.addr = alloca %struct._GimpObject*, align 8
  %tagged_container = alloca %struct._GimpTaggedContainer*, align 8
  %list = alloca %struct._GList*, align 8
  store %struct._GimpFilteredContainer* %filtered_container, %struct._GimpFilteredContainer** %filtered_container.addr, align 8
  store %struct._GimpObject* %object, %struct._GimpObject** %object.addr, align 8
  %0 = load %struct._GimpFilteredContainer*, %struct._GimpFilteredContainer** %filtered_container.addr, align 8
  %1 = bitcast %struct._GimpFilteredContainer* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tagged_container_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTaggedContainer*
  store %struct._GimpTaggedContainer* %2, %struct._GimpTaggedContainer** %tagged_container, align 8
  %3 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %4 = bitcast %struct._GimpObject* %3 to i8*
  %5 = load %struct._GimpTaggedContainer*, %struct._GimpTaggedContainer** %tagged_container, align 8
  %6 = bitcast %struct._GimpTaggedContainer* %5 to i8*
  %call2 = call i32 @g_signal_handlers_disconnect_matched(i8* %4, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpTagged*, %struct._GimpTag*, %struct._GimpTaggedContainer*)* @gimp_tagged_container_tag_added to i8*), i8* %6)
  %7 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %8 = bitcast %struct._GimpObject* %7 to i8*
  %9 = load %struct._GimpTaggedContainer*, %struct._GimpTaggedContainer** %tagged_container, align 8
  %10 = bitcast %struct._GimpTaggedContainer* %9 to i8*
  %call3 = call i32 @g_signal_handlers_disconnect_matched(i8* %8, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpTagged*, %struct._GimpTag*, %struct._GimpTaggedContainer*)* @gimp_tagged_container_tag_removed to i8*), i8* %10)
  %11 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %12 = bitcast %struct._GimpObject* %11 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_tagged_interface_get_type() #5
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call4)
  %13 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpTagged*
  %call6 = call %struct._GList* @gimp_tagged_get_tags(%struct._GimpTagged* %13)
  store %struct._GList* %call6, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %entry
  %14 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool = icmp ne %struct._GList* %14, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load %struct._GimpTaggedContainer*, %struct._GimpTaggedContainer** %tagged_container, align 8
  %16 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %16, i32 0, i32 0
  %17 = load i8*, i8** %data, align 8
  %18 = bitcast i8* %17 to %struct._GimpTag*
  call void @gimp_tagged_container_unref_tag(%struct._GimpTaggedContainer* %15, %struct._GimpTag* %18)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %19 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool7 = icmp ne %struct._GList* %19, null
  br i1 %tobool7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %20 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %20, i32 0, i32 1
  %21 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %21, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %22 = load %struct._GimpTaggedContainer*, %struct._GimpTaggedContainer** %tagged_container, align 8
  %23 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %call8 = call i32 @gimp_tagged_container_object_matches(%struct._GimpTaggedContainer* %22, %struct._GimpObject* %23)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %24 = load %struct._GimpTaggedContainer*, %struct._GimpTaggedContainer** %tagged_container, align 8
  %25 = bitcast %struct._GimpTaggedContainer* %24 to %struct._GTypeInstance*
  %call10 = call i64 @gimp_container_get_type() #5
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call10)
  %26 = bitcast %struct._GTypeInstance* %call11 to %struct._GimpContainer*
  %27 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %call12 = call i32 @gimp_container_remove(%struct._GimpContainer* %26, %struct._GimpObject* %27)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_tagged_container_tag_count_changed(%struct._GimpTaggedContainer* %container, i32 %tag_count) #3 {
entry:
  %container.addr = alloca %struct._GimpTaggedContainer*, align 8
  %tag_count.addr = alloca i32, align 4
  store %struct._GimpTaggedContainer* %container, %struct._GimpTaggedContainer** %container.addr, align 8
  store i32 %tag_count, i32* %tag_count.addr, align 4
  ret void
}

declare i32 @g_signal_new(i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) #1

declare void @g_cclosure_marshal_VOID__INT(%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*) #1

declare void @g_hash_table_unref(%struct._GHashTable*) #1

declare i32 @g_signal_handlers_disconnect_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_tagged_container_tag_added(%struct._GimpTagged* %tagged, %struct._GimpTag* %tag, %struct._GimpTaggedContainer* %tagged_container) #3 {
entry:
  %tagged.addr = alloca %struct._GimpTagged*, align 8
  %tag.addr = alloca %struct._GimpTag*, align 8
  %tagged_container.addr = alloca %struct._GimpTaggedContainer*, align 8
  store %struct._GimpTagged* %tagged, %struct._GimpTagged** %tagged.addr, align 8
  store %struct._GimpTag* %tag, %struct._GimpTag** %tag.addr, align 8
  store %struct._GimpTaggedContainer* %tagged_container, %struct._GimpTaggedContainer** %tagged_container.addr, align 8
  %0 = load %struct._GimpTaggedContainer*, %struct._GimpTaggedContainer** %tagged_container.addr, align 8
  %1 = load %struct._GimpTag*, %struct._GimpTag** %tag.addr, align 8
  call void @gimp_tagged_container_ref_tag(%struct._GimpTaggedContainer* %0, %struct._GimpTag* %1)
  %2 = load %struct._GimpTaggedContainer*, %struct._GimpTaggedContainer** %tagged_container.addr, align 8
  %3 = load %struct._GimpTagged*, %struct._GimpTagged** %tagged.addr, align 8
  %4 = bitcast %struct._GimpTagged* %3 to %struct._GTypeInstance*
  %call = call i64 @gimp_object_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call)
  %5 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpObject*
  %call2 = call i32 @gimp_tagged_container_object_matches(%struct._GimpTaggedContainer* %2, %struct._GimpObject* %5)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %6 = load %struct._GimpTaggedContainer*, %struct._GimpTaggedContainer** %tagged_container.addr, align 8
  %7 = bitcast %struct._GimpTaggedContainer* %6 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_container_get_type() #5
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call3)
  %8 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpContainer*
  %9 = load %struct._GimpTagged*, %struct._GimpTagged** %tagged.addr, align 8
  %10 = bitcast %struct._GimpTagged* %9 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_object_get_type() #5
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call5)
  %11 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpObject*
  %call7 = call i32 @gimp_container_have(%struct._GimpContainer* %8, %struct._GimpObject* %11)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %12 = load %struct._GimpTaggedContainer*, %struct._GimpTaggedContainer** %tagged_container.addr, align 8
  %13 = bitcast %struct._GimpTaggedContainer* %12 to %struct._GTypeInstance*
  %call9 = call i64 @gimp_container_get_type() #5
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call9)
  %14 = bitcast %struct._GTypeInstance* %call10 to %struct._GimpContainer*
  %15 = load %struct._GimpTagged*, %struct._GimpTagged** %tagged.addr, align 8
  %16 = bitcast %struct._GimpTagged* %15 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_object_get_type() #5
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call11)
  %17 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpObject*
  %call13 = call i32 @gimp_container_add(%struct._GimpContainer* %14, %struct._GimpObject* %17)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_tagged_container_tag_removed(%struct._GimpTagged* %tagged, %struct._GimpTag* %tag, %struct._GimpTaggedContainer* %tagged_container) #3 {
entry:
  %tagged.addr = alloca %struct._GimpTagged*, align 8
  %tag.addr = alloca %struct._GimpTag*, align 8
  %tagged_container.addr = alloca %struct._GimpTaggedContainer*, align 8
  store %struct._GimpTagged* %tagged, %struct._GimpTagged** %tagged.addr, align 8
  store %struct._GimpTag* %tag, %struct._GimpTag** %tag.addr, align 8
  store %struct._GimpTaggedContainer* %tagged_container, %struct._GimpTaggedContainer** %tagged_container.addr, align 8
  %0 = load %struct._GimpTaggedContainer*, %struct._GimpTaggedContainer** %tagged_container.addr, align 8
  %1 = load %struct._GimpTag*, %struct._GimpTag** %tag.addr, align 8
  call void @gimp_tagged_container_unref_tag(%struct._GimpTaggedContainer* %0, %struct._GimpTag* %1)
  %2 = load %struct._GimpTaggedContainer*, %struct._GimpTaggedContainer** %tagged_container.addr, align 8
  %3 = load %struct._GimpTagged*, %struct._GimpTagged** %tagged.addr, align 8
  %4 = bitcast %struct._GimpTagged* %3 to %struct._GTypeInstance*
  %call = call i64 @gimp_object_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call)
  %5 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpObject*
  %call2 = call i32 @gimp_tagged_container_object_matches(%struct._GimpTaggedContainer* %2, %struct._GimpObject* %5)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %6 = load %struct._GimpTaggedContainer*, %struct._GimpTaggedContainer** %tagged_container.addr, align 8
  %7 = bitcast %struct._GimpTaggedContainer* %6 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_container_get_type() #5
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call3)
  %8 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpContainer*
  %9 = load %struct._GimpTagged*, %struct._GimpTagged** %tagged.addr, align 8
  %10 = bitcast %struct._GimpTagged* %9 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_object_get_type() #5
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call5)
  %11 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpObject*
  %call7 = call i32 @gimp_container_have(%struct._GimpContainer* %8, %struct._GimpObject* %11)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %12 = load %struct._GimpTaggedContainer*, %struct._GimpTaggedContainer** %tagged_container.addr, align 8
  %13 = bitcast %struct._GimpTaggedContainer* %12 to %struct._GTypeInstance*
  %call9 = call i64 @gimp_container_get_type() #5
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call9)
  %14 = bitcast %struct._GTypeInstance* %call10 to %struct._GimpContainer*
  %15 = load %struct._GimpTagged*, %struct._GimpTagged** %tagged.addr, align 8
  %16 = bitcast %struct._GimpTagged* %15 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_object_get_type() #5
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call11)
  %17 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpObject*
  %call13 = call i32 @gimp_container_remove(%struct._GimpContainer* %14, %struct._GimpObject* %17)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

declare void @g_hash_table_remove_all(%struct._GHashTable*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_tagged_container_ref_tag(%struct._GimpTaggedContainer* %tagged_container, %struct._GimpTag* %tag) #3 {
entry:
  %tagged_container.addr = alloca %struct._GimpTaggedContainer*, align 8
  %tag.addr = alloca %struct._GimpTag*, align 8
  %ref_count = alloca i32, align 4
  store %struct._GimpTaggedContainer* %tagged_container, %struct._GimpTaggedContainer** %tagged_container.addr, align 8
  store %struct._GimpTag* %tag, %struct._GimpTag** %tag.addr, align 8
  %0 = load %struct._GimpTaggedContainer*, %struct._GimpTaggedContainer** %tagged_container.addr, align 8
  %tag_ref_counts = getelementptr inbounds %struct._GimpTaggedContainer, %struct._GimpTaggedContainer* %0, i32 0, i32 2
  %1 = load %struct._GHashTable*, %struct._GHashTable** %tag_ref_counts, align 8
  %2 = load %struct._GimpTag*, %struct._GimpTag** %tag.addr, align 8
  %3 = bitcast %struct._GimpTag* %2 to i8*
  %call = call i8* @g_hash_table_lookup(%struct._GHashTable* %1, i8* %3)
  %4 = ptrtoint i8* %call to i64
  %conv = trunc i64 %4 to i32
  store i32 %conv, i32* %ref_count, align 4
  %5 = load i32, i32* %ref_count, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %ref_count, align 4
  %6 = load %struct._GimpTaggedContainer*, %struct._GimpTaggedContainer** %tagged_container.addr, align 8
  %tag_ref_counts1 = getelementptr inbounds %struct._GimpTaggedContainer, %struct._GimpTaggedContainer* %6, i32 0, i32 2
  %7 = load %struct._GHashTable*, %struct._GHashTable** %tag_ref_counts1, align 8
  %8 = load %struct._GimpTag*, %struct._GimpTag** %tag.addr, align 8
  %9 = bitcast %struct._GimpTag* %8 to i8*
  %10 = load i32, i32* %ref_count, align 4
  %conv2 = sext i32 %10 to i64
  %11 = inttoptr i64 %conv2 to i8*
  %call3 = call i32 @g_hash_table_insert(%struct._GHashTable* %7, i8* %9, i8* %11)
  %12 = load i32, i32* %ref_count, align 4
  %cmp = icmp eq i32 %12, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %13 = load %struct._GimpTaggedContainer*, %struct._GimpTaggedContainer** %tagged_container.addr, align 8
  %tag_count = getelementptr inbounds %struct._GimpTaggedContainer, %struct._GimpTaggedContainer* %13, i32 0, i32 3
  %14 = load i32, i32* %tag_count, align 4
  %inc5 = add nsw i32 %14, 1
  store i32 %inc5, i32* %tag_count, align 4
  %15 = load %struct._GimpTaggedContainer*, %struct._GimpTaggedContainer** %tagged_container.addr, align 8
  %16 = bitcast %struct._GimpTaggedContainer* %15 to i8*
  %17 = load i32, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @gimp_tagged_container_signals, i32 0, i64 0), align 4
  %18 = load %struct._GimpTaggedContainer*, %struct._GimpTaggedContainer** %tagged_container.addr, align 8
  %tag_count6 = getelementptr inbounds %struct._GimpTaggedContainer, %struct._GimpTaggedContainer* %18, i32 0, i32 3
  %19 = load i32, i32* %tag_count6, align 4
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %16, i32 %17, i32 0, i32 %19)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_tagged_container_object_matches(%struct._GimpTaggedContainer* %tagged_container, %struct._GimpObject* %object) #3 {
entry:
  %retval = alloca i32, align 4
  %tagged_container.addr = alloca %struct._GimpTaggedContainer*, align 8
  %object.addr = alloca %struct._GimpObject*, align 8
  %filter_tags = alloca %struct._GList*, align 8
  store %struct._GimpTaggedContainer* %tagged_container, %struct._GimpTaggedContainer** %tagged_container.addr, align 8
  store %struct._GimpObject* %object, %struct._GimpObject** %object.addr, align 8
  %0 = load %struct._GimpTaggedContainer*, %struct._GimpTaggedContainer** %tagged_container.addr, align 8
  %filter = getelementptr inbounds %struct._GimpTaggedContainer, %struct._GimpTaggedContainer* %0, i32 0, i32 1
  %1 = load %struct._GList*, %struct._GList** %filter, align 8
  store %struct._GList* %1, %struct._GList** %filter_tags, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %entry
  %2 = load %struct._GList*, %struct._GList** %filter_tags, align 8
  %tobool = icmp ne %struct._GList* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct._GList*, %struct._GList** %filter_tags, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %3, i32 0, i32 0
  %4 = load i8*, i8** %data, align 8
  %tobool1 = icmp ne i8* %4, null
  br i1 %tobool1, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  %5 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %6 = bitcast %struct._GimpObject* %5 to %struct._GTypeInstance*
  %call = call i64 @gimp_tagged_interface_get_type() #5
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call)
  %7 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpTagged*
  %8 = load %struct._GList*, %struct._GList** %filter_tags, align 8
  %data3 = getelementptr inbounds %struct._GList, %struct._GList* %8, i32 0, i32 0
  %9 = load i8*, i8** %data3, align 8
  %10 = bitcast i8* %9 to %struct._GimpTag*
  %call4 = call i32 @gimp_tagged_has_tag(%struct._GimpTagged* %7, %struct._GimpTag* %10)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.end.7, label %if.then.6

if.then.6:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.7:                                         ; preds = %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.7
  %11 = load %struct._GList*, %struct._GList** %filter_tags, align 8
  %tobool8 = icmp ne %struct._GList* %11, null
  br i1 %tobool8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %12 = load %struct._GList*, %struct._GList** %filter_tags, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %12, i32 0, i32 1
  %13 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %13, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %filter_tags, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.6, %if.then
  %14 = load i32, i32* %retval
  ret i32 %14
}

declare i32 @gimp_container_have(%struct._GimpContainer*, %struct._GimpObject*) #1

declare i32 @gimp_container_add(%struct._GimpContainer*, %struct._GimpObject*) #1

declare i8* @g_hash_table_lookup(%struct._GHashTable*, i8*) #1

declare i32 @g_hash_table_insert(%struct._GHashTable*, i8*, i8*) #1

declare void @g_signal_emit(i8*, i32, i32, ...) #1

declare i32 @gimp_tagged_has_tag(%struct._GimpTagged*, %struct._GimpTag*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_tagged_interface_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_tagged_container_unref_tag(%struct._GimpTaggedContainer* %tagged_container, %struct._GimpTag* %tag) #3 {
entry:
  %tagged_container.addr = alloca %struct._GimpTaggedContainer*, align 8
  %tag.addr = alloca %struct._GimpTag*, align 8
  %ref_count = alloca i32, align 4
  store %struct._GimpTaggedContainer* %tagged_container, %struct._GimpTaggedContainer** %tagged_container.addr, align 8
  store %struct._GimpTag* %tag, %struct._GimpTag** %tag.addr, align 8
  %0 = load %struct._GimpTaggedContainer*, %struct._GimpTaggedContainer** %tagged_container.addr, align 8
  %tag_ref_counts = getelementptr inbounds %struct._GimpTaggedContainer, %struct._GimpTaggedContainer* %0, i32 0, i32 2
  %1 = load %struct._GHashTable*, %struct._GHashTable** %tag_ref_counts, align 8
  %2 = load %struct._GimpTag*, %struct._GimpTag** %tag.addr, align 8
  %3 = bitcast %struct._GimpTag* %2 to i8*
  %call = call i8* @g_hash_table_lookup(%struct._GHashTable* %1, i8* %3)
  %4 = ptrtoint i8* %call to i64
  %conv = trunc i64 %4 to i32
  store i32 %conv, i32* %ref_count, align 4
  %5 = load i32, i32* %ref_count, align 4
  %dec = add nsw i32 %5, -1
  store i32 %dec, i32* %ref_count, align 4
  %6 = load i32, i32* %ref_count, align 4
  %cmp = icmp sgt i32 %6, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %7 = load %struct._GimpTaggedContainer*, %struct._GimpTaggedContainer** %tagged_container.addr, align 8
  %tag_ref_counts2 = getelementptr inbounds %struct._GimpTaggedContainer, %struct._GimpTaggedContainer* %7, i32 0, i32 2
  %8 = load %struct._GHashTable*, %struct._GHashTable** %tag_ref_counts2, align 8
  %9 = load %struct._GimpTag*, %struct._GimpTag** %tag.addr, align 8
  %10 = bitcast %struct._GimpTag* %9 to i8*
  %11 = load i32, i32* %ref_count, align 4
  %conv3 = sext i32 %11 to i64
  %12 = inttoptr i64 %conv3 to i8*
  %call4 = call i32 @g_hash_table_insert(%struct._GHashTable* %8, i8* %10, i8* %12)
  br label %if.end.10

if.else:                                          ; preds = %entry
  %13 = load %struct._GimpTaggedContainer*, %struct._GimpTaggedContainer** %tagged_container.addr, align 8
  %tag_ref_counts5 = getelementptr inbounds %struct._GimpTaggedContainer, %struct._GimpTaggedContainer* %13, i32 0, i32 2
  %14 = load %struct._GHashTable*, %struct._GHashTable** %tag_ref_counts5, align 8
  %15 = load %struct._GimpTag*, %struct._GimpTag** %tag.addr, align 8
  %16 = bitcast %struct._GimpTag* %15 to i8*
  %call6 = call i32 @g_hash_table_remove(%struct._GHashTable* %14, i8* %16)
  %tobool = icmp ne i32 %call6, 0
  br i1 %tobool, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.else
  %17 = load %struct._GimpTaggedContainer*, %struct._GimpTaggedContainer** %tagged_container.addr, align 8
  %tag_count = getelementptr inbounds %struct._GimpTaggedContainer, %struct._GimpTaggedContainer* %17, i32 0, i32 3
  %18 = load i32, i32* %tag_count, align 4
  %dec8 = add nsw i32 %18, -1
  store i32 %dec8, i32* %tag_count, align 4
  %19 = load %struct._GimpTaggedContainer*, %struct._GimpTaggedContainer** %tagged_container.addr, align 8
  %20 = bitcast %struct._GimpTaggedContainer* %19 to i8*
  %21 = load i32, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @gimp_tagged_container_signals, i32 0, i64 0), align 4
  %22 = load %struct._GimpTaggedContainer*, %struct._GimpTaggedContainer** %tagged_container.addr, align 8
  %tag_count9 = getelementptr inbounds %struct._GimpTaggedContainer, %struct._GimpTaggedContainer* %22, i32 0, i32 3
  %23 = load i32, i32* %tag_count9, align 4
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %20, i32 %21, i32 0, i32 %23)
  br label %if.end

if.end:                                           ; preds = %if.then.7, %if.else
  br label %if.end.10

if.end.10:                                        ; preds = %if.end, %if.then
  ret void
}

declare i32 @gimp_container_remove(%struct._GimpContainer*, %struct._GimpObject*) #1

declare i32 @g_hash_table_remove(%struct._GHashTable*, i8*) #1

declare %struct._GList* @gimp_tagged_get_tags(%struct._GimpTagged*) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

declare %struct._GHashTable* @g_hash_table_new(i32 (i8*)*, i32 (i8*, i8*)*) #1

declare i32 @gimp_tag_get_hash(%struct._GimpTag*) #1

declare i32 @gimp_tag_equals(%struct._GimpTag*, %struct._GimpTag*) #1

declare void @gimp_container_clear(%struct._GimpContainer*) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
