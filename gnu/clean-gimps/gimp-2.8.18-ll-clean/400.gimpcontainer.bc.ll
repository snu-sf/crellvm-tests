; ModuleID = './app/core/gimpcontainer.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GInterfaceInfo = type { void (i8*, i8*)*, void (i8*, i8*)*, i8* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
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
%struct._GimpContainerPriv = type { i64, i32, i32, %struct._GList*, i32 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpConfigInterface = type { %struct._GTypeInterface, i32 (%struct._GimpConfig*, %struct._GimpConfigWriter*, i8*)*, i32 (%struct._GimpConfig*, %struct._GScanner*, i32, i8*)*, i32 (%struct._GimpConfig*, i32, %struct._GValue*, %struct._GParamSpec*, %struct._GimpConfigWriter*)*, i32 (%struct._GimpConfig*, i32, %struct._GValue*, %struct._GParamSpec*, %struct._GScanner*, i32*)*, %struct._GimpConfig* (%struct._GimpConfig*)*, i32 (%struct._GimpConfig*, %struct._GimpConfig*)*, void (%struct._GimpConfig*)*, i32 (%struct._GimpConfig*, %struct._GimpConfig*, i32)* }
%struct._GTypeInterface = type { i64, i64 }
%struct._GimpConfig = type opaque
%struct._GimpConfigWriter = type opaque
%struct._GScanner = type { i8*, i32, i32, i8*, %struct._GData*, %struct._GScannerConfig*, i32, %union._GTokenValue, i32, i32, i32, %union._GTokenValue, i32, i32, %struct._GHashTable*, i32, i8*, i8*, i8*, i32, void (%struct._GScanner*, i8*, i32)* }
%struct._GScannerConfig = type { i8*, i8*, i8*, i8*, i24, i32 }
%union._GTokenValue = type { i8* }
%struct._GHashTable = type opaque
%struct.GimpContainerHandler = type { i8*, void ()*, i8*, i32 }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GSignalInvocationHint = type { i32, i32, i32 }
%struct.SerializeData = type { %struct._GimpConfigWriter*, i8*, i32 }

@gimp_container_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"GimpContainer\00", align 1
@gimp_container_get_type.g_implement_interface_info = internal constant %struct._GInterfaceInfo { void (i8*, i8*)* bitcast (void (%struct._GimpConfigInterface*)* @gimp_container_config_iface_init to void (i8*, i8*)*), void (i8*, i8*)* null, i8* null }, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"Gimp-Core\00", align 1
@__func__.gimp_container_get_children_type = private unnamed_addr constant [33 x i8] c"gimp_container_get_children_type\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"GIMP_IS_CONTAINER (container)\00", align 1
@__func__.gimp_container_get_policy = private unnamed_addr constant [26 x i8] c"gimp_container_get_policy\00", align 1
@__func__.gimp_container_get_n_children = private unnamed_addr constant [30 x i8] c"gimp_container_get_n_children\00", align 1
@__func__.gimp_container_add = private unnamed_addr constant [19 x i8] c"gimp_container_add\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"object != NULL\00", align 1
@.str.4 = private unnamed_addr constant [68 x i8] c"G_TYPE_CHECK_INSTANCE_TYPE (object, container->priv->children_type)\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"%s: container %p already contains object %p\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"disconnect\00", align 1
@container_signals = internal global [5 x i32] zeroinitializer, align 16
@.str.7 = private unnamed_addr constant [106 x i8] c"%s: GimpContainer::add() implementation did not chain up. Please report this at http://www.gimp.org/bugs/\00", align 1
@__func__.gimp_container_remove = private unnamed_addr constant [22 x i8] c"gimp_container_remove\00", align 1
@.str.8 = private unnamed_addr constant [44 x i8] c"%s: container %p does not contain object %p\00", align 1
@.str.9 = private unnamed_addr constant [109 x i8] c"%s: GimpContainer::remove() implementation did not chain up. Please report this at http://www.gimp.org/bugs/\00", align 1
@__func__.gimp_container_insert = private unnamed_addr constant [22 x i8] c"gimp_container_insert\00", align 1
@.str.10 = private unnamed_addr constant [52 x i8] c"index >= -1 && index <= container->priv->n_children\00", align 1
@__func__.gimp_container_reorder = private unnamed_addr constant [23 x i8] c"gimp_container_reorder\00", align 1
@.str.11 = private unnamed_addr constant [59 x i8] c"new_index >= -1 && new_index < container->priv->n_children\00", align 1
@__func__.gimp_container_freeze = private unnamed_addr constant [22 x i8] c"gimp_container_freeze\00", align 1
@__func__.gimp_container_thaw = private unnamed_addr constant [20 x i8] c"gimp_container_thaw\00", align 1
@__func__.gimp_container_frozen = private unnamed_addr constant [22 x i8] c"gimp_container_frozen\00", align 1
@__func__.gimp_container_clear = private unnamed_addr constant [21 x i8] c"gimp_container_clear\00", align 1
@__func__.gimp_container_is_empty = private unnamed_addr constant [24 x i8] c"gimp_container_is_empty\00", align 1
@__func__.gimp_container_have = private unnamed_addr constant [20 x i8] c"gimp_container_have\00", align 1
@__func__.gimp_container_foreach = private unnamed_addr constant [23 x i8] c"gimp_container_foreach\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"func != NULL\00", align 1
@__func__.gimp_container_get_child_by_name = private unnamed_addr constant [33 x i8] c"gimp_container_get_child_by_name\00", align 1
@__func__.gimp_container_get_child_by_index = private unnamed_addr constant [34 x i8] c"gimp_container_get_child_by_index\00", align 1
@__func__.gimp_container_get_first_child = private unnamed_addr constant [31 x i8] c"gimp_container_get_first_child\00", align 1
@__func__.gimp_container_get_last_child = private unnamed_addr constant [30 x i8] c"gimp_container_get_last_child\00", align 1
@__func__.gimp_container_get_child_index = private unnamed_addr constant [31 x i8] c"gimp_container_get_child_index\00", align 1
@__func__.gimp_container_get_neighbor_of = private unnamed_addr constant [31 x i8] c"gimp_container_get_neighbor_of\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"GIMP_IS_OBJECT (object)\00", align 1
@__func__.gimp_container_get_name_array = private unnamed_addr constant [30 x i8] c"gimp_container_get_name_array\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"length != NULL\00", align 1
@gimp_container_add_handler.handler_id = internal global i32 0, align 4
@__func__.gimp_container_add_handler = private unnamed_addr constant [27 x i8] c"gimp_container_add_handler\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"signame != NULL\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"callback != NULL\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"notify::\00", align 1
@.str.18 = private unnamed_addr constant [58 x i8] c"g_signal_lookup (signame, container->priv->children_type)\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"%s-%d\00", align 1
@__func__.gimp_container_remove_handler = private unnamed_addr constant [30 x i8] c"gimp_container_remove_handler\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"id != 0\00", align 1
@.str.21 = private unnamed_addr constant [48 x i8] c"%s: tried to remove handler which unknown id %d\00", align 1
@gimp_container_parent_class = internal global i8* null, align 8
@GimpContainer_private_offset = internal global i32 0, align 4
@.str.22 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"remove\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"reorder\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"freeze\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"thaw\00", align 1
@.str.27 = private unnamed_addr constant [14 x i8] c"children-type\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"policy\00", align 1
@.str.29 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.30 = private unnamed_addr constant [16 x i8] c"gimpcontainer.c\00", align 1
@.str.31 = private unnamed_addr constant [9 x i8] c"property\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@.str.33 = private unnamed_addr constant [33 x i8] c"unable to determine type of '%s'\00", align 1
@.str.34 = private unnamed_addr constant [31 x i8] c"'%s' is not a subclass of '%s'\00", align 1
@.str.35 = private unnamed_addr constant [44 x i8] c"'%s' does not implement GimpConfigInterface\00", align 1
@.str.36 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"gimp\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_container_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_container_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_container_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_object_get_type() #6
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 248, void (i8*, i8*)* bitcast (void (i8*)* @gimp_container_class_intern_init to void (i8*, i8*)*), i32 40, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpContainer*)* @gimp_container_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  %call8 = call i64 @gimp_config_interface_get_type() #6
  call void @g_type_add_interface_static(i64 %5, i64 %call8, %struct._GInterfaceInfo* @gimp_container_get_type.g_implement_interface_info)
  %6 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_container_get_type.g_define_type_id__volatile to i8*), i64 %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %7 = load volatile i64, i64* @gimp_container_get_type.g_define_type_id__volatile, align 8
  ret i64 %7
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_container_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_container_parent_class, align 8
  %1 = load i32, i32* @GimpContainer_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpContainer_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpContainerClass*
  call void @gimp_container_class_init(%struct._GimpContainerClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_container_init(%struct._GimpContainer* %container) #3 {
entry:
  %container.addr = alloca %struct._GimpContainer*, align 8
  store %struct._GimpContainer* %container, %struct._GimpContainer** %container.addr, align 8
  %0 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %1 = bitcast %struct._GimpContainer* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_container_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpContainerPriv*
  %3 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %priv = getelementptr inbounds %struct._GimpContainer, %struct._GimpContainer* %3, i32 0, i32 1
  store %struct._GimpContainerPriv* %2, %struct._GimpContainerPriv** %priv, align 8
  %4 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %priv2 = getelementptr inbounds %struct._GimpContainer, %struct._GimpContainer* %4, i32 0, i32 1
  %5 = load %struct._GimpContainerPriv*, %struct._GimpContainerPriv** %priv2, align 8
  %handlers = getelementptr inbounds %struct._GimpContainerPriv, %struct._GimpContainerPriv* %5, i32 0, i32 3
  store %struct._GList* null, %struct._GList** %handlers, align 8
  %6 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %priv3 = getelementptr inbounds %struct._GimpContainer, %struct._GimpContainer* %6, i32 0, i32 1
  %7 = load %struct._GimpContainerPriv*, %struct._GimpContainerPriv** %priv3, align 8
  %freeze_count = getelementptr inbounds %struct._GimpContainerPriv, %struct._GimpContainerPriv* %7, i32 0, i32 4
  store i32 0, i32* %freeze_count, align 4
  %8 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %priv4 = getelementptr inbounds %struct._GimpContainer, %struct._GimpContainer* %8, i32 0, i32 1
  %9 = load %struct._GimpContainerPriv*, %struct._GimpContainerPriv** %priv4, align 8
  %children_type = getelementptr inbounds %struct._GimpContainerPriv, %struct._GimpContainerPriv* %9, i32 0, i32 0
  store i64 4, i64* %children_type, align 8
  %10 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %priv5 = getelementptr inbounds %struct._GimpContainer, %struct._GimpContainer* %10, i32 0, i32 1
  %11 = load %struct._GimpContainerPriv*, %struct._GimpContainerPriv** %priv5, align 8
  %policy = getelementptr inbounds %struct._GimpContainerPriv, %struct._GimpContainerPriv* %11, i32 0, i32 1
  store i32 0, i32* %policy, align 4
  %12 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %priv6 = getelementptr inbounds %struct._GimpContainer, %struct._GimpContainer* %12, i32 0, i32 1
  %13 = load %struct._GimpContainerPriv*, %struct._GimpContainerPriv** %priv6, align 8
  %n_children = getelementptr inbounds %struct._GimpContainerPriv, %struct._GimpContainerPriv* %13, i32 0, i32 2
  store i32 0, i32* %n_children, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_container_config_iface_init(%struct._GimpConfigInterface* %iface) #3 {
entry:
  %iface.addr = alloca %struct._GimpConfigInterface*, align 8
  store %struct._GimpConfigInterface* %iface, %struct._GimpConfigInterface** %iface.addr, align 8
  %0 = load %struct._GimpConfigInterface*, %struct._GimpConfigInterface** %iface.addr, align 8
  %serialize = getelementptr inbounds %struct._GimpConfigInterface, %struct._GimpConfigInterface* %0, i32 0, i32 1
  store i32 (%struct._GimpConfig*, %struct._GimpConfigWriter*, i8*)* @gimp_container_serialize, i32 (%struct._GimpConfig*, %struct._GimpConfigWriter*, i8*)** %serialize, align 8
  %1 = load %struct._GimpConfigInterface*, %struct._GimpConfigInterface** %iface.addr, align 8
  %deserialize = getelementptr inbounds %struct._GimpConfigInterface, %struct._GimpConfigInterface* %1, i32 0, i32 2
  store i32 (%struct._GimpConfig*, %struct._GScanner*, i32, i8*)* @gimp_container_deserialize, i32 (%struct._GimpConfig*, %struct._GScanner*, i32, i8*)** %deserialize, align 8
  ret void
}

declare void @g_type_add_interface_static(i64, i64, %struct._GInterfaceInfo*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_config_interface_get_type() #2

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define i64 @gimp_container_get_children_type(%struct._GimpContainer* %container) #3 {
entry:
  %retval = alloca i64, align 8
  %container.addr = alloca %struct._GimpContainer*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpContainer* %container, %struct._GimpContainer** %container.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %1 = bitcast %struct._GimpContainer* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_container_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_container_get_children_type, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0))
  store i64 4, i64* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %priv = getelementptr inbounds %struct._GimpContainer, %struct._GimpContainer* %13, i32 0, i32 1
  %14 = load %struct._GimpContainerPriv*, %struct._GimpContainerPriv** %priv, align 8
  %children_type = getelementptr inbounds %struct._GimpContainerPriv, %struct._GimpContainerPriv* %14, i32 0, i32 0
  %15 = load i64, i64* %children_type, align 8
  store i64 %15, i64* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %16 = load i64, i64* %retval
  ret i64 %16
}

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_container_get_policy(%struct._GimpContainer* %container) #3 {
entry:
  %retval = alloca i32, align 4
  %container.addr = alloca %struct._GimpContainer*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpContainer* %container, %struct._GimpContainer** %container.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %1 = bitcast %struct._GimpContainer* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_container_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_container_get_policy, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %priv = getelementptr inbounds %struct._GimpContainer, %struct._GimpContainer* %13, i32 0, i32 1
  %14 = load %struct._GimpContainerPriv*, %struct._GimpContainerPriv** %priv, align 8
  %policy = getelementptr inbounds %struct._GimpContainerPriv, %struct._GimpContainerPriv* %14, i32 0, i32 1
  %15 = load i32, i32* %policy, align 4
  store i32 %15, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define i32 @gimp_container_get_n_children(%struct._GimpContainer* %container) #3 {
entry:
  %retval = alloca i32, align 4
  %container.addr = alloca %struct._GimpContainer*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpContainer* %container, %struct._GimpContainer** %container.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %1 = bitcast %struct._GimpContainer* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_container_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_container_get_n_children, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %priv = getelementptr inbounds %struct._GimpContainer, %struct._GimpContainer* %13, i32 0, i32 1
  %14 = load %struct._GimpContainerPriv*, %struct._GimpContainerPriv** %priv, align 8
  %n_children = getelementptr inbounds %struct._GimpContainerPriv, %struct._GimpContainerPriv* %14, i32 0, i32 2
  %15 = load i32, i32* %n_children, align 4
  store i32 %15, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define i32 @gimp_container_add(%struct._GimpContainer* %container, %struct._GimpObject* %object) #3 {
entry:
  %retval = alloca i32, align 4
  %container.addr = alloca %struct._GimpContainer*, align 8
  %object.addr = alloca %struct._GimpObject*, align 8
  %list = alloca %struct._GList*, align 8
  %n_children = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst19 = alloca %struct._GTypeInstance*, align 8
  %__t21 = alloca i64, align 8
  %__r23 = alloca i32, align 4
  %tmp38 = alloca i32, align 4
  %handler = alloca %struct.GimpContainerHandler*, align 8
  %handler_id = alloca i64, align 8
  store %struct._GimpContainer* %container, %struct._GimpContainer** %container.addr, align 8
  store %struct._GimpObject* %object, %struct._GimpObject** %object.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %1 = bitcast %struct._GimpContainer* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_container_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gimp_container_add, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %cmp12 = icmp ne %struct._GimpObject* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gimp_container_add, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %14 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %15 = bitcast %struct._GimpObject* %14 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %15, %struct._GTypeInstance** %__inst19, align 8
  %16 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %priv = getelementptr inbounds %struct._GimpContainer, %struct._GimpContainer* %16, i32 0, i32 1
  %17 = load %struct._GimpContainerPriv*, %struct._GimpContainerPriv** %priv, align 8
  %children_type = getelementptr inbounds %struct._GimpContainerPriv, %struct._GimpContainerPriv* %17, i32 0, i32 0
  %18 = load i64, i64* %children_type, align 8
  store i64 %18, i64* %__t21, align 8
  %19 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst19, align 8
  %tobool24 = icmp ne %struct._GTypeInstance* %19, null
  br i1 %tobool24, label %if.else.26, label %if.then.25

if.then.25:                                       ; preds = %do.body.17
  store i32 0, i32* %__r23, align 4
  br label %if.end.37

if.else.26:                                       ; preds = %do.body.17
  %20 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst19, align 8
  %g_class27 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %20, i32 0, i32 0
  %21 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class27, align 8
  %tobool28 = icmp ne %struct._GTypeClass* %21, null
  br i1 %tobool28, label %land.lhs.true.29, label %if.else.34

land.lhs.true.29:                                 ; preds = %if.else.26
  %22 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst19, align 8
  %g_class30 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %22, i32 0, i32 0
  %23 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class30, align 8
  %g_type31 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %23, i32 0, i32 0
  %24 = load i64, i64* %g_type31, align 8
  %25 = load i64, i64* %__t21, align 8
  %cmp32 = icmp eq i64 %24, %25
  br i1 %cmp32, label %if.then.33, label %if.else.34

if.then.33:                                       ; preds = %land.lhs.true.29
  store i32 1, i32* %__r23, align 4
  br label %if.end.36

if.else.34:                                       ; preds = %land.lhs.true.29, %if.else.26
  %26 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst19, align 8
  %27 = load i64, i64* %__t21, align 8
  %call35 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %26, i64 %27) #7
  store i32 %call35, i32* %__r23, align 4
  br label %if.end.36

