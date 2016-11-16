; ModuleID = './app/core/gimpdrawablestack.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpDrawableStackClass = type { %struct._GimpItemStackClass, void (%struct._GimpDrawableStack*, i32, i32, i32, i32)* }
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
%struct._GimpDrawableStack = type { %struct._GimpItemStack, %struct._GeglNode* }
%struct._GimpItemStack = type { %struct._GimpList }
%struct._GimpList = type { %struct._GimpContainer, %struct._GList*, i32, i32 (i8*, i8*)*, i32 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GeglNode = type opaque
%struct._GimpDrawable = type { %struct._GimpItem, %struct._GimpDrawablePrivate* }
%struct._GimpItem = type { %struct._GimpViewable }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpDrawablePrivate = type opaque
%struct._GSignalInvocationHint = type { i32, i32, i32 }
%struct._GClosure = type { i32, {}*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, void (i8*, %struct._GClosure*)* }

@gimp_drawable_stack_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"GimpDrawableStack\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"Gimp-Core\00", align 1
@__func__.gimp_drawable_stack_new = private unnamed_addr constant [24 x i8] c"gimp_drawable_stack_new\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"g_type_is_a (drawable_type, GIMP_TYPE_DRAWABLE)\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"children-type\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"policy\00", align 1
@__func__.gimp_drawable_stack_get_graph = private unnamed_addr constant [30 x i8] c"gimp_drawable_stack_get_graph\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"GIMP_IS_DRAWABLE_STACK (stack)\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"output\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"input\00", align 1
@gimp_drawable_stack_parent_class = internal global i8* null, align 8
@GimpDrawableStack_private_offset = internal global i32 0, align 4
@.str.9 = private unnamed_addr constant [7 x i8] c"update\00", align 1
@stack_signals = internal global [1 x i32] zeroinitializer, align 4
@.str.10 = private unnamed_addr constant [20 x i8] c"gimpdrawablestack.c\00", align 1
@__func__.gimp_drawable_stack_constructed = private unnamed_addr constant [32 x i8] c"gimp_drawable_stack_constructed\00", align 1
@.str.11 = private unnamed_addr constant [79 x i8] c"g_type_is_a (gimp_container_get_children_type (container), GIMP_TYPE_DRAWABLE)\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"visibility-changed\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_drawable_stack_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_drawable_stack_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_drawable_stack_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_item_stack_get_type() #6
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 256, void (i8*, i8*)* bitcast (void (i8*)* @gimp_drawable_stack_class_intern_init to void (i8*, i8*)*), i32 80, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpDrawableStack*)* @gimp_drawable_stack_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_drawable_stack_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_drawable_stack_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_item_stack_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_drawable_stack_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_drawable_stack_parent_class, align 8
  %1 = load i32, i32* @GimpDrawableStack_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpDrawableStack_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpDrawableStackClass*
  call void @gimp_drawable_stack_class_init(%struct._GimpDrawableStackClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_drawable_stack_init(%struct._GimpDrawableStack* %stack) #3 {
entry:
  %stack.addr = alloca %struct._GimpDrawableStack*, align 8
  store %struct._GimpDrawableStack* %stack, %struct._GimpDrawableStack** %stack.addr, align 8
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GimpContainer* @gimp_drawable_stack_new(i64 %drawable_type) #3 {
entry:
  %retval = alloca %struct._GimpContainer*, align 8
  %drawable_type.addr = alloca i64, align 8
  store i64 %drawable_type, i64* %drawable_type.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i64, i64* %drawable_type.addr, align 8
  %call = call i64 @gimp_drawable_get_type() #6
  %call1 = call i32 @g_type_is_a(i64 %0, i64 %call)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_drawable_stack_new, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpContainer* null, %struct._GimpContainer** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %call2 = call i64 @gimp_drawable_stack_get_type() #6
  %1 = load i64, i64* %drawable_type.addr, align 8
  %call3 = call i8* @g_type_name(i64 %1)
  %2 = load i64, i64* %drawable_type.addr, align 8
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
declare i64 @gimp_drawable_get_type() #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare i8* @g_object_new(i64, i8*, ...) #1

declare i8* @g_type_name(i64) #1

; Function Attrs: nounwind uwtable
define %struct._GeglNode* @gimp_drawable_stack_get_graph(%struct._GimpDrawableStack* %stack) #3 {
entry:
  %retval = alloca %struct._GeglNode*, align 8
  %stack.addr = alloca %struct._GimpDrawableStack*, align 8
  %list = alloca %struct._GList*, align 8
  %reverse_list = alloca %struct._GList*, align 8
  %previous = alloca %struct._GeglNode*, align 8
  %output = alloca %struct._GeglNode*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %drawable = alloca %struct._GimpDrawable*, align 8
  %drawable28 = alloca %struct._GimpDrawable*, align 8
  %node = alloca %struct._GeglNode*, align 8
  store %struct._GimpDrawableStack* %stack, %struct._GimpDrawableStack** %stack.addr, align 8
  store %struct._GList* null, %struct._GList** %reverse_list, align 8
  store %struct._GeglNode* null, %struct._GeglNode** %previous, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDrawableStack*, %struct._GimpDrawableStack** %stack.addr, align 8
  %1 = bitcast %struct._GimpDrawableStack* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_drawable_stack_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_drawable_stack_get_graph, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i32 0, i32 0))
  store %struct._GeglNode* null, %struct._GeglNode** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDrawableStack*, %struct._GimpDrawableStack** %stack.addr, align 8
  %graph = getelementptr inbounds %struct._GimpDrawableStack, %struct._GimpDrawableStack* %13, i32 0, i32 1
  %14 = load %struct._GeglNode*, %struct._GeglNode** %graph, align 8
  %tobool11 = icmp ne %struct._GeglNode* %14, null
  br i1 %tobool11, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %do.end
  %15 = load %struct._GimpDrawableStack*, %struct._GimpDrawableStack** %stack.addr, align 8
  %graph13 = getelementptr inbounds %struct._GimpDrawableStack, %struct._GimpDrawableStack* %15, i32 0, i32 1
  %16 = load %struct._GeglNode*, %struct._GeglNode** %graph13, align 8
  store %struct._GeglNode* %16, %struct._GeglNode** %retval
  br label %return

