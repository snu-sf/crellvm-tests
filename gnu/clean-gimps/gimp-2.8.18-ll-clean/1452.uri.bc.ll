; ModuleID = './plug-ins/file-uri/uri.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpPlugInInfo = type { void ()*, void ()*, void ()*, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* }
%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpParamDef = type { i32, i8*, i8* }
%struct._GError = type { i32, i32, i8* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

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
@query.save_args = internal constant [5 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i32 0, i32 0) }, %struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i32 0, i32 0) }, %struct._GimpParamDef { i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.11, i32 0, i32 0) }, %struct._GimpParamDef { i32 4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.11, i32 0, i32 0) }], align 16
@.str.8 = private unnamed_addr constant [12 x i8] c"Input image\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"drawable\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"Drawable to save\00", align 1
@.str.11 = private unnamed_addr constant [42 x i8] c"The name of the file to save the image in\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"file-uri\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"file-uri-load\00", align 1
@.str.15 = private unnamed_addr constant [25 x i8] c"loads files given an URI\00", align 1
@.str.16 = private unnamed_addr constant [31 x i8] c"Spencer Kimball & Peter Mattis\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"1995-2008\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"URI\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"gimp-web\00", align 1
@.str.20 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"file-uri-save\00", align 1
@.str.22 = private unnamed_addr constant [25 x i8] c"saves files given an URI\00", align 1
@.str.23 = private unnamed_addr constant [31 x i8] c"Michael Natterer, Sven Neumann\00", align 1
@.str.24 = private unnamed_addr constant [17 x i8] c"Michael Natterer\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"2005-2008\00", align 1
@.str.26 = private unnamed_addr constant [22 x i8] c"RGB*, GRAY*, INDEXED*\00", align 1
@run.values = internal global [2 x %struct._GimpParam] zeroinitializer, align 16
@.str.27 = private unnamed_addr constant [4 x i8] c"xxx\00", align 1
@.str.28 = private unnamed_addr constant [38 x i8] c"Failed to save to temporary file '%s'\00", align 1

; Function Attrs: nounwind uwtable
define internal void @query() #0 {
entry:
  %error = alloca %struct._GError*, align 8
  store %struct._GError* null, %struct._GError** %error, align 8
  %call = call i32 @uri_backend_init(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0), i32 0, i32 1, %struct._GError** %error)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %0, i32 0, i32 2
  %1 = load i8*, i8** %message, align 8
  call void (i8*, ...) @g_message(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i32 0, i32 0), i8* %1)
  call void @g_clear_error(%struct._GError** %error)
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call i8* @uri_backend_get_load_protocols()
  %tobool2 = icmp ne i8* %call1, null
  br i1 %tobool2, label %if.then.3, label %if.end.8

if.then.3:                                        ; preds = %if.end
  %call4 = call i8* @uri_backend_get_load_help()
  call void @gimp_install_procedure(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.15, i32 0, i32 0), i8* %call4, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i32 0, i32 0), i8* null, i32 1, i32 3, i32 1, %struct._GimpParamDef* getelementptr inbounds ([3 x %struct._GimpParamDef], [3 x %struct._GimpParamDef]* @query.load_args, i32 0, i32 0), %struct._GimpParamDef* getelementptr inbounds ([1 x %struct._GimpParamDef], [1 x %struct._GimpParamDef]* @query.load_return_vals, i32 0, i32 0))
  %call5 = call i32 @gimp_plugin_icon_register(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0))
  %call6 = call i8* @uri_backend_get_load_protocols()
  %call7 = call i32 @gimp_register_load_handler(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.20, i32 0, i32 0), i8* %call6)
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.3, %if.end
  %call9 = call i8* @uri_backend_get_save_protocols()
  %tobool10 = icmp ne i8* %call9, null
  br i1 %tobool10, label %if.then.11, label %if.end.16

