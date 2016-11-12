; ModuleID = './libgimpwidgets/gimpcolordisplaystack.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpColorDisplayStackClass = type { %struct._GObjectClass, void (%struct._GimpColorDisplayStack*)*, void (%struct._GimpColorDisplayStack*, %struct._GimpColorDisplay*, i32)*, void (%struct._GimpColorDisplayStack*, %struct._GimpColorDisplay*)*, void (%struct._GimpColorDisplayStack*, %struct._GimpColorDisplay*, i32)*, void ()*, void ()*, void ()*, void ()* }
%struct._GObjectClass = type { %struct._GTypeClass, %struct._GSList*, %struct._GObject* (i64, i32, %struct._GObjectConstructParam*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*)*, void (%struct._GObject*)*, void (%struct._GObject*, i32, %struct._GParamSpec**)*, void (%struct._GObject*, %struct._GParamSpec*)*, void (%struct._GObject*)*, i64, [6 x i8*] }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GData = type opaque
%struct._GObjectConstructParam = type { %struct._GParamSpec*, %struct._GValue* }
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GimpColorDisplayStack = type { %struct._GObject, %struct._GList* }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpColorDisplay = type { %struct._GObject, i32 }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._cairo_surface = type opaque
%struct._GSignalInvocationHint = type { i32, i32, i32 }

@gimp_color_display_stack_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"GimpColorDisplayStack\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"LibGimpWidgets\00", align 1
@__func__.gimp_color_display_stack_clone = private unnamed_addr constant [31 x i8] c"gimp_color_display_stack_clone\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"GIMP_IS_COLOR_DISPLAY_STACK (stack)\00", align 1
@__func__.gimp_color_display_stack_changed = private unnamed_addr constant [33 x i8] c"gimp_color_display_stack_changed\00", align 1
@stack_signals = internal global [4 x i32] zeroinitializer, align 16
@__func__.gimp_color_display_stack_add = private unnamed_addr constant [29 x i8] c"gimp_color_display_stack_add\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"GIMP_IS_COLOR_DISPLAY (display)\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"g_list_find (stack->filters, display) == NULL\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"changed\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"notify::enabled\00", align 1
@__func__.gimp_color_display_stack_remove = private unnamed_addr constant [32 x i8] c"gimp_color_display_stack_remove\00", align 1
@.str.7 = private unnamed_addr constant [46 x i8] c"g_list_find (stack->filters, display) != NULL\00", align 1
@__func__.gimp_color_display_stack_reorder_up = private unnamed_addr constant [36 x i8] c"gimp_color_display_stack_reorder_up\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"list != NULL\00", align 1
@__func__.gimp_color_display_stack_reorder_down = private unnamed_addr constant [38 x i8] c"gimp_color_display_stack_reorder_down\00", align 1
@__func__.gimp_color_display_stack_convert_surface = private unnamed_addr constant [41 x i8] c"gimp_color_display_stack_convert_surface\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"surface != NULL\00", align 1
@.str.10 = private unnamed_addr constant [61 x i8] c"cairo_surface_get_type (surface) == CAIRO_SURFACE_TYPE_IMAGE\00", align 1
@__func__.gimp_color_display_stack_convert = private unnamed_addr constant [33 x i8] c"gimp_color_display_stack_convert\00", align 1
@gimp_color_display_stack_parent_class = internal global i8* null, align 8
@GimpColorDisplayStack_private_offset = internal global i32 0, align 4
@.str.11 = private unnamed_addr constant [6 x i8] c"added\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"removed\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"reordered\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_color_display_stack_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_color_display_stack_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_color_display_stack_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0))
  %call6 = call i64 @g_type_register_static_simple(i64 80, i8* %call5, i32 200, void (i8*, i8*)* bitcast (void (i8*)* @gimp_color_display_stack_class_intern_init to void (i8*, i8*)*), i32 32, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpColorDisplayStack*)* @gimp_color_display_stack_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call6, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_color_display_stack_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_color_display_stack_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_color_display_stack_class_intern_init(i8* %klass) #2 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_color_display_stack_parent_class, align 8
  %1 = load i32, i32* @GimpColorDisplayStack_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpColorDisplayStack_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpColorDisplayStackClass*
  call void @gimp_color_display_stack_class_init(%struct._GimpColorDisplayStackClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_color_display_stack_init(%struct._GimpColorDisplayStack* %stack) #2 {
entry:
  %stack.addr = alloca %struct._GimpColorDisplayStack*, align 8
  store %struct._GimpColorDisplayStack* %stack, %struct._GimpColorDisplayStack** %stack.addr, align 8
  %0 = load %struct._GimpColorDisplayStack*, %struct._GimpColorDisplayStack** %stack.addr, align 8
  %filters = getelementptr inbounds %struct._GimpColorDisplayStack, %struct._GimpColorDisplayStack* %0, i32 0, i32 1
  store %struct._GList* null, %struct._GList** %filters, align 8
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GimpColorDisplayStack* @gimp_color_display_stack_new() #2 {
entry:
  %call = call i64 @gimp_color_display_stack_get_type() #5
  %call1 = call i8* (i64, i8*, ...) @g_object_new(i64 %call, i8* null)
  %0 = bitcast i8* %call1 to %struct._GimpColorDisplayStack*
  ret %struct._GimpColorDisplayStack* %0
}

declare i8* @g_object_new(i64, i8*, ...) #1

