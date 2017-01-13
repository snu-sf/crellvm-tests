; ModuleID = './plug-ins/print/print-utils.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GKeyFile = type opaque
%struct._GError = type { i32, i32, i8* }
%struct._GimpParasite = type { i8*, i32, i32, i8* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@__func__.print_utils_key_file_load_from_rcfile = private unnamed_addr constant [38 x i8] c"print_utils_key_file_load_from_rcfile\00", align 1
@.str = private unnamed_addr constant [17 x i8] c"basename != NULL\00", align 1
@__func__.print_utils_key_file_load_from_parasite = private unnamed_addr constant [40 x i8] c"print_utils_key_file_load_from_parasite\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"parasite_name != NULL\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"Unable to create key file from image parasite '%s': %s\00", align 1
@__func__.print_utils_key_file_save_as_rcfile = private unnamed_addr constant [36 x i8] c"print_utils_key_file_save_as_rcfile\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"Unable to get contents of key file for '%s': %s\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"Unable to write settings to '%s': %s\00", align 1
@__func__.print_utils_key_file_save_as_parasite = private unnamed_addr constant [38 x i8] c"print_utils_key_file_save_as_parasite\00", align 1
@.str.5 = private unnamed_addr constant [57 x i8] c"Unable to get contents of key file for parasite '%s': %s\00", align 1

; Function Attrs: nounwind uwtable
define %struct._GKeyFile* @print_utils_key_file_load_from_rcfile(i8* %basename) #0 {
entry:
  %retval = alloca %struct._GKeyFile*, align 8
  %basename.addr = alloca i8*, align 8
  %key_file = alloca %struct._GKeyFile*, align 8
  %filename = alloca i8*, align 8
  store i8* %basename, i8** %basename.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i8*, i8** %basename.addr, align 8
  %cmp = icmp ne i8* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__func__.print_utils_key_file_load_from_rcfile, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0))
  store %struct._GKeyFile* null, %struct._GKeyFile** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %call = call i8* @gimp_directory() #4
  %1 = load i8*, i8** %basename.addr, align 8
  %call1 = call noalias i8* (i8*, ...) @g_build_filename(i8* %call, i8* %1, i8* null)
  store i8* %call1, i8** %filename, align 8
  %call2 = call %struct._GKeyFile* @g_key_file_new()
  store %struct._GKeyFile* %call2, %struct._GKeyFile** %key_file, align 8
  %2 = load %struct._GKeyFile*, %struct._GKeyFile** %key_file, align 8
  %3 = load i8*, i8** %filename, align 8
  %call3 = call i32 @g_key_file_load_from_file(%struct._GKeyFile* %2, i8* %3, i32 0, %struct._GError** null)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.end.5, label %if.then.4

if.then.4:                                        ; preds = %do.end
  %4 = load %struct._GKeyFile*, %struct._GKeyFile** %key_file, align 8
  call void @g_key_file_free(%struct._GKeyFile* %4)
  store %struct._GKeyFile* null, %struct._GKeyFile** %key_file, align 8
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %do.end
  %5 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %5)
  %6 = load %struct._GKeyFile*, %struct._GKeyFile** %key_file, align 8
  store %struct._GKeyFile* %6, %struct._GKeyFile** %retval
  br label %return

return:                                           ; preds = %if.end.5, %if.else
  %7 = load %struct._GKeyFile*, %struct._GKeyFile** %retval
  ret %struct._GKeyFile* %7
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare noalias i8* @g_build_filename(i8*, ...) #1

; Function Attrs: nounwind readnone
declare i8* @gimp_directory() #2

declare %struct._GKeyFile* @g_key_file_new() #1

declare i32 @g_key_file_load_from_file(%struct._GKeyFile*, i8*, i32, %struct._GError**) #1

declare void @g_key_file_free(%struct._GKeyFile*) #1

declare void @g_free(i8*) #1

; Function Attrs: nounwind uwtable
define %struct._GKeyFile* @print_utils_key_file_load_from_parasite(i32 %image_ID, i8* %parasite_name) #0 {
entry:
  %retval = alloca %struct._GKeyFile*, align 8
  %image_ID.addr = alloca i32, align 4
  %parasite_name.addr = alloca i8*, align 8
  %parasite = alloca %struct._GimpParasite*, align 8
  %key_file = alloca %struct._GKeyFile*, align 8
  %error = alloca %struct._GError*, align 8
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i8* %parasite_name, i8** %parasite_name.addr, align 8
  store %struct._GError* null, %struct._GError** %error, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i8*, i8** %parasite_name.addr, align 8
  %cmp = icmp ne i8* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__func__.print_utils_key_file_load_from_parasite, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GKeyFile* null, %struct._GKeyFile** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load i32, i32* %image_ID.addr, align 4
  %2 = load i8*, i8** %parasite_name.addr, align 8
  %call = call %struct._GimpParasite* @gimp_image_get_parasite(i32 %1, i8* %2)
  store %struct._GimpParasite* %call, %struct._GimpParasite** %parasite, align 8
  %3 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  %tobool = icmp ne %struct._GimpParasite* %3, null
  br i1 %tobool, label %if.end.2, label %if.then.1