if.end.36:                                        ; preds = %if.else.34, %if.then.33
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %if.then.25
  %28 = load i32, i32* %__r23, align 4
  store i32 %28, i32* %tmp38
  %29 = load i32, i32* %tmp38
  %tobool39 = icmp ne i32 %29, 0
  br i1 %tobool39, label %if.then.40, label %if.else.41

if.then.40:                                       ; preds = %if.end.37
  br label %if.end.42

if.else.41:                                       ; preds = %if.end.37
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gimp_container_add, i32 0, i32 0), i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.4, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.42:                                        ; preds = %if.then.40
  br label %do.end.43

do.end.43:                                        ; preds = %if.end.42
  %30 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %31 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %call44 = call i32 @gimp_container_have(%struct._GimpContainer* %30, %struct._GimpObject* %31)
  %tobool45 = icmp ne i32 %call44, 0
  br i1 %tobool45, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %do.end.43
  %32 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %33 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gimp_container_add, i32 0, i32 0), %struct._GimpContainer* %32, %struct._GimpObject* %33)
  store i32 0, i32* %retval
  br label %return

if.end.47:                                        ; preds = %do.end.43
  %34 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %priv48 = getelementptr inbounds %struct._GimpContainer, %struct._GimpContainer* %34, i32 0, i32 1
  %35 = load %struct._GimpContainerPriv*, %struct._GimpContainerPriv** %priv48, align 8
  %handlers = getelementptr inbounds %struct._GimpContainerPriv, %struct._GimpContainerPriv* %35, i32 0, i32 3
  %36 = load %struct._GList*, %struct._GList** %handlers, align 8
  store %struct._GList* %36, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %if.end.47
  %37 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool49 = icmp ne %struct._GList* %37, null
  br i1 %tobool49, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %38 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %38, i32 0, i32 0
  %39 = load i8*, i8** %data, align 8
  %40 = bitcast i8* %39 to %struct.GimpContainerHandler*
  store %struct.GimpContainerHandler* %40, %struct.GimpContainerHandler** %handler, align 8
  %41 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %42 = bitcast %struct._GimpObject* %41 to i8*
  %43 = load %struct.GimpContainerHandler*, %struct.GimpContainerHandler** %handler, align 8
  %signame = getelementptr inbounds %struct.GimpContainerHandler, %struct.GimpContainerHandler* %43, i32 0, i32 0
  %44 = load i8*, i8** %signame, align 8
  %45 = load %struct.GimpContainerHandler*, %struct.GimpContainerHandler** %handler, align 8
  %callback = getelementptr inbounds %struct.GimpContainerHandler, %struct.GimpContainerHandler* %45, i32 0, i32 1
  %46 = load void ()*, void ()** %callback, align 8
  %47 = load %struct.GimpContainerHandler*, %struct.GimpContainerHandler** %handler, align 8
  %callback_data = getelementptr inbounds %struct.GimpContainerHandler, %struct.GimpContainerHandler* %47, i32 0, i32 2
  %48 = load i8*, i8** %callback_data, align 8
  %call52 = call i64 @g_signal_connect_data(i8* %42, i8* %44, void ()* %46, i8* %48, void (i8*, %struct._GClosure*)* null, i32 0)
  store i64 %call52, i64* %handler_id, align 8
  %49 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %50 = bitcast %struct._GimpObject* %49 to %struct._GTypeInstance*
  %call53 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %50, i64 80)
  %51 = bitcast %struct._GTypeInstance* %call53 to %struct._GObject*
  %52 = load %struct.GimpContainerHandler*, %struct.GimpContainerHandler** %handler, align 8
  %quark = getelementptr inbounds %struct.GimpContainerHandler, %struct.GimpContainerHandler* %52, i32 0, i32 3
  %53 = load i32, i32* %quark, align 4
  %54 = load i64, i64* %handler_id, align 8
  %55 = inttoptr i64 %54 to i8*
  call void @g_object_set_qdata(%struct._GObject* %51, i32 %53, i8* %55)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %56 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool54 = icmp ne %struct._GList* %56, null
  br i1 %tobool54, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %57 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %57, i32 0, i32 1
  %58 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %58, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %59 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %priv55 = getelementptr inbounds %struct._GimpContainer, %struct._GimpContainer* %59, i32 0, i32 1
  %60 = load %struct._GimpContainerPriv*, %struct._GimpContainerPriv** %priv55, align 8
  %policy = getelementptr inbounds %struct._GimpContainerPriv, %struct._GimpContainerPriv* %60, i32 0, i32 1
  %61 = load i32, i32* %policy, align 4
  switch i32 %61, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.57
  ]

sw.bb:                                            ; preds = %for.end
  %62 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %63 = bitcast %struct._GimpObject* %62 to i8*
  %call56 = call i8* @g_object_ref(i8* %63)
  br label %sw.epilog

sw.bb.57:                                         ; preds = %for.end
  %64 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %65 = bitcast %struct._GimpObject* %64 to i8*
  %66 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %67 = bitcast %struct._GimpContainer* %66 to i8*
  %call58 = call i64 @g_signal_connect_data(i8* %65, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0), void ()* bitcast (void (%struct._GimpObject*, i8*)* @gimp_container_disconnect_callback to void ()*), i8* %67, void (i8*, %struct._GClosure*)* null, i32 0)
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.end, %sw.bb.57, %sw.bb
  %68 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %priv59 = getelementptr inbounds %struct._GimpContainer, %struct._GimpContainer* %68, i32 0, i32 1
  %69 = load %struct._GimpContainerPriv*, %struct._GimpContainerPriv** %priv59, align 8
  %n_children60 = getelementptr inbounds %struct._GimpContainerPriv, %struct._GimpContainerPriv* %69, i32 0, i32 2
  %70 = load i32, i32* %n_children60, align 4
  store i32 %70, i32* %n_children, align 4
  %71 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %72 = bitcast %struct._GimpContainer* %71 to i8*
  %73 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @container_signals, i32 0, i64 0), align 4
  %74 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %72, i32 %73, i32 0, %struct._GimpObject* %74)
  %75 = load i32, i32* %n_children, align 4
  %76 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %priv61 = getelementptr inbounds %struct._GimpContainer, %struct._GimpContainer* %76, i32 0, i32 1
  %77 = load %struct._GimpContainerPriv*, %struct._GimpContainerPriv** %priv61, align 8
  %n_children62 = getelementptr inbounds %struct._GimpContainerPriv, %struct._GimpContainerPriv* %77, i32 0, i32 2
  %78 = load i32, i32* %n_children62, align 4
  %cmp63 = icmp eq i32 %75, %78
  br i1 %cmp63, label %if.then.64, label %if.end.67

if.then.64:                                       ; preds = %sw.epilog
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([106 x i8], [106 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gimp_container_add, i32 0, i32 0))
  %79 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %priv65 = getelementptr inbounds %struct._GimpContainer, %struct._GimpContainer* %79, i32 0, i32 1
  %80 = load %struct._GimpContainerPriv*, %struct._GimpContainerPriv** %priv65, align 8
  %n_children66 = getelementptr inbounds %struct._GimpContainerPriv, %struct._GimpContainerPriv* %80, i32 0, i32 2
  %81 = load i32, i32* %n_children66, align 4
  %inc = add nsw i32 %81, 1
  store i32 %inc, i32* %n_children66, align 4
  br label %if.end.67

if.end.67:                                        ; preds = %if.then.64, %sw.epilog
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.67, %if.then.46, %if.else.41, %if.else.14, %if.else.9
  %82 = load i32, i32* %retval
  ret i32 %82
}

; Function Attrs: nounwind uwtable
define i32 @gimp_container_have(%struct._GimpContainer* %container, %struct._GimpObject* %object) #3 {
entry:
  %retval = alloca i32, align 4
  %container.addr = alloca %struct._GimpContainer*, align 8
  %object.addr = alloca %struct._GimpObject*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpContainer* %container, %struct._GimpContainer** %container.addr, align 8
  store %struct._GimpObject* %object, %struct._GimpObject** %object.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %1 = bitcast %struct._GimpContainer* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_container_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_container_have, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %priv = getelementptr inbounds %struct._GimpContainer, %struct._GimpContainer* %13, i32 0, i32 1
  %14 = load %struct._GimpContainerPriv*, %struct._GimpContainerPriv** %priv, align 8
  %n_children = getelementptr inbounds %struct._GimpContainerPriv, %struct._GimpContainerPriv* %14, i32 0, i32 2
  %15 = load i32, i32* %n_children, align 4
  %cmp11 = icmp slt i32 %15, 1
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %do.end
  store i32 0, i32* %retval
  br label %return

if.end.13:                                        ; preds = %do.end
  %16 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %17 = bitcast %struct._GimpContainer* %16 to %struct._GTypeInstance*
  %g_class14 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %17, i32 0, i32 0
  %18 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class14, align 8
  %19 = bitcast %struct._GTypeClass* %18 to %struct._GimpContainerClass*
  %have = getelementptr inbounds %struct._GimpContainerClass, %struct._GimpContainerClass* %19, i32 0, i32 7
  %20 = load i32 (%struct._GimpContainer*, %struct._GimpObject*)*, i32 (%struct._GimpContainer*, %struct._GimpObject*)** %have, align 8
  %21 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %22 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %call15 = call i32 %20(%struct._GimpContainer* %21, %struct._GimpObject* %22)
  store i32 %call15, i32* %retval
  br label %return

return:                                           ; preds = %if.end.13, %if.then.12, %if.else.9
  %23 = load i32, i32* %retval
  ret i32 %23
}

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

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

declare void @g_object_set_qdata(%struct._GObject*, i32, i8*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare i8* @g_object_ref(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_container_disconnect_callback(%struct._GimpObject* %object, i8* %data) #3 {
entry:
  %object.addr = alloca %struct._GimpObject*, align 8
  %data.addr = alloca i8*, align 8
  %container = alloca %struct._GimpContainer*, align 8
  store %struct._GimpObject* %object, %struct._GimpObject** %object.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_container_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpContainer*
  store %struct._GimpContainer* %2, %struct._GimpContainer** %container, align 8
  %3 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %4 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %call2 = call i32 @gimp_container_remove(%struct._GimpContainer* %3, %struct._GimpObject* %4)
  ret void
}

declare void @g_signal_emit(i8*, i32, i32, ...) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_container_remove(%struct._GimpContainer* %container, %struct._GimpObject* %object) #3 {
entry:
  %retval = alloca i32, align 4
  %container.addr = alloca %struct._GimpContainer*, align 8
  %object.addr = alloca %struct._GimpObject*, align 8
  %list = alloca %struct._GList*, align 8
  %n_children = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst19 = alloca %struct._GTypeInstance*, align 8
  %__t21 = alloca i64, align 8
  %__r23 = alloca i32, align 4
  %tmp38 = alloca i32, align 4
  %handler = alloca %struct.GimpContainerHandler*, align 8
  %handler_id = alloca i64, align 8
  store %struct._GimpContainer* %container, %struct._GimpContainer** %container.addr, align 8
  store %struct._GimpObject* %object, %struct._GimpObject** %object.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %1 = bitcast %struct._GimpContainer* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_container_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_container_remove, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %cmp12 = icmp ne %struct._GimpObject* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_container_remove, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %14 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %15 = bitcast %struct._GimpObject* %14 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %15, %struct._GTypeInstance** %__inst19, align 8
  %16 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %priv = getelementptr inbounds %struct._GimpContainer, %struct._GimpContainer* %16, i32 0, i32 1
  %17 = load %struct._GimpContainerPriv*, %struct._GimpContainerPriv** %priv, align 8
  %children_type = getelementptr inbounds %struct._GimpContainerPriv, %struct._GimpContainerPriv* %17, i32 0, i32 0
  %18 = load i64, i64* %children_type, align 8
  store i64 %18, i64* %__t21, align 8
  %19 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst19, align 8
  %tobool24 = icmp ne %struct._GTypeInstance* %19, null
  br i1 %tobool24, label %if.else.26, label %if.then.25

if.then.25:                                       ; preds = %do.body.17
  store i32 0, i32* %__r23, align 4
  br label %if.end.37

if.else.26:                                       ; preds = %do.body.17
  %20 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst19, align 8
  %g_class27 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %20, i32 0, i32 0
  %21 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class27, align 8
  %tobool28 = icmp ne %struct._GTypeClass* %21, null
  br i1 %tobool28, label %land.lhs.true.29, label %if.else.34

land.lhs.true.29:                                 ; preds = %if.else.26
  %22 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst19, align 8
  %g_class30 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %22, i32 0, i32 0
  %23 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class30, align 8
  %g_type31 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %23, i32 0, i32 0
  %24 = load i64, i64* %g_type31, align 8
  %25 = load i64, i64* %__t21, align 8
  %cmp32 = icmp eq i64 %24, %25
  br i1 %cmp32, label %if.then.33, label %if.else.34

if.then.33:                                       ; preds = %land.lhs.true.29
  store i32 1, i32* %__r23, align 4
  br label %if.end.36

if.else.34:                                       ; preds = %land.lhs.true.29, %if.else.26
  %26 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst19, align 8
  %27 = load i64, i64* %__t21, align 8
  %call35 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %26, i64 %27) #7
  store i32 %call35, i32* %__r23, align 4
  br label %if.end.36

if.end.36:                                        ; preds = %if.else.34, %if.then.33
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %if.then.25
  %28 = load i32, i32* %__r23, align 4
  store i32 %28, i32* %tmp38
  %29 = load i32, i32* %tmp38
  %tobool39 = icmp ne i32 %29, 0
  br i1 %tobool39, label %if.then.40, label %if.else.41

if.then.40:                                       ; preds = %if.end.37
  br label %if.end.42

if.else.41:                                       ; preds = %if.end.37
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_container_remove, i32 0, i32 0), i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.4, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.42:                                        ; preds = %if.then.40
  br label %do.end.43

do.end.43:                                        ; preds = %if.end.42
  %30 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %31 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %call44 = call i32 @gimp_container_have(%struct._GimpContainer* %30, %struct._GimpObject* %31)
  %tobool45 = icmp ne i32 %call44, 0
  br i1 %tobool45, label %if.end.47, label %if.then.46

if.then.46:                                       ; preds = %do.end.43
  %32 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %33 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_container_remove, i32 0, i32 0), %struct._GimpContainer* %32, %struct._GimpObject* %33)
  store i32 0, i32* %retval
  br label %return

if.end.47:                                        ; preds = %do.end.43
  %34 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %priv48 = getelementptr inbounds %struct._GimpContainer, %struct._GimpContainer* %34, i32 0, i32 1
  %35 = load %struct._GimpContainerPriv*, %struct._GimpContainerPriv** %priv48, align 8
  %handlers = getelementptr inbounds %struct._GimpContainerPriv, %struct._GimpContainerPriv* %35, i32 0, i32 3
  %36 = load %struct._GList*, %struct._GList** %handlers, align 8
  store %struct._GList* %36, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %if.end.47
  %37 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool49 = icmp ne %struct._GList* %37, null
  br i1 %tobool49, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %38 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %38, i32 0, i32 0
  %39 = load i8*, i8** %data, align 8
  %40 = bitcast i8* %39 to %struct.GimpContainerHandler*
  store %struct.GimpContainerHandler* %40, %struct.GimpContainerHandler** %handler, align 8
  %41 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %42 = bitcast %struct._GimpObject* %41 to %struct._GTypeInstance*
  %call52 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %42, i64 80)
  %43 = bitcast %struct._GTypeInstance* %call52 to %struct._GObject*
  %44 = load %struct.GimpContainerHandler*, %struct.GimpContainerHandler** %handler, align 8
  %quark = getelementptr inbounds %struct.GimpContainerHandler, %struct.GimpContainerHandler* %44, i32 0, i32 3
  %45 = load i32, i32* %quark, align 4
  %call53 = call i8* @g_object_get_qdata(%struct._GObject* %43, i32 %45)
  %46 = ptrtoint i8* %call53 to i64
  %conv = trunc i64 %46 to i32
  %conv54 = zext i32 %conv to i64
  store i64 %conv54, i64* %handler_id, align 8
  %47 = load i64, i64* %handler_id, align 8
  %tobool55 = icmp ne i64 %47, 0
  br i1 %tobool55, label %if.then.56, label %if.end.59

if.then.56:                                       ; preds = %for.body
  %48 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %49 = bitcast %struct._GimpObject* %48 to i8*
  %50 = load i64, i64* %handler_id, align 8
  call void @g_signal_handler_disconnect(i8* %49, i64 %50)
  %51 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %52 = bitcast %struct._GimpObject* %51 to %struct._GTypeInstance*
  %call57 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %52, i64 80)
  %53 = bitcast %struct._GTypeInstance* %call57 to %struct._GObject*
  %54 = load %struct.GimpContainerHandler*, %struct.GimpContainerHandler** %handler, align 8
  %quark58 = getelementptr inbounds %struct.GimpContainerHandler, %struct.GimpContainerHandler* %54, i32 0, i32 3
  %55 = load i32, i32* %quark58, align 4
  call void @g_object_set_qdata(%struct._GObject* %53, i32 %55, i8* null)
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.56, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.59
  %56 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool60 = icmp ne %struct._GList* %56, null
  br i1 %tobool60, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %57 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %57, i32 0, i32 1
  %58 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %58, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %59 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %priv61 = getelementptr inbounds %struct._GimpContainer, %struct._GimpContainer* %59, i32 0, i32 1
  %60 = load %struct._GimpContainerPriv*, %struct._GimpContainerPriv** %priv61, align 8
  %n_children62 = getelementptr inbounds %struct._GimpContainerPriv, %struct._GimpContainerPriv* %60, i32 0, i32 2
  %61 = load i32, i32* %n_children62, align 4
  store i32 %61, i32* %n_children, align 4
  %62 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %63 = bitcast %struct._GimpContainer* %62 to i8*
  %64 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @container_signals, i32 0, i64 1), align 4
  %65 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %63, i32 %64, i32 0, %struct._GimpObject* %65)
  %66 = load i32, i32* %n_children, align 4
  %67 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %priv63 = getelementptr inbounds %struct._GimpContainer, %struct._GimpContainer* %67, i32 0, i32 1
  %68 = load %struct._GimpContainerPriv*, %struct._GimpContainerPriv** %priv63, align 8
  %n_children64 = getelementptr inbounds %struct._GimpContainerPriv, %struct._GimpContainerPriv* %68, i32 0, i32 2
  %69 = load i32, i32* %n_children64, align 4
  %cmp65 = icmp eq i32 %66, %69
  br i1 %cmp65, label %if.then.67, label %if.end.70

