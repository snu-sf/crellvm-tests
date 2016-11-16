; ModuleID = './app/core/gimpitemtree.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpItemTreeClass = type { %struct._GimpObjectClass }
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
%struct._GimpItemTree = type { %struct._GimpObject, %struct._GimpContainer* }
%struct._GimpContainer = type { %struct._GimpObject, %struct._GimpContainerPriv* }
%struct._GimpContainerPriv = type opaque
%struct._GimpItemTreePrivate = type { %struct._GimpImage*, i64, i64, %struct._GimpItem*, %struct._GHashTable* }
%struct._GimpImage = type { %struct._GimpViewable, %struct._Gimp* }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._Gimp = type opaque
%struct._GimpItem = type { %struct._GimpViewable }
%struct._GHashTable = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpItemStack = type { %struct._GimpList }
%struct._GimpList = type { %struct._GimpContainer, %struct._GList*, i32, i32 (i8*, i8*)*, i32 }
%struct._GimpUndo = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@gimp_item_tree_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"GimpItemTree\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"Gimp-Core\00", align 1
@__func__.gimp_item_tree_new = private unnamed_addr constant [19 x i8] c"gimp_item_tree_new\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"GIMP_IS_IMAGE (image)\00", align 1
@.str.3 = private unnamed_addr constant [51 x i8] c"g_type_is_a (container_type, GIMP_TYPE_ITEM_STACK)\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"g_type_is_a (item_type, GIMP_TYPE_ITEM)\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"container-type\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"item-type\00", align 1
@__func__.gimp_item_tree_get_active_item = private unnamed_addr constant [31 x i8] c"gimp_item_tree_get_active_item\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"GIMP_IS_ITEM_TREE (tree)\00", align 1
@__func__.gimp_item_tree_set_active_item = private unnamed_addr constant [31 x i8] c"gimp_item_tree_set_active_item\00", align 1
@.str.9 = private unnamed_addr constant [70 x i8] c"item == NULL || G_TYPE_CHECK_INSTANCE_TYPE (item, private->item_type)\00", align 1
@.str.10 = private unnamed_addr constant [50 x i8] c"item == NULL || gimp_item_get_tree (item) == tree\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"active-item\00", align 1
@__func__.gimp_item_tree_get_item_by_name = private unnamed_addr constant [32 x i8] c"gimp_item_tree_get_item_by_name\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"name != NULL\00", align 1
@__func__.gimp_item_tree_get_insert_pos = private unnamed_addr constant [30 x i8] c"gimp_item_tree_get_insert_pos\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"parent != NULL\00", align 1
@.str.14 = private unnamed_addr constant [54 x i8] c"G_TYPE_CHECK_INSTANCE_TYPE (item, private->item_type)\00", align 1
@.str.15 = private unnamed_addr constant [31 x i8] c"! gimp_item_is_attached (item)\00", align 1
@.str.16 = private unnamed_addr constant [45 x i8] c"gimp_item_get_image (item) == private->image\00", align 1
@.str.17 = private unnamed_addr constant [115 x i8] c"*parent == NULL || *parent == GIMP_IMAGE_ACTIVE_PARENT || G_TYPE_CHECK_INSTANCE_TYPE (*parent, private->item_type)\00", align 1
@.str.18 = private unnamed_addr constant [95 x i8] c"*parent == NULL || *parent == GIMP_IMAGE_ACTIVE_PARENT || gimp_item_get_tree (*parent) == tree\00", align 1
@.str.19 = private unnamed_addr constant [111 x i8] c"*parent == NULL || *parent == GIMP_IMAGE_ACTIVE_PARENT || gimp_viewable_get_children (GIMP_VIEWABLE (*parent))\00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c"position != NULL\00", align 1
@__func__.gimp_item_tree_add_item = private unnamed_addr constant [24 x i8] c"gimp_item_tree_add_item\00", align 1
@.str.21 = private unnamed_addr constant [74 x i8] c"parent == NULL || G_TYPE_CHECK_INSTANCE_TYPE (parent, private->item_type)\00", align 1
@.str.22 = private unnamed_addr constant [54 x i8] c"parent == NULL || gimp_item_get_tree (parent) == tree\00", align 1
@.str.23 = private unnamed_addr constant [70 x i8] c"parent == NULL || gimp_viewable_get_children (GIMP_VIEWABLE (parent))\00", align 1
@__func__.gimp_item_tree_remove_item = private unnamed_addr constant [27 x i8] c"gimp_item_tree_remove_item\00", align 1
@.str.24 = private unnamed_addr constant [34 x i8] c"gimp_item_get_tree (item) == tree\00", align 1
@__func__.gimp_item_tree_reorder_item = private unnamed_addr constant [28 x i8] c"gimp_item_tree_reorder_item\00", align 1
@.str.25 = private unnamed_addr constant [82 x i8] c"new_parent == NULL || G_TYPE_CHECK_INSTANCE_TYPE (new_parent, private->item_type)\00", align 1
@.str.26 = private unnamed_addr constant [62 x i8] c"new_parent == NULL || gimp_item_get_tree (new_parent) == tree\00", align 1
@.str.27 = private unnamed_addr constant [78 x i8] c"new_parent == NULL || gimp_viewable_get_children (GIMP_VIEWABLE (new_parent))\00", align 1
@.str.28 = private unnamed_addr constant [19 x i8] c"item != new_parent\00", align 1
@.str.29 = private unnamed_addr constant [101 x i8] c"new_parent == NULL || ! gimp_viewable_is_ancestor (GIMP_VIEWABLE (item), GIMP_VIEWABLE (new_parent))\00", align 1
@__func__.gimp_item_tree_rename_item = private unnamed_addr constant [27 x i8] c"gimp_item_tree_rename_item\00", align 1
@.str.30 = private unnamed_addr constant [17 x i8] c"new_name != NULL\00", align 1
@gimp_item_tree_parent_class = internal global i8* null, align 8
@GimpItemTree_private_offset = internal global i32 0, align 4
@.str.31 = private unnamed_addr constant [15 x i8] c"gimpitemtree.c\00", align 1
@__func__.gimp_item_tree_constructed = private unnamed_addr constant [27 x i8] c"gimp_item_tree_constructed\00", align 1
@.str.32 = private unnamed_addr constant [31 x i8] c"GIMP_IS_IMAGE (private->image)\00", align 1
@.str.33 = private unnamed_addr constant [60 x i8] c"g_type_is_a (private->container_type, GIMP_TYPE_ITEM_STACK)\00", align 1
@.str.34 = private unnamed_addr constant [49 x i8] c"g_type_is_a (private->item_type, GIMP_TYPE_ITEM)\00", align 1
@.str.35 = private unnamed_addr constant [37 x i8] c"private->item_type != GIMP_TYPE_ITEM\00", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.37 = private unnamed_addr constant [14 x i8] c"children-type\00", align 1
@.str.38 = private unnamed_addr constant [7 x i8] c"policy\00", align 1
@.str.39 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.40 = private unnamed_addr constant [9 x i8] c"property\00", align 1
@.str.41 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.42 = private unnamed_addr constant [7 x i8] c"%s #%d\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_item_tree_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_item_tree_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_item_tree_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_object_get_type() #7
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 160, void (i8*, i8*)* bitcast (void (i8*)* @gimp_item_tree_class_intern_init to void (i8*, i8*)*), i32 40, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpItemTree*)* @gimp_item_tree_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_item_tree_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_item_tree_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_item_tree_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_item_tree_parent_class, align 8
  %1 = load i32, i32* @GimpItemTree_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpItemTree_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpItemTreeClass*
  call void @gimp_item_tree_class_init(%struct._GimpItemTreeClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_item_tree_init(%struct._GimpItemTree* %tree) #3 {
entry:
  %tree.addr = alloca %struct._GimpItemTree*, align 8
  %private = alloca %struct._GimpItemTreePrivate*, align 8
  store %struct._GimpItemTree* %tree, %struct._GimpItemTree** %tree.addr, align 8
  %0 = load %struct._GimpItemTree*, %struct._GimpItemTree** %tree.addr, align 8
  %1 = bitcast %struct._GimpItemTree* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_item_tree_get_type() #7
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpItemTreePrivate*
  store %struct._GimpItemTreePrivate* %2, %struct._GimpItemTreePrivate** %private, align 8
  %call2 = call %struct._GHashTable* @g_hash_table_new(i32 (i8*)* @g_str_hash, i32 (i8*, i8*)* @g_str_equal)
  %3 = load %struct._GimpItemTreePrivate*, %struct._GimpItemTreePrivate** %private, align 8
  %name_hash = getelementptr inbounds %struct._GimpItemTreePrivate, %struct._GimpItemTreePrivate* %3, i32 0, i32 4
  store %struct._GHashTable* %call2, %struct._GHashTable** %name_hash, align 8
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GimpItemTree* @gimp_item_tree_new(%struct._GimpImage* %image, i64 %container_type, i64 %item_type) #3 {
entry:
  %retval = alloca %struct._GimpItemTree*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  %container_type.addr = alloca i64, align 8
  %item_type.addr = alloca i64, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store i64 %container_type, i64* %container_type.addr, align 8
  store i64 %item_type, i64* %item_type.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %1 = bitcast %struct._GimpImage* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_image_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gimp_item_tree_new, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpItemTree* null, %struct._GimpItemTree** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i64, i64* %container_type.addr, align 8
  %call12 = call i64 @gimp_item_stack_get_type() #7
  %call13 = call i32 @g_type_is_a(i64 %13, i64 %call12)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %do.body.11
  br label %if.end.17

if.else.16:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gimp_item_tree_new, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GimpItemTree* null, %struct._GimpItemTree** %retval
  br label %return

if.end.17:                                        ; preds = %if.then.15
  br label %do.end.18

do.end.18:                                        ; preds = %if.end.17
  br label %do.body.19

do.body.19:                                       ; preds = %do.end.18
  %14 = load i64, i64* %item_type.addr, align 8
  %call20 = call i64 @gimp_item_get_type() #7
  %call21 = call i32 @g_type_is_a(i64 %14, i64 %call20)
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.then.23, label %if.else.24

if.then.23:                                       ; preds = %do.body.19
  br label %if.end.25

if.else.24:                                       ; preds = %do.body.19
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gimp_item_tree_new, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i32 0, i32 0))
  store %struct._GimpItemTree* null, %struct._GimpItemTree** %retval
  br label %return

if.end.25:                                        ; preds = %if.then.23
  br label %do.end.26

do.end.26:                                        ; preds = %if.end.25
  %call27 = call i64 @gimp_item_tree_get_type() #7
  %15 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %16 = load i64, i64* %container_type.addr, align 8
  %17 = load i64, i64* %item_type.addr, align 8
  %call28 = call i8* (i64, i8*, ...) @g_object_new(i64 %call27, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), %struct._GimpImage* %15, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0), i64 %16, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i64 %17, i8* null)
  %18 = bitcast i8* %call28 to %struct._GimpItemTree*
  store %struct._GimpItemTree* %18, %struct._GimpItemTree** %retval
  br label %return

return:                                           ; preds = %do.end.26, %if.else.24, %if.else.16, %if.else.9
  %19 = load %struct._GimpItemTree*, %struct._GimpItemTree** %retval
  ret %struct._GimpItemTree* %19
}

; Function Attrs: nounwind readnone
declare i64 @gimp_image_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare i32 @g_type_is_a(i64, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_item_stack_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_item_get_type() #2

declare i8* @g_object_new(i64, i8*, ...) #1

; Function Attrs: nounwind uwtable
define %struct._GimpItem* @gimp_item_tree_get_active_item(%struct._GimpItemTree* %tree) #3 {
entry:
  %retval = alloca %struct._GimpItem*, align 8
  %tree.addr = alloca %struct._GimpItemTree*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpItemTree* %tree, %struct._GimpItemTree** %tree.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpItemTree*, %struct._GimpItemTree** %tree.addr, align 8
  %1 = bitcast %struct._GimpItemTree* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_item_tree_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_item_tree_get_active_item, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i32 0, i32 0))
  store %struct._GimpItem* null, %struct._GimpItem** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpItemTree*, %struct._GimpItemTree** %tree.addr, align 8
  %14 = bitcast %struct._GimpItemTree* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_item_tree_get_type() #7
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct._GimpItemTreePrivate*
  %active_item = getelementptr inbounds %struct._GimpItemTreePrivate, %struct._GimpItemTreePrivate* %15, i32 0, i32 3
  %16 = load %struct._GimpItem*, %struct._GimpItem** %active_item, align 8
  store %struct._GimpItem* %16, %struct._GimpItem** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %17 = load %struct._GimpItem*, %struct._GimpItem** %retval
  ret %struct._GimpItem* %17
}

declare i8* @g_type_instance_get_private(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind uwtable
define void @gimp_item_tree_set_active_item(%struct._GimpItemTree* %tree, %struct._GimpItem* %item) #3 {
entry:
  %tree.addr = alloca %struct._GimpItemTree*, align 8
  %item.addr = alloca %struct._GimpItem*, align 8
  %private = alloca %struct._GimpItemTreePrivate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst16 = alloca %struct._GTypeInstance*, align 8
  %__t18 = alloca i64, align 8
  %__r20 = alloca i32, align 4
  %tmp35 = alloca i32, align 4
  store %struct._GimpItemTree* %tree, %struct._GimpItemTree** %tree.addr, align 8
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpItemTree*, %struct._GimpItemTree** %tree.addr, align 8
  %1 = bitcast %struct._GimpItemTree* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_item_tree_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_item_tree_set_active_item, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end.54

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpItemTree*, %struct._GimpItemTree** %tree.addr, align 8
  %14 = bitcast %struct._GimpItemTree* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_item_tree_get_type() #7
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct._GimpItemTreePrivate*
  store %struct._GimpItemTreePrivate* %15, %struct._GimpItemTreePrivate** %private, align 8
  br label %do.body.13

do.body.13:                                       ; preds = %do.end
  %16 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %cmp14 = icmp eq %struct._GimpItem* %16, null
  br i1 %cmp14, label %if.then.37, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.13
  %17 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %18 = bitcast %struct._GimpItem* %17 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %18, %struct._GTypeInstance** %__inst16, align 8
  %19 = load %struct._GimpItemTreePrivate*, %struct._GimpItemTreePrivate** %private, align 8
  %item_type = getelementptr inbounds %struct._GimpItemTreePrivate, %struct._GimpItemTreePrivate* %19, i32 0, i32 2
  %20 = load i64, i64* %item_type, align 8
  store i64 %20, i64* %__t18, align 8
  %21 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst16, align 8
  %tobool21 = icmp ne %struct._GTypeInstance* %21, null
  br i1 %tobool21, label %if.else.23, label %if.then.22

if.then.22:                                       ; preds = %lor.lhs.false
  store i32 0, i32* %__r20, align 4
  br label %if.end.34

if.else.23:                                       ; preds = %lor.lhs.false
  %22 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst16, align 8
  %g_class24 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %22, i32 0, i32 0
  %23 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class24, align 8
  %tobool25 = icmp ne %struct._GTypeClass* %23, null
  br i1 %tobool25, label %land.lhs.true.26, label %if.else.31

land.lhs.true.26:                                 ; preds = %if.else.23
  %24 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst16, align 8
  %g_class27 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %24, i32 0, i32 0
  %25 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class27, align 8
  %g_type28 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %25, i32 0, i32 0
  %26 = load i64, i64* %g_type28, align 8
  %27 = load i64, i64* %__t18, align 8
  %cmp29 = icmp eq i64 %26, %27
  br i1 %cmp29, label %if.then.30, label %if.else.31

if.then.30:                                       ; preds = %land.lhs.true.26
  store i32 1, i32* %__r20, align 4
  br label %if.end.33

if.else.31:                                       ; preds = %land.lhs.true.26, %if.else.23
  %28 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst16, align 8
  %29 = load i64, i64* %__t18, align 8
  %call32 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %28, i64 %29) #8
  store i32 %call32, i32* %__r20, align 4
  br label %if.end.33

if.end.33:                                        ; preds = %if.else.31, %if.then.30
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %if.then.22
  %30 = load i32, i32* %__r20, align 4
  store i32 %30, i32* %tmp35
  %31 = load i32, i32* %tmp35
  %tobool36 = icmp ne i32 %31, 0
  br i1 %tobool36, label %if.then.37, label %if.else.38

if.then.37:                                       ; preds = %if.end.34, %do.body.13
  br label %if.end.39

if.else.38:                                       ; preds = %if.end.34
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_item_tree_set_active_item, i32 0, i32 0), i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.9, i32 0, i32 0))
  br label %if.end.54

if.end.39:                                        ; preds = %if.then.37
  br label %do.end.40

do.end.40:                                        ; preds = %if.end.39
  br label %do.body.41

do.body.41:                                       ; preds = %do.end.40
  %32 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %cmp42 = icmp eq %struct._GimpItem* %32, null
  br i1 %cmp42, label %if.then.46, label %lor.lhs.false.43

lor.lhs.false.43:                                 ; preds = %do.body.41
  %33 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call44 = call %struct._GimpItemTree* @gimp_item_get_tree(%struct._GimpItem* %33)
  %34 = load %struct._GimpItemTree*, %struct._GimpItemTree** %tree.addr, align 8
  %cmp45 = icmp eq %struct._GimpItemTree* %call44, %34
  br i1 %cmp45, label %if.then.46, label %if.else.47

if.then.46:                                       ; preds = %lor.lhs.false.43, %do.body.41
  br label %if.end.48

