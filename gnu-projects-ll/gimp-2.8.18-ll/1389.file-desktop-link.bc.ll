; ModuleID = './plug-ins/common/file-desktop-link.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpPlugInInfo = type { void ()*, void ()*, void ()*, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* }
%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpParamDef = type { i32, i8*, i8* }
%struct._GError = type { i32, i32, i8* }
%struct._GKeyFile = type opaque

@PLUG_IN_INFO = constant %struct._GimpPlugInInfo { void ()* null, void ()* null, void ()* @query, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* @run }, align 8
@query.load_args = internal constant [3 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i32 0, i32 0) }, %struct._GimpParamDef { i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i32 0, i32 0) }, %struct._GimpParamDef { i32 4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0) }], align 16
@.str = private unnamed_addr constant [9 x i8] c"run-mode\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"The run mode { RUN-INTERACTIVE (0), RUN-NONINTERACTIVE (1) }\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"filename\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"The name of the file to load\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"raw-filename\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"The name entered\00", align 1
@query.load_return_vals = internal constant [1 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0) }], align 16
@.str.6 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"Output image\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"file-desktop-link-load\00", align 1
@.str.9 = private unnamed_addr constant [46 x i8] c"Follows a link to an image in a .desktop file\00", align 1
@.str.10 = private unnamed_addr constant [93 x i8] c"Opens a .desktop file and if it is a link, it asks GIMP to open the file the link points to.\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"Sven Neumann\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"2006\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"Desktop Link\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"desktop\00", align 1
@.str.15 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@run.values = internal global [2 x %struct._GimpParam] zeroinitializer, align 16
@.str.16 = private unnamed_addr constant [14 x i8] c"Desktop Entry\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"Type\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"Link\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"URL\00", align 1
@.str.20 = private unnamed_addr constant [36 x i8] c"Error loading desktop file '%s': %s\00", align 1

; Function Attrs: nounwind uwtable
define internal void @query() #0 {
entry:
  call void @gimp_install_procedure(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0), i8* null, i32 1, i32 3, i32 1, %struct._GimpParamDef* getelementptr inbounds ([3 x %struct._GimpParamDef], [3 x %struct._GimpParamDef]* @query.load_args, i32 0, i32 0), %struct._GimpParamDef* getelementptr inbounds ([1 x %struct._GimpParamDef], [1 x %struct._GimpParamDef]* @query.load_return_vals, i32 0, i32 0))
  %call = call i32 @gimp_register_load_handler(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @run(i8* %name, i32 %nparams, %struct._GimpParam* %param, i32* %nreturn_vals, %struct._GimpParam** %return_vals) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %nparams.addr = alloca i32, align 4
  %param.addr = alloca %struct._GimpParam*, align 8
  %nreturn_vals.addr = alloca i32*, align 8
  %return_vals.addr = alloca %struct._GimpParam**, align 8
  %run_mode = alloca i32, align 4
  %status = alloca i32, align 4
  %error = alloca %struct._GError*, align 8
  %image_ID = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 8
  store i32 %nparams, i32* %nparams.addr, align 4
  store %struct._GimpParam* %param, %struct._GimpParam** %param.addr, align 8
  store i32* %nreturn_vals, i32** %nreturn_vals.addr, align 8
  store %struct._GimpParam** %return_vals, %struct._GimpParam*** %return_vals.addr, align 8
  store i32 0, i32* %status, align 4
  store %struct._GError* null, %struct._GError** %error, align 8
  %0 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %0, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_int32 = bitcast %union._GimpParamData* %data to i32*
  %1 = load i32, i32* %d_int32, align 4
  store i32 %1, i32* %run_mode, align 4
  %2 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 1, i32* %2, align 4
  %3 = load %struct._GimpParam**, %struct._GimpParam*** %return_vals.addr, align 8
  store %struct._GimpParam* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i32 0), %struct._GimpParam** %3, align 8
  store i32 21, i32* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 0), align 4
  %4 = load i32, i32* %status, align 4
  store i32 %4, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  %5 = load i8*, i8** %name.addr, align 8
  %call = call i32 @strcmp(i8* %5, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i32 0, i32 0)) #4
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.else.8