if.then.67:                                       ; preds = %for.end
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_container_remove, i32 0, i32 0))
  %70 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %priv68 = getelementptr inbounds %struct._GimpContainer, %struct._GimpContainer* %70, i32 0, i32 1
  %71 = load %struct._GimpContainerPriv*, %struct._GimpContainerPriv** %priv68, align 8
  %n_children69 = getelementptr inbounds %struct._GimpContainerPriv, %struct._GimpContainerPriv* %71, i32 0, i32 2
  %72 = load i32, i32* %n_children69, align 4
  %dec = add nsw i32 %72, -1
  store i32 %dec, i32* %n_children69, align 4
  br label %if.end.70

if.end.70:                                        ; preds = %if.then.67, %for.end
  %73 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %priv71 = getelementptr inbounds %struct._GimpContainer, %struct._GimpContainer* %73, i32 0, i32 1
  %74 = load %struct._GimpContainerPriv*, %struct._GimpContainerPriv** %priv71, align 8
  %policy = getelementptr inbounds %struct._GimpContainerPriv, %struct._GimpContainerPriv* %74, i32 0, i32 1
  %75 = load i32, i32* %policy, align 4
  switch i32 %75, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.72
  ]

sw.bb:                                            ; preds = %if.end.70
  %76 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %77 = bitcast %struct._GimpObject* %76 to i8*
  call void @g_object_unref(i8* %77)
  br label %sw.epilog

sw.bb.72:                                         ; preds = %if.end.70
  %78 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %79 = bitcast %struct._GimpObject* %78 to i8*
  %80 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %81 = bitcast %struct._GimpContainer* %80 to i8*
  %call73 = call i32 @g_signal_handlers_disconnect_matched(i8* %79, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpObject*, i8*)* @gimp_container_disconnect_callback to i8*), i8* %81)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.70, %sw.bb.72, %sw.bb
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %if.then.46, %if.else.41, %if.else.14, %if.else.9
  %82 = load i32, i32* %retval
  ret i32 %82
}

declare i8* @g_object_get_qdata(%struct._GObject*, i32) #1

declare void @g_signal_handler_disconnect(i8*, i64) #1

declare void @g_object_unref(i8*) #1

declare i32 @g_signal_handlers_disconnect_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_container_insert(%struct._GimpContainer* %container, %struct._GimpObject* %object, i32 %index) #3 {
entry:
  %retval = alloca i32, align 4
  %container.addr = alloca %struct._GimpContainer*, align 8
  %object.addr = alloca %struct._GimpObject*, align 8
  %index.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst19 = alloca %struct._GTypeInstance*, align 8
  %__t21 = alloca i64, align 8
  %__r23 = alloca i32, align 4
  %tmp38 = alloca i32, align 4
  store %struct._GimpContainer* %container, %struct._GimpContainer** %container.addr, align 8
  store %struct._GimpObject* %object, %struct._GimpObject** %object.addr, align 8
  store i32 %index, i32* %index.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %1 = bitcast %struct._GimpContainer* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_container_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_container_insert, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %cmp12 = icmp ne %struct._GimpObject* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_container_insert, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %14 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %15 = bitcast %struct._GimpObject* %14 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %15, %struct._GTypeInstance** %__inst19, align 8
  %16 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %priv = getelementptr inbounds %struct._GimpContainer, %struct._GimpContainer* %16, i32 0, i32 1
  %17 = load %struct._GimpContainerPriv*, %struct._GimpContainerPriv** %priv, align 8
  %children_type = getelementptr inbounds %struct._GimpContainerPriv, %struct._GimpContainerPriv* %17, i32 0, i32 0
  %18 = load i64, i64* %children_type, align 8
  store i64 %18, i64* %__t21, align 8
  %19 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst19, align 8
  %tobool24 = icmp ne %struct._GTypeInstance* %19, null
  br i1 %tobool24, label %if.else.26, label %if.then.25

if.then.25:                                       ; preds = %do.body.17
  store i32 0, i32* %__r23, align 4
  br label %if.end.37

if.else.26:                                       ; preds = %do.body.17
  %20 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst19, align 8
  %g_class27 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %20, i32 0, i32 0
  %21 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class27, align 8
  %tobool28 = icmp ne %struct._GTypeClass* %21, null
  br i1 %tobool28, label %land.lhs.true.29, label %if.else.34

land.lhs.true.29:                                 ; preds = %if.else.26
  %22 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst19, align 8
  %g_class30 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %22, i32 0, i32 0
  %23 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class30, align 8
  %g_type31 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %23, i32 0, i32 0
  %24 = load i64, i64* %g_type31, align 8
  %25 = load i64, i64* %__t21, align 8
  %cmp32 = icmp eq i64 %24, %25
  br i1 %cmp32, label %if.then.33, label %if.else.34

if.then.33:                                       ; preds = %land.lhs.true.29
  store i32 1, i32* %__r23, align 4
  br label %if.end.36

if.else.34:                                       ; preds = %land.lhs.true.29, %if.else.26
  %26 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst19, align 8
  %27 = load i64, i64* %__t21, align 8
  %call35 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %26, i64 %27) #7
  store i32 %call35, i32* %__r23, align 4
  br label %if.end.36

if.end.36:                                        ; preds = %if.else.34, %if.then.33
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %if.then.25
  %28 = load i32, i32* %__r23, align 4
  store i32 %28, i32* %tmp38
  %29 = load i32, i32* %tmp38
  %tobool39 = icmp ne i32 %29, 0
  br i1 %tobool39, label %if.then.40, label %if.else.41

if.then.40:                                       ; preds = %if.end.37
  br label %if.end.42

if.else.41:                                       ; preds = %if.end.37
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_container_insert, i32 0, i32 0), i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.4, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.42:                                        ; preds = %if.then.40
  br label %do.end.43

do.end.43:                                        ; preds = %if.end.42
  br label %do.body.44

do.body.44:                                       ; preds = %do.end.43
  %30 = load i32, i32* %index.addr, align 4
  %cmp45 = icmp sge i32 %30, -1
  br i1 %cmp45, label %land.lhs.true.46, label %if.else.50

land.lhs.true.46:                                 ; preds = %do.body.44
  %31 = load i32, i32* %index.addr, align 4
  %32 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %priv47 = getelementptr inbounds %struct._GimpContainer, %struct._GimpContainer* %32, i32 0, i32 1
  %33 = load %struct._GimpContainerPriv*, %struct._GimpContainerPriv** %priv47, align 8
  %n_children = getelementptr inbounds %struct._GimpContainerPriv, %struct._GimpContainerPriv* %33, i32 0, i32 2
  %34 = load i32, i32* %n_children, align 4
  %cmp48 = icmp sle i32 %31, %34
  br i1 %cmp48, label %if.then.49, label %if.else.50

if.then.49:                                       ; preds = %land.lhs.true.46
  br label %if.end.51

if.else.50:                                       ; preds = %land.lhs.true.46, %do.body.44
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_container_insert, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.10, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.51:                                        ; preds = %if.then.49
  br label %do.end.52

do.end.52:                                        ; preds = %if.end.51
  %35 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %36 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %call53 = call i32 @gimp_container_have(%struct._GimpContainer* %35, %struct._GimpObject* %36)
  %tobool54 = icmp ne i32 %call53, 0
  br i1 %tobool54, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %do.end.52
  %37 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %38 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_container_insert, i32 0, i32 0), %struct._GimpContainer* %37, %struct._GimpObject* %38)
  store i32 0, i32* %retval
  br label %return

if.end.56:                                        ; preds = %do.end.52
  %39 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %40 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %call57 = call i32 @gimp_container_add(%struct._GimpContainer* %39, %struct._GimpObject* %40)
  %tobool58 = icmp ne i32 %call57, 0
  br i1 %tobool58, label %if.then.59, label %if.end.61

if.then.59:                                       ; preds = %if.end.56
  %41 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %42 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %43 = load i32, i32* %index.addr, align 4
  %call60 = call i32 @gimp_container_reorder(%struct._GimpContainer* %41, %struct._GimpObject* %42, i32 %43)
  store i32 %call60, i32* %retval
  br label %return

if.end.61:                                        ; preds = %if.end.56
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.61, %if.then.59, %if.then.55, %if.else.50, %if.else.41, %if.else.14, %if.else.9
  %44 = load i32, i32* %retval
  ret i32 %44
}

; Function Attrs: nounwind uwtable
define i32 @gimp_container_reorder(%struct._GimpContainer* %container, %struct._GimpObject* %object, i32 %new_index) #3 {
entry:
  %retval = alloca i32, align 4
  %container.addr = alloca %struct._GimpContainer*, align 8
  %object.addr = alloca %struct._GimpObject*, align 8
  %new_index.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst19 = alloca %struct._GTypeInstance*, align 8
  %__t21 = alloca i64, align 8
  %__r23 = alloca i32, align 4
  %tmp38 = alloca i32, align 4
  store %struct._GimpContainer* %container, %struct._GimpContainer** %container.addr, align 8
  store %struct._GimpObject* %object, %struct._GimpObject** %object.addr, align 8
  store i32 %new_index, i32* %new_index.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %1 = bitcast %struct._GimpContainer* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_container_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_container_reorder, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %cmp12 = icmp ne %struct._GimpObject* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_container_reorder, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %14 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %15 = bitcast %struct._GimpObject* %14 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %15, %struct._GTypeInstance** %__inst19, align 8
  %16 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %priv = getelementptr inbounds %struct._GimpContainer, %struct._GimpContainer* %16, i32 0, i32 1
  %17 = load %struct._GimpContainerPriv*, %struct._GimpContainerPriv** %priv, align 8
  %children_type = getelementptr inbounds %struct._GimpContainerPriv, %struct._GimpContainerPriv* %17, i32 0, i32 0
  %18 = load i64, i64* %children_type, align 8
  store i64 %18, i64* %__t21, align 8
  %19 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst19, align 8
  %tobool24 = icmp ne %struct._GTypeInstance* %19, null
  br i1 %tobool24, label %if.else.26, label %if.then.25

if.then.25:                                       ; preds = %do.body.17
  store i32 0, i32* %__r23, align 4
  br label %if.end.37

if.else.26:                                       ; preds = %do.body.17
  %20 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst19, align 8
  %g_class27 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %20, i32 0, i32 0
  %21 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class27, align 8
  %tobool28 = icmp ne %struct._GTypeClass* %21, null
  br i1 %tobool28, label %land.lhs.true.29, label %if.else.34

land.lhs.true.29:                                 ; preds = %if.else.26
  %22 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst19, align 8
  %g_class30 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %22, i32 0, i32 0
  %23 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class30, align 8
  %g_type31 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %23, i32 0, i32 0
  %24 = load i64, i64* %g_type31, align 8
  %25 = load i64, i64* %__t21, align 8
  %cmp32 = icmp eq i64 %24, %25
  br i1 %cmp32, label %if.then.33, label %if.else.34

if.then.33:                                       ; preds = %land.lhs.true.29
  store i32 1, i32* %__r23, align 4
  br label %if.end.36

if.else.34:                                       ; preds = %land.lhs.true.29, %if.else.26
  %26 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst19, align 8
  %27 = load i64, i64* %__t21, align 8
  %call35 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %26, i64 %27) #7
  store i32 %call35, i32* %__r23, align 4
  br label %if.end.36

if.end.36:                                        ; preds = %if.else.34, %if.then.33
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %if.then.25
  %28 = load i32, i32* %__r23, align 4
  store i32 %28, i32* %tmp38
  %29 = load i32, i32* %tmp38
  %tobool39 = icmp ne i32 %29, 0
  br i1 %tobool39, label %if.then.40, label %if.else.41

if.then.40:                                       ; preds = %if.end.37
  br label %if.end.42

if.else.41:                                       ; preds = %if.end.37
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_container_reorder, i32 0, i32 0), i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.4, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.42:                                        ; preds = %if.then.40
  br label %do.end.43

do.end.43:                                        ; preds = %if.end.42
  br label %do.body.44

do.body.44:                                       ; preds = %do.end.43
  %30 = load i32, i32* %new_index.addr, align 4
  %cmp45 = icmp sge i32 %30, -1
  br i1 %cmp45, label %land.lhs.true.46, label %if.else.50

land.lhs.true.46:                                 ; preds = %do.body.44
  %31 = load i32, i32* %new_index.addr, align 4
  %32 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %priv47 = getelementptr inbounds %struct._GimpContainer, %struct._GimpContainer* %32, i32 0, i32 1
  %33 = load %struct._GimpContainerPriv*, %struct._GimpContainerPriv** %priv47, align 8
  %n_children = getelementptr inbounds %struct._GimpContainerPriv, %struct._GimpContainerPriv* %33, i32 0, i32 2
  %34 = load i32, i32* %n_children, align 4
  %cmp48 = icmp slt i32 %31, %34
  br i1 %cmp48, label %if.then.49, label %if.else.50

if.then.49:                                       ; preds = %land.lhs.true.46
  br label %if.end.51

if.else.50:                                       ; preds = %land.lhs.true.46, %do.body.44
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_container_reorder, i32 0, i32 0), i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.11, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.51:                                        ; preds = %if.then.49
  br label %do.end.52

do.end.52:                                        ; preds = %if.end.51
  %35 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %36 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %call53 = call i32 @gimp_container_have(%struct._GimpContainer* %35, %struct._GimpObject* %36)
  %tobool54 = icmp ne i32 %call53, 0
  br i1 %tobool54, label %if.end.56, label %if.then.55

if.then.55:                                       ; preds = %do.end.52
  %37 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %38 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_container_reorder, i32 0, i32 0), %struct._GimpContainer* %37, %struct._GimpObject* %38)
  store i32 0, i32* %retval
  br label %return

if.end.56:                                        ; preds = %do.end.52
  %39 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %priv57 = getelementptr inbounds %struct._GimpContainer, %struct._GimpContainer* %39, i32 0, i32 1
  %40 = load %struct._GimpContainerPriv*, %struct._GimpContainerPriv** %priv57, align 8
  %n_children58 = getelementptr inbounds %struct._GimpContainerPriv, %struct._GimpContainerPriv* %40, i32 0, i32 2
  %41 = load i32, i32* %n_children58, align 4
  %cmp59 = icmp eq i32 %41, 1
  br i1 %cmp59, label %if.then.60, label %if.end.61

if.then.60:                                       ; preds = %if.end.56
  store i32 1, i32* %retval
  br label %return

if.end.61:                                        ; preds = %if.end.56
  %42 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %43 = bitcast %struct._GimpContainer* %42 to i8*
  %44 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @container_signals, i32 0, i64 2), align 4
  %45 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %46 = load i32, i32* %new_index.addr, align 4
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %43, i32 %44, i32 0, %struct._GimpObject* %45, i32 %46)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.61, %if.then.60, %if.then.55, %if.else.50, %if.else.41, %if.else.14, %if.else.9
  %47 = load i32, i32* %retval
  ret i32 %47
}

; Function Attrs: nounwind uwtable
define void @gimp_container_freeze(%struct._GimpContainer* %container) #3 {
entry:
  %container.addr = alloca %struct._GimpContainer*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpContainer* %container, %struct._GimpContainer** %container.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %1 = bitcast %struct._GimpContainer* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_container_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_container_freeze, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.15

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %priv = getelementptr inbounds %struct._GimpContainer, %struct._GimpContainer* %13, i32 0, i32 1
  %14 = load %struct._GimpContainerPriv*, %struct._GimpContainerPriv** %priv, align 8
  %freeze_count = getelementptr inbounds %struct._GimpContainerPriv, %struct._GimpContainerPriv* %14, i32 0, i32 4
  %15 = load i32, i32* %freeze_count, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %freeze_count, align 4
  %16 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %priv11 = getelementptr inbounds %struct._GimpContainer, %struct._GimpContainer* %16, i32 0, i32 1
  %17 = load %struct._GimpContainerPriv*, %struct._GimpContainerPriv** %priv11, align 8
  %freeze_count12 = getelementptr inbounds %struct._GimpContainerPriv, %struct._GimpContainerPriv* %17, i32 0, i32 4
  %18 = load i32, i32* %freeze_count12, align 4
  %cmp13 = icmp eq i32 %18, 1
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %do.end
  %19 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %20 = bitcast %struct._GimpContainer* %19 to i8*
  %21 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @container_signals, i32 0, i64 3), align 4
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %20, i32 %21, i32 0)
  br label %if.end.15

if.end.15:                                        ; preds = %if.else.9, %if.then.14, %do.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_container_thaw(%struct._GimpContainer* %container) #3 {
entry:
  %container.addr = alloca %struct._GimpContainer*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpContainer* %container, %struct._GimpContainer** %container.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %1 = bitcast %struct._GimpContainer* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_container_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_container_thaw, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.20

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %priv = getelementptr inbounds %struct._GimpContainer, %struct._GimpContainer* %13, i32 0, i32 1
  %14 = load %struct._GimpContainerPriv*, %struct._GimpContainerPriv** %priv, align 8
  %freeze_count = getelementptr inbounds %struct._GimpContainerPriv, %struct._GimpContainerPriv* %14, i32 0, i32 4
  %15 = load i32, i32* %freeze_count, align 4
  %cmp11 = icmp sgt i32 %15, 0
  br i1 %cmp11, label %if.then.12, label %if.end.15