if.end.14:                                        ; preds = %do.end
  %17 = load %struct._GimpDrawableStack*, %struct._GimpDrawableStack** %stack.addr, align 8
  %18 = bitcast %struct._GimpDrawableStack* %17 to %struct._GTypeInstance*
  %call15 = call i64 @gimp_list_get_type() #6
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call15)
  %19 = bitcast %struct._GTypeInstance* %call16 to %struct._GimpList*
  %list17 = getelementptr inbounds %struct._GimpList, %struct._GimpList* %19, i32 0, i32 1
  %20 = load %struct._GList*, %struct._GList** %list17, align 8
  store %struct._GList* %20, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %if.end.14
  %21 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool18 = icmp ne %struct._GList* %21, null
  br i1 %tobool18, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %22 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %22, i32 0, i32 0
  %23 = load i8*, i8** %data, align 8
  %24 = bitcast i8* %23 to %struct._GimpDrawable*
  store %struct._GimpDrawable* %24, %struct._GimpDrawable** %drawable, align 8
  %25 = load %struct._GList*, %struct._GList** %reverse_list, align 8
  %26 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %27 = bitcast %struct._GimpDrawable* %26 to i8*
  %call20 = call %struct._GList* @g_list_prepend(%struct._GList* %25, i8* %27)
  store %struct._GList* %call20, %struct._GList** %reverse_list, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %28 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool21 = icmp ne %struct._GList* %28, null
  br i1 %tobool21, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %29 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %29, i32 0, i32 1
  %30 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %30, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call22 = call %struct._GeglNode* @gegl_node_new()
  %31 = load %struct._GimpDrawableStack*, %struct._GimpDrawableStack** %stack.addr, align 8
  %graph23 = getelementptr inbounds %struct._GimpDrawableStack, %struct._GimpDrawableStack* %31, i32 0, i32 1
  store %struct._GeglNode* %call22, %struct._GeglNode** %graph23, align 8
  %32 = load %struct._GList*, %struct._GList** %reverse_list, align 8
  store %struct._GList* %32, %struct._GList** %list, align 8
  br label %for.cond.24

for.cond.24:                                      ; preds = %cond.end.45, %for.end
  %33 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool25 = icmp ne %struct._GList* %33, null
  br i1 %tobool25, label %for.body.26, label %for.end.47

for.body.26:                                      ; preds = %for.cond.24
  %34 = load %struct._GList*, %struct._GList** %list, align 8
  %data29 = getelementptr inbounds %struct._GList, %struct._GList* %34, i32 0, i32 0
  %35 = load i8*, i8** %data29, align 8
  %36 = bitcast i8* %35 to %struct._GimpDrawable*
  store %struct._GimpDrawable* %36, %struct._GimpDrawable** %drawable28, align 8
  %37 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable28, align 8
  %38 = bitcast %struct._GimpDrawable* %37 to %struct._GTypeInstance*
  %call31 = call i64 @gimp_item_get_type() #6
  %call32 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %38, i64 %call31)
  %39 = bitcast %struct._GTypeInstance* %call32 to %struct._GimpItem*
  %call33 = call %struct._GeglNode* @gimp_item_get_node(%struct._GimpItem* %39)
  store %struct._GeglNode* %call33, %struct._GeglNode** %node, align 8
  %40 = load %struct._GimpDrawableStack*, %struct._GimpDrawableStack** %stack.addr, align 8
  %graph34 = getelementptr inbounds %struct._GimpDrawableStack, %struct._GimpDrawableStack* %40, i32 0, i32 1
  %41 = load %struct._GeglNode*, %struct._GeglNode** %graph34, align 8
  %42 = load %struct._GeglNode*, %struct._GeglNode** %node, align 8
  %call35 = call %struct._GeglNode* @gegl_node_add_child(%struct._GeglNode* %41, %struct._GeglNode* %42)
  %43 = load %struct._GeglNode*, %struct._GeglNode** %previous, align 8
  %tobool36 = icmp ne %struct._GeglNode* %43, null
  br i1 %tobool36, label %if.then.37, label %if.end.39

if.then.37:                                       ; preds = %for.body.26
  %44 = load %struct._GeglNode*, %struct._GeglNode** %previous, align 8
  %45 = load %struct._GeglNode*, %struct._GeglNode** %node, align 8
  %call38 = call i32 @gegl_node_connect_to(%struct._GeglNode* %44, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), %struct._GeglNode* %45, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.37, %for.body.26
  %46 = load %struct._GeglNode*, %struct._GeglNode** %node, align 8
  store %struct._GeglNode* %46, %struct._GeglNode** %previous, align 8
  br label %for.inc.40

for.inc.40:                                       ; preds = %if.end.39
  %47 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool41 = icmp ne %struct._GList* %47, null
  br i1 %tobool41, label %cond.true.42, label %cond.false.44

cond.true.42:                                     ; preds = %for.inc.40
  %48 = load %struct._GList*, %struct._GList** %list, align 8
  %next43 = getelementptr inbounds %struct._GList, %struct._GList* %48, i32 0, i32 1
  %49 = load %struct._GList*, %struct._GList** %next43, align 8
  br label %cond.end.45

cond.false.44:                                    ; preds = %for.inc.40
  br label %cond.end.45

cond.end.45:                                      ; preds = %cond.false.44, %cond.true.42
  %cond46 = phi %struct._GList* [ %49, %cond.true.42 ], [ null, %cond.false.44 ]
  store %struct._GList* %cond46, %struct._GList** %list, align 8
  br label %for.cond.24

