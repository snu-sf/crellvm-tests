; ModuleID = './app/core/gimpdynamics-load.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpContext = type opaque
%struct._GError = type { i32, i32, i8* }
%struct._GimpDynamics = type { %struct._GimpData }
%struct._GimpData = type { %struct._GimpViewable }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GimpObjectPrivate = type opaque
%struct._GimpConfig = type opaque

@.str = private unnamed_addr constant [10 x i8] c"Gimp-Core\00", align 1
@__func__.gimp_dynamics_load = private unnamed_addr constant [19 x i8] c"gimp_dynamics_load\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"filename != NULL\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"g_path_is_absolute (filename)\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"error == NULL || *error == NULL\00", align 1

; Function Attrs: nounwind uwtable
define %struct._GList* @gimp_dynamics_load(%struct._GimpContext* %context, i8* %filename, %struct._GError** %error) #0 {
entry:
  %retval = alloca %struct._GList*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %filename.addr = alloca i8*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %dynamics = alloca %struct._GimpDynamics*, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i8*, i8** %filename.addr, align 8
  %cmp = icmp ne i8* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gimp_dynamics_load, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GList* null, %struct._GList** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load i8*, i8** %filename.addr, align 8
  %call = call i32 @g_path_is_absolute(i8* %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.2, label %if.else.3

if.then.2:                                        ; preds = %do.body.1
  br label %if.end.4

if.else.3:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gimp_dynamics_load, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GList* null, %struct._GList** %retval
  br label %return

if.end.4:                                         ; preds = %if.then.2
  br label %do.end.5

do.end.5:                                         ; preds = %if.end.4
  br label %do.body.6

do.body.6:                                        ; preds = %do.end.5
  %2 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %cmp7 = icmp eq %struct._GError** %2, null
  br i1 %cmp7, label %if.then.9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.6
  %3 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %4 = load %struct._GError*, %struct._GError** %3, align 8
  %cmp8 = icmp eq %struct._GError* %4, null
  br i1 %cmp8, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %lor.lhs.false, %do.body.6
  br label %if.end.11

if.else.10:                                       ; preds = %lor.lhs.false
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gimp_dynamics_load, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GList* null, %struct._GList** %retval
  br label %return

if.end.11:                                        ; preds = %if.then.9
  br label %do.end.12

do.end.12:                                        ; preds = %if.end.11
  %call13 = call i64 @gimp_dynamics_get_type() #3
  %call14 = call i8* (i64, i8*, ...) @g_object_new(i64 %call13, i8* null)
  %5 = bitcast i8* %call14 to %struct._GimpDynamics*
  store %struct._GimpDynamics* %5, %struct._GimpDynamics** %dynamics, align 8
  %6 = load %struct._GimpDynamics*, %struct._GimpDynamics** %dynamics, align 8
  %7 = bitcast %struct._GimpDynamics* %6 to %struct._GTypeInstance*
  %call15 = call i64 @gimp_config_interface_get_type() #3
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call15)
  %8 = bitcast %struct._GTypeInstance* %call16 to %struct._GimpConfig*
  %9 = load i8*, i8** %filename.addr, align 8
  %10 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call17 = call i32 @gimp_config_deserialize_file(%struct._GimpConfig* %8, i8* %9, i8* null, %struct._GError** %10)
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.then.19, label %if.end.21

if.then.19:                                       ; preds = %do.end.12
  %11 = load %struct._GimpDynamics*, %struct._GimpDynamics** %dynamics, align 8
  %12 = bitcast %struct._GimpDynamics* %11 to i8*
  %call20 = call %struct._GList* @g_list_prepend(%struct._GList* null, i8* %12)
  store %struct._GList* %call20, %struct._GList** %retval
  br label %return

if.end.21:                                        ; preds = %do.end.12
  %13 = load %struct._GimpDynamics*, %struct._GimpDynamics** %dynamics, align 8
  %14 = bitcast %struct._GimpDynamics* %13 to i8*
  call void @g_object_unref(i8* %14)
  store %struct._GList* null, %struct._GList** %retval
  br label %return

return:                                           ; preds = %if.end.21, %if.then.19, %if.else.10, %if.else.3, %if.else
  %15 = load %struct._GList*, %struct._GList** %retval
  ret %struct._GList* %15
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare i32 @g_path_is_absolute(i8*) #1

declare i8* @g_object_new(i64, i8*, ...) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_dynamics_get_type() #2

declare i32 @gimp_config_deserialize_file(%struct._GimpConfig*, i8*, i8*, %struct._GError**) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_config_interface_get_type() #2

declare %struct._GList* @g_list_prepend(%struct._GList*, i8*) #1

declare void @g_object_unref(i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
