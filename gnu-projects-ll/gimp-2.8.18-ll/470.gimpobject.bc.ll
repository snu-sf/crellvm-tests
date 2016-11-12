; ModuleID = './app/core/gimpobject.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInfo = type { i16, void (i8*)*, void (i8*)*, void (i8*, i8*)*, void (i8*, i8*)*, i8*, i16, i16, void (%struct._GTypeInstance*, i8*)*, %struct._GTypeValueTable* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GTypeValueTable = type { void (%struct._GValue*)*, void (%struct._GValue*)*, void (%struct._GValue*, %struct._GValue*)*, i8* (%struct._GValue*)*, i8*, i8* (%struct._GValue*, i32, %union._GTypeCValue*, i32)*, i8*, i8* (%struct._GValue*, i32, %union._GTypeCValue*, i32)* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%union._GTypeCValue = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GObjectClass = type { %struct._GTypeClass, %struct._GSList*, %struct._GObject* (i64, i32, %struct._GObjectConstructParam*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*)*, void (%struct._GObject*)*, void (%struct._GObject*, i32, %struct._GParamSpec**)*, void (%struct._GObject*, %struct._GParamSpec*)*, void (%struct._GObject*)*, i64, [6 x i8*] }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GData = type opaque
%struct._GObjectConstructParam = type { %struct._GParamSpec*, %struct._GValue* }
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
%struct._GimpObjectClass = type { %struct._GObjectClass, void (%struct._GimpObject*)*, void (%struct._GimpObject*)*, i64 (%struct._GimpObject*, i64*)* }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GimpObjectPrivate = type { i8*, i8*, i8 }
%struct._GSignalInvocationHint = type { i32, i32, i32 }
%struct._GClosure = type { i32, {}*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, void (i8*, %struct._GClosure*)* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@gimp_object_get_type.object_type = internal global i64 0, align 8
@gimp_object_get_type.object_info = internal constant %struct._GTypeInfo { i16 160, void (i8*)* null, void (i8*)* null, void (i8*, i8*)* bitcast (void (%struct._GimpObjectClass*)* @gimp_object_class_init to void (i8*, i8*)*), void (i8*, i8*)* null, i8* null, i16 32, i16 0, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpObject*, %struct._GimpObjectClass*)* @gimp_object_init to void (%struct._GTypeInstance*, i8*)*), %struct._GTypeValueTable* null }, align 8
@.str = private unnamed_addr constant [11 x i8] c"GimpObject\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"Gimp-Core\00", align 1
@__func__.gimp_object_set_name = private unnamed_addr constant [21 x i8] c"gimp_object_set_name\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"GIMP_IS_OBJECT (object)\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@__func__.gimp_object_set_name_safe = private unnamed_addr constant [26 x i8] c"gimp_object_set_name_safe\00", align 1
@__func__.gimp_object_set_static_name = private unnamed_addr constant [28 x i8] c"gimp_object_set_static_name\00", align 1
@__func__.gimp_object_take_name = private unnamed_addr constant [22 x i8] c"gimp_object_take_name\00", align 1
@__func__.gimp_object_get_name = private unnamed_addr constant [21 x i8] c"gimp_object_get_name\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"GIMP_IS_OBJECT (object_typed)\00", align 1
@__func__.gimp_object_name_changed = private unnamed_addr constant [25 x i8] c"gimp_object_name_changed\00", align 1
@object_signals = internal global [2 x i32] zeroinitializer, align 4
@gimp_debug_memsize = global i32 0, align 4
@__func__.gimp_object_get_memsize = private unnamed_addr constant [24 x i8] c"gimp_object_get_memsize\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"object == NULL || GIMP_IS_OBJECT (object)\00", align 1
@gimp_object_get_memsize.indent_level = internal global i32 0, align 4
@gimp_object_get_memsize.aggregation_tree = internal global %struct._GList* null, align 8
@gimp_object_get_memsize.indent_buf = internal global [256 x i8] zeroinitializer, align 16
@.str.6 = private unnamed_addr constant [21 x i8] c"%s%s \22%s\22: %li(%li)\0A\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"anonymous\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@parent_class = internal global %struct._GObjectClass* null, align 8
@.str.9 = private unnamed_addr constant [11 x i8] c"disconnect\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"name-changed\00", align 1
@.str.11 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"gimpobject.c\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"property\00", align 1
@__func__.gimp_object_name_normalize = private unnamed_addr constant [27 x i8] c"gimp_object_name_normalize\00", align 1
@.str.14 = private unnamed_addr constant [30 x i8] c"object->p->normalized == NULL\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_object_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_object_get_type.object_type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_type_register_static(i64 80, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), %struct._GTypeInfo* @gimp_object_get_type.object_info, i32 0)
  store i64 %call, i64* @gimp_object_get_type.object_type, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i64, i64* @gimp_object_get_type.object_type, align 8
  ret i64 %1
}

; Function Attrs: nounwind uwtable
define internal void @gimp_object_class_init(%struct._GimpObjectClass* %klass) #1 {
entry:
  %klass.addr = alloca %struct._GimpObjectClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  store %struct._GimpObjectClass* %klass, %struct._GimpObjectClass** %klass.addr, align 8
  %0 = load %struct._GimpObjectClass*, %struct._GimpObjectClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpObjectClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpObjectClass*, %struct._GimpObjectClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpObjectClass* %3 to i8*
  %call1 = call i8* @g_type_class_peek_parent(i8* %4)
  %5 = bitcast i8* %call1 to %struct._GObjectClass*
  store %struct._GObjectClass* %5, %struct._GObjectClass** @parent_class, align 8
  %6 = load %struct._GimpObjectClass*, %struct._GimpObjectClass** %klass.addr, align 8
  %7 = bitcast %struct._GimpObjectClass* %6 to %struct._GTypeClass*
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %7, i32 0, i32 0
  %8 = load i64, i64* %g_type, align 8
  %call2 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), i64 %8, i32 1, i32 136, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @g_cclosure_marshal_VOID__VOID, i64 4, i32 0)
  store i32 %call2, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @object_signals, i32 0, i64 0), align 4
  %9 = load %struct._GimpObjectClass*, %struct._GimpObjectClass** %klass.addr, align 8
  %10 = bitcast %struct._GimpObjectClass* %9 to %struct._GTypeClass*
  %g_type3 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %10, i32 0, i32 0
  %11 = load i64, i64* %g_type3, align 8
  %call4 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i32 0, i32 0), i64 %11, i32 1, i32 144, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @g_cclosure_marshal_VOID__VOID, i64 4, i32 0)
  store i32 %call4, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @object_signals, i32 0, i64 1), align 4
  %12 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %12, i32 0, i32 5
  store void (%struct._GObject*)* @gimp_object_dispose, void (%struct._GObject*)** %dispose, align 8
  %13 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %13, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_object_finalize, void (%struct._GObject*)** %finalize, align 8
  %14 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %14, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_object_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %15 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %15, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_object_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %16 = load %struct._GimpObjectClass*, %struct._GimpObjectClass** %klass.addr, align 8
  %disconnect = getelementptr inbounds %struct._GimpObjectClass, %struct._GimpObjectClass* %16, i32 0, i32 1
  store void (%struct._GimpObject*)* null, void (%struct._GimpObject*)** %disconnect, align 8
  %17 = load %struct._GimpObjectClass*, %struct._GimpObjectClass** %klass.addr, align 8
  %name_changed = getelementptr inbounds %struct._GimpObjectClass, %struct._GimpObjectClass* %17, i32 0, i32 2
  store void (%struct._GimpObject*)* null, void (%struct._GimpObject*)** %name_changed, align 8
  %18 = load %struct._GimpObjectClass*, %struct._GimpObjectClass** %klass.addr, align 8
  %get_memsize = getelementptr inbounds %struct._GimpObjectClass, %struct._GimpObjectClass* %18, i32 0, i32 3
  store i64 (%struct._GimpObject*, i64*)* @gimp_object_real_get_memsize, i64 (%struct._GimpObject*, i64*)** %get_memsize, align 8
  %19 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call5 = call %struct._GParamSpec* @g_param_spec_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* null, i8* null, i8* null, i32 231)
  call void @g_object_class_install_property(%struct._GObjectClass* %19, i32 1, %struct._GParamSpec* %call5)
  %20 = load %struct._GimpObjectClass*, %struct._GimpObjectClass** %klass.addr, align 8
  %21 = bitcast %struct._GimpObjectClass* %20 to i8*
  call void @g_type_class_add_private(i8* %21, i64 24)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_object_init(%struct._GimpObject* %object, %struct._GimpObjectClass* %klass) #1 {
