; ModuleID = './libgimpconfig/gimpconfig-utils.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
%struct._GObjectClass = type { %struct._GTypeClass, %struct._GSList*, %struct._GObject* (i64, i32, %struct._GObjectConstructParam*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*)*, void (%struct._GObject*)*, void (%struct._GObject*, i32, %struct._GParamSpec**)*, void (%struct._GObject*, %struct._GParamSpec*)*, void (%struct._GObject*)*, i64, [6 x i8*] }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GObjectConstructParam = type { %struct._GParamSpec*, %struct._GValue* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GimpConfig = type opaque
%struct._GString = type { i8*, i64, i64 }

@.str = private unnamed_addr constant [14 x i8] c"LibGimpConfig\00", align 1
@__func__.gimp_config_diff = private unnamed_addr constant [17 x i8] c"gimp_config_diff\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"G_IS_OBJECT (a)\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"G_IS_OBJECT (b)\00", align 1
@__func__.gimp_config_sync = private unnamed_addr constant [17 x i8] c"gimp_config_sync\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"G_IS_OBJECT (src)\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"G_IS_OBJECT (dest)\00", align 1
@__func__.gimp_config_reset_properties = private unnamed_addr constant [29 x i8] c"gimp_config_reset_properties\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"G_IS_OBJECT (object)\00", align 1
@g_param_spec_types = external global i64*, align 8
@__func__.gimp_config_reset_property = private unnamed_addr constant [27 x i8] c"gimp_config_reset_property\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"property_name != NULL\00", align 1
@__func__.gimp_config_string_append_escaped = private unnamed_addr constant [34 x i8] c"gimp_config_string_append_escaped\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"string != NULL\00", align 1
@gimp_config_string_append_escaped.buf = private unnamed_addr constant [4 x i8] c"\5C\00\00\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"\22\22\00", align 1

; Function Attrs: nounwind uwtable
define %struct._GList* @gimp_config_diff(%struct._GObject* %a, %struct._GObject* %b, i32 %flags) #0 {
entry:
  %retval = alloca %struct._GList*, align 8
  %a.addr = alloca %struct._GObject*, align 8
  %b.addr = alloca %struct._GObject*, align 8
  %flags.addr = alloca i32, align 4
  %diff = alloca %struct._GList*, align 8
  store %struct._GObject* %a, %struct._GObject** %a.addr, align 8
  store %struct._GObject* %b, %struct._GObject** %b.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GObject*, %struct._GObject** %a.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i32 @g_type_check_instance_is_fundamentally_a(%struct._GTypeInstance* %1, i64 80) #6
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.gimp_config_diff, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GList* null, %struct._GList** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %2 = load %struct._GObject*, %struct._GObject** %b.addr, align 8
  %3 = bitcast %struct._GObject* %2 to %struct._GTypeInstance*
  %call2 = call i32 @g_type_check_instance_is_fundamentally_a(%struct._GTypeInstance* %3, i64 80) #6
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %do.body.1
  br label %if.end.6

if.else.5:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.gimp_config_diff, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GList* null, %struct._GList** %retval
  br label %return

if.end.6:                                         ; preds = %if.then.4
  br label %do.end.7

do.end.7:                                         ; preds = %if.end.6
  %4 = load %struct._GObject*, %struct._GObject** %a.addr, align 8
  %5 = bitcast %struct._GObject* %4 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %5, i32 0, i32 0
  %6 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %6, i32 0, i32 0
  %7 = load i64, i64* %g_type, align 8
  %8 = load %struct._GObject*, %struct._GObject** %b.addr, align 8
  %9 = bitcast %struct._GObject* %8 to %struct._GTypeInstance*
  %g_class8 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %9, i32 0, i32 0
  %10 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class8, align 8
  %g_type9 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %10, i32 0, i32 0
  %11 = load i64, i64* %g_type9, align 8
  %cmp = icmp eq i64 %7, %11
  br i1 %cmp, label %if.then.10, label %if.else.12

if.then.10:                                       ; preds = %do.end.7
  %12 = load %struct._GObject*, %struct._GObject** %a.addr, align 8
  %13 = load %struct._GObject*, %struct._GObject** %b.addr, align 8
  %14 = load i32, i32* %flags.addr, align 4
  %call11 = call %struct._GList* @gimp_config_diff_same(%struct._GObject* %12, %struct._GObject* %13, i32 %14)
  store %struct._GList* %call11, %struct._GList** %diff, align 8
  br label %if.end.14

if.else.12:                                       ; preds = %do.end.7
  %15 = load %struct._GObject*, %struct._GObject** %a.addr, align 8
  %16 = load %struct._GObject*, %struct._GObject** %b.addr, align 8
  %17 = load i32, i32* %flags.addr, align 4
  %call13 = call %struct._GList* @gimp_config_diff_other(%struct._GObject* %15, %struct._GObject* %16, i32 %17)
  store %struct._GList* %call13, %struct._GList** %diff, align 8
  br label %if.end.14

if.end.14:                                        ; preds = %if.else.12, %if.then.10
  %18 = load %struct._GList*, %struct._GList** %diff, align 8
  %call15 = call %struct._GList* @g_list_reverse(%struct._GList* %18)
  store %struct._GList* %call15, %struct._GList** %retval
  br label %return

return:                                           ; preds = %if.end.14, %if.else.5, %if.else
  %19 = load %struct._GList*, %struct._GList** %retval
  ret %struct._GList* %19
}

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_fundamentally_a(%struct._GTypeInstance*, i64) #1

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #2

; Function Attrs: nounwind uwtable
define internal %struct._GList* @gimp_config_diff_same(%struct._GObject* %a, %struct._GObject* %b, i32 %flags) #0 {
entry:
  %a.addr = alloca %struct._GObject*, align 8
  %b.addr = alloca %struct._GObject*, align 8
  %flags.addr = alloca i32, align 4
  %param_specs = alloca %struct._GParamSpec**, align 8
  %n_param_specs = alloca i32, align 4
  %i = alloca i32, align 4
  %list = alloca %struct._GList*, align 8
  %prop_spec = alloca %struct._GParamSpec*, align 8
  store %struct._GObject* %a, %struct._GObject** %a.addr, align 8
  store %struct._GObject* %b, %struct._GObject** %b.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  store %struct._GList* null, %struct._GList** %list, align 8
  %0 = load %struct._GObject*, %struct._GObject** %a.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %1, i32 0, i32 0
  %2 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %3 = bitcast %struct._GTypeClass* %2 to %struct._GObjectClass*
  %call = call %struct._GParamSpec** @g_object_class_list_properties(%struct._GObjectClass* %3, i32* %n_param_specs)
  store %struct._GParamSpec** %call, %struct._GParamSpec*** %param_specs, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* %n_param_specs, align 4
  %cmp = icmp ult i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load %struct._GParamSpec**, %struct._GParamSpec*** %param_specs, align 8
  %arrayidx = getelementptr inbounds %struct._GParamSpec*, %struct._GParamSpec** %7, i64 %idxprom
  %8 = load %struct._GParamSpec*, %struct._GParamSpec** %arrayidx, align 8
  store %struct._GParamSpec* %8, %struct._GParamSpec** %prop_spec, align 8
  %9 = load i32, i32* %flags.addr, align 4
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %for.body
  %10 = load %struct._GParamSpec*, %struct._GParamSpec** %prop_spec, align 8
  %flags1 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %10, i32 0, i32 2
  %11 = load i32, i32* %flags1, align 4
  %12 = load i32, i32* %flags.addr, align 4
  %and = and i32 %11, %12
  %13 = load i32, i32* %flags.addr, align 4
  %cmp2 = icmp eq i32 %and, %13
  br i1 %cmp2, label %if.then, label %if.end.7

