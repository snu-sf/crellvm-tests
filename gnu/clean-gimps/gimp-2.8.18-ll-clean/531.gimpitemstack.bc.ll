; ModuleID = './app/core/gimpitemstack.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpItemStackClass = type { %struct._GimpListClass }
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
%struct._GimpItemStack = type { %struct._GimpList }
%struct._GimpList = type { %struct._GimpContainer, %struct._GList*, i32, i32 (i8*, i8*)*, i32 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpItem = type { %struct._GimpViewable }
%struct._GimpViewable = type { %struct._GimpObject }

@gimp_item_stack_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"GimpItemStack\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"Gimp-Core\00", align 1
@__func__.gimp_item_stack_new = private unnamed_addr constant [20 x i8] c"gimp_item_stack_new\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"g_type_is_a (item_type, GIMP_TYPE_ITEM)\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"children-type\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"policy\00", align 1
@__func__.gimp_item_stack_get_n_items = private unnamed_addr constant [28 x i8] c"gimp_item_stack_get_n_items\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"GIMP_IS_ITEM_STACK (stack)\00", align 1
@__func__.gimp_item_stack_is_flat = private unnamed_addr constant [24 x i8] c"gimp_item_stack_is_flat\00", align 1
@__func__.gimp_item_stack_get_item_iter = private unnamed_addr constant [30 x i8] c"gimp_item_stack_get_item_iter\00", align 1
@__func__.gimp_item_stack_get_item_list = private unnamed_addr constant [30 x i8] c"gimp_item_stack_get_item_list\00", align 1
@__func__.gimp_item_stack_get_item_by_tattoo = private unnamed_addr constant [35 x i8] c"gimp_item_stack_get_item_by_tattoo\00", align 1
@__func__.gimp_item_stack_get_item_by_path = private unnamed_addr constant [33 x i8] c"gimp_item_stack_get_item_by_path\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"path != NULL\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"GIMP_IS_ITEM (item)\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"GIMP_IS_ITEM_STACK (container)\00", align 1
@__func__.gimp_item_stack_get_parent_by_path = private unnamed_addr constant [35 x i8] c"gimp_item_stack_get_parent_by_path\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"GIMP_IS_ITEM (child)\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"GIMP_IS_ITEM_STACK (children)\00", align 1
@__func__.gimp_item_stack_invalidate_previews = private unnamed_addr constant [36 x i8] c"gimp_item_stack_invalidate_previews\00", align 1
@gimp_item_stack_parent_class = internal global i8* null, align 8
@GimpItemStack_private_offset = internal global i32 0, align 4
@.str.12 = private unnamed_addr constant [16 x i8] c"gimpitemstack.c\00", align 1
@__func__.gimp_item_stack_constructed = private unnamed_addr constant [28 x i8] c"gimp_item_stack_constructed\00", align 1
@.str.13 = private unnamed_addr constant [75 x i8] c"g_type_is_a (gimp_container_get_children_type (container), GIMP_TYPE_ITEM)\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_item_stack_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_item_stack_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_item_stack_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_list_get_type() #6
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 248, void (i8*, i8*)* bitcast (void (i8*)* @gimp_item_stack_class_intern_init to void (i8*, i8*)*), i32 72, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpItemStack*)* @gimp_item_stack_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_item_stack_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_item_stack_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_list_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_item_stack_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_item_stack_parent_class, align 8
  %1 = load i32, i32* @GimpItemStack_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpItemStack_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpItemStackClass*
  call void @gimp_item_stack_class_init(%struct._GimpItemStackClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_item_stack_init(%struct._GimpItemStack* %stack) #3 {
entry:
  %stack.addr = alloca %struct._GimpItemStack*, align 8
  store %struct._GimpItemStack* %stack, %struct._GimpItemStack** %stack.addr, align 8
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GimpContainer* @gimp_item_stack_new(i64 %item_type) #3 {
entry:
  %retval = alloca %struct._GimpContainer*, align 8
  %item_type.addr = alloca i64, align 8
  store i64 %item_type, i64* %item_type.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i64, i64* %item_type.addr, align 8
  %call = call i64 @gimp_item_get_type() #6
  %call1 = call i32 @g_type_is_a(i64 %0, i64 %call)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_item_stack_new, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpContainer* null, %struct._GimpContainer** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %call2 = call i64 @gimp_item_stack_get_type() #6
  %1 = load i64, i64* %item_type.addr, align 8
  %call3 = call i8* @g_type_name(i64 %1)
  %2 = load i64, i64* %item_type.addr, align 8
  %call4 = call i8* (i64, i8*, ...) @g_object_new(i64 %call2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* %call3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), i64 %2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i32 0, i8* null)
  %3 = bitcast i8* %call4 to %struct._GimpContainer*
  store %struct._GimpContainer* %3, %struct._GimpContainer** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else
  %4 = load %struct._GimpContainer*, %struct._GimpContainer** %retval
  ret %struct._GimpContainer* %4
}

declare i32 @g_type_is_a(i64, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_item_get_type() #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare i8* @g_object_new(i64, i8*, ...) #1

declare i8* @g_type_name(i64) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_item_stack_get_n_items(%struct._GimpItemStack* %stack) #3 {
entry:
  %retval = alloca i32, align 4
  %stack.addr = alloca %struct._GimpItemStack*, align 8
  %list = alloca %struct._GList*, align 8
  %n_items = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %item = alloca %struct._GimpItem*, align 8
  %children = alloca %struct._GimpContainer*, align 8
  store %struct._GimpItemStack* %stack, %struct._GimpItemStack** %stack.addr, align 8
  store i32 0, i32* %n_items, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpItemStack*, %struct._GimpItemStack** %stack.addr, align 8
  %1 = bitcast %struct._GimpItemStack* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_item_stack_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_item_stack_get_n_items, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpItemStack*, %struct._GimpItemStack** %stack.addr, align 8
  %14 = bitcast %struct._GimpItemStack* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_list_get_type() #6
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpList*
  %list13 = getelementptr inbounds %struct._GimpList, %struct._GimpList* %15, i32 0, i32 1
  %16 = load %struct._GList*, %struct._GList** %list13, align 8
  store %struct._GList* %16, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %do.end
  %17 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool14 = icmp ne %struct._GList* %17, null
  br i1 %tobool14, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %18, i32 0, i32 0
  %19 = load i8*, i8** %data, align 8
  %20 = bitcast i8* %19 to %struct._GimpItem*
  store %struct._GimpItem* %20, %struct._GimpItem** %item, align 8
  %21 = load i32, i32* %n_items, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %n_items, align 4
  %22 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %23 = bitcast %struct._GimpItem* %22 to %struct._GTypeInstance*
  %call17 = call i64 @gimp_viewable_get_type() #6
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call17)
  %24 = bitcast %struct._GTypeInstance* %call18 to %struct._GimpViewable*
  %call19 = call %struct._GimpContainer* @gimp_viewable_get_children(%struct._GimpViewable* %24)
  store %struct._GimpContainer* %call19, %struct._GimpContainer** %children, align 8
  %25 = load %struct._GimpContainer*, %struct._GimpContainer** %children, align 8
  %tobool20 = icmp ne %struct._GimpContainer* %25, null
  br i1 %tobool20, label %if.then.21, label %if.end.25

