; ModuleID = './plug-ins/script-fu/script-fu.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpPlugInInfo = type { void ()*, void ()*, void ()*, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* }
%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpParamDef = type { i32, i8*, i8* }
%struct._GError = type { i32, i32, i8* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@PLUG_IN_INFO = constant %struct._GimpPlugInInfo { void ()* null, void ()* null, void ()* @script_fu_query, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* @script_fu_run }, align 8
@script_fu_query.console_args = internal constant [1 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i32 0, i32 0) }], align 16
@.str = private unnamed_addr constant [9 x i8] c"run-mode\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"The run mode { RUN-INTERACTIVE (0) }\00", align 1
@script_fu_query.textconsole_args = internal constant [1 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i32 0, i32 0) }], align 16
@script_fu_query.eval_args = internal constant [2 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i32 0, i32 0) }, %struct._GimpParamDef { i32 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i32 0, i32 0) }], align 16
@.str.2 = private unnamed_addr constant [40 x i8] c"The run mode { RUN-NONINTERACTIVE (1) }\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"code\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"The code to evaluate\00", align 1
@script_fu_query.server_args = internal constant [4 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i32 0, i32 0) }, %struct._GimpParamDef { i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i32 0, i32 0) }, %struct._GimpParamDef { i32 4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i32 0, i32 0) }], align 16
@.str.5 = private unnamed_addr constant [3 x i8] c"ip\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"The ip on which to listen for requests\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"port\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"The port on which to listen for requests\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"logfile\00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c"The file to log server activity to\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"gimp20-script-fu\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"extension-script-fu\00", align 1
@.str.13 = private unnamed_addr constant [51 x i8] c"A scheme interpreter for scripting GIMP operations\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"More help here later\00", align 1
@.str.15 = private unnamed_addr constant [31 x i8] c"Spencer Kimball & Peter Mattis\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"1997\00", align 1
@.str.17 = private unnamed_addr constant [26 x i8] c"plug-in-script-fu-console\00", align 1
@.str.18 = private unnamed_addr constant [46 x i8] c"Interactive console for Script-Fu development\00", align 1
@.str.19 = private unnamed_addr constant [67 x i8] c"Provides an interface which allows interactive scheme development.\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"_Console\00", align 1
@.str.21 = private unnamed_addr constant [36 x i8] c"<Image>/Filters/Languages/Script-Fu\00", align 1
@.str.22 = private unnamed_addr constant [31 x i8] c"plug-in-script-fu-text-console\00", align 1
@.str.23 = private unnamed_addr constant [55 x i8] c"Provides a text console mode for script-fu development\00", align 1
@.str.24 = private unnamed_addr constant [25 x i8] c"plug-in-script-fu-server\00", align 1
@.str.25 = private unnamed_addr constant [38 x i8] c"Server for remote Script-Fu operation\00", align 1
@.str.26 = private unnamed_addr constant [279 x i8] c"Provides a server for remote script-fu operation. NOTE that for security reasons this procedure's API was changed in an incompatible way since GIMP 2.8.12. You now have to pass the IP to listen on as first parameter. Calling this procedure with the old API will fail on purpose.\00", align 1
@.str.27 = private unnamed_addr constant [17 x i8] c"_Start Server...\00", align 1
@.str.28 = private unnamed_addr constant [23 x i8] c"plug-in-script-fu-eval\00", align 1
@.str.29 = private unnamed_addr constant [21 x i8] c"Evaluate scheme code\00", align 1
@.str.30 = private unnamed_addr constant [74 x i8] c"Evaluate the code under the scheme interpreter (primarily for batch mode)\00", align 1
@.str.31 = private unnamed_addr constant [13 x i8] c"Manish Singh\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"1998\00", align 1
@.str.33 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@script_fu_run.values = internal global [1 x %struct._GimpParam] zeroinitializer, align 16
@.str.34 = private unnamed_addr constant [15 x i8] c"script-fu-path\00", align 1
@.str.35 = private unnamed_addr constant [56 x i8] c"Can't convert script-fu-path to filesystem encoding: %s\00", align 1
@script_fu_extension_init.args = internal constant [1 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.36, i32 0, i32 0) }], align 16
@.str.36 = private unnamed_addr constant [31 x i8] c"[Interactive], non-interactive\00", align 1
@.str.37 = private unnamed_addr constant [13 x i8] c"<Image>/Help\00", align 1
@.str.38 = private unnamed_addr constant [13 x i8] c"_GIMP Online\00", align 1
@.str.39 = private unnamed_addr constant [13 x i8] c"_User Manual\00", align 1
@.str.40 = private unnamed_addr constant [26 x i8] c"<Image>/Filters/Languages\00", align 1
@.str.41 = private unnamed_addr constant [11 x i8] c"_Script-Fu\00", align 1
@.str.42 = private unnamed_addr constant [6 x i8] c"_Test\00", align 1
@.str.43 = private unnamed_addr constant [20 x i8] c"<Image>/File/Create\00", align 1
@.str.44 = private unnamed_addr constant [9 x i8] c"_Buttons\00", align 1
@.str.45 = private unnamed_addr constant [7 x i8] c"_Logos\00", align 1
@.str.46 = private unnamed_addr constant [10 x i8] c"_Patterns\00", align 1
@.str.47 = private unnamed_addr constant [17 x i8] c"_Web Page Themes\00", align 1
@.str.48 = private unnamed_addr constant [36 x i8] c"<Image>/File/Create/Web Page Themes\00", align 1
@.str.49 = private unnamed_addr constant [12 x i8] c"_Alien Glow\00", align 1
@.str.50 = private unnamed_addr constant [17 x i8] c"_Beveled Pattern\00", align 1
@.str.51 = private unnamed_addr constant [18 x i8] c"_Classic.Gimp.Org\00", align 1
@.str.52 = private unnamed_addr constant [16 x i8] c"<Image>/Filters\00", align 1
@.str.53 = private unnamed_addr constant [15 x i8] c"Alpha to _Logo\00", align 1
@.str.54 = private unnamed_addr constant [18 x i8] c"script-fu-refresh\00", align 1
@.str.55 = private unnamed_addr constant [40 x i8] c"Re-read all available Script-Fu scripts\00", align 1
@.str.56 = private unnamed_addr constant [17 x i8] c"_Refresh Scripts\00", align 1
@script_fu_refresh_proc.values = internal global [1 x %struct._GimpParam] zeroinitializer, align 16
@.str.57 = private unnamed_addr constant [123 x i8] c"You can not use \22Refresh Scripts\22 while a Script-Fu dialog box is open.  Please close all Script-Fu windows and try again.\00", align 1

