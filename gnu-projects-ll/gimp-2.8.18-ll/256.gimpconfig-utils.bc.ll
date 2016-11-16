; ModuleID = './app/config/gimpconfig-utils.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GObjectClass = type { %struct._GTypeClass, %struct._GSList*, %struct._GObject* (i64, i32, %struct._GObjectConstructParam*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*)*, void (%struct._GObject*)*, void (%struct._GObject*, i32, %struct._GParamSpec**)*, void (%struct._GObject*, %struct._GParamSpec*)*, void (%struct._GObject*)*, i64, [6 x i8*] }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GObjectConstructParam = type { %struct._GParamSpec*, %struct._GValue* }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, void (i8*, %struct._GClosure*)* }

@.str = private unnamed_addr constant [12 x i8] c"Gimp-Config\00", align 1
@__func__.gimp_config_connect = private unnamed_addr constant [20 x i8] c"gimp_config_connect\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"a != b\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"G_IS_OBJECT (a) && G_IS_OBJECT (b)\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"notify::\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"notify\00", align 1
@__func__.gimp_config_connect_full = private unnamed_addr constant [25 x i8] c"gimp_config_connect_full\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"property_name_a != NULL\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"property_name_b != NULL\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"%p-%s\00", align 1
@__func__.gimp_config_disconnect = private unnamed_addr constant [23 x i8] c"gimp_config_disconnect\00", align 1

; Function Attrs: nounwind uwtable
define void @gimp_config_connect(%struct._GObject* %a, %struct._GObject* %b, i8* %property_name) #0 {
entry:
  %a.addr = alloca %struct._GObject*, align 8
  %b.addr = alloca %struct._GObject*, align 8
  %property_name.addr = alloca i8*, align 8
  %signal_name = alloca i8*, align 8
  store %struct._GObject* %a, %struct._GObject** %a.addr, align 8
  store %struct._GObject* %b, %struct._GObject** %b.addr, align 8
  store i8* %property_name, i8** %property_name.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GObject*, %struct._GObject** %a.addr, align 8
  %1 = load %struct._GObject*, %struct._GObject** %b.addr, align 8
  %cmp = icmp ne %struct._GObject* %0, %1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_config_connect, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.17

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %2 = load %struct._GObject*, %struct._GObject** %a.addr, align 8
  %3 = bitcast %struct._GObject* %2 to %struct._GTypeInstance*
  %call = call i32 @g_type_check_instance_is_fundamentally_a(%struct._GTypeInstance* %3, i64 80) #4
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.lhs.true, label %if.else.5

land.lhs.true:                                    ; preds = %do.body.1
  %4 = load %struct._GObject*, %struct._GObject** %b.addr, align 8
  %5 = bitcast %struct._GObject* %4 to %struct._GTypeInstance*
  %call2 = call i32 @g_type_check_instance_is_fundamentally_a(%struct._GTypeInstance* %5, i64 80) #4
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %land.lhs.true
  br label %if.end.6

if.else.5:                                        ; preds = %land.lhs.true, %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_config_connect, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.17

if.end.6:                                         ; preds = %if.then.4
  br label %do.end.7

do.end.7:                                         ; preds = %if.end.6
  %6 = load i8*, i8** %property_name.addr, align 8
  %tobool8 = icmp ne i8* %6, null
  br i1 %tobool8, label %if.then.9, label %if.else.11

if.then.9:                                        ; preds = %do.end.7
  %7 = load i8*, i8** %property_name.addr, align 8
  %call10 = call noalias i8* (i8*, ...) @g_strconcat(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i8* %7, i8* null)
  store i8* %call10, i8** %signal_name, align 8
  br label %if.end.12

if.else.11:                                       ; preds = %do.end.7
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8** %signal_name, align 8
  br label %if.end.12