if.else.47:                                       ; preds = %lor.lhs.false.43
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_item_tree_set_active_item, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.10, i32 0, i32 0))
  br label %if.end.54

if.end.48:                                        ; preds = %if.then.46
  br label %do.end.49

do.end.49:                                        ; preds = %if.end.48
  %35 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %36 = load %struct._GimpItemTreePrivate*, %struct._GimpItemTreePrivate** %private, align 8
  %active_item = getelementptr inbounds %struct._GimpItemTreePrivate, %struct._GimpItemTreePrivate* %36, i32 0, i32 3
  %37 = load %struct._GimpItem*, %struct._GimpItem** %active_item, align 8
  %cmp50 = icmp ne %struct._GimpItem* %35, %37
  br i1 %cmp50, label %if.then.51, label %if.end.54

if.then.51:                                       ; preds = %do.end.49
  %38 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %39 = load %struct._GimpItemTreePrivate*, %struct._GimpItemTreePrivate** %private, align 8
  %active_item52 = getelementptr inbounds %struct._GimpItemTreePrivate, %struct._GimpItemTreePrivate* %39, i32 0, i32 3
  store %struct._GimpItem* %38, %struct._GimpItem** %active_item52, align 8
  %40 = load %struct._GimpItemTree*, %struct._GimpItemTree** %tree.addr, align 8
  %41 = bitcast %struct._GimpItemTree* %40 to %struct._GTypeInstance*
  %call53 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %41, i64 80)
  %42 = bitcast %struct._GTypeInstance* %call53 to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %42, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i32 0, i32 0))
  br label %if.end.54

if.end.54:                                        ; preds = %if.else.9, %if.else.38, %if.else.47, %if.then.51, %do.end.49
  ret void
}

declare %struct._GimpItemTree* @gimp_item_get_tree(%struct._GimpItem*) #1

declare void @g_object_notify(%struct._GObject*, i8*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GimpItem* @gimp_item_tree_get_item_by_name(%struct._GimpItemTree* %tree, i8* %name) #3 {
entry:
  %retval = alloca %struct._GimpItem*, align 8
  %tree.addr = alloca %struct._GimpItemTree*, align 8
  %name.addr = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpItemTree* %tree, %struct._GimpItemTree** %tree.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpItemTree*, %struct._GimpItemTree** %tree.addr, align 8
  %1 = bitcast %struct._GimpItemTree* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_item_tree_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_item_tree_get_item_by_name, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i32 0, i32 0))
  store %struct._GimpItem* null, %struct._GimpItem** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i8*, i8** %name.addr, align 8
  %cmp12 = icmp ne i8* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_item_tree_get_item_by_name, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0))
  store %struct._GimpItem* null, %struct._GimpItem** %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GimpItemTree*, %struct._GimpItemTree** %tree.addr, align 8
  %15 = bitcast %struct._GimpItemTree* %14 to %struct._GTypeInstance*
  %call17 = call i64 @gimp_item_tree_get_type() #7
  %call18 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %15, i64 %call17)
  %16 = bitcast i8* %call18 to %struct._GimpItemTreePrivate*
  %name_hash = getelementptr inbounds %struct._GimpItemTreePrivate, %struct._GimpItemTreePrivate* %16, i32 0, i32 4
  %17 = load %struct._GHashTable*, %struct._GHashTable** %name_hash, align 8
  %18 = load i8*, i8** %name.addr, align 8
  %call19 = call i8* @g_hash_table_lookup(%struct._GHashTable* %17, i8* %18)
  %19 = bitcast i8* %call19 to %struct._GimpItem*
  store %struct._GimpItem* %19, %struct._GimpItem** %retval
  br label %return

return:                                           ; preds = %do.end.16, %if.else.14, %if.else.9
  %20 = load %struct._GimpItem*, %struct._GimpItem** %retval
  ret %struct._GimpItem* %20
}

declare i8* @g_hash_table_lookup(%struct._GHashTable*, i8*) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_item_tree_get_insert_pos(%struct._GimpItemTree* %tree, %struct._GimpItem* %item, %struct._GimpItem** %parent, i32* %position) #3 {
entry:
  %retval = alloca i32, align 4
  %tree.addr = alloca %struct._GimpItemTree*, align 8
  %item.addr = alloca %struct._GimpItem*, align 8
  %parent.addr = alloca %struct._GimpItem**, align 8
  %position.addr = alloca i32*, align 8
  %private = alloca %struct._GimpItemTreePrivate*, align 8
  %container = alloca %struct._GimpContainer*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst21 = alloca %struct._GTypeInstance*, align 8
  %__t23 = alloca i64, align 8
  %__r25 = alloca i32, align 4
  %tmp40 = alloca i32, align 4
  %__inst65 = alloca %struct._GTypeInstance*, align 8
  %__t67 = alloca i64, align 8
  %__r70 = alloca i32, align 4
  %tmp85 = alloca i32, align 4
  store %struct._GimpItemTree* %tree, %struct._GimpItemTree** %tree.addr, align 8
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  store %struct._GimpItem** %parent, %struct._GimpItem*** %parent.addr, align 8
  store i32* %position, i32** %position.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpItemTree*, %struct._GimpItemTree** %tree.addr, align 8
  %1 = bitcast %struct._GimpItemTree* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_item_tree_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_item_tree_get_insert_pos, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpItem**, %struct._GimpItem*** %parent.addr, align 8
  %cmp12 = icmp ne %struct._GimpItem** %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_item_tree_get_insert_pos, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GimpItemTree*, %struct._GimpItemTree** %tree.addr, align 8
  %15 = bitcast %struct._GimpItemTree* %14 to %struct._GTypeInstance*
  %call17 = call i64 @gimp_item_tree_get_type() #7
  %call18 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %15, i64 %call17)
  %16 = bitcast i8* %call18 to %struct._GimpItemTreePrivate*
  store %struct._GimpItemTreePrivate* %16, %struct._GimpItemTreePrivate** %private, align 8
  br label %do.body.19

do.body.19:                                       ; preds = %do.end.16
  %17 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %18 = bitcast %struct._GimpItem* %17 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %18, %struct._GTypeInstance** %__inst21, align 8
  %19 = load %struct._GimpItemTreePrivate*, %struct._GimpItemTreePrivate** %private, align 8
  %item_type = getelementptr inbounds %struct._GimpItemTreePrivate, %struct._GimpItemTreePrivate* %19, i32 0, i32 2
  %20 = load i64, i64* %item_type, align 8
  store i64 %20, i64* %__t23, align 8
  %21 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst21, align 8
  %tobool26 = icmp ne %struct._GTypeInstance* %21, null
  br i1 %tobool26, label %if.else.28, label %if.then.27

if.then.27:                                       ; preds = %do.body.19
  store i32 0, i32* %__r25, align 4
  br label %if.end.39

if.else.28:                                       ; preds = %do.body.19
  %22 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst21, align 8
  %g_class29 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %22, i32 0, i32 0
  %23 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class29, align 8
  %tobool30 = icmp ne %struct._GTypeClass* %23, null
  br i1 %tobool30, label %land.lhs.true.31, label %if.else.36

land.lhs.true.31:                                 ; preds = %if.else.28
  %24 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst21, align 8
  %g_class32 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %24, i32 0, i32 0
  %25 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class32, align 8
  %g_type33 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %25, i32 0, i32 0
  %26 = load i64, i64* %g_type33, align 8
  %27 = load i64, i64* %__t23, align 8
  %cmp34 = icmp eq i64 %26, %27
  br i1 %cmp34, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %land.lhs.true.31
  store i32 1, i32* %__r25, align 4
  br label %if.end.38

if.else.36:                                       ; preds = %land.lhs.true.31, %if.else.28
  %28 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst21, align 8
  %29 = load i64, i64* %__t23, align 8
  %call37 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %28, i64 %29) #8
  store i32 %call37, i32* %__r25, align 4
  br label %if.end.38

if.end.38:                                        ; preds = %if.else.36, %if.then.35
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %if.then.27
  %30 = load i32, i32* %__r25, align 4
  store i32 %30, i32* %tmp40
  %31 = load i32, i32* %tmp40
  %tobool41 = icmp ne i32 %31, 0
  br i1 %tobool41, label %if.then.42, label %if.else.43

if.then.42:                                       ; preds = %if.end.39
  br label %if.end.44

if.else.43:                                       ; preds = %if.end.39
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_item_tree_get_insert_pos, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.14, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.44:                                        ; preds = %if.then.42
  br label %do.end.45

do.end.45:                                        ; preds = %if.end.44
  br label %do.body.46

do.body.46:                                       ; preds = %do.end.45
  %32 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call47 = call i32 @gimp_item_is_attached(%struct._GimpItem* %32)
  %tobool48 = icmp ne i32 %call47, 0
  br i1 %tobool48, label %if.else.50, label %if.then.49

if.then.49:                                       ; preds = %do.body.46
  br label %if.end.51

if.else.50:                                       ; preds = %do.body.46
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_item_tree_get_insert_pos, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.15, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.51:                                        ; preds = %if.then.49
  br label %do.end.52

do.end.52:                                        ; preds = %if.end.51
  br label %do.body.53

do.body.53:                                       ; preds = %do.end.52
  %33 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call54 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %33)
  %34 = load %struct._GimpItemTreePrivate*, %struct._GimpItemTreePrivate** %private, align 8
  %image = getelementptr inbounds %struct._GimpItemTreePrivate, %struct._GimpItemTreePrivate* %34, i32 0, i32 0
  %35 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %cmp55 = icmp eq %struct._GimpImage* %call54, %35
  br i1 %cmp55, label %if.then.56, label %if.else.57

if.then.56:                                       ; preds = %do.body.53
  br label %if.end.58

if.else.57:                                       ; preds = %do.body.53
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_item_tree_get_insert_pos, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.16, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.58:                                        ; preds = %if.then.56
  br label %do.end.59

do.end.59:                                        ; preds = %if.end.58
  br label %do.body.60

do.body.60:                                       ; preds = %do.end.59
  %36 = load %struct._GimpItem**, %struct._GimpItem*** %parent.addr, align 8
  %37 = load %struct._GimpItem*, %struct._GimpItem** %36, align 8
  %cmp61 = icmp eq %struct._GimpItem* %37, null
  br i1 %cmp61, label %if.then.87, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.60
  %38 = load %struct._GimpItem**, %struct._GimpItem*** %parent.addr, align 8
  %39 = load %struct._GimpItem*, %struct._GimpItem** %38, align 8
  %cmp62 = icmp eq %struct._GimpItem* %39, inttoptr (i64 1 to %struct._GimpItem*)
  br i1 %cmp62, label %if.then.87, label %lor.lhs.false.63

lor.lhs.false.63:                                 ; preds = %lor.lhs.false
  %40 = load %struct._GimpItem**, %struct._GimpItem*** %parent.addr, align 8
  %41 = load %struct._GimpItem*, %struct._GimpItem** %40, align 8
  %42 = bitcast %struct._GimpItem* %41 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %42, %struct._GTypeInstance** %__inst65, align 8
  %43 = load %struct._GimpItemTreePrivate*, %struct._GimpItemTreePrivate** %private, align 8
  %item_type68 = getelementptr inbounds %struct._GimpItemTreePrivate, %struct._GimpItemTreePrivate* %43, i32 0, i32 2
  %44 = load i64, i64* %item_type68, align 8
  store i64 %44, i64* %__t67, align 8
  %45 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst65, align 8
  %tobool71 = icmp ne %struct._GTypeInstance* %45, null
  br i1 %tobool71, label %if.else.73, label %if.then.72

if.then.72:                                       ; preds = %lor.lhs.false.63
  store i32 0, i32* %__r70, align 4
  br label %if.end.84

if.else.73:                                       ; preds = %lor.lhs.false.63
  %46 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst65, align 8
  %g_class74 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %46, i32 0, i32 0
  %47 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class74, align 8
  %tobool75 = icmp ne %struct._GTypeClass* %47, null
  br i1 %tobool75, label %land.lhs.true.76, label %if.else.81

land.lhs.true.76:                                 ; preds = %if.else.73
  %48 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst65, align 8
  %g_class77 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %48, i32 0, i32 0
  %49 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class77, align 8
  %g_type78 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %49, i32 0, i32 0
  %50 = load i64, i64* %g_type78, align 8
  %51 = load i64, i64* %__t67, align 8
  %cmp79 = icmp eq i64 %50, %51
  br i1 %cmp79, label %if.then.80, label %if.else.81

if.then.80:                                       ; preds = %land.lhs.true.76
  store i32 1, i32* %__r70, align 4
  br label %if.end.83

if.else.81:                                       ; preds = %land.lhs.true.76, %if.else.73
  %52 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst65, align 8
  %53 = load i64, i64* %__t67, align 8
  %call82 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %52, i64 %53) #8
  store i32 %call82, i32* %__r70, align 4
  br label %if.end.83

if.end.83:                                        ; preds = %if.else.81, %if.then.80
  br label %if.end.84

if.end.84:                                        ; preds = %if.end.83, %if.then.72
  %54 = load i32, i32* %__r70, align 4
  store i32 %54, i32* %tmp85
  %55 = load i32, i32* %tmp85
  %tobool86 = icmp ne i32 %55, 0
  br i1 %tobool86, label %if.then.87, label %if.else.88

if.then.87:                                       ; preds = %if.end.84, %lor.lhs.false, %do.body.60
  br label %if.end.89

if.else.88:                                       ; preds = %if.end.84
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_item_tree_get_insert_pos, i32 0, i32 0), i8* getelementptr inbounds ([115 x i8], [115 x i8]* @.str.17, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.89:                                        ; preds = %if.then.87
  br label %do.end.90

do.end.90:                                        ; preds = %if.end.89
  br label %do.body.91

do.body.91:                                       ; preds = %do.end.90
  %56 = load %struct._GimpItem**, %struct._GimpItem*** %parent.addr, align 8
  %57 = load %struct._GimpItem*, %struct._GimpItem** %56, align 8
  %cmp92 = icmp eq %struct._GimpItem* %57, null
  br i1 %cmp92, label %if.then.98, label %lor.lhs.false.93

lor.lhs.false.93:                                 ; preds = %do.body.91
  %58 = load %struct._GimpItem**, %struct._GimpItem*** %parent.addr, align 8
  %59 = load %struct._GimpItem*, %struct._GimpItem** %58, align 8
  %cmp94 = icmp eq %struct._GimpItem* %59, inttoptr (i64 1 to %struct._GimpItem*)
  br i1 %cmp94, label %if.then.98, label %lor.lhs.false.95

lor.lhs.false.95:                                 ; preds = %lor.lhs.false.93
  %60 = load %struct._GimpItem**, %struct._GimpItem*** %parent.addr, align 8
  %61 = load %struct._GimpItem*, %struct._GimpItem** %60, align 8
  %call96 = call %struct._GimpItemTree* @gimp_item_get_tree(%struct._GimpItem* %61)
  %62 = load %struct._GimpItemTree*, %struct._GimpItemTree** %tree.addr, align 8
  %cmp97 = icmp eq %struct._GimpItemTree* %call96, %62
  br i1 %cmp97, label %if.then.98, label %if.else.99

if.then.98:                                       ; preds = %lor.lhs.false.95, %lor.lhs.false.93, %do.body.91
  br label %if.end.100

if.else.99:                                       ; preds = %lor.lhs.false.95
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_item_tree_get_insert_pos, i32 0, i32 0), i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.18, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.100:                                       ; preds = %if.then.98
  br label %do.end.101

do.end.101:                                       ; preds = %if.end.100
  br label %do.body.102

do.body.102:                                      ; preds = %do.end.101
  %63 = load %struct._GimpItem**, %struct._GimpItem*** %parent.addr, align 8
  %64 = load %struct._GimpItem*, %struct._GimpItem** %63, align 8
  %cmp103 = icmp eq %struct._GimpItem* %64, null
  br i1 %cmp103, label %if.then.111, label %lor.lhs.false.104

lor.lhs.false.104:                                ; preds = %do.body.102
  %65 = load %struct._GimpItem**, %struct._GimpItem*** %parent.addr, align 8
  %66 = load %struct._GimpItem*, %struct._GimpItem** %65, align 8
  %cmp105 = icmp eq %struct._GimpItem* %66, inttoptr (i64 1 to %struct._GimpItem*)
  br i1 %cmp105, label %if.then.111, label %lor.lhs.false.106

lor.lhs.false.106:                                ; preds = %lor.lhs.false.104
  %67 = load %struct._GimpItem**, %struct._GimpItem*** %parent.addr, align 8
  %68 = load %struct._GimpItem*, %struct._GimpItem** %67, align 8
  %69 = bitcast %struct._GimpItem* %68 to %struct._GTypeInstance*
  %call107 = call i64 @gimp_viewable_get_type() #7
  %call108 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %69, i64 %call107)
  %70 = bitcast %struct._GTypeInstance* %call108 to %struct._GimpViewable*
  %call109 = call %struct._GimpContainer* @gimp_viewable_get_children(%struct._GimpViewable* %70)
  %tobool110 = icmp ne %struct._GimpContainer* %call109, null
  br i1 %tobool110, label %if.then.111, label %if.else.112

if.then.111:                                      ; preds = %lor.lhs.false.106, %lor.lhs.false.104, %do.body.102
  br label %if.end.113

