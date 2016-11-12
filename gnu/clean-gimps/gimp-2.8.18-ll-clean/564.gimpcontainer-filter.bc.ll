; ModuleID = './app/core/gimpcontainer-filter.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpContainer = type { %struct._GimpObject, %struct._GimpContainerPriv* }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GimpObjectPrivate = type opaque
%struct._GimpContainerPriv = type opaque
%struct.GimpContainerFilterContext = type { i32 (%struct._GimpObject*, i8*)*, %struct._GimpContainer*, i8* }
%struct._GimpList = type { %struct._GimpContainer, %struct._GList*, i32, i32 (i8*, i8*)*, i32 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GError = type { i32, i32, i8* }
%struct._GRegex = type opaque
%struct._GMatchInfo = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [10 x i8] c"Gimp-Core\00", align 1
@__func__.gimp_container_filter = private unnamed_addr constant [22 x i8] c"gimp_container_filter\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"GIMP_IS_CONTAINER (container)\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"filter != NULL\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"children-type\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"policy\00", align 1
@__func__.gimp_container_filter_by_name = private unnamed_addr constant [30 x i8] c"gimp_container_filter_by_name\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"regexp != NULL\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"error == NULL || *error == NULL\00", align 1
@__func__.gimp_container_get_filtered_name_array = private unnamed_addr constant [39 x i8] c"gimp_container_get_filtered_name_array\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"length != NULL\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: nounwind uwtable
define %struct._GimpContainer* @gimp_container_filter(%struct._GimpContainer* %container, i32 (%struct._GimpObject*, i8*)* %filter, i8* %user_data) #0 {
entry:
  %retval = alloca %struct._GimpContainer*, align 8
  %container.addr = alloca %struct._GimpContainer*, align 8
  %filter.addr = alloca i32 (%struct._GimpObject*, i8*)*, align 8
  %user_data.addr = alloca i8*, align 8
  %result = alloca %struct._GimpContainer*, align 8
  %context = alloca %struct.GimpContainerFilterContext, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst25 = alloca %struct._GTypeInstance*, align 8
  %__t27 = alloca i64, align 8
  %__r30 = alloca i32, align 4
  %tmp45 = alloca i32, align 4
  store %struct._GimpContainer* %container, %struct._GimpContainer** %container.addr, align 8
  store i32 (%struct._GimpObject*, i8*)* %filter, i32 (%struct._GimpObject*, i8*)** %filter.addr, align 8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_container_filter, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GimpContainer* null, %struct._GimpContainer** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i32 (%struct._GimpObject*, i8*)*, i32 (%struct._GimpObject*, i8*)** %filter.addr, align 8
  %cmp12 = icmp ne i32 (%struct._GimpObject*, i8*)* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_container_filter, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpContainer* null, %struct._GimpContainer** %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %15 = bitcast %struct._GimpContainer* %14 to %struct._GTypeInstance*
  %g_class17 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %15, i32 0, i32 0
  %16 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class17, align 8
  %g_type18 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %16, i32 0, i32 0
  %17 = load i64, i64* %g_type18, align 8
  %18 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %call19 = call i64 @gimp_container_get_children_type(%struct._GimpContainer* %18)
  %call20 = call i8* (i64, i8*, ...) @g_object_new(i64 %17, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), i64 %call19, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i32 1, i8* null)
  %19 = bitcast i8* %call20 to %struct._GimpContainer*
  store %struct._GimpContainer* %19, %struct._GimpContainer** %result, align 8
  %20 = load i32 (%struct._GimpObject*, i8*)*, i32 (%struct._GimpObject*, i8*)** %filter.addr, align 8
  %filter21 = getelementptr inbounds %struct.GimpContainerFilterContext, %struct.GimpContainerFilterContext* %context, i32 0, i32 0
  store i32 (%struct._GimpObject*, i8*)* %20, i32 (%struct._GimpObject*, i8*)** %filter21, align 8
  %21 = load %struct._GimpContainer*, %struct._GimpContainer** %result, align 8
  %container22 = getelementptr inbounds %struct.GimpContainerFilterContext, %struct.GimpContainerFilterContext* %context, i32 0, i32 1
  store %struct._GimpContainer* %21, %struct._GimpContainer** %container22, align 8
  %22 = load i8*, i8** %user_data.addr, align 8
  %user_data23 = getelementptr inbounds %struct.GimpContainerFilterContext, %struct.GimpContainerFilterContext* %context, i32 0, i32 2
  store i8* %22, i8** %user_data23, align 8
  %23 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %24 = bitcast %struct.GimpContainerFilterContext* %context to i8*
  call void @gimp_container_foreach(%struct._GimpContainer* %23, void (i8*, i8*)* bitcast (void (%struct._GimpObject*, %struct.GimpContainerFilterContext*)* @gimp_container_filter_foreach_func to void (i8*, i8*)*), i8* %24)
  %25 = load %struct._GimpContainer*, %struct._GimpContainer** %result, align 8
  %26 = bitcast %struct._GimpContainer* %25 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %26, %struct._GTypeInstance** %__inst25, align 8
  %call28 = call i64 @gimp_list_get_type() #5
  store i64 %call28, i64* %__t27, align 8
  %27 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst25, align 8
  %tobool31 = icmp ne %struct._GTypeInstance* %27, null
  br i1 %tobool31, label %if.else.33, label %if.then.32