; Function Attrs: nounwind uwtable
define %struct._GimpColorDisplayStack* @gimp_color_display_stack_clone(%struct._GimpColorDisplayStack* %stack) #2 {
entry:
  %retval = alloca %struct._GimpColorDisplayStack*, align 8
  %stack.addr = alloca %struct._GimpColorDisplayStack*, align 8
  %clone = alloca %struct._GimpColorDisplayStack*, align 8
  %list = alloca %struct._GList*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %display = alloca %struct._GimpColorDisplay*, align 8
  store %struct._GimpColorDisplayStack* %stack, %struct._GimpColorDisplayStack** %stack.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpColorDisplayStack*, %struct._GimpColorDisplayStack** %stack.addr, align 8
  %1 = bitcast %struct._GimpColorDisplayStack* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_color_display_stack_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_color_display_stack_clone, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpColorDisplayStack* null, %struct._GimpColorDisplayStack** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %call11 = call i64 @gimp_color_display_stack_get_type() #5
  %call12 = call i8* (i64, i8*, ...) @g_object_new(i64 %call11, i8* null)
  %13 = bitcast i8* %call12 to %struct._GimpColorDisplayStack*
  store %struct._GimpColorDisplayStack* %13, %struct._GimpColorDisplayStack** %clone, align 8
  %14 = load %struct._GimpColorDisplayStack*, %struct._GimpColorDisplayStack** %stack.addr, align 8
  %filters = getelementptr inbounds %struct._GimpColorDisplayStack, %struct._GimpColorDisplayStack* %14, i32 0, i32 1
  %15 = load %struct._GList*, %struct._GList** %filters, align 8
  store %struct._GList* %15, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %do.end
  %16 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool13 = icmp ne %struct._GList* %16, null
  br i1 %tobool13, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %17, i32 0, i32 0
  %18 = load i8*, i8** %data, align 8
  %19 = bitcast i8* %18 to %struct._GimpColorDisplay*
  %call15 = call %struct._GimpColorDisplay* @gimp_color_display_clone(%struct._GimpColorDisplay* %19)
  store %struct._GimpColorDisplay* %call15, %struct._GimpColorDisplay** %display, align 8
  %20 = load %struct._GimpColorDisplayStack*, %struct._GimpColorDisplayStack** %clone, align 8
  %21 = load %struct._GimpColorDisplay*, %struct._GimpColorDisplay** %display, align 8
  call void @gimp_color_display_stack_add(%struct._GimpColorDisplayStack* %20, %struct._GimpColorDisplay* %21)
  %22 = load %struct._GimpColorDisplay*, %struct._GimpColorDisplay** %display, align 8
  %23 = bitcast %struct._GimpColorDisplay* %22 to i8*
  call void @g_object_unref(i8* %23)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %24 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool16 = icmp ne %struct._GList* %24, null
  br i1 %tobool16, label %cond.true, label %cond.false

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

for.end:                                          ; preds = %for.cond
  %27 = load %struct._GimpColorDisplayStack*, %struct._GimpColorDisplayStack** %clone, align 8
  store %struct._GimpColorDisplayStack* %27, %struct._GimpColorDisplayStack** %retval
  br label %return

return:                                           ; preds = %for.end, %if.else.9
  %28 = load %struct._GimpColorDisplayStack*, %struct._GimpColorDisplayStack** %retval
  ret %struct._GimpColorDisplayStack* %28
}

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #3

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare %struct._GimpColorDisplay* @gimp_color_display_clone(%struct._GimpColorDisplay*) #1

; Function Attrs: nounwind uwtable
define void @gimp_color_display_stack_add(%struct._GimpColorDisplayStack* %stack, %struct._GimpColorDisplay* %display) #2 {
entry:
  %stack.addr = alloca %struct._GimpColorDisplayStack*, align 8
  %display.addr = alloca %struct._GimpColorDisplay*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._GimpColorDisplayStack* %stack, %struct._GimpColorDisplayStack** %stack.addr, align 8
  store %struct._GimpColorDisplay* %display, %struct._GimpColorDisplay** %display.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpColorDisplayStack*, %struct._GimpColorDisplayStack** %stack.addr, align 8
  %1 = bitcast %struct._GimpColorDisplayStack* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_color_display_stack_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_color_display_stack_add, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpColorDisplay*, %struct._GimpColorDisplay** %display.addr, align 8
  %14 = bitcast %struct._GimpColorDisplay* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_color_display_get_type() #5
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
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_color_display_stack_add, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  br label %do.body.39

do.body.39:                                       ; preds = %do.end.38
  %26 = load %struct._GimpColorDisplayStack*, %struct._GimpColorDisplayStack** %stack.addr, align 8
  %filters = getelementptr inbounds %struct._GimpColorDisplayStack, %struct._GimpColorDisplayStack* %26, i32 0, i32 1
  %27 = load %struct._GList*, %struct._GList** %filters, align 8
  %28 = load %struct._GimpColorDisplay*, %struct._GimpColorDisplay** %display.addr, align 8
  %29 = bitcast %struct._GimpColorDisplay* %28 to i8*
  %call40 = call %struct._GList* @g_list_find(%struct._GList* %27, i8* %29)
  %cmp41 = icmp eq %struct._GList* %call40, null
  br i1 %cmp41, label %if.then.42, label %if.else.43

if.then.42:                                       ; preds = %do.body.39
  br label %if.end.44

if.else.43:                                       ; preds = %do.body.39
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_color_display_stack_add, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i32 0, i32 0))
  br label %return

if.end.44:                                        ; preds = %if.then.42
  br label %do.end.45