if.then:                                          ; preds = %lor.lhs.false, %for.body
  %14 = load %struct._GObject*, %struct._GObject** %a.addr, align 8
  %15 = load %struct._GObject*, %struct._GObject** %b.addr, align 8
  %16 = load %struct._GParamSpec*, %struct._GParamSpec** %prop_spec, align 8
  %call3 = call i32 @gimp_config_diff_property(%struct._GObject* %14, %struct._GObject* %15, %struct._GParamSpec* %16)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then
  %17 = load %struct._GList*, %struct._GList** %list, align 8
  %18 = load %struct._GParamSpec*, %struct._GParamSpec** %prop_spec, align 8
  %19 = bitcast %struct._GParamSpec* %18 to i8*
  %call6 = call %struct._GList* @g_list_prepend(%struct._GList* %17, i8* %19)
  store %struct._GList* %call6, %struct._GList** %list, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.5, %if.then
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end.7
  %20 = load i32, i32* %i, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %21 = load %struct._GParamSpec**, %struct._GParamSpec*** %param_specs, align 8
  %22 = bitcast %struct._GParamSpec** %21 to i8*
  call void @g_free(i8* %22)
  %23 = load %struct._GList*, %struct._GList** %list, align 8
  ret %struct._GList* %23
}

; Function Attrs: nounwind uwtable
define internal %struct._GList* @gimp_config_diff_other(%struct._GObject* %a, %struct._GObject* %b, i32 %flags) #0 {
entry:
  %a.addr = alloca %struct._GObject*, align 8
  %b.addr = alloca %struct._GObject*, align 8
  %flags.addr = alloca i32, align 4
  %param_specs = alloca %struct._GParamSpec**, align 8
  %n_param_specs = alloca i32, align 4
  %i = alloca i32, align 4
  %list = alloca %struct._GList*, align 8
  %a_spec = alloca %struct._GParamSpec*, align 8
  %b_spec = alloca %struct._GParamSpec*, align 8
  store %struct._GObject* %a, %struct._GObject** %a.addr, align 8
  store %struct._GObject* %b, %struct._GObject** %b.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  store %struct._GList* null, %struct._GList** %list, align 8
  %0 = load %struct._GObject*, %struct._GObject** %a.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %1, i32 0, i32 0
  %2 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %3 = bitcast %struct._GTypeClass* %2 to %struct._GObjectClass*
  %call = call %struct._GParamSpec** @g_object_class_list_properties(%struct._GObjectClass* %3, i32* %n_param_specs)
  store %struct._GParamSpec** %call, %struct._GParamSpec*** %param_specs, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* %n_param_specs, align 4
  %cmp = icmp ult i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load %struct._GParamSpec**, %struct._GParamSpec*** %param_specs, align 8
  %arrayidx = getelementptr inbounds %struct._GParamSpec*, %struct._GParamSpec** %7, i64 %idxprom
  %8 = load %struct._GParamSpec*, %struct._GParamSpec** %arrayidx, align 8
  store %struct._GParamSpec* %8, %struct._GParamSpec** %a_spec, align 8
  %9 = load %struct._GObject*, %struct._GObject** %b.addr, align 8
  %10 = bitcast %struct._GObject* %9 to %struct._GTypeInstance*
  %g_class1 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %10, i32 0, i32 0
  %11 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class1, align 8
  %12 = bitcast %struct._GTypeClass* %11 to %struct._GObjectClass*
  %13 = load %struct._GParamSpec*, %struct._GParamSpec** %a_spec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %13, i32 0, i32 1
  %14 = load i8*, i8** %name, align 8
  %call2 = call %struct._GParamSpec* @g_object_class_find_property(%struct._GObjectClass* %12, i8* %14)
  store %struct._GParamSpec* %call2, %struct._GParamSpec** %b_spec, align 8
  %15 = load %struct._GParamSpec*, %struct._GParamSpec** %b_spec, align 8
  %tobool = icmp ne %struct._GParamSpec* %15, null
  br i1 %tobool, label %land.lhs.true, label %if.end.15

land.lhs.true:                                    ; preds = %for.body
  %16 = load %struct._GParamSpec*, %struct._GParamSpec** %a_spec, align 8
  %value_type = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %16, i32 0, i32 3
  %17 = load i64, i64* %value_type, align 8
  %18 = load %struct._GParamSpec*, %struct._GParamSpec** %b_spec, align 8
  %value_type3 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %18, i32 0, i32 3
  %19 = load i64, i64* %value_type3, align 8
  %cmp4 = icmp eq i64 %17, %19
  br i1 %cmp4, label %land.lhs.true.5, label %if.end.15

land.lhs.true.5:                                  ; preds = %land.lhs.true
  %20 = load i32, i32* %flags.addr, align 4
  %tobool6 = icmp ne i32 %20, 0
  br i1 %tobool6, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %land.lhs.true.5
  %21 = load %struct._GParamSpec*, %struct._GParamSpec** %a_spec, align 8
  %flags7 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %21, i32 0, i32 2
  %22 = load i32, i32* %flags7, align 4
  %23 = load %struct._GParamSpec*, %struct._GParamSpec** %b_spec, align 8
  %flags8 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %23, i32 0, i32 2
  %24 = load i32, i32* %flags8, align 4
  %and = and i32 %22, %24
  %25 = load i32, i32* %flags.addr, align 4
  %and9 = and i32 %and, %25
  %26 = load i32, i32* %flags.addr, align 4
  %cmp10 = icmp eq i32 %and9, %26
  br i1 %cmp10, label %if.then, label %if.end.15

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true.5
  %27 = load %struct._GObject*, %struct._GObject** %a.addr, align 8
  %28 = load %struct._GObject*, %struct._GObject** %b.addr, align 8
  %29 = load %struct._GParamSpec*, %struct._GParamSpec** %b_spec, align 8
  %call11 = call i32 @gimp_config_diff_property(%struct._GObject* %27, %struct._GObject* %28, %struct._GParamSpec* %29)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.then.13, label %if.end

if.then.13:                                       ; preds = %if.then
  %30 = load %struct._GList*, %struct._GList** %list, align 8
  %31 = load %struct._GParamSpec*, %struct._GParamSpec** %b_spec, align 8
  %32 = bitcast %struct._GParamSpec* %31 to i8*
  %call14 = call %struct._GList* @g_list_prepend(%struct._GList* %30, i8* %32)
  store %struct._GList* %call14, %struct._GList** %list, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.13, %if.then
  br label %if.end.15

if.end.15:                                        ; preds = %if.end, %lor.lhs.false, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.15
  %33 = load i32, i32* %i, align 4
  %inc = add nsw i32 %33, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %34 = load %struct._GParamSpec**, %struct._GParamSpec*** %param_specs, align 8
  %35 = bitcast %struct._GParamSpec** %34 to i8*
  call void @g_free(i8* %35)
  %36 = load %struct._GList*, %struct._GList** %list, align 8
  ret %struct._GList* %36
}

declare %struct._GList* @g_list_reverse(%struct._GList*) #2