for.end.47:                                       ; preds = %for.cond.24
  %50 = load %struct._GList*, %struct._GList** %reverse_list, align 8
  call void @g_list_free(%struct._GList* %50)
  %51 = load %struct._GimpDrawableStack*, %struct._GimpDrawableStack** %stack.addr, align 8
  %graph48 = getelementptr inbounds %struct._GimpDrawableStack, %struct._GimpDrawableStack* %51, i32 0, i32 1
  %52 = load %struct._GeglNode*, %struct._GeglNode** %graph48, align 8
  %call49 = call %struct._GeglNode* @gegl_node_get_output_proxy(%struct._GeglNode* %52, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0))
  store %struct._GeglNode* %call49, %struct._GeglNode** %output, align 8
  %53 = load %struct._GeglNode*, %struct._GeglNode** %previous, align 8
  %tobool50 = icmp ne %struct._GeglNode* %53, null
  br i1 %tobool50, label %if.then.51, label %if.end.53

if.then.51:                                       ; preds = %for.end.47
  %54 = load %struct._GeglNode*, %struct._GeglNode** %previous, align 8
  %55 = load %struct._GeglNode*, %struct._GeglNode** %output, align 8
  %call52 = call i32 @gegl_node_connect_to(%struct._GeglNode* %54, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), %struct._GeglNode* %55, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.51, %for.end.47
  %56 = load %struct._GimpDrawableStack*, %struct._GimpDrawableStack** %stack.addr, align 8
  %graph54 = getelementptr inbounds %struct._GimpDrawableStack, %struct._GimpDrawableStack* %56, i32 0, i32 1
  %57 = load %struct._GeglNode*, %struct._GeglNode** %graph54, align 8
  store %struct._GeglNode* %57, %struct._GeglNode** %retval
  br label %return

return:                                           ; preds = %if.end.53, %if.then.12, %if.else.9
  %58 = load %struct._GeglNode*, %struct._GeglNode** %retval
  ret %struct._GeglNode* %58
}

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_list_get_type() #2

declare %struct._GList* @g_list_prepend(%struct._GList*, i8*) #1

declare %struct._GeglNode* @gegl_node_new() #1

declare %struct._GeglNode* @gimp_item_get_node(%struct._GimpItem*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_item_get_type() #2

declare %struct._GeglNode* @gegl_node_add_child(%struct._GeglNode*, %struct._GeglNode*) #1

declare i32 @gegl_node_connect_to(%struct._GeglNode*, i8*, %struct._GeglNode*, i8*) #1

declare void @g_list_free(%struct._GList*) #1

declare %struct._GeglNode* @gegl_node_get_output_proxy(%struct._GeglNode*, i8*) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_drawable_stack_class_init(%struct._GimpDrawableStackClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpDrawableStackClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %container_class = alloca %struct._GimpContainerClass*, align 8
  store %struct._GimpDrawableStackClass* %klass, %struct._GimpDrawableStackClass** %klass.addr, align 8
  %0 = load %struct._GimpDrawableStackClass*, %struct._GimpDrawableStackClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpDrawableStackClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpDrawableStackClass*, %struct._GimpDrawableStackClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpDrawableStackClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gimp_container_get_type() #6
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GimpContainerClass*
  store %struct._GimpContainerClass* %5, %struct._GimpContainerClass** %container_class, align 8
  %6 = load %struct._GimpDrawableStackClass*, %struct._GimpDrawableStackClass** %klass.addr, align 8
  %7 = bitcast %struct._GimpDrawableStackClass* %6 to %struct._GTypeClass*
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %7, i32 0, i32 0
  %8 = load i64, i64* %g_type, align 8
  %call3 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0), i64 %8, i32 1, i32 248, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @gimp_marshal_VOID__INT_INT_INT_INT, i64 4, i32 4, i64 24, i64 24, i64 24, i64 24)
  store i32 %call3, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @stack_signals, i32 0, i64 0), align 4
  %9 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %9, i32 0, i32 9
  store void (%struct._GObject*)* @gimp_drawable_stack_constructed, void (%struct._GObject*)** %constructed, align 8
  %10 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %10, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_drawable_stack_finalize, void (%struct._GObject*)** %finalize, align 8
  %11 = load %struct._GimpContainerClass*, %struct._GimpContainerClass** %container_class, align 8
  %add = getelementptr inbounds %struct._GimpContainerClass, %struct._GimpContainerClass* %11, i32 0, i32 1
  store void (%struct._GimpContainer*, %struct._GimpObject*)* @gimp_drawable_stack_add, void (%struct._GimpContainer*, %struct._GimpObject*)** %add, align 8
  %12 = load %struct._GimpContainerClass*, %struct._GimpContainerClass** %container_class, align 8
  %remove = getelementptr inbounds %struct._GimpContainerClass, %struct._GimpContainerClass* %12, i32 0, i32 2
  store void (%struct._GimpContainer*, %struct._GimpObject*)* @gimp_drawable_stack_remove, void (%struct._GimpContainer*, %struct._GimpObject*)** %remove, align 8
  %13 = load %struct._GimpContainerClass*, %struct._GimpContainerClass** %container_class, align 8
  %reorder = getelementptr inbounds %struct._GimpContainerClass, %struct._GimpContainerClass* %13, i32 0, i32 3
  store void (%struct._GimpContainer*, %struct._GimpObject*, i32)* @gimp_drawable_stack_reorder, void (%struct._GimpContainer*, %struct._GimpObject*, i32)** %reorder, align 8
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_container_get_type() #2

declare i32 @g_signal_new(i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) #1

declare void @gimp_marshal_VOID__INT_INT_INT_INT(%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_drawable_stack_constructed(%struct._GObject* %object) #3 {
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
  %3 = load i8*, i8** @gimp_drawable_stack_parent_class, align 8
  %4 = bitcast i8* %3 to %struct._GTypeClass*
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 80)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GObjectClass*
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %5, i32 0, i32 9
  %6 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed, align 8
  %tobool = icmp ne void (%struct._GObject*)* %6, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i8*, i8** @gimp_drawable_stack_parent_class, align 8
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
  %call6 = call i64 @gimp_drawable_get_type() #6
  %call7 = call i32 @g_type_is_a(i64 %call5, i64 %call6)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %do.body
  br label %if.end.10