if.else.112:                                      ; preds = %lor.lhs.false.106
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_item_tree_get_insert_pos, i32 0, i32 0), i8* getelementptr inbounds ([111 x i8], [111 x i8]* @.str.19, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.113:                                       ; preds = %if.then.111
  br label %do.end.114

do.end.114:                                       ; preds = %if.end.113
  br label %do.body.115

do.body.115:                                      ; preds = %do.end.114
  %71 = load i32*, i32** %position.addr, align 8
  %cmp116 = icmp ne i32* %71, null
  br i1 %cmp116, label %if.then.117, label %if.else.118

if.then.117:                                      ; preds = %do.body.115
  br label %if.end.119

if.else.118:                                      ; preds = %do.body.115
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_item_tree_get_insert_pos, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.20, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.119:                                       ; preds = %if.then.117
  br label %do.end.120

do.end.120:                                       ; preds = %if.end.119
  %72 = load %struct._GimpItem**, %struct._GimpItem*** %parent.addr, align 8
  %73 = load %struct._GimpItem*, %struct._GimpItem** %72, align 8
  %cmp121 = icmp eq %struct._GimpItem* %73, inttoptr (i64 1 to %struct._GimpItem*)
  br i1 %cmp121, label %if.then.122, label %if.end.138

if.then.122:                                      ; preds = %do.end.120
  %74 = load %struct._GimpItemTreePrivate*, %struct._GimpItemTreePrivate** %private, align 8
  %active_item = getelementptr inbounds %struct._GimpItemTreePrivate, %struct._GimpItemTreePrivate* %74, i32 0, i32 3
  %75 = load %struct._GimpItem*, %struct._GimpItem** %active_item, align 8
  %tobool123 = icmp ne %struct._GimpItem* %75, null
  br i1 %tobool123, label %if.then.124, label %if.else.136

if.then.124:                                      ; preds = %if.then.122
  %76 = load %struct._GimpItemTreePrivate*, %struct._GimpItemTreePrivate** %private, align 8
  %active_item125 = getelementptr inbounds %struct._GimpItemTreePrivate, %struct._GimpItemTreePrivate* %76, i32 0, i32 3
  %77 = load %struct._GimpItem*, %struct._GimpItem** %active_item125, align 8
  %78 = bitcast %struct._GimpItem* %77 to %struct._GTypeInstance*
  %call126 = call i64 @gimp_viewable_get_type() #7
  %call127 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %78, i64 %call126)
  %79 = bitcast %struct._GTypeInstance* %call127 to %struct._GimpViewable*
  %call128 = call %struct._GimpContainer* @gimp_viewable_get_children(%struct._GimpViewable* %79)
  %tobool129 = icmp ne %struct._GimpContainer* %call128, null
  br i1 %tobool129, label %if.then.130, label %if.else.132

if.then.130:                                      ; preds = %if.then.124
  %80 = load %struct._GimpItemTreePrivate*, %struct._GimpItemTreePrivate** %private, align 8
  %active_item131 = getelementptr inbounds %struct._GimpItemTreePrivate, %struct._GimpItemTreePrivate* %80, i32 0, i32 3
  %81 = load %struct._GimpItem*, %struct._GimpItem** %active_item131, align 8
  %82 = load %struct._GimpItem**, %struct._GimpItem*** %parent.addr, align 8
  store %struct._GimpItem* %81, %struct._GimpItem** %82, align 8
  %83 = load i32*, i32** %position.addr, align 8
  store i32 0, i32* %83, align 4
  br label %if.end.135

if.else.132:                                      ; preds = %if.then.124
  %84 = load %struct._GimpItemTreePrivate*, %struct._GimpItemTreePrivate** %private, align 8
  %active_item133 = getelementptr inbounds %struct._GimpItemTreePrivate, %struct._GimpItemTreePrivate* %84, i32 0, i32 3
  %85 = load %struct._GimpItem*, %struct._GimpItem** %active_item133, align 8
  %call134 = call %struct._GimpItem* @gimp_item_get_parent(%struct._GimpItem* %85)
  %86 = load %struct._GimpItem**, %struct._GimpItem*** %parent.addr, align 8
  store %struct._GimpItem* %call134, %struct._GimpItem** %86, align 8
  br label %if.end.135

if.end.135:                                       ; preds = %if.else.132, %if.then.130
  br label %if.end.137

if.else.136:                                      ; preds = %if.then.122
  %87 = load %struct._GimpItem**, %struct._GimpItem*** %parent.addr, align 8
  store %struct._GimpItem* null, %struct._GimpItem** %87, align 8
  br label %if.end.137

if.end.137:                                       ; preds = %if.else.136, %if.end.135
  br label %if.end.138

if.end.138:                                       ; preds = %if.end.137, %do.end.120
  %88 = load %struct._GimpItem**, %struct._GimpItem*** %parent.addr, align 8
  %89 = load %struct._GimpItem*, %struct._GimpItem** %88, align 8
  %tobool139 = icmp ne %struct._GimpItem* %89, null
  br i1 %tobool139, label %if.then.140, label %if.else.144

if.then.140:                                      ; preds = %if.end.138
  %90 = load %struct._GimpItem**, %struct._GimpItem*** %parent.addr, align 8
  %91 = load %struct._GimpItem*, %struct._GimpItem** %90, align 8
  %92 = bitcast %struct._GimpItem* %91 to %struct._GTypeInstance*
  %call141 = call i64 @gimp_viewable_get_type() #7
  %call142 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %92, i64 %call141)
  %93 = bitcast %struct._GTypeInstance* %call142 to %struct._GimpViewable*
  %call143 = call %struct._GimpContainer* @gimp_viewable_get_children(%struct._GimpViewable* %93)
  store %struct._GimpContainer* %call143, %struct._GimpContainer** %container, align 8
  br label %if.end.146

if.else.144:                                      ; preds = %if.end.138
  %94 = load %struct._GimpItemTree*, %struct._GimpItemTree** %tree.addr, align 8
  %container145 = getelementptr inbounds %struct._GimpItemTree, %struct._GimpItemTree* %94, i32 0, i32 1
  %95 = load %struct._GimpContainer*, %struct._GimpContainer** %container145, align 8
  store %struct._GimpContainer* %95, %struct._GimpContainer** %container, align 8
  br label %if.end.146

if.end.146:                                       ; preds = %if.else.144, %if.then.140
  %96 = load i32*, i32** %position.addr, align 8
  %97 = load i32, i32* %96, align 4
  %cmp147 = icmp eq i32 %97, -1
  br i1 %cmp147, label %if.then.148, label %if.end.160

if.then.148:                                      ; preds = %if.end.146
  %98 = load %struct._GimpItemTreePrivate*, %struct._GimpItemTreePrivate** %private, align 8
  %active_item149 = getelementptr inbounds %struct._GimpItemTreePrivate, %struct._GimpItemTreePrivate* %98, i32 0, i32 3
  %99 = load %struct._GimpItem*, %struct._GimpItem** %active_item149, align 8
  %tobool150 = icmp ne %struct._GimpItem* %99, null
  br i1 %tobool150, label %if.then.151, label %if.end.156

if.then.151:                                      ; preds = %if.then.148
  %100 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %101 = load %struct._GimpItemTreePrivate*, %struct._GimpItemTreePrivate** %private, align 8
  %active_item152 = getelementptr inbounds %struct._GimpItemTreePrivate, %struct._GimpItemTreePrivate* %101, i32 0, i32 3
  %102 = load %struct._GimpItem*, %struct._GimpItem** %active_item152, align 8
  %103 = bitcast %struct._GimpItem* %102 to %struct._GTypeInstance*
  %call153 = call i64 @gimp_object_get_type() #7
  %call154 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %103, i64 %call153)
  %104 = bitcast %struct._GTypeInstance* %call154 to %struct._GimpObject*
  %call155 = call i32 @gimp_container_get_child_index(%struct._GimpContainer* %100, %struct._GimpObject* %104)
  %105 = load i32*, i32** %position.addr, align 8
  store i32 %call155, i32* %105, align 4
  br label %if.end.156

if.end.156:                                       ; preds = %if.then.151, %if.then.148
  %106 = load i32*, i32** %position.addr, align 8
  %107 = load i32, i32* %106, align 4
  %cmp157 = icmp eq i32 %107, -1
  br i1 %cmp157, label %if.then.158, label %if.end.159

if.then.158:                                      ; preds = %if.end.156
  %108 = load i32*, i32** %position.addr, align 8
  store i32 0, i32* %108, align 4
  br label %if.end.159

if.end.159:                                       ; preds = %if.then.158, %if.end.156
  br label %if.end.160

if.end.160:                                       ; preds = %if.end.159, %if.end.146
  %109 = load i32*, i32** %position.addr, align 8
  %110 = load i32, i32* %109, align 4
  %111 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %call161 = call i32 @gimp_container_get_n_children(%struct._GimpContainer* %111)
  %cmp162 = icmp sgt i32 %110, %call161
  br i1 %cmp162, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.160
  %112 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %call163 = call i32 @gimp_container_get_n_children(%struct._GimpContainer* %112)
  br label %cond.end.167

cond.false:                                       ; preds = %if.end.160
  %113 = load i32*, i32** %position.addr, align 8
  %114 = load i32, i32* %113, align 4
  %cmp164 = icmp slt i32 %114, 0
  br i1 %cmp164, label %cond.true.165, label %cond.false.166

cond.true.165:                                    ; preds = %cond.false
  br label %cond.end

cond.false.166:                                   ; preds = %cond.false
  %115 = load i32*, i32** %position.addr, align 8
  %116 = load i32, i32* %115, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false.166, %cond.true.165
  %cond = phi i32 [ 0, %cond.true.165 ], [ %116, %cond.false.166 ]
  br label %cond.end.167

cond.end.167:                                     ; preds = %cond.end, %cond.true
  %cond168 = phi i32 [ %call163, %cond.true ], [ %cond, %cond.end ]
  %117 = load i32*, i32** %position.addr, align 8
  store i32 %cond168, i32* %117, align 4
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %cond.end.167, %if.else.118, %if.else.112, %if.else.99, %if.else.88, %if.else.57, %if.else.50, %if.else.43, %if.else.14, %if.else.9
  %118 = load i32, i32* %retval
  ret i32 %118
}

declare i32 @gimp_item_is_attached(%struct._GimpItem*) #1

declare %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem*) #1

declare %struct._GimpContainer* @gimp_viewable_get_children(%struct._GimpViewable*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_viewable_get_type() #2

declare %struct._GimpItem* @gimp_item_get_parent(%struct._GimpItem*) #1

declare i32 @gimp_container_get_child_index(%struct._GimpContainer*, %struct._GimpObject*) #1

declare i32 @gimp_container_get_n_children(%struct._GimpContainer*) #1

; Function Attrs: nounwind uwtable
define void @gimp_item_tree_add_item(%struct._GimpItemTree* %tree, %struct._GimpItem* %item, %struct._GimpItem* %parent, i32 %position) #3 {
entry:
  %tree.addr = alloca %struct._GimpItemTree*, align 8
  %item.addr = alloca %struct._GimpItem*, align 8
  %parent.addr = alloca %struct._GimpItem*, align 8
  %position.addr = alloca i32, align 4
  %private = alloca %struct._GimpItemTreePrivate*, align 8
  %container = alloca %struct._GimpContainer*, align 8
  %children = alloca %struct._GimpContainer*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst15 = alloca %struct._GTypeInstance*, align 8
  %__t17 = alloca i64, align 8
  %__r19 = alloca i32, align 4
  %tmp34 = alloca i32, align 4
  %__inst57 = alloca %struct._GTypeInstance*, align 8
  %__t59 = alloca i64, align 8
  %__r62 = alloca i32, align 4
  %tmp77 = alloca i32, align 4
  %list = alloca %struct._GList*, align 8
  store %struct._GimpItemTree* %tree, %struct._GimpItemTree** %tree.addr, align 8
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  store %struct._GimpItem* %parent, %struct._GimpItem** %parent.addr, align 8
  store i32 %position, i32* %position.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpItemTree*, %struct._GimpItemTree** %tree.addr, align 8
  %1 = bitcast %struct._GimpItemTree* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_item_tree_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_item_tree_add_item, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end.137

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpItemTree*, %struct._GimpItemTree** %tree.addr, align 8
  %14 = bitcast %struct._GimpItemTree* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_item_tree_get_type() #7
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct._GimpItemTreePrivate*
  store %struct._GimpItemTreePrivate* %15, %struct._GimpItemTreePrivate** %private, align 8
  br label %do.body.13

do.body.13:                                       ; preds = %do.end
  %16 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %17 = bitcast %struct._GimpItem* %16 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %17, %struct._GTypeInstance** %__inst15, align 8
  %18 = load %struct._GimpItemTreePrivate*, %struct._GimpItemTreePrivate** %private, align 8
  %item_type = getelementptr inbounds %struct._GimpItemTreePrivate, %struct._GimpItemTreePrivate* %18, i32 0, i32 2
  %19 = load i64, i64* %item_type, align 8
  store i64 %19, i64* %__t17, align 8
  %20 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst15, align 8
  %tobool20 = icmp ne %struct._GTypeInstance* %20, null
  br i1 %tobool20, label %if.else.22, label %if.then.21

if.then.21:                                       ; preds = %do.body.13
  store i32 0, i32* %__r19, align 4
  br label %if.end.33

if.else.22:                                       ; preds = %do.body.13
  %21 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst15, align 8
  %g_class23 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %21, i32 0, i32 0
  %22 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class23, align 8
  %tobool24 = icmp ne %struct._GTypeClass* %22, null
  br i1 %tobool24, label %land.lhs.true.25, label %if.else.30

land.lhs.true.25:                                 ; preds = %if.else.22
  %23 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst15, align 8
  %g_class26 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %23, i32 0, i32 0
  %24 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class26, align 8
  %g_type27 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %24, i32 0, i32 0
  %25 = load i64, i64* %g_type27, align 8
  %26 = load i64, i64* %__t17, align 8
  %cmp28 = icmp eq i64 %25, %26
  br i1 %cmp28, label %if.then.29, label %if.else.30

if.then.29:                                       ; preds = %land.lhs.true.25
  store i32 1, i32* %__r19, align 4
  br label %if.end.32

if.else.30:                                       ; preds = %land.lhs.true.25, %if.else.22
  %27 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst15, align 8
  %28 = load i64, i64* %__t17, align 8
  %call31 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %27, i64 %28) #8
  store i32 %call31, i32* %__r19, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.30, %if.then.29
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.then.21
  %29 = load i32, i32* %__r19, align 4
  store i32 %29, i32* %tmp34
  %30 = load i32, i32* %tmp34
  %tobool35 = icmp ne i32 %30, 0
  br i1 %tobool35, label %if.then.36, label %if.else.37

if.then.36:                                       ; preds = %if.end.33
  br label %if.end.38

if.else.37:                                       ; preds = %if.end.33
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_item_tree_add_item, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.14, i32 0, i32 0))
  br label %if.end.137

if.end.38:                                        ; preds = %if.then.36
  br label %do.end.39

do.end.39:                                        ; preds = %if.end.38
  br label %do.body.40

do.body.40:                                       ; preds = %do.end.39
  %31 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call41 = call i32 @gimp_item_is_attached(%struct._GimpItem* %31)
  %tobool42 = icmp ne i32 %call41, 0
  br i1 %tobool42, label %if.else.44, label %if.then.43

if.then.43:                                       ; preds = %do.body.40
  br label %if.end.45

if.else.44:                                       ; preds = %do.body.40
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_item_tree_add_item, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.15, i32 0, i32 0))
  br label %if.end.137

if.end.45:                                        ; preds = %if.then.43
  br label %do.end.46

do.end.46:                                        ; preds = %if.end.45
  br label %do.body.47

do.body.47:                                       ; preds = %do.end.46
  %32 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call48 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %32)
  %33 = load %struct._GimpItemTreePrivate*, %struct._GimpItemTreePrivate** %private, align 8
  %image = getelementptr inbounds %struct._GimpItemTreePrivate, %struct._GimpItemTreePrivate* %33, i32 0, i32 0
  %34 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %cmp49 = icmp eq %struct._GimpImage* %call48, %34
  br i1 %cmp49, label %if.then.50, label %if.else.51

if.then.50:                                       ; preds = %do.body.47
  br label %if.end.52

if.else.51:                                       ; preds = %do.body.47
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_item_tree_add_item, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.16, i32 0, i32 0))
  br label %if.end.137

if.end.52:                                        ; preds = %if.then.50
  br label %do.end.53

do.end.53:                                        ; preds = %if.end.52
  br label %do.body.54

do.body.54:                                       ; preds = %do.end.53
  %35 = load %struct._GimpItem*, %struct._GimpItem** %parent.addr, align 8
  %cmp55 = icmp eq %struct._GimpItem* %35, null
  br i1 %cmp55, label %if.then.79, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.54
  %36 = load %struct._GimpItem*, %struct._GimpItem** %parent.addr, align 8
  %37 = bitcast %struct._GimpItem* %36 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %37, %struct._GTypeInstance** %__inst57, align 8
  %38 = load %struct._GimpItemTreePrivate*, %struct._GimpItemTreePrivate** %private, align 8
  %item_type60 = getelementptr inbounds %struct._GimpItemTreePrivate, %struct._GimpItemTreePrivate* %38, i32 0, i32 2
  %39 = load i64, i64* %item_type60, align 8
  store i64 %39, i64* %__t59, align 8
  %40 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst57, align 8
  %tobool63 = icmp ne %struct._GTypeInstance* %40, null
  br i1 %tobool63, label %if.else.65, label %if.then.64

