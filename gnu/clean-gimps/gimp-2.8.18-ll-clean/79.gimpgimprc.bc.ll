; ModuleID = './libgimp/gimpgimprc.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpColorConfig = type { %struct._GObject, i32, i8*, i8*, i8*, i32, i8*, i32, i32, i8*, i32, %struct._GimpRGB, void ()*, void ()*, void ()*, void ()*, void ()*, void ()*, void ()*, void ()* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GimpRGB = type { double, double, double, double }
%struct._GError = type { i32, i32, i8* }
%struct._GimpConfig = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [8 x i8] c"LibGimp\00", align 1
@__func__.gimp_get_color_configuration = private unnamed_addr constant [29 x i8] c"gimp_get_color_configuration\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"text != NULL\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"failed to deserialize color configuration: %s\00", align 1

; Function Attrs: nounwind uwtable
define %struct._GimpColorConfig* @gimp_get_color_configuration() #0 {
entry:
  %retval = alloca %struct._GimpColorConfig*, align 8
  %config = alloca %struct._GimpColorConfig*, align 8
  %text = alloca i8*, align 8
  %error = alloca %struct._GError*, align 8
  store %struct._GError* null, %struct._GError** %error, align 8
  %call = call i8* @_gimp_get_color_configuration()
  store i8* %call, i8** %text, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i8*, i8** %text, align 8
  %cmp = icmp ne i8* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_get_color_configuration, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GimpColorConfig* null, %struct._GimpColorConfig** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %call1 = call i64 @gimp_color_config_get_type() #4
  %call2 = call i8* (i64, i8*, ...) @g_object_new(i64 %call1, i8* null)
  %1 = bitcast i8* %call2 to %struct._GimpColorConfig*
  store %struct._GimpColorConfig* %1, %struct._GimpColorConfig** %config, align 8
  %2 = load %struct._GimpColorConfig*, %struct._GimpColorConfig** %config, align 8
  %3 = bitcast %struct._GimpColorConfig* %2 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_config_interface_get_type() #4
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call3)
  %4 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpConfig*
  %5 = load i8*, i8** %text, align 8
  %call5 = call i32 @gimp_config_deserialize_string(%struct._GimpConfig* %4, i8* %5, i32 -1, i8* null, %struct._GError** %error)
  %tobool = icmp ne i32 %call5, 0
  br i1 %tobool, label %if.end.7, label %if.then.6

if.then.6:                                        ; preds = %do.end
  %6 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %6, i32 0, i32 2
  %7 = load i8*, i8** %message, align 8
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i32 0, i32 0), i8* %7)
  %8 = load %struct._GError*, %struct._GError** %error, align 8
  call void @g_error_free(%struct._GError* %8)
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %do.end
  %9 = load i8*, i8** %text, align 8
  call void @g_free(i8* %9)
  %10 = load %struct._GimpColorConfig*, %struct._GimpColorConfig** %config, align 8
  store %struct._GimpColorConfig* %10, %struct._GimpColorConfig** %retval
  br label %return

return:                                           ; preds = %if.end.7, %if.else
  %11 = load %struct._GimpColorConfig*, %struct._GimpColorConfig** %retval
  ret %struct._GimpColorConfig* %11
}

declare hidden i8* @_gimp_get_color_configuration() #1

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare i8* @g_object_new(i64, i8*, ...) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_color_config_get_type() #2

declare i32 @gimp_config_deserialize_string(%struct._GimpConfig*, i8*, i32, i8*, %struct._GError**) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_config_interface_get_type() #2

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
  call void @g_logv(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

declare void @g_error_free(%struct._GError*) #1

declare void @g_free(i8*) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #3

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