if.end.12:                                        ; preds = %if.else.11, %if.then.9
  %8 = load %struct._GObject*, %struct._GObject** %a.addr, align 8
  %9 = bitcast %struct._GObject* %8 to i8*
  %10 = load i8*, i8** %signal_name, align 8
  %11 = load %struct._GObject*, %struct._GObject** %b.addr, align 8
  %12 = bitcast %struct._GObject* %11 to i8*
  %call13 = call i64 @g_signal_connect_object(i8* %9, i8* %10, void ()* bitcast (void (%struct._GObject*, %struct._GParamSpec*, %struct._GObject*)* @gimp_config_connect_notify to void ()*), i8* %12, i32 0)
  %13 = load %struct._GObject*, %struct._GObject** %b.addr, align 8
  %14 = bitcast %struct._GObject* %13 to i8*
  %15 = load i8*, i8** %signal_name, align 8
  %16 = load %struct._GObject*, %struct._GObject** %a.addr, align 8
  %17 = bitcast %struct._GObject* %16 to i8*
  %call14 = call i64 @g_signal_connect_object(i8* %14, i8* %15, void ()* bitcast (void (%struct._GObject*, %struct._GParamSpec*, %struct._GObject*)* @gimp_config_connect_notify to void ()*), i8* %17, i32 0)
  %18 = load i8*, i8** %property_name.addr, align 8
  %tobool15 = icmp ne i8* %18, null
  br i1 %tobool15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.end.12
  %19 = load i8*, i8** %signal_name, align 8
  call void @g_free(i8* %19)
  br label %if.end.17

if.end.17:                                        ; preds = %if.else, %if.else.5, %if.then.16, %if.end.12
  ret void
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_fundamentally_a(%struct._GTypeInstance*, i64) #2

declare noalias i8* @g_strconcat(i8*, ...) #1