if.then.12:                                       ; preds = %do.end
  %16 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %priv13 = getelementptr inbounds %struct._GimpContainer, %struct._GimpContainer* %16, i32 0, i32 1
  %17 = load %struct._GimpContainerPriv*, %struct._GimpContainerPriv** %priv13, align 8
  %freeze_count14 = getelementptr inbounds %struct._GimpContainerPriv, %struct._GimpContainerPriv* %17, i32 0, i32 4
  %18 = load i32, i32* %freeze_count14, align 4
  %dec = add nsw i32 %18, -1
  store i32 %dec, i32* %freeze_count14, align 4
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.12, %do.end
  %19 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %priv16 = getelementptr inbounds %struct._GimpContainer, %struct._GimpContainer* %19, i32 0, i32 1
  %20 = load %struct._GimpContainerPriv*, %struct._GimpContainerPriv** %priv16, align 8
  %freeze_count17 = getelementptr inbounds %struct._GimpContainerPriv, %struct._GimpContainerPriv* %20, i32 0, i32 4
  %21 = load i32, i32* %freeze_count17, align 4
  %cmp18 = icmp eq i32 %21, 0
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end.15
  %22 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %23 = bitcast %struct._GimpContainer* %22 to i8*
  %24 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @container_signals, i32 0, i64 4), align 4
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %23, i32 %24, i32 0)
  br label %if.end.20

if.end.20:                                        ; preds = %if.else.9, %if.then.19, %if.end.15
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gimp_container_frozen(%struct._GimpContainer* %container) #3 {
entry:
  %retval = alloca i32, align 4
  %container.addr = alloca %struct._GimpContainer*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpContainer* %container, %struct._GimpContainer** %container.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %1 = bitcast %struct._GimpContainer* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_container_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_container_frozen, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %priv = getelementptr inbounds %struct._GimpContainer, %struct._GimpContainer* %13, i32 0, i32 1
  %14 = load %struct._GimpContainerPriv*, %struct._GimpContainerPriv** %priv, align 8
  %freeze_count = getelementptr inbounds %struct._GimpContainerPriv, %struct._GimpContainerPriv* %14, i32 0, i32 4
  %15 = load i32, i32* %freeze_count, align 4
  %cmp11 = icmp sgt i32 %15, 0
  %cond = select i1 %cmp11, i32 1, i32 0
  store i32 %cond, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define void @gimp_container_clear(%struct._GimpContainer* %container) #3 {
entry:
  %container.addr = alloca %struct._GimpContainer*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpContainer* %container, %struct._GimpContainer** %container.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %1 = bitcast %struct._GimpContainer* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_container_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_container_clear, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.14

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %priv = getelementptr inbounds %struct._GimpContainer, %struct._GimpContainer* %13, i32 0, i32 1
  %14 = load %struct._GimpContainerPriv*, %struct._GimpContainerPriv** %priv, align 8
  %n_children = getelementptr inbounds %struct._GimpContainerPriv, %struct._GimpContainerPriv* %14, i32 0, i32 2
  %15 = load i32, i32* %n_children, align 4
  %cmp11 = icmp sgt i32 %15, 0
  br i1 %cmp11, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %do.end
  %16 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  call void @gimp_container_freeze(%struct._GimpContainer* %16)
  %17 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %18 = bitcast %struct._GimpContainer* %17 to %struct._GTypeInstance*
  %g_class13 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class13, align 8
  %20 = bitcast %struct._GTypeClass* %19 to %struct._GimpContainerClass*
  %clear = getelementptr inbounds %struct._GimpContainerClass, %struct._GimpContainerClass* %20, i32 0, i32 6
  %21 = load void (%struct._GimpContainer*)*, void (%struct._GimpContainer*)** %clear, align 8
  %22 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  call void %21(%struct._GimpContainer* %22)
  %23 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  call void @gimp_container_thaw(%struct._GimpContainer* %23)
  br label %if.end.14

if.end.14:                                        ; preds = %if.else.9, %if.then.12, %do.end
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gimp_container_is_empty(%struct._GimpContainer* %container) #3 {
entry:
  %retval = alloca i32, align 4
  %container.addr = alloca %struct._GimpContainer*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpContainer* %container, %struct._GimpContainer** %container.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %1 = bitcast %struct._GimpContainer* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_container_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_container_is_empty, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %priv = getelementptr inbounds %struct._GimpContainer, %struct._GimpContainer* %13, i32 0, i32 1
  %14 = load %struct._GimpContainerPriv*, %struct._GimpContainerPriv** %priv, align 8
  %n_children = getelementptr inbounds %struct._GimpContainerPriv, %struct._GimpContainerPriv* %14, i32 0, i32 2
  %15 = load i32, i32* %n_children, align 4
  %cmp11 = icmp eq i32 %15, 0
  %conv = zext i1 %cmp11 to i32
  store i32 %conv, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define void @gimp_container_foreach(%struct._GimpContainer* %container, void (i8*, i8*)* %func, i8* %user_data) #3 {
entry:
  %container.addr = alloca %struct._GimpContainer*, align 8
  %func.addr = alloca void (i8*, i8*)*, align 8
  %user_data.addr = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpContainer* %container, %struct._GimpContainer** %container.addr, align 8
  store void (i8*, i8*)* %func, void (i8*, i8*)** %func.addr, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %1 = bitcast %struct._GimpContainer* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_container_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_container_foreach, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.20

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load void (i8*, i8*)*, void (i8*, i8*)** %func.addr, align 8
  %cmp12 = icmp ne void (i8*, i8*)* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_container_foreach, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0))
  br label %if.end.20

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %priv = getelementptr inbounds %struct._GimpContainer, %struct._GimpContainer* %14, i32 0, i32 1
  %15 = load %struct._GimpContainerPriv*, %struct._GimpContainerPriv** %priv, align 8
  %n_children = getelementptr inbounds %struct._GimpContainerPriv, %struct._GimpContainerPriv* %15, i32 0, i32 2
  %16 = load i32, i32* %n_children, align 4
  %cmp17 = icmp sgt i32 %16, 0
  br i1 %cmp17, label %if.then.18, label %if.end.20

if.then.18:                                       ; preds = %do.end.16
  %17 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %18 = bitcast %struct._GimpContainer* %17 to %struct._GTypeInstance*
  %g_class19 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class19, align 8
  %20 = bitcast %struct._GTypeClass* %19 to %struct._GimpContainerClass*
  %foreach = getelementptr inbounds %struct._GimpContainerClass, %struct._GimpContainerClass* %20, i32 0, i32 8
  %21 = load void (%struct._GimpContainer*, void (i8*, i8*)*, i8*)*, void (%struct._GimpContainer*, void (i8*, i8*)*, i8*)** %foreach, align 8
  %22 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %23 = load void (i8*, i8*)*, void (i8*, i8*)** %func.addr, align 8
  %24 = load i8*, i8** %user_data.addr, align 8
  call void %21(%struct._GimpContainer* %22, void (i8*, i8*)* %23, i8* %24)
  br label %if.end.20

if.end.20:                                        ; preds = %if.else.9, %if.else.14, %if.then.18, %do.end.16
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._GimpObject* @gimp_container_get_child_by_name(%struct._GimpContainer* %container, i8* %name) #3 {
entry:
  %retval = alloca %struct._GimpObject*, align 8
  %container.addr = alloca %struct._GimpContainer*, align 8
  %name.addr = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpContainer* %container, %struct._GimpContainer** %container.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %1 = bitcast %struct._GimpContainer* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_container_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_container_get_child_by_name, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpObject* null, %struct._GimpObject** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load i8*, i8** %name.addr, align 8
  %tobool11 = icmp ne i8* %13, null
  br i1 %tobool11, label %if.end.13, label %if.then.12

if.then.12:                                       ; preds = %do.end
  store %struct._GimpObject* null, %struct._GimpObject** %retval
  br label %return

if.end.13:                                        ; preds = %do.end
  %14 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %15 = bitcast %struct._GimpContainer* %14 to %struct._GTypeInstance*
  %g_class14 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %15, i32 0, i32 0
  %16 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class14, align 8
  %17 = bitcast %struct._GTypeClass* %16 to %struct._GimpContainerClass*
  %get_child_by_name = getelementptr inbounds %struct._GimpContainerClass, %struct._GimpContainerClass* %17, i32 0, i32 9
  %18 = load %struct._GimpObject* (%struct._GimpContainer*, i8*)*, %struct._GimpObject* (%struct._GimpContainer*, i8*)** %get_child_by_name, align 8
  %19 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %20 = load i8*, i8** %name.addr, align 8
  %call15 = call %struct._GimpObject* %18(%struct._GimpContainer* %19, i8* %20)
  store %struct._GimpObject* %call15, %struct._GimpObject** %retval
  br label %return

return:                                           ; preds = %if.end.13, %if.then.12, %if.else.9
  %21 = load %struct._GimpObject*, %struct._GimpObject** %retval
  ret %struct._GimpObject* %21
}

; Function Attrs: nounwind uwtable
define %struct._GimpObject* @gimp_container_get_child_by_index(%struct._GimpContainer* %container, i32 %index) #3 {
entry:
  %retval = alloca %struct._GimpObject*, align 8
  %container.addr = alloca %struct._GimpContainer*, align 8
  %index.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpContainer* %container, %struct._GimpContainer** %container.addr, align 8
  store i32 %index, i32* %index.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %1 = bitcast %struct._GimpContainer* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_container_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_container_get_child_by_index, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpObject* null, %struct._GimpObject** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load i32, i32* %index.addr, align 4
  %cmp11 = icmp slt i32 %13, 0
  br i1 %cmp11, label %if.then.13, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end
  %14 = load i32, i32* %index.addr, align 4
  %15 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %priv = getelementptr inbounds %struct._GimpContainer, %struct._GimpContainer* %15, i32 0, i32 1
  %16 = load %struct._GimpContainerPriv*, %struct._GimpContainerPriv** %priv, align 8
  %n_children = getelementptr inbounds %struct._GimpContainerPriv, %struct._GimpContainerPriv* %16, i32 0, i32 2
  %17 = load i32, i32* %n_children, align 4
  %cmp12 = icmp sge i32 %14, %17
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %lor.lhs.false, %do.end
  store %struct._GimpObject* null, %struct._GimpObject** %retval
  br label %return

if.end.14:                                        ; preds = %lor.lhs.false
  %18 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %19 = bitcast %struct._GimpContainer* %18 to %struct._GTypeInstance*
  %g_class15 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %19, i32 0, i32 0
  %20 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class15, align 8
  %21 = bitcast %struct._GTypeClass* %20 to %struct._GimpContainerClass*
  %get_child_by_index = getelementptr inbounds %struct._GimpContainerClass, %struct._GimpContainerClass* %21, i32 0, i32 10
  %22 = load %struct._GimpObject* (%struct._GimpContainer*, i32)*, %struct._GimpObject* (%struct._GimpContainer*, i32)** %get_child_by_index, align 8
  %23 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %24 = load i32, i32* %index.addr, align 4
  %call16 = call %struct._GimpObject* %22(%struct._GimpContainer* %23, i32 %24)
  store %struct._GimpObject* %call16, %struct._GimpObject** %retval
  br label %return

return:                                           ; preds = %if.end.14, %if.then.13, %if.else.9
  %25 = load %struct._GimpObject*, %struct._GimpObject** %retval
  ret %struct._GimpObject* %25
}

; Function Attrs: nounwind uwtable
define %struct._GimpObject* @gimp_container_get_first_child(%struct._GimpContainer* %container) #3 {
entry:
  %retval = alloca %struct._GimpObject*, align 8
  %container.addr = alloca %struct._GimpContainer*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpContainer* %container, %struct._GimpContainer** %container.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %1 = bitcast %struct._GimpContainer* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_container_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_container_get_first_child, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpObject* null, %struct._GimpObject** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %priv = getelementptr inbounds %struct._GimpContainer, %struct._GimpContainer* %13, i32 0, i32 1
  %14 = load %struct._GimpContainerPriv*, %struct._GimpContainerPriv** %priv, align 8
  %n_children = getelementptr inbounds %struct._GimpContainerPriv, %struct._GimpContainerPriv* %14, i32 0, i32 2
  %15 = load i32, i32* %n_children, align 4
  %cmp11 = icmp sgt i32 %15, 0
  br i1 %cmp11, label %if.then.12, label %if.end.15

if.then.12:                                       ; preds = %do.end
  %16 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %17 = bitcast %struct._GimpContainer* %16 to %struct._GTypeInstance*
  %g_class13 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %17, i32 0, i32 0
  %18 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class13, align 8
  %19 = bitcast %struct._GTypeClass* %18 to %struct._GimpContainerClass*
  %get_child_by_index = getelementptr inbounds %struct._GimpContainerClass, %struct._GimpContainerClass* %19, i32 0, i32 10
  %20 = load %struct._GimpObject* (%struct._GimpContainer*, i32)*, %struct._GimpObject* (%struct._GimpContainer*, i32)** %get_child_by_index, align 8
  %21 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %call14 = call %struct._GimpObject* %20(%struct._GimpContainer* %21, i32 0)
  store %struct._GimpObject* %call14, %struct._GimpObject** %retval
  br label %return

if.end.15:                                        ; preds = %do.end
  store %struct._GimpObject* null, %struct._GimpObject** %retval
  br label %return

return:                                           ; preds = %if.end.15, %if.then.12, %if.else.9
  %22 = load %struct._GimpObject*, %struct._GimpObject** %retval
  ret %struct._GimpObject* %22
}

; Function Attrs: nounwind uwtable
define %struct._GimpObject* @gimp_container_get_last_child(%struct._GimpContainer* %container) #3 {
entry:
  %retval = alloca %struct._GimpObject*, align 8
  %container.addr = alloca %struct._GimpContainer*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpContainer* %container, %struct._GimpContainer** %container.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %1 = bitcast %struct._GimpContainer* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_container_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_container_get_last_child, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpObject* null, %struct._GimpObject** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %priv = getelementptr inbounds %struct._GimpContainer, %struct._GimpContainer* %13, i32 0, i32 1
  %14 = load %struct._GimpContainerPriv*, %struct._GimpContainerPriv** %priv, align 8
  %n_children = getelementptr inbounds %struct._GimpContainerPriv, %struct._GimpContainerPriv* %14, i32 0, i32 2
  %15 = load i32, i32* %n_children, align 4
  %cmp11 = icmp sgt i32 %15, 0
  br i1 %cmp11, label %if.then.12, label %if.end.17

if.then.12:                                       ; preds = %do.end
  %16 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %17 = bitcast %struct._GimpContainer* %16 to %struct._GTypeInstance*
  %g_class13 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %17, i32 0, i32 0
  %18 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class13, align 8
  %19 = bitcast %struct._GTypeClass* %18 to %struct._GimpContainerClass*
  %get_child_by_index = getelementptr inbounds %struct._GimpContainerClass, %struct._GimpContainerClass* %19, i32 0, i32 10
  %20 = load %struct._GimpObject* (%struct._GimpContainer*, i32)*, %struct._GimpObject* (%struct._GimpContainer*, i32)** %get_child_by_index, align 8
  %21 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %22 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %priv14 = getelementptr inbounds %struct._GimpContainer, %struct._GimpContainer* %22, i32 0, i32 1
  %23 = load %struct._GimpContainerPriv*, %struct._GimpContainerPriv** %priv14, align 8
  %n_children15 = getelementptr inbounds %struct._GimpContainerPriv, %struct._GimpContainerPriv* %23, i32 0, i32 2
  %24 = load i32, i32* %n_children15, align 4
  %sub = sub nsw i32 %24, 1
  %call16 = call %struct._GimpObject* %20(%struct._GimpContainer* %21, i32 %sub)
  store %struct._GimpObject* %call16, %struct._GimpObject** %retval
  br label %return

if.end.17:                                        ; preds = %do.end
  store %struct._GimpObject* null, %struct._GimpObject** %retval
  br label %return

return:                                           ; preds = %if.end.17, %if.then.12, %if.else.9
  %25 = load %struct._GimpObject*, %struct._GimpObject** %retval
  ret %struct._GimpObject* %25
}

; Function Attrs: nounwind uwtable
define i32 @gimp_container_get_child_index(%struct._GimpContainer* %container, %struct._GimpObject* %object) #3 {
entry:
  %retval = alloca i32, align 4
  %container.addr = alloca %struct._GimpContainer*, align 8
  %object.addr = alloca %struct._GimpObject*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst19 = alloca %struct._GTypeInstance*, align 8
  %__t21 = alloca i64, align 8
  %__r23 = alloca i32, align 4
  %tmp38 = alloca i32, align 4
  store %struct._GimpContainer* %container, %struct._GimpContainer** %container.addr, align 8
  store %struct._GimpObject* %object, %struct._GimpObject** %object.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %1 = bitcast %struct._GimpContainer* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_container_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_container_get_child_index, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %cmp12 = icmp ne %struct._GimpObject* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_container_get_child_index, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %14 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %15 = bitcast %struct._GimpObject* %14 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %15, %struct._GTypeInstance** %__inst19, align 8
  %16 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %priv = getelementptr inbounds %struct._GimpContainer, %struct._GimpContainer* %16, i32 0, i32 1
  %17 = load %struct._GimpContainerPriv*, %struct._GimpContainerPriv** %priv, align 8
  %children_type = getelementptr inbounds %struct._GimpContainerPriv, %struct._GimpContainerPriv* %17, i32 0, i32 0
  %18 = load i64, i64* %children_type, align 8
  store i64 %18, i64* %__t21, align 8
  %19 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst19, align 8
  %tobool24 = icmp ne %struct._GTypeInstance* %19, null
  br i1 %tobool24, label %if.else.26, label %if.then.25

if.then.25:                                       ; preds = %do.body.17
  store i32 0, i32* %__r23, align 4
  br label %if.end.37

if.else.26:                                       ; preds = %do.body.17
  %20 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst19, align 8
  %g_class27 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %20, i32 0, i32 0
  %21 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class27, align 8
  %tobool28 = icmp ne %struct._GTypeClass* %21, null
  br i1 %tobool28, label %land.lhs.true.29, label %if.else.34

land.lhs.true.29:                                 ; preds = %if.else.26
  %22 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst19, align 8
  %g_class30 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %22, i32 0, i32 0
  %23 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class30, align 8
  %g_type31 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %23, i32 0, i32 0
  %24 = load i64, i64* %g_type31, align 8
  %25 = load i64, i64* %__t21, align 8
  %cmp32 = icmp eq i64 %24, %25
  br i1 %cmp32, label %if.then.33, label %if.else.34