entry:
  %object.addr = alloca %struct._GimpObject*, align 8
  %klass.addr = alloca %struct._GimpObjectClass*, align 8
  store %struct._GimpObject* %object, %struct._GimpObject** %object.addr, align 8
  store %struct._GimpObjectClass* %klass, %struct._GimpObjectClass** %klass.addr, align 8
  %0 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %1 = bitcast %struct._GimpObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_object_get_type() #5
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpObjectPrivate*
  %3 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %p = getelementptr inbounds %struct._GimpObject, %struct._GimpObject* %3, i32 0, i32 1
  store %struct._GimpObjectPrivate* %2, %struct._GimpObjectPrivate** %p, align 8
  %4 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %p2 = getelementptr inbounds %struct._GimpObject, %struct._GimpObject* %4, i32 0, i32 1
  %5 = load %struct._GimpObjectPrivate*, %struct._GimpObjectPrivate** %p2, align 8
  %name = getelementptr inbounds %struct._GimpObjectPrivate, %struct._GimpObjectPrivate* %5, i32 0, i32 0
  store i8* null, i8** %name, align 8
  %6 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %p3 = getelementptr inbounds %struct._GimpObject, %struct._GimpObject* %6, i32 0, i32 1
  %7 = load %struct._GimpObjectPrivate*, %struct._GimpObjectPrivate** %p3, align 8
  %normalized = getelementptr inbounds %struct._GimpObjectPrivate, %struct._GimpObjectPrivate* %7, i32 0, i32 1
  store i8* null, i8** %normalized, align 8
  %8 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %9 = bitcast %struct._GimpObject* %8 to %struct._GTypeInstance*
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 80)
  %10 = bitcast %struct._GTypeInstance* %call4 to %struct._GObject*
  %11 = load %struct._GimpObjectClass*, %struct._GimpObjectClass** %klass.addr, align 8
  %12 = bitcast %struct._GimpObjectClass* %11 to %struct._GTypeClass*
  %call5 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %12, i64 80)
  %13 = bitcast %struct._GTypeClass* %call5 to %struct._GObjectClass*
  call void @gimp_debug_add_instance(%struct._GObject* %10, %struct._GObjectClass* %13)
  ret void
}

declare i64 @g_type_register_static(i64, i8*, %struct._GTypeInfo*, i32) #2

; Function Attrs: nounwind uwtable
define void @gimp_object_set_name(%struct._GimpObject* %object, i8* %name) #1 {
entry:
  %object.addr = alloca %struct._GimpObject*, align 8
  %name.addr = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpObject* %object, %struct._GimpObject** %object.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %1 = bitcast %struct._GimpObject* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_object_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_object_set_name, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %p = getelementptr inbounds %struct._GimpObject, %struct._GimpObject* %13, i32 0, i32 1
  %14 = load %struct._GimpObjectPrivate*, %struct._GimpObjectPrivate** %p, align 8
  %name11 = getelementptr inbounds %struct._GimpObjectPrivate, %struct._GimpObjectPrivate* %14, i32 0, i32 0
  %15 = load i8*, i8** %name11, align 8
  %16 = load i8*, i8** %name.addr, align 8
  %call12 = call i32 @g_strcmp0(i8* %15, i8* %16)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.end.15, label %if.then.14

if.then.14:                                       ; preds = %do.end
  br label %return

if.end.15:                                        ; preds = %do.end
  %17 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  call void @gimp_object_name_free(%struct._GimpObject* %17)
  %18 = load i8*, i8** %name.addr, align 8
  %call16 = call noalias i8* @g_strdup(i8* %18)
  %19 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %p17 = getelementptr inbounds %struct._GimpObject, %struct._GimpObject* %19, i32 0, i32 1
  %20 = load %struct._GimpObjectPrivate*, %struct._GimpObjectPrivate** %p17, align 8
  %name18 = getelementptr inbounds %struct._GimpObjectPrivate, %struct._GimpObjectPrivate* %20, i32 0, i32 0
  store i8* %call16, i8** %name18, align 8
  %21 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %p19 = getelementptr inbounds %struct._GimpObject, %struct._GimpObject* %21, i32 0, i32 1
  %22 = load %struct._GimpObjectPrivate*, %struct._GimpObjectPrivate** %p19, align 8
  %static_name = getelementptr inbounds %struct._GimpObjectPrivate, %struct._GimpObjectPrivate* %22, i32 0, i32 2
  %bf.load = load i8, i8* %static_name, align 8
  %bf.clear = and i8 %bf.load, -2
  store i8 %bf.clear, i8* %static_name, align 8
  %23 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  call void @gimp_object_name_changed(%struct._GimpObject* %23)
  %24 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %25 = bitcast %struct._GimpObject* %24 to %struct._GTypeInstance*
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 80)
  %26 = bitcast %struct._GTypeInstance* %call20 to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0))
  br label %return

return:                                           ; preds = %if.end.15, %if.then.14, %if.else.9
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #3

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #2