if.then.64:                                       ; preds = %lor.lhs.false
  store i32 0, i32* %__r62, align 4
  br label %if.end.76

if.else.65:                                       ; preds = %lor.lhs.false
  %41 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst57, align 8
  %g_class66 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %41, i32 0, i32 0
  %42 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class66, align 8
  %tobool67 = icmp ne %struct._GTypeClass* %42, null
  br i1 %tobool67, label %land.lhs.true.68, label %if.else.73

land.lhs.true.68:                                 ; preds = %if.else.65
  %43 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst57, align 8
  %g_class69 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %43, i32 0, i32 0
  %44 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class69, align 8
  %g_type70 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %44, i32 0, i32 0
  %45 = load i64, i64* %g_type70, align 8
  %46 = load i64, i64* %__t59, align 8
  %cmp71 = icmp eq i64 %45, %46
  br i1 %cmp71, label %if.then.72, label %if.else.73

if.then.72:                                       ; preds = %land.lhs.true.68
  store i32 1, i32* %__r62, align 4
  br label %if.end.75

if.else.73:                                       ; preds = %land.lhs.true.68, %if.else.65
  %47 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst57, align 8
  %48 = load i64, i64* %__t59, align 8
  %call74 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %47, i64 %48) #8
  store i32 %call74, i32* %__r62, align 4
  br label %if.end.75

if.end.75:                                        ; preds = %if.else.73, %if.then.72
  br label %if.end.76

if.end.76:                                        ; preds = %if.end.75, %if.then.64
  %49 = load i32, i32* %__r62, align 4
  store i32 %49, i32* %tmp77
  %50 = load i32, i32* %tmp77
  %tobool78 = icmp ne i32 %50, 0
  br i1 %tobool78, label %if.then.79, label %if.else.80

if.then.79:                                       ; preds = %if.end.76, %do.body.54
  br label %if.end.81

if.else.80:                                       ; preds = %if.end.76
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_item_tree_add_item, i32 0, i32 0), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.21, i32 0, i32 0))
  br label %if.end.137

if.end.81:                                        ; preds = %if.then.79
  br label %do.end.82

do.end.82:                                        ; preds = %if.end.81
  br label %do.body.83

do.body.83:                                       ; preds = %do.end.82
  %51 = load %struct._GimpItem*, %struct._GimpItem** %parent.addr, align 8
  %cmp84 = icmp eq %struct._GimpItem* %51, null
  br i1 %cmp84, label %if.then.88, label %lor.lhs.false.85

lor.lhs.false.85:                                 ; preds = %do.body.83
  %52 = load %struct._GimpItem*, %struct._GimpItem** %parent.addr, align 8
  %call86 = call %struct._GimpItemTree* @gimp_item_get_tree(%struct._GimpItem* %52)
  %53 = load %struct._GimpItemTree*, %struct._GimpItemTree** %tree.addr, align 8
  %cmp87 = icmp eq %struct._GimpItemTree* %call86, %53
  br i1 %cmp87, label %if.then.88, label %if.else.89

if.then.88:                                       ; preds = %lor.lhs.false.85, %do.body.83
  br label %if.end.90

if.else.89:                                       ; preds = %lor.lhs.false.85
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_item_tree_add_item, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.22, i32 0, i32 0))
  br label %if.end.137

if.end.90:                                        ; preds = %if.then.88
  br label %do.end.91

do.end.91:                                        ; preds = %if.end.90
  br label %do.body.92

do.body.92:                                       ; preds = %do.end.91
  %54 = load %struct._GimpItem*, %struct._GimpItem** %parent.addr, align 8
  %cmp93 = icmp eq %struct._GimpItem* %54, null
  br i1 %cmp93, label %if.then.99, label %lor.lhs.false.94

lor.lhs.false.94:                                 ; preds = %do.body.92
  %55 = load %struct._GimpItem*, %struct._GimpItem** %parent.addr, align 8
  %56 = bitcast %struct._GimpItem* %55 to %struct._GTypeInstance*
  %call95 = call i64 @gimp_viewable_get_type() #7
  %call96 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %56, i64 %call95)
  %57 = bitcast %struct._GTypeInstance* %call96 to %struct._GimpViewable*
  %call97 = call %struct._GimpContainer* @gimp_viewable_get_children(%struct._GimpViewable* %57)
  %tobool98 = icmp ne %struct._GimpContainer* %call97, null
  br i1 %tobool98, label %if.then.99, label %if.else.100

if.then.99:                                       ; preds = %lor.lhs.false.94, %do.body.92
  br label %if.end.101

if.else.100:                                      ; preds = %lor.lhs.false.94
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_item_tree_add_item, i32 0, i32 0), i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.23, i32 0, i32 0))
  br label %if.end.137

if.end.101:                                       ; preds = %if.then.99
  br label %do.end.102

do.end.102:                                       ; preds = %if.end.101
  %58 = load %struct._GimpItemTree*, %struct._GimpItemTree** %tree.addr, align 8
  %59 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  call void @gimp_item_tree_uniquefy_name(%struct._GimpItemTree* %58, %struct._GimpItem* %59, i8* null)
  %60 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %61 = bitcast %struct._GimpItem* %60 to %struct._GTypeInstance*
  %call103 = call i64 @gimp_viewable_get_type() #7
  %call104 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %61, i64 %call103)
  %62 = bitcast %struct._GTypeInstance* %call104 to %struct._GimpViewable*
  %call105 = call %struct._GimpContainer* @gimp_viewable_get_children(%struct._GimpViewable* %62)
  store %struct._GimpContainer* %call105, %struct._GimpContainer** %children, align 8
  %63 = load %struct._GimpContainer*, %struct._GimpContainer** %children, align 8
  %tobool106 = icmp ne %struct._GimpContainer* %63, null
  br i1 %tobool106, label %if.then.107, label %if.end.115

if.then.107:                                      ; preds = %do.end.102
  %64 = load %struct._GimpContainer*, %struct._GimpContainer** %children, align 8
  %65 = bitcast %struct._GimpContainer* %64 to %struct._GTypeInstance*
  %call109 = call i64 @gimp_item_stack_get_type() #7
  %call110 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %65, i64 %call109)
  %66 = bitcast %struct._GTypeInstance* %call110 to %struct._GimpItemStack*
  %call111 = call %struct._GList* @gimp_item_stack_get_item_list(%struct._GimpItemStack* %66)
  store %struct._GList* %call111, %struct._GList** %list, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.107
  %67 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool112 = icmp ne %struct._GList* %67, null
  br i1 %tobool112, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %68 = load %struct._GimpItemTree*, %struct._GimpItemTree** %tree.addr, align 8
  %69 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %69, i32 0, i32 0
  %70 = load i8*, i8** %data, align 8
  %71 = bitcast i8* %70 to %struct._GimpItem*
  call void @gimp_item_tree_uniquefy_name(%struct._GimpItemTree* %68, %struct._GimpItem* %71, i8* null)
  %72 = load %struct._GList*, %struct._GList** %list, align 8
  %73 = load %struct._GList*, %struct._GList** %list, align 8
  %data113 = getelementptr inbounds %struct._GList, %struct._GList* %73, i32 0, i32 0
  %74 = load i8*, i8** %data113, align 8
  %call114 = call %struct._GList* @g_list_remove(%struct._GList* %72, i8* %74)
  store %struct._GList* %call114, %struct._GList** %list, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.115

if.end.115:                                       ; preds = %while.end, %do.end.102
  %75 = load %struct._GimpItem*, %struct._GimpItem** %parent.addr, align 8
  %tobool116 = icmp ne %struct._GimpItem* %75, null
  br i1 %tobool116, label %if.then.117, label %if.else.121

if.then.117:                                      ; preds = %if.end.115
  %76 = load %struct._GimpItem*, %struct._GimpItem** %parent.addr, align 8
  %77 = bitcast %struct._GimpItem* %76 to %struct._GTypeInstance*
  %call118 = call i64 @gimp_viewable_get_type() #7
  %call119 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %77, i64 %call118)
  %78 = bitcast %struct._GTypeInstance* %call119 to %struct._GimpViewable*
  %call120 = call %struct._GimpContainer* @gimp_viewable_get_children(%struct._GimpViewable* %78)
  store %struct._GimpContainer* %call120, %struct._GimpContainer** %container, align 8
  br label %if.end.123

if.else.121:                                      ; preds = %if.end.115
  %79 = load %struct._GimpItemTree*, %struct._GimpItemTree** %tree.addr, align 8
  %container122 = getelementptr inbounds %struct._GimpItemTree, %struct._GimpItemTree* %79, i32 0, i32 1
  %80 = load %struct._GimpContainer*, %struct._GimpContainer** %container122, align 8
  store %struct._GimpContainer* %80, %struct._GimpContainer** %container, align 8
  br label %if.end.123

if.end.123:                                       ; preds = %if.else.121, %if.then.117
  %81 = load %struct._GimpItem*, %struct._GimpItem** %parent.addr, align 8
  %tobool124 = icmp ne %struct._GimpItem* %81, null
  br i1 %tobool124, label %if.then.125, label %if.end.130

if.then.125:                                      ; preds = %if.end.123
  %82 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %83 = bitcast %struct._GimpItem* %82 to %struct._GTypeInstance*
  %call126 = call i64 @gimp_viewable_get_type() #7
  %call127 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %83, i64 %call126)
  %84 = bitcast %struct._GTypeInstance* %call127 to %struct._GimpViewable*
  %85 = load %struct._GimpItem*, %struct._GimpItem** %parent.addr, align 8
  %86 = bitcast %struct._GimpItem* %85 to %struct._GTypeInstance*
  %call128 = call i64 @gimp_viewable_get_type() #7
  %call129 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %86, i64 %call128)
  %87 = bitcast %struct._GTypeInstance* %call129 to %struct._GimpViewable*
  call void @gimp_viewable_set_parent(%struct._GimpViewable* %84, %struct._GimpViewable* %87)
  br label %if.end.130

if.end.130:                                       ; preds = %if.then.125, %if.end.123
  %88 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %89 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %90 = bitcast %struct._GimpItem* %89 to %struct._GTypeInstance*
  %call131 = call i64 @gimp_object_get_type() #7
  %call132 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %90, i64 %call131)
  %91 = bitcast %struct._GTypeInstance* %call132 to %struct._GimpObject*
  %92 = load i32, i32* %position.addr, align 4
  %call133 = call i32 @gimp_container_insert(%struct._GimpContainer* %88, %struct._GimpObject* %91, i32 %92)
  %93 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call134 = call i32 @gimp_item_is_removed(%struct._GimpItem* %93)
  %tobool135 = icmp ne i32 %call134, 0
  br i1 %tobool135, label %if.then.136, label %if.end.137

if.then.136:                                      ; preds = %if.end.130
  %94 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  call void @gimp_item_unset_removed(%struct._GimpItem* %94)
  br label %if.end.137

if.end.137:                                       ; preds = %if.else.9, %if.else.37, %if.else.44, %if.else.51, %if.else.80, %if.else.89, %if.else.100, %if.then.136, %if.end.130
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_item_tree_uniquefy_name(%struct._GimpItemTree* %tree, %struct._GimpItem* %item, i8* %new_name) #3 {
entry:
  %tree.addr = alloca %struct._GimpItemTree*, align 8
  %item.addr = alloca %struct._GimpItem*, align 8
  %new_name.addr = alloca i8*, align 8
  %private = alloca %struct._GimpItemTreePrivate*, align 8
  %name = alloca i8*, align 8
  %ext = alloca i8*, align 8
  %new_name14 = alloca i8*, align 8
  %number = alloca i32, align 4
  %ext_str = alloca [8 x i8], align 1
  store %struct._GimpItemTree* %tree, %struct._GimpItemTree** %tree.addr, align 8
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  store i8* %new_name, i8** %new_name.addr, align 8
  %0 = load %struct._GimpItemTree*, %struct._GimpItemTree** %tree.addr, align 8
  %1 = bitcast %struct._GimpItemTree* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_item_tree_get_type() #7
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpItemTreePrivate*
  store %struct._GimpItemTreePrivate* %2, %struct._GimpItemTreePrivate** %private, align 8
  %3 = load i8*, i8** %new_name.addr, align 8
  %tobool = icmp ne i8* %3, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct._GimpItemTreePrivate*, %struct._GimpItemTreePrivate** %private, align 8
  %name_hash = getelementptr inbounds %struct._GimpItemTreePrivate, %struct._GimpItemTreePrivate* %4, i32 0, i32 4
  %5 = load %struct._GHashTable*, %struct._GHashTable** %name_hash, align 8
  %6 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %7 = bitcast %struct._GimpItem* %6 to i8*
  %call2 = call i8* @gimp_object_get_name(i8* %7)
  %call3 = call i32 @g_hash_table_remove(%struct._GHashTable* %5, i8* %call2)
  %8 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %9 = bitcast %struct._GimpItem* %8 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_object_get_type() #7
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call4)
  %10 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpObject*
  %11 = load i8*, i8** %new_name.addr, align 8
  call void @gimp_object_set_name(%struct._GimpObject* %10, i8* %11)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load %struct._GimpItemTreePrivate*, %struct._GimpItemTreePrivate** %private, align 8
  %name_hash6 = getelementptr inbounds %struct._GimpItemTreePrivate, %struct._GimpItemTreePrivate* %12, i32 0, i32 4
  %13 = load %struct._GHashTable*, %struct._GHashTable** %name_hash6, align 8
  %14 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %15 = bitcast %struct._GimpItem* %14 to i8*
  %call7 = call i8* @gimp_object_get_name(i8* %15)
  %call8 = call i8* @g_hash_table_lookup(%struct._GHashTable* %13, i8* %call7)
  %tobool9 = icmp ne i8* %call8, null
  br i1 %tobool9, label %if.then.10, label %if.end.37

if.then.10:                                       ; preds = %if.end
  %16 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %17 = bitcast %struct._GimpItem* %16 to i8*
  %call11 = call i8* @gimp_object_get_name(i8* %17)
  %call12 = call noalias i8* @g_strdup(i8* %call11)
  store i8* %call12, i8** %name, align 8
  %18 = load i8*, i8** %name, align 8
  %call13 = call i8* @strrchr(i8* %18, i32 35) #8
  store i8* %call13, i8** %ext, align 8
  store i8* null, i8** %new_name14, align 8
  store i32 0, i32* %number, align 4
  %19 = load i8*, i8** %ext, align 8
  %tobool15 = icmp ne i8* %19, null
  br i1 %tobool15, label %if.then.16, label %if.end.30

if.then.16:                                       ; preds = %if.then.10
  %20 = load i8*, i8** %ext, align 8
  %add.ptr = getelementptr inbounds i8, i8* %20, i64 1
  %call17 = call i32 @atoi(i8* %add.ptr) #8
  store i32 %call17, i32* %number, align 4
  %arraydecay = getelementptr inbounds [8 x i8], [8 x i8]* %ext_str, i32 0, i32 0
  %21 = load i32, i32* %number, align 4
  %call18 = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* %arraydecay, i64 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.41, i32 0, i32 0), i32 %21)
  %arraydecay19 = getelementptr inbounds [8 x i8], [8 x i8]* %ext_str, i32 0, i32 0
  %22 = load i8*, i8** %ext, align 8
  %add.ptr20 = getelementptr inbounds i8, i8* %22, i64 1
  %call21 = call i32 @strcmp(i8* %arraydecay19, i8* %add.ptr20) #8
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.else, label %if.then.23

if.then.23:                                       ; preds = %if.then.16
  %23 = load i8*, i8** %ext, align 8
  %24 = load i8*, i8** %name, align 8
  %cmp = icmp ugt i8* %23, %24
  br i1 %cmp, label %land.lhs.true, label %if.end.28

land.lhs.true:                                    ; preds = %if.then.23
  %25 = load i8*, i8** %ext, align 8
  %add.ptr24 = getelementptr inbounds i8, i8* %25, i64 -1
  %26 = load i8, i8* %add.ptr24, align 1
  %conv = sext i8 %26 to i32
  %cmp25 = icmp eq i32 %conv, 32
  br i1 %cmp25, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %land.lhs.true
  %27 = load i8*, i8** %ext, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %27, i32 -1
  store i8* %incdec.ptr, i8** %ext, align 8
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.27, %land.lhs.true, %if.then.23
  %28 = load i8*, i8** %ext, align 8
  store i8 0, i8* %28, align 1
  br label %if.end.29

if.else:                                          ; preds = %if.then.16
  store i32 0, i32* %number, align 4
  br label %if.end.29

if.end.29:                                        ; preds = %if.else, %if.end.28
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.29, %if.then.10
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end.30
  %29 = load i32, i32* %number, align 4
  %inc = add nsw i32 %29, 1
  store i32 %inc, i32* %number, align 4
  %30 = load i8*, i8** %new_name14, align 8
  call void @g_free(i8* %30)
  %31 = load i8*, i8** %name, align 8
  %32 = load i32, i32* %number, align 4
  %call31 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.42, i32 0, i32 0), i8* %31, i32 %32)
  store i8* %call31, i8** %new_name14, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %33 = load %struct._GimpItemTreePrivate*, %struct._GimpItemTreePrivate** %private, align 8
  %name_hash32 = getelementptr inbounds %struct._GimpItemTreePrivate, %struct._GimpItemTreePrivate* %33, i32 0, i32 4
  %34 = load %struct._GHashTable*, %struct._GHashTable** %name_hash32, align 8
  %35 = load i8*, i8** %new_name14, align 8
  %call33 = call i8* @g_hash_table_lookup(%struct._GHashTable* %34, i8* %35)
  %tobool34 = icmp ne i8* %call33, null
  br i1 %tobool34, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %36 = load i8*, i8** %name, align 8
  call void @g_free(i8* %36)
  %37 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %38 = bitcast %struct._GimpItem* %37 to %struct._GTypeInstance*
  %call35 = call i64 @gimp_object_get_type() #7
  %call36 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %38, i64 %call35)
  %39 = bitcast %struct._GTypeInstance* %call36 to %struct._GimpObject*
  %40 = load i8*, i8** %new_name14, align 8
  call void @gimp_object_take_name(%struct._GimpObject* %39, i8* %40)
  br label %if.end.37