; Function Attrs: nounwind uwtable
define i32 @gimp_config_sync(%struct._GObject* %src, %struct._GObject* %dest, i32 %flags) #0 {
entry:
  %retval = alloca i32, align 4
  %src.addr = alloca %struct._GObject*, align 8
  %dest.addr = alloca %struct._GObject*, align 8
  %flags.addr = alloca i32, align 4
  %diff = alloca %struct._GList*, align 8
  %list = alloca %struct._GList*, align 8
  %prop_spec = alloca %struct._GParamSpec*, align 8
  %value = alloca %struct._GValue, align 8
  store %struct._GObject* %src, %struct._GObject** %src.addr, align 8
  store %struct._GObject* %dest, %struct._GObject** %dest.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GObject*, %struct._GObject** %src.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i32 @g_type_check_instance_is_fundamentally_a(%struct._GTypeInstance* %1, i64 80) #6
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.gimp_config_sync, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %2 = load %struct._GObject*, %struct._GObject** %dest.addr, align 8
  %3 = bitcast %struct._GObject* %2 to %struct._GTypeInstance*
  %call2 = call i32 @g_type_check_instance_is_fundamentally_a(%struct._GTypeInstance* %3, i64 80) #6
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %do.body.1
  br label %if.end.6

if.else.5:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.gimp_config_sync, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.then.4
  br label %do.end.7

do.end.7:                                         ; preds = %if.end.6
  %4 = load %struct._GObject*, %struct._GObject** %src.addr, align 8
  %5 = bitcast %struct._GObject* %4 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %5, i32 0, i32 0
  %6 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %6, i32 0, i32 0
  %7 = load i64, i64* %g_type, align 8
  %8 = load %struct._GObject*, %struct._GObject** %dest.addr, align 8
  %9 = bitcast %struct._GObject* %8 to %struct._GTypeInstance*
  %g_class8 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %9, i32 0, i32 0
  %10 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class8, align 8
  %g_type9 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %10, i32 0, i32 0
  %11 = load i64, i64* %g_type9, align 8
  %cmp = icmp eq i64 %7, %11
  br i1 %cmp, label %if.then.10, label %if.else.12

if.then.10:                                       ; preds = %do.end.7
  %12 = load %struct._GObject*, %struct._GObject** %src.addr, align 8
  %13 = load %struct._GObject*, %struct._GObject** %dest.addr, align 8
  %14 = load i32, i32* %flags.addr, align 4
  %or = or i32 %14, 3
  %call11 = call %struct._GList* @gimp_config_diff_same(%struct._GObject* %12, %struct._GObject* %13, i32 %or)
  store %struct._GList* %call11, %struct._GList** %diff, align 8
  br label %if.end.14

if.else.12:                                       ; preds = %do.end.7
  %15 = load %struct._GObject*, %struct._GObject** %src.addr, align 8
  %16 = load %struct._GObject*, %struct._GObject** %dest.addr, align 8
  %17 = load i32, i32* %flags.addr, align 4
  %call13 = call %struct._GList* @gimp_config_diff_other(%struct._GObject* %15, %struct._GObject* %16, i32 %17)
  store %struct._GList* %call13, %struct._GList** %diff, align 8
  br label %if.end.14

if.end.14:                                        ; preds = %if.else.12, %if.then.10
  %18 = load %struct._GList*, %struct._GList** %diff, align 8
  %tobool15 = icmp ne %struct._GList* %18, null
  br i1 %tobool15, label %if.end.17, label %if.then.16

if.then.16:                                       ; preds = %if.end.14
  store i32 0, i32* %retval
  br label %return

if.end.17:                                        ; preds = %if.end.14
  %19 = load %struct._GObject*, %struct._GObject** %dest.addr, align 8
  %20 = bitcast %struct._GObject* %19 to %struct._GTypeInstance*
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 80)
  %21 = bitcast %struct._GTypeInstance* %call18 to %struct._GObject*
  call void @g_object_freeze_notify(%struct._GObject* %21)
  %22 = load %struct._GList*, %struct._GList** %diff, align 8
  store %struct._GList* %22, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.17
  %23 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool19 = icmp ne %struct._GList* %23, null
  br i1 %tobool19, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %24 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %24, i32 0, i32 0
  %25 = load i8*, i8** %data, align 8
  %26 = bitcast i8* %25 to %struct._GParamSpec*
  store %struct._GParamSpec* %26, %struct._GParamSpec** %prop_spec, align 8
  %27 = load %struct._GParamSpec*, %struct._GParamSpec** %prop_spec, align 8
  %flags20 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %27, i32 0, i32 2
  %28 = load i32, i32* %flags20, align 4
  %and = and i32 %28, 8
  %tobool21 = icmp ne i32 %and, 0
  br i1 %tobool21, label %if.end.25, label %if.then.22

if.then.22:                                       ; preds = %for.body
  %29 = bitcast %struct._GValue* %value to i8*
  call void @llvm.memset.p0i8.i64(i8* %29, i8 0, i64 24, i32 8, i1 false)
  %30 = load %struct._GParamSpec*, %struct._GParamSpec** %prop_spec, align 8
  %value_type = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %30, i32 0, i32 3
  %31 = load i64, i64* %value_type, align 8
  %call23 = call %struct._GValue* @g_value_init(%struct._GValue* %value, i64 %31)
  %32 = load %struct._GObject*, %struct._GObject** %src.addr, align 8
  %33 = load %struct._GParamSpec*, %struct._GParamSpec** %prop_spec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %33, i32 0, i32 1
  %34 = load i8*, i8** %name, align 8
  call void @g_object_get_property(%struct._GObject* %32, i8* %34, %struct._GValue* %value)
  %35 = load %struct._GObject*, %struct._GObject** %dest.addr, align 8
  %36 = load %struct._GParamSpec*, %struct._GParamSpec** %prop_spec, align 8
  %name24 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %36, i32 0, i32 1
  %37 = load i8*, i8** %name24, align 8
  call void @g_object_set_property(%struct._GObject* %35, i8* %37, %struct._GValue* %value)
  call void @g_value_unset(%struct._GValue* %value)
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.22, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.25
  %38 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %38, i32 0, i32 1
  %39 = load %struct._GList*, %struct._GList** %next, align 8
  store %struct._GList* %39, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %40 = load %struct._GObject*, %struct._GObject** %dest.addr, align 8
  %41 = bitcast %struct._GObject* %40 to %struct._GTypeInstance*
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %41, i64 80)
  %42 = bitcast %struct._GTypeInstance* %call26 to %struct._GObject*
  call void @g_object_thaw_notify(%struct._GObject* %42)
  %43 = load %struct._GList*, %struct._GList** %diff, align 8
  call void @g_list_free(%struct._GList* %43)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.16, %if.else.5, %if.else
  %44 = load i32, i32* %retval
  ret i32 %44
}

declare void @g_object_freeze_notify(%struct._GObject*) #2

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #2

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

declare %struct._GValue* @g_value_init(%struct._GValue*, i64) #2

declare void @g_object_get_property(%struct._GObject*, i8*, %struct._GValue*) #2

declare void @g_object_set_property(%struct._GObject*, i8*, %struct._GValue*) #2

declare void @g_value_unset(%struct._GValue*) #2

declare void @g_object_thaw_notify(%struct._GObject*) #2

declare void @g_list_free(%struct._GList*) #2