if.then.21:                                       ; preds = %for.body
  %26 = load %struct._GimpContainer*, %struct._GimpContainer** %children, align 8
  %27 = bitcast %struct._GimpContainer* %26 to %struct._GTypeInstance*
  %call22 = call i64 @gimp_item_stack_get_type() #6
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call22)
  %28 = bitcast %struct._GTypeInstance* %call23 to %struct._GimpItemStack*
  %call24 = call i32 @gimp_item_stack_get_n_items(%struct._GimpItemStack* %28)
  %29 = load i32, i32* %n_items, align 4
  %add = add nsw i32 %29, %call24
  store i32 %add, i32* %n_items, align 4
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.21, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.25
  %30 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool26 = icmp ne %struct._GList* %30, null
  br i1 %tobool26, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %31 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %31, i32 0, i32 1
  %32 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %32, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %33 = load i32, i32* %n_items, align 4
  store i32 %33, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.else.9
  %34 = load i32, i32* %retval
  ret i32 %34
}

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare %struct._GimpContainer* @gimp_viewable_get_children(%struct._GimpViewable*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_viewable_get_type() #2

; Function Attrs: nounwind uwtable
define i32 @gimp_item_stack_is_flat(%struct._GimpItemStack* %stack) #3 {
entry:
  %retval = alloca i32, align 4
  %stack.addr = alloca %struct._GimpItemStack*, align 8
  %list = alloca %struct._GList*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %viewable = alloca %struct._GimpViewable*, align 8
  store %struct._GimpItemStack* %stack, %struct._GimpItemStack** %stack.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpItemStack*, %struct._GimpItemStack** %stack.addr, align 8
  %1 = bitcast %struct._GimpItemStack* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_item_stack_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_item_stack_is_flat, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i32 0, i32 0))
  store i32 1, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpItemStack*, %struct._GimpItemStack** %stack.addr, align 8
  %14 = bitcast %struct._GimpItemStack* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_list_get_type() #6
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpList*
  %list13 = getelementptr inbounds %struct._GimpList, %struct._GimpList* %15, i32 0, i32 1
  %16 = load %struct._GList*, %struct._GList** %list13, align 8
  store %struct._GList* %16, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %do.end
  %17 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool14 = icmp ne %struct._GList* %17, null
  br i1 %tobool14, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %18, i32 0, i32 0
  %19 = load i8*, i8** %data, align 8
  %20 = bitcast i8* %19 to %struct._GimpViewable*
  store %struct._GimpViewable* %20, %struct._GimpViewable** %viewable, align 8
  %21 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable, align 8
  %call16 = call %struct._GimpContainer* @gimp_viewable_get_children(%struct._GimpViewable* %21)
  %tobool17 = icmp ne %struct._GimpContainer* %call16, null
  br i1 %tobool17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %for.body
  store i32 0, i32* %retval
  br label %return

if.end.19:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.19
  %22 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool20 = icmp ne %struct._GList* %22, null
  br i1 %tobool20, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %23 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %23, i32 0, i32 1
  %24 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %24, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.18, %if.else.9
  %25 = load i32, i32* %retval
  ret i32 %25
}

; Function Attrs: nounwind uwtable
define %struct._GList* @gimp_item_stack_get_item_iter(%struct._GimpItemStack* %stack) #3 {
entry:
  %retval = alloca %struct._GList*, align 8
  %stack.addr = alloca %struct._GimpItemStack*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpItemStack* %stack, %struct._GimpItemStack** %stack.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpItemStack*, %struct._GimpItemStack** %stack.addr, align 8
  %1 = bitcast %struct._GimpItemStack* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_item_stack_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_item_stack_get_item_iter, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i32 0, i32 0))
  store %struct._GList* null, %struct._GList** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpItemStack*, %struct._GimpItemStack** %stack.addr, align 8
  %14 = bitcast %struct._GimpItemStack* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_list_get_type() #6
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpList*
  %list = getelementptr inbounds %struct._GimpList, %struct._GimpList* %15, i32 0, i32 1
  %16 = load %struct._GList*, %struct._GList** %list, align 8
  store %struct._GList* %16, %struct._GList** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %17 = load %struct._GList*, %struct._GList** %retval
  ret %struct._GList* %17
}