declare i64 @g_signal_connect_object(i8*, i8*, void ()*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_config_connect_notify(%struct._GObject* %src, %struct._GParamSpec* %param_spec, %struct._GObject* %dest) #0 {
entry:
  %src.addr = alloca %struct._GObject*, align 8
  %param_spec.addr = alloca %struct._GParamSpec*, align 8
  %dest.addr = alloca %struct._GObject*, align 8
  %dest_spec = alloca %struct._GParamSpec*, align 8
  %value = alloca %struct._GValue, align 8
  store %struct._GObject* %src, %struct._GObject** %src.addr, align 8
  store %struct._GParamSpec* %param_spec, %struct._GParamSpec** %param_spec.addr, align 8
  store %struct._GObject* %dest, %struct._GObject** %dest.addr, align 8
  %0 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec.addr, align 8
  %flags = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %0, i32 0, i32 2
  %1 = load i32, i32* %flags, align 4
  %and = and i32 %1, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end.18

if.then:                                          ; preds = %entry
  %2 = load %struct._GObject*, %struct._GObject** %dest.addr, align 8
  %3 = bitcast %struct._GObject* %2 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %3, i32 0, i32 0
  %4 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %5 = bitcast %struct._GTypeClass* %4 to %struct._GObjectClass*
  %6 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec.addr, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %6, i32 0, i32 1
  %7 = load i8*, i8** %name, align 8
  %call = call %struct._GParamSpec* @g_object_class_find_property(%struct._GObjectClass* %5, i8* %7)
  store %struct._GParamSpec* %call, %struct._GParamSpec** %dest_spec, align 8
  %8 = load %struct._GParamSpec*, %struct._GParamSpec** %dest_spec, align 8
  %tobool1 = icmp ne %struct._GParamSpec* %8, null
  br i1 %tobool1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %9 = load %struct._GParamSpec*, %struct._GParamSpec** %dest_spec, align 8
  %value_type = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %9, i32 0, i32 3
  %10 = load i64, i64* %value_type, align 8
  %11 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec.addr, align 8
  %value_type2 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %11, i32 0, i32 3
  %12 = load i64, i64* %value_type2, align 8
  %cmp = icmp eq i64 %10, %12
  br i1 %cmp, label %land.lhs.true.3, label %if.end

land.lhs.true.3:                                  ; preds = %land.lhs.true
  %13 = load %struct._GParamSpec*, %struct._GParamSpec** %dest_spec, align 8
  %flags4 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %13, i32 0, i32 2
  %14 = load i32, i32* %flags4, align 4
  %and5 = and i32 %14, 2
  %tobool6 = icmp ne i32 %and5, 0
  br i1 %tobool6, label %land.lhs.true.7, label %if.end

land.lhs.true.7:                                  ; preds = %land.lhs.true.3
  %15 = load %struct._GParamSpec*, %struct._GParamSpec** %dest_spec, align 8
  %flags8 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %15, i32 0, i32 2
  %16 = load i32, i32* %flags8, align 4
  %and9 = and i32 %16, 8
  %cmp10 = icmp eq i32 %and9, 0
  br i1 %cmp10, label %if.then.11, label %if.end

if.then.11:                                       ; preds = %land.lhs.true.7
  %17 = bitcast %struct._GValue* %value to i8*
  call void @llvm.memset.p0i8.i64(i8* %17, i8 0, i64 24, i32 8, i1 false)
  %18 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec.addr, align 8
  %value_type12 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %18, i32 0, i32 3
  %19 = load i64, i64* %value_type12, align 8
  %call13 = call %struct._GValue* @g_value_init(%struct._GValue* %value, i64 %19)
  %20 = load %struct._GObject*, %struct._GObject** %src.addr, align 8
  %21 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec.addr, align 8
  %name14 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %21, i32 0, i32 1
  %22 = load i8*, i8** %name14, align 8
  call void @g_object_get_property(%struct._GObject* %20, i8* %22, %struct._GValue* %value)
  %23 = load %struct._GObject*, %struct._GObject** %dest.addr, align 8
  %24 = bitcast %struct._GObject* %23 to i8*
  %25 = load %struct._GObject*, %struct._GObject** %src.addr, align 8
  %26 = bitcast %struct._GObject* %25 to i8*
  %call15 = call i32 @g_signal_handlers_block_matched(i8* %24, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GObject*, %struct._GParamSpec*, %struct._GObject*)* @gimp_config_connect_notify to i8*), i8* %26)
  %27 = load %struct._GObject*, %struct._GObject** %dest.addr, align 8
  %28 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec.addr, align 8
  %name16 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %28, i32 0, i32 1
  %29 = load i8*, i8** %name16, align 8
  call void @g_object_set_property(%struct._GObject* %27, i8* %29, %struct._GValue* %value)
  %30 = load %struct._GObject*, %struct._GObject** %dest.addr, align 8
  %31 = bitcast %struct._GObject* %30 to i8*
  %32 = load %struct._GObject*, %struct._GObject** %src.addr, align 8
  %33 = bitcast %struct._GObject* %32 to i8*
  %call17 = call i32 @g_signal_handlers_unblock_matched(i8* %31, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GObject*, %struct._GParamSpec*, %struct._GObject*)* @gimp_config_connect_notify to i8*), i8* %33)
  call void @g_value_unset(%struct._GValue* %value)
  br label %if.end

if.end:                                           ; preds = %if.then.11, %land.lhs.true.7, %land.lhs.true.3, %land.lhs.true, %if.then
  br label %if.end.18

if.end.18:                                        ; preds = %if.end, %entry
  ret void
}

declare void @g_free(i8*) #1