if.then.11:                                       ; preds = %if.end.8
  %call12 = call i8* @uri_backend_get_save_help()
  call void @gimp_install_procedure(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.22, i32 0, i32 0), i8* %call12, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.26, i32 0, i32 0), i32 1, i32 5, i32 0, %struct._GimpParamDef* getelementptr inbounds ([5 x %struct._GimpParamDef], [5 x %struct._GimpParamDef]* @query.save_args, i32 0, i32 0), %struct._GimpParamDef* null)
  %call13 = call i32 @gimp_plugin_icon_register(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0))
  %call14 = call i8* @uri_backend_get_save_protocols()
  %call15 = call i32 @gimp_register_save_handler(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.20, i32 0, i32 0), i8* %call14)
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.11, %if.end.8
  call void @uri_backend_shutdown()
  br label %return

return:                                           ; preds = %if.end.16, %if.then
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
  %image_ID = alloca i32, align 4
  %error = alloca %struct._GError*, align 8
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
  %5 = load i32, i32* %run_mode, align 4
  %call = call i32 @uri_backend_init(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0), i32 1, i32 %5, %struct._GError** %error)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.3, label %if.then

if.then:                                          ; preds = %entry
  %6 = load %struct._GError*, %struct._GError** %error, align 8
  %tobool1 = icmp ne %struct._GError* %6, null
  br i1 %tobool1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %7 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 2, i32* %7, align 4
  store i32 4, i32* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 1, i32 0), align 4
  %8 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %8, i32 0, i32 2
  %9 = load i8*, i8** %message, align 8
  store i8* %9, i8** bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 1, i32 1) to i8**), align 8
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  br label %return

if.end.3:                                         ; preds = %entry
  %call4 = call i32 @gimp_plugin_set_pdb_error_handler(i32 1)
  %10 = load i8*, i8** %name.addr, align 8
  %call5 = call i32 @strcmp(i8* %10, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i32 0, i32 0)) #5
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end.3
  %call7 = call i8* @uri_backend_get_load_protocols()
  %tobool8 = icmp ne i8* %call7, null
  br i1 %tobool8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %land.lhs.true
  %11 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx10 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %11, i64 2
  %data11 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx10, i32 0, i32 1
  %d_string = bitcast %union._GimpParamData* %data11 to i8**
  %12 = load i8*, i8** %d_string, align 8
  %13 = load i32, i32* %run_mode, align 4
  %call12 = call i32 @load_image(i8* %12, i32 %13, %struct._GError** %error)
  store i32 %call12, i32* %image_ID, align 4
  %14 = load i32, i32* %image_ID, align 4
  %cmp = icmp ne i32 %14, -1
  br i1 %cmp, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.then.9
  store i32 3, i32* %status, align 4
  %15 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 2, i32* %15, align 4
  store i32 13, i32* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 1, i32 0), align 4
  %16 = load i32, i32* %image_ID, align 4
  store i32 %16, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 1, i32 1) to i32*), align 4
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %if.then.9
  br label %if.end.33

if.else:                                          ; preds = %land.lhs.true, %if.end.3
  %17 = load i8*, i8** %name.addr, align 8
  %call15 = call i32 @strcmp(i8* %17, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i32 0, i32 0)) #5
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.else.31, label %land.lhs.true.17

land.lhs.true.17:                                 ; preds = %if.else
  %call18 = call i8* @uri_backend_get_save_protocols()
  %tobool19 = icmp ne i8* %call18, null
  br i1 %tobool19, label %if.then.20, label %if.else.31

if.then.20:                                       ; preds = %land.lhs.true.17
  %18 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx21 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %18, i64 3
  %data22 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx21, i32 0, i32 1
  %d_string23 = bitcast %union._GimpParamData* %data22 to i8**
  %19 = load i8*, i8** %d_string23, align 8
  %20 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx24 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %20, i64 1
  %data25 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx24, i32 0, i32 1
  %d_int3226 = bitcast %union._GimpParamData* %data25 to i32*
  %21 = load i32, i32* %d_int3226, align 4
  %22 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx27 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %22, i64 2
  %data28 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx27, i32 0, i32 1
  %d_int3229 = bitcast %union._GimpParamData* %data28 to i32*
  %23 = load i32, i32* %d_int3229, align 4
  %24 = load i32, i32* %run_mode, align 4
  %call30 = call i32 @save_image(i8* %19, i32 %21, i32 %23, i32 %24, %struct._GError** %error)
  store i32 %call30, i32* %status, align 4
  br label %if.end.32