; Function Attrs: nounwind uwtable
define %struct._GList* @gimp_item_stack_get_item_list(%struct._GimpItemStack* %stack) #3 {
entry:
  %retval = alloca %struct._GList*, align 8
  %stack.addr = alloca %struct._GimpItemStack*, align 8
  %list = alloca %struct._GList*, align 8
  %result = alloca %struct._GList*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %viewable = alloca %struct._GimpViewable*, align 8
  %children = alloca %struct._GimpContainer*, align 8
  %child_list = alloca %struct._GList*, align 8
  store %struct._GimpItemStack* %stack, %struct._GimpItemStack** %stack.addr, align 8
  store %struct._GList* null, %struct._GList** %result, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpItemStack*, %struct._GimpItemStack** %stack.addr, align 8
  %1 = bitcast %struct._GimpItemStack* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_item_stack_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_item_stack_get_item_list, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i32 0, i32 0))
  store %struct._GList* null, %struct._GList** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpItemStack*, %struct._GimpItemStack** %stack.addr, align 8
  %14 = bitcast %struct._GimpItemStack* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_list_get_type() #6
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpList*
  %list13 = getelementptr inbounds %struct._GimpList, %struct._GimpList* %15, i32 0, i32 1
  %16 = load %struct._GList*, %struct._GList** %list13, align 8
  store %struct._GList* %16, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %do.end
  %17 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool14 = icmp ne %struct._GList* %17, null
  br i1 %tobool14, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %18, i32 0, i32 0
  %19 = load i8*, i8** %data, align 8
  %20 = bitcast i8* %19 to %struct._GimpViewable*
  store %struct._GimpViewable* %20, %struct._GimpViewable** %viewable, align 8
  %21 = load %struct._GList*, %struct._GList** %result, align 8
  %22 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable, align 8
  %23 = bitcast %struct._GimpViewable* %22 to i8*
  %call17 = call %struct._GList* @g_list_prepend(%struct._GList* %21, i8* %23)
  store %struct._GList* %call17, %struct._GList** %result, align 8
  %24 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable, align 8
  %call18 = call %struct._GimpContainer* @gimp_viewable_get_children(%struct._GimpViewable* %24)
  store %struct._GimpContainer* %call18, %struct._GimpContainer** %children, align 8
  %25 = load %struct._GimpContainer*, %struct._GimpContainer** %children, align 8
  %tobool19 = icmp ne %struct._GimpContainer* %25, null
  br i1 %tobool19, label %if.then.20, label %if.end.30

if.then.20:                                       ; preds = %for.body
  %26 = load %struct._GimpContainer*, %struct._GimpContainer** %children, align 8
  %27 = bitcast %struct._GimpContainer* %26 to %struct._GTypeInstance*
  %call22 = call i64 @gimp_item_stack_get_type() #6
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call22)
  %28 = bitcast %struct._GTypeInstance* %call23 to %struct._GimpItemStack*
  %call24 = call %struct._GList* @gimp_item_stack_get_item_list(%struct._GimpItemStack* %28)
  store %struct._GList* %call24, %struct._GList** %child_list, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.20
  %29 = load %struct._GList*, %struct._GList** %child_list, align 8
  %tobool25 = icmp ne %struct._GList* %29, null
  br i1 %tobool25, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %30 = load %struct._GList*, %struct._GList** %result, align 8
  %31 = load %struct._GList*, %struct._GList** %child_list, align 8
  %data26 = getelementptr inbounds %struct._GList, %struct._GList* %31, i32 0, i32 0
  %32 = load i8*, i8** %data26, align 8
  %call27 = call %struct._GList* @g_list_prepend(%struct._GList* %30, i8* %32)
  store %struct._GList* %call27, %struct._GList** %result, align 8
  %33 = load %struct._GList*, %struct._GList** %child_list, align 8
  %34 = load %struct._GList*, %struct._GList** %child_list, align 8
  %data28 = getelementptr inbounds %struct._GList, %struct._GList* %34, i32 0, i32 0
  %35 = load i8*, i8** %data28, align 8
  %call29 = call %struct._GList* @g_list_remove(%struct._GList* %33, i8* %35)
  store %struct._GList* %call29, %struct._GList** %child_list, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.30

if.end.30:                                        ; preds = %while.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.30
  %36 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool31 = icmp ne %struct._GList* %36, null
  br i1 %tobool31, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %37 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %37, i32 0, i32 1
  %38 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %38, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %39 = load %struct._GList*, %struct._GList** %result, align 8
  %call32 = call %struct._GList* @g_list_reverse(%struct._GList* %39)
  store %struct._GList* %call32, %struct._GList** %retval
  br label %return

return:                                           ; preds = %for.end, %if.else.9
  %40 = load %struct._GList*, %struct._GList** %retval
  ret %struct._GList* %40
}

declare %struct._GList* @g_list_prepend(%struct._GList*, i8*) #1

declare %struct._GList* @g_list_remove(%struct._GList*, i8*) #1

declare %struct._GList* @g_list_reverse(%struct._GList*) #1

; Function Attrs: nounwind uwtable
define %struct._GimpItem* @gimp_item_stack_get_item_by_tattoo(%struct._GimpItemStack* %stack, i32 %tattoo) #3 {
entry:
  %retval = alloca %struct._GimpItem*, align 8
  %stack.addr = alloca %struct._GimpItemStack*, align 8
  %tattoo.addr = alloca i32, align 4
  %list = alloca %struct._GList*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %item = alloca %struct._GimpItem*, align 8
  %children = alloca %struct._GimpContainer*, align 8
  store %struct._GimpItemStack* %stack, %struct._GimpItemStack** %stack.addr, align 8
  store i32 %tattoo, i32* %tattoo.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpItemStack*, %struct._GimpItemStack** %stack.addr, align 8
  %1 = bitcast %struct._GimpItemStack* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_item_stack_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_item_stack_get_item_by_tattoo, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i32 0, i32 0))
  store %struct._GimpItem* null, %struct._GimpItem** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpItemStack*, %struct._GimpItemStack** %stack.addr, align 8
  %14 = bitcast %struct._GimpItemStack* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_list_get_type() #6
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpList*
  %list13 = getelementptr inbounds %struct._GimpList, %struct._GimpList* %15, i32 0, i32 1
  %16 = load %struct._GList*, %struct._GList** %list13, align 8
  store %struct._GList* %16, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %do.end
  %17 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool14 = icmp ne %struct._GList* %17, null
  br i1 %tobool14, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %18, i32 0, i32 0
  %19 = load i8*, i8** %data, align 8
  %20 = bitcast i8* %19 to %struct._GimpItem*
  store %struct._GimpItem* %20, %struct._GimpItem** %item, align 8
  %21 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call17 = call i32 @gimp_item_get_tattoo(%struct._GimpItem* %21)
  %22 = load i32, i32* %tattoo.addr, align 4
  %cmp18 = icmp eq i32 %call17, %22
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %for.body
  %23 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  store %struct._GimpItem* %23, %struct._GimpItem** %retval
  br label %return

if.end.20:                                        ; preds = %for.body
  %24 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %25 = bitcast %struct._GimpItem* %24 to %struct._GTypeInstance*
  %call21 = call i64 @gimp_viewable_get_type() #6
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call21)
  %26 = bitcast %struct._GTypeInstance* %call22 to %struct._GimpViewable*
  %call23 = call %struct._GimpContainer* @gimp_viewable_get_children(%struct._GimpViewable* %26)
  store %struct._GimpContainer* %call23, %struct._GimpContainer** %children, align 8
  %27 = load %struct._GimpContainer*, %struct._GimpContainer** %children, align 8
  %tobool24 = icmp ne %struct._GimpContainer* %27, null
  br i1 %tobool24, label %if.then.25, label %if.end.32