declare i32 @g_strcmp0(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define void @gimp_object_name_free(%struct._GimpObject* %object) #1 {
entry:
  %object.addr = alloca %struct._GimpObject*, align 8
  store %struct._GimpObject* %object, %struct._GimpObject** %object.addr, align 8
  %0 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %p = getelementptr inbounds %struct._GimpObject, %struct._GimpObject* %0, i32 0, i32 1
  %1 = load %struct._GimpObjectPrivate*, %struct._GimpObjectPrivate** %p, align 8
  %normalized = getelementptr inbounds %struct._GimpObjectPrivate, %struct._GimpObjectPrivate* %1, i32 0, i32 1
  %2 = load i8*, i8** %normalized, align 8
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %if.then, label %if.end.9

if.then:                                          ; preds = %entry
  %3 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %p1 = getelementptr inbounds %struct._GimpObject, %struct._GimpObject* %3, i32 0, i32 1
  %4 = load %struct._GimpObjectPrivate*, %struct._GimpObjectPrivate** %p1, align 8
  %normalized2 = getelementptr inbounds %struct._GimpObjectPrivate, %struct._GimpObjectPrivate* %4, i32 0, i32 1
  %5 = load i8*, i8** %normalized2, align 8
  %6 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %p3 = getelementptr inbounds %struct._GimpObject, %struct._GimpObject* %6, i32 0, i32 1
  %7 = load %struct._GimpObjectPrivate*, %struct._GimpObjectPrivate** %p3, align 8
  %name = getelementptr inbounds %struct._GimpObjectPrivate, %struct._GimpObjectPrivate* %7, i32 0, i32 0
  %8 = load i8*, i8** %name, align 8
  %cmp = icmp ne i8* %5, %8
  br i1 %cmp, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  %9 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %p5 = getelementptr inbounds %struct._GimpObject, %struct._GimpObject* %9, i32 0, i32 1
  %10 = load %struct._GimpObjectPrivate*, %struct._GimpObjectPrivate** %p5, align 8
  %normalized6 = getelementptr inbounds %struct._GimpObjectPrivate, %struct._GimpObjectPrivate* %10, i32 0, i32 1
  %11 = load i8*, i8** %normalized6, align 8
  call void @g_free(i8* %11)
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.then
  %12 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %p7 = getelementptr inbounds %struct._GimpObject, %struct._GimpObject* %12, i32 0, i32 1
  %13 = load %struct._GimpObjectPrivate*, %struct._GimpObjectPrivate** %p7, align 8
  %normalized8 = getelementptr inbounds %struct._GimpObjectPrivate, %struct._GimpObjectPrivate* %13, i32 0, i32 1
  store i8* null, i8** %normalized8, align 8
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %entry
  %14 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %p10 = getelementptr inbounds %struct._GimpObject, %struct._GimpObject* %14, i32 0, i32 1
  %15 = load %struct._GimpObjectPrivate*, %struct._GimpObjectPrivate** %p10, align 8
  %name11 = getelementptr inbounds %struct._GimpObjectPrivate, %struct._GimpObjectPrivate* %15, i32 0, i32 0
  %16 = load i8*, i8** %name11, align 8
  %tobool12 = icmp ne i8* %16, null
  br i1 %tobool12, label %if.then.13, label %if.end.26

if.then.13:                                       ; preds = %if.end.9
  %17 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %p14 = getelementptr inbounds %struct._GimpObject, %struct._GimpObject* %17, i32 0, i32 1
  %18 = load %struct._GimpObjectPrivate*, %struct._GimpObjectPrivate** %p14, align 8
  %static_name = getelementptr inbounds %struct._GimpObjectPrivate, %struct._GimpObjectPrivate* %18, i32 0, i32 2
  %bf.load = load i8, i8* %static_name, align 8
  %bf.clear = and i8 %bf.load, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool15 = icmp ne i32 %bf.cast, 0
  br i1 %tobool15, label %if.end.19, label %if.then.16

if.then.16:                                       ; preds = %if.then.13
  %19 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %p17 = getelementptr inbounds %struct._GimpObject, %struct._GimpObject* %19, i32 0, i32 1
  %20 = load %struct._GimpObjectPrivate*, %struct._GimpObjectPrivate** %p17, align 8
  %name18 = getelementptr inbounds %struct._GimpObjectPrivate, %struct._GimpObjectPrivate* %20, i32 0, i32 0
  %21 = load i8*, i8** %name18, align 8
  call void @g_free(i8* %21)
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.16, %if.then.13
  %22 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %p20 = getelementptr inbounds %struct._GimpObject, %struct._GimpObject* %22, i32 0, i32 1
  %23 = load %struct._GimpObjectPrivate*, %struct._GimpObjectPrivate** %p20, align 8
  %name21 = getelementptr inbounds %struct._GimpObjectPrivate, %struct._GimpObjectPrivate* %23, i32 0, i32 0
  store i8* null, i8** %name21, align 8
  %24 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %p22 = getelementptr inbounds %struct._GimpObject, %struct._GimpObject* %24, i32 0, i32 1
  %25 = load %struct._GimpObjectPrivate*, %struct._GimpObjectPrivate** %p22, align 8
  %static_name23 = getelementptr inbounds %struct._GimpObjectPrivate, %struct._GimpObjectPrivate* %25, i32 0, i32 2
  %bf.load24 = load i8, i8* %static_name23, align 8
  %bf.clear25 = and i8 %bf.load24, -2
  store i8 %bf.clear25, i8* %static_name23, align 8
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.19, %if.end.9
  ret void
}

declare noalias i8* @g_strdup(i8*) #2

; Function Attrs: nounwind uwtable
define void @gimp_object_name_changed(%struct._GimpObject* %object) #1 {
entry:
  %object.addr = alloca %struct._GimpObject*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpObject* %object, %struct._GimpObject** %object.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %1 = bitcast %struct._GimpObject* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_object_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_object_name_changed, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %14 = bitcast %struct._GimpObject* %13 to i8*
  %15 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @object_signals, i32 0, i64 1), align 4
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %14, i32 %15, i32 0)
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

declare void @g_object_notify(%struct._GObject*, i8*) #2

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #2

; Function Attrs: nounwind uwtable
define void @gimp_object_set_name_safe(%struct._GimpObject* %object, i8* %name) #1 {
entry:
  %object.addr = alloca %struct._GimpObject*, align 8
  %name.addr = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpObject* %object, %struct._GimpObject** %object.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %1 = bitcast %struct._GimpObject* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_object_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_object_set_name_safe, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %p = getelementptr inbounds %struct._GimpObject, %struct._GimpObject* %13, i32 0, i32 1
  %14 = load %struct._GimpObjectPrivate*, %struct._GimpObjectPrivate** %p, align 8
  %name11 = getelementptr inbounds %struct._GimpObjectPrivate, %struct._GimpObjectPrivate* %14, i32 0, i32 0
  %15 = load i8*, i8** %name11, align 8
  %16 = load i8*, i8** %name.addr, align 8
  %call12 = call i32 @g_strcmp0(i8* %15, i8* %16)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.end.15, label %if.then.14

if.then.14:                                       ; preds = %do.end
  br label %return

if.end.15:                                        ; preds = %do.end
  %17 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  call void @gimp_object_name_free(%struct._GimpObject* %17)
  %18 = load i8*, i8** %name.addr, align 8
  %call16 = call noalias i8* @gimp_utf8_strtrim(i8* %18, i32 30)
  %19 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %p17 = getelementptr inbounds %struct._GimpObject, %struct._GimpObject* %19, i32 0, i32 1
  %20 = load %struct._GimpObjectPrivate*, %struct._GimpObjectPrivate** %p17, align 8
  %name18 = getelementptr inbounds %struct._GimpObjectPrivate, %struct._GimpObjectPrivate* %20, i32 0, i32 0
  store i8* %call16, i8** %name18, align 8
  %21 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %p19 = getelementptr inbounds %struct._GimpObject, %struct._GimpObject* %21, i32 0, i32 1
  %22 = load %struct._GimpObjectPrivate*, %struct._GimpObjectPrivate** %p19, align 8
  %static_name = getelementptr inbounds %struct._GimpObjectPrivate, %struct._GimpObjectPrivate* %22, i32 0, i32 2
  %bf.load = load i8, i8* %static_name, align 8
  %bf.clear = and i8 %bf.load, -2
  store i8 %bf.clear, i8* %static_name, align 8
  %23 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  call void @gimp_object_name_changed(%struct._GimpObject* %23)
  %24 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %25 = bitcast %struct._GimpObject* %24 to %struct._GTypeInstance*
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 80)
  %26 = bitcast %struct._GTypeInstance* %call20 to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0))
  br label %return