if.else.31:                                       ; preds = %land.lhs.true.17, %if.else
  store i32 1, i32* %status, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.31, %if.then.20
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.end.14
  call void @uri_backend_shutdown()
  %25 = load i32, i32* %status, align 4
  %cmp34 = icmp ne i32 %25, 3
  br i1 %cmp34, label %land.lhs.true.35, label %if.end.39

land.lhs.true.35:                                 ; preds = %if.end.33
  %26 = load %struct._GError*, %struct._GError** %error, align 8
  %tobool36 = icmp ne %struct._GError* %26, null
  br i1 %tobool36, label %if.then.37, label %if.end.39

if.then.37:                                       ; preds = %land.lhs.true.35
  %27 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 2, i32* %27, align 4
  store i32 4, i32* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 1, i32 0), align 4
  %28 = load %struct._GError*, %struct._GError** %error, align 8
  %message38 = getelementptr inbounds %struct._GError, %struct._GError* %28, i32 0, i32 2
  %29 = load i8*, i8** %message38, align 8
  store i8* %29, i8** bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 1, i32 1) to i8**), align 8
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.37, %land.lhs.true.35, %if.end.33
  %30 = load i32, i32* %status, align 4
  store i32 %30, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  br label %return

return:                                           ; preds = %if.end.39, %if.end
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

declare i32 @uri_backend_init(i8*, i32, i32, %struct._GError**) #1

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
  call void @g_logv(i8* null, i32 32, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

declare void @g_clear_error(%struct._GError**) #1

declare i8* @uri_backend_get_load_protocols() #1

declare void @gimp_install_procedure(i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, %struct._GimpParamDef*, %struct._GimpParamDef*) #1

declare i8* @uri_backend_get_load_help() #1

declare i32 @gimp_plugin_icon_register(i8*, i32, i8*) #1

declare i32 @gimp_register_load_handler(i8*, i8*, i8*) #1

declare i8* @uri_backend_get_save_protocols() #1

declare i8* @uri_backend_get_save_help() #1

declare i32 @gimp_register_save_handler(i8*, i8*, i8*) #1

declare void @uri_backend_shutdown() #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #2

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #2

declare i32 @gimp_plugin_set_pdb_error_handler(i32) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

; Function Attrs: nounwind uwtable
define internal i32 @load_image(i8* %uri, i32 %run_mode, %struct._GError** %error) #0 {
entry:
  %retval = alloca i32, align 4
  %uri.addr = alloca i8*, align 8
  %run_mode.addr = alloca i32, align 4
  %error.addr = alloca %struct._GError**, align 8
  %image_ID = alloca i32, align 4
  %name_image = alloca i32, align 4
  %tmpname = alloca i8*, align 8
  %mapped = alloca i32, align 4
  store i8* %uri, i8** %uri.addr, align 8
  store i32 %run_mode, i32* %run_mode.addr, align 4
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 -1, i32* %image_ID, align 4
  store i32 0, i32* %name_image, align 4
  store i32 0, i32* %mapped, align 4
  %0 = load i8*, i8** %uri.addr, align 8
  %1 = load i32, i32* %run_mode.addr, align 4
  %call = call i8* @uri_backend_map_image(i8* %0, i32 %1)
  store i8* %call, i8** %tmpname, align 8
  %2 = load i8*, i8** %tmpname, align 8
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 1, i32* %mapped, align 4
  br label %if.end.5

if.else:                                          ; preds = %entry
  %3 = load i8*, i8** %uri.addr, align 8
  %call1 = call i8* @get_temp_name(i8* %3, i32* %name_image)
  store i8* %call1, i8** %tmpname, align 8
  %4 = load i8*, i8** %uri.addr, align 8
  %5 = load i8*, i8** %tmpname, align 8
  %6 = load i32, i32* %run_mode.addr, align 4
  %7 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call2 = call i32 @uri_backend_load_image(i8* %4, i8* %5, i32 %6, %struct._GError** %7)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.end, label %if.then.4

if.then.4:                                        ; preds = %if.else
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %if.else
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %if.then
  %8 = load i32, i32* %run_mode.addr, align 4
  %9 = load i8*, i8** %tmpname, align 8
  %10 = load i8*, i8** %tmpname, align 8
  %call6 = call i32 @gimp_file_load(i32 %8, i8* %9, i8* %10)
  store i32 %call6, i32* %image_ID, align 4
  %11 = load i32, i32* %image_ID, align 4
  %cmp = icmp ne i32 %11, -1
  br i1 %cmp, label %if.then.7, label %if.else.15

if.then.7:                                        ; preds = %if.end.5
  %12 = load i32, i32* %mapped, align 4
  %tobool8 = icmp ne i32 %12, 0
  br i1 %tobool8, label %if.then.10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.7
  %13 = load i32, i32* %name_image, align 4
  %tobool9 = icmp ne i32 %13, 0
  br i1 %tobool9, label %if.then.10, label %if.else.12

if.then.10:                                       ; preds = %lor.lhs.false, %if.then.7
  %14 = load i32, i32* %image_ID, align 4
  %15 = load i8*, i8** %uri.addr, align 8
  %call11 = call i32 @gimp_image_set_filename(i32 %14, i8* %15)
  br label %if.end.14

if.else.12:                                       ; preds = %lor.lhs.false
  %16 = load i32, i32* %image_ID, align 4
  %call13 = call i32 @gimp_image_set_filename(i32 %16, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.20, i32 0, i32 0))
  br label %if.end.14