if.then.25:                                       ; preds = %if.end.20
  %28 = load %struct._GimpContainer*, %struct._GimpContainer** %children, align 8
  %29 = bitcast %struct._GimpContainer* %28 to %struct._GTypeInstance*
  %call26 = call i64 @gimp_item_stack_get_type() #6
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 %call26)
  %30 = bitcast %struct._GTypeInstance* %call27 to %struct._GimpItemStack*
  %31 = load i32, i32* %tattoo.addr, align 4
  %call28 = call %struct._GimpItem* @gimp_item_stack_get_item_by_tattoo(%struct._GimpItemStack* %30, i32 %31)
  store %struct._GimpItem* %call28, %struct._GimpItem** %item, align 8
  %32 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %tobool29 = icmp ne %struct._GimpItem* %32, null
  br i1 %tobool29, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %if.then.25
  %33 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  store %struct._GimpItem* %33, %struct._GimpItem** %retval
  br label %return

if.end.31:                                        ; preds = %if.then.25
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.end.20
  br label %for.inc

for.inc:                                          ; preds = %if.end.32
  %34 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool33 = icmp ne %struct._GList* %34, null
  br i1 %tobool33, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %35 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %35, i32 0, i32 1
  %36 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %36, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store %struct._GimpItem* null, %struct._GimpItem** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.30, %if.then.19, %if.else.9
  %37 = load %struct._GimpItem*, %struct._GimpItem** %retval
  ret %struct._GimpItem* %37
}

declare i32 @gimp_item_get_tattoo(%struct._GimpItem*) #1

; Function Attrs: nounwind uwtable
define %struct._GimpItem* @gimp_item_stack_get_item_by_path(%struct._GimpItemStack* %stack, %struct._GList* %path) #3 {
entry:
  %retval = alloca %struct._GimpItem*, align 8
  %stack.addr = alloca %struct._GimpItemStack*, align 8
  %path.addr = alloca %struct._GList*, align 8
  %container = alloca %struct._GimpContainer*, align 8
  %item = alloca %struct._GimpItem*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %i = alloca i32, align 4
  %__inst26 = alloca %struct._GTypeInstance*, align 8
  %__t28 = alloca i64, align 8
  %__r31 = alloca i32, align 4
  %tmp47 = alloca i32, align 4
  %__inst60 = alloca %struct._GTypeInstance*, align 8
  %__t62 = alloca i64, align 8
  %__r65 = alloca i32, align 4
  %tmp81 = alloca i32, align 4
  store %struct._GimpItemStack* %stack, %struct._GimpItemStack** %stack.addr, align 8
  store %struct._GList* %path, %struct._GList** %path.addr, align 8
  store %struct._GimpItem* null, %struct._GimpItem** %item, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpItemStack*, %struct._GimpItemStack** %stack.addr, align 8
  %1 = bitcast %struct._GimpItemStack* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_item_stack_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_item_stack_get_item_by_path, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i32 0, i32 0))
  store %struct._GimpItem* null, %struct._GimpItem** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GList*, %struct._GList** %path.addr, align 8
  %cmp12 = icmp ne %struct._GList* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_item_stack_get_item_by_path, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0))
  store %struct._GimpItem* null, %struct._GimpItem** %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GimpItemStack*, %struct._GimpItemStack** %stack.addr, align 8
  %15 = bitcast %struct._GimpItemStack* %14 to %struct._GTypeInstance*
  %call17 = call i64 @gimp_container_get_type() #6
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call17)
  %16 = bitcast %struct._GTypeInstance* %call18 to %struct._GimpContainer*
  store %struct._GimpContainer* %16, %struct._GimpContainer** %container, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.87, %do.end.16
  %17 = load %struct._GList*, %struct._GList** %path.addr, align 8
  %tobool19 = icmp ne %struct._GList* %17, null
  br i1 %tobool19, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %18 = load %struct._GList*, %struct._GList** %path.addr, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %18, i32 0, i32 0
  %19 = load i8*, i8** %data, align 8
  %20 = ptrtoint i8* %19 to i64
  %conv = trunc i64 %20 to i32
  store i32 %conv, i32* %i, align 4
  %21 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %22 = load i32, i32* %i, align 4
  %call21 = call %struct._GimpObject* @gimp_container_get_child_by_index(%struct._GimpContainer* %21, i32 %22)
  %23 = bitcast %struct._GimpObject* %call21 to %struct._GTypeInstance*
  %call22 = call i64 @gimp_item_get_type() #6
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call22)
  %24 = bitcast %struct._GTypeInstance* %call23 to %struct._GimpItem*
  store %struct._GimpItem* %24, %struct._GimpItem** %item, align 8
  br label %do.body.24

do.body.24:                                       ; preds = %while.body
  %25 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %26 = bitcast %struct._GimpItem* %25 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %26, %struct._GTypeInstance** %__inst26, align 8
  %call29 = call i64 @gimp_item_get_type() #6
  store i64 %call29, i64* %__t28, align 8
  %27 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst26, align 8
  %tobool32 = icmp ne %struct._GTypeInstance* %27, null
  br i1 %tobool32, label %if.else.34, label %if.then.33

if.then.33:                                       ; preds = %do.body.24
  store i32 0, i32* %__r31, align 4
  br label %if.end.46

if.else.34:                                       ; preds = %do.body.24
  %28 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst26, align 8
  %g_class35 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %28, i32 0, i32 0
  %29 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class35, align 8
  %tobool36 = icmp ne %struct._GTypeClass* %29, null
  br i1 %tobool36, label %land.lhs.true.37, label %if.else.43

land.lhs.true.37:                                 ; preds = %if.else.34
  %30 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst26, align 8
  %g_class38 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %30, i32 0, i32 0
  %31 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class38, align 8
  %g_type39 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %31, i32 0, i32 0
  %32 = load i64, i64* %g_type39, align 8
  %33 = load i64, i64* %__t28, align 8
  %cmp40 = icmp eq i64 %32, %33
  br i1 %cmp40, label %if.then.42, label %if.else.43

if.then.42:                                       ; preds = %land.lhs.true.37
  store i32 1, i32* %__r31, align 4
  br label %if.end.45