return:                                           ; preds = %if.end.15, %if.then.14, %if.else.9
  ret void
}

declare noalias i8* @gimp_utf8_strtrim(i8*, i32) #2

; Function Attrs: nounwind uwtable
define void @gimp_object_set_static_name(%struct._GimpObject* %object, i8* %name) #1 {
entry:
  %object.addr = alloca %struct._GimpObject*, align 8
  %name.addr = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpObject* %object, %struct._GimpObject** %object.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %1 = bitcast %struct._GimpObject* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_object_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_object_set_static_name, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  call void @gimp_object_name_free(%struct._GimpObject* %13)
  %14 = load i8*, i8** %name.addr, align 8
  %15 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %p = getelementptr inbounds %struct._GimpObject, %struct._GimpObject* %15, i32 0, i32 1
  %16 = load %struct._GimpObjectPrivate*, %struct._GimpObjectPrivate** %p, align 8
  %name11 = getelementptr inbounds %struct._GimpObjectPrivate, %struct._GimpObjectPrivate* %16, i32 0, i32 0
  store i8* %14, i8** %name11, align 8
  %17 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %p12 = getelementptr inbounds %struct._GimpObject, %struct._GimpObject* %17, i32 0, i32 1
  %18 = load %struct._GimpObjectPrivate*, %struct._GimpObjectPrivate** %p12, align 8
  %static_name = getelementptr inbounds %struct._GimpObjectPrivate, %struct._GimpObjectPrivate* %18, i32 0, i32 2
  %bf.load = load i8, i8* %static_name, align 8
  %bf.clear = and i8 %bf.load, -2
  %bf.set = or i8 %bf.clear, 1
  store i8 %bf.set, i8* %static_name, align 8
  %19 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  call void @gimp_object_name_changed(%struct._GimpObject* %19)
  %20 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %21 = bitcast %struct._GimpObject* %20 to %struct._GTypeInstance*
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 80)
  %22 = bitcast %struct._GTypeInstance* %call13 to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0))
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_object_take_name(%struct._GimpObject* %object, i8* %name) #1 {
entry:
  %object.addr = alloca %struct._GimpObject*, align 8
  %name.addr = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpObject* %object, %struct._GimpObject** %object.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %1 = bitcast %struct._GimpObject* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_object_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_object_take_name, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  call void @gimp_object_name_free(%struct._GimpObject* %13)
  %14 = load i8*, i8** %name.addr, align 8
  %15 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %p = getelementptr inbounds %struct._GimpObject, %struct._GimpObject* %15, i32 0, i32 1
  %16 = load %struct._GimpObjectPrivate*, %struct._GimpObjectPrivate** %p, align 8
  %name11 = getelementptr inbounds %struct._GimpObjectPrivate, %struct._GimpObjectPrivate* %16, i32 0, i32 0
  store i8* %14, i8** %name11, align 8
  %17 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %p12 = getelementptr inbounds %struct._GimpObject, %struct._GimpObject* %17, i32 0, i32 1
  %18 = load %struct._GimpObjectPrivate*, %struct._GimpObjectPrivate** %p12, align 8
  %static_name = getelementptr inbounds %struct._GimpObjectPrivate, %struct._GimpObjectPrivate* %18, i32 0, i32 2
  %bf.load = load i8, i8* %static_name, align 8
  %bf.clear = and i8 %bf.load, -2
  store i8 %bf.clear, i8* %static_name, align 8
  %19 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  call void @gimp_object_name_changed(%struct._GimpObject* %19)
  %20 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %21 = bitcast %struct._GimpObject* %20 to %struct._GTypeInstance*
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 80)
  %22 = bitcast %struct._GTypeInstance* %call13 to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0))
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @gimp_object_get_name(i8* %object) #1 {
entry:
  %retval = alloca i8*, align 8
  %object.addr = alloca i8*, align 8
  %object_typed = alloca %struct._GimpObject*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i8* %object, i8** %object.addr, align 8
  %0 = load i8*, i8** %object.addr, align 8
  %1 = bitcast i8* %0 to %struct._GimpObject*
  store %struct._GimpObject* %1, %struct._GimpObject** %object_typed, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = load %struct._GimpObject*, %struct._GimpObject** %object_typed, align 8
  %3 = bitcast %struct._GimpObject* %2 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %3, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_object_get_type() #5
  store i64 %call, i64* %__t, align 8
  %4 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %4, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.6

if.else:                                          ; preds = %do.body
  %5 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %5, i32 0, i32 0
  %6 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool1 = icmp ne %struct._GTypeClass* %6, null
  br i1 %tobool1, label %land.lhs.true, label %if.else.4

land.lhs.true:                                    ; preds = %if.else
  %7 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class2 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %7, i32 0, i32 0
  %8 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class2, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %8, i32 0, i32 0
  %9 = load i64, i64* %g_type, align 8
  %10 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %9, %10
  br i1 %cmp, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.4:                                        ; preds = %land.lhs.true, %if.else
  %11 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %12 = load i64, i64* %__t, align 8
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %11, i64 %12) #6
  store i32 %call5, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.4, %if.then.3
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %if.then
  %13 = load i32, i32* %__r, align 4
  store i32 %13, i32* %tmp
  %14 = load i32, i32* %tmp
  %tobool7 = icmp ne i32 %14, 0
  br i1 %tobool7, label %if.then.8, label %if.else.9

if.then.8:                                        ; preds = %if.end.6
  br label %if.end.10

if.else.9:                                        ; preds = %if.end.6
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_object_get_name, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %15 = load %struct._GimpObject*, %struct._GimpObject** %object_typed, align 8
  %p = getelementptr inbounds %struct._GimpObject, %struct._GimpObject* %15, i32 0, i32 1
  %16 = load %struct._GimpObjectPrivate*, %struct._GimpObjectPrivate** %p, align 8
  %name = getelementptr inbounds %struct._GimpObjectPrivate, %struct._GimpObjectPrivate* %16, i32 0, i32 0
  %17 = load i8*, i8** %name, align 8
  store i8* %17, i8** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %18 = load i8*, i8** %retval
  ret i8* %18
}

declare void @g_signal_emit(i8*, i32, i32, ...) #2

declare void @g_free(i8*) #2