if.end.14:                                        ; preds = %if.else.12, %if.then.10
  br label %if.end.18

if.else.15:                                       ; preds = %if.end.5
  %17 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call16 = call i32 @g_file_error_quark()
  %call17 = call i8* @gimp_get_pdb_error()
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %17, i32 %call16, i32 24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i32 0, i32 0), i8* %call17)
  br label %if.end.18

if.end.18:                                        ; preds = %if.else.15, %if.end.14
  %18 = load i32, i32* %mapped, align 4
  %tobool19 = icmp ne i32 %18, 0
  br i1 %tobool19, label %if.end.22, label %if.then.20

if.then.20:                                       ; preds = %if.end.18
  %19 = load i8*, i8** %tmpname, align 8
  %call21 = call i32 @g_unlink(i8* %19)
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.20, %if.end.18
  %20 = load i8*, i8** %tmpname, align 8
  call void @g_free(i8* %20)
  %21 = load i32, i32* %image_ID, align 4
  store i32 %21, i32* %retval
  br label %return

return:                                           ; preds = %if.end.22, %if.then.4
  %22 = load i32, i32* %retval
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define internal i32 @save_image(i8* %uri, i32 %image_ID, i32 %drawable_ID, i32 %run_mode, %struct._GError** %error) #0 {
entry:
  %uri.addr = alloca i8*, align 8
  %image_ID.addr = alloca i32, align 4
  %drawable_ID.addr = alloca i32, align 4
  %run_mode.addr = alloca i32, align 4
  %error.addr = alloca %struct._GError**, align 8
  %status = alloca i32, align 4
  %tmpname = alloca i8*, align 8
  %mapped = alloca i32, align 4
  store i8* %uri, i8** %uri.addr, align 8
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i32 %drawable_ID, i32* %drawable_ID.addr, align 4
  store i32 %run_mode, i32* %run_mode.addr, align 4
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 0, i32* %status, align 4
  store i32 0, i32* %mapped, align 4
  %0 = load i8*, i8** %uri.addr, align 8
  %1 = load i32, i32* %run_mode.addr, align 4
  %call = call i8* @uri_backend_map_image(i8* %0, i32 %1)
  store i8* %call, i8** %tmpname, align 8
  %2 = load i8*, i8** %tmpname, align 8
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 1, i32* %mapped, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %3 = load i8*, i8** %uri.addr, align 8
  %call1 = call i8* @get_temp_name(i8* %3, i32* null)
  store i8* %call1, i8** %tmpname, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %4 = load i32, i32* %run_mode.addr, align 4
  %5 = load i32, i32* %image_ID.addr, align 4
  %6 = load i32, i32* %drawable_ID.addr, align 4
  %7 = load i8*, i8** %tmpname, align 8
  %8 = load i8*, i8** %tmpname, align 8
  %call2 = call i32 @gimp_file_save(i32 %4, i32 %5, i32 %6, i8* %7, i8* %8)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.then.4, label %if.else.21