if.then.1:                                        ; preds = %do.end
  store %struct._GKeyFile* null, %struct._GKeyFile** %retval
  br label %return

if.end.2:                                         ; preds = %do.end
  %call3 = call %struct._GKeyFile* @g_key_file_new()
  store %struct._GKeyFile* %call3, %struct._GKeyFile** %key_file, align 8
  %4 = load %struct._GKeyFile*, %struct._GKeyFile** %key_file, align 8
  %5 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  %call4 = call i8* @gimp_parasite_data(%struct._GimpParasite* %5)
  %6 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  %call5 = call i64 @gimp_parasite_data_size(%struct._GimpParasite* %6)
  %call6 = call i32 @g_key_file_load_from_data(%struct._GKeyFile* %4, i8* %call4, i64 %call5, i32 0, %struct._GError** %error)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.end.9, label %if.then.8

if.then.8:                                        ; preds = %if.end.2
  %7 = load %struct._GKeyFile*, %struct._GKeyFile** %key_file, align 8
  call void @g_key_file_free(%struct._GKeyFile* %7)
  %8 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  call void @gimp_parasite_free(%struct._GimpParasite* %8)
  %9 = load i8*, i8** %parasite_name.addr, align 8
  %10 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %10, i32 0, i32 2
  %11 = load i8*, i8** %message, align 8
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i32 0, i32 0), i8* %9, i8* %11)
  %12 = load %struct._GError*, %struct._GError** %error, align 8
  call void @g_error_free(%struct._GError* %12)
  store %struct._GKeyFile* null, %struct._GKeyFile** %retval
  br label %return

if.end.9:                                         ; preds = %if.end.2
  %13 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  call void @gimp_parasite_free(%struct._GimpParasite* %13)
  %14 = load %struct._GKeyFile*, %struct._GKeyFile** %key_file, align 8
  store %struct._GKeyFile* %14, %struct._GKeyFile** %retval
  br label %return

return:                                           ; preds = %if.end.9, %if.then.8, %if.then.1, %if.else
  %15 = load %struct._GKeyFile*, %struct._GKeyFile** %retval
  ret %struct._GKeyFile* %15
}

declare %struct._GimpParasite* @gimp_image_get_parasite(i32, i8*) #1

declare i32 @g_key_file_load_from_data(%struct._GKeyFile*, i8*, i64, i32, %struct._GError**) #1

declare i8* @gimp_parasite_data(%struct._GimpParasite*) #1

declare i64 @gimp_parasite_data_size(%struct._GimpParasite*) #1

declare void @gimp_parasite_free(%struct._GimpParasite*) #1

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
  call void @g_logv(i8* null, i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

declare void @g_error_free(%struct._GError*) #1

; Function Attrs: nounwind uwtable
define void @print_utils_key_file_save_as_rcfile(%struct._GKeyFile* %key_file, i8* %basename) #0 {
entry:
  %key_file.addr = alloca %struct._GKeyFile*, align 8
  %basename.addr = alloca i8*, align 8
  %filename = alloca i8*, align 8
  %contents = alloca i8*, align 8
  %length = alloca i64, align 8
  %error = alloca %struct._GError*, align 8
  store %struct._GKeyFile* %key_file, %struct._GKeyFile** %key_file.addr, align 8
  store i8* %basename, i8** %basename.addr, align 8
  store %struct._GError* null, %struct._GError** %error, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i8*, i8** %basename.addr, align 8
  %cmp = icmp ne i8* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.print_utils_key_file_save_as_rcfile, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load %struct._GKeyFile*, %struct._GKeyFile** %key_file.addr, align 8
  %call = call noalias i8* @g_key_file_to_data(%struct._GKeyFile* %1, i64* %length, %struct._GError** %error)
  store i8* %call, i8** %contents, align 8
  %2 = load i8*, i8** %contents, align 8
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %if.end.2, label %if.then.1

if.then.1:                                        ; preds = %do.end
  %3 = load i8*, i8** %basename.addr, align 8
  %4 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %4, i32 0, i32 2
  %5 = load i8*, i8** %message, align 8
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i32 0, i32 0), i8* %3, i8* %5)
  %6 = load %struct._GError*, %struct._GError** %error, align 8
  call void @g_error_free(%struct._GError* %6)
  br label %return