; Function Attrs: nounwind uwtable
define i32 @gimp_object_name_collate(%struct._GimpObject* %object1, %struct._GimpObject* %object2) #1 {
entry:
  %object1.addr = alloca %struct._GimpObject*, align 8
  %object2.addr = alloca %struct._GimpObject*, align 8
  store %struct._GimpObject* %object1, %struct._GimpObject** %object1.addr, align 8
  store %struct._GimpObject* %object2, %struct._GimpObject** %object2.addr, align 8
  %0 = load %struct._GimpObject*, %struct._GimpObject** %object1.addr, align 8
  %p = getelementptr inbounds %struct._GimpObject, %struct._GimpObject* %0, i32 0, i32 1
  %1 = load %struct._GimpObjectPrivate*, %struct._GimpObjectPrivate** %p, align 8
  %normalized = getelementptr inbounds %struct._GimpObjectPrivate, %struct._GimpObjectPrivate* %1, i32 0, i32 1
  %2 = load i8*, i8** %normalized, align 8
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %3 = load %struct._GimpObject*, %struct._GimpObject** %object1.addr, align 8
  call void @gimp_object_name_normalize(%struct._GimpObject* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct._GimpObject*, %struct._GimpObject** %object2.addr, align 8
  %p1 = getelementptr inbounds %struct._GimpObject, %struct._GimpObject* %4, i32 0, i32 1
  %5 = load %struct._GimpObjectPrivate*, %struct._GimpObjectPrivate** %p1, align 8
  %normalized2 = getelementptr inbounds %struct._GimpObjectPrivate, %struct._GimpObjectPrivate* %5, i32 0, i32 1
  %6 = load i8*, i8** %normalized2, align 8
  %tobool3 = icmp ne i8* %6, null
  br i1 %tobool3, label %if.end.5, label %if.then.4

if.then.4:                                        ; preds = %if.end
  %7 = load %struct._GimpObject*, %struct._GimpObject** %object2.addr, align 8
  call void @gimp_object_name_normalize(%struct._GimpObject* %7)
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %if.end
  %8 = load %struct._GimpObject*, %struct._GimpObject** %object1.addr, align 8
  %p6 = getelementptr inbounds %struct._GimpObject, %struct._GimpObject* %8, i32 0, i32 1
  %9 = load %struct._GimpObjectPrivate*, %struct._GimpObjectPrivate** %p6, align 8
  %normalized7 = getelementptr inbounds %struct._GimpObjectPrivate, %struct._GimpObjectPrivate* %9, i32 0, i32 1
  %10 = load i8*, i8** %normalized7, align 8
  %11 = load %struct._GimpObject*, %struct._GimpObject** %object2.addr, align 8
  %p8 = getelementptr inbounds %struct._GimpObject, %struct._GimpObject* %11, i32 0, i32 1
  %12 = load %struct._GimpObjectPrivate*, %struct._GimpObjectPrivate** %p8, align 8
  %normalized9 = getelementptr inbounds %struct._GimpObjectPrivate, %struct._GimpObjectPrivate* %12, i32 0, i32 1
  %13 = load i8*, i8** %normalized9, align 8
  %call = call i32 @strcmp(i8* %10, i8* %13) #6
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal void @gimp_object_name_normalize(%struct._GimpObject* %object) #1 {
entry:
  %object.addr = alloca %struct._GimpObject*, align 8
  %key = alloca i8*, align 8
  store %struct._GimpObject* %object, %struct._GimpObject** %object.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %p = getelementptr inbounds %struct._GimpObject, %struct._GimpObject* %0, i32 0, i32 1
  %1 = load %struct._GimpObjectPrivate*, %struct._GimpObjectPrivate** %p, align 8
  %normalized = getelementptr inbounds %struct._GimpObjectPrivate, %struct._GimpObjectPrivate* %1, i32 0, i32 1
  %2 = load i8*, i8** %normalized, align 8
  %cmp = icmp eq i8* %2, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_object_name_normalize, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i32 0, i32 0))
  br label %if.end.18

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %3 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %p1 = getelementptr inbounds %struct._GimpObject, %struct._GimpObject* %3, i32 0, i32 1
  %4 = load %struct._GimpObjectPrivate*, %struct._GimpObjectPrivate** %p1, align 8
  %name = getelementptr inbounds %struct._GimpObjectPrivate, %struct._GimpObjectPrivate* %4, i32 0, i32 0
  %5 = load i8*, i8** %name, align 8
  %tobool = icmp ne i8* %5, null
  br i1 %tobool, label %if.then.2, label %if.end.18

if.then.2:                                        ; preds = %do.end
  %6 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %p3 = getelementptr inbounds %struct._GimpObject, %struct._GimpObject* %6, i32 0, i32 1
  %7 = load %struct._GimpObjectPrivate*, %struct._GimpObjectPrivate** %p3, align 8
  %name4 = getelementptr inbounds %struct._GimpObjectPrivate, %struct._GimpObjectPrivate* %7, i32 0, i32 0
  %8 = load i8*, i8** %name4, align 8
  %call = call noalias i8* @g_utf8_collate_key(i8* %8, i64 -1)
  store i8* %call, i8** %key, align 8
  %9 = load i8*, i8** %key, align 8
  %10 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %p5 = getelementptr inbounds %struct._GimpObject, %struct._GimpObject* %10, i32 0, i32 1
  %11 = load %struct._GimpObjectPrivate*, %struct._GimpObjectPrivate** %p5, align 8
  %name6 = getelementptr inbounds %struct._GimpObjectPrivate, %struct._GimpObjectPrivate* %11, i32 0, i32 0
  %12 = load i8*, i8** %name6, align 8
  %call7 = call i32 @strcmp(i8* %9, i8* %12) #6
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.then.9, label %if.else.12

if.then.9:                                        ; preds = %if.then.2
  %13 = load i8*, i8** %key, align 8
  %14 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %p10 = getelementptr inbounds %struct._GimpObject, %struct._GimpObject* %14, i32 0, i32 1
  %15 = load %struct._GimpObjectPrivate*, %struct._GimpObjectPrivate** %p10, align 8
  %normalized11 = getelementptr inbounds %struct._GimpObjectPrivate, %struct._GimpObjectPrivate* %15, i32 0, i32 1
  store i8* %13, i8** %normalized11, align 8
  br label %if.end.17

if.else.12:                                       ; preds = %if.then.2
  %16 = load i8*, i8** %key, align 8
  call void @g_free(i8* %16)
  %17 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %p13 = getelementptr inbounds %struct._GimpObject, %struct._GimpObject* %17, i32 0, i32 1
  %18 = load %struct._GimpObjectPrivate*, %struct._GimpObjectPrivate** %p13, align 8
  %name14 = getelementptr inbounds %struct._GimpObjectPrivate, %struct._GimpObjectPrivate* %18, i32 0, i32 0
  %19 = load i8*, i8** %name14, align 8
  %20 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %p15 = getelementptr inbounds %struct._GimpObject, %struct._GimpObject* %20, i32 0, i32 1
  %21 = load %struct._GimpObjectPrivate*, %struct._GimpObjectPrivate** %p15, align 8
  %normalized16 = getelementptr inbounds %struct._GimpObjectPrivate, %struct._GimpObjectPrivate* %21, i32 0, i32 1
  store i8* %19, i8** %normalized16, align 8
  br label %if.end.17

if.end.17:                                        ; preds = %if.else.12, %if.then.9
  br label %if.end.18

if.end.18:                                        ; preds = %if.else, %if.end.17, %do.end
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

; Function Attrs: nounwind uwtable
define i64 @gimp_object_get_memsize(%struct._GimpObject* %object, i64* %gui_size) #1 {
entry:
  %retval = alloca i64, align 8
  %object.addr = alloca %struct._GimpObject*, align 8
  %gui_size.addr = alloca i64*, align 8
  %my_size = alloca i64, align 8
  %my_gui_size = alloca i64, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %memsize = alloca i64, align 8
  %gui_memsize = alloca i64, align 8
  %i = alloca i32, align 4
  %my_indent_level = alloca i32, align 4
  %object_size = alloca i8*, align 8
  %list = alloca %struct._GList*, align 8
  store %struct._GimpObject* %object, %struct._GimpObject** %object.addr, align 8
  store i64* %gui_size, i64** %gui_size.addr, align 8
  store i64 0, i64* %my_size, align 8
  store i64 0, i64* %my_gui_size, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %cmp = icmp eq %struct._GimpObject* %0, null
  br i1 %cmp, label %if.then.9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body
  %1 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %2 = bitcast %struct._GimpObject* %1 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %2, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_object_get_type() #5
  store i64 %call, i64* %__t, align 8
  %3 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %3, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %lor.lhs.false
  store i32 0, i32* %__r, align 4
  br label %if.end.7