; Function Attrs: nounwind uwtable
define void @gimp_config_connect_full(%struct._GObject* %a, %struct._GObject* %b, i8* %property_name_a, i8* %property_name_b) #0 {
entry:
  %a.addr = alloca %struct._GObject*, align 8
  %b.addr = alloca %struct._GObject*, align 8
  %property_name_a.addr = alloca i8*, align 8
  %property_name_b.addr = alloca i8*, align 8
  %signal_name = alloca i8*, align 8
  %attach_key = alloca i8*, align 8
  store %struct._GObject* %a, %struct._GObject** %a.addr, align 8
  store %struct._GObject* %b, %struct._GObject** %b.addr, align 8
  store i8* %property_name_a, i8** %property_name_a.addr, align 8
  store i8* %property_name_b, i8** %property_name_b.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GObject*, %struct._GObject** %a.addr, align 8
  %1 = load %struct._GObject*, %struct._GObject** %b.addr, align 8
  %cmp = icmp ne %struct._GObject* %0, %1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_config_connect_full, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %2 = load %struct._GObject*, %struct._GObject** %a.addr, align 8
  %3 = bitcast %struct._GObject* %2 to %struct._GTypeInstance*
  %call = call i32 @g_type_check_instance_is_fundamentally_a(%struct._GTypeInstance* %3, i64 80) #4
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.lhs.true, label %if.else.5

land.lhs.true:                                    ; preds = %do.body.1
  %4 = load %struct._GObject*, %struct._GObject** %b.addr, align 8
  %5 = bitcast %struct._GObject* %4 to %struct._GTypeInstance*
  %call2 = call i32 @g_type_check_instance_is_fundamentally_a(%struct._GTypeInstance* %5, i64 80) #4
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %land.lhs.true
  br label %if.end.6

if.else.5:                                        ; preds = %land.lhs.true, %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_config_connect_full, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.6:                                         ; preds = %if.then.4
  br label %do.end.7

do.end.7:                                         ; preds = %if.end.6
  br label %do.body.8

do.body.8:                                        ; preds = %do.end.7
  %6 = load i8*, i8** %property_name_a.addr, align 8
  %cmp9 = icmp ne i8* %6, null
  br i1 %cmp9, label %if.then.10, label %if.else.11

if.then.10:                                       ; preds = %do.body.8
  br label %if.end.12

if.else.11:                                       ; preds = %do.body.8
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_config_connect_full, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i32 0, i32 0))
  br label %return

if.end.12:                                        ; preds = %if.then.10
  br label %do.end.13

do.end.13:                                        ; preds = %if.end.12
  br label %do.body.14

do.body.14:                                       ; preds = %do.end.13
  %7 = load i8*, i8** %property_name_b.addr, align 8
  %cmp15 = icmp ne i8* %7, null
  br i1 %cmp15, label %if.then.16, label %if.else.17

if.then.16:                                       ; preds = %do.body.14
  br label %if.end.18

if.else.17:                                       ; preds = %do.body.14
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_config_connect_full, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i32 0, i32 0))
  br label %return

if.end.18:                                        ; preds = %if.then.16
  br label %do.end.19