if.then.33:                                       ; preds = %land.lhs.true.29
  store i32 1, i32* %__r23, align 4
  br label %if.end.36

if.else.34:                                       ; preds = %land.lhs.true.29, %if.else.26
  %26 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst19, align 8
  %27 = load i64, i64* %__t21, align 8
  %call35 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %26, i64 %27) #7
  store i32 %call35, i32* %__r23, align 4
  br label %if.end.36

if.end.36:                                        ; preds = %if.else.34, %if.then.33
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %if.then.25
  %28 = load i32, i32* %__r23, align 4
  store i32 %28, i32* %tmp38
  %29 = load i32, i32* %tmp38
  %tobool39 = icmp ne i32 %29, 0
  br i1 %tobool39, label %if.then.40, label %if.else.41

if.then.40:                                       ; preds = %if.end.37
  br label %if.end.42

if.else.41:                                       ; preds = %if.end.37
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_container_get_child_index, i32 0, i32 0), i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.4, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.42:                                        ; preds = %if.then.40
  br label %do.end.43

do.end.43:                                        ; preds = %if.end.42
  %30 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %31 = bitcast %struct._GimpContainer* %30 to %struct._GTypeInstance*
  %g_class44 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %31, i32 0, i32 0
  %32 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class44, align 8
  %33 = bitcast %struct._GTypeClass* %32 to %struct._GimpContainerClass*
  %get_child_index = getelementptr inbounds %struct._GimpContainerClass, %struct._GimpContainerClass* %33, i32 0, i32 11
  %34 = load i32 (%struct._GimpContainer*, %struct._GimpObject*)*, i32 (%struct._GimpContainer*, %struct._GimpObject*)** %get_child_index, align 8
  %35 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %36 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %call45 = call i32 %34(%struct._GimpContainer* %35, %struct._GimpObject* %36)
  store i32 %call45, i32* %retval
  br label %return

return:                                           ; preds = %do.end.43, %if.else.41, %if.else.14, %if.else.9
  %37 = load i32, i32* %retval
  ret i32 %37
}

; Function Attrs: nounwind uwtable
define %struct._GimpObject* @gimp_container_get_neighbor_of(%struct._GimpContainer* %container, %struct._GimpObject* %object) #3 {
entry:
  %retval = alloca %struct._GimpObject*, align 8
  %container.addr = alloca %struct._GimpContainer*, align 8
  %object.addr = alloca %struct._GimpObject*, align 8
  %index = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  %new = alloca %struct._GimpObject*, align 8
  store %struct._GimpContainer* %container, %struct._GimpContainer** %container.addr, align 8
  store %struct._GimpObject* %object, %struct._GimpObject** %object.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %1 = bitcast %struct._GimpContainer* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_container_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_container_get_neighbor_of, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpObject* null, %struct._GimpObject** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_container_get_neighbor_of, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i32 0, i32 0))
  store %struct._GimpObject* null, %struct._GimpObject** %retval
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %26 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %27 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %call39 = call i32 @gimp_container_get_child_index(%struct._GimpContainer* %26, %struct._GimpObject* %27)
  store i32 %call39, i32* %index, align 4
  %28 = load i32, i32* %index, align 4
  %cmp40 = icmp ne i32 %28, -1
  br i1 %cmp40, label %if.then.41, label %if.end.50

if.then.41:                                       ; preds = %do.end.38
  %29 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %30 = load i32, i32* %index, align 4
  %add = add nsw i32 %30, 1
  %call43 = call %struct._GimpObject* @gimp_container_get_child_by_index(%struct._GimpContainer* %29, i32 %add)
  store %struct._GimpObject* %call43, %struct._GimpObject** %new, align 8
  %31 = load %struct._GimpObject*, %struct._GimpObject** %new, align 8
  %tobool44 = icmp ne %struct._GimpObject* %31, null
  br i1 %tobool44, label %if.end.49, label %land.lhs.true.45

land.lhs.true.45:                                 ; preds = %if.then.41
  %32 = load i32, i32* %index, align 4
  %cmp46 = icmp sgt i32 %32, 0
  br i1 %cmp46, label %if.then.47, label %if.end.49

if.then.47:                                       ; preds = %land.lhs.true.45
  %33 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %34 = load i32, i32* %index, align 4
  %sub = sub nsw i32 %34, 1
  %call48 = call %struct._GimpObject* @gimp_container_get_child_by_index(%struct._GimpContainer* %33, i32 %sub)
  store %struct._GimpObject* %call48, %struct._GimpObject** %new, align 8
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.47, %land.lhs.true.45, %if.then.41
  %35 = load %struct._GimpObject*, %struct._GimpObject** %new, align 8
  store %struct._GimpObject* %35, %struct._GimpObject** %retval
  br label %return

if.end.50:                                        ; preds = %do.end.38
  store %struct._GimpObject* null, %struct._GimpObject** %retval
  br label %return

return:                                           ; preds = %if.end.50, %if.end.49, %if.else.36, %if.else.9
  %36 = load %struct._GimpObject*, %struct._GimpObject** %retval
  ret %struct._GimpObject* %36
}

; Function Attrs: nounwind uwtable
define i8** @gimp_container_get_name_array(%struct._GimpContainer* %container, i32* %length) #3 {
entry:
  %retval = alloca i8**, align 8
  %container.addr = alloca %struct._GimpContainer*, align 8
  %length.addr = alloca i32*, align 8
  %names = alloca i8**, align 8
  %iter = alloca i8**, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpContainer* %container, %struct._GimpContainer** %container.addr, align 8
  store i32* %length, i32** %length.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %1 = bitcast %struct._GimpContainer* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_container_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_container_get_name_array, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0))
  store i8** null, i8*** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i32*, i32** %length.addr, align 8
  %cmp12 = icmp ne i32* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_container_get_name_array, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i32 0, i32 0))
  store i8** null, i8*** %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %call17 = call i32 @gimp_container_get_n_children(%struct._GimpContainer* %14)
  %15 = load i32*, i32** %length.addr, align 8
  store i32 %call17, i32* %15, align 4
  %16 = load i32*, i32** %length.addr, align 8
  %17 = load i32, i32* %16, align 4
  %cmp18 = icmp eq i32 %17, 0
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %do.end.16
  store i8** null, i8*** %retval
  br label %return

if.end.20:                                        ; preds = %do.end.16
  %18 = load i32*, i32** %length.addr, align 8
  %19 = load i32, i32* %18, align 4
  %conv = sext i32 %19 to i64
  %call21 = call noalias i8* @g_malloc_n(i64 %conv, i64 8)
  %20 = bitcast i8* %call21 to i8**
  store i8** %20, i8*** %iter, align 8
  store i8** %20, i8*** %names, align 8
  %21 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %22 = bitcast i8*** %iter to i8*
  call void @gimp_container_foreach(%struct._GimpContainer* %21, void (i8*, i8*)* bitcast (void (%struct._GimpObject*, i8***)* @gimp_container_get_name_array_foreach_func to void (i8*, i8*)*), i8* %22)
  %23 = load i8**, i8*** %names, align 8
  store i8** %23, i8*** %retval
  br label %return

return:                                           ; preds = %if.end.20, %if.then.19, %if.else.14, %if.else.9
  %24 = load i8**, i8*** %retval
  ret i8** %24
}

declare noalias i8* @g_malloc_n(i64, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_container_get_name_array_foreach_func(%struct._GimpObject* %object, i8*** %iter) #3 {
entry:
  %object.addr = alloca %struct._GimpObject*, align 8
  %iter.addr = alloca i8***, align 8
  %array = alloca i8**, align 8
  store %struct._GimpObject* %object, %struct._GimpObject** %object.addr, align 8
  store i8*** %iter, i8**** %iter.addr, align 8
  %0 = load i8***, i8**** %iter.addr, align 8
  %1 = load i8**, i8*** %0, align 8
  store i8** %1, i8*** %array, align 8
  %2 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %3 = bitcast %struct._GimpObject* %2 to i8*
  %call = call i8* @gimp_object_get_name(i8* %3)
  %call1 = call noalias i8* @g_strdup(i8* %call)
  %4 = load i8**, i8*** %array, align 8
  store i8* %call1, i8** %4, align 8
  %5 = load i8***, i8**** %iter.addr, align 8
  %6 = load i8**, i8*** %5, align 8
  %incdec.ptr = getelementptr inbounds i8*, i8** %6, i32 1
  store i8** %incdec.ptr, i8*** %5, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gimp_container_add_handler(%struct._GimpContainer* %container, i8* %signame, void ()* %callback, i8* %callback_data) #3 {
entry:
  %retval = alloca i32, align 4
  %container.addr = alloca %struct._GimpContainer*, align 8
  %signame.addr = alloca i8*, align 8
  %callback.addr = alloca void ()*, align 8
  %callback_data.addr = alloca i8*, align 8
  %handler = alloca %struct.GimpContainerHandler*, align 8
  %key = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpContainer* %container, %struct._GimpContainer** %container.addr, align 8
  store i8* %signame, i8** %signame.addr, align 8
  store void ()* %callback, void ()** %callback.addr, align 8
  store i8* %callback_data, i8** %callback_data.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %1 = bitcast %struct._GimpContainer* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_container_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_container_add_handler, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i8*, i8** %signame.addr, align 8
  %cmp12 = icmp ne i8* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_container_add_handler, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %14 = load void ()*, void ()** %callback.addr, align 8
  %cmp18 = icmp ne void ()* %14, null
  br i1 %cmp18, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %do.body.17
  br label %if.end.21

if.else.20:                                       ; preds = %do.body.17
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_container_add_handler, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.21:                                        ; preds = %if.then.19
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  %15 = load i8*, i8** %signame.addr, align 8
  %call23 = call i32 @g_str_has_prefix(i8* %15, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0))
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %if.end.33, label %if.then.25

if.then.25:                                       ; preds = %do.end.22
  br label %do.body.26

do.body.26:                                       ; preds = %if.then.25
  %16 = load i8*, i8** %signame.addr, align 8
  %17 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %priv = getelementptr inbounds %struct._GimpContainer, %struct._GimpContainer* %17, i32 0, i32 1
  %18 = load %struct._GimpContainerPriv*, %struct._GimpContainerPriv** %priv, align 8
  %children_type = getelementptr inbounds %struct._GimpContainerPriv, %struct._GimpContainerPriv* %18, i32 0, i32 0
  %19 = load i64, i64* %children_type, align 8
  %call27 = call i32 @g_signal_lookup(i8* %16, i64 %19)
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %if.then.29, label %if.else.30

if.then.29:                                       ; preds = %do.body.26
  br label %if.end.31

if.else.30:                                       ; preds = %do.body.26
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_container_add_handler, i32 0, i32 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.18, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.31:                                        ; preds = %if.then.29
  br label %do.end.32

do.end.32:                                        ; preds = %if.end.31
  br label %if.end.33

if.end.33:                                        ; preds = %do.end.32, %do.end.22
  %call34 = call noalias i8* @g_slice_alloc0(i64 32)
  %20 = bitcast i8* %call34 to %struct.GimpContainerHandler*
  store %struct.GimpContainerHandler* %20, %struct.GimpContainerHandler** %handler, align 8
  %21 = load i8*, i8** %signame.addr, align 8
  %22 = load i32, i32* @gimp_container_add_handler.handler_id, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* @gimp_container_add_handler.handler_id, align 4
  %call35 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i8* %21, i32 %22)
  store i8* %call35, i8** %key, align 8
  %23 = load i8*, i8** %signame.addr, align 8
  %call36 = call noalias i8* @g_strdup(i8* %23)
  %24 = load %struct.GimpContainerHandler*, %struct.GimpContainerHandler** %handler, align 8
  %signame37 = getelementptr inbounds %struct.GimpContainerHandler, %struct.GimpContainerHandler* %24, i32 0, i32 0
  store i8* %call36, i8** %signame37, align 8
  %25 = load void ()*, void ()** %callback.addr, align 8
  %26 = load %struct.GimpContainerHandler*, %struct.GimpContainerHandler** %handler, align 8
  %callback38 = getelementptr inbounds %struct.GimpContainerHandler, %struct.GimpContainerHandler* %26, i32 0, i32 1
  store void ()* %25, void ()** %callback38, align 8
  %27 = load i8*, i8** %callback_data.addr, align 8
  %28 = load %struct.GimpContainerHandler*, %struct.GimpContainerHandler** %handler, align 8
  %callback_data39 = getelementptr inbounds %struct.GimpContainerHandler, %struct.GimpContainerHandler* %28, i32 0, i32 2
  store i8* %27, i8** %callback_data39, align 8
  %29 = load i8*, i8** %key, align 8
  %call40 = call i32 @g_quark_from_string(i8* %29)
  %30 = load %struct.GimpContainerHandler*, %struct.GimpContainerHandler** %handler, align 8
  %quark = getelementptr inbounds %struct.GimpContainerHandler, %struct.GimpContainerHandler* %30, i32 0, i32 3
  store i32 %call40, i32* %quark, align 4
  %31 = load i8*, i8** %key, align 8
  call void @g_free(i8* %31)
  %32 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %priv41 = getelementptr inbounds %struct._GimpContainer, %struct._GimpContainer* %32, i32 0, i32 1
  %33 = load %struct._GimpContainerPriv*, %struct._GimpContainerPriv** %priv41, align 8
  %handlers = getelementptr inbounds %struct._GimpContainerPriv, %struct._GimpContainerPriv* %33, i32 0, i32 3
  %34 = load %struct._GList*, %struct._GList** %handlers, align 8
  %35 = load %struct.GimpContainerHandler*, %struct.GimpContainerHandler** %handler, align 8
  %36 = bitcast %struct.GimpContainerHandler* %35 to i8*
  %call42 = call %struct._GList* @g_list_prepend(%struct._GList* %34, i8* %36)
  %37 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %priv43 = getelementptr inbounds %struct._GimpContainer, %struct._GimpContainer* %37, i32 0, i32 1
  %38 = load %struct._GimpContainerPriv*, %struct._GimpContainerPriv** %priv43, align 8
  %handlers44 = getelementptr inbounds %struct._GimpContainerPriv, %struct._GimpContainerPriv* %38, i32 0, i32 3
  store %struct._GList* %call42, %struct._GList** %handlers44, align 8
  %39 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %40 = load %struct.GimpContainerHandler*, %struct.GimpContainerHandler** %handler, align 8
  %41 = bitcast %struct.GimpContainerHandler* %40 to i8*
  call void @gimp_container_foreach(%struct._GimpContainer* %39, void (i8*, i8*)* bitcast (void (%struct._GimpObject*, %struct.GimpContainerHandler*)* @gimp_container_add_handler_foreach_func to void (i8*, i8*)*), i8* %41)
  %42 = load %struct.GimpContainerHandler*, %struct.GimpContainerHandler** %handler, align 8
  %quark45 = getelementptr inbounds %struct.GimpContainerHandler, %struct.GimpContainerHandler* %42, i32 0, i32 3
  %43 = load i32, i32* %quark45, align 4
  store i32 %43, i32* %retval
  br label %return

return:                                           ; preds = %if.end.33, %if.else.30, %if.else.20, %if.else.14, %if.else.9
  %44 = load i32, i32* %retval
  ret i32 %44
}

declare i32 @g_str_has_prefix(i8*, i8*) #1

declare i32 @g_signal_lookup(i8*, i64) #1

declare noalias i8* @g_slice_alloc0(i64) #1

declare noalias i8* @g_strdup_printf(i8*, ...) #1

declare noalias i8* @g_strdup(i8*) #1

declare i32 @g_quark_from_string(i8*) #1

declare void @g_free(i8*) #1

declare %struct._GList* @g_list_prepend(%struct._GList*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_container_add_handler_foreach_func(%struct._GimpObject* %object, %struct.GimpContainerHandler* %handler) #3 {
entry:
  %object.addr = alloca %struct._GimpObject*, align 8
  %handler.addr = alloca %struct.GimpContainerHandler*, align 8
  %handler_id = alloca i64, align 8
  store %struct._GimpObject* %object, %struct._GimpObject** %object.addr, align 8
  store %struct.GimpContainerHandler* %handler, %struct.GimpContainerHandler** %handler.addr, align 8
  %0 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %1 = bitcast %struct._GimpObject* %0 to i8*
  %2 = load %struct.GimpContainerHandler*, %struct.GimpContainerHandler** %handler.addr, align 8
  %signame = getelementptr inbounds %struct.GimpContainerHandler, %struct.GimpContainerHandler* %2, i32 0, i32 0
  %3 = load i8*, i8** %signame, align 8
  %4 = load %struct.GimpContainerHandler*, %struct.GimpContainerHandler** %handler.addr, align 8
  %callback = getelementptr inbounds %struct.GimpContainerHandler, %struct.GimpContainerHandler* %4, i32 0, i32 1
  %5 = load void ()*, void ()** %callback, align 8
  %6 = load %struct.GimpContainerHandler*, %struct.GimpContainerHandler** %handler.addr, align 8
  %callback_data = getelementptr inbounds %struct.GimpContainerHandler, %struct.GimpContainerHandler* %6, i32 0, i32 2
  %7 = load i8*, i8** %callback_data, align 8
  %call = call i64 @g_signal_connect_data(i8* %1, i8* %3, void ()* %5, i8* %7, void (i8*, %struct._GClosure*)* null, i32 0)
  store i64 %call, i64* %handler_id, align 8
  %8 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %9 = bitcast %struct._GimpObject* %8 to %struct._GTypeInstance*
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 80)
  %10 = bitcast %struct._GTypeInstance* %call1 to %struct._GObject*
  %11 = load %struct.GimpContainerHandler*, %struct.GimpContainerHandler** %handler.addr, align 8
  %quark = getelementptr inbounds %struct.GimpContainerHandler, %struct.GimpContainerHandler* %11, i32 0, i32 3
  %12 = load i32, i32* %quark, align 4
  %13 = load i64, i64* %handler_id, align 8
  %14 = inttoptr i64 %13 to i8*
  call void @g_object_set_qdata(%struct._GObject* %10, i32 %12, i8* %14)
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_container_remove_handler(%struct._GimpContainer* %container, i32 %id) #3 {
entry:
  %container.addr = alloca %struct._GimpContainer*, align 8
  %id.addr = alloca i32, align 4
  %handler = alloca %struct.GimpContainerHandler*, align 8
  %list = alloca %struct._GList*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpContainer* %container, %struct._GimpContainer** %container.addr, align 8
  store i32 %id, i32* %id.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %1 = bitcast %struct._GimpContainer* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_container_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_container_remove_handler, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0))
  br label %do.end.31

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i32, i32* %id.addr, align 4
  %cmp12 = icmp ne i32 %13, 0
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_container_remove_handler, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i32 0, i32 0))
  br label %do.end.31

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %priv = getelementptr inbounds %struct._GimpContainer, %struct._GimpContainer* %14, i32 0, i32 1
  %15 = load %struct._GimpContainerPriv*, %struct._GimpContainerPriv** %priv, align 8
  %handlers = getelementptr inbounds %struct._GimpContainerPriv, %struct._GimpContainerPriv* %15, i32 0, i32 3
  %16 = load %struct._GList*, %struct._GList** %handlers, align 8
  store %struct._GList* %16, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %do.end.16
  %17 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool17 = icmp ne %struct._GList* %17, null
  br i1 %tobool17, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %18, i32 0, i32 0
  %19 = load i8*, i8** %data, align 8
  %20 = bitcast i8* %19 to %struct.GimpContainerHandler*
  store %struct.GimpContainerHandler* %20, %struct.GimpContainerHandler** %handler, align 8
  %21 = load %struct.GimpContainerHandler*, %struct.GimpContainerHandler** %handler, align 8
  %quark = getelementptr inbounds %struct.GimpContainerHandler, %struct.GimpContainerHandler* %21, i32 0, i32 3
  %22 = load i32, i32* %quark, align 4
  %23 = load i32, i32* %id.addr, align 4
  %cmp18 = icmp eq i32 %22, %23
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %for.body
  br label %for.end