if.end.37:                                        ; preds = %do.end, %if.end
  %41 = load %struct._GimpItemTreePrivate*, %struct._GimpItemTreePrivate** %private, align 8
  %name_hash38 = getelementptr inbounds %struct._GimpItemTreePrivate, %struct._GimpItemTreePrivate* %41, i32 0, i32 4
  %42 = load %struct._GHashTable*, %struct._GHashTable** %name_hash38, align 8
  %43 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %44 = bitcast %struct._GimpItem* %43 to i8*
  %call39 = call i8* @gimp_object_get_name(i8* %44)
  %45 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %46 = bitcast %struct._GimpItem* %45 to i8*
  %call40 = call i32 @g_hash_table_insert(%struct._GHashTable* %42, i8* %call39, i8* %46)
  ret void
}

declare %struct._GList* @gimp_item_stack_get_item_list(%struct._GimpItemStack*) #1

declare %struct._GList* @g_list_remove(%struct._GList*, i8*) #1

declare void @gimp_viewable_set_parent(%struct._GimpViewable*, %struct._GimpViewable*) #1

declare i32 @gimp_container_insert(%struct._GimpContainer*, %struct._GimpObject*, i32) #1

declare i32 @gimp_item_is_removed(%struct._GimpItem*) #1

declare void @gimp_item_unset_removed(%struct._GimpItem*) #1

; Function Attrs: nounwind uwtable
define %struct._GimpItem* @gimp_item_tree_remove_item(%struct._GimpItemTree* %tree, %struct._GimpItem* %item, %struct._GimpItem* %new_active) #3 {
entry:
  %retval = alloca %struct._GimpItem*, align 8
  %tree.addr = alloca %struct._GimpItemTree*, align 8
  %item.addr = alloca %struct._GimpItem*, align 8
  %new_active.addr = alloca %struct._GimpItem*, align 8
  %private = alloca %struct._GimpItemTreePrivate*, align 8
  %parent = alloca %struct._GimpItem*, align 8
  %container = alloca %struct._GimpContainer*, align 8
  %children = alloca %struct._GimpContainer*, align 8
  %index = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst15 = alloca %struct._GTypeInstance*, align 8
  %__t17 = alloca i64, align 8
  %__r19 = alloca i32, align 4
  %tmp34 = alloca i32, align 4
  %list = alloca %struct._GList*, align 8
  %n_children = alloca i32, align 4
  store %struct._GimpItemTree* %tree, %struct._GimpItemTree** %tree.addr, align 8
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  store %struct._GimpItem* %new_active, %struct._GimpItem** %new_active.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpItemTree*, %struct._GimpItemTree** %tree.addr, align 8
  %1 = bitcast %struct._GimpItemTree* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_item_tree_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_item_tree_remove_item, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i32 0, i32 0))
  store %struct._GimpItem* null, %struct._GimpItem** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpItemTree*, %struct._GimpItemTree** %tree.addr, align 8
  %14 = bitcast %struct._GimpItemTree* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_item_tree_get_type() #7
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct._GimpItemTreePrivate*
  store %struct._GimpItemTreePrivate* %15, %struct._GimpItemTreePrivate** %private, align 8
  br label %do.body.13

do.body.13:                                       ; preds = %do.end
  %16 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %17 = bitcast %struct._GimpItem* %16 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %17, %struct._GTypeInstance** %__inst15, align 8
  %18 = load %struct._GimpItemTreePrivate*, %struct._GimpItemTreePrivate** %private, align 8
  %item_type = getelementptr inbounds %struct._GimpItemTreePrivate, %struct._GimpItemTreePrivate* %18, i32 0, i32 2
  %19 = load i64, i64* %item_type, align 8
  store i64 %19, i64* %__t17, align 8
  %20 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst15, align 8
  %tobool20 = icmp ne %struct._GTypeInstance* %20, null
  br i1 %tobool20, label %if.else.22, label %if.then.21

if.then.21:                                       ; preds = %do.body.13
  store i32 0, i32* %__r19, align 4
  br label %if.end.33

if.else.22:                                       ; preds = %do.body.13
  %21 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst15, align 8
  %g_class23 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %21, i32 0, i32 0
  %22 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class23, align 8
  %tobool24 = icmp ne %struct._GTypeClass* %22, null
  br i1 %tobool24, label %land.lhs.true.25, label %if.else.30

land.lhs.true.25:                                 ; preds = %if.else.22
  %23 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst15, align 8
  %g_class26 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %23, i32 0, i32 0
  %24 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class26, align 8
  %g_type27 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %24, i32 0, i32 0
  %25 = load i64, i64* %g_type27, align 8
  %26 = load i64, i64* %__t17, align 8
  %cmp28 = icmp eq i64 %25, %26
  br i1 %cmp28, label %if.then.29, label %if.else.30

if.then.29:                                       ; preds = %land.lhs.true.25
  store i32 1, i32* %__r19, align 4
  br label %if.end.32

if.else.30:                                       ; preds = %land.lhs.true.25, %if.else.22
  %27 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst15, align 8
  %28 = load i64, i64* %__t17, align 8
  %call31 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %27, i64 %28) #8
  store i32 %call31, i32* %__r19, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.30, %if.then.29
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.then.21
  %29 = load i32, i32* %__r19, align 4
  store i32 %29, i32* %tmp34
  %30 = load i32, i32* %tmp34
  %tobool35 = icmp ne i32 %30, 0
  br i1 %tobool35, label %if.then.36, label %if.else.37

if.then.36:                                       ; preds = %if.end.33
  br label %if.end.38

if.else.37:                                       ; preds = %if.end.33
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_item_tree_remove_item, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.14, i32 0, i32 0))
  store %struct._GimpItem* null, %struct._GimpItem** %retval
  br label %return

if.end.38:                                        ; preds = %if.then.36
  br label %do.end.39

do.end.39:                                        ; preds = %if.end.38
  br label %do.body.40

do.body.40:                                       ; preds = %do.end.39
  %31 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call41 = call %struct._GimpItemTree* @gimp_item_get_tree(%struct._GimpItem* %31)
  %32 = load %struct._GimpItemTree*, %struct._GimpItemTree** %tree.addr, align 8
  %cmp42 = icmp eq %struct._GimpItemTree* %call41, %32
  br i1 %cmp42, label %if.then.43, label %if.else.44

if.then.43:                                       ; preds = %do.body.40
  br label %if.end.45

if.else.44:                                       ; preds = %do.body.40
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_item_tree_remove_item, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.24, i32 0, i32 0))
  store %struct._GimpItem* null, %struct._GimpItem** %retval
  br label %return

if.end.45:                                        ; preds = %if.then.43
  br label %do.end.46

do.end.46:                                        ; preds = %if.end.45
  %33 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call47 = call %struct._GimpItem* @gimp_item_get_parent(%struct._GimpItem* %33)
  store %struct._GimpItem* %call47, %struct._GimpItem** %parent, align 8
  %34 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call48 = call %struct._GimpContainer* @gimp_item_get_container(%struct._GimpItem* %34)
  store %struct._GimpContainer* %call48, %struct._GimpContainer** %container, align 8
  %35 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call49 = call i32 @gimp_item_get_index(%struct._GimpItem* %35)
  store i32 %call49, i32* %index, align 4
  %36 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %37 = bitcast %struct._GimpItem* %36 to i8*
  %call50 = call i8* @g_object_ref(i8* %37)
  %38 = load %struct._GimpItemTreePrivate*, %struct._GimpItemTreePrivate** %private, align 8
  %name_hash = getelementptr inbounds %struct._GimpItemTreePrivate, %struct._GimpItemTreePrivate* %38, i32 0, i32 4
  %39 = load %struct._GHashTable*, %struct._GHashTable** %name_hash, align 8
  %40 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %41 = bitcast %struct._GimpItem* %40 to i8*
  %call51 = call i8* @gimp_object_get_name(i8* %41)
  %call52 = call i32 @g_hash_table_remove(%struct._GHashTable* %39, i8* %call51)
  %42 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %43 = bitcast %struct._GimpItem* %42 to %struct._GTypeInstance*
  %call53 = call i64 @gimp_viewable_get_type() #7
  %call54 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %43, i64 %call53)
  %44 = bitcast %struct._GTypeInstance* %call54 to %struct._GimpViewable*
  %call55 = call %struct._GimpContainer* @gimp_viewable_get_children(%struct._GimpViewable* %44)
  store %struct._GimpContainer* %call55, %struct._GimpContainer** %children, align 8
  %45 = load %struct._GimpContainer*, %struct._GimpContainer** %children, align 8
  %tobool56 = icmp ne %struct._GimpContainer* %45, null
  br i1 %tobool56, label %if.then.57, label %if.end.68

if.then.57:                                       ; preds = %do.end.46
  %46 = load %struct._GimpContainer*, %struct._GimpContainer** %children, align 8
  %47 = bitcast %struct._GimpContainer* %46 to %struct._GTypeInstance*
  %call59 = call i64 @gimp_item_stack_get_type() #7
  %call60 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %47, i64 %call59)
  %48 = bitcast %struct._GTypeInstance* %call60 to %struct._GimpItemStack*
  %call61 = call %struct._GList* @gimp_item_stack_get_item_list(%struct._GimpItemStack* %48)
  store %struct._GList* %call61, %struct._GList** %list, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.57
  %49 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool62 = icmp ne %struct._GList* %49, null
  br i1 %tobool62, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %50 = load %struct._GimpItemTreePrivate*, %struct._GimpItemTreePrivate** %private, align 8
  %name_hash63 = getelementptr inbounds %struct._GimpItemTreePrivate, %struct._GimpItemTreePrivate* %50, i32 0, i32 4
  %51 = load %struct._GHashTable*, %struct._GHashTable** %name_hash63, align 8
  %52 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %52, i32 0, i32 0
  %53 = load i8*, i8** %data, align 8
  %call64 = call i8* @gimp_object_get_name(i8* %53)
  %call65 = call i32 @g_hash_table_remove(%struct._GHashTable* %51, i8* %call64)
  %54 = load %struct._GList*, %struct._GList** %list, align 8
  %55 = load %struct._GList*, %struct._GList** %list, align 8
  %data66 = getelementptr inbounds %struct._GList, %struct._GList* %55, i32 0, i32 0
  %56 = load i8*, i8** %data66, align 8
  %call67 = call %struct._GList* @g_list_remove(%struct._GList* %54, i8* %56)
  store %struct._GList* %call67, %struct._GList** %list, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.68

if.end.68:                                        ; preds = %while.end, %do.end.46
  %57 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %58 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %59 = bitcast %struct._GimpItem* %58 to %struct._GTypeInstance*
  %call69 = call i64 @gimp_object_get_type() #7
  %call70 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %59, i64 %call69)
  %60 = bitcast %struct._GTypeInstance* %call70 to %struct._GimpObject*
  %call71 = call i32 @gimp_container_remove(%struct._GimpContainer* %57, %struct._GimpObject* %60)
  %61 = load %struct._GimpItem*, %struct._GimpItem** %parent, align 8
  %tobool72 = icmp ne %struct._GimpItem* %61, null
  br i1 %tobool72, label %if.then.73, label %if.end.76

if.then.73:                                       ; preds = %if.end.68
  %62 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %63 = bitcast %struct._GimpItem* %62 to %struct._GTypeInstance*
  %call74 = call i64 @gimp_viewable_get_type() #7
  %call75 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %63, i64 %call74)
  %64 = bitcast %struct._GTypeInstance* %call75 to %struct._GimpViewable*
  call void @gimp_viewable_set_parent(%struct._GimpViewable* %64, %struct._GimpViewable* null)
  br label %if.end.76

if.end.76:                                        ; preds = %if.then.73, %if.end.68
  %65 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  call void @gimp_item_removed(%struct._GimpItem* %65)
  %66 = load %struct._GimpItem*, %struct._GimpItem** %new_active.addr, align 8
  %tobool77 = icmp ne %struct._GimpItem* %66, null
  br i1 %tobool77, label %if.end.98, label %if.then.78

if.then.78:                                       ; preds = %if.end.76
  %67 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %call80 = call i32 @gimp_container_get_n_children(%struct._GimpContainer* %67)
  store i32 %call80, i32* %n_children, align 4
  %68 = load i32, i32* %n_children, align 4
  %cmp81 = icmp sgt i32 %68, 0
  br i1 %cmp81, label %if.then.82, label %if.else.93

if.then.82:                                       ; preds = %if.then.78
  %69 = load i32, i32* %index, align 4
  %70 = load i32, i32* %n_children, align 4
  %sub = sub nsw i32 %70, 1
  %cmp83 = icmp sgt i32 %69, %sub
  br i1 %cmp83, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.82
  %71 = load i32, i32* %n_children, align 4
  %sub84 = sub nsw i32 %71, 1
  br label %cond.end.88

cond.false:                                       ; preds = %if.then.82
  %72 = load i32, i32* %index, align 4
  %cmp85 = icmp slt i32 %72, 0
  br i1 %cmp85, label %cond.true.86, label %cond.false.87

cond.true.86:                                     ; preds = %cond.false
  br label %cond.end

cond.false.87:                                    ; preds = %cond.false
  %73 = load i32, i32* %index, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false.87, %cond.true.86
  %cond = phi i32 [ 0, %cond.true.86 ], [ %73, %cond.false.87 ]
  br label %cond.end.88

cond.end.88:                                      ; preds = %cond.end, %cond.true
  %cond89 = phi i32 [ %sub84, %cond.true ], [ %cond, %cond.end ]
  store i32 %cond89, i32* %index, align 4
  %74 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %75 = load i32, i32* %index, align 4
  %call90 = call %struct._GimpObject* @gimp_container_get_child_by_index(%struct._GimpContainer* %74, i32 %75)
  %76 = bitcast %struct._GimpObject* %call90 to %struct._GTypeInstance*
  %call91 = call i64 @gimp_item_get_type() #7
  %call92 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %76, i64 %call91)
  %77 = bitcast %struct._GTypeInstance* %call92 to %struct._GimpItem*
  store %struct._GimpItem* %77, %struct._GimpItem** %new_active.addr, align 8
  br label %if.end.97

if.else.93:                                       ; preds = %if.then.78
  %78 = load %struct._GimpItem*, %struct._GimpItem** %parent, align 8
  %tobool94 = icmp ne %struct._GimpItem* %78, null
  br i1 %tobool94, label %if.then.95, label %if.end.96

if.then.95:                                       ; preds = %if.else.93
  %79 = load %struct._GimpItem*, %struct._GimpItem** %parent, align 8
  store %struct._GimpItem* %79, %struct._GimpItem** %new_active.addr, align 8
  br label %if.end.96

if.end.96:                                        ; preds = %if.then.95, %if.else.93
  br label %if.end.97

if.end.97:                                        ; preds = %if.end.96, %cond.end.88
  br label %if.end.98

if.end.98:                                        ; preds = %if.end.97, %if.end.76
  %80 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %81 = bitcast %struct._GimpItem* %80 to i8*
  call void @g_object_unref(i8* %81)
  %82 = load %struct._GimpItem*, %struct._GimpItem** %new_active.addr, align 8
  store %struct._GimpItem* %82, %struct._GimpItem** %retval
  br label %return

return:                                           ; preds = %if.end.98, %if.else.44, %if.else.37, %if.else.9
  %83 = load %struct._GimpItem*, %struct._GimpItem** %retval
  ret %struct._GimpItem* %83
}

declare %struct._GimpContainer* @gimp_item_get_container(%struct._GimpItem*) #1

declare i32 @gimp_item_get_index(%struct._GimpItem*) #1

declare i8* @g_object_ref(i8*) #1

declare i32 @g_hash_table_remove(%struct._GHashTable*, i8*) #1

declare i8* @gimp_object_get_name(i8*) #1

declare i32 @gimp_container_remove(%struct._GimpContainer*, %struct._GimpObject*) #1

declare void @gimp_item_removed(%struct._GimpItem*) #1

declare %struct._GimpObject* @gimp_container_get_child_by_index(%struct._GimpContainer*, i32) #1