if.else.43:                                       ; preds = %land.lhs.true.37, %if.else.34
  %34 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst26, align 8
  %35 = load i64, i64* %__t28, align 8
  %call44 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %34, i64 %35) #7
  store i32 %call44, i32* %__r31, align 4
  br label %if.end.45

if.end.45:                                        ; preds = %if.else.43, %if.then.42
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.45, %if.then.33
  %36 = load i32, i32* %__r31, align 4
  store i32 %36, i32* %tmp47
  %37 = load i32, i32* %tmp47
  %tobool48 = icmp ne i32 %37, 0
  br i1 %tobool48, label %if.then.49, label %if.else.50

if.then.49:                                       ; preds = %if.end.46
  br label %if.end.51

if.else.50:                                       ; preds = %if.end.46
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_item_stack_get_item_by_path, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i32 0, i32 0))
  %38 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  store %struct._GimpItem* %38, %struct._GimpItem** %retval
  br label %return

if.end.51:                                        ; preds = %if.then.49
  br label %do.end.52

do.end.52:                                        ; preds = %if.end.51
  %39 = load %struct._GList*, %struct._GList** %path.addr, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %39, i32 0, i32 1
  %40 = load %struct._GList*, %struct._GList** %next, align 8
  %tobool53 = icmp ne %struct._GList* %40, null
  br i1 %tobool53, label %if.then.54, label %if.end.87

if.then.54:                                       ; preds = %do.end.52
  %41 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %42 = bitcast %struct._GimpItem* %41 to %struct._GTypeInstance*
  %call55 = call i64 @gimp_viewable_get_type() #6
  %call56 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %42, i64 %call55)
  %43 = bitcast %struct._GTypeInstance* %call56 to %struct._GimpViewable*
  %call57 = call %struct._GimpContainer* @gimp_viewable_get_children(%struct._GimpViewable* %43)
  store %struct._GimpContainer* %call57, %struct._GimpContainer** %container, align 8
  br label %do.body.58

do.body.58:                                       ; preds = %if.then.54
  %44 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %45 = bitcast %struct._GimpContainer* %44 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %45, %struct._GTypeInstance** %__inst60, align 8
  %call63 = call i64 @gimp_item_stack_get_type() #6
  store i64 %call63, i64* %__t62, align 8
  %46 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst60, align 8
  %tobool66 = icmp ne %struct._GTypeInstance* %46, null
  br i1 %tobool66, label %if.else.68, label %if.then.67

if.then.67:                                       ; preds = %do.body.58
  store i32 0, i32* %__r65, align 4
  br label %if.end.80

if.else.68:                                       ; preds = %do.body.58
  %47 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst60, align 8
  %g_class69 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %47, i32 0, i32 0
  %48 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class69, align 8
  %tobool70 = icmp ne %struct._GTypeClass* %48, null
  br i1 %tobool70, label %land.lhs.true.71, label %if.else.77

land.lhs.true.71:                                 ; preds = %if.else.68
  %49 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst60, align 8
  %g_class72 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %49, i32 0, i32 0
  %50 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class72, align 8
  %g_type73 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %50, i32 0, i32 0
  %51 = load i64, i64* %g_type73, align 8
  %52 = load i64, i64* %__t62, align 8
  %cmp74 = icmp eq i64 %51, %52
  br i1 %cmp74, label %if.then.76, label %if.else.77

if.then.76:                                       ; preds = %land.lhs.true.71
  store i32 1, i32* %__r65, align 4
  br label %if.end.79

if.else.77:                                       ; preds = %land.lhs.true.71, %if.else.68
  %53 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst60, align 8
  %54 = load i64, i64* %__t62, align 8
  %call78 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %53, i64 %54) #7
  store i32 %call78, i32* %__r65, align 4
  br label %if.end.79

if.end.79:                                        ; preds = %if.else.77, %if.then.76
  br label %if.end.80

if.end.80:                                        ; preds = %if.end.79, %if.then.67
  %55 = load i32, i32* %__r65, align 4
  store i32 %55, i32* %tmp81
  %56 = load i32, i32* %tmp81
  %tobool82 = icmp ne i32 %56, 0
  br i1 %tobool82, label %if.then.83, label %if.else.84

if.then.83:                                       ; preds = %if.end.80
  br label %if.end.85

if.else.84:                                       ; preds = %if.end.80
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_item_stack_get_item_by_path, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i32 0, i32 0))
  %57 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  store %struct._GimpItem* %57, %struct._GimpItem** %retval
  br label %return

if.end.85:                                        ; preds = %if.then.83
  br label %do.end.86

do.end.86:                                        ; preds = %if.end.85
  br label %if.end.87

if.end.87:                                        ; preds = %do.end.86, %do.end.52
  %58 = load %struct._GList*, %struct._GList** %path.addr, align 8
  %next88 = getelementptr inbounds %struct._GList, %struct._GList* %58, i32 0, i32 1
  %59 = load %struct._GList*, %struct._GList** %next88, align 8
  store %struct._GList* %59, %struct._GList** %path.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %60 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  store %struct._GimpItem* %60, %struct._GimpItem** %retval
  br label %return

return:                                           ; preds = %while.end, %if.else.84, %if.else.50, %if.else.14, %if.else.9
  %61 = load %struct._GimpItem*, %struct._GimpItem** %retval
  ret %struct._GimpItem* %61
}

; Function Attrs: nounwind readnone
declare i64 @gimp_container_get_type() #2

declare %struct._GimpObject* @gimp_container_get_child_by_index(%struct._GimpContainer*, i32) #1