; Function Attrs: nounwind uwtable
define void @gimp_config_reset_properties(%struct._GObject* %object) #0 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %klass = alloca %struct._GObjectClass*, align 8
  %property_specs = alloca %struct._GParamSpec**, align 8
  %value = alloca %struct._GValue, align 8
  %n_property_specs = alloca i32, align 4
  %i = alloca i32, align 4
  %prop_spec = alloca %struct._GParamSpec*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = bitcast %struct._GValue* %value to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 24, i32 8, i1 false)
  br label %do.body

do.body:                                          ; preds = %entry
  %1 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %2 = bitcast %struct._GObject* %1 to %struct._GTypeInstance*
  %call = call i32 @g_type_check_instance_is_fundamentally_a(%struct._GTypeInstance* %2, i64 80) #6
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_config_reset_properties, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %3 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %4 = bitcast %struct._GObject* %3 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %4, i32 0, i32 0
  %5 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %6 = bitcast %struct._GTypeClass* %5 to %struct._GObjectClass*
  store %struct._GObjectClass* %6, %struct._GObjectClass** %klass, align 8
  %7 = load %struct._GObjectClass*, %struct._GObjectClass** %klass, align 8
  %call1 = call %struct._GParamSpec** @g_object_class_list_properties(%struct._GObjectClass* %7, i32* %n_property_specs)
  store %struct._GParamSpec** %call1, %struct._GParamSpec*** %property_specs, align 8
  %8 = load %struct._GParamSpec**, %struct._GParamSpec*** %property_specs, align 8
  %tobool2 = icmp ne %struct._GParamSpec** %8, null
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %do.end
  br label %return

if.end.4:                                         ; preds = %do.end
  %9 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void @g_object_freeze_notify(%struct._GObject* %9)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.4
  %10 = load i32, i32* %i, align 4
  %11 = load i32, i32* %n_property_specs, align 4
  %cmp = icmp ult i32 %10, %11
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i32, i32* %i, align 4
  %idxprom = zext i32 %12 to i64
  %13 = load %struct._GParamSpec**, %struct._GParamSpec*** %property_specs, align 8
  %arrayidx = getelementptr inbounds %struct._GParamSpec*, %struct._GParamSpec** %13, i64 %idxprom
  %14 = load %struct._GParamSpec*, %struct._GParamSpec** %arrayidx, align 8
  store %struct._GParamSpec* %14, %struct._GParamSpec** %prop_spec, align 8
  %15 = load %struct._GParamSpec*, %struct._GParamSpec** %prop_spec, align 8
  %flags = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %15, i32 0, i32 2
  %16 = load i32, i32* %flags, align 4
  %and = and i32 %16, 2
  %tobool5 = icmp ne i32 %and, 0
  br i1 %tobool5, label %land.lhs.true, label %if.end.48

land.lhs.true:                                    ; preds = %for.body
  %17 = load %struct._GParamSpec*, %struct._GParamSpec** %prop_spec, align 8
  %flags6 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %17, i32 0, i32 2
  %18 = load i32, i32* %flags6, align 4
  %and7 = and i32 %18, 8
  %tobool8 = icmp ne i32 %and7, 0
  br i1 %tobool8, label %if.end.48, label %if.then.9

if.then.9:                                        ; preds = %land.lhs.true
  %19 = load %struct._GParamSpec*, %struct._GParamSpec** %prop_spec, align 8
  %20 = bitcast %struct._GParamSpec* %19 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %20, %struct._GTypeInstance** %__inst, align 8
  %21 = load i64*, i64** @g_param_spec_types, align 8
  %arrayidx10 = getelementptr inbounds i64, i64* %21, i64 19
  %22 = load i64, i64* %arrayidx10, align 8
  store i64 %22, i64* %__t, align 8
  %23 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool11 = icmp ne %struct._GTypeInstance* %23, null
  br i1 %tobool11, label %if.else.13, label %if.then.12

if.then.12:                                       ; preds = %if.then.9
  store i32 0, i32* %__r, align 4
  br label %if.end.23

if.else.13:                                       ; preds = %if.then.9
  %24 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class14 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %24, i32 0, i32 0
  %25 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class14, align 8
  %tobool15 = icmp ne %struct._GTypeClass* %25, null
  br i1 %tobool15, label %land.lhs.true.16, label %if.else.20

land.lhs.true.16:                                 ; preds = %if.else.13
  %26 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class17 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %26, i32 0, i32 0
  %27 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class17, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %27, i32 0, i32 0
  %28 = load i64, i64* %g_type, align 8
  %29 = load i64, i64* %__t, align 8
  %cmp18 = icmp eq i64 %28, %29
  br i1 %cmp18, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %land.lhs.true.16
  store i32 1, i32* %__r, align 4
  br label %if.end.22

if.else.20:                                       ; preds = %land.lhs.true.16, %if.else.13
  %30 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %31 = load i64, i64* %__t, align 8
  %call21 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %30, i64 %31) #6
  store i32 %call21, i32* %__r, align 4
  br label %if.end.22

if.end.22:                                        ; preds = %if.else.20, %if.then.19
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %if.then.12
  %32 = load i32, i32* %__r, align 4
  store i32 %32, i32* %tmp
  %33 = load i32, i32* %tmp
  %tobool24 = icmp ne i32 %33, 0
  br i1 %tobool24, label %if.then.25, label %if.else.43

if.then.25:                                       ; preds = %if.end.23
  %34 = load %struct._GParamSpec*, %struct._GParamSpec** %prop_spec, align 8
  %flags26 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %34, i32 0, i32 2
  %35 = load i32, i32* %flags26, align 4
  %and27 = and i32 %35, 256
  %tobool28 = icmp ne i32 %and27, 0
  br i1 %tobool28, label %land.lhs.true.29, label %if.end.42

land.lhs.true.29:                                 ; preds = %if.then.25
  %36 = load %struct._GParamSpec*, %struct._GParamSpec** %prop_spec, align 8
  %flags30 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %36, i32 0, i32 2
  %37 = load i32, i32* %flags30, align 4
  %and31 = and i32 %37, 512
  %tobool32 = icmp ne i32 %and31, 0
  br i1 %tobool32, label %land.lhs.true.33, label %if.end.42

land.lhs.true.33:                                 ; preds = %land.lhs.true.29
  %38 = load %struct._GParamSpec*, %struct._GParamSpec** %prop_spec, align 8
  %value_type = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %38, i32 0, i32 3
  %39 = load i64, i64* %value_type, align 8
  %call34 = call i8* @g_type_class_peek(i64 %39)
  %call35 = call i64 @gimp_config_interface_get_type() #7
  %call36 = call i8* @g_type_interface_peek(i8* %call34, i64 %call35)
  %tobool37 = icmp ne i8* %call36, null
  br i1 %tobool37, label %if.then.38, label %if.end.42

if.then.38:                                       ; preds = %land.lhs.true.33
  %40 = load %struct._GParamSpec*, %struct._GParamSpec** %prop_spec, align 8
  %value_type39 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %40, i32 0, i32 3
  %41 = load i64, i64* %value_type39, align 8
  %call40 = call %struct._GValue* @g_value_init(%struct._GValue* %value, i64 %41)
  %42 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %43 = load %struct._GParamSpec*, %struct._GParamSpec** %prop_spec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %43, i32 0, i32 1
  %44 = load i8*, i8** %name, align 8
  call void @g_object_get_property(%struct._GObject* %42, i8* %44, %struct._GValue* %value)
  %call41 = call i8* @g_value_get_object(%struct._GValue* %value)
  %45 = bitcast i8* %call41 to %struct._GimpConfig*
  call void @gimp_config_reset(%struct._GimpConfig* %45)
  call void @g_value_unset(%struct._GValue* %value)
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.38, %land.lhs.true.33, %land.lhs.true.29, %if.then.25
  br label %if.end.47