if.else:                                          ; preds = %do.body
  call void @g_assertion_message_expr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i32 0, i32 0), i32 120, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_drawable_stack_constructed, i32 0, i32 0), i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.11, i32 0, i32 0)) #8
  unreachable

if.end.10:                                        ; preds = %if.then.9
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %14 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %15 = bitcast %struct._GimpContainer* %14 to i8*
  %call11 = call i32 @gimp_container_add_handler(%struct._GimpContainer* %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0), void ()* bitcast (void (%struct._GimpItem*, i32, i32, i32, i32, %struct._GimpDrawableStack*)* @gimp_drawable_stack_drawable_update to void ()*), i8* %15)
  %16 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %17 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %18 = bitcast %struct._GimpContainer* %17 to i8*
  %call12 = call i32 @gimp_container_add_handler(%struct._GimpContainer* %16, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i32 0, i32 0), void ()* bitcast (void (%struct._GimpItem*, %struct._GimpDrawableStack*)* @gimp_drawable_stack_drawable_visible to void ()*), i8* %18)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_drawable_stack_finalize(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %stack = alloca %struct._GimpDrawableStack*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_drawable_stack_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDrawableStack*
  store %struct._GimpDrawableStack* %2, %struct._GimpDrawableStack** %stack, align 8
  %3 = load %struct._GimpDrawableStack*, %struct._GimpDrawableStack** %stack, align 8
  %graph = getelementptr inbounds %struct._GimpDrawableStack, %struct._GimpDrawableStack* %3, i32 0, i32 1
  %4 = load %struct._GeglNode*, %struct._GeglNode** %graph, align 8
  %tobool = icmp ne %struct._GeglNode* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpDrawableStack*, %struct._GimpDrawableStack** %stack, align 8
  %graph2 = getelementptr inbounds %struct._GimpDrawableStack, %struct._GimpDrawableStack* %5, i32 0, i32 1
  %6 = load %struct._GeglNode*, %struct._GeglNode** %graph2, align 8
  %7 = bitcast %struct._GeglNode* %6 to i8*
  call void @g_object_unref(i8* %7)
  %8 = load %struct._GimpDrawableStack*, %struct._GimpDrawableStack** %stack, align 8
  %graph3 = getelementptr inbounds %struct._GimpDrawableStack, %struct._GimpDrawableStack* %8, i32 0, i32 1
  store %struct._GeglNode* null, %struct._GeglNode** %graph3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load i8*, i8** @gimp_drawable_stack_parent_class, align 8
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
define internal void @gimp_drawable_stack_add(%struct._GimpContainer* %container, %struct._GimpObject* %object) #3 {
entry:
  %container.addr = alloca %struct._GimpContainer*, align 8
  %object.addr = alloca %struct._GimpObject*, align 8
  %stack = alloca %struct._GimpDrawableStack*, align 8
  store %struct._GimpContainer* %container, %struct._GimpContainer** %container.addr, align 8
  store %struct._GimpObject* %object, %struct._GimpObject** %object.addr, align 8
  %0 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %1 = bitcast %struct._GimpContainer* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_drawable_stack_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDrawableStack*
  store %struct._GimpDrawableStack* %2, %struct._GimpDrawableStack** %stack, align 8
  %3 = load i8*, i8** @gimp_drawable_stack_parent_class, align 8
  %4 = bitcast i8* %3 to %struct._GTypeClass*
  %call2 = call i64 @gimp_container_get_type() #6
  %call3 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call2)
  %5 = bitcast %struct._GTypeClass* %call3 to %struct._GimpContainerClass*
  %add = getelementptr inbounds %struct._GimpContainerClass, %struct._GimpContainerClass* %5, i32 0, i32 1
  %6 = load void (%struct._GimpContainer*, %struct._GimpObject*)*, void (%struct._GimpContainer*, %struct._GimpObject*)** %add, align 8
  %7 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %8 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  call void %6(%struct._GimpContainer* %7, %struct._GimpObject* %8)
  %9 = load %struct._GimpDrawableStack*, %struct._GimpDrawableStack** %stack, align 8
  %graph = getelementptr inbounds %struct._GimpDrawableStack, %struct._GimpDrawableStack* %9, i32 0, i32 1
  %10 = load %struct._GeglNode*, %struct._GeglNode** %graph, align 8
  %tobool = icmp ne %struct._GeglNode* %10, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %11 = load %struct._GimpDrawableStack*, %struct._GimpDrawableStack** %stack, align 8
  %graph4 = getelementptr inbounds %struct._GimpDrawableStack, %struct._GimpDrawableStack* %11, i32 0, i32 1
  %12 = load %struct._GeglNode*, %struct._GeglNode** %graph4, align 8
  %13 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %14 = bitcast %struct._GimpObject* %13 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_item_get_type() #6
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call5)
  %15 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpItem*
  %call7 = call %struct._GeglNode* @gimp_item_get_node(%struct._GimpItem* %15)
  %call8 = call %struct._GeglNode* @gegl_node_add_child(%struct._GeglNode* %12, %struct._GeglNode* %call7)
  %16 = load %struct._GimpDrawableStack*, %struct._GimpDrawableStack** %stack, align 8
  %17 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %18 = bitcast %struct._GimpObject* %17 to %struct._GTypeInstance*
  %call9 = call i64 @gimp_drawable_get_type() #6
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call9)
  %19 = bitcast %struct._GTypeInstance* %call10 to %struct._GimpDrawable*
  call void @gimp_drawable_stack_add_node(%struct._GimpDrawableStack* %16, %struct._GimpDrawable* %19)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %20 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %21 = bitcast %struct._GimpObject* %20 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_item_get_type() #6
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call11)
  %22 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpItem*
  %call13 = call i32 @gimp_item_get_visible(%struct._GimpItem* %22)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then.15, label %if.end.18