if.end.2:                                         ; preds = %do.end
  %call3 = call i8* @gimp_directory() #4
  %7 = load i8*, i8** %basename.addr, align 8
  %call4 = call noalias i8* (i8*, ...) @g_build_filename(i8* %call3, i8* %7, i8* null)
  store i8* %call4, i8** %filename, align 8
  %8 = load i8*, i8** %filename, align 8
  %9 = load i8*, i8** %contents, align 8
  %10 = load i64, i64* %length, align 8
  %call5 = call i32 @g_file_set_contents(i8* %8, i8* %9, i64 %10, %struct._GError** %error)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.end.10, label %if.then.7

if.then.7:                                        ; preds = %if.end.2
  %11 = load i8*, i8** %filename, align 8
  %call8 = call i8* @gimp_filename_to_utf8(i8* %11)
  %12 = load %struct._GError*, %struct._GError** %error, align 8
  %message9 = getelementptr inbounds %struct._GError, %struct._GError* %12, i32 0, i32 2
  %13 = load i8*, i8** %message9, align 8
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i32 0, i32 0), i8* %call8, i8* %13)
  %14 = load %struct._GError*, %struct._GError** %error, align 8
  call void @g_error_free(%struct._GError* %14)
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.7, %if.end.2
  %15 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %15)
  %16 = load i8*, i8** %contents, align 8
  call void @g_free(i8* %16)
  br label %return

return:                                           ; preds = %if.end.10, %if.then.1, %if.else
  ret void
}

declare noalias i8* @g_key_file_to_data(%struct._GKeyFile*, i64*, %struct._GError**) #1

declare i32 @g_file_set_contents(i8*, i8*, i64, %struct._GError**) #1

declare i8* @gimp_filename_to_utf8(i8*) #1

; Function Attrs: nounwind uwtable
define void @print_utils_key_file_save_as_parasite(%struct._GKeyFile* %key_file, i32 %image_ID, i8* %parasite_name) #0 {
entry:
  %key_file.addr = alloca %struct._GKeyFile*, align 8
  %image_ID.addr = alloca i32, align 4
  %parasite_name.addr = alloca i8*, align 8
  %parasite = alloca %struct._GimpParasite*, align 8
  %contents = alloca i8*, align 8
  %length = alloca i64, align 8
  %error = alloca %struct._GError*, align 8
  store %struct._GKeyFile* %key_file, %struct._GKeyFile** %key_file.addr, align 8
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i8* %parasite_name, i8** %parasite_name.addr, align 8
  store %struct._GError* null, %struct._GError** %error, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i8*, i8** %parasite_name.addr, align 8
  %cmp = icmp ne i8* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__func__.print_utils_key_file_save_as_parasite, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load %struct._GKeyFile*, %struct._GKeyFile** %key_file.addr, align 8
  %call = call noalias i8* @g_key_file_to_data(%struct._GKeyFile* %1, i64* %length, %struct._GError** %error)
  store i8* %call, i8** %contents, align 8
  %2 = load i8*, i8** %contents, align 8
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %if.end.2, label %if.then.1

if.then.1:                                        ; preds = %do.end
  %3 = load i8*, i8** %parasite_name.addr, align 8
  %4 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %4, i32 0, i32 2
  %5 = load i8*, i8** %message, align 8
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.5, i32 0, i32 0), i8* %3, i8* %5)
  %6 = load %struct._GError*, %struct._GError** %error, align 8
  call void @g_error_free(%struct._GError* %6)
  br label %return

if.end.2:                                         ; preds = %do.end
  %7 = load i8*, i8** %parasite_name.addr, align 8
  %8 = load i64, i64* %length, align 8
  %conv = trunc i64 %8 to i32
  %9 = load i8*, i8** %contents, align 8
  %call3 = call %struct._GimpParasite* @gimp_parasite_new(i8* %7, i32 0, i32 %conv, i8* %9)
  store %struct._GimpParasite* %call3, %struct._GimpParasite** %parasite, align 8
  %10 = load i8*, i8** %contents, align 8
  call void @g_free(i8* %10)
  %11 = load i32, i32* %image_ID.addr, align 4
  %12 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  %call4 = call i32 @gimp_image_attach_parasite(i32 %11, %struct._GimpParasite* %12)
  %13 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  call void @gimp_parasite_free(%struct._GimpParasite* %13)
  br label %return

return:                                           ; preds = %if.end.2, %if.then.1, %if.else
  ret void
}

declare %struct._GimpParasite* @gimp_parasite_new(i8*, i32, i32, i8*) #1

declare i32 @gimp_image_attach_parasite(i32, %struct._GimpParasite*) #1

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

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