if.else.43:                                       ; preds = %if.end.23
  %46 = load %struct._GParamSpec*, %struct._GParamSpec** %prop_spec, align 8
  %value_type44 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %46, i32 0, i32 3
  %47 = load i64, i64* %value_type44, align 8
  %call45 = call %struct._GValue* @g_value_init(%struct._GValue* %value, i64 %47)
  %48 = load %struct._GParamSpec*, %struct._GParamSpec** %prop_spec, align 8
  call void @g_param_value_set_default(%struct._GParamSpec* %48, %struct._GValue* %value)
  %49 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %50 = load %struct._GParamSpec*, %struct._GParamSpec** %prop_spec, align 8
  %name46 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %50, i32 0, i32 1
  %51 = load i8*, i8** %name46, align 8
  call void @g_object_set_property(%struct._GObject* %49, i8* %51, %struct._GValue* %value)
  call void @g_value_unset(%struct._GValue* %value)
  br label %if.end.47

if.end.47:                                        ; preds = %if.else.43, %if.end.42
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.48
  %52 = load i32, i32* %i, align 4
  %inc = add i32 %52, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %53 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void @g_object_thaw_notify(%struct._GObject* %53)
  %54 = load %struct._GParamSpec**, %struct._GParamSpec*** %property_specs, align 8
  %55 = bitcast %struct._GParamSpec** %54 to i8*
  call void @g_free(i8* %55)
  br label %return

return:                                           ; preds = %for.end, %if.then.3, %if.else
  ret void
}

declare %struct._GParamSpec** @g_object_class_list_properties(%struct._GObjectClass*, i32*) #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #1

declare i8* @g_type_interface_peek(i8*, i64) #2

declare i8* @g_type_class_peek(i64) #2

; Function Attrs: nounwind readnone
declare i64 @gimp_config_interface_get_type() #4

declare void @gimp_config_reset(%struct._GimpConfig*) #2

declare i8* @g_value_get_object(%struct._GValue*) #2

declare void @g_param_value_set_default(%struct._GParamSpec*, %struct._GValue*) #2

declare void @g_free(i8*) #2

; Function Attrs: nounwind uwtable
define void @gimp_config_reset_property(%struct._GObject* %object, i8* %property_name) #0 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_name.addr = alloca i8*, align 8
  %klass = alloca %struct._GObjectClass*, align 8
  %prop_spec = alloca %struct._GParamSpec*, align 8
  %value = alloca %struct._GValue, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i8* %property_name, i8** %property_name.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i32 @g_type_check_instance_is_fundamentally_a(%struct._GTypeInstance* %1, i64 80) #6
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_config_reset_property, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end.52

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %2 = load i8*, i8** %property_name.addr, align 8
  %cmp = icmp ne i8* %2, null
  br i1 %cmp, label %if.then.2, label %if.else.3

if.then.2:                                        ; preds = %do.body.1
  br label %if.end.4

if.else.3:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_config_reset_property, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.52

if.end.4:                                         ; preds = %if.then.2
  br label %do.end.5

do.end.5:                                         ; preds = %if.end.4
  %3 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %4 = bitcast %struct._GObject* %3 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %4, i32 0, i32 0
  %5 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %6 = bitcast %struct._GTypeClass* %5 to %struct._GObjectClass*
  store %struct._GObjectClass* %6, %struct._GObjectClass** %klass, align 8
  %7 = load %struct._GObjectClass*, %struct._GObjectClass** %klass, align 8
  %8 = load i8*, i8** %property_name.addr, align 8
  %call6 = call %struct._GParamSpec* @g_object_class_find_property(%struct._GObjectClass* %7, i8* %8)
  store %struct._GParamSpec* %call6, %struct._GParamSpec** %prop_spec, align 8
  %9 = load %struct._GParamSpec*, %struct._GParamSpec** %prop_spec, align 8
  %tobool7 = icmp ne %struct._GParamSpec* %9, null
  br i1 %tobool7, label %if.end.9, label %if.then.8

if.then.8:                                        ; preds = %do.end.5
  br label %if.end.52

if.end.9:                                         ; preds = %do.end.5
  %10 = load %struct._GParamSpec*, %struct._GParamSpec** %prop_spec, align 8
  %flags = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %10, i32 0, i32 2
  %11 = load i32, i32* %flags, align 4
  %and = and i32 %11, 2
  %tobool10 = icmp ne i32 %and, 0
  br i1 %tobool10, label %land.lhs.true, label %if.end.52

land.lhs.true:                                    ; preds = %if.end.9
  %12 = load %struct._GParamSpec*, %struct._GParamSpec** %prop_spec, align 8
  %flags11 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %12, i32 0, i32 2
  %13 = load i32, i32* %flags11, align 4
  %and12 = and i32 %13, 8
  %tobool13 = icmp ne i32 %and12, 0
  br i1 %tobool13, label %if.end.52, label %if.then.14

if.then.14:                                       ; preds = %land.lhs.true
  %14 = bitcast %struct._GValue* %value to i8*
  call void @llvm.memset.p0i8.i64(i8* %14, i8 0, i64 24, i32 8, i1 false)
  %15 = load %struct._GParamSpec*, %struct._GParamSpec** %prop_spec, align 8
  %16 = bitcast %struct._GParamSpec* %15 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %16, %struct._GTypeInstance** %__inst, align 8
  %17 = load i64*, i64** @g_param_spec_types, align 8
  %arrayidx = getelementptr inbounds i64, i64* %17, i64 19
  %18 = load i64, i64* %arrayidx, align 8
  store i64 %18, i64* %__t, align 8
  %19 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool15 = icmp ne %struct._GTypeInstance* %19, null
  br i1 %tobool15, label %if.else.17, label %if.then.16

if.then.16:                                       ; preds = %if.then.14
  store i32 0, i32* %__r, align 4
  br label %if.end.27

if.else.17:                                       ; preds = %if.then.14
  %20 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class18 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %20, i32 0, i32 0
  %21 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class18, align 8
  %tobool19 = icmp ne %struct._GTypeClass* %21, null
  br i1 %tobool19, label %land.lhs.true.20, label %if.else.24

land.lhs.true.20:                                 ; preds = %if.else.17
  %22 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class21 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %22, i32 0, i32 0
  %23 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class21, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %23, i32 0, i32 0
  %24 = load i64, i64* %g_type, align 8
  %25 = load i64, i64* %__t, align 8
  %cmp22 = icmp eq i64 %24, %25
  br i1 %cmp22, label %if.then.23, label %if.else.24

if.then.23:                                       ; preds = %land.lhs.true.20
  store i32 1, i32* %__r, align 4
  br label %if.end.26

if.else.24:                                       ; preds = %land.lhs.true.20, %if.else.17
  %26 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %27 = load i64, i64* %__t, align 8
  %call25 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %26, i64 %27) #6
  store i32 %call25, i32* %__r, align 4
  br label %if.end.26

if.end.26:                                        ; preds = %if.else.24, %if.then.23
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %if.then.16
  %28 = load i32, i32* %__r, align 4
  store i32 %28, i32* %tmp
  %29 = load i32, i32* %tmp
  %tobool28 = icmp ne i32 %29, 0
  br i1 %tobool28, label %if.then.29, label %if.else.47