if.else:                                          ; preds = %lor.lhs.false
  %4 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %4, i32 0, i32 0
  %5 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool1 = icmp ne %struct._GTypeClass* %5, null
  br i1 %tobool1, label %land.lhs.true, label %if.else.5

land.lhs.true:                                    ; preds = %if.else
  %6 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class2 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %6, i32 0, i32 0
  %7 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class2, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %7, i32 0, i32 0
  %8 = load i64, i64* %g_type, align 8
  %9 = load i64, i64* %__t, align 8
  %cmp3 = icmp eq i64 %8, %9
  br i1 %cmp3, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.5:                                        ; preds = %land.lhs.true, %if.else
  %10 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %11 = load i64, i64* %__t, align 8
  %call6 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %10, i64 %11) #6
  store i32 %call6, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.5, %if.then.4
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %if.then
  %12 = load i32, i32* %__r, align 4
  store i32 %12, i32* %tmp
  %13 = load i32, i32* %tmp
  %tobool8 = icmp ne i32 %13, 0
  br i1 %tobool8, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %if.end.7, %do.body
  br label %if.end.11

if.else.10:                                       ; preds = %if.end.7
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_object_get_memsize, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i32 0, i32 0))
  store i64 0, i64* %retval
  br label %return

if.end.11:                                        ; preds = %if.then.9
  br label %do.end

do.end:                                           ; preds = %if.end.11
  %14 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %tobool12 = icmp ne %struct._GimpObject* %14, null
  br i1 %tobool12, label %if.end.17, label %if.then.13

if.then.13:                                       ; preds = %do.end
  %15 = load i64*, i64** %gui_size.addr, align 8
  %tobool14 = icmp ne i64* %15, null
  br i1 %tobool14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.then.13
  %16 = load i64*, i64** %gui_size.addr, align 8
  store i64 0, i64* %16, align 8
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %if.then.13
  store i64 0, i64* %retval
  br label %return

if.end.17:                                        ; preds = %do.end
  %17 = load i32, i32* @gimp_debug_memsize, align 4
  %tobool18 = icmp ne i32 %17, 0
  br i1 %tobool18, label %if.then.19, label %if.end.65

if.then.19:                                       ; preds = %if.end.17
  store i64 0, i64* %gui_memsize, align 8
  %18 = load i32, i32* @gimp_object_get_memsize.indent_level, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* @gimp_object_get_memsize.indent_level, align 4
  %19 = load i32, i32* @gimp_object_get_memsize.indent_level, align 4
  store i32 %19, i32* %my_indent_level, align 4
  %20 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %21 = bitcast %struct._GimpObject* %20 to %struct._GTypeInstance*
  %g_class25 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %21, i32 0, i32 0
  %22 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class25, align 8
  %23 = bitcast %struct._GTypeClass* %22 to %struct._GimpObjectClass*
  %get_memsize = getelementptr inbounds %struct._GimpObjectClass, %struct._GimpObjectClass* %23, i32 0, i32 3
  %24 = load i64 (%struct._GimpObject*, i64*)*, i64 (%struct._GimpObject*, i64*)** %get_memsize, align 8
  %25 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %call26 = call i64 %24(%struct._GimpObject* %25, i64* %gui_memsize)
  store i64 %call26, i64* %memsize, align 8
  %26 = load i32, i32* @gimp_object_get_memsize.indent_level, align 4
  %dec = add nsw i32 %26, -1
  store i32 %dec, i32* @gimp_object_get_memsize.indent_level, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.19
  %27 = load i32, i32* %i, align 4
  %conv = sext i32 %27 to i64
  %28 = load i32, i32* %my_indent_level, align 4
  %mul = mul nsw i32 %28, 2
  %conv27 = sext i32 %mul to i64
  %cmp28 = icmp ult i64 %conv27, 255
  br i1 %cmp28, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.cond
  %29 = load i32, i32* %my_indent_level, align 4
  %mul30 = mul nsw i32 %29, 2
  %conv31 = sext i32 %mul30 to i64
  br label %cond.end

cond.false:                                       ; preds = %for.cond
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv31, %cond.true ], [ 255, %cond.false ]
  %cmp32 = icmp ult i64 %conv, %cond
  br i1 %cmp32, label %for.body, label %for.end

for.body:                                         ; preds = %cond.end
  %30 = load i32, i32* %i, align 4
  %idxprom = sext i32 %30 to i64
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* @gimp_object_get_memsize.indent_buf, i32 0, i64 %idxprom
  store i8 32, i8* %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %31 = load i32, i32* %i, align 4
  %inc34 = add nsw i32 %31, 1
  store i32 %inc34, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %cond.end
  %32 = load i32, i32* %i, align 4
  %idxprom35 = sext i32 %32 to i64
  %arrayidx36 = getelementptr inbounds [256 x i8], [256 x i8]* @gimp_object_get_memsize.indent_buf, i32 0, i64 %idxprom35
  store i8 0, i8* %arrayidx36, align 1
  %33 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %34 = bitcast %struct._GimpObject* %33 to %struct._GTypeInstance*
  %g_class37 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %34, i32 0, i32 0
  %35 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class37, align 8
  %g_type38 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %35, i32 0, i32 0
  %36 = load i64, i64* %g_type38, align 8
  %call39 = call i8* @g_type_name(i64 %36)
  %37 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %p = getelementptr inbounds %struct._GimpObject, %struct._GimpObject* %37, i32 0, i32 1
  %38 = load %struct._GimpObjectPrivate*, %struct._GimpObjectPrivate** %p, align 8
  %name = getelementptr inbounds %struct._GimpObjectPrivate, %struct._GimpObjectPrivate* %38, i32 0, i32 0
  %39 = load i8*, i8** %name, align 8
  %tobool40 = icmp ne i8* %39, null
  br i1 %tobool40, label %cond.true.41, label %cond.false.44

cond.true.41:                                     ; preds = %for.end
  %40 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %p42 = getelementptr inbounds %struct._GimpObject, %struct._GimpObject* %40, i32 0, i32 1
  %41 = load %struct._GimpObjectPrivate*, %struct._GimpObjectPrivate** %p42, align 8
  %name43 = getelementptr inbounds %struct._GimpObjectPrivate, %struct._GimpObjectPrivate* %41, i32 0, i32 0
  %42 = load i8*, i8** %name43, align 8
  br label %cond.end.45

cond.false.44:                                    ; preds = %for.end
  br label %cond.end.45

cond.end.45:                                      ; preds = %cond.false.44, %cond.true.41
  %cond46 = phi i8* [ %42, %cond.true.41 ], [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), %cond.false.44 ]
  %43 = load i64, i64* %memsize, align 8
  %44 = load i64, i64* %gui_memsize, align 8
  %call47 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @gimp_object_get_memsize.indent_buf, i32 0, i32 0), i8* %call39, i8* %cond46, i64 %43, i64 %44)
  store i8* %call47, i8** %object_size, align 8
  %45 = load %struct._GList*, %struct._GList** @gimp_object_get_memsize.aggregation_tree, align 8
  %46 = load i8*, i8** %object_size, align 8
  %call48 = call %struct._GList* @g_list_prepend(%struct._GList* %45, i8* %46)
  store %struct._GList* %call48, %struct._GList** @gimp_object_get_memsize.aggregation_tree, align 8
  %47 = load i32, i32* @gimp_object_get_memsize.indent_level, align 4
  %cmp49 = icmp eq i32 %47, 0
  br i1 %cmp49, label %if.then.51, label %if.end.64