if.then:                                          ; preds = %entry
  %6 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx1 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %6, i64 1
  %data2 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx1, i32 0, i32 1
  %d_string = bitcast %union._GimpParamData* %data2 to i8**
  %7 = load i8*, i8** %d_string, align 8
  %8 = load i32, i32* %run_mode, align 4
  %call3 = call i32 @load_image(i8* %7, i32 %8, %struct._GError** %error)
  store i32 %call3, i32* %image_ID, align 4
  %9 = load i32, i32* %image_ID, align 4
  %cmp4 = icmp ne i32 %9, -1
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.then
  store i32 3, i32* %status, align 4
  %10 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 2, i32* %10, align 4
  store i32 13, i32* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 1, i32 0), align 4
  %11 = load i32, i32* %image_ID, align 4
  store i32 %11, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 1, i32 1) to i32*), align 4
  br label %if.end.7

if.else:                                          ; preds = %if.then
  %12 = load %struct._GError*, %struct._GError** %error, align 8
  %tobool = icmp ne %struct._GError* %12, null
  br i1 %tobool, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.else
  %13 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 2, i32* %13, align 4
  store i32 4, i32* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 1, i32 0), align 4
  %14 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %14, i32 0, i32 2
  %15 = load i8*, i8** %message, align 8
  store i8* %15, i8** bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 1, i32 1) to i8**), align 8
  br label %if.end

if.end:                                           ; preds = %if.then.6, %if.else
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %if.then.5
  br label %if.end.9

if.else.8:                                        ; preds = %entry
  store i32 1, i32* %status, align 4
  br label %if.end.9

if.end.9:                                         ; preds = %if.else.8, %if.end.7
  %16 = load i32, i32* %status, align 4
  store i32 %16, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = load i32, i32* %argc.addr, align 4
  %1 = load i8**, i8*** %argv.addr, align 8
  %call = call i32 @gimp_main(%struct._GimpPlugInInfo* @PLUG_IN_INFO, i32 %0, i8** %1)
  ret i32 %call
}

declare i32 @gimp_main(%struct._GimpPlugInInfo*, i32, i8**) #1

declare void @gimp_install_procedure(i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, %struct._GimpParamDef*, %struct._GimpParamDef*) #1

declare i32 @gimp_register_load_handler(i8*, i8*, i8*) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define internal i32 @load_image(i8* %filename, i32 %run_mode, %struct._GError** %load_error) #0 {
entry:
  %filename.addr = alloca i8*, align 8
  %run_mode.addr = alloca i32, align 4
  %load_error.addr = alloca %struct._GError**, align 8
  %file = alloca %struct._GKeyFile*, align 8
  %group = alloca i8*, align 8
  %value = alloca i8*, align 8
  %image_ID = alloca i32, align 4
  %error = alloca %struct._GError*, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store i32 %run_mode, i32* %run_mode.addr, align 4
  store %struct._GError** %load_error, %struct._GError*** %load_error.addr, align 8
  %call = call %struct._GKeyFile* @g_key_file_new()
  store %struct._GKeyFile* %call, %struct._GKeyFile** %file, align 8
  store i8* null, i8** %group, align 8
  store i8* null, i8** %value, align 8
  store i32 -1, i32* %image_ID, align 4
  store %struct._GError* null, %struct._GError** %error, align 8
  %0 = load %struct._GKeyFile*, %struct._GKeyFile** %file, align 8
  %1 = load i8*, i8** %filename.addr, align 8
  %call1 = call i32 @g_key_file_load_from_file(%struct._GKeyFile* %0, i8* %1, i32 0, %struct._GError** %error)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %out

if.end:                                           ; preds = %entry
  %2 = load %struct._GKeyFile*, %struct._GKeyFile** %file, align 8
  %call2 = call noalias i8* @g_key_file_get_start_group(%struct._GKeyFile* %2)
  store i8* %call2, i8** %group, align 8
  %3 = load i8*, i8** %group, align 8
  %tobool3 = icmp ne i8* %3, null
  br i1 %tobool3, label %lor.lhs.false, label %if.then.5

lor.lhs.false:                                    ; preds = %if.end
  %4 = load i8*, i8** %group, align 8
  %call4 = call i32 @strcmp(i8* %4, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i32 0, i32 0)) #4
  %cmp = icmp ne i32 %call4, 0
  br i1 %cmp, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %lor.lhs.false, %if.end
  br label %out