if.then.29:                                       ; preds = %if.end.27
  %30 = load %struct._GParamSpec*, %struct._GParamSpec** %prop_spec, align 8
  %flags30 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %30, i32 0, i32 2
  %31 = load i32, i32* %flags30, align 4
  %and31 = and i32 %31, 256
  %tobool32 = icmp ne i32 %and31, 0
  br i1 %tobool32, label %land.lhs.true.33, label %if.end.46

land.lhs.true.33:                                 ; preds = %if.then.29
  %32 = load %struct._GParamSpec*, %struct._GParamSpec** %prop_spec, align 8
  %flags34 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %32, i32 0, i32 2
  %33 = load i32, i32* %flags34, align 4
  %and35 = and i32 %33, 512
  %tobool36 = icmp ne i32 %and35, 0
  br i1 %tobool36, label %land.lhs.true.37, label %if.end.46

land.lhs.true.37:                                 ; preds = %land.lhs.true.33
  %34 = load %struct._GParamSpec*, %struct._GParamSpec** %prop_spec, align 8
  %value_type = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %34, i32 0, i32 3
  %35 = load i64, i64* %value_type, align 8
  %call38 = call i8* @g_type_class_peek(i64 %35)
  %call39 = call i64 @gimp_config_interface_get_type() #7
  %call40 = call i8* @g_type_interface_peek(i8* %call38, i64 %call39)
  %tobool41 = icmp ne i8* %call40, null
  br i1 %tobool41, label %if.then.42, label %if.end.46

if.then.42:                                       ; preds = %land.lhs.true.37
  %36 = load %struct._GParamSpec*, %struct._GParamSpec** %prop_spec, align 8
  %value_type43 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %36, i32 0, i32 3
  %37 = load i64, i64* %value_type43, align 8
  %call44 = call %struct._GValue* @g_value_init(%struct._GValue* %value, i64 %37)
  %38 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %39 = load %struct._GParamSpec*, %struct._GParamSpec** %prop_spec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %39, i32 0, i32 1
  %40 = load i8*, i8** %name, align 8
  call void @g_object_get_property(%struct._GObject* %38, i8* %40, %struct._GValue* %value)
  %call45 = call i8* @g_value_get_object(%struct._GValue* %value)
  %41 = bitcast i8* %call45 to %struct._GimpConfig*
  call void @gimp_config_reset(%struct._GimpConfig* %41)
  call void @g_value_unset(%struct._GValue* %value)
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.42, %land.lhs.true.37, %land.lhs.true.33, %if.then.29
  br label %if.end.51

if.else.47:                                       ; preds = %if.end.27
  %42 = load %struct._GParamSpec*, %struct._GParamSpec** %prop_spec, align 8
  %value_type48 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %42, i32 0, i32 3
  %43 = load i64, i64* %value_type48, align 8
  %call49 = call %struct._GValue* @g_value_init(%struct._GValue* %value, i64 %43)
  %44 = load %struct._GParamSpec*, %struct._GParamSpec** %prop_spec, align 8
  call void @g_param_value_set_default(%struct._GParamSpec* %44, %struct._GValue* %value)
  %45 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %46 = load %struct._GParamSpec*, %struct._GParamSpec** %prop_spec, align 8
  %name50 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %46, i32 0, i32 1
  %47 = load i8*, i8** %name50, align 8
  call void @g_object_set_property(%struct._GObject* %45, i8* %47, %struct._GValue* %value)
  call void @g_value_unset(%struct._GValue* %value)
  br label %if.end.51

if.end.51:                                        ; preds = %if.else.47, %if.end.46
  br label %if.end.52

if.end.52:                                        ; preds = %if.else, %if.else.3, %if.then.8, %if.end.51, %land.lhs.true, %if.end.9
  ret void
}

declare %struct._GParamSpec* @g_object_class_find_property(%struct._GObjectClass*, i8*) #2

; Function Attrs: nounwind uwtable
define void @gimp_config_string_append_escaped(%struct._GString* %string, i8* %val) #0 {
entry:
  %string.addr = alloca %struct._GString*, align 8
  %val.addr = alloca i8*, align 8
  %p = alloca i8*, align 8
  %buf = alloca [4 x i8], align 1
  %len = alloca i32, align 4
  store %struct._GString* %string, %struct._GString** %string.addr, align 8
  store i8* %val, i8** %val.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GString*, %struct._GString** %string.addr, align 8
  %cmp = icmp ne %struct._GString* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_config_string_append_escaped, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end.49

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load i8*, i8** %val.addr, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.then.1, label %if.else.47

if.then.1:                                        ; preds = %do.end
  %2 = bitcast [4 x i8]* %buf to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @gimp_config_string_append_escaped.buf, i32 0, i32 0), i64 4, i32 1, i1 false)
  %3 = load %struct._GString*, %struct._GString** %string.addr, align 8
  %call = call %struct._GString* @g_string_append_c_inline(%struct._GString* %3, i8 signext 34)
  %4 = load i8*, i8** %val.addr, align 8
  store i8* %4, i8** %p, align 8
  store i32 0, i32* %len, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.1
  %5 = load i8*, i8** %p, align 8
  %6 = load i8, i8* %5, align 1
  %tobool2 = icmp ne i8 %6, 0
  br i1 %tobool2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i8*, i8** %p, align 8
  %8 = load i8, i8* %7, align 1
  %conv = zext i8 %8 to i32
  %cmp3 = icmp slt i32 %conv, 32
  br i1 %cmp3, label %if.then.12, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %9 = load i8*, i8** %p, align 8
  %10 = load i8, i8* %9, align 1
  %conv5 = zext i8 %10 to i32
  %cmp6 = icmp eq i32 %conv5, 92
  br i1 %cmp6, label %if.then.12, label %lor.lhs.false.8

lor.lhs.false.8:                                  ; preds = %lor.lhs.false
  %11 = load i8*, i8** %p, align 8
  %12 = load i8, i8* %11, align 1
  %conv9 = zext i8 %12 to i32
  %cmp10 = icmp eq i32 %conv9, 34
  br i1 %cmp10, label %if.then.12, label %if.else.42

if.then.12:                                       ; preds = %lor.lhs.false.8, %lor.lhs.false, %for.body
  %13 = load %struct._GString*, %struct._GString** %string.addr, align 8
  %14 = load i8*, i8** %val.addr, align 8
  %15 = load i32, i32* %len, align 4
  %conv13 = sext i32 %15 to i64
  %call14 = call %struct._GString* @g_string_append_len(%struct._GString* %13, i8* %14, i64 %conv13)
  store i32 2, i32* %len, align 4
  %16 = load i8*, i8** %p, align 8
  %17 = load i8, i8* %16, align 1
  %conv15 = zext i8 %17 to i32
  switch i32 %conv15, label %sw.default [
    i32 8, label %sw.bb
    i32 12, label %sw.bb.16
    i32 10, label %sw.bb.18
    i32 13, label %sw.bb.20
    i32 9, label %sw.bb.22
    i32 92, label %sw.bb.24
    i32 34, label %sw.bb.24
  ]

sw.bb:                                            ; preds = %if.then.12
  %arrayidx = getelementptr inbounds [4 x i8], [4 x i8]* %buf, i32 0, i64 1
  store i8 98, i8* %arrayidx, align 1
  br label %sw.epilog

sw.bb.16:                                         ; preds = %if.then.12
  %arrayidx17 = getelementptr inbounds [4 x i8], [4 x i8]* %buf, i32 0, i64 1
  store i8 102, i8* %arrayidx17, align 1
  br label %sw.epilog

