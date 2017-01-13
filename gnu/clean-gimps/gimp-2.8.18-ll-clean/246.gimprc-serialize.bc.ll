; ModuleID = './app/config/gimprc-serialize.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpConfig = type opaque
%struct._GimpConfigWriter = type opaque
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
%struct._GData = type opaque
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }

@.str = private unnamed_addr constant [12 x i8] c"Gimp-Config\00", align 1
@__func__.gimp_rc_serialize_properties_diff = private unnamed_addr constant [34 x i8] c"gimp_rc_serialize_properties_diff\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"G_IS_OBJECT (config)\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"G_IS_OBJECT (compare)\00", align 1
@.str.3 = private unnamed_addr constant [64 x i8] c"G_TYPE_FROM_INSTANCE (config) == G_TYPE_FROM_INSTANCE (compare)\00", align 1
@__func__.gimp_rc_serialize_unknown_tokens = private unnamed_addr constant [33 x i8] c"gimp_rc_serialize_unknown_tokens\00", align 1

; Function Attrs: nounwind uwtable
define i32 @gimp_rc_serialize(%struct._GimpConfig* %config, %struct._GimpConfigWriter* %writer, i8* %data) #0 {
entry:
  %retval = alloca i32, align 4
  %config.addr = alloca %struct._GimpConfig*, align 8
  %writer.addr = alloca %struct._GimpConfigWriter*, align 8
  %data.addr = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpConfig* %config, %struct._GimpConfig** %config.addr, align 8
  store %struct._GimpConfigWriter* %writer, %struct._GimpConfigWriter** %writer.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %land.lhs.true, label %if.else.15

land.lhs.true:                                    ; preds = %entry
  %1 = load i8*, i8** %data.addr, align 8
  %2 = bitcast i8* %1 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %2, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_rc_get_type() #4
  store i64 %call, i64* %__t, align 8
  %3 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool1 = icmp ne %struct._GTypeInstance* %3, null
  br i1 %tobool1, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true
  store i32 0, i32* %__r, align 4
  br label %if.end.8

if.else:                                          ; preds = %land.lhs.true
  %4 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %4, i32 0, i32 0
  %5 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool2 = icmp ne %struct._GTypeClass* %5, null
  br i1 %tobool2, label %land.lhs.true.3, label %if.else.6

land.lhs.true.3:                                  ; preds = %if.else
  %6 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class4 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %6, i32 0, i32 0
  %7 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class4, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %7, i32 0, i32 0
  %8 = load i64, i64* %g_type, align 8
  %9 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %8, %9
  br i1 %cmp, label %if.then.5, label %if.else.6

if.then.5:                                        ; preds = %land.lhs.true.3
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.6:                                        ; preds = %land.lhs.true.3, %if.else
  %10 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %11 = load i64, i64* %__t, align 8
  %call7 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %10, i64 %11) #5
  store i32 %call7, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.6, %if.then.5
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %if.then
  %12 = load i32, i32* %__r, align 4
  store i32 %12, i32* %tmp
  %13 = load i32, i32* %tmp
  %tobool9 = icmp ne i32 %13, 0
  br i1 %tobool9, label %if.then.10, label %if.else.15

if.then.10:                                       ; preds = %if.end.8
  %14 = load %struct._GimpConfig*, %struct._GimpConfig** %config.addr, align 8
  %15 = load i8*, i8** %data.addr, align 8
  %16 = bitcast i8* %15 to %struct._GimpConfig*
  %17 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %call11 = call i32 @gimp_rc_serialize_properties_diff(%struct._GimpConfig* %14, %struct._GimpConfig* %16, %struct._GimpConfigWriter* %17)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.end.14, label %if.then.13

if.then.13:                                       ; preds = %if.then.10
  store i32 0, i32* %retval
  br label %return

if.end.14:                                        ; preds = %if.then.10
  br label %if.end.20

if.else.15:                                       ; preds = %if.end.8, %entry
  %18 = load %struct._GimpConfig*, %struct._GimpConfig** %config.addr, align 8
  %19 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %call16 = call i32 @gimp_config_serialize_properties(%struct._GimpConfig* %18, %struct._GimpConfigWriter* %19)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.end.19, label %if.then.18

if.then.18:                                       ; preds = %if.else.15
  store i32 0, i32* %retval
  br label %return

if.end.19:                                        ; preds = %if.else.15
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.19, %if.end.14
  %20 = load %struct._GimpConfig*, %struct._GimpConfig** %config.addr, align 8
  %21 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %call21 = call i32 @gimp_rc_serialize_unknown_tokens(%struct._GimpConfig* %20, %struct._GimpConfigWriter* %21)
  store i32 %call21, i32* %retval
  br label %return

return:                                           ; preds = %if.end.20, %if.then.18, %if.then.13
  %22 = load i32, i32* %retval
  ret i32 %22
}