do.end.19:                                        ; preds = %if.end.18
  %8 = load i8*, i8** %property_name_a.addr, align 8
  %call20 = call noalias i8* (i8*, ...) @g_strconcat(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i8* %8, i8* null)
  store i8* %call20, i8** %signal_name, align 8
  %9 = load %struct._GObject*, %struct._GObject** %b.addr, align 8
  %10 = load i8*, i8** %property_name_a.addr, align 8
  %call21 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), %struct._GObject* %9, i8* %10)
  store i8* %call21, i8** %attach_key, align 8
  %11 = load %struct._GObject*, %struct._GObject** %a.addr, align 8
  %12 = bitcast %struct._GObject* %11 to i8*
  %13 = load i8*, i8** %signal_name, align 8
  %14 = load %struct._GObject*, %struct._GObject** %b.addr, align 8
  %15 = bitcast %struct._GObject* %14 to i8*
  %call22 = call i64 @g_signal_connect_object(i8* %12, i8* %13, void ()* bitcast (void (%struct._GObject*, %struct._GParamSpec*, %struct._GObject*)* @gimp_config_connect_full_notify to void ()*), i8* %15, i32 0)
  %16 = load %struct._GObject*, %struct._GObject** %a.addr, align 8
  %17 = load i8*, i8** %attach_key, align 8
  %18 = load i8*, i8** %property_name_b.addr, align 8
  %call23 = call noalias i8* @g_strdup(i8* %18)
  call void @g_object_set_data_full(%struct._GObject* %16, i8* %17, i8* %call23, void (i8*)* @g_free)
  %19 = load i8*, i8** %signal_name, align 8
  call void @g_free(i8* %19)
  %20 = load i8*, i8** %attach_key, align 8
  call void @g_free(i8* %20)
  %21 = load i8*, i8** %property_name_b.addr, align 8
  %call24 = call noalias i8* (i8*, ...) @g_strconcat(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i8* %21, i8* null)
  store i8* %call24, i8** %signal_name, align 8
  %22 = load %struct._GObject*, %struct._GObject** %a.addr, align 8
  %23 = load i8*, i8** %property_name_b.addr, align 8
  %call25 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), %struct._GObject* %22, i8* %23)
  store i8* %call25, i8** %attach_key, align 8
  %24 = load %struct._GObject*, %struct._GObject** %b.addr, align 8
  %25 = bitcast %struct._GObject* %24 to i8*
  %26 = load i8*, i8** %signal_name, align 8
  %27 = load %struct._GObject*, %struct._GObject** %a.addr, align 8
  %28 = bitcast %struct._GObject* %27 to i8*
  %call26 = call i64 @g_signal_connect_object(i8* %25, i8* %26, void ()* bitcast (void (%struct._GObject*, %struct._GParamSpec*, %struct._GObject*)* @gimp_config_connect_full_notify to void ()*), i8* %28, i32 0)
  %29 = load %struct._GObject*, %struct._GObject** %b.addr, align 8
  %30 = load i8*, i8** %attach_key, align 8
  %31 = load i8*, i8** %property_name_a.addr, align 8
  %call27 = call noalias i8* @g_strdup(i8* %31)
  call void @g_object_set_data_full(%struct._GObject* %29, i8* %30, i8* %call27, void (i8*)* @g_free)
  %32 = load i8*, i8** %signal_name, align 8
  call void @g_free(i8* %32)
  %33 = load i8*, i8** %attach_key, align 8
  call void @g_free(i8* %33)
  br label %return

return:                                           ; preds = %do.end.19, %if.else.17, %if.else.11, %if.else.5, %if.else
  ret void
}

declare noalias i8* @g_strdup_printf(i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_config_connect_full_notify(%struct._GObject* %src, %struct._GParamSpec* %param_spec, %struct._GObject* %dest) #0 {
entry:
  %src.addr = alloca %struct._GObject*, align 8
  %param_spec.addr = alloca %struct._GParamSpec*, align 8
  %dest.addr = alloca %struct._GObject*, align 8
  %attach_key = alloca i8*, align 8
  %dest_prop_name = alloca i8*, align 8
  %dest_spec = alloca %struct._GParamSpec*, align 8
  %value = alloca %struct._GValue, align 8
  store %struct._GObject* %src, %struct._GObject** %src.addr, align 8
  store %struct._GParamSpec* %param_spec, %struct._GParamSpec** %param_spec.addr, align 8
  store %struct._GObject* %dest, %struct._GObject** %dest.addr, align 8
  %0 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec.addr, align 8
  %flags = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %0, i32 0, i32 2
  %1 = load i32, i32* %flags, align 4
  %and = and i32 %1, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end.22

if.then:                                          ; preds = %entry
  store %struct._GParamSpec* null, %struct._GParamSpec** %dest_spec, align 8
  %2 = load %struct._GObject*, %struct._GObject** %dest.addr, align 8
  %3 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec.addr, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %3, i32 0, i32 1
  %4 = load i8*, i8** %name, align 8
  %call = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), %struct._GObject* %2, i8* %4)
  store i8* %call, i8** %attach_key, align 8
  %5 = load %struct._GObject*, %struct._GObject** %src.addr, align 8
  %6 = load i8*, i8** %attach_key, align 8
  %call1 = call i8* @g_object_get_data(%struct._GObject* %5, i8* %6)
  store i8* %call1, i8** %dest_prop_name, align 8
  %7 = load i8*, i8** %attach_key, align 8
  call void @g_free(i8* %7)
  %8 = load i8*, i8** %dest_prop_name, align 8
  %tobool2 = icmp ne i8* %8, null
  br i1 %tobool2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %9 = load %struct._GObject*, %struct._GObject** %dest.addr, align 8
  %10 = bitcast %struct._GObject* %9 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %10, i32 0, i32 0
  %11 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %12 = bitcast %struct._GTypeClass* %11 to %struct._GObjectClass*
  %13 = load i8*, i8** %dest_prop_name, align 8
  %call4 = call %struct._GParamSpec* @g_object_class_find_property(%struct._GObjectClass* %12, i8* %13)
  store %struct._GParamSpec* %call4, %struct._GParamSpec** %dest_spec, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  %14 = load %struct._GParamSpec*, %struct._GParamSpec** %dest_spec, align 8
  %tobool5 = icmp ne %struct._GParamSpec* %14, null
  br i1 %tobool5, label %land.lhs.true, label %if.end.21