if.end.20:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.20
  %24 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool21 = icmp ne %struct._GList* %24, null
  br i1 %tobool21, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %25 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %25, i32 0, i32 1
  %26 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %26, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.19, %for.cond
  %27 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool22 = icmp ne %struct._GList* %27, null
  br i1 %tobool22, label %if.end.24, label %if.then.23

if.then.23:                                       ; preds = %for.end
  %28 = load i32, i32* %id.addr, align 4
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_container_remove_handler, i32 0, i32 0), i32 %28)
  br label %do.end.31

if.end.24:                                        ; preds = %for.end
  %29 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %30 = load %struct.GimpContainerHandler*, %struct.GimpContainerHandler** %handler, align 8
  %31 = bitcast %struct.GimpContainerHandler* %30 to i8*
  call void @gimp_container_foreach(%struct._GimpContainer* %29, void (i8*, i8*)* bitcast (void (%struct._GimpObject*, %struct.GimpContainerHandler*)* @gimp_container_remove_handler_foreach_func to void (i8*, i8*)*), i8* %31)
  %32 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %priv25 = getelementptr inbounds %struct._GimpContainer, %struct._GimpContainer* %32, i32 0, i32 1
  %33 = load %struct._GimpContainerPriv*, %struct._GimpContainerPriv** %priv25, align 8
  %handlers26 = getelementptr inbounds %struct._GimpContainerPriv, %struct._GimpContainerPriv* %33, i32 0, i32 3
  %34 = load %struct._GList*, %struct._GList** %handlers26, align 8
  %35 = load %struct.GimpContainerHandler*, %struct.GimpContainerHandler** %handler, align 8
  %36 = bitcast %struct.GimpContainerHandler* %35 to i8*
  %call27 = call %struct._GList* @g_list_remove(%struct._GList* %34, i8* %36)
  %37 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %priv28 = getelementptr inbounds %struct._GimpContainer, %struct._GimpContainer* %37, i32 0, i32 1
  %38 = load %struct._GimpContainerPriv*, %struct._GimpContainerPriv** %priv28, align 8
  %handlers29 = getelementptr inbounds %struct._GimpContainerPriv, %struct._GimpContainerPriv* %38, i32 0, i32 3
  store %struct._GList* %call27, %struct._GList** %handlers29, align 8
  %39 = load %struct.GimpContainerHandler*, %struct.GimpContainerHandler** %handler, align 8
  %signame = getelementptr inbounds %struct.GimpContainerHandler, %struct.GimpContainerHandler* %39, i32 0, i32 0
  %40 = load i8*, i8** %signame, align 8
  call void @g_free(i8* %40)
  br label %do.body.30

do.body.30:                                       ; preds = %if.end.24
  %41 = load %struct.GimpContainerHandler*, %struct.GimpContainerHandler** %handler, align 8
  %42 = bitcast %struct.GimpContainerHandler* %41 to i8*
  call void @g_slice_free1(i64 32, i8* %42)
  br label %do.end.31

do.end.31:                                        ; preds = %if.else.9, %if.else.14, %if.then.23, %do.body.30
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_container_remove_handler_foreach_func(%struct._GimpObject* %object, %struct.GimpContainerHandler* %handler) #3 {
entry:
  %object.addr = alloca %struct._GimpObject*, align 8
  %handler.addr = alloca %struct.GimpContainerHandler*, align 8
  %handler_id = alloca i64, align 8
  store %struct._GimpObject* %object, %struct._GimpObject** %object.addr, align 8
  store %struct.GimpContainerHandler* %handler, %struct.GimpContainerHandler** %handler.addr, align 8
  %0 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %1 = bitcast %struct._GimpObject* %0 to %struct._GTypeInstance*
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 80)
  %2 = bitcast %struct._GTypeInstance* %call to %struct._GObject*
  %3 = load %struct.GimpContainerHandler*, %struct.GimpContainerHandler** %handler.addr, align 8
  %quark = getelementptr inbounds %struct.GimpContainerHandler, %struct.GimpContainerHandler* %3, i32 0, i32 3
  %4 = load i32, i32* %quark, align 4
  %call1 = call i8* @g_object_get_qdata(%struct._GObject* %2, i32 %4)
  %5 = ptrtoint i8* %call1 to i64
  %conv = trunc i64 %5 to i32
  %conv2 = zext i32 %conv to i64
  store i64 %conv2, i64* %handler_id, align 8
  %6 = load i64, i64* %handler_id, align 8
  %tobool = icmp ne i64 %6, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %8 = bitcast %struct._GimpObject* %7 to i8*
  %9 = load i64, i64* %handler_id, align 8
  call void @g_signal_handler_disconnect(i8* %8, i64 %9)
  %10 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %11 = bitcast %struct._GimpObject* %10 to %struct._GTypeInstance*
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 80)
  %12 = bitcast %struct._GTypeInstance* %call3 to %struct._GObject*
  %13 = load %struct.GimpContainerHandler*, %struct.GimpContainerHandler** %handler.addr, align 8
  %quark4 = getelementptr inbounds %struct.GimpContainerHandler, %struct.GimpContainerHandler* %13, i32 0, i32 3
  %14 = load i32, i32* %quark4, align 4
  call void @g_object_set_qdata(%struct._GObject* %12, i32 %14, i8* null)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare %struct._GList* @g_list_remove(%struct._GList*, i8*) #1

declare void @g_slice_free1(i64, i8*) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_container_class_init(%struct._GimpContainerClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpContainerClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %gimp_object_class = alloca %struct._GimpObjectClass*, align 8
  store %struct._GimpContainerClass* %klass, %struct._GimpContainerClass** %klass.addr, align 8
  %0 = load %struct._GimpContainerClass*, %struct._GimpContainerClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpContainerClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpContainerClass*, %struct._GimpContainerClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpContainerClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gimp_object_get_type() #6
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GimpObjectClass*
  store %struct._GimpObjectClass* %5, %struct._GimpObjectClass** %gimp_object_class, align 8
  %6 = load %struct._GimpContainerClass*, %struct._GimpContainerClass** %klass.addr, align 8
  %7 = bitcast %struct._GimpContainerClass* %6 to %struct._GTypeClass*
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %7, i32 0, i32 0
  %8 = load i64, i64* %g_type, align 8
  %call3 = call i64 @gimp_object_get_type() #6
  %call4 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i32 0, i32 0), i64 %8, i32 1, i32 160, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @g_cclosure_marshal_VOID__OBJECT, i64 4, i32 1, i64 %call3)
  store i32 %call4, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @container_signals, i32 0, i64 0), align 4
  %9 = load %struct._GimpContainerClass*, %struct._GimpContainerClass** %klass.addr, align 8
  %10 = bitcast %struct._GimpContainerClass* %9 to %struct._GTypeClass*
  %g_type5 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %10, i32 0, i32 0
  %11 = load i64, i64* %g_type5, align 8
  %call6 = call i64 @gimp_object_get_type() #6
  %call7 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i32 0, i32 0), i64 %11, i32 1, i32 168, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @g_cclosure_marshal_VOID__OBJECT, i64 4, i32 1, i64 %call6)
  store i32 %call7, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @container_signals, i32 0, i64 1), align 4
  %12 = load %struct._GimpContainerClass*, %struct._GimpContainerClass** %klass.addr, align 8
  %13 = bitcast %struct._GimpContainerClass* %12 to %struct._GTypeClass*
  %g_type8 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %13, i32 0, i32 0
  %14 = load i64, i64* %g_type8, align 8
  %call9 = call i64 @gimp_object_get_type() #6
  %call10 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i32 0, i32 0), i64 %14, i32 1, i32 176, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @gimp_marshal_VOID__OBJECT_INT, i64 4, i32 2, i64 %call9, i64 24)
  store i32 %call10, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @container_signals, i32 0, i64 2), align 4
  %15 = load %struct._GimpContainerClass*, %struct._GimpContainerClass** %klass.addr, align 8
  %16 = bitcast %struct._GimpContainerClass* %15 to %struct._GTypeClass*
  %g_type11 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %16, i32 0, i32 0
  %17 = load i64, i64* %g_type11, align 8
  %call12 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i32 0, i32 0), i64 %17, i32 2, i32 184, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @g_cclosure_marshal_VOID__VOID, i64 4, i32 0)
  store i32 %call12, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @container_signals, i32 0, i64 3), align 4
  %18 = load %struct._GimpContainerClass*, %struct._GimpContainerClass** %klass.addr, align 8
  %19 = bitcast %struct._GimpContainerClass* %18 to %struct._GTypeClass*
  %g_type13 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %19, i32 0, i32 0
  %20 = load i64, i64* %g_type13, align 8
  %call14 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i32 0, i32 0), i64 %20, i32 2, i32 192, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @g_cclosure_marshal_VOID__VOID, i64 4, i32 0)
  store i32 %call14, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @container_signals, i32 0, i64 4), align 4
  %21 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %21, i32 0, i32 5
  store void (%struct._GObject*)* @gimp_container_dispose, void (%struct._GObject*)** %dispose, align 8
  %22 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %22, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_container_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %23 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %23, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_container_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %24 = load %struct._GimpObjectClass*, %struct._GimpObjectClass** %gimp_object_class, align 8
  %get_memsize = getelementptr inbounds %struct._GimpObjectClass, %struct._GimpObjectClass* %24, i32 0, i32 3
  store i64 (%struct._GimpObject*, i64*)* @gimp_container_get_memsize, i64 (%struct._GimpObject*, i64*)** %get_memsize, align 8
  %25 = load %struct._GimpContainerClass*, %struct._GimpContainerClass** %klass.addr, align 8
  %add = getelementptr inbounds %struct._GimpContainerClass, %struct._GimpContainerClass* %25, i32 0, i32 1
  store void (%struct._GimpContainer*, %struct._GimpObject*)* @gimp_container_real_add, void (%struct._GimpContainer*, %struct._GimpObject*)** %add, align 8
  %26 = load %struct._GimpContainerClass*, %struct._GimpContainerClass** %klass.addr, align 8
  %remove = getelementptr inbounds %struct._GimpContainerClass, %struct._GimpContainerClass* %26, i32 0, i32 2
  store void (%struct._GimpContainer*, %struct._GimpObject*)* @gimp_container_real_remove, void (%struct._GimpContainer*, %struct._GimpObject*)** %remove, align 8
  %27 = load %struct._GimpContainerClass*, %struct._GimpContainerClass** %klass.addr, align 8
  %reorder = getelementptr inbounds %struct._GimpContainerClass, %struct._GimpContainerClass* %27, i32 0, i32 3
  store void (%struct._GimpContainer*, %struct._GimpObject*, i32)* null, void (%struct._GimpContainer*, %struct._GimpObject*, i32)** %reorder, align 8
  %28 = load %struct._GimpContainerClass*, %struct._GimpContainerClass** %klass.addr, align 8
  %freeze = getelementptr inbounds %struct._GimpContainerClass, %struct._GimpContainerClass* %28, i32 0, i32 4
  store void (%struct._GimpContainer*)* null, void (%struct._GimpContainer*)** %freeze, align 8
  %29 = load %struct._GimpContainerClass*, %struct._GimpContainerClass** %klass.addr, align 8
  %thaw = getelementptr inbounds %struct._GimpContainerClass, %struct._GimpContainerClass* %29, i32 0, i32 5
  store void (%struct._GimpContainer*)* null, void (%struct._GimpContainer*)** %thaw, align 8
  %30 = load %struct._GimpContainerClass*, %struct._GimpContainerClass** %klass.addr, align 8
  %clear = getelementptr inbounds %struct._GimpContainerClass, %struct._GimpContainerClass* %30, i32 0, i32 6
  store void (%struct._GimpContainer*)* null, void (%struct._GimpContainer*)** %clear, align 8
  %31 = load %struct._GimpContainerClass*, %struct._GimpContainerClass** %klass.addr, align 8
  %have = getelementptr inbounds %struct._GimpContainerClass, %struct._GimpContainerClass* %31, i32 0, i32 7
  store i32 (%struct._GimpContainer*, %struct._GimpObject*)* null, i32 (%struct._GimpContainer*, %struct._GimpObject*)** %have, align 8
  %32 = load %struct._GimpContainerClass*, %struct._GimpContainerClass** %klass.addr, align 8
  %foreach = getelementptr inbounds %struct._GimpContainerClass, %struct._GimpContainerClass* %32, i32 0, i32 8
  store void (%struct._GimpContainer*, void (i8*, i8*)*, i8*)* null, void (%struct._GimpContainer*, void (i8*, i8*)*, i8*)** %foreach, align 8
  %33 = load %struct._GimpContainerClass*, %struct._GimpContainerClass** %klass.addr, align 8
  %get_child_by_name = getelementptr inbounds %struct._GimpContainerClass, %struct._GimpContainerClass* %33, i32 0, i32 9
  store %struct._GimpObject* (%struct._GimpContainer*, i8*)* null, %struct._GimpObject* (%struct._GimpContainer*, i8*)** %get_child_by_name, align 8
  %34 = load %struct._GimpContainerClass*, %struct._GimpContainerClass** %klass.addr, align 8
  %get_child_by_index = getelementptr inbounds %struct._GimpContainerClass, %struct._GimpContainerClass* %34, i32 0, i32 10
  store %struct._GimpObject* (%struct._GimpContainer*, i32)* null, %struct._GimpObject* (%struct._GimpContainer*, i32)** %get_child_by_index, align 8
  %35 = load %struct._GimpContainerClass*, %struct._GimpContainerClass** %klass.addr, align 8
  %get_child_index = getelementptr inbounds %struct._GimpContainerClass, %struct._GimpContainerClass* %35, i32 0, i32 11
  store i32 (%struct._GimpContainer*, %struct._GimpObject*)* null, i32 (%struct._GimpContainer*, %struct._GimpObject*)** %get_child_index, align 8
  %36 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call15 = call i64 @gimp_object_get_type() #6
  %call16 = call %struct._GParamSpec* @g_param_spec_gtype(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.27, i32 0, i32 0), i8* null, i8* null, i64 %call15, i32 235)
  call void @g_object_class_install_property(%struct._GObjectClass* %36, i32 1, %struct._GParamSpec* %call16)
  %37 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call17 = call i64 @gimp_container_policy_get_type() #6
  %call18 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i32 0, i32 0), i8* null, i8* null, i64 %call17, i32 0, i32 235)
  call void @g_object_class_install_property(%struct._GObjectClass* %37, i32 2, %struct._GParamSpec* %call18)
  %38 = load %struct._GimpContainerClass*, %struct._GimpContainerClass** %klass.addr, align 8
  %39 = bitcast %struct._GimpContainerClass* %38 to i8*
  call void @g_type_class_add_private(i8* %39, i64 32)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

declare i32 @g_signal_new(i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) #1

declare void @g_cclosure_marshal_VOID__OBJECT(%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*) #1

declare void @gimp_marshal_VOID__OBJECT_INT(%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*) #1