; Function Attrs: nounwind uwtable
define internal void @script_fu_query() #0 {
entry:
  %call = call i32 @gimp_plugin_domain_register(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i32 0, i32 0), i8* null)
  call void @gimp_install_procedure(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i8* null, i8* null, i32 2, i32 0, i32 0, %struct._GimpParamDef* null, %struct._GimpParamDef* null)
  call void @gimp_install_procedure(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i32 0, i32 0), i8* null, i32 1, i32 1, i32 0, %struct._GimpParamDef* getelementptr inbounds ([1 x %struct._GimpParamDef], [1 x %struct._GimpParamDef]* @script_fu_query.console_args, i32 0, i32 0), %struct._GimpParamDef* null)
  %call1 = call i32 @gimp_plugin_menu_register(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.21, i32 0, i32 0))
  call void @gimp_install_procedure(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i8* null, i8* null, i32 1, i32 1, i32 0, %struct._GimpParamDef* getelementptr inbounds ([1 x %struct._GimpParamDef], [1 x %struct._GimpParamDef]* @script_fu_query.textconsole_args, i32 0, i32 0), %struct._GimpParamDef* null)
  call void @gimp_install_procedure(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([279 x i8], [279 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.27, i32 0, i32 0), i8* null, i32 1, i32 4, i32 0, %struct._GimpParamDef* getelementptr inbounds ([4 x %struct._GimpParamDef], [4 x %struct._GimpParamDef]* @script_fu_query.server_args, i32 0, i32 0), %struct._GimpParamDef* null)
  %call2 = call i32 @gimp_plugin_menu_register(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.21, i32 0, i32 0))
  call void @gimp_install_procedure(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i32 0, i32 0), i8* null, i8* null, i32 1, i32 2, i32 0, %struct._GimpParamDef* getelementptr inbounds ([2 x %struct._GimpParamDef], [2 x %struct._GimpParamDef]* @script_fu_query.eval_args, i32 0, i32 0), %struct._GimpParamDef* null)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @script_fu_run(i8* %name, i32 %nparams, %struct._GimpParam* %param, i32* %nreturn_vals, %struct._GimpParam** %return_vals) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %nparams.addr = alloca i32, align 4
  %param.addr = alloca %struct._GimpParam*, align 8
  %nreturn_vals.addr = alloca i32*, align 8
  %return_vals.addr = alloca %struct._GimpParam**, align 8
  %path = alloca i8*, align 8
  store i8* %name, i8** %name.addr, align 8
  store i32 %nparams, i32* %nparams.addr, align 4
  store %struct._GimpParam* %param, %struct._GimpParam** %param.addr, align 8
  store i32* %nreturn_vals, i32** %nreturn_vals.addr, align 8
  store %struct._GimpParam** %return_vals, %struct._GimpParam*** %return_vals.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %call = call i8* @gimp_locale_directory() #6
  %call1 = call i8* @bindtextdomain(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i32 0, i32 0), i8* %call) #5
  %call2 = call i8* @bind_textdomain_codeset(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i32 0, i32 0)) #5
  %call3 = call i8* @textdomain(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i32 0, i32 0)) #5
  br label %do.end