land.lhs.true:                                    ; preds = %if.end
  %15 = load %struct._GParamSpec*, %struct._GParamSpec** %dest_spec, align 8
  %value_type = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %15, i32 0, i32 3
  %16 = load i64, i64* %value_type, align 8
  %17 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec.addr, align 8
  %value_type6 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %17, i32 0, i32 3
  %18 = load i64, i64* %value_type6, align 8
  %cmp = icmp eq i64 %16, %18
  br i1 %cmp, label %land.lhs.true.7, label %if.end.21

land.lhs.true.7:                                  ; preds = %land.lhs.true
  %19 = load %struct._GParamSpec*, %struct._GParamSpec** %dest_spec, align 8
  %flags8 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %19, i32 0, i32 2
  %20 = load i32, i32* %flags8, align 4
  %and9 = and i32 %20, 2
  %tobool10 = icmp ne i32 %and9, 0
  br i1 %tobool10, label %land.lhs.true.11, label %if.end.21

land.lhs.true.11:                                 ; preds = %land.lhs.true.7
  %21 = load %struct._GParamSpec*, %struct._GParamSpec** %dest_spec, align 8
  %flags12 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %21, i32 0, i32 2
  %22 = load i32, i32* %flags12, align 4
  %and13 = and i32 %22, 8
  %cmp14 = icmp eq i32 %and13, 0
  br i1 %cmp14, label %if.then.15, label %if.end.21

if.then.15:                                       ; preds = %land.lhs.true.11
  %23 = bitcast %struct._GValue* %value to i8*
  call void @llvm.memset.p0i8.i64(i8* %23, i8 0, i64 24, i32 8, i1 false)
  %24 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec.addr, align 8
  %value_type16 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %24, i32 0, i32 3
  %25 = load i64, i64* %value_type16, align 8
  %call17 = call %struct._GValue* @g_value_init(%struct._GValue* %value, i64 %25)
  %26 = load %struct._GObject*, %struct._GObject** %src.addr, align 8
  %27 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec.addr, align 8
  %name18 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %27, i32 0, i32 1
  %28 = load i8*, i8** %name18, align 8
  call void @g_object_get_property(%struct._GObject* %26, i8* %28, %struct._GValue* %value)
  %29 = load %struct._GObject*, %struct._GObject** %dest.addr, align 8
  %30 = bitcast %struct._GObject* %29 to i8*
  %31 = load %struct._GObject*, %struct._GObject** %src.addr, align 8
  %32 = bitcast %struct._GObject* %31 to i8*
  %call19 = call i32 @g_signal_handlers_block_matched(i8* %30, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GObject*, %struct._GParamSpec*, %struct._GObject*)* @gimp_config_connect_full_notify to i8*), i8* %32)
  %33 = load %struct._GObject*, %struct._GObject** %dest.addr, align 8
  %34 = load i8*, i8** %dest_prop_name, align 8
  call void @g_object_set_property(%struct._GObject* %33, i8* %34, %struct._GValue* %value)
  %35 = load %struct._GObject*, %struct._GObject** %dest.addr, align 8
  %36 = bitcast %struct._GObject* %35 to i8*
  %37 = load %struct._GObject*, %struct._GObject** %src.addr, align 8
  %38 = bitcast %struct._GObject* %37 to i8*
  %call20 = call i32 @g_signal_handlers_unblock_matched(i8* %36, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GObject*, %struct._GParamSpec*, %struct._GObject*)* @gimp_config_connect_full_notify to i8*), i8* %38)
  call void @g_value_unset(%struct._GValue* %value)
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.15, %land.lhs.true.11, %land.lhs.true.7, %land.lhs.true, %if.end
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %entry
  ret void
}