if.then.15:                                       ; preds = %if.end
  %23 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %24 = bitcast %struct._GimpObject* %23 to %struct._GTypeInstance*
  %call16 = call i64 @gimp_item_get_type() #6
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call16)
  %25 = bitcast %struct._GTypeInstance* %call17 to %struct._GimpItem*
  %26 = load %struct._GimpDrawableStack*, %struct._GimpDrawableStack** %stack, align 8
  call void @gimp_drawable_stack_drawable_visible(%struct._GimpItem* %25, %struct._GimpDrawableStack* %26)
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.15, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_drawable_stack_remove(%struct._GimpContainer* %container, %struct._GimpObject* %object) #3 {
entry:
  %container.addr = alloca %struct._GimpContainer*, align 8
  %object.addr = alloca %struct._GimpObject*, align 8
  %stack = alloca %struct._GimpDrawableStack*, align 8
  store %struct._GimpContainer* %container, %struct._GimpContainer** %container.addr, align 8
  store %struct._GimpObject* %object, %struct._GimpObject** %object.addr, align 8
  %0 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %1 = bitcast %struct._GimpContainer* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_drawable_stack_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDrawableStack*
  store %struct._GimpDrawableStack* %2, %struct._GimpDrawableStack** %stack, align 8
  %3 = load %struct._GimpDrawableStack*, %struct._GimpDrawableStack** %stack, align 8
  %graph = getelementptr inbounds %struct._GimpDrawableStack, %struct._GimpDrawableStack* %3, i32 0, i32 1
  %4 = load %struct._GeglNode*, %struct._GeglNode** %graph, align 8
  %tobool = icmp ne %struct._GeglNode* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpDrawableStack*, %struct._GimpDrawableStack** %stack, align 8
  %6 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %7 = bitcast %struct._GimpObject* %6 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_drawable_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call2)
  %8 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpDrawable*
  call void @gimp_drawable_stack_remove_node(%struct._GimpDrawableStack* %5, %struct._GimpDrawable* %8)
  %9 = load %struct._GimpDrawableStack*, %struct._GimpDrawableStack** %stack, align 8
  %graph4 = getelementptr inbounds %struct._GimpDrawableStack, %struct._GimpDrawableStack* %9, i32 0, i32 1
  %10 = load %struct._GeglNode*, %struct._GeglNode** %graph4, align 8
  %11 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %12 = bitcast %struct._GimpObject* %11 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_item_get_type() #6
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call5)
  %13 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpItem*
  %call7 = call %struct._GeglNode* @gimp_item_get_node(%struct._GimpItem* %13)
  %call8 = call %struct._GeglNode* @gegl_node_remove_child(%struct._GeglNode* %10, %struct._GeglNode* %call7)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %14 = load i8*, i8** @gimp_drawable_stack_parent_class, align 8
  %15 = bitcast i8* %14 to %struct._GTypeClass*
  %call9 = call i64 @gimp_container_get_type() #6
  %call10 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %15, i64 %call9)
  %16 = bitcast %struct._GTypeClass* %call10 to %struct._GimpContainerClass*
  %remove = getelementptr inbounds %struct._GimpContainerClass, %struct._GimpContainerClass* %16, i32 0, i32 2
  %17 = load void (%struct._GimpContainer*, %struct._GimpObject*)*, void (%struct._GimpContainer*, %struct._GimpObject*)** %remove, align 8
  %18 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %19 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  call void %17(%struct._GimpContainer* %18, %struct._GimpObject* %19)
  %20 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %21 = bitcast %struct._GimpObject* %20 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_item_get_type() #6
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call11)
  %22 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpItem*
  %call13 = call i32 @gimp_item_get_visible(%struct._GimpItem* %22)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then.15, label %if.end.18

if.then.15:                                       ; preds = %if.end
  %23 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %24 = bitcast %struct._GimpObject* %23 to %struct._GTypeInstance*
  %call16 = call i64 @gimp_item_get_type() #6
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call16)
  %25 = bitcast %struct._GTypeInstance* %call17 to %struct._GimpItem*
  %26 = load %struct._GimpDrawableStack*, %struct._GimpDrawableStack** %stack, align 8
  call void @gimp_drawable_stack_drawable_visible(%struct._GimpItem* %25, %struct._GimpDrawableStack* %26)
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.15, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_drawable_stack_reorder(%struct._GimpContainer* %container, %struct._GimpObject* %object, i32 %new_index) #3 {
entry:
  %container.addr = alloca %struct._GimpContainer*, align 8
  %object.addr = alloca %struct._GimpObject*, align 8
  %new_index.addr = alloca i32, align 4
  %stack = alloca %struct._GimpDrawableStack*, align 8
  store %struct._GimpContainer* %container, %struct._GimpContainer** %container.addr, align 8
  store %struct._GimpObject* %object, %struct._GimpObject** %object.addr, align 8
  store i32 %new_index, i32* %new_index.addr, align 4
  %0 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %1 = bitcast %struct._GimpContainer* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_drawable_stack_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDrawableStack*
  store %struct._GimpDrawableStack* %2, %struct._GimpDrawableStack** %stack, align 8
  %3 = load %struct._GimpDrawableStack*, %struct._GimpDrawableStack** %stack, align 8
  %graph = getelementptr inbounds %struct._GimpDrawableStack, %struct._GimpDrawableStack* %3, i32 0, i32 1
  %4 = load %struct._GeglNode*, %struct._GeglNode** %graph, align 8
  %tobool = icmp ne %struct._GeglNode* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpDrawableStack*, %struct._GimpDrawableStack** %stack, align 8
  %6 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %7 = bitcast %struct._GimpObject* %6 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_drawable_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call2)
  %8 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpDrawable*
  call void @gimp_drawable_stack_remove_node(%struct._GimpDrawableStack* %5, %struct._GimpDrawable* %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load i8*, i8** @gimp_drawable_stack_parent_class, align 8
  %10 = bitcast i8* %9 to %struct._GTypeClass*
  %call4 = call i64 @gimp_container_get_type() #6
  %call5 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %10, i64 %call4)
  %11 = bitcast %struct._GTypeClass* %call5 to %struct._GimpContainerClass*
  %reorder = getelementptr inbounds %struct._GimpContainerClass, %struct._GimpContainerClass* %11, i32 0, i32 3
  %12 = load void (%struct._GimpContainer*, %struct._GimpObject*, i32)*, void (%struct._GimpContainer*, %struct._GimpObject*, i32)** %reorder, align 8
  %13 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %14 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %15 = load i32, i32* %new_index.addr, align 4
  call void %12(%struct._GimpContainer* %13, %struct._GimpObject* %14, i32 %15)
  %16 = load %struct._GimpDrawableStack*, %struct._GimpDrawableStack** %stack, align 8
  %graph6 = getelementptr inbounds %struct._GimpDrawableStack, %struct._GimpDrawableStack* %16, i32 0, i32 1
  %17 = load %struct._GeglNode*, %struct._GeglNode** %graph6, align 8
  %tobool7 = icmp ne %struct._GeglNode* %17, null
  br i1 %tobool7, label %if.then.8, label %if.end.11