if.then.51:                                       ; preds = %cond.end.45
  %48 = load %struct._GList*, %struct._GList** @gimp_object_get_memsize.aggregation_tree, align 8
  store %struct._GList* %48, %struct._GList** %list, align 8
  br label %for.cond.53

for.cond.53:                                      ; preds = %cond.end.61, %if.then.51
  %49 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool54 = icmp ne %struct._GList* %49, null
  br i1 %tobool54, label %for.body.55, label %for.end.63

for.body.55:                                      ; preds = %for.cond.53
  %50 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %50, i32 0, i32 0
  %51 = load i8*, i8** %data, align 8
  call void (i8*, ...) @g_print(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i32 0, i32 0), i8* %51)
  %52 = load %struct._GList*, %struct._GList** %list, align 8
  %data56 = getelementptr inbounds %struct._GList, %struct._GList* %52, i32 0, i32 0
  %53 = load i8*, i8** %data56, align 8
  call void @g_free(i8* %53)
  br label %for.inc.57

for.inc.57:                                       ; preds = %for.body.55
  %54 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool58 = icmp ne %struct._GList* %54, null
  br i1 %tobool58, label %cond.true.59, label %cond.false.60

cond.true.59:                                     ; preds = %for.inc.57
  %55 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %55, i32 0, i32 1
  %56 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end.61

cond.false.60:                                    ; preds = %for.inc.57
  br label %cond.end.61

cond.end.61:                                      ; preds = %cond.false.60, %cond.true.59
  %cond62 = phi %struct._GList* [ %56, %cond.true.59 ], [ null, %cond.false.60 ]
  store %struct._GList* %cond62, %struct._GList** %list, align 8
  br label %for.cond.53

for.end.63:                                       ; preds = %for.cond.53
  %57 = load %struct._GList*, %struct._GList** @gimp_object_get_memsize.aggregation_tree, align 8
  call void @g_list_free(%struct._GList* %57)
  store %struct._GList* null, %struct._GList** @gimp_object_get_memsize.aggregation_tree, align 8
  br label %if.end.64

if.end.64:                                        ; preds = %for.end.63, %cond.end.45
  %58 = load i64, i64* %memsize, align 8
  store i64 %58, i64* %retval
  br label %return

if.end.65:                                        ; preds = %if.end.17
  %59 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %60 = bitcast %struct._GimpObject* %59 to %struct._GTypeInstance*
  %g_class66 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %60, i32 0, i32 0
  %61 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class66, align 8
  %62 = bitcast %struct._GTypeClass* %61 to %struct._GimpObjectClass*
  %get_memsize67 = getelementptr inbounds %struct._GimpObjectClass, %struct._GimpObjectClass* %62, i32 0, i32 3
  %63 = load i64 (%struct._GimpObject*, i64*)*, i64 (%struct._GimpObject*, i64*)** %get_memsize67, align 8
  %64 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %call68 = call i64 %63(%struct._GimpObject* %64, i64* %my_gui_size)
  store i64 %call68, i64* %my_size, align 8
  %65 = load i64*, i64** %gui_size.addr, align 8
  %tobool69 = icmp ne i64* %65, null
  br i1 %tobool69, label %if.then.70, label %if.end.71

if.then.70:                                       ; preds = %if.end.65
  %66 = load i64, i64* %my_gui_size, align 8
  %67 = load i64*, i64** %gui_size.addr, align 8
  store i64 %66, i64* %67, align 8
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.70, %if.end.65
  %68 = load i64, i64* %my_size, align 8
  store i64 %68, i64* %retval
  br label %return

return:                                           ; preds = %if.end.71, %if.end.64, %if.end.16, %if.else.10
  %69 = load i64, i64* %retval
  ret i64 %69
}

declare noalias i8* @g_strdup_printf(i8*, ...) #2

declare i8* @g_type_name(i64) #2

declare %struct._GList* @g_list_prepend(%struct._GList*, i8*) #2

declare void @g_print(i8*, ...) #2

declare void @g_list_free(%struct._GList*) #2

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #2

declare i8* @g_type_class_peek_parent(i8*) #2

declare i32 @g_signal_new(i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) #2