if.end.6:                                         ; preds = %lor.lhs.false
  %5 = load %struct._GKeyFile*, %struct._GKeyFile** %file, align 8
  %6 = load i8*, i8** %group, align 8
  %call7 = call noalias i8* @g_key_file_get_value(%struct._GKeyFile* %5, i8* %6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0), %struct._GError** %error)
  store i8* %call7, i8** %value, align 8
  %7 = load i8*, i8** %value, align 8
  %tobool8 = icmp ne i8* %7, null
  br i1 %tobool8, label %lor.lhs.false.9, label %if.then.12

lor.lhs.false.9:                                  ; preds = %if.end.6
  %8 = load i8*, i8** %value, align 8
  %call10 = call i32 @strcmp(i8* %8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i32 0, i32 0)) #4
  %cmp11 = icmp ne i32 %call10, 0
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %lor.lhs.false.9, %if.end.6
  br label %out

if.end.13:                                        ; preds = %lor.lhs.false.9
  %9 = load i8*, i8** %value, align 8
  call void @g_free(i8* %9)
  %10 = load %struct._GKeyFile*, %struct._GKeyFile** %file, align 8
  %11 = load i8*, i8** %group, align 8
  %call14 = call noalias i8* @g_key_file_get_value(%struct._GKeyFile* %10, i8* %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i32 0, i32 0), %struct._GError** %error)
  store i8* %call14, i8** %value, align 8
  %12 = load i8*, i8** %value, align 8
  %tobool15 = icmp ne i8* %12, null
  br i1 %tobool15, label %if.then.16, label %if.end.18

if.then.16:                                       ; preds = %if.end.13
  %13 = load i32, i32* %run_mode.addr, align 4
  %14 = load i8*, i8** %value, align 8
  %15 = load i8*, i8** %value, align 8
  %call17 = call i32 @gimp_file_load(i32 %13, i8* %14, i8* %15)
  store i32 %call17, i32* %image_ID, align 4
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.16, %if.end.13
  br label %out

out:                                              ; preds = %if.end.18, %if.then.12, %if.then.5, %if.then
  %16 = load %struct._GError*, %struct._GError** %error, align 8
  %tobool19 = icmp ne %struct._GError* %16, null
  br i1 %tobool19, label %if.then.20, label %if.end.23

if.then.20:                                       ; preds = %out
  %17 = load %struct._GError**, %struct._GError*** %load_error.addr, align 8
  %18 = load %struct._GError*, %struct._GError** %error, align 8
  %domain = getelementptr inbounds %struct._GError, %struct._GError* %18, i32 0, i32 0
  %19 = load i32, i32* %domain, align 4
  %20 = load %struct._GError*, %struct._GError** %error, align 8
  %code = getelementptr inbounds %struct._GError, %struct._GError* %20, i32 0, i32 1
  %21 = load i32, i32* %code, align 4
  %call21 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.20, i32 0, i32 0)) #5
  %22 = load i8*, i8** %filename.addr, align 8
  %call22 = call i8* @gimp_filename_to_utf8(i8* %22)
  %23 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %23, i32 0, i32 2
  %24 = load i8*, i8** %message, align 8
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %17, i32 %19, i32 %21, i8* %call21, i8* %call22, i8* %24)
  %25 = load %struct._GError*, %struct._GError** %error, align 8
  call void @g_error_free(%struct._GError* %25)
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.20, %out
  %26 = load i8*, i8** %value, align 8
  call void @g_free(i8* %26)
  %27 = load i8*, i8** %group, align 8
  call void @g_free(i8* %27)
  %28 = load %struct._GKeyFile*, %struct._GKeyFile** %file, align 8
  call void @g_key_file_free(%struct._GKeyFile* %28)
  %29 = load i32, i32* %image_ID, align 4
  ret i32 %29
}

declare %struct._GKeyFile* @g_key_file_new() #1

declare i32 @g_key_file_load_from_file(%struct._GKeyFile*, i8*, i32, %struct._GError**) #1

declare noalias i8* @g_key_file_get_start_group(%struct._GKeyFile*) #1

declare noalias i8* @g_key_file_get_value(%struct._GKeyFile*, i8*, i8*, %struct._GError**) #1

declare void @g_free(i8*) #1

declare i32 @gimp_file_load(i32, i8*, i8*) #1

declare void @g_set_error(%struct._GError**, i32, i32, i8*, ...) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #3

declare i8* @gimp_filename_to_utf8(i8*) #1

declare void @g_error_free(%struct._GError*) #1

declare void @g_key_file_free(%struct._GKeyFile*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