do.end.45:                                        ; preds = %if.end.44
  %30 = load %struct._GimpColorDisplayStack*, %struct._GimpColorDisplayStack** %stack.addr, align 8
  %filters46 = getelementptr inbounds %struct._GimpColorDisplayStack, %struct._GimpColorDisplayStack* %30, i32 0, i32 1
  %31 = load %struct._GList*, %struct._GList** %filters46, align 8
  %32 = load %struct._GimpColorDisplay*, %struct._GimpColorDisplay** %display.addr, align 8
  %33 = bitcast %struct._GimpColorDisplay* %32 to i8*
  %call47 = call i8* @g_object_ref(i8* %33)
  %call48 = call %struct._GList* @g_list_append(%struct._GList* %31, i8* %call47)
  %34 = load %struct._GimpColorDisplayStack*, %struct._GimpColorDisplayStack** %stack.addr, align 8
  %filters49 = getelementptr inbounds %struct._GimpColorDisplayStack, %struct._GimpColorDisplayStack* %34, i32 0, i32 1
  store %struct._GList* %call48, %struct._GList** %filters49, align 8
  %35 = load %struct._GimpColorDisplay*, %struct._GimpColorDisplay** %display.addr, align 8
  %36 = bitcast %struct._GimpColorDisplay* %35 to i8*
  %37 = load %struct._GimpColorDisplayStack*, %struct._GimpColorDisplayStack** %stack.addr, align 8
  %38 = bitcast %struct._GimpColorDisplayStack* %37 to %struct._GTypeInstance*
  %call50 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %38, i64 80)
  %39 = bitcast %struct._GTypeInstance* %call50 to %struct._GObject*
  %40 = bitcast %struct._GObject* %39 to i8*
  %call51 = call i64 @g_signal_connect_data(i8* %36, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), void ()* bitcast (void (%struct._GimpColorDisplay*, %struct._GimpColorDisplayStack*)* @gimp_color_display_stack_display_changed to void ()*), i8* %40, void (i8*, %struct._GClosure*)* null, i32 0)
  %41 = load %struct._GimpColorDisplay*, %struct._GimpColorDisplay** %display.addr, align 8
  %42 = bitcast %struct._GimpColorDisplay* %41 to i8*
  %43 = load %struct._GimpColorDisplayStack*, %struct._GimpColorDisplayStack** %stack.addr, align 8
  %44 = bitcast %struct._GimpColorDisplayStack* %43 to %struct._GTypeInstance*
  %call52 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %44, i64 80)
  %45 = bitcast %struct._GTypeInstance* %call52 to %struct._GObject*
  %46 = bitcast %struct._GObject* %45 to i8*
  %call53 = call i64 @g_signal_connect_data(i8* %42, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0), void ()* bitcast (void (%struct._GimpColorDisplay*, %struct._GParamSpec*, %struct._GimpColorDisplayStack*)* @gimp_color_display_stack_display_enabled to void ()*), i8* %46, void (i8*, %struct._GClosure*)* null, i32 0)
  %47 = load %struct._GimpColorDisplayStack*, %struct._GimpColorDisplayStack** %stack.addr, align 8
  %48 = bitcast %struct._GimpColorDisplayStack* %47 to i8*
  %49 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @stack_signals, i32 0, i64 1), align 4
  %50 = load %struct._GimpColorDisplay*, %struct._GimpColorDisplay** %display.addr, align 8
  %51 = load %struct._GimpColorDisplayStack*, %struct._GimpColorDisplayStack** %stack.addr, align 8
  %filters54 = getelementptr inbounds %struct._GimpColorDisplayStack, %struct._GimpColorDisplayStack* %51, i32 0, i32 1
  %52 = load %struct._GList*, %struct._GList** %filters54, align 8
  %call55 = call i32 @g_list_length(%struct._GList* %52)
  %sub = sub i32 %call55, 1
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %48, i32 %49, i32 0, %struct._GimpColorDisplay* %50, i32 %sub)
  %53 = load %struct._GimpColorDisplayStack*, %struct._GimpColorDisplayStack** %stack.addr, align 8
  call void @gimp_color_display_stack_changed(%struct._GimpColorDisplayStack* %53)
  br label %return

return:                                           ; preds = %do.end.45, %if.else.43, %if.else.36, %if.else.9
  ret void
}

declare void @g_object_unref(i8*) #1

; Function Attrs: nounwind uwtable
define void @gimp_color_display_stack_changed(%struct._GimpColorDisplayStack* %stack) #2 {
entry:
  %stack.addr = alloca %struct._GimpColorDisplayStack*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpColorDisplayStack* %stack, %struct._GimpColorDisplayStack** %stack.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpColorDisplayStack*, %struct._GimpColorDisplayStack** %stack.addr, align 8
  %1 = bitcast %struct._GimpColorDisplayStack* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_color_display_stack_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_color_display_stack_changed, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpColorDisplayStack*, %struct._GimpColorDisplayStack** %stack.addr, align 8
  %14 = bitcast %struct._GimpColorDisplayStack* %13 to i8*
  %15 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @stack_signals, i32 0, i64 0), align 4
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %14, i32 %15, i32 0)
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

declare void @g_signal_emit(i8*, i32, i32, ...) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_color_display_get_type() #4

declare %struct._GList* @g_list_find(%struct._GList*, i8*) #1

declare %struct._GList* @g_list_append(%struct._GList*, i8*) #1

declare i8* @g_object_ref(i8*) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_color_display_stack_display_changed(%struct._GimpColorDisplay* %display, %struct._GimpColorDisplayStack* %stack) #2 {
entry:
  %display.addr = alloca %struct._GimpColorDisplay*, align 8
  %stack.addr = alloca %struct._GimpColorDisplayStack*, align 8
  store %struct._GimpColorDisplay* %display, %struct._GimpColorDisplay** %display.addr, align 8
  store %struct._GimpColorDisplayStack* %stack, %struct._GimpColorDisplayStack** %stack.addr, align 8
  %0 = load %struct._GimpColorDisplay*, %struct._GimpColorDisplay** %display.addr, align 8
  %enabled = getelementptr inbounds %struct._GimpColorDisplay, %struct._GimpColorDisplay* %0, i32 0, i32 1
  %1 = load i32, i32* %enabled, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._GimpColorDisplayStack*, %struct._GimpColorDisplayStack** %stack.addr, align 8
  call void @gimp_color_display_stack_changed(%struct._GimpColorDisplayStack* %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_color_display_stack_display_enabled(%struct._GimpColorDisplay* %display, %struct._GParamSpec* %pspec, %struct._GimpColorDisplayStack* %stack) #2 {
entry:
  %display.addr = alloca %struct._GimpColorDisplay*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %stack.addr = alloca %struct._GimpColorDisplayStack*, align 8
  store %struct._GimpColorDisplay* %display, %struct._GimpColorDisplay** %display.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GimpColorDisplayStack* %stack, %struct._GimpColorDisplayStack** %stack.addr, align 8
  %0 = load %struct._GimpColorDisplayStack*, %struct._GimpColorDisplayStack** %stack.addr, align 8
  call void @gimp_color_display_stack_changed(%struct._GimpColorDisplayStack* %0)
  ret void
}

declare i32 @g_list_length(%struct._GList*) #1

; Function Attrs: nounwind uwtable
define void @gimp_color_display_stack_remove(%struct._GimpColorDisplayStack* %stack, %struct._GimpColorDisplay* %display) #2 {
entry:
  %stack.addr = alloca %struct._GimpColorDisplayStack*, align 8
  %display.addr = alloca %struct._GimpColorDisplay*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._GimpColorDisplayStack* %stack, %struct._GimpColorDisplayStack** %stack.addr, align 8
  store %struct._GimpColorDisplay* %display, %struct._GimpColorDisplay** %display.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpColorDisplayStack*, %struct._GimpColorDisplayStack** %stack.addr, align 8
  %1 = bitcast %struct._GimpColorDisplayStack* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_color_display_stack_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_color_display_stack_remove, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpColorDisplay*, %struct._GimpColorDisplay** %display.addr, align 8
  %14 = bitcast %struct._GimpColorDisplay* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_color_display_get_type() #5
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
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_color_display_stack_remove, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  br label %do.body.39