; Function Attrs: nounwind uwtable
define %struct._GimpItem* @gimp_item_stack_get_parent_by_path(%struct._GimpItemStack* %stack, %struct._GList* %path, i32* %index) #3 {
entry:
  %retval = alloca %struct._GimpItem*, align 8
  %stack.addr = alloca %struct._GimpItemStack*, align 8
  %path.addr = alloca %struct._GList*, align 8
  %index.addr = alloca i32*, align 8
  %parent = alloca %struct._GimpItem*, align 8
  %i = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %child = alloca %struct._GimpObject*, align 8
  %children = alloca %struct._GimpContainer*, align 8
  %__inst28 = alloca %struct._GTypeInstance*, align 8
  %__t30 = alloca i64, align 8
  %__r33 = alloca i32, align 4
  %tmp49 = alloca i32, align 4
  %__inst60 = alloca %struct._GTypeInstance*, align 8
  %__t62 = alloca i64, align 8
  %__r65 = alloca i32, align 4
  %tmp81 = alloca i32, align 4
  store %struct._GimpItemStack* %stack, %struct._GimpItemStack** %stack.addr, align 8
  store %struct._GList* %path, %struct._GList** %path.addr, align 8
  store i32* %index, i32** %index.addr, align 8
  store %struct._GimpItem* null, %struct._GimpItem** %parent, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpItemStack*, %struct._GimpItemStack** %stack.addr, align 8
  %1 = bitcast %struct._GimpItemStack* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_item_stack_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_item_stack_get_parent_by_path, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i32 0, i32 0))
  store %struct._GimpItem* null, %struct._GimpItem** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GList*, %struct._GList** %path.addr, align 8
  %cmp12 = icmp ne %struct._GList* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_item_stack_get_parent_by_path, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0))
  store %struct._GimpItem* null, %struct._GimpItem** %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GList*, %struct._GList** %path.addr, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %14, i32 0, i32 0
  %15 = load i8*, i8** %data, align 8
  %16 = ptrtoint i8* %15 to i64
  %conv = trunc i64 %16 to i32
  store i32 %conv, i32* %i, align 4
  %17 = load i32*, i32** %index.addr, align 8
  %tobool17 = icmp ne i32* %17, null
  br i1 %tobool17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %do.end.16
  %18 = load i32, i32* %i, align 4
  %19 = load i32*, i32** %index.addr, align 8
  store i32 %18, i32* %19, align 4
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.18, %do.end.16
  br label %while.cond

while.cond:                                       ; preds = %if.end.96, %if.end.19
  %20 = load %struct._GList*, %struct._GList** %path.addr, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %20, i32 0, i32 1
  %21 = load %struct._GList*, %struct._GList** %next, align 8
  %tobool20 = icmp ne %struct._GList* %21, null
  br i1 %tobool20, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %22 = load %struct._GimpItemStack*, %struct._GimpItemStack** %stack.addr, align 8
  %23 = bitcast %struct._GimpItemStack* %22 to %struct._GTypeInstance*
  %call23 = call i64 @gimp_container_get_type() #6
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call23)
  %24 = bitcast %struct._GTypeInstance* %call24 to %struct._GimpContainer*
  %25 = load i32, i32* %i, align 4
  %call25 = call %struct._GimpObject* @gimp_container_get_child_by_index(%struct._GimpContainer* %24, i32 %25)
  store %struct._GimpObject* %call25, %struct._GimpObject** %child, align 8
  br label %do.body.26

do.body.26:                                       ; preds = %while.body
  %26 = load %struct._GimpObject*, %struct._GimpObject** %child, align 8
  %27 = bitcast %struct._GimpObject* %26 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %27, %struct._GTypeInstance** %__inst28, align 8
  %call31 = call i64 @gimp_item_get_type() #6
  store i64 %call31, i64* %__t30, align 8
  %28 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst28, align 8
  %tobool34 = icmp ne %struct._GTypeInstance* %28, null
  br i1 %tobool34, label %if.else.36, label %if.then.35

if.then.35:                                       ; preds = %do.body.26
  store i32 0, i32* %__r33, align 4
  br label %if.end.48

if.else.36:                                       ; preds = %do.body.26
  %29 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst28, align 8
  %g_class37 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %29, i32 0, i32 0
  %30 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class37, align 8
  %tobool38 = icmp ne %struct._GTypeClass* %30, null
  br i1 %tobool38, label %land.lhs.true.39, label %if.else.45

land.lhs.true.39:                                 ; preds = %if.else.36
  %31 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst28, align 8
  %g_class40 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %31, i32 0, i32 0
  %32 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class40, align 8
  %g_type41 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %32, i32 0, i32 0
  %33 = load i64, i64* %g_type41, align 8
  %34 = load i64, i64* %__t30, align 8
  %cmp42 = icmp eq i64 %33, %34
  br i1 %cmp42, label %if.then.44, label %if.else.45

if.then.44:                                       ; preds = %land.lhs.true.39
  store i32 1, i32* %__r33, align 4
  br label %if.end.47

if.else.45:                                       ; preds = %land.lhs.true.39, %if.else.36
  %35 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst28, align 8
  %36 = load i64, i64* %__t30, align 8
  %call46 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %35, i64 %36) #7
  store i32 %call46, i32* %__r33, align 4
  br label %if.end.47

if.end.47:                                        ; preds = %if.else.45, %if.then.44
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47, %if.then.35
  %37 = load i32, i32* %__r33, align 4
  store i32 %37, i32* %tmp49
  %38 = load i32, i32* %tmp49
  %tobool50 = icmp ne i32 %38, 0
  br i1 %tobool50, label %if.then.51, label %if.else.52

if.then.51:                                       ; preds = %if.end.48
  br label %if.end.53

if.else.52:                                       ; preds = %if.end.48
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_item_stack_get_parent_by_path, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i32 0, i32 0))
  %39 = load %struct._GimpItem*, %struct._GimpItem** %parent, align 8
  store %struct._GimpItem* %39, %struct._GimpItem** %retval
  br label %return

if.end.53:                                        ; preds = %if.then.51
  br label %do.end.54

do.end.54:                                        ; preds = %if.end.53
  %40 = load %struct._GimpObject*, %struct._GimpObject** %child, align 8
  %41 = bitcast %struct._GimpObject* %40 to %struct._GTypeInstance*
  %call55 = call i64 @gimp_viewable_get_type() #6
  %call56 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %41, i64 %call55)
  %42 = bitcast %struct._GTypeInstance* %call56 to %struct._GimpViewable*
  %call57 = call %struct._GimpContainer* @gimp_viewable_get_children(%struct._GimpViewable* %42)
  store %struct._GimpContainer* %call57, %struct._GimpContainer** %children, align 8
  br label %do.body.58

do.body.58:                                       ; preds = %do.end.54
  %43 = load %struct._GimpContainer*, %struct._GimpContainer** %children, align 8
  %44 = bitcast %struct._GimpContainer* %43 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %44, %struct._GTypeInstance** %__inst60, align 8
  %call63 = call i64 @gimp_item_stack_get_type() #6
  store i64 %call63, i64* %__t62, align 8
  %45 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst60, align 8
  %tobool66 = icmp ne %struct._GTypeInstance* %45, null
  br i1 %tobool66, label %if.else.68, label %if.then.67