if.then.32:                                       ; preds = %do.end.16
  store i32 0, i32* %__r30, align 4
  br label %if.end.44

if.else.33:                                       ; preds = %do.end.16
  %28 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst25, align 8
  %g_class34 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %28, i32 0, i32 0
  %29 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class34, align 8
  %tobool35 = icmp ne %struct._GTypeClass* %29, null
  br i1 %tobool35, label %land.lhs.true.36, label %if.else.41

land.lhs.true.36:                                 ; preds = %if.else.33
  %30 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst25, align 8
  %g_class37 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %30, i32 0, i32 0
  %31 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class37, align 8
  %g_type38 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %31, i32 0, i32 0
  %32 = load i64, i64* %g_type38, align 8
  %33 = load i64, i64* %__t27, align 8
  %cmp39 = icmp eq i64 %32, %33
  br i1 %cmp39, label %if.then.40, label %if.else.41

if.then.40:                                       ; preds = %land.lhs.true.36
  store i32 1, i32* %__r30, align 4
  br label %if.end.43

if.else.41:                                       ; preds = %land.lhs.true.36, %if.else.33
  %34 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst25, align 8
  %35 = load i64, i64* %__t27, align 8
  %call42 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %34, i64 %35) #6
  store i32 %call42, i32* %__r30, align 4
  br label %if.end.43

if.end.43:                                        ; preds = %if.else.41, %if.then.40
  br label %if.end.44

if.end.44:                                        ; preds = %if.end.43, %if.then.32
  %36 = load i32, i32* %__r30, align 4
  store i32 %36, i32* %tmp45
  %37 = load i32, i32* %tmp45
  %tobool46 = icmp ne i32 %37, 0
  br i1 %tobool46, label %if.then.47, label %if.end.50

if.then.47:                                       ; preds = %if.end.44
  %38 = load %struct._GimpContainer*, %struct._GimpContainer** %result, align 8
  %39 = bitcast %struct._GimpContainer* %38 to %struct._GTypeInstance*
  %call48 = call i64 @gimp_list_get_type() #5
  %call49 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %39, i64 %call48)
  %40 = bitcast %struct._GTypeInstance* %call49 to %struct._GimpList*
  call void @gimp_list_reverse(%struct._GimpList* %40)
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.47, %if.end.44
  %41 = load %struct._GimpContainer*, %struct._GimpContainer** %result, align 8
  store %struct._GimpContainer* %41, %struct._GimpContainer** %retval
  br label %return

return:                                           ; preds = %if.end.50, %if.else.14, %if.else.9
  %42 = load %struct._GimpContainer*, %struct._GimpContainer** %retval
  ret %struct._GimpContainer* %42
}

; Function Attrs: nounwind readnone
declare i64 @gimp_container_get_type() #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #3

declare i8* @g_object_new(i64, i8*, ...) #3

declare i64 @gimp_container_get_children_type(%struct._GimpContainer*) #3

declare void @gimp_container_foreach(%struct._GimpContainer*, void (i8*, i8*)*, i8*) #3

; Function Attrs: nounwind uwtable
define internal void @gimp_container_filter_foreach_func(%struct._GimpObject* %object, %struct.GimpContainerFilterContext* %context) #0 {
entry:
  %object.addr = alloca %struct._GimpObject*, align 8
  %context.addr = alloca %struct.GimpContainerFilterContext*, align 8
  store %struct._GimpObject* %object, %struct._GimpObject** %object.addr, align 8
  store %struct.GimpContainerFilterContext* %context, %struct.GimpContainerFilterContext** %context.addr, align 8
  %0 = load %struct.GimpContainerFilterContext*, %struct.GimpContainerFilterContext** %context.addr, align 8
  %filter = getelementptr inbounds %struct.GimpContainerFilterContext, %struct.GimpContainerFilterContext* %0, i32 0, i32 0
  %1 = load i32 (%struct._GimpObject*, i8*)*, i32 (%struct._GimpObject*, i8*)** %filter, align 8
  %2 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %3 = load %struct.GimpContainerFilterContext*, %struct.GimpContainerFilterContext** %context.addr, align 8
  %user_data = getelementptr inbounds %struct.GimpContainerFilterContext, %struct.GimpContainerFilterContext* %3, i32 0, i32 2
  %4 = load i8*, i8** %user_data, align 8
  %call = call i32 %1(%struct._GimpObject* %2, i8* %4)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct.GimpContainerFilterContext*, %struct.GimpContainerFilterContext** %context.addr, align 8
  %container = getelementptr inbounds %struct.GimpContainerFilterContext, %struct.GimpContainerFilterContext* %5, i32 0, i32 1
  %6 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %7 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %call1 = call i32 @gimp_container_add(%struct._GimpContainer* %6, %struct._GimpObject* %7)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_list_get_type() #1