do.body.39:                                       ; preds = %do.end.38
  %26 = load %struct._GimpColorDisplayStack*, %struct._GimpColorDisplayStack** %stack.addr, align 8
  %filters = getelementptr inbounds %struct._GimpColorDisplayStack, %struct._GimpColorDisplayStack* %26, i32 0, i32 1
  %27 = load %struct._GList*, %struct._GList** %filters, align 8
  %28 = load %struct._GimpColorDisplay*, %struct._GimpColorDisplay** %display.addr, align 8
  %29 = bitcast %struct._GimpColorDisplay* %28 to i8*
  %call40 = call %struct._GList* @g_list_find(%struct._GList* %27, i8* %29)
  %cmp41 = icmp ne %struct._GList* %call40, null
  br i1 %cmp41, label %if.then.42, label %if.else.43

if.then.42:                                       ; preds = %do.body.39
  br label %if.end.44

if.else.43:                                       ; preds = %do.body.39
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_color_display_stack_remove, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.7, i32 0, i32 0))
  br label %return

if.end.44:                                        ; preds = %if.then.42
  br label %do.end.45

do.end.45:                                        ; preds = %if.end.44
  %30 = load %struct._GimpColorDisplayStack*, %struct._GimpColorDisplayStack** %stack.addr, align 8
  %31 = load %struct._GimpColorDisplay*, %struct._GimpColorDisplay** %display.addr, align 8
  call void @gimp_color_display_stack_disconnect(%struct._GimpColorDisplayStack* %30, %struct._GimpColorDisplay* %31)
  %32 = load %struct._GimpColorDisplayStack*, %struct._GimpColorDisplayStack** %stack.addr, align 8
  %filters46 = getelementptr inbounds %struct._GimpColorDisplayStack, %struct._GimpColorDisplayStack* %32, i32 0, i32 1
  %33 = load %struct._GList*, %struct._GList** %filters46, align 8
  %34 = load %struct._GimpColorDisplay*, %struct._GimpColorDisplay** %display.addr, align 8
  %35 = bitcast %struct._GimpColorDisplay* %34 to i8*
  %call47 = call %struct._GList* @g_list_remove(%struct._GList* %33, i8* %35)
  %36 = load %struct._GimpColorDisplayStack*, %struct._GimpColorDisplayStack** %stack.addr, align 8
  %filters48 = getelementptr inbounds %struct._GimpColorDisplayStack, %struct._GimpColorDisplayStack* %36, i32 0, i32 1
  store %struct._GList* %call47, %struct._GList** %filters48, align 8
  %37 = load %struct._GimpColorDisplayStack*, %struct._GimpColorDisplayStack** %stack.addr, align 8
  %38 = bitcast %struct._GimpColorDisplayStack* %37 to i8*
  %39 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @stack_signals, i32 0, i64 2), align 4
  %40 = load %struct._GimpColorDisplay*, %struct._GimpColorDisplay** %display.addr, align 8
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %38, i32 %39, i32 0, %struct._GimpColorDisplay* %40)
  %41 = load %struct._GimpColorDisplayStack*, %struct._GimpColorDisplayStack** %stack.addr, align 8
  call void @gimp_color_display_stack_changed(%struct._GimpColorDisplayStack* %41)
  %42 = load %struct._GimpColorDisplay*, %struct._GimpColorDisplay** %display.addr, align 8
  %43 = bitcast %struct._GimpColorDisplay* %42 to i8*
  call void @g_object_unref(i8* %43)
  br label %return

return:                                           ; preds = %do.end.45, %if.else.43, %if.else.36, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_color_display_stack_disconnect(%struct._GimpColorDisplayStack* %stack, %struct._GimpColorDisplay* %display) #2 {
entry:
  %stack.addr = alloca %struct._GimpColorDisplayStack*, align 8
  %display.addr = alloca %struct._GimpColorDisplay*, align 8
  store %struct._GimpColorDisplayStack* %stack, %struct._GimpColorDisplayStack** %stack.addr, align 8
  store %struct._GimpColorDisplay* %display, %struct._GimpColorDisplay** %display.addr, align 8
  %0 = load %struct._GimpColorDisplay*, %struct._GimpColorDisplay** %display.addr, align 8
  %1 = bitcast %struct._GimpColorDisplay* %0 to i8*
  %2 = load %struct._GimpColorDisplayStack*, %struct._GimpColorDisplayStack** %stack.addr, align 8
  %3 = bitcast %struct._GimpColorDisplayStack* %2 to i8*
  %call = call i32 @g_signal_handlers_disconnect_matched(i8* %1, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpColorDisplay*, %struct._GimpColorDisplayStack*)* @gimp_color_display_stack_display_changed to i8*), i8* %3)
  %4 = load %struct._GimpColorDisplay*, %struct._GimpColorDisplay** %display.addr, align 8
  %5 = bitcast %struct._GimpColorDisplay* %4 to i8*
  %6 = load %struct._GimpColorDisplayStack*, %struct._GimpColorDisplayStack** %stack.addr, align 8
  %7 = bitcast %struct._GimpColorDisplayStack* %6 to i8*
  %call1 = call i32 @g_signal_handlers_disconnect_matched(i8* %5, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpColorDisplay*, %struct._GParamSpec*, %struct._GimpColorDisplayStack*)* @gimp_color_display_stack_display_enabled to i8*), i8* %7)
  ret void
}

declare %struct._GList* @g_list_remove(%struct._GList*, i8*) #1

