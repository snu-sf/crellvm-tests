; ModuleID = './app/tests.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GimpObjectPrivate = type opaque
%struct._GimpCoreConfig = type opaque
%struct._GimpGui = type { void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*, %struct._GObject*, i32, i8*, i8*)*, void (%struct._Gimp*, %struct._GimpProgress*, i8*, i8*)*, i8* (%struct._Gimp*)*, i8* (%struct._Gimp*, i32, i32*)*, i32 (%struct._Gimp*)*, i8* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*, i32)*, i32 (%struct._GimpObject*)*, i32 (%struct._GimpObject*)*, %struct._GimpObject* (%struct._Gimp*, %struct._GimpImage*, i32, double)*, void (%struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpImage*, %struct._GimpImage*)*, %struct._GimpProgress* (%struct._Gimp*, %struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpProgress*)*, i32 (%struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GimpContainer*, i8*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*)*, i32 (%struct._Gimp*, i8*, i8*)*, void (%struct._Gimp*)* }
%struct._GimpProgress = type opaque
%struct._GimpImage = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GimpParasiteList = type opaque
%struct._GimpPaintInfo = type opaque
%struct._GimpModuleDB = type opaque
%struct._GimpPlugInManager = type opaque
%struct._GimpIdTable = type opaque
%struct._GimpBuffer = type opaque
%struct._GimpDataFactory = type opaque
%struct._GimpTagCache = type opaque
%struct._GimpPDB = type opaque
%struct._GimpToolInfo = type opaque
%struct._GimpContainer = type opaque
%struct._GimpTemplate = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpContext = type opaque
%struct._GimpBaseConfig = type { %struct._GObject, i8*, i8*, i32, i64 }
%struct._GMainLoop = type opaque
%struct._GMainContext = type opaque

@.str = private unnamed_addr constant [17 x i8] c"Unit Tested GIMP\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"DISPLAY\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"No DISPLAY set, not running UI tests\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"Gimp\00", align 1

; Function Attrs: nounwind uwtable
define %struct._Gimp* @gimp_init_for_testing() #0 {
entry:
  %gimp = alloca %struct._Gimp*, align 8
  call void @gimp_log_init()
  %call = call %struct._Gimp* @gimp_new(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i8* null, i32 0, i32 1, i32 1, i32 1, i32 0, i32 1, i32 1, i32 0)
  store %struct._Gimp* %call, %struct._Gimp** %gimp, align 8
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  call void @units_init(%struct._Gimp* %0)
  %1 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  call void @gimp_load_config(%struct._Gimp* %1, i8* null, i8* null)
  %2 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %config = getelementptr inbounds %struct._Gimp, %struct._Gimp* %2, i32 0, i32 1
  %3 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config, align 8
  %4 = bitcast %struct._GimpCoreConfig* %3 to %struct._GTypeInstance*
  %call1 = call i64 @gimp_base_config_get_type() #5
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call1)
  %5 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpBaseConfig*
  %call3 = call i32 @base_init(%struct._GimpBaseConfig* %5, i32 0, i32 0)
  %6 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  call void @gimp_initialize(%struct._Gimp* %6, void (i8*, i8*, double)* @gimp_status_func_dummy)
  %7 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  call void @gimp_restore(%struct._Gimp* %7, void (i8*, i8*, double)* @gimp_status_func_dummy)
  %8 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  ret %struct._Gimp* %8
}

declare void @gimp_log_init() #1