declare void @g_object_unref(i8*) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_item_tree_reorder_item(%struct._GimpItemTree* %tree, %struct._GimpItem* %item, %struct._GimpItem* %new_parent, i32 %new_index, i32 %push_undo, i8* %undo_desc) #3 {
entry:
  %retval = alloca i32, align 4
  %tree.addr = alloca %struct._GimpItemTree*, align 8
  %item.addr = alloca %struct._GimpItem*, align 8
  %new_parent.addr = alloca %struct._GimpItem*, align 8
  %new_index.addr = alloca i32, align 4
  %push_undo.addr = alloca i32, align 4
  %undo_desc.addr = alloca i8*, align 8
  %private = alloca %struct._GimpItemTreePrivate*, align 8
  %container = alloca %struct._GimpContainer*, align 8
  %new_container = alloca %struct._GimpContainer*, align 8
  %n_items = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst15 = alloca %struct._GTypeInstance*, align 8
  %__t17 = alloca i64, align 8
  %__r19 = alloca i32, align 4
  %tmp34 = alloca i32, align 4
  %__inst50 = alloca %struct._GTypeInstance*, align 8
  %__t52 = alloca i64, align 8
  %__r55 = alloca i32, align 4
  %tmp70 = alloca i32, align 4
  store %struct._GimpItemTree* %tree, %struct._GimpItemTree** %tree.addr, align 8
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  store %struct._GimpItem* %new_parent, %struct._GimpItem** %new_parent.addr, align 8
  store i32 %new_index, i32* %new_index.addr, align 4
  store i32 %push_undo, i32* %push_undo.addr, align 4
  store i8* %undo_desc, i8** %undo_desc.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpItemTree*, %struct._GimpItemTree** %tree.addr, align 8
  %1 = bitcast %struct._GimpItemTree* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_item_tree_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_item_tree_reorder_item, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpItemTree*, %struct._GimpItemTree** %tree.addr, align 8
  %14 = bitcast %struct._GimpItemTree* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_item_tree_get_type() #7
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct._GimpItemTreePrivate*
  store %struct._GimpItemTreePrivate* %15, %struct._GimpItemTreePrivate** %private, align 8
  br label %do.body.13

do.body.13:                                       ; preds = %do.end
  %16 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %17 = bitcast %struct._GimpItem* %16 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %17, %struct._GTypeInstance** %__inst15, align 8
  %18 = load %struct._GimpItemTreePrivate*, %struct._GimpItemTreePrivate** %private, align 8
  %item_type = getelementptr inbounds %struct._GimpItemTreePrivate, %struct._GimpItemTreePrivate* %18, i32 0, i32 2
  %19 = load i64, i64* %item_type, align 8
  store i64 %19, i64* %__t17, align 8
  %20 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst15, align 8
  %tobool20 = icmp ne %struct._GTypeInstance* %20, null
  br i1 %tobool20, label %if.else.22, label %if.then.21

if.then.21:                                       ; preds = %do.body.13
  store i32 0, i32* %__r19, align 4
  br label %if.end.33

if.else.22:                                       ; preds = %do.body.13
  %21 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst15, align 8
  %g_class23 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %21, i32 0, i32 0
  %22 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class23, align 8
  %tobool24 = icmp ne %struct._GTypeClass* %22, null
  br i1 %tobool24, label %land.lhs.true.25, label %if.else.30

land.lhs.true.25:                                 ; preds = %if.else.22
  %23 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst15, align 8
  %g_class26 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %23, i32 0, i32 0
  %24 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class26, align 8
  %g_type27 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %24, i32 0, i32 0
  %25 = load i64, i64* %g_type27, align 8
  %26 = load i64, i64* %__t17, align 8
  %cmp28 = icmp eq i64 %25, %26
  br i1 %cmp28, label %if.then.29, label %if.else.30

if.then.29:                                       ; preds = %land.lhs.true.25
  store i32 1, i32* %__r19, align 4
  br label %if.end.32

if.else.30:                                       ; preds = %land.lhs.true.25, %if.else.22
  %27 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst15, align 8
  %28 = load i64, i64* %__t17, align 8
  %call31 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %27, i64 %28) #8
  store i32 %call31, i32* %__r19, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.30, %if.then.29
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.then.21
  %29 = load i32, i32* %__r19, align 4
  store i32 %29, i32* %tmp34
  %30 = load i32, i32* %tmp34
  %tobool35 = icmp ne i32 %30, 0
  br i1 %tobool35, label %if.then.36, label %if.else.37

if.then.36:                                       ; preds = %if.end.33
  br label %if.end.38

if.else.37:                                       ; preds = %if.end.33
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_item_tree_reorder_item, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.14, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.38:                                        ; preds = %if.then.36
  br label %do.end.39

do.end.39:                                        ; preds = %if.end.38
  br label %do.body.40

do.body.40:                                       ; preds = %do.end.39
  %31 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call41 = call %struct._GimpItemTree* @gimp_item_get_tree(%struct._GimpItem* %31)
  %32 = load %struct._GimpItemTree*, %struct._GimpItemTree** %tree.addr, align 8
  %cmp42 = icmp eq %struct._GimpItemTree* %call41, %32
  br i1 %cmp42, label %if.then.43, label %if.else.44

if.then.43:                                       ; preds = %do.body.40
  br label %if.end.45

if.else.44:                                       ; preds = %do.body.40
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_item_tree_reorder_item, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.24, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.45:                                        ; preds = %if.then.43
  br label %do.end.46

do.end.46:                                        ; preds = %if.end.45
  br label %do.body.47

do.body.47:                                       ; preds = %do.end.46
  %33 = load %struct._GimpItem*, %struct._GimpItem** %new_parent.addr, align 8
  %cmp48 = icmp eq %struct._GimpItem* %33, null
  br i1 %cmp48, label %if.then.72, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.47
  %34 = load %struct._GimpItem*, %struct._GimpItem** %new_parent.addr, align 8
  %35 = bitcast %struct._GimpItem* %34 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %35, %struct._GTypeInstance** %__inst50, align 8
  %36 = load %struct._GimpItemTreePrivate*, %struct._GimpItemTreePrivate** %private, align 8
  %item_type53 = getelementptr inbounds %struct._GimpItemTreePrivate, %struct._GimpItemTreePrivate* %36, i32 0, i32 2
  %37 = load i64, i64* %item_type53, align 8
  store i64 %37, i64* %__t52, align 8
  %38 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst50, align 8
  %tobool56 = icmp ne %struct._GTypeInstance* %38, null
  br i1 %tobool56, label %if.else.58, label %if.then.57

if.then.57:                                       ; preds = %lor.lhs.false
  store i32 0, i32* %__r55, align 4
  br label %if.end.69

if.else.58:                                       ; preds = %lor.lhs.false
  %39 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst50, align 8
  %g_class59 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %39, i32 0, i32 0
  %40 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class59, align 8
  %tobool60 = icmp ne %struct._GTypeClass* %40, null
  br i1 %tobool60, label %land.lhs.true.61, label %if.else.66

land.lhs.true.61:                                 ; preds = %if.else.58
  %41 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst50, align 8
  %g_class62 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %41, i32 0, i32 0
  %42 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class62, align 8
  %g_type63 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %42, i32 0, i32 0
  %43 = load i64, i64* %g_type63, align 8
  %44 = load i64, i64* %__t52, align 8
  %cmp64 = icmp eq i64 %43, %44
  br i1 %cmp64, label %if.then.65, label %if.else.66

if.then.65:                                       ; preds = %land.lhs.true.61
  store i32 1, i32* %__r55, align 4
  br label %if.end.68

if.else.66:                                       ; preds = %land.lhs.true.61, %if.else.58
  %45 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst50, align 8
  %46 = load i64, i64* %__t52, align 8
  %call67 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %45, i64 %46) #8
  store i32 %call67, i32* %__r55, align 4
  br label %if.end.68

if.end.68:                                        ; preds = %if.else.66, %if.then.65
  br label %if.end.69

if.end.69:                                        ; preds = %if.end.68, %if.then.57
  %47 = load i32, i32* %__r55, align 4
  store i32 %47, i32* %tmp70
  %48 = load i32, i32* %tmp70
  %tobool71 = icmp ne i32 %48, 0
  br i1 %tobool71, label %if.then.72, label %if.else.73

if.then.72:                                       ; preds = %if.end.69, %do.body.47
  br label %if.end.74

if.else.73:                                       ; preds = %if.end.69
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_item_tree_reorder_item, i32 0, i32 0), i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.25, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.74:                                        ; preds = %if.then.72
  br label %do.end.75

do.end.75:                                        ; preds = %if.end.74
  br label %do.body.76

do.body.76:                                       ; preds = %do.end.75
  %49 = load %struct._GimpItem*, %struct._GimpItem** %new_parent.addr, align 8
  %cmp77 = icmp eq %struct._GimpItem* %49, null
  br i1 %cmp77, label %if.then.81, label %lor.lhs.false.78

lor.lhs.false.78:                                 ; preds = %do.body.76
  %50 = load %struct._GimpItem*, %struct._GimpItem** %new_parent.addr, align 8
  %call79 = call %struct._GimpItemTree* @gimp_item_get_tree(%struct._GimpItem* %50)
  %51 = load %struct._GimpItemTree*, %struct._GimpItemTree** %tree.addr, align 8
  %cmp80 = icmp eq %struct._GimpItemTree* %call79, %51
  br i1 %cmp80, label %if.then.81, label %if.else.82

if.then.81:                                       ; preds = %lor.lhs.false.78, %do.body.76
  br label %if.end.83

if.else.82:                                       ; preds = %lor.lhs.false.78
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_item_tree_reorder_item, i32 0, i32 0), i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.26, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.83:                                        ; preds = %if.then.81
  br label %do.end.84

do.end.84:                                        ; preds = %if.end.83
  br label %do.body.85

do.body.85:                                       ; preds = %do.end.84
  %52 = load %struct._GimpItem*, %struct._GimpItem** %new_parent.addr, align 8
  %cmp86 = icmp eq %struct._GimpItem* %52, null
  br i1 %cmp86, label %if.then.92, label %lor.lhs.false.87

lor.lhs.false.87:                                 ; preds = %do.body.85
  %53 = load %struct._GimpItem*, %struct._GimpItem** %new_parent.addr, align 8
  %54 = bitcast %struct._GimpItem* %53 to %struct._GTypeInstance*
  %call88 = call i64 @gimp_viewable_get_type() #7
  %call89 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %54, i64 %call88)
  %55 = bitcast %struct._GTypeInstance* %call89 to %struct._GimpViewable*
  %call90 = call %struct._GimpContainer* @gimp_viewable_get_children(%struct._GimpViewable* %55)
  %tobool91 = icmp ne %struct._GimpContainer* %call90, null
  br i1 %tobool91, label %if.then.92, label %if.else.93

if.then.92:                                       ; preds = %lor.lhs.false.87, %do.body.85
  br label %if.end.94

if.else.93:                                       ; preds = %lor.lhs.false.87
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_item_tree_reorder_item, i32 0, i32 0), i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.27, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.94:                                        ; preds = %if.then.92
  br label %do.end.95

do.end.95:                                        ; preds = %if.end.94
  br label %do.body.96

do.body.96:                                       ; preds = %do.end.95
  %56 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %57 = load %struct._GimpItem*, %struct._GimpItem** %new_parent.addr, align 8
  %cmp97 = icmp ne %struct._GimpItem* %56, %57
  br i1 %cmp97, label %if.then.98, label %if.else.99

if.then.98:                                       ; preds = %do.body.96
  br label %if.end.100

if.else.99:                                       ; preds = %do.body.96
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_item_tree_reorder_item, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.28, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.100:                                       ; preds = %if.then.98
  br label %do.end.101

do.end.101:                                       ; preds = %if.end.100
  br label %do.body.102

do.body.102:                                      ; preds = %do.end.101
  %58 = load %struct._GimpItem*, %struct._GimpItem** %new_parent.addr, align 8
  %cmp103 = icmp eq %struct._GimpItem* %58, null
  br i1 %cmp103, label %if.then.111, label %lor.lhs.false.104

lor.lhs.false.104:                                ; preds = %do.body.102
  %59 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %60 = bitcast %struct._GimpItem* %59 to %struct._GTypeInstance*
  %call105 = call i64 @gimp_viewable_get_type() #7
  %call106 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %60, i64 %call105)
  %61 = bitcast %struct._GTypeInstance* %call106 to %struct._GimpViewable*
  %62 = load %struct._GimpItem*, %struct._GimpItem** %new_parent.addr, align 8
  %63 = bitcast %struct._GimpItem* %62 to %struct._GTypeInstance*
  %call107 = call i64 @gimp_viewable_get_type() #7
  %call108 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %63, i64 %call107)
  %64 = bitcast %struct._GTypeInstance* %call108 to %struct._GimpViewable*
  %call109 = call i32 @gimp_viewable_is_ancestor(%struct._GimpViewable* %61, %struct._GimpViewable* %64)
  %tobool110 = icmp ne i32 %call109, 0
  br i1 %tobool110, label %if.else.112, label %if.then.111

if.then.111:                                      ; preds = %lor.lhs.false.104, %do.body.102
  br label %if.end.113

if.else.112:                                      ; preds = %lor.lhs.false.104
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_item_tree_reorder_item, i32 0, i32 0), i8* getelementptr inbounds ([101 x i8], [101 x i8]* @.str.29, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.113:                                       ; preds = %if.then.111
  br label %do.end.114

do.end.114:                                       ; preds = %if.end.113
  %65 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call115 = call %struct._GimpContainer* @gimp_item_get_container(%struct._GimpItem* %65)
  store %struct._GimpContainer* %call115, %struct._GimpContainer** %container, align 8
  %66 = load %struct._GimpItem*, %struct._GimpItem** %new_parent.addr, align 8
  %tobool116 = icmp ne %struct._GimpItem* %66, null
  br i1 %tobool116, label %if.then.117, label %if.else.121

if.then.117:                                      ; preds = %do.end.114
  %67 = load %struct._GimpItem*, %struct._GimpItem** %new_parent.addr, align 8
  %68 = bitcast %struct._GimpItem* %67 to %struct._GTypeInstance*
  %call118 = call i64 @gimp_viewable_get_type() #7
  %call119 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %68, i64 %call118)
  %69 = bitcast %struct._GTypeInstance* %call119 to %struct._GimpViewable*
  %call120 = call %struct._GimpContainer* @gimp_viewable_get_children(%struct._GimpViewable* %69)
  store %struct._GimpContainer* %call120, %struct._GimpContainer** %new_container, align 8
  br label %if.end.123

if.else.121:                                      ; preds = %do.end.114
  %70 = load %struct._GimpItemTree*, %struct._GimpItemTree** %tree.addr, align 8
  %container122 = getelementptr inbounds %struct._GimpItemTree, %struct._GimpItemTree* %70, i32 0, i32 1
  %71 = load %struct._GimpContainer*, %struct._GimpContainer** %container122, align 8
  store %struct._GimpContainer* %71, %struct._GimpContainer** %new_container, align 8
  br label %if.end.123

if.end.123:                                       ; preds = %if.else.121, %if.then.117
  %72 = load %struct._GimpContainer*, %struct._GimpContainer** %new_container, align 8
  %call124 = call i32 @gimp_container_get_n_children(%struct._GimpContainer* %72)
  store i32 %call124, i32* %n_items, align 4
  %73 = load %struct._GimpContainer*, %struct._GimpContainer** %new_container, align 8
  %74 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %cmp125 = icmp eq %struct._GimpContainer* %73, %74
  br i1 %cmp125, label %if.then.126, label %if.end.127

if.then.126:                                      ; preds = %if.end.123
  %75 = load i32, i32* %n_items, align 4
  %dec = add nsw i32 %75, -1
  store i32 %dec, i32* %n_items, align 4
  br label %if.end.127

if.end.127:                                       ; preds = %if.then.126, %if.end.123
  %76 = load i32, i32* %new_index.addr, align 4
  %77 = load i32, i32* %n_items, align 4
  %cmp128 = icmp sgt i32 %76, %77
  br i1 %cmp128, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.127
  %78 = load i32, i32* %n_items, align 4
  br label %cond.end.132

cond.false:                                       ; preds = %if.end.127
  %79 = load i32, i32* %new_index.addr, align 4
  %cmp129 = icmp slt i32 %79, 0
  br i1 %cmp129, label %cond.true.130, label %cond.false.131

cond.true.130:                                    ; preds = %cond.false
  br label %cond.end

cond.false.131:                                   ; preds = %cond.false
  %80 = load i32, i32* %new_index.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false.131, %cond.true.130
  %cond = phi i32 [ 0, %cond.true.130 ], [ %80, %cond.false.131 ]
  br label %cond.end.132

cond.end.132:                                     ; preds = %cond.end, %cond.true
  %cond133 = phi i32 [ %78, %cond.true ], [ %cond, %cond.end ]
  store i32 %cond133, i32* %new_index.addr, align 4
  %81 = load %struct._GimpContainer*, %struct._GimpContainer** %new_container, align 8
  %82 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %cmp134 = icmp ne %struct._GimpContainer* %81, %82
  br i1 %cmp134, label %if.then.138, label %lor.lhs.false.135

lor.lhs.false.135:                                ; preds = %cond.end.132
  %83 = load i32, i32* %new_index.addr, align 4
  %84 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call136 = call i32 @gimp_item_get_index(%struct._GimpItem* %84)
  %cmp137 = icmp ne i32 %83, %call136
  br i1 %cmp137, label %if.then.138, label %if.end.161

if.then.138:                                      ; preds = %lor.lhs.false.135, %cond.end.132
  %85 = load i32, i32* %push_undo.addr, align 4
  %tobool139 = icmp ne i32 %85, 0
  br i1 %tobool139, label %if.then.140, label %if.end.142

