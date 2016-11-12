; ModuleID = './plug-ins/print/print-page-setup.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GtkPrintOperation = type { %struct._GObject, %struct._GtkPrintOperationPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GtkPrintOperationPrivate = type opaque
%struct._GKeyFile = type opaque
%struct._GtkPageSetup = type opaque
%struct._GError = type { i32, i32, i8* }

@__func__.print_page_setup_load = private unnamed_addr constant [22 x i8] c"print_page_setup_load\00", align 1
@.str = private unnamed_addr constant [35 x i8] c"GTK_IS_PRINT_OPERATION (operation)\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"print-page-setup\00", align 1
@__func__.print_page_setup_save = private unnamed_addr constant [22 x i8] c"print_page_setup_save\00", align 1

; Function Attrs: nounwind uwtable
define void @print_page_setup_load(%struct._GtkPrintOperation* %operation, i32 %image_ID) #0 {
entry:
  %operation.addr = alloca %struct._GtkPrintOperation*, align 8
  %image_ID.addr = alloca i32, align 4
  %key_file = alloca %struct._GKeyFile*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %setup = alloca %struct._GtkPageSetup*, align 8
  store %struct._GtkPrintOperation* %operation, %struct._GtkPrintOperation** %operation.addr, align 8
  store i32 %image_ID, i32* %image_ID.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GtkPrintOperation*, %struct._GtkPrintOperation** %operation.addr, align 8
  %1 = bitcast %struct._GtkPrintOperation* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gtk_print_operation_get_type() #4
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #5
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
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.print_page_setup_load, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i32 0, i32 0))
  br label %if.end.23

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load i32, i32* %image_ID.addr, align 4
  %call11 = call %struct._GKeyFile* @print_utils_key_file_load_from_parasite(i32 %13, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GKeyFile* %call11, %struct._GKeyFile** %key_file, align 8
  %14 = load %struct._GKeyFile*, %struct._GKeyFile** %key_file, align 8
  %tobool12 = icmp ne %struct._GKeyFile* %14, null
  br i1 %tobool12, label %if.end.15, label %if.then.13

if.then.13:                                       ; preds = %do.end
  %call14 = call %struct._GKeyFile* @print_utils_key_file_load_from_rcfile(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GKeyFile* %call14, %struct._GKeyFile** %key_file, align 8
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.13, %do.end
  %15 = load %struct._GKeyFile*, %struct._GKeyFile** %key_file, align 8
  %tobool16 = icmp ne %struct._GKeyFile* %15, null
  br i1 %tobool16, label %if.then.17, label %if.end.23

if.then.17:                                       ; preds = %if.end.15
  %16 = load %struct._GKeyFile*, %struct._GKeyFile** %key_file, align 8
  %call19 = call %struct._GtkPageSetup* @gtk_page_setup_new_from_key_file(%struct._GKeyFile* %16, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0), %struct._GError** null)
  store %struct._GtkPageSetup* %call19, %struct._GtkPageSetup** %setup, align 8
  %17 = load %struct._GtkPageSetup*, %struct._GtkPageSetup** %setup, align 8
  %tobool20 = icmp ne %struct._GtkPageSetup* %17, null
  br i1 %tobool20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.then.17
  %18 = load %struct._GtkPrintOperation*, %struct._GtkPrintOperation** %operation.addr, align 8
  %19 = load %struct._GtkPageSetup*, %struct._GtkPageSetup** %setup, align 8
  call void @gtk_print_operation_set_default_page_setup(%struct._GtkPrintOperation* %18, %struct._GtkPageSetup* %19)
  %20 = load %struct._GtkPageSetup*, %struct._GtkPageSetup** %setup, align 8
  %21 = bitcast %struct._GtkPageSetup* %20 to i8*
  call void @g_object_unref(i8* %21)
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.21, %if.then.17
  %22 = load %struct._GKeyFile*, %struct._GKeyFile** %key_file, align 8
  call void @g_key_file_free(%struct._GKeyFile* %22)
  br label %if.end.23

if.end.23:                                        ; preds = %if.else.9, %if.end.22, %if.end.15
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gtk_print_operation_get_type() #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #3

declare %struct._GKeyFile* @print_utils_key_file_load_from_parasite(i32, i8*) #3

declare %struct._GKeyFile* @print_utils_key_file_load_from_rcfile(i8*) #3

declare %struct._GtkPageSetup* @gtk_page_setup_new_from_key_file(%struct._GKeyFile*, i8*, %struct._GError**) #3

declare void @gtk_print_operation_set_default_page_setup(%struct._GtkPrintOperation*, %struct._GtkPageSetup*) #3

declare void @g_object_unref(i8*) #3

declare void @g_key_file_free(%struct._GKeyFile*) #3

; Function Attrs: nounwind uwtable
define void @print_page_setup_save(%struct._GtkPrintOperation* %operation, i32 %image_ID) #0 {
entry:
  %operation.addr = alloca %struct._GtkPrintOperation*, align 8
  %image_ID.addr = alloca i32, align 4
  %setup = alloca %struct._GtkPageSetup*, align 8
  %key_file = alloca %struct._GKeyFile*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GtkPrintOperation* %operation, %struct._GtkPrintOperation** %operation.addr, align 8
  store i32 %image_ID, i32* %image_ID.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GtkPrintOperation*, %struct._GtkPrintOperation** %operation.addr, align 8
  %1 = bitcast %struct._GtkPrintOperation* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gtk_print_operation_get_type() #4
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #5
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
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.print_page_setup_save, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %call11 = call %struct._GKeyFile* @g_key_file_new()
  store %struct._GKeyFile* %call11, %struct._GKeyFile** %key_file, align 8
  %13 = load %struct._GtkPrintOperation*, %struct._GtkPrintOperation** %operation.addr, align 8
  %call12 = call %struct._GtkPageSetup* @gtk_print_operation_get_default_page_setup(%struct._GtkPrintOperation* %13)
  store %struct._GtkPageSetup* %call12, %struct._GtkPageSetup** %setup, align 8
  %14 = load %struct._GtkPageSetup*, %struct._GtkPageSetup** %setup, align 8
  %15 = load %struct._GKeyFile*, %struct._GKeyFile** %key_file, align 8
  call void @gtk_page_setup_to_key_file(%struct._GtkPageSetup* %14, %struct._GKeyFile* %15, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0))
  %16 = load %struct._GKeyFile*, %struct._GKeyFile** %key_file, align 8
  %17 = load i32, i32* %image_ID.addr, align 4
  call void @print_utils_key_file_save_as_parasite(%struct._GKeyFile* %16, i32 %17, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0))
  %18 = load %struct._GKeyFile*, %struct._GKeyFile** %key_file, align 8
  call void @print_utils_key_file_save_as_rcfile(%struct._GKeyFile* %18, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0))
  %19 = load %struct._GKeyFile*, %struct._GKeyFile** %key_file, align 8
  call void @g_key_file_free(%struct._GKeyFile* %19)
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

declare %struct._GKeyFile* @g_key_file_new() #3

declare %struct._GtkPageSetup* @gtk_print_operation_get_default_page_setup(%struct._GtkPrintOperation*) #3

declare void @gtk_page_setup_to_key_file(%struct._GtkPageSetup*, %struct._GKeyFile*, i8*) #3

declare void @print_utils_key_file_save_as_parasite(%struct._GKeyFile*, i32, i8*) #3

declare void @print_utils_key_file_save_as_rcfile(%struct._GKeyFile*, i8*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