; Function Attrs: nounwind uwtable
define void @gimp_color_display_stack_reorder_up(%struct._GimpColorDisplayStack* %stack, %struct._GimpColorDisplay* %display) #2 {
entry:
  %stack.addr = alloca %struct._GimpColorDisplayStack*, align 8
  %display.addr = alloca %struct._GimpColorDisplay*, align 8
  %list = alloca %struct._GList*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._GimpColorDisplayStack* %stack, %struct._GimpColorDisplayStack** %stack.addr, align 8
  store %struct._GimpColorDisplay* %display, %struct._GimpColorDisplay** %display.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpColorDisplayStack*, %struct._GimpColorDisplayStack** %stack.addr, align 8
  %1 = bitcast %struct._GimpColorDisplayStack* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_color_display_stack_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.gimp_color_display_stack_reorder_up, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.55

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpColorDisplay*, %struct._GimpColorDisplay** %display.addr, align 8
  %14 = bitcast %struct._GimpColorDisplay* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_color_display_get_type() #5
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
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.gimp_color_display_stack_reorder_up, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.55

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %26 = load %struct._GimpColorDisplayStack*, %struct._GimpColorDisplayStack** %stack.addr, align 8
  %filters = getelementptr inbounds %struct._GimpColorDisplayStack, %struct._GimpColorDisplayStack* %26, i32 0, i32 1
  %27 = load %struct._GList*, %struct._GList** %filters, align 8
  %28 = load %struct._GimpColorDisplay*, %struct._GimpColorDisplay** %display.addr, align 8
  %29 = bitcast %struct._GimpColorDisplay* %28 to i8*
  %call39 = call %struct._GList* @g_list_find(%struct._GList* %27, i8* %29)
  store %struct._GList* %call39, %struct._GList** %list, align 8
  br label %do.body.40

do.body.40:                                       ; preds = %do.end.38
  %30 = load %struct._GList*, %struct._GList** %list, align 8
  %cmp41 = icmp ne %struct._GList* %30, null
  br i1 %cmp41, label %if.then.42, label %if.else.43

if.then.42:                                       ; preds = %do.body.40
  br label %if.end.44

if.else.43:                                       ; preds = %do.body.40
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.gimp_color_display_stack_reorder_up, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end.55

if.end.44:                                        ; preds = %if.then.42
  br label %do.end.45

do.end.45:                                        ; preds = %if.end.44
  %31 = load %struct._GList*, %struct._GList** %list, align 8
  %prev = getelementptr inbounds %struct._GList, %struct._GList* %31, i32 0, i32 2
  %32 = load %struct._GList*, %struct._GList** %prev, align 8
  %tobool46 = icmp ne %struct._GList* %32, null
  br i1 %tobool46, label %if.then.47, label %if.end.55

if.then.47:                                       ; preds = %do.end.45
  %33 = load %struct._GList*, %struct._GList** %list, align 8
  %prev48 = getelementptr inbounds %struct._GList, %struct._GList* %33, i32 0, i32 2
  %34 = load %struct._GList*, %struct._GList** %prev48, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %34, i32 0, i32 0
  %35 = load i8*, i8** %data, align 8
  %36 = load %struct._GList*, %struct._GList** %list, align 8
  %data49 = getelementptr inbounds %struct._GList, %struct._GList* %36, i32 0, i32 0
  store i8* %35, i8** %data49, align 8
  %37 = load %struct._GimpColorDisplay*, %struct._GimpColorDisplay** %display.addr, align 8
  %38 = bitcast %struct._GimpColorDisplay* %37 to i8*
  %39 = load %struct._GList*, %struct._GList** %list, align 8
  %prev50 = getelementptr inbounds %struct._GList, %struct._GList* %39, i32 0, i32 2
  %40 = load %struct._GList*, %struct._GList** %prev50, align 8
  %data51 = getelementptr inbounds %struct._GList, %struct._GList* %40, i32 0, i32 0
  store i8* %38, i8** %data51, align 8
  %41 = load %struct._GimpColorDisplayStack*, %struct._GimpColorDisplayStack** %stack.addr, align 8
  %42 = bitcast %struct._GimpColorDisplayStack* %41 to i8*
  %43 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @stack_signals, i32 0, i64 3), align 4
  %44 = load %struct._GimpColorDisplay*, %struct._GimpColorDisplay** %display.addr, align 8
  %45 = load %struct._GimpColorDisplayStack*, %struct._GimpColorDisplayStack** %stack.addr, align 8
  %filters52 = getelementptr inbounds %struct._GimpColorDisplayStack, %struct._GimpColorDisplayStack* %45, i32 0, i32 1
  %46 = load %struct._GList*, %struct._GList** %filters52, align 8
  %47 = load %struct._GList*, %struct._GList** %list, align 8
  %prev53 = getelementptr inbounds %struct._GList, %struct._GList* %47, i32 0, i32 2
  %48 = load %struct._GList*, %struct._GList** %prev53, align 8
  %call54 = call i32 @g_list_position(%struct._GList* %46, %struct._GList* %48)
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %42, i32 %43, i32 0, %struct._GimpColorDisplay* %44, i32 %call54)
  %49 = load %struct._GimpColorDisplayStack*, %struct._GimpColorDisplayStack** %stack.addr, align 8
  call void @gimp_color_display_stack_changed(%struct._GimpColorDisplayStack* %49)
  br label %if.end.55

if.end.55:                                        ; preds = %if.else.9, %if.else.36, %if.else.43, %if.then.47, %do.end.45
  ret void
}

declare i32 @g_list_position(%struct._GList*, %struct._GList*) #1

; Function Attrs: nounwind uwtable
define void @gimp_color_display_stack_reorder_down(%struct._GimpColorDisplayStack* %stack, %struct._GimpColorDisplay* %display) #2 {
entry:
  %stack.addr = alloca %struct._GimpColorDisplayStack*, align 8
  %display.addr = alloca %struct._GimpColorDisplay*, align 8
  %list = alloca %struct._GList*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._GimpColorDisplayStack* %stack, %struct._GimpColorDisplayStack** %stack.addr, align 8
  store %struct._GimpColorDisplay* %display, %struct._GimpColorDisplay** %display.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpColorDisplayStack*, %struct._GimpColorDisplayStack** %stack.addr, align 8
  %1 = bitcast %struct._GimpColorDisplayStack* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_color_display_stack_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__func__.gimp_color_display_stack_reorder_down, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.55

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpColorDisplay*, %struct._GimpColorDisplay** %display.addr, align 8
  %14 = bitcast %struct._GimpColorDisplay* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_color_display_get_type() #5
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
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__func__.gimp_color_display_stack_reorder_down, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.55

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %26 = load %struct._GimpColorDisplayStack*, %struct._GimpColorDisplayStack** %stack.addr, align 8
  %filters = getelementptr inbounds %struct._GimpColorDisplayStack, %struct._GimpColorDisplayStack* %26, i32 0, i32 1
  %27 = load %struct._GList*, %struct._GList** %filters, align 8
  %28 = load %struct._GimpColorDisplay*, %struct._GimpColorDisplay** %display.addr, align 8
  %29 = bitcast %struct._GimpColorDisplay* %28 to i8*
  %call39 = call %struct._GList* @g_list_find(%struct._GList* %27, i8* %29)
  store %struct._GList* %call39, %struct._GList** %list, align 8
  br label %do.body.40