if.then.4:                                        ; preds = %if.end
  %9 = load i32, i32* %mapped, align 4
  %tobool5 = icmp ne i32 %9, 0
  br i1 %tobool5, label %if.then.6, label %if.else.7

if.then.6:                                        ; preds = %if.then.4
  store i32 3, i32* %status, align 4
  br label %if.end.20

if.else.7:                                        ; preds = %if.then.4
  %10 = load i8*, i8** %tmpname, align 8
  %call8 = call i32 @valid_file(i8* %10)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.then.10, label %if.else.15

if.then.10:                                       ; preds = %if.else.7
  %11 = load i8*, i8** %uri.addr, align 8
  %12 = load i8*, i8** %tmpname, align 8
  %13 = load i32, i32* %run_mode.addr, align 4
  %14 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call11 = call i32 @uri_backend_save_image(i8* %11, i8* %12, i32 %13, %struct._GError** %14)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.then.10
  store i32 3, i32* %status, align 4
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %if.then.10
  br label %if.end.19

if.else.15:                                       ; preds = %if.else.7
  %15 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call16 = call i32 @g_file_error_quark()
  %call17 = call i8* @gettext(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.28, i32 0, i32 0)) #2
  %16 = load i8*, i8** %tmpname, align 8
  %call18 = call i8* @gimp_filename_to_utf8(i8* %16)
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %15, i32 %call16, i32 24, i8* %call17, i8* %call18)
  br label %if.end.19

if.end.19:                                        ; preds = %if.else.15, %if.end.14
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.19, %if.then.6
  br label %if.end.24

if.else.21:                                       ; preds = %if.end
  %17 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call22 = call i32 @g_file_error_quark()
  %call23 = call i8* @gimp_get_pdb_error()
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %17, i32 %call22, i32 24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i32 0, i32 0), i8* %call23)
  br label %if.end.24

if.end.24:                                        ; preds = %if.else.21, %if.end.20
  %18 = load i32, i32* %mapped, align 4
  %tobool25 = icmp ne i32 %18, 0
  br i1 %tobool25, label %if.end.28, label %if.then.26

if.then.26:                                       ; preds = %if.end.24
  %19 = load i8*, i8** %tmpname, align 8
  %call27 = call i32 @g_unlink(i8* %19)
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.26, %if.end.24
  %20 = load i8*, i8** %tmpname, align 8
  call void @g_free(i8* %20)
  %21 = load i32, i32* %status, align 4
  ret i32 %21
}