declare void @g_cclosure_marshal_VOID__VOID(%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_container_dispose(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %container = alloca %struct._GimpContainer*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_container_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpContainer*
  store %struct._GimpContainer* %2, %struct._GimpContainer** %container, align 8
  %3 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  call void @gimp_container_clear(%struct._GimpContainer* %3)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %4 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %priv = getelementptr inbounds %struct._GimpContainer, %struct._GimpContainer* %4, i32 0, i32 1
  %5 = load %struct._GimpContainerPriv*, %struct._GimpContainerPriv** %priv, align 8
  %handlers = getelementptr inbounds %struct._GimpContainerPriv, %struct._GimpContainerPriv* %5, i32 0, i32 3
  %6 = load %struct._GList*, %struct._GList** %handlers, align 8
  %tobool = icmp ne %struct._GList* %6, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %8 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %priv2 = getelementptr inbounds %struct._GimpContainer, %struct._GimpContainer* %8, i32 0, i32 1
  %9 = load %struct._GimpContainerPriv*, %struct._GimpContainerPriv** %priv2, align 8
  %handlers3 = getelementptr inbounds %struct._GimpContainerPriv, %struct._GimpContainerPriv* %9, i32 0, i32 3
  %10 = load %struct._GList*, %struct._GList** %handlers3, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %10, i32 0, i32 0
  %11 = load i8*, i8** %data, align 8
  %12 = bitcast i8* %11 to %struct.GimpContainerHandler*
  %quark = getelementptr inbounds %struct.GimpContainerHandler, %struct.GimpContainerHandler* %12, i32 0, i32 3
  %13 = load i32, i32* %quark, align 4
  call void @gimp_container_remove_handler(%struct._GimpContainer* %7, i32 %13)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %14 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %priv4 = getelementptr inbounds %struct._GimpContainer, %struct._GimpContainer* %14, i32 0, i32 1
  %15 = load %struct._GimpContainerPriv*, %struct._GimpContainerPriv** %priv4, align 8
  %children_type = getelementptr inbounds %struct._GimpContainerPriv, %struct._GimpContainerPriv* %15, i32 0, i32 0
  %16 = load i64, i64* %children_type, align 8
  %cmp = icmp ne i64 %16, 4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  %17 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %priv5 = getelementptr inbounds %struct._GimpContainer, %struct._GimpContainer* %17, i32 0, i32 1
  %18 = load %struct._GimpContainerPriv*, %struct._GimpContainerPriv** %priv5, align 8
  %children_type6 = getelementptr inbounds %struct._GimpContainerPriv, %struct._GimpContainerPriv* %18, i32 0, i32 0
  %19 = load i64, i64* %children_type6, align 8
  %call7 = call i8* @g_type_class_peek(i64 %19)
  call void @g_type_class_unref(i8* %call7)
  %20 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %priv8 = getelementptr inbounds %struct._GimpContainer, %struct._GimpContainer* %20, i32 0, i32 1
  %21 = load %struct._GimpContainerPriv*, %struct._GimpContainerPriv** %priv8, align 8
  %children_type9 = getelementptr inbounds %struct._GimpContainerPriv, %struct._GimpContainerPriv* %21, i32 0, i32 0
  store i64 4, i64* %children_type9, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end
  %22 = load i8*, i8** @gimp_container_parent_class, align 8
  %23 = bitcast i8* %22 to %struct._GTypeClass*
  %call10 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %23, i64 80)
  %24 = bitcast %struct._GTypeClass* %call10 to %struct._GObjectClass*
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %24, i32 0, i32 5
  %25 = load void (%struct._GObject*)*, void (%struct._GObject*)** %dispose, align 8
  %26 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %25(%struct._GObject* %26)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_container_set_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %container = alloca %struct._GimpContainer*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_container_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpContainer*
  store %struct._GimpContainer* %2, %struct._GimpContainer** %container, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.6
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call2 = call i64 @g_value_get_gtype(%struct._GValue* %4)
  %5 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %priv = getelementptr inbounds %struct._GimpContainer, %struct._GimpContainer* %5, i32 0, i32 1
  %6 = load %struct._GimpContainerPriv*, %struct._GimpContainerPriv** %priv, align 8
  %children_type = getelementptr inbounds %struct._GimpContainerPriv, %struct._GimpContainerPriv* %6, i32 0, i32 0
  store i64 %call2, i64* %children_type, align 8
  %7 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %priv3 = getelementptr inbounds %struct._GimpContainer, %struct._GimpContainer* %7, i32 0, i32 1
  %8 = load %struct._GimpContainerPriv*, %struct._GimpContainerPriv** %priv3, align 8
  %children_type4 = getelementptr inbounds %struct._GimpContainerPriv, %struct._GimpContainerPriv* %8, i32 0, i32 0
  %9 = load i64, i64* %children_type4, align 8
  %call5 = call i8* @g_type_class_ref(i64 %9)
  br label %sw.epilog

sw.bb.6:                                          ; preds = %entry
  %10 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call7 = call i32 @g_value_get_enum(%struct._GValue* %10)
  %11 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %priv8 = getelementptr inbounds %struct._GimpContainer, %struct._GimpContainer* %11, i32 0, i32 1
  %12 = load %struct._GimpContainerPriv*, %struct._GimpContainerPriv** %priv8, align 8
  %policy = getelementptr inbounds %struct._GimpContainerPriv, %struct._GimpContainerPriv* %12, i32 0, i32 1
  store i32 %call7, i32* %policy, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %13 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %13, %struct._GObject** %_glib__object, align 8
  %14 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %14, %struct._GParamSpec** %_glib__pspec, align 8
  %15 = load i32, i32* %property_id.addr, align 4
  store i32 %15, i32* %_glib__property_id, align 4
  %16 = load i32, i32* %_glib__property_id, align 4
  %17 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %17, i32 0, i32 1
  %18 = load i8*, i8** %name, align 8
  %19 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %20 = bitcast %struct._GParamSpec* %19 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %20, i32 0, i32 0
  %21 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %21, i32 0, i32 0
  %22 = load i64, i64* %g_type, align 8
  %call9 = call i8* @g_type_name(i64 %22)
  %23 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %24 = bitcast %struct._GObject* %23 to %struct._GTypeInstance*
  %g_class10 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %24, i32 0, i32 0
  %25 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class10, align 8
  %g_type11 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %25, i32 0, i32 0
  %26 = load i64, i64* %g_type11, align 8
  %call12 = call i8* @g_type_name(i64 %26)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.30, i32 0, i32 0), i32 278, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.31, i32 0, i32 0), i32 %16, i8* %18, i8* %call9, i8* %call12)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.6, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_container_get_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %container = alloca %struct._GimpContainer*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_container_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpContainer*
  store %struct._GimpContainer* %2, %struct._GimpContainer** %container, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.2
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %5 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %priv = getelementptr inbounds %struct._GimpContainer, %struct._GimpContainer* %5, i32 0, i32 1
  %6 = load %struct._GimpContainerPriv*, %struct._GimpContainerPriv** %priv, align 8
  %children_type = getelementptr inbounds %struct._GimpContainerPriv, %struct._GimpContainerPriv* %6, i32 0, i32 0
  %7 = load i64, i64* %children_type, align 8
  call void @g_value_set_gtype(%struct._GValue* %4, i64 %7)
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %8 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %9 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %priv3 = getelementptr inbounds %struct._GimpContainer, %struct._GimpContainer* %9, i32 0, i32 1
  %10 = load %struct._GimpContainerPriv*, %struct._GimpContainerPriv** %priv3, align 8
  %policy = getelementptr inbounds %struct._GimpContainerPriv, %struct._GimpContainerPriv* %10, i32 0, i32 1
  %11 = load i32, i32* %policy, align 4
  call void @g_value_set_enum(%struct._GValue* %8, i32 %11)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %12 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %12, %struct._GObject** %_glib__object, align 8
  %13 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %13, %struct._GParamSpec** %_glib__pspec, align 8
  %14 = load i32, i32* %property_id.addr, align 4
  store i32 %14, i32* %_glib__property_id, align 4
  %15 = load i32, i32* %_glib__property_id, align 4
  %16 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %16, i32 0, i32 1
  %17 = load i8*, i8** %name, align 8
  %18 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %19 = bitcast %struct._GParamSpec* %18 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %19, i32 0, i32 0
  %20 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %20, i32 0, i32 0
  %21 = load i64, i64* %g_type, align 8
  %call4 = call i8* @g_type_name(i64 %21)
  %22 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %23 = bitcast %struct._GObject* %22 to %struct._GTypeInstance*
  %g_class5 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %23, i32 0, i32 0
  %24 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class5, align 8
  %g_type6 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %24, i32 0, i32 0
  %25 = load i64, i64* %g_type6, align 8
  %call7 = call i8* @g_type_name(i64 %25)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.30, i32 0, i32 0), i32 300, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.31, i32 0, i32 0), i32 %15, i8* %17, i8* %call4, i8* %call7)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.2, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal i64 @gimp_container_get_memsize(%struct._GimpObject* %object, i64* %gui_size) #3 {
entry:
  %object.addr = alloca %struct._GimpObject*, align 8
  %gui_size.addr = alloca i64*, align 8
  %container = alloca %struct._GimpContainer*, align 8
  %memsize = alloca i64, align 8
  %list = alloca %struct._GList*, align 8
  %handler = alloca %struct.GimpContainerHandler*, align 8
  store %struct._GimpObject* %object, %struct._GimpObject** %object.addr, align 8
  store i64* %gui_size, i64** %gui_size.addr, align 8
  %0 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %1 = bitcast %struct._GimpObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_container_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpContainer*
  store %struct._GimpContainer* %2, %struct._GimpContainer** %container, align 8
  store i64 0, i64* %memsize, align 8
  %3 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %priv = getelementptr inbounds %struct._GimpContainer, %struct._GimpContainer* %3, i32 0, i32 1
  %4 = load %struct._GimpContainerPriv*, %struct._GimpContainerPriv** %priv, align 8
  %handlers = getelementptr inbounds %struct._GimpContainerPriv, %struct._GimpContainerPriv* %4, i32 0, i32 3
  %5 = load %struct._GList*, %struct._GList** %handlers, align 8
  store %struct._GList* %5, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %entry
  %6 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool = icmp ne %struct._GList* %6, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %7, i32 0, i32 0
  %8 = load i8*, i8** %data, align 8
  %9 = bitcast i8* %8 to %struct.GimpContainerHandler*
  store %struct.GimpContainerHandler* %9, %struct.GimpContainerHandler** %handler, align 8
  %10 = load %struct.GimpContainerHandler*, %struct.GimpContainerHandler** %handler, align 8
  %signame = getelementptr inbounds %struct.GimpContainerHandler, %struct.GimpContainerHandler* %10, i32 0, i32 0
  %11 = load i8*, i8** %signame, align 8
  %call2 = call i64 @gimp_string_get_memsize(i8* %11)
  %add = add i64 56, %call2
  %12 = load i64, i64* %memsize, align 8
  %add3 = add i64 %12, %add
  store i64 %add3, i64* %memsize, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool4 = icmp ne %struct._GList* %13, null
  br i1 %tobool4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %14 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %14, i32 0, i32 1
  %15 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %15, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %16 = load i64, i64* %memsize, align 8
  %17 = load i8*, i8** @gimp_container_parent_class, align 8
  %18 = bitcast i8* %17 to %struct._GTypeClass*
  %call5 = call i64 @gimp_object_get_type() #6
  %call6 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %18, i64 %call5)
  %19 = bitcast %struct._GTypeClass* %call6 to %struct._GimpObjectClass*
  %get_memsize = getelementptr inbounds %struct._GimpObjectClass, %struct._GimpObjectClass* %19, i32 0, i32 3
  %20 = load i64 (%struct._GimpObject*, i64*)*, i64 (%struct._GimpObject*, i64*)** %get_memsize, align 8
  %21 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %22 = load i64*, i64** %gui_size.addr, align 8
  %call7 = call i64 %20(%struct._GimpObject* %21, i64* %22)
  %add8 = add nsw i64 %16, %call7
  ret i64 %add8
}

; Function Attrs: nounwind uwtable
define internal void @gimp_container_real_add(%struct._GimpContainer* %container, %struct._GimpObject* %object) #3 {
entry:
  %container.addr = alloca %struct._GimpContainer*, align 8
  %object.addr = alloca %struct._GimpObject*, align 8
  store %struct._GimpContainer* %container, %struct._GimpContainer** %container.addr, align 8
  store %struct._GimpObject* %object, %struct._GimpObject** %object.addr, align 8
  %0 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %priv = getelementptr inbounds %struct._GimpContainer, %struct._GimpContainer* %0, i32 0, i32 1
  %1 = load %struct._GimpContainerPriv*, %struct._GimpContainerPriv** %priv, align 8
  %n_children = getelementptr inbounds %struct._GimpContainerPriv, %struct._GimpContainerPriv* %1, i32 0, i32 2
  %2 = load i32, i32* %n_children, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %n_children, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_container_real_remove(%struct._GimpContainer* %container, %struct._GimpObject* %object) #3 {
entry:
  %container.addr = alloca %struct._GimpContainer*, align 8
  %object.addr = alloca %struct._GimpObject*, align 8
  store %struct._GimpContainer* %container, %struct._GimpContainer** %container.addr, align 8
  store %struct._GimpObject* %object, %struct._GimpObject** %object.addr, align 8
  %0 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %priv = getelementptr inbounds %struct._GimpContainer, %struct._GimpContainer* %0, i32 0, i32 1
  %1 = load %struct._GimpContainerPriv*, %struct._GimpContainerPriv** %priv, align 8
  %n_children = getelementptr inbounds %struct._GimpContainerPriv, %struct._GimpContainerPriv* %1, i32 0, i32 2
  %2 = load i32, i32* %n_children, align 4
  %dec = add nsw i32 %2, -1
  store i32 %dec, i32* %n_children, align 4
  ret void
}

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_gtype(i8*, i8*, i8*, i64, i32) #1

declare %struct._GParamSpec* @g_param_spec_enum(i8*, i8*, i8*, i64, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_container_policy_get_type() #2

declare void @g_type_class_add_private(i8*, i64) #1

declare void @g_type_class_unref(i8*) #1

declare i8* @g_type_class_peek(i64) #1

declare i64 @g_value_get_gtype(%struct._GValue*) #1

declare i8* @g_type_class_ref(i64) #1

declare i32 @g_value_get_enum(%struct._GValue*) #1

declare i8* @g_type_name(i64) #1

declare void @g_value_set_gtype(%struct._GValue*, i64) #1

declare void @g_value_set_enum(%struct._GValue*, i32) #1

declare i64 @gimp_string_get_memsize(i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_container_serialize(%struct._GimpConfig* %config, %struct._GimpConfigWriter* %writer, i8* %data) #3 {
entry:
  %config.addr = alloca %struct._GimpConfig*, align 8
  %writer.addr = alloca %struct._GimpConfigWriter*, align 8
  %data.addr = alloca i8*, align 8
  %container = alloca %struct._GimpContainer*, align 8
  %serialize_data = alloca %struct.SerializeData, align 8
  store %struct._GimpConfig* %config, %struct._GimpConfig** %config.addr, align 8
  store %struct._GimpConfigWriter* %writer, %struct._GimpConfigWriter** %writer.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GimpConfig*, %struct._GimpConfig** %config.addr, align 8
  %1 = bitcast %struct._GimpConfig* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_container_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpContainer*
  store %struct._GimpContainer* %2, %struct._GimpContainer** %container, align 8
  %3 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %writer2 = getelementptr inbounds %struct.SerializeData, %struct.SerializeData* %serialize_data, i32 0, i32 0
  store %struct._GimpConfigWriter* %3, %struct._GimpConfigWriter** %writer2, align 8
  %4 = load i8*, i8** %data.addr, align 8
  %data3 = getelementptr inbounds %struct.SerializeData, %struct.SerializeData* %serialize_data, i32 0, i32 1
  store i8* %4, i8** %data3, align 8
  %success = getelementptr inbounds %struct.SerializeData, %struct.SerializeData* %serialize_data, i32 0, i32 2
  store i32 1, i32* %success, align 4
  %5 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %6 = bitcast %struct.SerializeData* %serialize_data to i8*
  call void @gimp_container_foreach(%struct._GimpContainer* %5, void (i8*, i8*)* bitcast (void (%struct._GObject*, %struct.SerializeData*)* @gimp_container_serialize_foreach to void (i8*, i8*)*), i8* %6)
  %success4 = getelementptr inbounds %struct.SerializeData, %struct.SerializeData* %serialize_data, i32 0, i32 2
  %7 = load i32, i32* %success4, align 4
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_container_deserialize(%struct._GimpConfig* %config, %struct._GScanner* %scanner, i32 %nest_level, i8* %data) #3 {
entry:
  %retval = alloca i32, align 4
  %config.addr = alloca %struct._GimpConfig*, align 8
  %scanner.addr = alloca %struct._GScanner*, align 8
  %nest_level.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %container = alloca %struct._GimpContainer*, align 8
  %token = alloca i32, align 4
  %child = alloca %struct._GimpObject*, align 8
  %type = alloca i64, align 8
  %name = alloca i8*, align 8
  %add_child = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpConfig* %config, %struct._GimpConfig** %config.addr, align 8
  store %struct._GScanner* %scanner, %struct._GScanner** %scanner.addr, align 8
  store i32 %nest_level, i32* %nest_level.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GimpConfig*, %struct._GimpConfig** %config.addr, align 8
  %1 = bitcast %struct._GimpConfig* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_container_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpContainer*
  store %struct._GimpContainer* %2, %struct._GimpContainer** %container, align 8
  store i32 40, i32* %token, align 4
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %entry
  %3 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call2 = call i32 @g_scanner_peek_next_token(%struct._GScanner* %3)
  %4 = load i32, i32* %token, align 4
  %cmp = icmp eq i32 %call2, %4
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call3 = call i32 @g_scanner_get_next_token(%struct._GScanner* %5)
  store i32 %call3, i32* %token, align 4
  %6 = load i32, i32* %token, align 4
  switch i32 %6, label %sw.default [
    i32 40, label %sw.bb
    i32 266, label %sw.bb.4
    i32 41, label %sw.bb.73
  ]

sw.bb:                                            ; preds = %while.body
  store i32 266, i32* %token, align 4
  br label %sw.epilog

sw.bb.4:                                          ; preds = %while.body
  store i8* null, i8** %name, align 8
  store i32 0, i32* %add_child, align 4
  %7 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %value = getelementptr inbounds %struct._GScanner, %struct._GScanner* %7, i32 0, i32 7
  %v_identifier = bitcast %union._GTokenValue* %value to i8**
  %8 = load i8*, i8** %v_identifier, align 8
  %call5 = call i64 @g_type_from_name(i8* %8)
  store i64 %call5, i64* %type, align 8
  %9 = load i64, i64* %type, align 8
  %tobool = icmp ne i64 %9, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb.4
  %10 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %11 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %value6 = getelementptr inbounds %struct._GScanner, %struct._GScanner* %11, i32 0, i32 7
  %v_identifier7 = bitcast %union._GTokenValue* %value6 to i8**
  %12 = load i8*, i8** %v_identifier7, align 8
  call void (%struct._GScanner*, i8*, ...) @g_scanner_error(%struct._GScanner* %10, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.33, i32 0, i32 0), i8* %12)
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %sw.bb.4
  %13 = load i64, i64* %type, align 8
  %14 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %priv = getelementptr inbounds %struct._GimpContainer, %struct._GimpContainer* %14, i32 0, i32 1
  %15 = load %struct._GimpContainerPriv*, %struct._GimpContainerPriv** %priv, align 8
  %children_type = getelementptr inbounds %struct._GimpContainerPriv, %struct._GimpContainerPriv* %15, i32 0, i32 0
  %16 = load i64, i64* %children_type, align 8
  %call8 = call i32 @g_type_is_a(i64 %13, i64 %16)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.end.16, label %if.then.10

if.then.10:                                       ; preds = %if.end
  %17 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %18 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %value11 = getelementptr inbounds %struct._GScanner, %struct._GScanner* %18, i32 0, i32 7
  %v_identifier12 = bitcast %union._GTokenValue* %value11 to i8**
  %19 = load i8*, i8** %v_identifier12, align 8
  %20 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %priv13 = getelementptr inbounds %struct._GimpContainer, %struct._GimpContainer* %20, i32 0, i32 1
  %21 = load %struct._GimpContainerPriv*, %struct._GimpContainerPriv** %priv13, align 8
  %children_type14 = getelementptr inbounds %struct._GimpContainerPriv, %struct._GimpContainerPriv* %21, i32 0, i32 0
  %22 = load i64, i64* %children_type14, align 8
  %call15 = call i8* @g_type_name(i64 %22)
  call void (%struct._GScanner*, i8*, ...) @g_scanner_error(%struct._GScanner* %17, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.34, i32 0, i32 0), i8* %19, i8* %call15)
  store i32 0, i32* %retval
  br label %return