do.body.40:                                       ; preds = %do.end.38
  %30 = load %struct._GList*, %struct._GList** %list, align 8
  %cmp41 = icmp ne %struct._GList* %30, null
  br i1 %cmp41, label %if.then.42, label %if.else.43

if.then.42:                                       ; preds = %do.body.40
  br label %if.end.44

if.else.43:                                       ; preds = %do.body.40
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__func__.gimp_color_display_stack_reorder_down, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end.55

if.end.44:                                        ; preds = %if.then.42
  br label %do.end.45

do.end.45:                                        ; preds = %if.end.44
  %31 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %31, i32 0, i32 1
  %32 = load %struct._GList*, %struct._GList** %next, align 8
  %tobool46 = icmp ne %struct._GList* %32, null
  br i1 %tobool46, label %if.then.47, label %if.end.55

if.then.47:                                       ; preds = %do.end.45
  %33 = load %struct._GList*, %struct._GList** %list, align 8
  %next48 = getelementptr inbounds %struct._GList, %struct._GList* %33, i32 0, i32 1
  %34 = load %struct._GList*, %struct._GList** %next48, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %34, i32 0, i32 0
  %35 = load i8*, i8** %data, align 8
  %36 = load %struct._GList*, %struct._GList** %list, align 8
  %data49 = getelementptr inbounds %struct._GList, %struct._GList* %36, i32 0, i32 0
  store i8* %35, i8** %data49, align 8
  %37 = load %struct._GimpColorDisplay*, %struct._GimpColorDisplay** %display.addr, align 8
  %38 = bitcast %struct._GimpColorDisplay* %37 to i8*
  %39 = load %struct._GList*, %struct._GList** %list, align 8
  %next50 = getelementptr inbounds %struct._GList, %struct._GList* %39, i32 0, i32 1
  %40 = load %struct._GList*, %struct._GList** %next50, align 8
  %data51 = getelementptr inbounds %struct._GList, %struct._GList* %40, i32 0, i32 0
  store i8* %38, i8** %data51, align 8
  %41 = load %struct._GimpColorDisplayStack*, %struct._GimpColorDisplayStack** %stack.addr, align 8
  %42 = bitcast %struct._GimpColorDisplayStack* %41 to i8*
  %43 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @stack_signals, i32 0, i64 3), align 4
  %44 = load %struct._GimpColorDisplay*, %struct._GimpColorDisplay** %display.addr, align 8
  %45 = load %struct._GimpColorDisplayStack*, %struct._GimpColorDisplayStack** %stack.addr, align 8
  %filters52 = getelementptr inbounds %struct._GimpColorDisplayStack, %struct._GimpColorDisplayStack* %45, i32 0, i32 1
  %46 = load %struct._GList*, %struct._GList** %filters52, align 8
  %47 = load %struct._GList*, %struct._GList** %list, align 8
  %next53 = getelementptr inbounds %struct._GList, %struct._GList* %47, i32 0, i32 1
  %48 = load %struct._GList*, %struct._GList** %next53, align 8
  %call54 = call i32 @g_list_position(%struct._GList* %46, %struct._GList* %48)
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %42, i32 %43, i32 0, %struct._GimpColorDisplay* %44, i32 %call54)
  %49 = load %struct._GimpColorDisplayStack*, %struct._GimpColorDisplayStack** %stack.addr, align 8
  call void @gimp_color_display_stack_changed(%struct._GimpColorDisplayStack* %49)
  br label %if.end.55

if.end.55:                                        ; preds = %if.else.9, %if.else.36, %if.else.43, %if.then.47, %do.end.45
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_color_display_stack_convert_surface(%struct._GimpColorDisplayStack* %stack, %struct._cairo_surface* %surface) #2 {
entry:
  %stack.addr = alloca %struct._GimpColorDisplayStack*, align 8
  %surface.addr = alloca %struct._cairo_surface*, align 8
  %list = alloca %struct._GList*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %display = alloca %struct._GimpColorDisplay*, align 8
  store %struct._GimpColorDisplayStack* %stack, %struct._GimpColorDisplayStack** %stack.addr, align 8
  store %struct._cairo_surface* %surface, %struct._cairo_surface** %surface.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpColorDisplayStack*, %struct._GimpColorDisplayStack** %stack.addr, align 8
  %1 = bitcast %struct._GimpColorDisplayStack* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_color_display_stack_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__func__.gimp_color_display_stack_convert_surface, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i32 0, i32 0))
  br label %for.end

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._cairo_surface*, %struct._cairo_surface** %surface.addr, align 8
  %cmp12 = icmp ne %struct._cairo_surface* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__func__.gimp_color_display_stack_convert_surface, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i32 0, i32 0))
  br label %for.end

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %14 = load %struct._cairo_surface*, %struct._cairo_surface** %surface.addr, align 8
  %call18 = call i32 @cairo_surface_get_type(%struct._cairo_surface* %14)
  %cmp19 = icmp eq i32 %call18, 0
  br i1 %cmp19, label %if.then.20, label %if.else.21

if.then.20:                                       ; preds = %do.body.17
  br label %if.end.22

if.else.21:                                       ; preds = %do.body.17
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__func__.gimp_color_display_stack_convert_surface, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.10, i32 0, i32 0))
  br label %for.end

if.end.22:                                        ; preds = %if.then.20
  br label %do.end.23