; Function Attrs: nounwind readnone
declare i64 @gimp_rc_get_type() #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #2

; Function Attrs: nounwind uwtable
define internal i32 @gimp_rc_serialize_properties_diff(%struct._GimpConfig* %config, %struct._GimpConfig* %compare, %struct._GimpConfigWriter* %writer) #0 {
entry:
  %retval = alloca i32, align 4
  %config.addr = alloca %struct._GimpConfig*, align 8
  %compare.addr = alloca %struct._GimpConfig*, align 8
  %writer.addr = alloca %struct._GimpConfigWriter*, align 8
  %diff = alloca %struct._GList*, align 8
  %list = alloca %struct._GList*, align 8
  %retval1 = alloca i32, align 4
  %prop_spec = alloca %struct._GParamSpec*, align 8
  store %struct._GimpConfig* %config, %struct._GimpConfig** %config.addr, align 8
  store %struct._GimpConfig* %compare, %struct._GimpConfig** %compare.addr, align 8
  store %struct._GimpConfigWriter* %writer, %struct._GimpConfigWriter** %writer.addr, align 8
  store i32 1, i32* %retval1, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpConfig*, %struct._GimpConfig** %config.addr, align 8
  %1 = bitcast %struct._GimpConfig* %0 to %struct._GTypeInstance*
  %call = call i32 @g_type_check_instance_is_fundamentally_a(%struct._GTypeInstance* %1, i64 80) #5
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_rc_serialize_properties_diff, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.2

do.body.2:                                        ; preds = %do.end
  %2 = load %struct._GimpConfig*, %struct._GimpConfig** %compare.addr, align 8
  %3 = bitcast %struct._GimpConfig* %2 to %struct._GTypeInstance*
  %call3 = call i32 @g_type_check_instance_is_fundamentally_a(%struct._GTypeInstance* %3, i64 80) #5
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.then.5, label %if.else.6

if.then.5:                                        ; preds = %do.body.2
  br label %if.end.7

if.else.6:                                        ; preds = %do.body.2
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_rc_serialize_properties_diff, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.7:                                         ; preds = %if.then.5
  br label %do.end.8

do.end.8:                                         ; preds = %if.end.7
  br label %do.body.9

do.body.9:                                        ; preds = %do.end.8
  %4 = load %struct._GimpConfig*, %struct._GimpConfig** %config.addr, align 8
  %5 = bitcast %struct._GimpConfig* %4 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %5, i32 0, i32 0
  %6 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %6, i32 0, i32 0
  %7 = load i64, i64* %g_type, align 8
  %8 = load %struct._GimpConfig*, %struct._GimpConfig** %compare.addr, align 8
  %9 = bitcast %struct._GimpConfig* %8 to %struct._GTypeInstance*
  %g_class10 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %9, i32 0, i32 0
  %10 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class10, align 8
  %g_type11 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %10, i32 0, i32 0
  %11 = load i64, i64* %g_type11, align 8
  %cmp = icmp eq i64 %7, %11
  br i1 %cmp, label %if.then.12, label %if.else.13

if.then.12:                                       ; preds = %do.body.9
  br label %if.end.14

if.else.13:                                       ; preds = %do.body.9
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_rc_serialize_properties_diff, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.3, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.14:                                        ; preds = %if.then.12
  br label %do.end.15

do.end.15:                                        ; preds = %if.end.14
  %12 = load %struct._GimpConfig*, %struct._GimpConfig** %config.addr, align 8
  %13 = bitcast %struct._GimpConfig* %12 to %struct._GTypeInstance*
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 80)
  %14 = bitcast %struct._GTypeInstance* %call16 to %struct._GObject*
  %15 = load %struct._GimpConfig*, %struct._GimpConfig** %compare.addr, align 8
  %16 = bitcast %struct._GimpConfig* %15 to %struct._GTypeInstance*
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 80)
  %17 = bitcast %struct._GTypeInstance* %call17 to %struct._GObject*
  %call18 = call %struct._GList* @gimp_config_diff(%struct._GObject* %14, %struct._GObject* %17, i32 256)
  store %struct._GList* %call18, %struct._GList** %diff, align 8
  %18 = load %struct._GList*, %struct._GList** %diff, align 8
  store %struct._GList* %18, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %do.end.15
  %19 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool19 = icmp ne %struct._GList* %19, null
  br i1 %tobool19, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %20 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %20, i32 0, i32 0
  %21 = load i8*, i8** %data, align 8
  %22 = bitcast i8* %21 to %struct._GParamSpec*
  store %struct._GParamSpec* %22, %struct._GParamSpec** %prop_spec, align 8
  %23 = load %struct._GParamSpec*, %struct._GParamSpec** %prop_spec, align 8
  %flags = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %23, i32 0, i32 2
  %24 = load i32, i32* %flags, align 4
  %and = and i32 %24, 256
  %tobool20 = icmp ne i32 %and, 0
  br i1 %tobool20, label %if.end.22, label %if.then.21