if.end.16:                                        ; preds = %if.end
  %23 = load i64, i64* %type, align 8
  %call17 = call i64 @gimp_config_interface_get_type() #6
  %call18 = call i32 @g_type_is_a(i64 %23, i64 %call17)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.end.23, label %if.then.20

if.then.20:                                       ; preds = %if.end.16
  %24 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %25 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %value21 = getelementptr inbounds %struct._GScanner, %struct._GScanner* %25, i32 0, i32 7
  %v_identifier22 = bitcast %union._GTokenValue* %value21 to i8**
  %26 = load i8*, i8** %v_identifier22, align 8
  call void (%struct._GScanner*, i8*, ...) @g_scanner_error(%struct._GScanner* %24, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.35, i32 0, i32 0), i8* %26)
  store i32 0, i32* %retval
  br label %return

if.end.23:                                        ; preds = %if.end.16
  %27 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call24 = call i32 @gimp_scanner_parse_string(%struct._GScanner* %27, i8** %name)
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %if.end.27, label %if.then.26

if.then.26:                                       ; preds = %if.end.23
  store i32 264, i32* %token, align 4
  br label %sw.epilog

if.end.27:                                        ; preds = %if.end.23
  %28 = load i8*, i8** %name, align 8
  %tobool28 = icmp ne i8* %28, null
  br i1 %tobool28, label %if.end.31, label %if.then.29

if.then.29:                                       ; preds = %if.end.27
  %call30 = call noalias i8* @g_strdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.36, i32 0, i32 0))
  store i8* %call30, i8** %name, align 8
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.29, %if.end.27
  %29 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %30 = load i8*, i8** %name, align 8
  %call32 = call %struct._GimpObject* @gimp_container_get_child_by_name(%struct._GimpContainer* %29, i8* %30)
  store %struct._GimpObject* %call32, %struct._GimpObject** %child, align 8
  %31 = load %struct._GimpObject*, %struct._GimpObject** %child, align 8
  %tobool33 = icmp ne %struct._GimpObject* %31, null
  br i1 %tobool33, label %if.end.52, label %if.then.34

if.then.34:                                       ; preds = %if.end.31
  %32 = load i8*, i8** %data.addr, align 8
  %33 = bitcast i8* %32 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %33, %struct._GTypeInstance** %__inst, align 8
  %call35 = call i64 @gimp_get_type() #6
  store i64 %call35, i64* %__t, align 8
  %34 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool36 = icmp ne %struct._GTypeInstance* %34, null
  br i1 %tobool36, label %if.else, label %if.then.37

if.then.37:                                       ; preds = %if.then.34
  store i32 0, i32* %__r, align 4
  br label %if.end.45

if.else:                                          ; preds = %if.then.34
  %35 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %35, i32 0, i32 0
  %36 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool38 = icmp ne %struct._GTypeClass* %36, null
  br i1 %tobool38, label %land.lhs.true, label %if.else.42

land.lhs.true:                                    ; preds = %if.else
  %37 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class39 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %37, i32 0, i32 0
  %38 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class39, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %38, i32 0, i32 0
  %39 = load i64, i64* %g_type, align 8
  %40 = load i64, i64* %__t, align 8
  %cmp40 = icmp eq i64 %39, %40
  br i1 %cmp40, label %if.then.41, label %if.else.42

if.then.41:                                       ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end.44

if.else.42:                                       ; preds = %land.lhs.true, %if.else
  %41 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %42 = load i64, i64* %__t, align 8
  %call43 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %41, i64 %42) #7
  store i32 %call43, i32* %__r, align 4
  br label %if.end.44

if.end.44:                                        ; preds = %if.else.42, %if.then.41
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %if.then.37
  %43 = load i32, i32* %__r, align 4
  store i32 %43, i32* %tmp
  %44 = load i32, i32* %tmp
  %tobool46 = icmp ne i32 %44, 0
  br i1 %tobool46, label %if.then.47, label %if.else.49

if.then.47:                                       ; preds = %if.end.45
  %45 = load i64, i64* %type, align 8
  %46 = load i8*, i8** %data.addr, align 8
  %call48 = call i8* (i64, i8*, ...) @g_object_new(i64 %45, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i32 0, i32 0), i8* %46, i8* null)
  %47 = bitcast i8* %call48 to %struct._GimpObject*
  store %struct._GimpObject* %47, %struct._GimpObject** %child, align 8
  br label %if.end.51

if.else.49:                                       ; preds = %if.end.45
  %48 = load i64, i64* %type, align 8
  %call50 = call i8* (i64, i8*, ...) @g_object_new(i64 %48, i8* null)
  %49 = bitcast i8* %call50 to %struct._GimpObject*
  store %struct._GimpObject* %49, %struct._GimpObject** %child, align 8
  br label %if.end.51

if.end.51:                                        ; preds = %if.else.49, %if.then.47
  store i32 1, i32* %add_child, align 4
  br label %if.end.52

if.end.52:                                        ; preds = %if.end.51, %if.end.31
  %50 = load %struct._GimpObject*, %struct._GimpObject** %child, align 8
  %51 = load i8*, i8** %name, align 8
  call void @gimp_object_take_name(%struct._GimpObject* %50, i8* %51)
  %52 = load %struct._GimpObject*, %struct._GimpObject** %child, align 8
  %53 = bitcast %struct._GimpObject* %52 to %struct._GTypeInstance*
  %g_class53 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %53, i32 0, i32 0
  %54 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class53, align 8
  %55 = bitcast %struct._GTypeClass* %54 to i8*
  %call54 = call i64 @gimp_config_interface_get_type() #6
  %call55 = call i8* @g_type_interface_peek(i8* %55, i64 %call54)
  %56 = bitcast i8* %call55 to %struct._GimpConfigInterface*
  %deserialize = getelementptr inbounds %struct._GimpConfigInterface, %struct._GimpConfigInterface* %56, i32 0, i32 2
  %57 = load i32 (%struct._GimpConfig*, %struct._GScanner*, i32, i8*)*, i32 (%struct._GimpConfig*, %struct._GScanner*, i32, i8*)** %deserialize, align 8
  %58 = load %struct._GimpObject*, %struct._GimpObject** %child, align 8
  %59 = bitcast %struct._GimpObject* %58 to %struct._GTypeInstance*
  %call56 = call i64 @gimp_config_interface_get_type() #6
  %call57 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %59, i64 %call56)
  %60 = bitcast %struct._GTypeInstance* %call57 to %struct._GimpConfig*
  %61 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %62 = load i32, i32* %nest_level.addr, align 4
  %add = add nsw i32 %62, 1
  %call58 = call i32 %57(%struct._GimpConfig* %60, %struct._GScanner* %61, i32 %add, i8* null)
  %tobool59 = icmp ne i32 %call58, 0
  br i1 %tobool59, label %if.end.64, label %if.then.60

if.then.60:                                       ; preds = %if.end.52
  %63 = load i32, i32* %add_child, align 4
  %tobool61 = icmp ne i32 %63, 0
  br i1 %tobool61, label %if.then.62, label %if.end.63

if.then.62:                                       ; preds = %if.then.60
  %64 = load %struct._GimpObject*, %struct._GimpObject** %child, align 8
  %65 = bitcast %struct._GimpObject* %64 to i8*
  call void @g_object_unref(i8* %65)
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.62, %if.then.60
  store i32 0, i32* %retval
  br label %return

if.end.64:                                        ; preds = %if.end.52
  %66 = load i32, i32* %add_child, align 4
  %tobool65 = icmp ne i32 %66, 0
  br i1 %tobool65, label %if.then.66, label %if.end.72

if.then.66:                                       ; preds = %if.end.64
  %67 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %68 = load %struct._GimpObject*, %struct._GimpObject** %child, align 8
  %call67 = call i32 @gimp_container_add(%struct._GimpContainer* %67, %struct._GimpObject* %68)
  %69 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %priv68 = getelementptr inbounds %struct._GimpContainer, %struct._GimpContainer* %69, i32 0, i32 1
  %70 = load %struct._GimpContainerPriv*, %struct._GimpContainerPriv** %priv68, align 8
  %policy = getelementptr inbounds %struct._GimpContainerPriv, %struct._GimpContainerPriv* %70, i32 0, i32 1
  %71 = load i32, i32* %policy, align 4
  %cmp69 = icmp eq i32 %71, 0
  br i1 %cmp69, label %if.then.70, label %if.end.71

if.then.70:                                       ; preds = %if.then.66
  %72 = load %struct._GimpObject*, %struct._GimpObject** %child, align 8
  %73 = bitcast %struct._GimpObject* %72 to i8*
  call void @g_object_unref(i8* %73)
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.70, %if.then.66
  br label %if.end.72

if.end.72:                                        ; preds = %if.end.71, %if.end.64
  store i32 41, i32* %token, align 4
  br label %sw.epilog

sw.bb.73:                                         ; preds = %while.body
  store i32 40, i32* %token, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %while.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.73, %if.end.72, %if.then.26, %sw.bb
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %74 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %75 = load i32, i32* %token, align 4
  %76 = load i32, i32* %nest_level.addr, align 4
  %call74 = call i32 @gimp_config_deserialize_return(%struct._GScanner* %74, i32 %75, i32 %76)
  store i32 %call74, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.end.63, %if.then.20, %if.then.10, %if.then
  %77 = load i32, i32* %retval
  ret i32 %77
}

; Function Attrs: nounwind uwtable
define internal void @gimp_container_serialize_foreach(%struct._GObject* %object, %struct.SerializeData* %serialize_data) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %serialize_data.addr = alloca %struct.SerializeData*, align 8
  %config_iface = alloca %struct._GimpConfigInterface*, align 8
  %name = alloca i8*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store %struct.SerializeData* %serialize_data, %struct.SerializeData** %serialize_data.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %1, i32 0, i32 0
  %2 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %3 = bitcast %struct._GTypeClass* %2 to i8*
  %call = call i64 @gimp_config_interface_get_type() #6
  %call1 = call i8* @g_type_interface_peek(i8* %3, i64 %call)
  %4 = bitcast i8* %call1 to %struct._GimpConfigInterface*
  store %struct._GimpConfigInterface* %4, %struct._GimpConfigInterface** %config_iface, align 8
  %5 = load %struct._GimpConfigInterface*, %struct._GimpConfigInterface** %config_iface, align 8
  %tobool = icmp ne %struct._GimpConfigInterface* %5, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %6 = load %struct.SerializeData*, %struct.SerializeData** %serialize_data.addr, align 8
  %success = getelementptr inbounds %struct.SerializeData, %struct.SerializeData* %6, i32 0, i32 2
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct.SerializeData*, %struct.SerializeData** %serialize_data.addr, align 8
  %success2 = getelementptr inbounds %struct.SerializeData, %struct.SerializeData* %7, i32 0, i32 2
  %8 = load i32, i32* %success2, align 4
  %tobool3 = icmp ne i32 %8, 0
  br i1 %tobool3, label %if.end.5, label %if.then.4

if.then.4:                                        ; preds = %if.end
  br label %return

if.end.5:                                         ; preds = %if.end
  %9 = load %struct.SerializeData*, %struct.SerializeData** %serialize_data.addr, align 8
  %writer = getelementptr inbounds %struct.SerializeData, %struct.SerializeData* %9, i32 0, i32 0
  %10 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer, align 8
  %11 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %12 = bitcast %struct._GObject* %11 to %struct._GTypeInstance*
  %g_class6 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %12, i32 0, i32 0
  %13 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class6, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %13, i32 0, i32 0
  %14 = load i64, i64* %g_type, align 8
  %call7 = call i8* @g_type_name(i64 %14)
  call void @gimp_config_writer_open(%struct._GimpConfigWriter* %10, i8* %call7)
  %15 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %16 = bitcast %struct._GObject* %15 to i8*
  %call8 = call i8* @gimp_object_get_name(i8* %16)
  store i8* %call8, i8** %name, align 8
  %17 = load i8*, i8** %name, align 8
  %tobool9 = icmp ne i8* %17, null
  br i1 %tobool9, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %if.end.5
  %18 = load %struct.SerializeData*, %struct.SerializeData** %serialize_data.addr, align 8
  %writer11 = getelementptr inbounds %struct.SerializeData, %struct.SerializeData* %18, i32 0, i32 0
  %19 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer11, align 8
  %20 = load i8*, i8** %name, align 8
  call void @gimp_config_writer_string(%struct._GimpConfigWriter* %19, i8* %20)
  br label %if.end.13

if.else:                                          ; preds = %if.end.5
  %21 = load %struct.SerializeData*, %struct.SerializeData** %serialize_data.addr, align 8
  %writer12 = getelementptr inbounds %struct.SerializeData, %struct.SerializeData* %21, i32 0, i32 0
  %22 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer12, align 8
  call void @gimp_config_writer_print(%struct._GimpConfigWriter* %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i32 0, i32 0), i32 4)
  br label %if.end.13

if.end.13:                                        ; preds = %if.else, %if.then.10
  %23 = load %struct._GimpConfigInterface*, %struct._GimpConfigInterface** %config_iface, align 8
  %serialize = getelementptr inbounds %struct._GimpConfigInterface, %struct._GimpConfigInterface* %23, i32 0, i32 1
  %24 = load i32 (%struct._GimpConfig*, %struct._GimpConfigWriter*, i8*)*, i32 (%struct._GimpConfig*, %struct._GimpConfigWriter*, i8*)** %serialize, align 8
  %25 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %26 = bitcast %struct._GObject* %25 to %struct._GTypeInstance*
  %call14 = call i64 @gimp_config_interface_get_type() #6
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %26, i64 %call14)
  %27 = bitcast %struct._GTypeInstance* %call15 to %struct._GimpConfig*
  %28 = load %struct.SerializeData*, %struct.SerializeData** %serialize_data.addr, align 8
  %writer16 = getelementptr inbounds %struct.SerializeData, %struct.SerializeData* %28, i32 0, i32 0
  %29 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer16, align 8
  %30 = load %struct.SerializeData*, %struct.SerializeData** %serialize_data.addr, align 8
  %data = getelementptr inbounds %struct.SerializeData, %struct.SerializeData* %30, i32 0, i32 1
  %31 = load i8*, i8** %data, align 8
  %call17 = call i32 %24(%struct._GimpConfig* %27, %struct._GimpConfigWriter* %29, i8* %31)
  %32 = load %struct.SerializeData*, %struct.SerializeData** %serialize_data.addr, align 8
  %success18 = getelementptr inbounds %struct.SerializeData, %struct.SerializeData* %32, i32 0, i32 2
  store i32 %call17, i32* %success18, align 4
  %33 = load %struct.SerializeData*, %struct.SerializeData** %serialize_data.addr, align 8
  %writer19 = getelementptr inbounds %struct.SerializeData, %struct.SerializeData* %33, i32 0, i32 0
  %34 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer19, align 8
  call void @gimp_config_writer_close(%struct._GimpConfigWriter* %34)
  br label %return

return:                                           ; preds = %if.end.13, %if.then.4
  ret void
}

declare i8* @g_type_interface_peek(i8*, i64) #1

declare void @gimp_config_writer_open(%struct._GimpConfigWriter*, i8*) #1

declare i8* @gimp_object_get_name(i8*) #1

declare void @gimp_config_writer_string(%struct._GimpConfigWriter*, i8*) #1

declare void @gimp_config_writer_print(%struct._GimpConfigWriter*, i8*, i32) #1

declare void @gimp_config_writer_close(%struct._GimpConfigWriter*) #1

declare i32 @g_scanner_peek_next_token(%struct._GScanner*) #1

declare i32 @g_scanner_get_next_token(%struct._GScanner*) #1

declare i64 @g_type_from_name(i8*) #1

declare void @g_scanner_error(%struct._GScanner*, i8*, ...) #1

declare i32 @g_type_is_a(i64, i64) #1

declare i32 @gimp_scanner_parse_string(%struct._GScanner*, i8**) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_get_type() #2

declare i8* @g_object_new(i64, i8*, ...) #1

declare void @gimp_object_take_name(%struct._GimpObject*, i8*) #1

declare i32 @gimp_config_deserialize_return(%struct._GScanner*, i32, i32) #1

declare i8* @g_type_instance_get_private(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

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