if.then.140:                                      ; preds = %if.then.138
  %86 = load %struct._GimpItemTreePrivate*, %struct._GimpItemTreePrivate** %private, align 8
  %image = getelementptr inbounds %struct._GimpItemTreePrivate, %struct._GimpItemTreePrivate* %86, i32 0, i32 0
  %87 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %88 = load i8*, i8** %undo_desc.addr, align 8
  %89 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call141 = call %struct._GimpUndo* @gimp_image_undo_push_item_reorder(%struct._GimpImage* %87, i8* %88, %struct._GimpItem* %89)
  br label %if.end.142

if.end.142:                                       ; preds = %if.then.140, %if.then.138
  %90 = load %struct._GimpContainer*, %struct._GimpContainer** %new_container, align 8
  %91 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %cmp143 = icmp ne %struct._GimpContainer* %90, %91
  br i1 %cmp143, label %if.then.144, label %if.else.156

if.then.144:                                      ; preds = %if.end.142
  %92 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %93 = bitcast %struct._GimpItem* %92 to i8*
  %call145 = call i8* @g_object_ref(i8* %93)
  %94 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %95 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %96 = bitcast %struct._GimpItem* %95 to %struct._GTypeInstance*
  %call146 = call i64 @gimp_object_get_type() #7
  %call147 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %96, i64 %call146)
  %97 = bitcast %struct._GTypeInstance* %call147 to %struct._GimpObject*
  %call148 = call i32 @gimp_container_remove(%struct._GimpContainer* %94, %struct._GimpObject* %97)
  %98 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %99 = bitcast %struct._GimpItem* %98 to %struct._GTypeInstance*
  %call149 = call i64 @gimp_viewable_get_type() #7
  %call150 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %99, i64 %call149)
  %100 = bitcast %struct._GTypeInstance* %call150 to %struct._GimpViewable*
  %101 = load %struct._GimpItem*, %struct._GimpItem** %new_parent.addr, align 8
  %102 = bitcast %struct._GimpItem* %101 to %struct._GTypeInstance*
  %call151 = call i64 @gimp_viewable_get_type() #7
  %call152 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %102, i64 %call151)
  %103 = bitcast %struct._GTypeInstance* %call152 to %struct._GimpViewable*
  call void @gimp_viewable_set_parent(%struct._GimpViewable* %100, %struct._GimpViewable* %103)
  %104 = load %struct._GimpContainer*, %struct._GimpContainer** %new_container, align 8
  %105 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %106 = bitcast %struct._GimpItem* %105 to %struct._GTypeInstance*
  %call153 = call i64 @gimp_object_get_type() #7
  %call154 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %106, i64 %call153)
  %107 = bitcast %struct._GTypeInstance* %call154 to %struct._GimpObject*
  %108 = load i32, i32* %new_index.addr, align 4
  %call155 = call i32 @gimp_container_insert(%struct._GimpContainer* %104, %struct._GimpObject* %107, i32 %108)
  %109 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %110 = bitcast %struct._GimpItem* %109 to i8*
  call void @g_object_unref(i8* %110)
  br label %if.end.160

if.else.156:                                      ; preds = %if.end.142
  %111 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %112 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %113 = bitcast %struct._GimpItem* %112 to %struct._GTypeInstance*
  %call157 = call i64 @gimp_object_get_type() #7
  %call158 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %113, i64 %call157)
  %114 = bitcast %struct._GTypeInstance* %call158 to %struct._GimpObject*
  %115 = load i32, i32* %new_index.addr, align 4
  %call159 = call i32 @gimp_container_reorder(%struct._GimpContainer* %111, %struct._GimpObject* %114, i32 %115)
  br label %if.end.160

if.end.160:                                       ; preds = %if.else.156, %if.then.144
  br label %if.end.161

if.end.161:                                       ; preds = %if.end.160, %lor.lhs.false.135
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.161, %if.else.112, %if.else.99, %if.else.93, %if.else.82, %if.else.73, %if.else.44, %if.else.37, %if.else.9
  %116 = load i32, i32* %retval
  ret i32 %116
}

declare i32 @gimp_viewable_is_ancestor(%struct._GimpViewable*, %struct._GimpViewable*) #1

declare %struct._GimpUndo* @gimp_image_undo_push_item_reorder(%struct._GimpImage*, i8*, %struct._GimpItem*) #1

declare i32 @gimp_container_reorder(%struct._GimpContainer*, %struct._GimpObject*, i32) #1

; Function Attrs: nounwind uwtable
define void @gimp_item_tree_rename_item(%struct._GimpItemTree* %tree, %struct._GimpItem* %item, i8* %new_name, i32 %push_undo, i8* %undo_desc) #3 {
entry:
  %tree.addr = alloca %struct._GimpItemTree*, align 8
  %item.addr = alloca %struct._GimpItem*, align 8
  %new_name.addr = alloca i8*, align 8
  %push_undo.addr = alloca i32, align 4
  %undo_desc.addr = alloca i8*, align 8
  %private = alloca %struct._GimpItemTreePrivate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst15 = alloca %struct._GTypeInstance*, align 8
  %__t17 = alloca i64, align 8
  %__r19 = alloca i32, align 4
  %tmp34 = alloca i32, align 4
  store %struct._GimpItemTree* %tree, %struct._GimpItemTree** %tree.addr, align 8
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  store i8* %new_name, i8** %new_name.addr, align 8
  store i32 %push_undo, i32* %push_undo.addr, align 4
  store i8* %undo_desc, i8** %undo_desc.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpItemTree*, %struct._GimpItemTree** %tree.addr, align 8
  %1 = bitcast %struct._GimpItemTree* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_item_tree_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_item_tree_rename_item, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end.62

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpItemTree*, %struct._GimpItemTree** %tree.addr, align 8
  %14 = bitcast %struct._GimpItemTree* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_item_tree_get_type() #7
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct._GimpItemTreePrivate*
  store %struct._GimpItemTreePrivate* %15, %struct._GimpItemTreePrivate** %private, align 8
  br label %do.body.13

do.body.13:                                       ; preds = %do.end
  %16 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %17 = bitcast %struct._GimpItem* %16 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %17, %struct._GTypeInstance** %__inst15, align 8
  %18 = load %struct._GimpItemTreePrivate*, %struct._GimpItemTreePrivate** %private, align 8
  %item_type = getelementptr inbounds %struct._GimpItemTreePrivate, %struct._GimpItemTreePrivate* %18, i32 0, i32 2
  %19 = load i64, i64* %item_type, align 8
  store i64 %19, i64* %__t17, align 8
  %20 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst15, align 8
  %tobool20 = icmp ne %struct._GTypeInstance* %20, null
  br i1 %tobool20, label %if.else.22, label %if.then.21

if.then.21:                                       ; preds = %do.body.13
  store i32 0, i32* %__r19, align 4
  br label %if.end.33

if.else.22:                                       ; preds = %do.body.13
  %21 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst15, align 8
  %g_class23 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %21, i32 0, i32 0
  %22 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class23, align 8
  %tobool24 = icmp ne %struct._GTypeClass* %22, null
  br i1 %tobool24, label %land.lhs.true.25, label %if.else.30

land.lhs.true.25:                                 ; preds = %if.else.22
  %23 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst15, align 8
  %g_class26 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %23, i32 0, i32 0
  %24 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class26, align 8
  %g_type27 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %24, i32 0, i32 0
  %25 = load i64, i64* %g_type27, align 8
  %26 = load i64, i64* %__t17, align 8
  %cmp28 = icmp eq i64 %25, %26
  br i1 %cmp28, label %if.then.29, label %if.else.30

if.then.29:                                       ; preds = %land.lhs.true.25
  store i32 1, i32* %__r19, align 4
  br label %if.end.32

if.else.30:                                       ; preds = %land.lhs.true.25, %if.else.22
  %27 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst15, align 8
  %28 = load i64, i64* %__t17, align 8
  %call31 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %27, i64 %28) #8
  store i32 %call31, i32* %__r19, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.30, %if.then.29
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.then.21
  %29 = load i32, i32* %__r19, align 4
  store i32 %29, i32* %tmp34
  %30 = load i32, i32* %tmp34
  %tobool35 = icmp ne i32 %30, 0
  br i1 %tobool35, label %if.then.36, label %if.else.37

if.then.36:                                       ; preds = %if.end.33
  br label %if.end.38

if.else.37:                                       ; preds = %if.end.33
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_item_tree_rename_item, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.14, i32 0, i32 0))
  br label %if.end.62

if.end.38:                                        ; preds = %if.then.36
  br label %do.end.39

do.end.39:                                        ; preds = %if.end.38
  br label %do.body.40

do.body.40:                                       ; preds = %do.end.39
  %31 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call41 = call %struct._GimpItemTree* @gimp_item_get_tree(%struct._GimpItem* %31)
  %32 = load %struct._GimpItemTree*, %struct._GimpItemTree** %tree.addr, align 8
  %cmp42 = icmp eq %struct._GimpItemTree* %call41, %32
  br i1 %cmp42, label %if.then.43, label %if.else.44

if.then.43:                                       ; preds = %do.body.40
  br label %if.end.45

if.else.44:                                       ; preds = %do.body.40
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_item_tree_rename_item, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.24, i32 0, i32 0))
  br label %if.end.62

if.end.45:                                        ; preds = %if.then.43
  br label %do.end.46

do.end.46:                                        ; preds = %if.end.45
  br label %do.body.47

do.body.47:                                       ; preds = %do.end.46
  %33 = load i8*, i8** %new_name.addr, align 8
  %cmp48 = icmp ne i8* %33, null
  br i1 %cmp48, label %if.then.49, label %if.else.50

if.then.49:                                       ; preds = %do.body.47
  br label %if.end.51

if.else.50:                                       ; preds = %do.body.47
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_item_tree_rename_item, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.30, i32 0, i32 0))
  br label %if.end.62

if.end.51:                                        ; preds = %if.then.49
  br label %do.end.52

do.end.52:                                        ; preds = %if.end.51
  %34 = load i8*, i8** %new_name.addr, align 8
  %35 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %36 = bitcast %struct._GimpItem* %35 to i8*
  %call53 = call i8* @gimp_object_get_name(i8* %36)
  %call54 = call i32 @strcmp(i8* %34, i8* %call53) #8
  %tobool55 = icmp ne i32 %call54, 0
  br i1 %tobool55, label %if.then.56, label %if.end.62

if.then.56:                                       ; preds = %do.end.52
  %37 = load i32, i32* %push_undo.addr, align 4
  %tobool57 = icmp ne i32 %37, 0
  br i1 %tobool57, label %if.then.58, label %if.end.61

if.then.58:                                       ; preds = %if.then.56
  %38 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call59 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %38)
  %39 = load i8*, i8** %undo_desc.addr, align 8
  %40 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call60 = call %struct._GimpUndo* @gimp_image_undo_push_item_rename(%struct._GimpImage* %call59, i8* %39, %struct._GimpItem* %40)
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.58, %if.then.56
  %41 = load %struct._GimpItemTree*, %struct._GimpItemTree** %tree.addr, align 8
  %42 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %43 = load i8*, i8** %new_name.addr, align 8
  call void @gimp_item_tree_uniquefy_name(%struct._GimpItemTree* %41, %struct._GimpItem* %42, i8* %43)
  br label %if.end.62

if.end.62:                                        ; preds = %if.else.9, %if.else.37, %if.else.44, %if.else.50, %if.end.61, %do.end.52
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

declare %struct._GimpUndo* @gimp_image_undo_push_item_rename(%struct._GimpImage*, i8*, %struct._GimpItem*) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_item_tree_class_init(%struct._GimpItemTreeClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpItemTreeClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %gimp_object_class = alloca %struct._GimpObjectClass*, align 8
  store %struct._GimpItemTreeClass* %klass, %struct._GimpItemTreeClass** %klass.addr, align 8
  %0 = load %struct._GimpItemTreeClass*, %struct._GimpItemTreeClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpItemTreeClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpItemTreeClass*, %struct._GimpItemTreeClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpItemTreeClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gimp_object_get_type() #7
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GimpObjectClass*
  store %struct._GimpObjectClass* %5, %struct._GimpObjectClass** %gimp_object_class, align 8
  %6 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %6, i32 0, i32 9
  store void (%struct._GObject*)* @gimp_item_tree_constructed, void (%struct._GObject*)** %constructed, align 8
  %7 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %7, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_item_tree_finalize, void (%struct._GObject*)** %finalize, align 8
  %8 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %8, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_item_tree_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %9 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %9, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_item_tree_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %10 = load %struct._GimpObjectClass*, %struct._GimpObjectClass** %gimp_object_class, align 8
  %get_memsize = getelementptr inbounds %struct._GimpObjectClass, %struct._GimpObjectClass* %10, i32 0, i32 3
  store i64 (%struct._GimpObject*, i64*)* @gimp_item_tree_get_memsize, i64 (%struct._GimpObject*, i64*)** %get_memsize, align 8
  %11 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call3 = call i64 @gimp_image_get_type() #7
  %call4 = call %struct._GParamSpec* @g_param_spec_object(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* null, i8* null, i64 %call3, i32 235)
  call void @g_object_class_install_property(%struct._GObjectClass* %11, i32 1, %struct._GParamSpec* %call4)
  %12 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call5 = call i64 @gimp_item_stack_get_type() #7
  %call6 = call %struct._GParamSpec* @g_param_spec_gtype(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0), i8* null, i8* null, i64 %call5, i32 235)
  call void @g_object_class_install_property(%struct._GObjectClass* %12, i32 2, %struct._GParamSpec* %call6)
  %13 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call7 = call i64 @gimp_item_get_type() #7
  %call8 = call %struct._GParamSpec* @g_param_spec_gtype(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i8* null, i8* null, i64 %call7, i32 235)
  call void @g_object_class_install_property(%struct._GObjectClass* %13, i32 3, %struct._GParamSpec* %call8)
  %14 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call9 = call i64 @gimp_item_get_type() #7
  %call10 = call %struct._GParamSpec* @g_param_spec_object(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i32 0, i32 0), i8* null, i8* null, i64 %call9, i32 227)
  call void @g_object_class_install_property(%struct._GObjectClass* %14, i32 4, %struct._GParamSpec* %call10)
  %15 = load %struct._GimpItemTreeClass*, %struct._GimpItemTreeClass** %klass.addr, align 8
  %16 = bitcast %struct._GimpItemTreeClass* %15 to i8*
  call void @g_type_class_add_private(i8* %16, i64 40)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_item_tree_constructed(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %tree = alloca %struct._GimpItemTree*, align 8
  %private = alloca %struct._GimpItemTreePrivate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_item_tree_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpItemTree*
  store %struct._GimpItemTree* %2, %struct._GimpItemTree** %tree, align 8
  %3 = load %struct._GimpItemTree*, %struct._GimpItemTree** %tree, align 8
  %4 = bitcast %struct._GimpItemTree* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_item_tree_get_type() #7
  %call3 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast i8* %call3 to %struct._GimpItemTreePrivate*
  store %struct._GimpItemTreePrivate* %5, %struct._GimpItemTreePrivate** %private, align 8
  %6 = load i8*, i8** @gimp_item_tree_parent_class, align 8
  %7 = bitcast i8* %6 to %struct._GTypeClass*
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %7, i64 80)
  %8 = bitcast %struct._GTypeClass* %call4 to %struct._GObjectClass*
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %8, i32 0, i32 9
  %9 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed, align 8
  %tobool = icmp ne void (%struct._GObject*)* %9, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = load i8*, i8** @gimp_item_tree_parent_class, align 8
  %11 = bitcast i8* %10 to %struct._GTypeClass*
  %call5 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %11, i64 80)
  %12 = bitcast %struct._GTypeClass* %call5 to %struct._GObjectClass*
  %constructed6 = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %12, i32 0, i32 9
  %13 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed6, align 8
  %14 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %13(%struct._GObject* %14)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %15 = load %struct._GimpItemTreePrivate*, %struct._GimpItemTreePrivate** %private, align 8
  %image = getelementptr inbounds %struct._GimpItemTreePrivate, %struct._GimpItemTreePrivate* %15, i32 0, i32 0
  %16 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %17 = bitcast %struct._GimpImage* %16 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %17, %struct._GTypeInstance** %__inst, align 8
  %call7 = call i64 @gimp_image_get_type() #7
  store i64 %call7, i64* %__t, align 8
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool8 = icmp ne %struct._GTypeInstance* %18, null
  br i1 %tobool8, label %if.else, label %if.then.9

if.then.9:                                        ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.16

if.else:                                          ; preds = %do.body
  %19 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %19, i32 0, i32 0
  %20 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool10 = icmp ne %struct._GTypeClass* %20, null
  br i1 %tobool10, label %land.lhs.true, label %if.else.13

land.lhs.true:                                    ; preds = %if.else
  %21 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class11 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %21, i32 0, i32 0
  %22 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class11, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %22, i32 0, i32 0
  %23 = load i64, i64* %g_type, align 8
  %24 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %23, %24
  br i1 %cmp, label %if.then.12, label %if.else.13

if.then.12:                                       ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end.15

if.else.13:                                       ; preds = %land.lhs.true, %if.else
  %25 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %26 = load i64, i64* %__t, align 8
  %call14 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %25, i64 %26) #8
  store i32 %call14, i32* %__r, align 4
  br label %if.end.15

if.end.15:                                        ; preds = %if.else.13, %if.then.12
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15, %if.then.9
  %27 = load i32, i32* %__r, align 4
  store i32 %27, i32* %tmp
  %28 = load i32, i32* %tmp
  %tobool17 = icmp ne i32 %28, 0
  br i1 %tobool17, label %if.then.18, label %if.else.19