declare void @gimp_list_reverse(%struct._GimpList*) #3

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #3

; Function Attrs: nounwind uwtable
define %struct._GimpContainer* @gimp_container_filter_by_name(%struct._GimpContainer* %container, i8* %regexp, %struct._GError** %error) #0 {
entry:
  %retval = alloca %struct._GimpContainer*, align 8
  %container.addr = alloca %struct._GimpContainer*, align 8
  %regexp.addr = alloca i8*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %result = alloca %struct._GimpContainer*, align 8
  %regex = alloca %struct._GRegex*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpContainer* %container, %struct._GimpContainer** %container.addr, align 8
  store i8* %regexp, i8** %regexp.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_container_filter_by_name, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GimpContainer* null, %struct._GimpContainer** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i8*, i8** %regexp.addr, align 8
  %cmp12 = icmp ne i8* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_container_filter_by_name, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0))
  store %struct._GimpContainer* null, %struct._GimpContainer** %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %14 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %cmp18 = icmp eq %struct._GError** %14, null
  br i1 %cmp18, label %if.then.20, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.17
  %15 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %16 = load %struct._GError*, %struct._GError** %15, align 8
  %cmp19 = icmp eq %struct._GError* %16, null
  br i1 %cmp19, label %if.then.20, label %if.else.21

if.then.20:                                       ; preds = %lor.lhs.false, %do.body.17
  br label %if.end.22

if.else.21:                                       ; preds = %lor.lhs.false
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_container_filter_by_name, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i32 0, i32 0))
  store %struct._GimpContainer* null, %struct._GimpContainer** %retval
  br label %return

if.end.22:                                        ; preds = %if.then.20
  br label %do.end.23

do.end.23:                                        ; preds = %if.end.22
  %17 = load i8*, i8** %regexp.addr, align 8
  %18 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call24 = call %struct._GRegex* @g_regex_new(i8* %17, i32 8193, i32 0, %struct._GError** %18)
  store %struct._GRegex* %call24, %struct._GRegex** %regex, align 8
  %19 = load %struct._GRegex*, %struct._GRegex** %regex, align 8
  %tobool25 = icmp ne %struct._GRegex* %19, null
  br i1 %tobool25, label %if.end.27, label %if.then.26

if.then.26:                                       ; preds = %do.end.23
  store %struct._GimpContainer* null, %struct._GimpContainer** %retval
  br label %return

if.end.27:                                        ; preds = %do.end.23
  %20 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %21 = load %struct._GRegex*, %struct._GRegex** %regex, align 8
  %22 = bitcast %struct._GRegex* %21 to i8*
  %call28 = call %struct._GimpContainer* @gimp_container_filter(%struct._GimpContainer* %20, i32 (%struct._GimpObject*, i8*)* bitcast (i32 (%struct._GimpObject*, %struct._GRegex*)* @gimp_object_filter_by_name to i32 (%struct._GimpObject*, i8*)*), i8* %22)
  store %struct._GimpContainer* %call28, %struct._GimpContainer** %result, align 8
  %23 = load %struct._GRegex*, %struct._GRegex** %regex, align 8
  call void @g_regex_unref(%struct._GRegex* %23)
  %24 = load %struct._GimpContainer*, %struct._GimpContainer** %result, align 8
  store %struct._GimpContainer* %24, %struct._GimpContainer** %retval
  br label %return

return:                                           ; preds = %if.end.27, %if.then.26, %if.else.21, %if.else.14, %if.else.9
  %25 = load %struct._GimpContainer*, %struct._GimpContainer** %retval
  ret %struct._GimpContainer* %25
}

declare %struct._GRegex* @g_regex_new(i8*, i32, i32, %struct._GError**) #3

; Function Attrs: nounwind uwtable
define internal i32 @gimp_object_filter_by_name(%struct._GimpObject* %object, %struct._GRegex* %regex) #0 {
entry:
  %object.addr = alloca %struct._GimpObject*, align 8
  %regex.addr = alloca %struct._GRegex*, align 8
  store %struct._GimpObject* %object, %struct._GimpObject** %object.addr, align 8
  store %struct._GRegex* %regex, %struct._GRegex** %regex.addr, align 8
  %0 = load %struct._GRegex*, %struct._GRegex** %regex.addr, align 8
  %1 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %2 = bitcast %struct._GimpObject* %1 to i8*
  %call = call i8* @gimp_object_get_name(i8* %2)
  %call1 = call i32 @g_regex_match(%struct._GRegex* %0, i8* %call, i32 0, %struct._GMatchInfo** null)
  ret i32 %call1
}