do.end.23:                                        ; preds = %if.end.22
  %15 = load %struct._GimpColorDisplayStack*, %struct._GimpColorDisplayStack** %stack.addr, align 8
  %filters = getelementptr inbounds %struct._GimpColorDisplayStack, %struct._GimpColorDisplayStack* %15, i32 0, i32 1
  %16 = load %struct._GList*, %struct._GList** %filters, align 8
  store %struct._GList* %16, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %do.end.23
  %17 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool24 = icmp ne %struct._GList* %17, null
  br i1 %tobool24, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %18, i32 0, i32 0
  %19 = load i8*, i8** %data, align 8
  %20 = bitcast i8* %19 to %struct._GimpColorDisplay*
  store %struct._GimpColorDisplay* %20, %struct._GimpColorDisplay** %display, align 8
  %21 = load %struct._GimpColorDisplay*, %struct._GimpColorDisplay** %display, align 8
  %22 = load %struct._cairo_surface*, %struct._cairo_surface** %surface.addr, align 8
  call void @gimp_color_display_convert_surface(%struct._GimpColorDisplay* %21, %struct._cairo_surface* %22)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %23 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool26 = icmp ne %struct._GList* %23, null
  br i1 %tobool26, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %24 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %24, i32 0, i32 1
  %25 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %25, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %if.else.9, %if.else.14, %if.else.21, %for.cond
  ret void
}

declare i32 @cairo_surface_get_type(%struct._cairo_surface*) #1

declare void @gimp_color_display_convert_surface(%struct._GimpColorDisplay*, %struct._cairo_surface*) #1

; Function Attrs: nounwind uwtable
define void @gimp_color_display_stack_convert(%struct._GimpColorDisplayStack* %stack, i8* %buf, i32 %width, i32 %height, i32 %bpp, i32 %bpl) #2 {
entry:
  %stack.addr = alloca %struct._GimpColorDisplayStack*, align 8
  %buf.addr = alloca i8*, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %bpp.addr = alloca i32, align 4
  %bpl.addr = alloca i32, align 4
  %list = alloca %struct._GList*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %display = alloca %struct._GimpColorDisplay*, align 8
  store %struct._GimpColorDisplayStack* %stack, %struct._GimpColorDisplayStack** %stack.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store i32 %bpp, i32* %bpp.addr, align 4
  store i32 %bpl, i32* %bpl.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpColorDisplayStack*, %struct._GimpColorDisplayStack** %stack.addr, align 8
  %1 = bitcast %struct._GimpColorDisplayStack* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_color_display_stack_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_color_display_stack_convert, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i32 0, i32 0))
  br label %for.end

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpColorDisplayStack*, %struct._GimpColorDisplayStack** %stack.addr, align 8
  %filters = getelementptr inbounds %struct._GimpColorDisplayStack, %struct._GimpColorDisplayStack* %13, i32 0, i32 1
  %14 = load %struct._GList*, %struct._GList** %filters, align 8
  store %struct._GList* %14, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %do.end
  %15 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool11 = icmp ne %struct._GList* %15, null
  br i1 %tobool11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %16, i32 0, i32 0
  %17 = load i8*, i8** %data, align 8
  %18 = bitcast i8* %17 to %struct._GimpColorDisplay*
  store %struct._GimpColorDisplay* %18, %struct._GimpColorDisplay** %display, align 8
  %19 = load %struct._GimpColorDisplay*, %struct._GimpColorDisplay** %display, align 8
  %20 = load i8*, i8** %buf.addr, align 8
  %21 = load i32, i32* %width.addr, align 4
  %22 = load i32, i32* %height.addr, align 4
  %23 = load i32, i32* %bpp.addr, align 4
  %24 = load i32, i32* %bpl.addr, align 4
  call void @gimp_color_display_convert(%struct._GimpColorDisplay* %19, i8* %20, i32 %21, i32 %22, i32 %23, i32 %24)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %25 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool13 = icmp ne %struct._GList* %25, null
  br i1 %tobool13, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %26 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %26, i32 0, i32 1
  %27 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %27, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %if.else.9, %for.cond
  ret void
}

declare void @gimp_color_display_convert(%struct._GimpColorDisplay*, i8*, i32, i32, i32, i32) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_color_display_stack_class_init(%struct._GimpColorDisplayStackClass* %klass) #2 {
entry:
  %klass.addr = alloca %struct._GimpColorDisplayStackClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  store %struct._GimpColorDisplayStackClass* %klass, %struct._GimpColorDisplayStackClass** %klass.addr, align 8
  %0 = load %struct._GimpColorDisplayStackClass*, %struct._GimpColorDisplayStackClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpColorDisplayStackClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpColorDisplayStackClass*, %struct._GimpColorDisplayStackClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpColorDisplayStackClass* %3 to %struct._GTypeClass*
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %4, i32 0, i32 0
  %5 = load i64, i64* %g_type, align 8
  %call1 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i64 %5, i32 1, i32 136, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @g_cclosure_marshal_VOID__VOID, i64 4, i32 0)
  store i32 %call1, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @stack_signals, i32 0, i64 0), align 4
  %6 = load %struct._GimpColorDisplayStackClass*, %struct._GimpColorDisplayStackClass** %klass.addr, align 8
  %7 = bitcast %struct._GimpColorDisplayStackClass* %6 to %struct._GTypeClass*
  %g_type2 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %7, i32 0, i32 0
  %8 = load i64, i64* %g_type2, align 8
  %call3 = call i64 @gimp_color_display_get_type() #5
  %call4 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0), i64 %8, i32 1, i32 144, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @_gimp_widgets_marshal_VOID__OBJECT_INT, i64 4, i32 2, i64 %call3, i64 24)
  store i32 %call4, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @stack_signals, i32 0, i64 1), align 4
  %9 = load %struct._GimpColorDisplayStackClass*, %struct._GimpColorDisplayStackClass** %klass.addr, align 8
  %10 = bitcast %struct._GimpColorDisplayStackClass* %9 to %struct._GTypeClass*
  %g_type5 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %10, i32 0, i32 0
  %11 = load i64, i64* %g_type5, align 8
  %call6 = call i64 @gimp_color_display_get_type() #5
  %call7 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), i64 %11, i32 1, i32 152, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @g_cclosure_marshal_VOID__OBJECT, i64 4, i32 1, i64 %call6)
  store i32 %call7, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @stack_signals, i32 0, i64 2), align 4
  %12 = load %struct._GimpColorDisplayStackClass*, %struct._GimpColorDisplayStackClass** %klass.addr, align 8
  %13 = bitcast %struct._GimpColorDisplayStackClass* %12 to %struct._GTypeClass*
  %g_type8 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %13, i32 0, i32 0
  %14 = load i64, i64* %g_type8, align 8
  %call9 = call i64 @gimp_color_display_get_type() #5
  %call10 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0), i64 %14, i32 1, i32 160, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @_gimp_widgets_marshal_VOID__OBJECT_INT, i64 4, i32 2, i64 %call9, i64 24)
  store i32 %call10, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @stack_signals, i32 0, i64 3), align 4
  %15 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %15, i32 0, i32 5
  store void (%struct._GObject*)* @gimp_color_display_stack_dispose, void (%struct._GObject*)** %dispose, align 8
  %16 = load %struct._GimpColorDisplayStackClass*, %struct._GimpColorDisplayStackClass** %klass.addr, align 8
  %changed = getelementptr inbounds %struct._GimpColorDisplayStackClass, %struct._GimpColorDisplayStackClass* %16, i32 0, i32 1
  store void (%struct._GimpColorDisplayStack*)* null, void (%struct._GimpColorDisplayStack*)** %changed, align 8
  %17 = load %struct._GimpColorDisplayStackClass*, %struct._GimpColorDisplayStackClass** %klass.addr, align 8
  %added = getelementptr inbounds %struct._GimpColorDisplayStackClass, %struct._GimpColorDisplayStackClass* %17, i32 0, i32 2
  store void (%struct._GimpColorDisplayStack*, %struct._GimpColorDisplay*, i32)* null, void (%struct._GimpColorDisplayStack*, %struct._GimpColorDisplay*, i32)** %added, align 8
  %18 = load %struct._GimpColorDisplayStackClass*, %struct._GimpColorDisplayStackClass** %klass.addr, align 8
  %removed = getelementptr inbounds %struct._GimpColorDisplayStackClass, %struct._GimpColorDisplayStackClass* %18, i32 0, i32 3
  store void (%struct._GimpColorDisplayStack*, %struct._GimpColorDisplay*)* null, void (%struct._GimpColorDisplayStack*, %struct._GimpColorDisplay*)** %removed, align 8
  %19 = load %struct._GimpColorDisplayStackClass*, %struct._GimpColorDisplayStackClass** %klass.addr, align 8
  %reordered = getelementptr inbounds %struct._GimpColorDisplayStackClass, %struct._GimpColorDisplayStackClass* %19, i32 0, i32 4
  store void (%struct._GimpColorDisplayStack*, %struct._GimpColorDisplay*, i32)* null, void (%struct._GimpColorDisplayStack*, %struct._GimpColorDisplay*, i32)** %reordered, align 8
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