declare i8* @uri_backend_map_image(i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal i8* @get_temp_name(i8* %uri, i32* %name_image) #0 {
entry:
  %uri.addr = alloca i8*, align 8
  %name_image.addr = alloca i32*, align 8
  %basename = alloca i8*, align 8
  %tmpname = alloca i8*, align 8
  %ext = alloca i8*, align 8
  store i8* %uri, i8** %uri.addr, align 8
  store i32* %name_image, i32** %name_image.addr, align 8
  store i8* null, i8** %tmpname, align 8
  %0 = load i32*, i32** %name_image.addr, align 8
  %tobool = icmp ne i32* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %name_image.addr, align 8
  store i32 0, i32* %1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i8*, i8** %uri.addr, align 8
  %call = call noalias i8* @g_path_get_basename(i8* %2)
  store i8* %call, i8** %basename, align 8
  %3 = load i8*, i8** %basename, align 8
  %tobool1 = icmp ne i8* %3, null
  br i1 %tobool1, label %if.then.2, label %if.end.13

if.then.2:                                        ; preds = %if.end
  %4 = load i8*, i8** %basename, align 8
  %call3 = call i8* @strchr(i8* %4, i32 46) #5
  store i8* %call3, i8** %ext, align 8
  %5 = load i8*, i8** %ext, align 8
  %tobool4 = icmp ne i8* %5, null
  br i1 %tobool4, label %land.lhs.true, label %if.end.12

land.lhs.true:                                    ; preds = %if.then.2
  %6 = load i8*, i8** %ext, align 8
  %call5 = call i64 @strlen(i8* %6) #5
  %tobool6 = icmp ne i64 %call5, 0
  br i1 %tobool6, label %if.then.7, label %if.end.12

if.then.7:                                        ; preds = %land.lhs.true
  %7 = load i8*, i8** %ext, align 8
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 1
  %call8 = call i8* @gimp_temp_name(i8* %add.ptr)
  store i8* %call8, i8** %tmpname, align 8
  %8 = load i32*, i32** %name_image.addr, align 8
  %tobool9 = icmp ne i32* %8, null
  br i1 %tobool9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.then.7
  %9 = load i32*, i32** %name_image.addr, align 8
  store i32 1, i32* %9, align 4
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %if.then.7
  br label %if.end.12

if.end.12:                                        ; preds = %if.end.11, %land.lhs.true, %if.then.2
  %10 = load i8*, i8** %basename, align 8
  call void @g_free(i8* %10)
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %if.end
  %11 = load i8*, i8** %tmpname, align 8
  %tobool14 = icmp ne i8* %11, null
  br i1 %tobool14, label %if.end.17, label %if.then.15

if.then.15:                                       ; preds = %if.end.13
  %call16 = call i8* @gimp_temp_name(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i32 0, i32 0))
  store i8* %call16, i8** %tmpname, align 8
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.15, %if.end.13
  %12 = load i8*, i8** %tmpname, align 8
  ret i8* %12
}

declare i32 @uri_backend_load_image(i8*, i8*, i32, %struct._GError**) #1

declare i32 @gimp_file_load(i32, i8*, i8*) #1

declare i32 @gimp_image_set_filename(i32, i8*) #1

declare void @g_set_error(%struct._GError**, i32, i32, i8*, ...) #1

declare i32 @g_file_error_quark() #1

declare i8* @gimp_get_pdb_error() #1

declare i32 @g_unlink(i8*) #1

declare void @g_free(i8*) #1

declare noalias i8* @g_path_get_basename(i8*) #1

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #3

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

declare i8* @gimp_temp_name(i8*) #1

declare i32 @gimp_file_save(i32, i32, i32, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @valid_file(i8* %filename) #0 {
entry:
  %filename.addr = alloca i8*, align 8
  %buf = alloca %struct.stat, align 8
  store i8* %filename, i8** %filename.addr, align 8
  %0 = load i8*, i8** %filename.addr, align 8
  %call = call i32 @stat(i8* %0, %struct.stat* %buf) #2
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %st_size = getelementptr inbounds %struct.stat, %struct.stat* %buf, i32 0, i32 8
  %1 = load i64, i64* %st_size, align 8
  %cmp1 = icmp sgt i64 %1, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %cmp1, %land.rhs ]
  %land.ext = zext i1 %2 to i32
  ret i32 %land.ext
}

declare i32 @uri_backend_save_image(i8*, i8*, i32, %struct._GError**) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

declare i8* @gimp_filename_to_utf8(i8*) #1

; Function Attrs: nounwind
declare i32 @stat(i8*, %struct.stat*) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