declare void @g_regex_unref(%struct._GRegex*) #3

; Function Attrs: nounwind uwtable
define i8** @gimp_container_get_filtered_name_array(%struct._GimpContainer* %container, i8* %regexp, i32* %length) #0 {
entry:
  %retval = alloca i8**, align 8
  %container.addr = alloca %struct._GimpContainer*, align 8
  %regexp.addr = alloca i8*, align 8
  %length.addr = alloca i32*, align 8
  %weak = alloca %struct._GimpContainer*, align 8
  %error = alloca %struct._GError*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %retval27 = alloca i8**, align 8
  store %struct._GimpContainer* %container, %struct._GimpContainer** %container.addr, align 8
  store i8* %regexp, i8** %regexp.addr, align 8
  store i32* %length, i32** %length.addr, align 8
  store %struct._GError* null, %struct._GError** %error, align 8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__func__.gimp_container_get_filtered_name_array, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i32 0, i32 0))
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__func__.gimp_container_get_filtered_name_array, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0))
  store i8** null, i8*** %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load i8*, i8** %regexp.addr, align 8
  %cmp17 = icmp eq i8* %14, null
  br i1 %cmp17, label %if.then.20, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end.16
  %15 = load i8*, i8** %regexp.addr, align 8
  %call18 = call i64 @strlen(i8* %15) #6
  %cmp19 = icmp eq i64 %call18, 0
  br i1 %cmp19, label %if.then.20, label %if.end.22

if.then.20:                                       ; preds = %lor.lhs.false, %do.end.16
  %16 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %17 = load i32*, i32** %length.addr, align 8
  %call21 = call i8** @gimp_container_get_name_array(%struct._GimpContainer* %16, i32* %17)
  store i8** %call21, i8*** %retval
  br label %return

if.end.22:                                        ; preds = %lor.lhs.false
  %18 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %19 = load i8*, i8** %regexp.addr, align 8
  %call23 = call %struct._GimpContainer* @gimp_container_filter_by_name(%struct._GimpContainer* %18, i8* %19, %struct._GError** %error)
  store %struct._GimpContainer* %call23, %struct._GimpContainer** %weak, align 8
  %20 = load %struct._GimpContainer*, %struct._GimpContainer** %weak, align 8
  %tobool24 = icmp ne %struct._GimpContainer* %20, null
  br i1 %tobool24, label %if.then.25, label %if.else.29

if.then.25:                                       ; preds = %if.end.22
  %21 = load %struct._GimpContainer*, %struct._GimpContainer** %weak, align 8
  %22 = load i32*, i32** %length.addr, align 8
  %call28 = call i8** @gimp_container_get_name_array(%struct._GimpContainer* %21, i32* %22)
  store i8** %call28, i8*** %retval27, align 8
  %23 = load %struct._GimpContainer*, %struct._GimpContainer** %weak, align 8
  %24 = bitcast %struct._GimpContainer* %23 to i8*
  call void @g_object_unref(i8* %24)
  %25 = load i8**, i8*** %retval27, align 8
  store i8** %25, i8*** %retval
  br label %return

if.else.29:                                       ; preds = %if.end.22
  %26 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %26, i32 0, i32 2
  %27 = load i8*, i8** %message, align 8
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i32 0, i32 0), i8* %27)
  %28 = load %struct._GError*, %struct._GError** %error, align 8
  call void @g_error_free(%struct._GError* %28)
  %29 = load i32*, i32** %length.addr, align 8
  store i32 0, i32* %29, align 4
  store i8** null, i8*** %retval
  br label %return

return:                                           ; preds = %if.else.29, %if.then.25, %if.then.20, %if.else.14, %if.else.9
  %30 = load i8**, i8*** %retval
  ret i8** %30
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

declare i8** @gimp_container_get_name_array(%struct._GimpContainer*, i32*) #3

declare void @g_object_unref(i8*) #3

; Function Attrs: nounwind uwtable
define internal void @g_warning(i8* %format, ...) #0 {
entry:
  %format.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %format, i8** %format.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i8*, i8** %format.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  call void @g_logv(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

declare void @g_error_free(%struct._GError*) #3

declare i32 @gimp_container_add(%struct._GimpContainer*, %struct._GimpObject*) #3

declare i32 @g_regex_match(%struct._GRegex*, i8*, i32, %struct._GMatchInfo**) #3

declare i8* @gimp_object_get_name(i8*) #3

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #4

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #3

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