declare %struct._Gimp* @gimp_new(i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare void @units_init(%struct._Gimp*) #1

declare void @gimp_load_config(%struct._Gimp*, i8*, i8*) #1

declare i32 @base_init(%struct._GimpBaseConfig*, i32, i32) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_base_config_get_type() #2

declare void @gimp_initialize(%struct._Gimp*, void (i8*, i8*, double)*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_status_func_dummy(i8* %text1, i8* %text2, double %percentage) #0 {
entry:
  %text1.addr = alloca i8*, align 8
  %text2.addr = alloca i8*, align 8
  %percentage.addr = alloca double, align 8
  store i8* %text1, i8** %text1.addr, align 8
  store i8* %text2, i8** %text2.addr, align 8
  store double %percentage, double* %percentage.addr, align 8
  ret void
}

declare void @gimp_restore(%struct._Gimp*, void (i8*, i8*, double)*) #1

; Function Attrs: nounwind uwtable
define void @gimp_test_run_temp_mainloop(i32 %running_time) #0 {
entry:
  %running_time.addr = alloca i32, align 4
  %loop = alloca %struct._GMainLoop*, align 8
  store i32 %running_time, i32* %running_time.addr, align 4
  %call = call %struct._GMainLoop* @g_main_loop_new(%struct._GMainContext* null, i32 0)
  store %struct._GMainLoop* %call, %struct._GMainLoop** %loop, align 8
  %0 = load i32, i32* %running_time.addr, align 4
  %1 = load %struct._GMainLoop*, %struct._GMainLoop** %loop, align 8
  %2 = bitcast %struct._GMainLoop* %1 to i8*
  %call1 = call i32 @g_timeout_add(i32 %0, i32 (i8*)* bitcast (i32 (%struct._GMainLoop*)* @gimp_tests_quit_mainloop to i32 (i8*)*), i8* %2)
  %3 = load %struct._GMainLoop*, %struct._GMainLoop** %loop, align 8
  call void @g_main_loop_run(%struct._GMainLoop* %3)
  %4 = load %struct._GMainLoop*, %struct._GMainLoop** %loop, align 8
  call void @g_main_loop_unref(%struct._GMainLoop* %4)
  ret void
}

declare %struct._GMainLoop* @g_main_loop_new(%struct._GMainContext*, i32) #1

declare i32 @g_timeout_add(i32, i32 (i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_tests_quit_mainloop(%struct._GMainLoop* %loop) #0 {
entry:
  %loop.addr = alloca %struct._GMainLoop*, align 8
  store %struct._GMainLoop* %loop, %struct._GMainLoop** %loop.addr, align 8
  %0 = load %struct._GMainLoop*, %struct._GMainLoop** %loop.addr, align 8
  call void @g_main_loop_quit(%struct._GMainLoop* %0)
  ret i32 0
}

declare void @g_main_loop_run(%struct._GMainLoop*) #1

declare void @g_main_loop_unref(%struct._GMainLoop*) #1

; Function Attrs: nounwind uwtable
define void @gimp_test_run_mainloop_until_idle() #0 {
entry:
  %loop = alloca %struct._GMainLoop*, align 8
  %call = call %struct._GMainLoop* @g_main_loop_new(%struct._GMainContext* null, i32 0)
  store %struct._GMainLoop* %call, %struct._GMainLoop** %loop, align 8
  %0 = load %struct._GMainLoop*, %struct._GMainLoop** %loop, align 8
  %1 = bitcast %struct._GMainLoop* %0 to i8*
  %call1 = call i32 @g_idle_add(i32 (i8*)* bitcast (i32 (%struct._GMainLoop*)* @gimp_tests_quit_mainloop to i32 (i8*)*), i8* %1)
  %2 = load %struct._GMainLoop*, %struct._GMainLoop** %loop, align 8
  call void @g_main_loop_run(%struct._GMainLoop* %2)
  %3 = load %struct._GMainLoop*, %struct._GMainLoop** %loop, align 8
  call void @g_main_loop_unref(%struct._GMainLoop* %3)
  ret void
}

declare i32 @g_idle_add(i32 (i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define void @gimp_test_bail_if_no_display() #0 {
entry:
  %call = call i8* @g_getenv(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0))
  %tobool = icmp ne i8* %call, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void (i8*, ...) @g_message(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i32 0, i32 0))
  call void @exit(i32 0) #6
  unreachable

if.end:                                           ; preds = %entry
  ret void
}

declare i8* @g_getenv(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @g_message(i8* %format, ...) #0 {
entry:
  %format.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %format, i8** %format.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i8*, i8** %format.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  call void @g_logv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i32 32, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

declare void @g_main_loop_quit(%struct._GMainLoop*) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #4

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone }
attributes #6 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