if.then.21:                                       ; preds = %for.body
  br label %for.inc

if.end.22:                                        ; preds = %for.body
  %25 = load %struct._GimpConfig*, %struct._GimpConfig** %config.addr, align 8
  %26 = load %struct._GParamSpec*, %struct._GParamSpec** %prop_spec, align 8
  %27 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %call23 = call i32 @gimp_config_serialize_property(%struct._GimpConfig* %25, %struct._GParamSpec* %26, %struct._GimpConfigWriter* %27)
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %if.end.26, label %if.then.25

if.then.25:                                       ; preds = %if.end.22
  store i32 0, i32* %retval1, align 4
  br label %for.end

if.end.26:                                        ; preds = %if.end.22
  br label %for.inc

for.inc:                                          ; preds = %if.end.26, %if.then.21
  %28 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool27 = icmp ne %struct._GList* %28, null
  br i1 %tobool27, label %cond.true, label %cond.false

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

for.end:                                          ; preds = %if.then.25, %for.cond
  %31 = load %struct._GList*, %struct._GList** %diff, align 8
  call void @g_list_free(%struct._GList* %31)
  %32 = load i32, i32* %retval1, align 4
  store i32 %32, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.else.13, %if.else.6, %if.else
  %33 = load i32, i32* %retval
  ret i32 %33
}

declare i32 @gimp_config_serialize_properties(%struct._GimpConfig*, %struct._GimpConfigWriter*) #3

; Function Attrs: nounwind uwtable
define internal i32 @gimp_rc_serialize_unknown_tokens(%struct._GimpConfig* %config, %struct._GimpConfigWriter* %writer) #0 {
entry:
  %retval = alloca i32, align 4
  %config.addr = alloca %struct._GimpConfig*, align 8
  %writer.addr = alloca %struct._GimpConfigWriter*, align 8
  store %struct._GimpConfig* %config, %struct._GimpConfig** %config.addr, align 8
  store %struct._GimpConfigWriter* %writer, %struct._GimpConfigWriter** %writer.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpConfig*, %struct._GimpConfig** %config.addr, align 8
  %1 = bitcast %struct._GimpConfig* %0 to %struct._GTypeInstance*
  %call = call i32 @g_type_check_instance_is_fundamentally_a(%struct._GTypeInstance* %1, i64 80) #5
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_rc_serialize_unknown_tokens, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %2 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  call void @gimp_config_writer_linefeed(%struct._GimpConfigWriter* %2)
  %3 = load %struct._GimpConfig*, %struct._GimpConfig** %config.addr, align 8
  %4 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %5 = bitcast %struct._GimpConfigWriter* %4 to i8*
  call void @gimp_rc_foreach_unknown_token(%struct._GimpConfig* %3, void (i8*, i8*, i8*)* @serialize_unknown_token, i8* %5)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else
  %6 = load i32, i32* %retval
  ret i32 %6
}

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_fundamentally_a(%struct._GTypeInstance*, i64) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #3

declare %struct._GList* @gimp_config_diff(%struct._GObject*, %struct._GObject*, i32) #3

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #3

declare i32 @gimp_config_serialize_property(%struct._GimpConfig*, %struct._GParamSpec*, %struct._GimpConfigWriter*) #3

declare void @g_list_free(%struct._GList*) #3

declare void @gimp_config_writer_linefeed(%struct._GimpConfigWriter*) #3

declare void @gimp_rc_foreach_unknown_token(%struct._GimpConfig*, void (i8*, i8*, i8*)*, i8*) #3

; Function Attrs: nounwind uwtable
define internal void @serialize_unknown_token(i8* %key, i8* %value, i8* %data) #0 {
entry:
  %key.addr = alloca i8*, align 8
  %value.addr = alloca i8*, align 8
  %data.addr = alloca i8*, align 8
  %writer = alloca %struct._GimpConfigWriter*, align 8
  store i8* %key, i8** %key.addr, align 8
  store i8* %value, i8** %value.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GimpConfigWriter*
  store %struct._GimpConfigWriter* %1, %struct._GimpConfigWriter** %writer, align 8
  %2 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer, align 8
  %3 = load i8*, i8** %key.addr, align 8
  call void @gimp_config_writer_open(%struct._GimpConfigWriter* %2, i8* %3)
  %4 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer, align 8
  %5 = load i8*, i8** %value.addr, align 8
  call void @gimp_config_writer_string(%struct._GimpConfigWriter* %4, i8* %5)
  %6 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer, align 8
  call void @gimp_config_writer_close(%struct._GimpConfigWriter* %6)
  ret void
}

declare void @gimp_config_writer_open(%struct._GimpConfigWriter*, i8*) #3

declare void @gimp_config_writer_string(%struct._GimpConfigWriter*, i8*) #3

declare void @gimp_config_writer_close(%struct._GimpConfigWriter*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