do.end:                                           ; preds = %do.body
  %call4 = call i8* @script_fu_search_path()
  store i8* %call4, i8** %path, align 8
  %0 = load i8*, i8** %name.addr, align 8
  %call5 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i32 0, i32 0)) #7
  %cmp = icmp eq i32 %call5, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.end
  call void @script_fu_extension_init()
  %1 = load i8*, i8** %path, align 8
  call void @tinyscheme_init(i8* %1, i32 1)
  br label %if.end

if.else:                                          ; preds = %do.end
  %2 = load i8*, i8** %path, align 8
  call void @tinyscheme_init(i8* %2, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %cmp6 = icmp ne %struct._GimpParam* %3, null
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end
  %4 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %4, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_int32 = bitcast %union._GimpParamData* %data to i32*
  %5 = load i32, i32* %d_int32, align 4
  call void @ts_set_run_mode(i32 %5)
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %if.end
  %6 = load i8*, i8** %path, align 8
  call void @script_fu_find_scripts(i8* %6)
  %7 = load i8*, i8** %path, align 8
  call void @g_free(i8* %7)
  %8 = load i8*, i8** %name.addr, align 8
  %call9 = call i32 @strcmp(i8* %8, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i32 0, i32 0)) #7
  %cmp10 = icmp eq i32 %call9, 0
  br i1 %cmp10, label %if.then.11, label %if.else.12

if.then.11:                                       ; preds = %if.end.8
  call void @gimp_extension_ack()
  br label %while.body

while.body:                                       ; preds = %if.then.11, %while.body
  call void @gimp_extension_process(i32 0)
  br label %while.body

if.else.12:                                       ; preds = %if.end.8
  %9 = load i8*, i8** %name.addr, align 8
  %call13 = call i32 @strcmp(i8* %9, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.22, i32 0, i32 0)) #7
  %cmp14 = icmp eq i32 %call13, 0
  br i1 %cmp14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %if.else.12
  %10 = load i8*, i8** %name.addr, align 8
  %11 = load i32, i32* %nparams.addr, align 4
  %12 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %13 = load i32*, i32** %nreturn_vals.addr, align 8
  %14 = load %struct._GimpParam**, %struct._GimpParam*** %return_vals.addr, align 8
  call void @script_fu_text_console_run(i8* %10, i32 %11, %struct._GimpParam* %12, i32* %13, %struct._GimpParam** %14)
  br label %if.end.31

if.else.16:                                       ; preds = %if.else.12
  %15 = load i8*, i8** %name.addr, align 8
  %call17 = call i32 @strcmp(i8* %15, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.17, i32 0, i32 0)) #7
  %cmp18 = icmp eq i32 %call17, 0
  br i1 %cmp18, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %if.else.16
  %16 = load i8*, i8** %name.addr, align 8
  %17 = load i32, i32* %nparams.addr, align 4
  %18 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %19 = load i32*, i32** %nreturn_vals.addr, align 8
  %20 = load %struct._GimpParam**, %struct._GimpParam*** %return_vals.addr, align 8
  call void @script_fu_console_run(i8* %16, i32 %17, %struct._GimpParam* %18, i32* %19, %struct._GimpParam** %20)
  br label %if.end.30