if.then.8:                                        ; preds = %if.end
  %18 = load %struct._GimpDrawableStack*, %struct._GimpDrawableStack** %stack, align 8
  %19 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %20 = bitcast %struct._GimpObject* %19 to %struct._GTypeInstance*
  %call9 = call i64 @gimp_drawable_get_type() #6
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call9)
  %21 = bitcast %struct._GTypeInstance* %call10 to %struct._GimpDrawable*
  call void @gimp_drawable_stack_add_node(%struct._GimpDrawableStack* %18, %struct._GimpDrawable* %21)
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.8, %if.end
  %22 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %23 = bitcast %struct._GimpObject* %22 to %struct._GTypeInstance*
  %call12 = call i64 @gimp_item_get_type() #6
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call12)
  %24 = bitcast %struct._GTypeInstance* %call13 to %struct._GimpItem*
  %call14 = call i32 @gimp_item_get_visible(%struct._GimpItem* %24)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.then.16, label %if.end.19

if.then.16:                                       ; preds = %if.end.11
  %25 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %26 = bitcast %struct._GimpObject* %25 to %struct._GTypeInstance*
  %call17 = call i64 @gimp_item_get_type() #6
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %26, i64 %call17)
  %27 = bitcast %struct._GTypeInstance* %call18 to %struct._GimpItem*
  %28 = load %struct._GimpDrawableStack*, %struct._GimpDrawableStack** %stack, align 8
  call void @gimp_drawable_stack_drawable_visible(%struct._GimpItem* %27, %struct._GimpDrawableStack* %28)
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.16, %if.end.11
  ret void
}

declare i64 @gimp_container_get_children_type(%struct._GimpContainer*) #1

; Function Attrs: noreturn
declare void @g_assertion_message_expr(i8*, i8*, i32, i8*, i8*) #5

declare i32 @gimp_container_add_handler(%struct._GimpContainer*, i8*, void ()*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_drawable_stack_drawable_update(%struct._GimpItem* %item, i32 %x, i32 %y, i32 %width, i32 %height, %struct._GimpDrawableStack* %stack) #3 {
entry:
  %item.addr = alloca %struct._GimpItem*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %stack.addr = alloca %struct._GimpDrawableStack*, align 8
  %offset_x = alloca i32, align 4
  %offset_y = alloca i32, align 4
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store %struct._GimpDrawableStack* %stack, %struct._GimpDrawableStack** %stack.addr, align 8
  %0 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call = call i32 @gimp_item_get_visible(%struct._GimpItem* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  call void @gimp_item_get_offset(%struct._GimpItem* %1, i32* %offset_x, i32* %offset_y)
  %2 = load %struct._GimpDrawableStack*, %struct._GimpDrawableStack** %stack.addr, align 8
  %3 = load i32, i32* %x.addr, align 4
  %4 = load i32, i32* %offset_x, align 4
  %add = add nsw i32 %3, %4
  %5 = load i32, i32* %y.addr, align 4
  %6 = load i32, i32* %offset_y, align 4
  %add1 = add nsw i32 %5, %6
  %7 = load i32, i32* %width.addr, align 4
  %8 = load i32, i32* %height.addr, align 4
  call void @gimp_drawable_stack_update(%struct._GimpDrawableStack* %2, i32 %add, i32 %add1, i32 %7, i32 %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_drawable_stack_drawable_visible(%struct._GimpItem* %item, %struct._GimpDrawableStack* %stack) #3 {
entry:
  %item.addr = alloca %struct._GimpItem*, align 8
  %stack.addr = alloca %struct._GimpDrawableStack*, align 8
  %offset_x = alloca i32, align 4
  %offset_y = alloca i32, align 4
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  store %struct._GimpDrawableStack* %stack, %struct._GimpDrawableStack** %stack.addr, align 8
  %0 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  call void @gimp_item_get_offset(%struct._GimpItem* %0, i32* %offset_x, i32* %offset_y)
  %1 = load %struct._GimpDrawableStack*, %struct._GimpDrawableStack** %stack.addr, align 8
  %2 = load i32, i32* %offset_x, align 4
  %3 = load i32, i32* %offset_y, align 4
  %4 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call = call i32 @gimp_item_get_width(%struct._GimpItem* %4)
  %5 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call1 = call i32 @gimp_item_get_height(%struct._GimpItem* %5)
  call void @gimp_drawable_stack_update(%struct._GimpDrawableStack* %1, i32 %2, i32 %3, i32 %call, i32 %call1)
  ret void
}

declare i32 @gimp_item_get_visible(%struct._GimpItem*) #1

declare void @gimp_item_get_offset(%struct._GimpItem*, i32*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_drawable_stack_update(%struct._GimpDrawableStack* %stack, i32 %x, i32 %y, i32 %width, i32 %height) #3 {
entry:
  %stack.addr = alloca %struct._GimpDrawableStack*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  store %struct._GimpDrawableStack* %stack, %struct._GimpDrawableStack** %stack.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  %0 = load %struct._GimpDrawableStack*, %struct._GimpDrawableStack** %stack.addr, align 8
  %1 = bitcast %struct._GimpDrawableStack* %0 to i8*
  %2 = load i32, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @stack_signals, i32 0, i64 0), align 4
  %3 = load i32, i32* %x.addr, align 4
  %4 = load i32, i32* %y.addr, align 4
  %5 = load i32, i32* %width.addr, align 4
  %6 = load i32, i32* %height.addr, align 4
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %1, i32 %2, i32 0, i32 %3, i32 %4, i32 %5, i32 %6)
  ret void
}