declare void @g_object_set_data_full(%struct._GObject*, i8*, i8*, void (i8*)*) #1

declare noalias i8* @g_strdup(i8*) #1

; Function Attrs: nounwind uwtable
define void @gimp_config_disconnect(%struct._GObject* %a, %struct._GObject* %b) #0 {
entry:
  %a.addr = alloca %struct._GObject*, align 8
  %b.addr = alloca %struct._GObject*, align 8
  store %struct._GObject* %a, %struct._GObject** %a.addr, align 8
  store %struct._GObject* %b, %struct._GObject** %b.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GObject*, %struct._GObject** %a.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i32 @g_type_check_instance_is_fundamentally_a(%struct._GTypeInstance* %1, i64 80) #4
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %do.body
  %2 = load %struct._GObject*, %struct._GObject** %b.addr, align 8
  %3 = bitcast %struct._GObject* %2 to %struct._GTypeInstance*
  %call1 = call i32 @g_type_check_instance_is_fundamentally_a(%struct._GTypeInstance* %3, i64 80) #4
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_config_disconnect, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %4 = load %struct._GObject*, %struct._GObject** %b.addr, align 8
  %5 = bitcast %struct._GObject* %4 to i8*
  %6 = load %struct._GObject*, %struct._GObject** %a.addr, align 8
  %7 = bitcast %struct._GObject* %6 to i8*
  %call3 = call i32 @g_signal_handlers_disconnect_matched(i8* %5, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GObject*, %struct._GParamSpec*, %struct._GObject*)* @gimp_config_connect_notify to i8*), i8* %7)
  %8 = load %struct._GObject*, %struct._GObject** %a.addr, align 8
  %9 = bitcast %struct._GObject* %8 to i8*
  %10 = load %struct._GObject*, %struct._GObject** %b.addr, align 8
  %11 = bitcast %struct._GObject* %10 to i8*
  %call4 = call i32 @g_signal_handlers_disconnect_matched(i8* %9, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GObject*, %struct._GParamSpec*, %struct._GObject*)* @gimp_config_connect_notify to i8*), i8* %11)
  br label %return

return:                                           ; preds = %do.end, %if.else
  ret void
}

declare i32 @g_signal_handlers_disconnect_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

declare %struct._GParamSpec* @g_object_class_find_property(%struct._GObjectClass*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

declare %struct._GValue* @g_value_init(%struct._GValue*, i64) #1

declare void @g_object_get_property(%struct._GObject*, i8*, %struct._GValue*) #1

declare i32 @g_signal_handlers_block_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

declare void @g_object_set_property(%struct._GObject*, i8*, %struct._GValue*) #1

declare i32 @g_signal_handlers_unblock_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

declare void @g_value_unset(%struct._GValue*) #1

declare i8* @g_object_get_data(%struct._GObject*, i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