declare i32 @g_signal_new(i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) #1

declare void @g_cclosure_marshal_VOID__VOID(%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*) #1

declare void @_gimp_widgets_marshal_VOID__OBJECT_INT(%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*) #1

declare void @g_cclosure_marshal_VOID__OBJECT(%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_color_display_stack_dispose(%struct._GObject* %object) #2 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %stack = alloca %struct._GimpColorDisplayStack*, align 8
  %list = alloca %struct._GList*, align 8
  %display = alloca %struct._GimpColorDisplay*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_color_display_stack_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpColorDisplayStack*
  store %struct._GimpColorDisplayStack* %2, %struct._GimpColorDisplayStack** %stack, align 8
  %3 = load %struct._GimpColorDisplayStack*, %struct._GimpColorDisplayStack** %stack, align 8
  %filters = getelementptr inbounds %struct._GimpColorDisplayStack, %struct._GimpColorDisplayStack* %3, i32 0, i32 1
  %4 = load %struct._GList*, %struct._GList** %filters, align 8
  %tobool = icmp ne %struct._GList* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpColorDisplayStack*, %struct._GimpColorDisplayStack** %stack, align 8
  %filters2 = getelementptr inbounds %struct._GimpColorDisplayStack, %struct._GimpColorDisplayStack* %5, i32 0, i32 1
  %6 = load %struct._GList*, %struct._GList** %filters2, align 8
  store %struct._GList* %6, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %if.then
  %7 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool3 = icmp ne %struct._GList* %7, null
  br i1 %tobool3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %8, i32 0, i32 0
  %9 = load i8*, i8** %data, align 8
  %10 = bitcast i8* %9 to %struct._GimpColorDisplay*
  store %struct._GimpColorDisplay* %10, %struct._GimpColorDisplay** %display, align 8
  %11 = load %struct._GimpColorDisplayStack*, %struct._GimpColorDisplayStack** %stack, align 8
  %12 = load %struct._GimpColorDisplay*, %struct._GimpColorDisplay** %display, align 8
  call void @gimp_color_display_stack_disconnect(%struct._GimpColorDisplayStack* %11, %struct._GimpColorDisplay* %12)
  %13 = load %struct._GimpColorDisplay*, %struct._GimpColorDisplay** %display, align 8
  %14 = bitcast %struct._GimpColorDisplay* %13 to i8*
  call void @g_object_unref(i8* %14)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool4 = icmp ne %struct._GList* %15, null
  br i1 %tobool4, label %cond.true, label %cond.false

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
  %18 = load %struct._GimpColorDisplayStack*, %struct._GimpColorDisplayStack** %stack, align 8
  %filters5 = getelementptr inbounds %struct._GimpColorDisplayStack, %struct._GimpColorDisplayStack* %18, i32 0, i32 1
  %19 = load %struct._GList*, %struct._GList** %filters5, align 8
  call void @g_list_free(%struct._GList* %19)
  %20 = load %struct._GimpColorDisplayStack*, %struct._GimpColorDisplayStack** %stack, align 8
  %filters6 = getelementptr inbounds %struct._GimpColorDisplayStack, %struct._GimpColorDisplayStack* %20, i32 0, i32 1
  store %struct._GList* null, %struct._GList** %filters6, align 8
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  %21 = load i8*, i8** @gimp_color_display_stack_parent_class, align 8
  %22 = bitcast i8* %21 to %struct._GTypeClass*
  %call7 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %22, i64 80)
  %23 = bitcast %struct._GTypeClass* %call7 to %struct._GObjectClass*
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %23, i32 0, i32 5
  %24 = load void (%struct._GObject*)*, void (%struct._GObject*)** %dispose, align 8
  %25 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %24(%struct._GObject* %25)
  ret void
}

declare void @g_list_free(%struct._GList*) #1

declare i32 @g_signal_handlers_disconnect_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