if.then.18:                                       ; preds = %if.end.16
  br label %if.end.20

if.else.19:                                       ; preds = %if.end.16
  call void @g_assertion_message_expr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.31, i32 0, i32 0), i32 153, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_item_tree_constructed, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.32, i32 0, i32 0)) #9
  unreachable

if.end.20:                                        ; preds = %if.then.18
  br label %do.end

do.end:                                           ; preds = %if.end.20
  br label %do.body.21

do.body.21:                                       ; preds = %do.end
  %29 = load %struct._GimpItemTreePrivate*, %struct._GimpItemTreePrivate** %private, align 8
  %container_type = getelementptr inbounds %struct._GimpItemTreePrivate, %struct._GimpItemTreePrivate* %29, i32 0, i32 1
  %30 = load i64, i64* %container_type, align 8
  %call22 = call i64 @gimp_item_stack_get_type() #7
  %call23 = call i32 @g_type_is_a(i64 %30, i64 %call22)
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %if.then.25, label %if.else.26

if.then.25:                                       ; preds = %do.body.21
  br label %if.end.27

if.else.26:                                       ; preds = %do.body.21
  call void @g_assertion_message_expr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.31, i32 0, i32 0), i32 154, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_item_tree_constructed, i32 0, i32 0), i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.33, i32 0, i32 0)) #9
  unreachable

if.end.27:                                        ; preds = %if.then.25
  br label %do.end.28

do.end.28:                                        ; preds = %if.end.27
  br label %do.body.29

do.body.29:                                       ; preds = %do.end.28
  %31 = load %struct._GimpItemTreePrivate*, %struct._GimpItemTreePrivate** %private, align 8
  %item_type = getelementptr inbounds %struct._GimpItemTreePrivate, %struct._GimpItemTreePrivate* %31, i32 0, i32 2
  %32 = load i64, i64* %item_type, align 8
  %call30 = call i64 @gimp_item_get_type() #7
  %call31 = call i32 @g_type_is_a(i64 %32, i64 %call30)
  %tobool32 = icmp ne i32 %call31, 0
  br i1 %tobool32, label %if.then.33, label %if.else.34

if.then.33:                                       ; preds = %do.body.29
  br label %if.end.35

if.else.34:                                       ; preds = %do.body.29
  call void @g_assertion_message_expr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.31, i32 0, i32 0), i32 155, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_item_tree_constructed, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.34, i32 0, i32 0)) #9
  unreachable

if.end.35:                                        ; preds = %if.then.33
  br label %do.end.36

do.end.36:                                        ; preds = %if.end.35
  br label %do.body.37

do.body.37:                                       ; preds = %do.end.36
  %33 = load %struct._GimpItemTreePrivate*, %struct._GimpItemTreePrivate** %private, align 8
  %item_type38 = getelementptr inbounds %struct._GimpItemTreePrivate, %struct._GimpItemTreePrivate* %33, i32 0, i32 2
  %34 = load i64, i64* %item_type38, align 8
  %call39 = call i64 @gimp_item_get_type() #7
  %cmp40 = icmp ne i64 %34, %call39
  br i1 %cmp40, label %if.then.41, label %if.else.42

if.then.41:                                       ; preds = %do.body.37
  br label %if.end.43

if.else.42:                                       ; preds = %do.body.37
  call void @g_assertion_message_expr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.31, i32 0, i32 0), i32 156, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_item_tree_constructed, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.35, i32 0, i32 0)) #9
  unreachable

if.end.43:                                        ; preds = %if.then.41
  br label %do.end.44

do.end.44:                                        ; preds = %if.end.43
  %35 = load %struct._GimpItemTreePrivate*, %struct._GimpItemTreePrivate** %private, align 8
  %container_type45 = getelementptr inbounds %struct._GimpItemTreePrivate, %struct._GimpItemTreePrivate* %35, i32 0, i32 1
  %36 = load i64, i64* %container_type45, align 8
  %37 = load %struct._GimpItemTreePrivate*, %struct._GimpItemTreePrivate** %private, align 8
  %item_type46 = getelementptr inbounds %struct._GimpItemTreePrivate, %struct._GimpItemTreePrivate* %37, i32 0, i32 2
  %38 = load i64, i64* %item_type46, align 8
  %call47 = call i8* @g_type_name(i64 %38)
  %39 = load %struct._GimpItemTreePrivate*, %struct._GimpItemTreePrivate** %private, align 8
  %item_type48 = getelementptr inbounds %struct._GimpItemTreePrivate, %struct._GimpItemTreePrivate* %39, i32 0, i32 2
  %40 = load i64, i64* %item_type48, align 8
  %call49 = call i8* (i64, i8*, ...) @g_object_new(i64 %36, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i32 0, i32 0), i8* %call47, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.37, i32 0, i32 0), i64 %40, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.38, i32 0, i32 0), i32 0, i8* null)
  %41 = bitcast i8* %call49 to %struct._GimpContainer*
  %42 = load %struct._GimpItemTree*, %struct._GimpItemTree** %tree, align 8
  %container = getelementptr inbounds %struct._GimpItemTree, %struct._GimpItemTree* %42, i32 0, i32 1
  store %struct._GimpContainer* %41, %struct._GimpContainer** %container, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_item_tree_finalize(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %tree = alloca %struct._GimpItemTree*, align 8
  %private = alloca %struct._GimpItemTreePrivate*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_item_tree_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpItemTree*
  store %struct._GimpItemTree* %2, %struct._GimpItemTree** %tree, align 8
  %3 = load %struct._GimpItemTree*, %struct._GimpItemTree** %tree, align 8
  %4 = bitcast %struct._GimpItemTree* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_item_tree_get_type() #7
  %call3 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast i8* %call3 to %struct._GimpItemTreePrivate*
  store %struct._GimpItemTreePrivate* %5, %struct._GimpItemTreePrivate** %private, align 8
  %6 = load %struct._GimpItemTreePrivate*, %struct._GimpItemTreePrivate** %private, align 8
  %name_hash = getelementptr inbounds %struct._GimpItemTreePrivate, %struct._GimpItemTreePrivate* %6, i32 0, i32 4
  %7 = load %struct._GHashTable*, %struct._GHashTable** %name_hash, align 8
  %tobool = icmp ne %struct._GHashTable* %7, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct._GimpItemTreePrivate*, %struct._GimpItemTreePrivate** %private, align 8
  %name_hash4 = getelementptr inbounds %struct._GimpItemTreePrivate, %struct._GimpItemTreePrivate* %8, i32 0, i32 4
  %9 = load %struct._GHashTable*, %struct._GHashTable** %name_hash4, align 8
  call void @g_hash_table_unref(%struct._GHashTable* %9)
  %10 = load %struct._GimpItemTreePrivate*, %struct._GimpItemTreePrivate** %private, align 8
  %name_hash5 = getelementptr inbounds %struct._GimpItemTreePrivate, %struct._GimpItemTreePrivate* %10, i32 0, i32 4
  store %struct._GHashTable* null, %struct._GHashTable** %name_hash5, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %11 = load %struct._GimpItemTree*, %struct._GimpItemTree** %tree, align 8
  %container = getelementptr inbounds %struct._GimpItemTree, %struct._GimpItemTree* %11, i32 0, i32 1
  %12 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %tobool6 = icmp ne %struct._GimpContainer* %12, null
  br i1 %tobool6, label %if.then.7, label %if.end.10

if.then.7:                                        ; preds = %if.end
  %13 = load %struct._GimpItemTree*, %struct._GimpItemTree** %tree, align 8
  %container8 = getelementptr inbounds %struct._GimpItemTree, %struct._GimpItemTree* %13, i32 0, i32 1
  %14 = load %struct._GimpContainer*, %struct._GimpContainer** %container8, align 8
  %15 = bitcast %struct._GimpContainer* %14 to i8*
  call void @g_object_unref(i8* %15)
  %16 = load %struct._GimpItemTree*, %struct._GimpItemTree** %tree, align 8
  %container9 = getelementptr inbounds %struct._GimpItemTree, %struct._GimpItemTree* %16, i32 0, i32 1
  store %struct._GimpContainer* null, %struct._GimpContainer** %container9, align 8
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.7, %if.end
  %17 = load i8*, i8** @gimp_item_tree_parent_class, align 8
  %18 = bitcast i8* %17 to %struct._GTypeClass*
  %call11 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %18, i64 80)
  %19 = bitcast %struct._GTypeClass* %call11 to %struct._GObjectClass*
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %19, i32 0, i32 6
  %20 = load void (%struct._GObject*)*, void (%struct._GObject*)** %finalize, align 8
  %21 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %20(%struct._GObject* %21)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_item_tree_set_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %private = alloca %struct._GimpItemTreePrivate*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_item_tree_get_type() #7
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpItemTreePrivate*
  store %struct._GimpItemTreePrivate* %2, %struct._GimpItemTreePrivate** %private, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.3
    i32 3, label %sw.bb.5
    i32 4, label %sw.bb.7
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call2 = call i8* @g_value_get_object(%struct._GValue* %4)
  %5 = bitcast i8* %call2 to %struct._GimpImage*
  %6 = load %struct._GimpItemTreePrivate*, %struct._GimpItemTreePrivate** %private, align 8
  %image = getelementptr inbounds %struct._GimpItemTreePrivate, %struct._GimpItemTreePrivate* %6, i32 0, i32 0
  store %struct._GimpImage* %5, %struct._GimpImage** %image, align 8
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %7 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call4 = call i64 @g_value_get_gtype(%struct._GValue* %7)
  %8 = load %struct._GimpItemTreePrivate*, %struct._GimpItemTreePrivate** %private, align 8
  %container_type = getelementptr inbounds %struct._GimpItemTreePrivate, %struct._GimpItemTreePrivate* %8, i32 0, i32 1
  store i64 %call4, i64* %container_type, align 8
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %9 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call6 = call i64 @g_value_get_gtype(%struct._GValue* %9)
  %10 = load %struct._GimpItemTreePrivate*, %struct._GimpItemTreePrivate** %private, align 8
  %item_type = getelementptr inbounds %struct._GimpItemTreePrivate, %struct._GimpItemTreePrivate* %10, i32 0, i32 2
  store i64 %call6, i64* %item_type, align 8
  br label %sw.epilog

sw.bb.7:                                          ; preds = %entry
  %11 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call8 = call i8* @g_value_get_object(%struct._GValue* %11)
  %12 = bitcast i8* %call8 to %struct._GimpItem*
  %13 = load %struct._GimpItemTreePrivate*, %struct._GimpItemTreePrivate** %private, align 8
  %active_item = getelementptr inbounds %struct._GimpItemTreePrivate, %struct._GimpItemTreePrivate* %13, i32 0, i32 3
  store %struct._GimpItem* %12, %struct._GimpItem** %active_item, align 8
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
  %call9 = call i8* @g_type_name(i64 %23)
  %24 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %25 = bitcast %struct._GObject* %24 to %struct._GTypeInstance*
  %g_class10 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %25, i32 0, i32 0
  %26 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class10, align 8
  %g_type11 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %26, i32 0, i32 0
  %27 = load i64, i64* %g_type11, align 8
  %call12 = call i8* @g_type_name(i64 %27)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.31, i32 0, i32 0), i32 210, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.40, i32 0, i32 0), i32 %17, i8* %19, i8* %call9, i8* %call12)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.7, %sw.bb.5, %sw.bb.3, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_item_tree_get_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %private = alloca %struct._GimpItemTreePrivate*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_item_tree_get_type() #7
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpItemTreePrivate*
  store %struct._GimpItemTreePrivate* %2, %struct._GimpItemTreePrivate** %private, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.2
    i32 3, label %sw.bb.3
    i32 4, label %sw.bb.4
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %5 = load %struct._GimpItemTreePrivate*, %struct._GimpItemTreePrivate** %private, align 8
  %image = getelementptr inbounds %struct._GimpItemTreePrivate, %struct._GimpItemTreePrivate* %5, i32 0, i32 0
  %6 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %7 = bitcast %struct._GimpImage* %6 to i8*
  call void @g_value_set_object(%struct._GValue* %4, i8* %7)
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %8 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %9 = load %struct._GimpItemTreePrivate*, %struct._GimpItemTreePrivate** %private, align 8
  %container_type = getelementptr inbounds %struct._GimpItemTreePrivate, %struct._GimpItemTreePrivate* %9, i32 0, i32 1
  %10 = load i64, i64* %container_type, align 8
  call void @g_value_set_gtype(%struct._GValue* %8, i64 %10)
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %11 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %12 = load %struct._GimpItemTreePrivate*, %struct._GimpItemTreePrivate** %private, align 8
  %item_type = getelementptr inbounds %struct._GimpItemTreePrivate, %struct._GimpItemTreePrivate* %12, i32 0, i32 2
  %13 = load i64, i64* %item_type, align 8
  call void @g_value_set_gtype(%struct._GValue* %11, i64 %13)
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  %14 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %15 = load %struct._GimpItemTreePrivate*, %struct._GimpItemTreePrivate** %private, align 8
  %active_item = getelementptr inbounds %struct._GimpItemTreePrivate, %struct._GimpItemTreePrivate* %15, i32 0, i32 3
  %16 = load %struct._GimpItem*, %struct._GimpItem** %active_item, align 8
  %17 = bitcast %struct._GimpItem* %16 to i8*
  call void @g_value_set_object(%struct._GValue* %14, i8* %17)
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
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.31, i32 0, i32 0), i32 239, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.40, i32 0, i32 0), i32 %21, i8* %23, i8* %call5, i8* %call8)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.4, %sw.bb.3, %sw.bb.2, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal i64 @gimp_item_tree_get_memsize(%struct._GimpObject* %object, i64* %gui_size) #3 {
entry:
  %object.addr = alloca %struct._GimpObject*, align 8
  %gui_size.addr = alloca i64*, align 8
  %tree = alloca %struct._GimpItemTree*, align 8
  %memsize = alloca i64, align 8
  store %struct._GimpObject* %object, %struct._GimpObject** %object.addr, align 8
  store i64* %gui_size, i64** %gui_size.addr, align 8
  %0 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %1 = bitcast %struct._GimpObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_item_tree_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpItemTree*
  store %struct._GimpItemTree* %2, %struct._GimpItemTree** %tree, align 8
  store i64 0, i64* %memsize, align 8
  %3 = load %struct._GimpItemTree*, %struct._GimpItemTree** %tree, align 8
  %container = getelementptr inbounds %struct._GimpItemTree, %struct._GimpItemTree* %3, i32 0, i32 1
  %4 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %5 = bitcast %struct._GimpContainer* %4 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_object_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call2)
  %6 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpObject*
  %7 = load i64*, i64** %gui_size.addr, align 8
  %call4 = call i64 @gimp_object_get_memsize(%struct._GimpObject* %6, i64* %7)
  %8 = load i64, i64* %memsize, align 8
  %add = add nsw i64 %8, %call4
  store i64 %add, i64* %memsize, align 8
  %9 = load i64, i64* %memsize, align 8
  %10 = load i8*, i8** @gimp_item_tree_parent_class, align 8
  %11 = bitcast i8* %10 to %struct._GTypeClass*
  %call5 = call i64 @gimp_object_get_type() #7
  %call6 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %11, i64 %call5)
  %12 = bitcast %struct._GTypeClass* %call6 to %struct._GimpObjectClass*
  %get_memsize = getelementptr inbounds %struct._GimpObjectClass, %struct._GimpObjectClass* %12, i32 0, i32 3
  %13 = load i64 (%struct._GimpObject*, i64*)*, i64 (%struct._GimpObject*, i64*)** %get_memsize, align 8
  %14 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %15 = load i64*, i64** %gui_size.addr, align 8
  %call7 = call i64 %13(%struct._GimpObject* %14, i64* %15)
  %add8 = add nsw i64 %9, %call7
  ret i64 %add8
}

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_object(i8*, i8*, i8*, i64, i32) #1

declare %struct._GParamSpec* @g_param_spec_gtype(i8*, i8*, i8*, i64, i32) #1

declare void @g_type_class_add_private(i8*, i64) #1

; Function Attrs: noreturn
declare void @g_assertion_message_expr(i8*, i8*, i32, i8*, i8*) #5

declare i8* @g_type_name(i64) #1

declare void @g_hash_table_unref(%struct._GHashTable*) #1

declare i8* @g_value_get_object(%struct._GValue*) #1

declare i64 @g_value_get_gtype(%struct._GValue*) #1

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
declare void @llvm.va_start(i8*) #6

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #6

declare void @g_value_set_object(%struct._GValue*, i8*) #1

declare void @g_value_set_gtype(%struct._GValue*, i64) #1

declare i64 @gimp_object_get_memsize(%struct._GimpObject*, i64*) #1

declare %struct._GHashTable* @g_hash_table_new(i32 (i8*)*, i32 (i8*, i8*)*) #1

declare i32 @g_str_hash(i8*) #1

declare i32 @g_str_equal(i8*, i8*) #1

declare void @gimp_object_set_name(%struct._GimpObject*, i8*) #1

declare noalias i8* @g_strdup(i8*) #1

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) #4

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #4

declare i32 @g_snprintf(i8*, i64, i8*, ...) #1

declare void @g_free(i8*) #1

declare noalias i8* @g_strdup_printf(i8*, ...) #1

declare void @gimp_object_take_name(%struct._GimpObject*, i8*) #1

declare i32 @g_hash_table_insert(%struct._GHashTable*, i8*, i8*) #1

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