declare void @g_signal_emit(i8*, i32, i32, ...) #1

declare i32 @gimp_item_get_width(%struct._GimpItem*) #1

declare i32 @gimp_item_get_height(%struct._GimpItem*) #1

declare void @g_object_unref(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_drawable_stack_add_node(%struct._GimpDrawableStack* %stack, %struct._GimpDrawable* %drawable) #3 {
entry:
  %stack.addr = alloca %struct._GimpDrawableStack*, align 8
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %drawable_below = alloca %struct._GimpDrawable*, align 8
  %node_above = alloca %struct._GeglNode*, align 8
  %node = alloca %struct._GeglNode*, align 8
  %index = alloca i32, align 4
  %drawable_above = alloca %struct._GimpDrawable*, align 8
  %node_below = alloca %struct._GeglNode*, align 8
  store %struct._GimpDrawableStack* %stack, %struct._GimpDrawableStack** %stack.addr, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %1 = bitcast %struct._GimpDrawable* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_item_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpItem*
  %call2 = call %struct._GeglNode* @gimp_item_get_node(%struct._GimpItem* %2)
  store %struct._GeglNode* %call2, %struct._GeglNode** %node, align 8
  %3 = load %struct._GimpDrawableStack*, %struct._GimpDrawableStack** %stack.addr, align 8
  %4 = bitcast %struct._GimpDrawableStack* %3 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_container_get_type() #6
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call3)
  %5 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpContainer*
  %6 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %7 = bitcast %struct._GimpDrawable* %6 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_object_get_type() #6
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call5)
  %8 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpObject*
  %call7 = call i32 @gimp_container_get_child_index(%struct._GimpContainer* %5, %struct._GimpObject* %8)
  store i32 %call7, i32* %index, align 4
  %9 = load i32, i32* %index, align 4
  %cmp = icmp eq i32 %9, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %10 = load %struct._GimpDrawableStack*, %struct._GimpDrawableStack** %stack.addr, align 8
  %graph = getelementptr inbounds %struct._GimpDrawableStack, %struct._GimpDrawableStack* %10, i32 0, i32 1
  %11 = load %struct._GeglNode*, %struct._GeglNode** %graph, align 8
  %call8 = call %struct._GeglNode* @gegl_node_get_output_proxy(%struct._GeglNode* %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0))
  store %struct._GeglNode* %call8, %struct._GeglNode** %node_above, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %12 = load %struct._GimpDrawableStack*, %struct._GimpDrawableStack** %stack.addr, align 8
  %13 = bitcast %struct._GimpDrawableStack* %12 to %struct._GTypeInstance*
  %call9 = call i64 @gimp_container_get_type() #6
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call9)
  %14 = bitcast %struct._GTypeInstance* %call10 to %struct._GimpContainer*
  %15 = load i32, i32* %index, align 4
  %sub = sub nsw i32 %15, 1
  %call11 = call %struct._GimpObject* @gimp_container_get_child_by_index(%struct._GimpContainer* %14, i32 %sub)
  %16 = bitcast %struct._GimpObject* %call11 to %struct._GimpDrawable*
  store %struct._GimpDrawable* %16, %struct._GimpDrawable** %drawable_above, align 8
  %17 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable_above, align 8
  %18 = bitcast %struct._GimpDrawable* %17 to %struct._GTypeInstance*
  %call12 = call i64 @gimp_item_get_type() #6
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call12)
  %19 = bitcast %struct._GTypeInstance* %call13 to %struct._GimpItem*
  %call14 = call %struct._GeglNode* @gimp_item_get_node(%struct._GimpItem* %19)
  store %struct._GeglNode* %call14, %struct._GeglNode** %node_above, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %20 = load %struct._GeglNode*, %struct._GeglNode** %node, align 8
  %21 = load %struct._GeglNode*, %struct._GeglNode** %node_above, align 8
  %call15 = call i32 @gegl_node_connect_to(%struct._GeglNode* %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), %struct._GeglNode* %21, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0))
  %22 = load %struct._GimpDrawableStack*, %struct._GimpDrawableStack** %stack.addr, align 8
  %23 = bitcast %struct._GimpDrawableStack* %22 to %struct._GTypeInstance*
  %call16 = call i64 @gimp_container_get_type() #6
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call16)
  %24 = bitcast %struct._GTypeInstance* %call17 to %struct._GimpContainer*
  %25 = load i32, i32* %index, align 4
  %add = add nsw i32 %25, 1
  %call18 = call %struct._GimpObject* @gimp_container_get_child_by_index(%struct._GimpContainer* %24, i32 %add)
  %26 = bitcast %struct._GimpObject* %call18 to %struct._GimpDrawable*
  store %struct._GimpDrawable* %26, %struct._GimpDrawable** %drawable_below, align 8
  %27 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable_below, align 8
  %tobool = icmp ne %struct._GimpDrawable* %27, null
  br i1 %tobool, label %if.then.19, label %if.end.24

if.then.19:                                       ; preds = %if.end
  %28 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable_below, align 8
  %29 = bitcast %struct._GimpDrawable* %28 to %struct._GTypeInstance*
  %call20 = call i64 @gimp_item_get_type() #6
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 %call20)
  %30 = bitcast %struct._GTypeInstance* %call21 to %struct._GimpItem*
  %call22 = call %struct._GeglNode* @gimp_item_get_node(%struct._GimpItem* %30)
  store %struct._GeglNode* %call22, %struct._GeglNode** %node_below, align 8
  %31 = load %struct._GeglNode*, %struct._GeglNode** %node_below, align 8
  %32 = load %struct._GeglNode*, %struct._GeglNode** %node, align 8
  %call23 = call i32 @gegl_node_connect_to(%struct._GeglNode* %31, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), %struct._GeglNode* %32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.19, %if.end
  ret void
}