sw.bb.18:                                         ; preds = %if.then.12
  %arrayidx19 = getelementptr inbounds [4 x i8], [4 x i8]* %buf, i32 0, i64 1
  store i8 110, i8* %arrayidx19, align 1
  br label %sw.epilog

sw.bb.20:                                         ; preds = %if.then.12
  %arrayidx21 = getelementptr inbounds [4 x i8], [4 x i8]* %buf, i32 0, i64 1
  store i8 114, i8* %arrayidx21, align 1
  br label %sw.epilog

sw.bb.22:                                         ; preds = %if.then.12
  %arrayidx23 = getelementptr inbounds [4 x i8], [4 x i8]* %buf, i32 0, i64 1
  store i8 116, i8* %arrayidx23, align 1
  br label %sw.epilog

sw.bb.24:                                         ; preds = %if.then.12, %if.then.12
  %18 = load i8*, i8** %p, align 8
  %19 = load i8, i8* %18, align 1
  %arrayidx25 = getelementptr inbounds [4 x i8], [4 x i8]* %buf, i32 0, i64 1
  store i8 %19, i8* %arrayidx25, align 1
  br label %sw.epilog

sw.default:                                       ; preds = %if.then.12
  store i32 4, i32* %len, align 4
  %20 = load i8*, i8** %p, align 8
  %21 = load i8, i8* %20, align 1
  %conv26 = zext i8 %21 to i32
  %shr = ashr i32 %conv26, 6
  %and = and i32 %shr, 7
  %add = add nsw i32 48, %and
  %conv27 = trunc i32 %add to i8
  %arrayidx28 = getelementptr inbounds [4 x i8], [4 x i8]* %buf, i32 0, i64 1
  store i8 %conv27, i8* %arrayidx28, align 1
  %22 = load i8*, i8** %p, align 8
  %23 = load i8, i8* %22, align 1
  %conv29 = zext i8 %23 to i32
  %shr30 = ashr i32 %conv29, 3
  %and31 = and i32 %shr30, 7
  %add32 = add nsw i32 48, %and31
  %conv33 = trunc i32 %add32 to i8
  %arrayidx34 = getelementptr inbounds [4 x i8], [4 x i8]* %buf, i32 0, i64 2
  store i8 %conv33, i8* %arrayidx34, align 1
  %24 = load i8*, i8** %p, align 8
  %25 = load i8, i8* %24, align 1
  %conv35 = zext i8 %25 to i32
  %and36 = and i32 %conv35, 7
  %add37 = add nsw i32 48, %and36
  %conv38 = trunc i32 %add37 to i8
  %arrayidx39 = getelementptr inbounds [4 x i8], [4 x i8]* %buf, i32 0, i64 3
  store i8 %conv38, i8* %arrayidx39, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.24, %sw.bb.22, %sw.bb.20, %sw.bb.18, %sw.bb.16, %sw.bb
  %26 = load %struct._GString*, %struct._GString** %string.addr, align 8
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %buf, i32 0, i32 0
  %27 = load i32, i32* %len, align 4
  %conv40 = sext i32 %27 to i64
  %call41 = call %struct._GString* @g_string_append_len(%struct._GString* %26, i8* %arraydecay, i64 %conv40)
  %28 = load i8*, i8** %p, align 8
  %add.ptr = getelementptr inbounds i8, i8* %28, i64 1
  store i8* %add.ptr, i8** %val.addr, align 8
  store i32 0, i32* %len, align 4
  br label %if.end.43

if.else.42:                                       ; preds = %lor.lhs.false.8
  %29 = load i32, i32* %len, align 4
  %inc = add nsw i32 %29, 1
  store i32 %inc, i32* %len, align 4
  br label %if.end.43

if.end.43:                                        ; preds = %if.else.42, %sw.epilog
  br label %for.inc

for.inc:                                          ; preds = %if.end.43
  %30 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %31 = load %struct._GString*, %struct._GString** %string.addr, align 8
  %32 = load i8*, i8** %val.addr, align 8
  %33 = load i32, i32* %len, align 4
  %conv44 = sext i32 %33 to i64
  %call45 = call %struct._GString* @g_string_append_len(%struct._GString* %31, i8* %32, i64 %conv44)
  %34 = load %struct._GString*, %struct._GString** %string.addr, align 8
  %call46 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %34, i8 signext 34)
  br label %if.end.49

if.else.47:                                       ; preds = %do.end
  %35 = load %struct._GString*, %struct._GString** %string.addr, align 8
  %call48 = call %struct._GString* @g_string_append_len(%struct._GString* %35, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i32 0, i32 0), i64 2)
  br label %if.end.49

if.end.49:                                        ; preds = %if.else, %if.else.47, %for.end
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

; Function Attrs: inlinehint nounwind uwtable
define internal %struct._GString* @g_string_append_c_inline(%struct._GString* %gstring, i8 signext %c) #5 {
entry:
  %gstring.addr = alloca %struct._GString*, align 8
  %c.addr = alloca i8, align 1
  store %struct._GString* %gstring, %struct._GString** %gstring.addr, align 8
  store i8 %c, i8* %c.addr, align 1
  %0 = load %struct._GString*, %struct._GString** %gstring.addr, align 8
  %len = getelementptr inbounds %struct._GString, %struct._GString* %0, i32 0, i32 1
  %1 = load i64, i64* %len, align 8
  %add = add i64 %1, 1
  %2 = load %struct._GString*, %struct._GString** %gstring.addr, align 8
  %allocated_len = getelementptr inbounds %struct._GString, %struct._GString* %2, i32 0, i32 2
  %3 = load i64, i64* %allocated_len, align 8
  %cmp = icmp ult i64 %add, %3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load i8, i8* %c.addr, align 1
  %5 = load %struct._GString*, %struct._GString** %gstring.addr, align 8
  %len1 = getelementptr inbounds %struct._GString, %struct._GString* %5, i32 0, i32 1
  %6 = load i64, i64* %len1, align 8
  %inc = add i64 %6, 1
  store i64 %inc, i64* %len1, align 8
  %7 = load %struct._GString*, %struct._GString** %gstring.addr, align 8
  %str = getelementptr inbounds %struct._GString, %struct._GString* %7, i32 0, i32 0
  %8 = load i8*, i8** %str, align 8
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %6
  store i8 %4, i8* %arrayidx, align 1
  %9 = load %struct._GString*, %struct._GString** %gstring.addr, align 8
  %len2 = getelementptr inbounds %struct._GString, %struct._GString* %9, i32 0, i32 1
  %10 = load i64, i64* %len2, align 8
  %11 = load %struct._GString*, %struct._GString** %gstring.addr, align 8
  %str3 = getelementptr inbounds %struct._GString, %struct._GString* %11, i32 0, i32 0
  %12 = load i8*, i8** %str3, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %12, i64 %10
  store i8 0, i8* %arrayidx4, align 1
  br label %if.end

if.else:                                          ; preds = %entry
  %13 = load %struct._GString*, %struct._GString** %gstring.addr, align 8
  %14 = load i8, i8* %c.addr, align 1
  %call = call %struct._GString* @g_string_insert_c(%struct._GString* %13, i64 -1, i8 signext %14)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %15 = load %struct._GString*, %struct._GString** %gstring.addr, align 8
  ret %struct._GString* %15
}