declare void @g_cclosure_marshal_VOID__VOID(%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @gimp_object_dispose(%struct._GObject* %object) #1 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %gimp_object = alloca %struct._GimpObject*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_object_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpObject*
  store %struct._GimpObject* %2, %struct._GimpObject** %gimp_object, align 8
  %3 = load %struct._GimpObject*, %struct._GimpObject** %gimp_object, align 8
  %p = getelementptr inbounds %struct._GimpObject, %struct._GimpObject* %3, i32 0, i32 1
  %4 = load %struct._GimpObjectPrivate*, %struct._GimpObjectPrivate** %p, align 8
  %disconnected = getelementptr inbounds %struct._GimpObjectPrivate, %struct._GimpObjectPrivate* %4, i32 0, i32 2
  %bf.load = load i8, i8* %disconnected, align 8
  %bf.lshr = lshr i8 %bf.load, 1
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %5 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %6 = bitcast %struct._GObject* %5 to i8*
  %7 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @object_signals, i32 0, i64 0), align 4
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %6, i32 %7, i32 0)
  %8 = load %struct._GimpObject*, %struct._GimpObject** %gimp_object, align 8
  %p2 = getelementptr inbounds %struct._GimpObject, %struct._GimpObject* %8, i32 0, i32 1
  %9 = load %struct._GimpObjectPrivate*, %struct._GimpObjectPrivate** %p2, align 8
  %disconnected3 = getelementptr inbounds %struct._GimpObjectPrivate, %struct._GimpObjectPrivate* %9, i32 0, i32 2
  %bf.load4 = load i8, i8* %disconnected3, align 8
  %bf.clear5 = and i8 %bf.load4, -3
  %bf.set = or i8 %bf.clear5, 2
  store i8 %bf.set, i8* %disconnected3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load %struct._GObjectClass*, %struct._GObjectClass** @parent_class, align 8
  %11 = bitcast %struct._GObjectClass* %10 to %struct._GTypeClass*
  %call6 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %11, i64 80)
  %12 = bitcast %struct._GTypeClass* %call6 to %struct._GObjectClass*
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %12, i32 0, i32 5
  %13 = load void (%struct._GObject*)*, void (%struct._GObject*)** %dispose, align 8
  %14 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %13(%struct._GObject* %14)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_object_finalize(%struct._GObject* %object) #1 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_object_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpObject*
  call void @gimp_object_name_free(%struct._GimpObject* %2)
  %3 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void @gimp_debug_remove_instance(%struct._GObject* %3)
  %4 = load %struct._GObjectClass*, %struct._GObjectClass** @parent_class, align 8
  %5 = bitcast %struct._GObjectClass* %4 to %struct._GTypeClass*
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %5, i64 80)
  %6 = bitcast %struct._GTypeClass* %call2 to %struct._GObjectClass*
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %6, i32 0, i32 6
  %7 = load void (%struct._GObject*)*, void (%struct._GObject*)** %finalize, align 8
  %8 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %7(%struct._GObject* %8)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_object_set_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #1 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %gimp_object = alloca %struct._GimpObject*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_object_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpObject*
  store %struct._GimpObject* %2, %struct._GimpObject** %gimp_object, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GimpObject*, %struct._GimpObject** %gimp_object, align 8
  %5 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call2 = call i8* @g_value_get_string(%struct._GValue* %5)
  call void @gimp_object_set_name(%struct._GimpObject* %4, i8* %call2)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %6 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %6, %struct._GObject** %_glib__object, align 8
  %7 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %7, %struct._GParamSpec** %_glib__pspec, align 8
  %8 = load i32, i32* %property_id.addr, align 4
  store i32 %8, i32* %_glib__property_id, align 4
  %9 = load i32, i32* %_glib__property_id, align 4
  %10 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %10, i32 0, i32 1
  %11 = load i8*, i8** %name, align 8
  %12 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %13 = bitcast %struct._GParamSpec* %12 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %13, i32 0, i32 0
  %14 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %14, i32 0, i32 0
  %15 = load i64, i64* %g_type, align 8
  %call3 = call i8* @g_type_name(i64 %15)
  %16 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %17 = bitcast %struct._GObject* %16 to %struct._GTypeInstance*
  %g_class4 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %17, i32 0, i32 0
  %18 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class4, align 8
  %g_type5 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %18, i32 0, i32 0
  %19 = load i64, i64* %g_type5, align 8
  %call6 = call i8* @g_type_name(i64 %19)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0), i32 205, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0), i32 %9, i8* %11, i8* %call3, i8* %call6)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_object_get_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #1 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %gimp_object = alloca %struct._GimpObject*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_object_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpObject*
  store %struct._GimpObject* %2, %struct._GimpObject** %gimp_object, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GimpObject*, %struct._GimpObject** %gimp_object, align 8
  %p = getelementptr inbounds %struct._GimpObject, %struct._GimpObject* %4, i32 0, i32 1
  %5 = load %struct._GimpObjectPrivate*, %struct._GimpObjectPrivate** %p, align 8
  %static_name = getelementptr inbounds %struct._GimpObjectPrivate, %struct._GimpObjectPrivate* %5, i32 0, i32 2
  %bf.load = load i8, i8* %static_name, align 8
  %bf.clear = and i8 %bf.load, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  %6 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %7 = load %struct._GimpObject*, %struct._GimpObject** %gimp_object, align 8
  %p2 = getelementptr inbounds %struct._GimpObject, %struct._GimpObject* %7, i32 0, i32 1
  %8 = load %struct._GimpObjectPrivate*, %struct._GimpObjectPrivate** %p2, align 8
  %name = getelementptr inbounds %struct._GimpObjectPrivate, %struct._GimpObjectPrivate* %8, i32 0, i32 0
  %9 = load i8*, i8** %name, align 8
  call void @g_value_set_static_string(%struct._GValue* %6, i8* %9)
  br label %if.end

if.else:                                          ; preds = %sw.bb
  %10 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %11 = load %struct._GimpObject*, %struct._GimpObject** %gimp_object, align 8
  %p3 = getelementptr inbounds %struct._GimpObject, %struct._GimpObject* %11, i32 0, i32 1
  %12 = load %struct._GimpObjectPrivate*, %struct._GimpObjectPrivate** %p3, align 8
  %name4 = getelementptr inbounds %struct._GimpObjectPrivate, %struct._GimpObjectPrivate* %12, i32 0, i32 0
  %13 = load i8*, i8** %name4, align 8
  call void @g_value_set_string(%struct._GValue* %10, i8* %13)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
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
  %name5 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %18, i32 0, i32 1
  %19 = load i8*, i8** %name5, align 8
  %20 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %21 = bitcast %struct._GParamSpec* %20 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %21, i32 0, i32 0
  %22 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %22, i32 0, i32 0
  %23 = load i64, i64* %g_type, align 8
  %call6 = call i8* @g_type_name(i64 %23)
  %24 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %25 = bitcast %struct._GObject* %24 to %struct._GTypeInstance*
  %g_class7 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %25, i32 0, i32 0
  %26 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class7, align 8
  %g_type8 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %26, i32 0, i32 0
  %27 = load i64, i64* %g_type8, align 8
  %call9 = call i8* @g_type_name(i64 %27)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0), i32 227, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0), i32 %17, i8* %19, i8* %call6, i8* %call9)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal i64 @gimp_object_real_get_memsize(%struct._GimpObject* %object, i64* %gui_size) #1 {
entry:
  %object.addr = alloca %struct._GimpObject*, align 8
  %gui_size.addr = alloca i64*, align 8
  %memsize = alloca i64, align 8
  store %struct._GimpObject* %object, %struct._GimpObject** %object.addr, align 8
  store i64* %gui_size, i64** %gui_size.addr, align 8
  store i64 0, i64* %memsize, align 8
  %0 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %p = getelementptr inbounds %struct._GimpObject, %struct._GimpObject* %0, i32 0, i32 1
  %1 = load %struct._GimpObjectPrivate*, %struct._GimpObjectPrivate** %p, align 8
  %static_name = getelementptr inbounds %struct._GimpObjectPrivate, %struct._GimpObjectPrivate* %1, i32 0, i32 2
  %bf.load = load i8, i8* %static_name, align 8
  %bf.clear = and i8 %bf.load, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %p1 = getelementptr inbounds %struct._GimpObject, %struct._GimpObject* %2, i32 0, i32 1
  %3 = load %struct._GimpObjectPrivate*, %struct._GimpObjectPrivate** %p1, align 8
  %name = getelementptr inbounds %struct._GimpObjectPrivate, %struct._GimpObjectPrivate* %3, i32 0, i32 0
  %4 = load i8*, i8** %name, align 8
  %call = call i64 @gimp_string_get_memsize(i8* %4)
  %5 = load i64, i64* %memsize, align 8
  %add = add nsw i64 %5, %call
  store i64 %add, i64* %memsize, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load i64, i64* %memsize, align 8
  %7 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %8 = bitcast %struct._GimpObject* %7 to %struct._GObject*
  %call2 = call i64 @gimp_g_object_get_memsize(%struct._GObject* %8)
  %add3 = add nsw i64 %6, %call2
  ret i64 %add3
}

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #2

declare %struct._GParamSpec* @g_param_spec_string(i8*, i8*, i8*, i8*, i32) #2

declare void @g_type_class_add_private(i8*, i64) #2

declare void @gimp_debug_remove_instance(%struct._GObject*) #2

declare i8* @g_value_get_string(%struct._GValue*) #2

; Function Attrs: nounwind uwtable
define internal void @g_warning(i8* %format, ...) #1 {
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
declare void @llvm.va_start(i8*) #4

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #2

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #4

declare void @g_value_set_static_string(%struct._GValue*, i8*) #2

declare void @g_value_set_string(%struct._GValue*, i8*) #2

declare i64 @gimp_string_get_memsize(i8*) #2

declare i64 @gimp_g_object_get_memsize(%struct._GObject*) #2

declare i8* @g_type_instance_get_private(%struct._GTypeInstance*, i64) #2

declare void @gimp_debug_add_instance(%struct._GObject*, %struct._GObjectClass*) #2

declare noalias i8* @g_utf8_collate_key(i8*, i64) #2

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