if.then.67:                                       ; preds = %do.body.58
  store i32 0, i32* %__r65, align 4
  br label %if.end.80

if.else.68:                                       ; preds = %do.body.58
  %46 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst60, align 8
  %g_class69 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %46, i32 0, i32 0
  %47 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class69, align 8
  %tobool70 = icmp ne %struct._GTypeClass* %47, null
  br i1 %tobool70, label %land.lhs.true.71, label %if.else.77

land.lhs.true.71:                                 ; preds = %if.else.68
  %48 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst60, align 8
  %g_class72 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %48, i32 0, i32 0
  %49 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class72, align 8
  %g_type73 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %49, i32 0, i32 0
  %50 = load i64, i64* %g_type73, align 8
  %51 = load i64, i64* %__t62, align 8
  %cmp74 = icmp eq i64 %50, %51
  br i1 %cmp74, label %if.then.76, label %if.else.77

if.then.76:                                       ; preds = %land.lhs.true.71
  store i32 1, i32* %__r65, align 4
  br label %if.end.79

if.else.77:                                       ; preds = %land.lhs.true.71, %if.else.68
  %52 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst60, align 8
  %53 = load i64, i64* %__t62, align 8
  %call78 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %52, i64 %53) #7
  store i32 %call78, i32* %__r65, align 4
  br label %if.end.79

if.end.79:                                        ; preds = %if.else.77, %if.then.76
  br label %if.end.80

if.end.80:                                        ; preds = %if.end.79, %if.then.67
  %54 = load i32, i32* %__r65, align 4
  store i32 %54, i32* %tmp81
  %55 = load i32, i32* %tmp81
  %tobool82 = icmp ne i32 %55, 0
  br i1 %tobool82, label %if.then.83, label %if.else.84

if.then.83:                                       ; preds = %if.end.80
  br label %if.end.85

if.else.84:                                       ; preds = %if.end.80
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_item_stack_get_parent_by_path, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i32 0, i32 0))
  %56 = load %struct._GimpItem*, %struct._GimpItem** %parent, align 8
  store %struct._GimpItem* %56, %struct._GimpItem** %retval
  br label %return

if.end.85:                                        ; preds = %if.then.83
  br label %do.end.86

do.end.86:                                        ; preds = %if.end.85
  %57 = load %struct._GimpObject*, %struct._GimpObject** %child, align 8
  %58 = bitcast %struct._GimpObject* %57 to %struct._GTypeInstance*
  %call87 = call i64 @gimp_item_get_type() #6
  %call88 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %58, i64 %call87)
  %59 = bitcast %struct._GTypeInstance* %call88 to %struct._GimpItem*
  store %struct._GimpItem* %59, %struct._GimpItem** %parent, align 8
  %60 = load %struct._GimpContainer*, %struct._GimpContainer** %children, align 8
  %61 = bitcast %struct._GimpContainer* %60 to %struct._GTypeInstance*
  %call89 = call i64 @gimp_item_stack_get_type() #6
  %call90 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %61, i64 %call89)
  %62 = bitcast %struct._GTypeInstance* %call90 to %struct._GimpItemStack*
  store %struct._GimpItemStack* %62, %struct._GimpItemStack** %stack.addr, align 8
  %63 = load %struct._GList*, %struct._GList** %path.addr, align 8
  %next91 = getelementptr inbounds %struct._GList, %struct._GList* %63, i32 0, i32 1
  %64 = load %struct._GList*, %struct._GList** %next91, align 8
  store %struct._GList* %64, %struct._GList** %path.addr, align 8
  %65 = load %struct._GList*, %struct._GList** %path.addr, align 8
  %data92 = getelementptr inbounds %struct._GList, %struct._GList* %65, i32 0, i32 0
  %66 = load i8*, i8** %data92, align 8
  %67 = ptrtoint i8* %66 to i64
  %conv93 = trunc i64 %67 to i32
  store i32 %conv93, i32* %i, align 4
  %68 = load i32*, i32** %index.addr, align 8
  %tobool94 = icmp ne i32* %68, null
  br i1 %tobool94, label %if.then.95, label %if.end.96

if.then.95:                                       ; preds = %do.end.86
  %69 = load i32, i32* %i, align 4
  %70 = load i32*, i32** %index.addr, align 8
  store i32 %69, i32* %70, align 4
  br label %if.end.96

if.end.96:                                        ; preds = %if.then.95, %do.end.86
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %71 = load %struct._GimpItem*, %struct._GimpItem** %parent, align 8
  store %struct._GimpItem* %71, %struct._GimpItem** %retval
  br label %return

return:                                           ; preds = %while.end, %if.else.84, %if.else.52, %if.else.14, %if.else.9
  %72 = load %struct._GimpItem*, %struct._GimpItem** %retval
  ret %struct._GimpItem* %72
}

; Function Attrs: nounwind uwtable
define void @gimp_item_stack_invalidate_previews(%struct._GimpItemStack* %stack) #3 {
entry:
  %stack.addr = alloca %struct._GimpItemStack*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpItemStack* %stack, %struct._GimpItemStack** %stack.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpItemStack*, %struct._GimpItemStack** %stack.addr, align 8
  %1 = bitcast %struct._GimpItemStack* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_item_stack_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.gimp_item_stack_invalidate_previews, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpItemStack*, %struct._GimpItemStack** %stack.addr, align 8
  %14 = bitcast %struct._GimpItemStack* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_container_get_type() #6
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpContainer*
  call void @gimp_container_foreach(%struct._GimpContainer* %15, void (i8*, i8*)* bitcast (void (%struct._GimpViewable*)* @gimp_item_stack_invalidate_preview to void (i8*, i8*)*), i8* null)
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