declare %struct._GString* @g_string_append_len(%struct._GString*, i8*, i64) #2

; Function Attrs: nounwind uwtable
define internal i32 @gimp_config_diff_property(%struct._GObject* %a, %struct._GObject* %b, %struct._GParamSpec* %prop_spec) #0 {
entry:
  %a.addr = alloca %struct._GObject*, align 8
  %b.addr = alloca %struct._GObject*, align 8
  %prop_spec.addr = alloca %struct._GParamSpec*, align 8
  %a_value = alloca %struct._GValue, align 8
  %b_value = alloca %struct._GValue, align 8
  %retval1 = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GObject* %a, %struct._GObject** %a.addr, align 8
  store %struct._GObject* %b, %struct._GObject** %b.addr, align 8
  store %struct._GParamSpec* %prop_spec, %struct._GParamSpec** %prop_spec.addr, align 8
  %0 = bitcast %struct._GValue* %a_value to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 24, i32 8, i1 false)
  %1 = bitcast %struct._GValue* %b_value to i8*
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 24, i32 8, i1 false)
  store i32 0, i32* %retval1, align 4
  %2 = load %struct._GParamSpec*, %struct._GParamSpec** %prop_spec.addr, align 8
  %value_type = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %2, i32 0, i32 3
  %3 = load i64, i64* %value_type, align 8
  %call = call %struct._GValue* @g_value_init(%struct._GValue* %a_value, i64 %3)
  %4 = load %struct._GParamSpec*, %struct._GParamSpec** %prop_spec.addr, align 8
  %value_type2 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %4, i32 0, i32 3
  %5 = load i64, i64* %value_type2, align 8
  %call3 = call %struct._GValue* @g_value_init(%struct._GValue* %b_value, i64 %5)
  %6 = load %struct._GObject*, %struct._GObject** %a.addr, align 8
  %7 = load %struct._GParamSpec*, %struct._GParamSpec** %prop_spec.addr, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %7, i32 0, i32 1
  %8 = load i8*, i8** %name, align 8
  call void @g_object_get_property(%struct._GObject* %6, i8* %8, %struct._GValue* %a_value)
  %9 = load %struct._GObject*, %struct._GObject** %b.addr, align 8
  %10 = load %struct._GParamSpec*, %struct._GParamSpec** %prop_spec.addr, align 8
  %name4 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %10, i32 0, i32 1
  %11 = load i8*, i8** %name4, align 8
  call void @g_object_get_property(%struct._GObject* %9, i8* %11, %struct._GValue* %b_value)
  %12 = load %struct._GParamSpec*, %struct._GParamSpec** %prop_spec.addr, align 8
  %call5 = call i32 @g_param_values_cmp(%struct._GParamSpec* %12, %struct._GValue* %a_value, %struct._GValue* %b_value)
  %tobool = icmp ne i32 %call5, 0
  br i1 %tobool, label %if.then, label %if.end.32

if.then:                                          ; preds = %entry
  %13 = load %struct._GParamSpec*, %struct._GParamSpec** %prop_spec.addr, align 8
  %flags = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %13, i32 0, i32 2
  %14 = load i32, i32* %flags, align 4
  %and = and i32 %14, 512
  %tobool6 = icmp ne i32 %and, 0
  br i1 %tobool6, label %land.lhs.true, label %if.else.30

land.lhs.true:                                    ; preds = %if.then
  %15 = load %struct._GParamSpec*, %struct._GParamSpec** %prop_spec.addr, align 8
  %16 = bitcast %struct._GParamSpec* %15 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %16, %struct._GTypeInstance** %__inst, align 8
  %17 = load i64*, i64** @g_param_spec_types, align 8
  %arrayidx = getelementptr inbounds i64, i64* %17, i64 19
  %18 = load i64, i64* %arrayidx, align 8
  store i64 %18, i64* %__t, align 8
  %19 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool7 = icmp ne %struct._GTypeInstance* %19, null
  br i1 %tobool7, label %if.else, label %if.then.8

if.then.8:                                        ; preds = %land.lhs.true
  store i32 0, i32* %__r, align 4
  br label %if.end.15

if.else:                                          ; preds = %land.lhs.true
  %20 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %20, i32 0, i32 0
  %21 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool9 = icmp ne %struct._GTypeClass* %21, null
  br i1 %tobool9, label %land.lhs.true.10, label %if.else.13

land.lhs.true.10:                                 ; preds = %if.else
  %22 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class11 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %22, i32 0, i32 0
  %23 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class11, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %23, i32 0, i32 0
  %24 = load i64, i64* %g_type, align 8
  %25 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %24, %25
  br i1 %cmp, label %if.then.12, label %if.else.13

if.then.12:                                       ; preds = %land.lhs.true.10
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.13:                                       ; preds = %land.lhs.true.10, %if.else
  %26 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %27 = load i64, i64* %__t, align 8
  %call14 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %26, i64 %27) #6
  store i32 %call14, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.13, %if.then.12
  br label %if.end.15

if.end.15:                                        ; preds = %if.end, %if.then.8
  %28 = load i32, i32* %__r, align 4
  store i32 %28, i32* %tmp
  %29 = load i32, i32* %tmp
  %tobool16 = icmp ne i32 %29, 0
  br i1 %tobool16, label %land.lhs.true.17, label %if.else.30

land.lhs.true.17:                                 ; preds = %if.end.15
  %30 = load %struct._GParamSpec*, %struct._GParamSpec** %prop_spec.addr, align 8
  %value_type18 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %30, i32 0, i32 3
  %31 = load i64, i64* %value_type18, align 8
  %call19 = call i8* @g_type_class_peek(i64 %31)
  %call20 = call i64 @gimp_config_interface_get_type() #7
  %call21 = call i8* @g_type_interface_peek(i8* %call19, i64 %call20)
  %tobool22 = icmp ne i8* %call21, null
  br i1 %tobool22, label %if.then.23, label %if.else.30

if.then.23:                                       ; preds = %land.lhs.true.17
  %call24 = call i8* @g_value_get_object(%struct._GValue* %a_value)
  %32 = bitcast i8* %call24 to %struct._GimpConfig*
  %call25 = call i8* @g_value_get_object(%struct._GValue* %b_value)
  %33 = bitcast i8* %call25 to %struct._GimpConfig*
  %call26 = call i32 @gimp_config_is_equal_to(%struct._GimpConfig* %32, %struct._GimpConfig* %33)
  %tobool27 = icmp ne i32 %call26, 0
  br i1 %tobool27, label %if.end.29, label %if.then.28

if.then.28:                                       ; preds = %if.then.23
  store i32 1, i32* %retval1, align 4
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.28, %if.then.23
  br label %if.end.31

if.else.30:                                       ; preds = %land.lhs.true.17, %if.end.15, %if.then
  store i32 1, i32* %retval1, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.30, %if.end.29
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %entry
  call void @g_value_unset(%struct._GValue* %a_value)
  call void @g_value_unset(%struct._GValue* %b_value)
  %34 = load i32, i32* %retval1, align 4
  ret i32 %34
}

declare %struct._GList* @g_list_prepend(%struct._GList*, i8*) #2

declare i32 @g_param_values_cmp(%struct._GParamSpec*, %struct._GValue*, %struct._GValue*) #2

declare i32 @gimp_config_is_equal_to(%struct._GimpConfig*, %struct._GimpConfig*) #2

declare %struct._GString* @g_string_insert_c(%struct._GString*, i64, i8 signext) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