declare i32 @gimp_container_get_child_index(%struct._GimpContainer*, %struct._GimpObject*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #2

declare %struct._GimpObject* @gimp_container_get_child_by_index(%struct._GimpContainer*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_drawable_stack_remove_node(%struct._GimpDrawableStack* %stack, %struct._GimpDrawable* %drawable) #3 {
entry:
  %stack.addr = alloca %struct._GimpDrawableStack*, align 8
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %drawable_below = alloca %struct._GimpDrawable*, align 8
  %node_above = alloca %struct._GeglNode*, align 8
  %node = alloca %struct._GeglNode*, align 8
  %index = alloca i32, align 4
  %drawable_above = alloca %struct._GimpDrawable*, align 8
  %node_below = alloca %struct._GeglNode*, align 8
  store %struct._GimpDrawableStack* %stack, %struct._GimpDrawableStack** %stack.addr, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %1 = bitcast %struct._GimpDrawable* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_item_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpItem*
  %call2 = call %struct._GeglNode* @gimp_item_get_node(%struct._GimpItem* %2)
  store %struct._GeglNode* %call2, %struct._GeglNode** %node, align 8
  %3 = load %struct._GimpDrawableStack*, %struct._GimpDrawableStack** %stack.addr, align 8
  %4 = bitcast %struct._GimpDrawableStack* %3 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_container_get_type() #6
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call3)
  %5 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpContainer*
  %6 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %7 = bitcast %struct._GimpDrawable* %6 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_object_get_type() #6
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call5)
  %8 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpObject*
  %call7 = call i32 @gimp_container_get_child_index(%struct._GimpContainer* %5, %struct._GimpObject* %8)
  store i32 %call7, i32* %index, align 4
  %9 = load i32, i32* %index, align 4
  %cmp = icmp eq i32 %9, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %10 = load %struct._GimpDrawableStack*, %struct._GimpDrawableStack** %stack.addr, align 8
  %graph = getelementptr inbounds %struct._GimpDrawableStack, %struct._GimpDrawableStack* %10, i32 0, i32 1
  %11 = load %struct._GeglNode*, %struct._GeglNode** %graph, align 8
  %call8 = call %struct._GeglNode* @gegl_node_get_output_proxy(%struct._GeglNode* %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0))
  store %struct._GeglNode* %call8, %struct._GeglNode** %node_above, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %12 = load %struct._GimpDrawableStack*, %struct._GimpDrawableStack** %stack.addr, align 8
  %13 = bitcast %struct._GimpDrawableStack* %12 to %struct._GTypeInstance*
  %call9 = call i64 @gimp_container_get_type() #6
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call9)
  %14 = bitcast %struct._GTypeInstance* %call10 to %struct._GimpContainer*
  %15 = load i32, i32* %index, align 4
  %sub = sub nsw i32 %15, 1
  %call11 = call %struct._GimpObject* @gimp_container_get_child_by_index(%struct._GimpContainer* %14, i32 %sub)
  %16 = bitcast %struct._GimpObject* %call11 to %struct._GimpDrawable*
  store %struct._GimpDrawable* %16, %struct._GimpDrawable** %drawable_above, align 8
  %17 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable_above, align 8
  %18 = bitcast %struct._GimpDrawable* %17 to %struct._GTypeInstance*
  %call12 = call i64 @gimp_item_get_type() #6
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call12)
  %19 = bitcast %struct._GTypeInstance* %call13 to %struct._GimpItem*
  %call14 = call %struct._GeglNode* @gimp_item_get_node(%struct._GimpItem* %19)
  store %struct._GeglNode* %call14, %struct._GeglNode** %node_above, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %20 = load %struct._GimpDrawableStack*, %struct._GimpDrawableStack** %stack.addr, align 8
  %21 = bitcast %struct._GimpDrawableStack* %20 to %struct._GTypeInstance*
  %call15 = call i64 @gimp_container_get_type() #6
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call15)
  %22 = bitcast %struct._GTypeInstance* %call16 to %struct._GimpContainer*
  %23 = load i32, i32* %index, align 4
  %add = add nsw i32 %23, 1
  %call17 = call %struct._GimpObject* @gimp_container_get_child_by_index(%struct._GimpContainer* %22, i32 %add)
  %24 = bitcast %struct._GimpObject* %call17 to %struct._GimpDrawable*
  store %struct._GimpDrawable* %24, %struct._GimpDrawable** %drawable_below, align 8
  %25 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable_below, align 8
  %tobool = icmp ne %struct._GimpDrawable* %25, null
  br i1 %tobool, label %if.then.18, label %if.else.24

if.then.18:                                       ; preds = %if.end
  %26 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable_below, align 8
  %27 = bitcast %struct._GimpDrawable* %26 to %struct._GTypeInstance*
  %call19 = call i64 @gimp_item_get_type() #6
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call19)
  %28 = bitcast %struct._GTypeInstance* %call20 to %struct._GimpItem*
  %call21 = call %struct._GeglNode* @gimp_item_get_node(%struct._GimpItem* %28)
  store %struct._GeglNode* %call21, %struct._GeglNode** %node_below, align 8
  %29 = load %struct._GeglNode*, %struct._GeglNode** %node, align 8
  %call22 = call i32 @gegl_node_disconnect(%struct._GeglNode* %29, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0))
  %30 = load %struct._GeglNode*, %struct._GeglNode** %node_below, align 8
  %31 = load %struct._GeglNode*, %struct._GeglNode** %node_above, align 8
  %call23 = call i32 @gegl_node_connect_to(%struct._GeglNode* %30, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), %struct._GeglNode* %31, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end.26

if.else.24:                                       ; preds = %if.end
  %32 = load %struct._GeglNode*, %struct._GeglNode** %node_above, align 8
  %call25 = call i32 @gegl_node_disconnect(%struct._GeglNode* %32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end.26

if.end.26:                                        ; preds = %if.else.24, %if.then.18
  ret void
}

declare %struct._GeglNode* @gegl_node_remove_child(%struct._GeglNode*, %struct._GeglNode*) #1

declare i32 @gegl_node_disconnect(%struct._GeglNode*, i8*) #1

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