if.else.20:                                       ; preds = %if.else.16
  %21 = load i8*, i8** %name.addr, align 8
  %call21 = call i32 @strcmp(i8* %21, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.24, i32 0, i32 0)) #7
  %cmp22 = icmp eq i32 %call21, 0
  br i1 %cmp22, label %if.then.23, label %if.else.24

if.then.23:                                       ; preds = %if.else.20
  %22 = load i8*, i8** %name.addr, align 8
  %23 = load i32, i32* %nparams.addr, align 4
  %24 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %25 = load i32*, i32** %nreturn_vals.addr, align 8
  %26 = load %struct._GimpParam**, %struct._GimpParam*** %return_vals.addr, align 8
  call void @script_fu_server_run(i8* %22, i32 %23, %struct._GimpParam* %24, i32* %25, %struct._GimpParam** %26)
  br label %if.end.29

if.else.24:                                       ; preds = %if.else.20
  %27 = load i8*, i8** %name.addr, align 8
  %call25 = call i32 @strcmp(i8* %27, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.28, i32 0, i32 0)) #7
  %cmp26 = icmp eq i32 %call25, 0
  br i1 %cmp26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.else.24
  %28 = load i8*, i8** %name.addr, align 8
  %29 = load i32, i32* %nparams.addr, align 4
  %30 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %31 = load i32*, i32** %nreturn_vals.addr, align 8
  %32 = load %struct._GimpParam**, %struct._GimpParam*** %return_vals.addr, align 8
  call void @script_fu_eval_run(i8* %28, i32 %29, %struct._GimpParam* %30, i32* %31, %struct._GimpParam** %32)
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.27, %if.else.24
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %if.then.23
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.29, %if.then.19
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30, %if.then.15
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31
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

declare i32 @gimp_plugin_domain_register(i8*, i8*) #1

declare void @gimp_install_procedure(i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, %struct._GimpParamDef*, %struct._GimpParamDef*) #1

declare i32 @gimp_plugin_menu_register(i8*, i8*) #1

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8*, i8*) #2

; Function Attrs: nounwind readnone
declare i8* @gimp_locale_directory() #3

; Function Attrs: nounwind
declare i8* @bind_textdomain_codeset(i8*, i8*) #2

; Function Attrs: nounwind
declare i8* @textdomain(i8*) #2

; Function Attrs: nounwind uwtable
define internal i8* @script_fu_search_path() #0 {
entry:
  %path_str = alloca i8*, align 8
  %path = alloca i8*, align 8
  %error = alloca %struct._GError*, align 8
  store i8* null, i8** %path, align 8
  %call = call i8* @gimp_gimprc_query(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.34, i32 0, i32 0))
  store i8* %call, i8** %path_str, align 8
  %0 = load i8*, i8** %path_str, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.then, label %if.end.4

if.then:                                          ; preds = %entry
  store %struct._GError* null, %struct._GError** %error, align 8
  %1 = load i8*, i8** %path_str, align 8
  %call1 = call noalias i8* @g_filename_from_utf8(i8* %1, i64 -1, i64* null, i64* null, %struct._GError** %error)
  store i8* %call1, i8** %path, align 8
  %2 = load i8*, i8** %path_str, align 8
  call void @g_free(i8* %2)
  %3 = load i8*, i8** %path, align 8
  %tobool2 = icmp ne i8* %3, null
  br i1 %tobool2, label %if.end, label %if.then.3

if.then.3:                                        ; preds = %if.then
  %4 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %4, i32 0, i32 2
  %5 = load i8*, i8** %message, align 8
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.35, i32 0, i32 0), i8* %5)
  %6 = load %struct._GError*, %struct._GError** %error, align 8
  call void @g_error_free(%struct._GError* %6)
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %entry
  %7 = load i8*, i8** %path, align 8
  ret i8* %7
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