declare void @gimp_container_foreach(%struct._GimpContainer*, void (i8*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_item_stack_invalidate_preview(%struct._GimpViewable* %viewable) #3 {
entry:
  %viewable.addr = alloca %struct._GimpViewable*, align 8
  %children = alloca %struct._GimpContainer*, align 8
  store %struct._GimpViewable* %viewable, %struct._GimpViewable** %viewable.addr, align 8
  %0 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %call = call %struct._GimpContainer* @gimp_viewable_get_children(%struct._GimpViewable* %0)
  store %struct._GimpContainer* %call, %struct._GimpContainer** %children, align 8
  %1 = load %struct._GimpContainer*, %struct._GimpContainer** %children, align 8
  %tobool = icmp ne %struct._GimpContainer* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._GimpContainer*, %struct._GimpContainer** %children, align 8
  %3 = bitcast %struct._GimpContainer* %2 to %struct._GTypeInstance*
  %call1 = call i64 @gimp_item_stack_get_type() #6
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call1)
  %4 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpItemStack*
  call void @gimp_item_stack_invalidate_previews(%struct._GimpItemStack* %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  call void @gimp_viewable_invalidate_preview(%struct._GimpViewable* %5)
  ret void
}

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_item_stack_class_init(%struct._GimpItemStackClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpItemStackClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %container_class = alloca %struct._GimpContainerClass*, align 8
  store %struct._GimpItemStackClass* %klass, %struct._GimpItemStackClass** %klass.addr, align 8
  %0 = load %struct._GimpItemStackClass*, %struct._GimpItemStackClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpItemStackClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpItemStackClass*, %struct._GimpItemStackClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpItemStackClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gimp_container_get_type() #6
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GimpContainerClass*
  store %struct._GimpContainerClass* %5, %struct._GimpContainerClass** %container_class, align 8
  %6 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %6, i32 0, i32 9
  store void (%struct._GObject*)* @gimp_item_stack_constructed, void (%struct._GObject*)** %constructed, align 8
  %7 = load %struct._GimpContainerClass*, %struct._GimpContainerClass** %container_class, align 8
  %add = getelementptr inbounds %struct._GimpContainerClass, %struct._GimpContainerClass* %7, i32 0, i32 1
  store void (%struct._GimpContainer*, %struct._GimpObject*)* @gimp_item_stack_add, void (%struct._GimpContainer*, %struct._GimpObject*)** %add, align 8
  %8 = load %struct._GimpContainerClass*, %struct._GimpContainerClass** %container_class, align 8
  %remove = getelementptr inbounds %struct._GimpContainerClass, %struct._GimpContainerClass* %8, i32 0, i32 2
  store void (%struct._GimpContainer*, %struct._GimpObject*)* @gimp_item_stack_remove, void (%struct._GimpContainer*, %struct._GimpObject*)** %remove, align 8
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_item_stack_constructed(%struct._GObject* %object) #3 {
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
  %3 = load i8*, i8** @gimp_item_stack_parent_class, align 8
  %4 = bitcast i8* %3 to %struct._GTypeClass*
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 80)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GObjectClass*
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %5, i32 0, i32 9
  %6 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed, align 8
  %tobool = icmp ne void (%struct._GObject*)* %6, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i8*, i8** @gimp_item_stack_parent_class, align 8
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
  %12 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %call5 = call i64 @gimp_container_get_children_type(%struct._GimpContainer* %12)
  %call6 = call i64 @gimp_item_get_type() #6
  %call7 = call i32 @g_type_is_a(i64 %call5, i64 %call6)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %do.body
  br label %if.end.10

if.else:                                          ; preds = %do.body
  call void @g_assertion_message_expr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i32 0, i32 0), i32 74, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_item_stack_constructed, i32 0, i32 0), i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.13, i32 0, i32 0)) #8
  unreachable

if.end.10:                                        ; preds = %if.then.9
  br label %do.end

do.end:                                           ; preds = %if.end.10
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_item_stack_add(%struct._GimpContainer* %container, %struct._GimpObject* %object) #3 {
entry:
  %container.addr = alloca %struct._GimpContainer*, align 8
  %object.addr = alloca %struct._GimpObject*, align 8
  store %struct._GimpContainer* %container, %struct._GimpContainer** %container.addr, align 8
  store %struct._GimpObject* %object, %struct._GimpObject** %object.addr, align 8
  %0 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %1 = bitcast %struct._GimpObject* %0 to i8*
  %call = call i8* @g_object_ref_sink(i8* %1)
  %2 = load i8*, i8** @gimp_item_stack_parent_class, align 8
  %3 = bitcast i8* %2 to %struct._GTypeClass*
  %call1 = call i64 @gimp_container_get_type() #6
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %3, i64 %call1)
  %4 = bitcast %struct._GTypeClass* %call2 to %struct._GimpContainerClass*
  %add = getelementptr inbounds %struct._GimpContainerClass, %struct._GimpContainerClass* %4, i32 0, i32 1
  %5 = load void (%struct._GimpContainer*, %struct._GimpObject*)*, void (%struct._GimpContainer*, %struct._GimpObject*)** %add, align 8
  %6 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %7 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  call void %5(%struct._GimpContainer* %6, %struct._GimpObject* %7)
  %8 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %9 = bitcast %struct._GimpObject* %8 to i8*
  call void @g_object_unref(i8* %9)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_item_stack_remove(%struct._GimpContainer* %container, %struct._GimpObject* %object) #3 {
entry:
  %container.addr = alloca %struct._GimpContainer*, align 8
  %object.addr = alloca %struct._GimpObject*, align 8
  store %struct._GimpContainer* %container, %struct._GimpContainer** %container.addr, align 8
  store %struct._GimpObject* %object, %struct._GimpObject** %object.addr, align 8
  %0 = load i8*, i8** @gimp_item_stack_parent_class, align 8
  %1 = bitcast i8* %0 to %struct._GTypeClass*
  %call = call i64 @gimp_container_get_type() #6
  %call1 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 %call)
  %2 = bitcast %struct._GTypeClass* %call1 to %struct._GimpContainerClass*
  %remove = getelementptr inbounds %struct._GimpContainerClass, %struct._GimpContainerClass* %2, i32 0, i32 2
  %3 = load void (%struct._GimpContainer*, %struct._GimpObject*)*, void (%struct._GimpContainer*, %struct._GimpObject*)** %remove, align 8
  %4 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %5 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  call void %3(%struct._GimpContainer* %4, %struct._GimpObject* %5)
  ret void
}

declare i64 @gimp_container_get_children_type(%struct._GimpContainer*) #1

; Function Attrs: noreturn
declare void @g_assertion_message_expr(i8*, i8*, i32, i8*, i8*) #5

declare i8* @g_object_ref_sink(i8*) #1

declare void @g_object_unref(i8*) #1

declare void @gimp_viewable_invalidate_preview(%struct._GimpViewable*) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind readonly }
attributes #8 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