; Function Attrs: nounwind uwtable
define internal void @script_fu_extension_init() #0 {
entry:
  %call = call i32 @gimp_plugin_menu_branch_register(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.38, i32 0, i32 0))
  %call1 = call i32 @gimp_plugin_menu_branch_register(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.39, i32 0, i32 0))
  %call2 = call i32 @gimp_plugin_menu_branch_register(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.41, i32 0, i32 0))
  %call3 = call i32 @gimp_plugin_menu_branch_register(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.42, i32 0, i32 0))
  %call4 = call i32 @gimp_plugin_menu_branch_register(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.44, i32 0, i32 0))
  %call5 = call i32 @gimp_plugin_menu_branch_register(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.45, i32 0, i32 0))
  %call6 = call i32 @gimp_plugin_menu_branch_register(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.46, i32 0, i32 0))
  %call7 = call i32 @gimp_plugin_menu_branch_register(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.47, i32 0, i32 0))
  %call8 = call i32 @gimp_plugin_menu_branch_register(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.49, i32 0, i32 0))
  %call9 = call i32 @gimp_plugin_menu_branch_register(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.50, i32 0, i32 0))
  %call10 = call i32 @gimp_plugin_menu_branch_register(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.51, i32 0, i32 0))
  %call11 = call i32 @gimp_plugin_menu_branch_register(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.53, i32 0, i32 0))
  call void @gimp_install_temp_proc(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.56, i32 0, i32 0), i8* null, i32 3, i32 1, i32 0, %struct._GimpParamDef* getelementptr inbounds ([1 x %struct._GimpParamDef], [1 x %struct._GimpParamDef]* @script_fu_extension_init.args, i32 0, i32 0), %struct._GimpParamDef* null, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* @script_fu_refresh_proc)
  %call12 = call i32 @gimp_plugin_menu_register(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.21, i32 0, i32 0))
  ret void
}

declare void @tinyscheme_init(i8*, i32) #1

declare void @ts_set_run_mode(i32) #1

declare void @script_fu_find_scripts(i8*) #1

declare void @g_free(i8*) #1

declare void @gimp_extension_ack() #1

declare void @gimp_extension_process(i32) #1

declare void @script_fu_text_console_run(i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**) #1

declare void @script_fu_console_run(i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**) #1

declare void @script_fu_server_run(i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**) #1

declare void @script_fu_eval_run(i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**) #1

declare i8* @gimp_gimprc_query(i8*) #1

declare noalias i8* @g_filename_from_utf8(i8*, i64, i64*, i64*, %struct._GError**) #1

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

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

declare i32 @gimp_plugin_menu_branch_register(i8*, i8*) #1

declare void @gimp_install_temp_proc(i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, %struct._GimpParamDef*, %struct._GimpParamDef*, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)*) #1

; Function Attrs: nounwind uwtable
define internal void @script_fu_refresh_proc(i8* %name, i32 %nparams, %struct._GimpParam* %params, i32* %nreturn_vals, %struct._GimpParam** %return_vals) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %nparams.addr = alloca i32, align 4
  %params.addr = alloca %struct._GimpParam*, align 8
  %nreturn_vals.addr = alloca i32*, align 8
  %return_vals.addr = alloca %struct._GimpParam**, align 8
  %status = alloca i32, align 4
  %path = alloca i8*, align 8
  store i8* %name, i8** %name.addr, align 8
  store i32 %nparams, i32* %nparams.addr, align 4
  store %struct._GimpParam* %params, %struct._GimpParam** %params.addr, align 8
  store i32* %nreturn_vals, i32** %nreturn_vals.addr, align 8
  store %struct._GimpParam** %return_vals, %struct._GimpParam*** %return_vals.addr, align 8
  %call = call i32 @script_fu_interface_is_active()
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call1 = call i8* @gettext(i8* getelementptr inbounds ([123 x i8], [123 x i8]* @.str.57, i32 0, i32 0)) #5
  call void (i8*, ...) @g_message(i8* %call1)
  store i32 0, i32* %status, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %call2 = call i8* @script_fu_search_path()
  store i8* %call2, i8** %path, align 8
  %0 = load i8*, i8** %path, align 8
  call void @script_fu_find_scripts(i8* %0)
  %1 = load i8*, i8** %path, align 8
  call void @g_free(i8* %1)
  store i32 3, i32* %status, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %2 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 1, i32* %2, align 4
  %3 = load %struct._GimpParam**, %struct._GimpParam*** %return_vals.addr, align 8
  store %struct._GimpParam* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @script_fu_refresh_proc.values, i32 0, i32 0), %struct._GimpParam** %3, align 8
  store i32 21, i32* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @script_fu_refresh_proc.values, i32 0, i64 0, i32 0), align 4
  %4 = load i32, i32* %status, align 4
  store i32 %4, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @script_fu_refresh_proc.values, i32 0, i64 0, i32 1) to i32*), align 4
  ret void
}

declare i32 @script_fu_interface_is_active() #1

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

; Function Attrs: nounwind
declare i8* @gettext(i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
