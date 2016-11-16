; ModuleID = './plug-ins/help/help.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpPlugInInfo = type { void ()*, void ()*, void ()*, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* }
%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpParamDef = type { i32, i8*, i8* }
%struct._GMainLoop = type opaque
%struct.GimpHelpProgressVTable = type { void (i8*, i32, i8*)*, void (i8*)*, void (double, i8*)*, void ()*, void ()*, void ()*, void ()* }
%struct._GMainContext = type opaque
%struct.IdleHelp = type { i8*, i8*, i8*, i8* }
%struct._GimpHelpDomain = type { i8*, i8*, %struct._GHashTable* }
%struct._GHashTable = type opaque
%struct._GimpHelpProgress = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpHelpLocale = type { i8*, %struct._GHashTable*, i8*, %struct._GList* }

@PLUG_IN_INFO = constant %struct._GimpPlugInInfo { void ()* null, void ()* null, void ()* @query, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* @run }, align 8
@query.args = internal constant [4 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0) }, %struct._GimpParamDef { i32 9, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0) }, %struct._GimpParamDef { i32 9, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0) }], align 16
@.str = private unnamed_addr constant [17 x i8] c"num-domain-names\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"domain-names\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"num-domain-uris\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"domain-uris\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"extension-gimp-help\00", align 1
@.str.6 = private unnamed_addr constant [102 x i8] c"Sven Neumann <sven@gimp.org>, Michael Natterer <mitch@gimp.org>, Henrik Brix Andersen <brix@gimp.org>\00", align 1
@.str.7 = private unnamed_addr constant [54 x i8] c"Sven Neumann, Michael Natterer & Henrik Brix Andersen\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"1999-2008\00", align 1
@run.values = internal global [1 x %struct._GimpParam] zeroinitializer, align 16
@.str.9 = private unnamed_addr constant [20 x i8] c"gimp20-std-plug-ins\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@.str.11 = private unnamed_addr constant [52 x i8] c"help: wrong number of arguments in procedure call.\0A\00", align 1
@main_loop = internal global %struct._GMainLoop* null, align 8
@.str.12 = private unnamed_addr constant [25 x i8] c"extension-gimp-help-temp\00", align 1
@temp_proc_install.args = internal constant [4 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.14, i32 0, i32 0) }, %struct._GimpParamDef { i32 4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i32 0, i32 0) }, %struct._GimpParamDef { i32 4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i32 0, i32 0) }, %struct._GimpParamDef { i32 4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i32 0, i32 0) }], align 16
@.str.13 = private unnamed_addr constant [10 x i8] c"procedure\00", align 1
@.str.14 = private unnamed_addr constant [36 x i8] c"The procedure of the browser to use\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"help-domain\00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c"Help domain to use\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"help-locales\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"Language to use\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"help-id\00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"Help ID to open\00", align 1
@.str.21 = private unnamed_addr constant [19 x i8] c"DON'T USE THIS ONE\00", align 1
@.str.22 = private unnamed_addr constant [22 x i8] c"(Temporary procedure)\00", align 1
@.str.23 = private unnamed_addr constant [99 x i8] c"Sven Neumann <sven@gimp.org>, Michael Natterer <mitch@gimp.org>Henrik Brix Andersen <brix@gimp.org\00", align 1
@temp_proc_run.values = internal global [1 x %struct._GimpParam] zeroinitializer, align 16
@.str.24 = private unnamed_addr constant [25 x i8] c"http://www.gimp.org/help\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"gimp-main\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"file:\00", align 1
@load_help_progress_new.vtable = internal constant %struct.GimpHelpProgressVTable { void (i8*, i32, i8*)* @load_help_progress_start, void (i8*)* @load_help_progress_end, void (double, i8*)* @load_help_progress_update, void ()* null, void ()* null, void ()* null, void ()* null }, align 8

; Function Attrs: nounwind uwtable
define internal void @query() #0 {
entry:
  call void @gimp_install_procedure(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), i32 2, i32 4, i32 0, %struct._GimpParamDef* getelementptr inbounds ([4 x %struct._GimpParamDef], [4 x %struct._GimpParamDef]* @query.args, i32 0, i32 0), %struct._GimpParamDef* null)
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
  %status = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 8
  store i32 %nparams, i32* %nparams.addr, align 4
  store %struct._GimpParam* %param, %struct._GimpParam** %param.addr, align 8
  store i32* %nreturn_vals, i32** %nreturn_vals.addr, align 8
  store %struct._GimpParam** %return_vals, %struct._GimpParam*** %return_vals.addr, align 8
  store i32 3, i32* %status, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %call = call i8* @gimp_locale_directory() #5
  %call1 = call i8* @bindtextdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i32 0, i32 0), i8* %call) #6
  %call2 = call i8* @bind_textdomain_codeset(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0)) #6
  %call3 = call i8* @textdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i32 0, i32 0)) #6
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load i32, i32* %nparams.addr, align 4
  %cmp = icmp eq i32 %0, 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.end
  %1 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %1, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_int32 = bitcast %union._GimpParamData* %data to i32*
  %2 = load i32, i32* %d_int32, align 4
  %3 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx4 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %3, i64 1
  %data5 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx4, i32 0, i32 1
  %d_stringarray = bitcast %union._GimpParamData* %data5 to i8***
  %4 = load i8**, i8*** %d_stringarray, align 8
  %5 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx6 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %5, i64 2
  %data7 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx6, i32 0, i32 1
  %d_int328 = bitcast %union._GimpParamData* %data7 to i32*
  %6 = load i32, i32* %d_int328, align 4
  %7 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx9 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %7, i64 3
  %data10 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx9, i32 0, i32 1
  %d_stringarray11 = bitcast %union._GimpParamData* %data10 to i8***
  %8 = load i8**, i8*** %d_stringarray11, align 8
  %call12 = call i32 @gimp_help_init(i32 %2, i8** %4, i32 %6, i8** %8)
  %tobool = icmp ne i32 %call12, 0
  br i1 %tobool, label %if.end, label %if.then.13

if.then.13:                                       ; preds = %if.then
  store i32 1, i32* %status, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.13, %if.then
  br label %if.end.14

if.else:                                          ; preds = %do.end
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.11, i32 0, i32 0))
  store i32 1, i32* %status, align 4
  br label %if.end.14

if.end.14:                                        ; preds = %if.else, %if.end
  %9 = load i32, i32* %status, align 4
  %cmp15 = icmp eq i32 %9, 3
  br i1 %cmp15, label %if.then.16, label %if.end.18

if.then.16:                                       ; preds = %if.end.14
  %call17 = call %struct._GMainLoop* @g_main_loop_new(%struct._GMainContext* null, i32 0)
  store %struct._GMainLoop* %call17, %struct._GMainLoop** @main_loop, align 8
  call void @temp_proc_install()
  call void @gimp_extension_ack()
  call void @gimp_extension_enable()
  %10 = load %struct._GMainLoop*, %struct._GMainLoop** @main_loop, align 8
  call void @g_main_loop_run(%struct._GMainLoop* %10)
  %11 = load %struct._GMainLoop*, %struct._GMainLoop** @main_loop, align 8
  call void @g_main_loop_unref(%struct._GMainLoop* %11)
  store %struct._GMainLoop* null, %struct._GMainLoop** @main_loop, align 8
  call void @gimp_uninstall_temp_proc(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i32 0, i32 0))
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.16, %if.end.14
  store i32 21, i32* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 0), align 4
  %12 = load i32, i32* %status, align 4
  store i32 %12, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  %13 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 1, i32* %13, align 4
  %14 = load %struct._GimpParam**, %struct._GimpParam*** %return_vals.addr, align 8
  store %struct._GimpParam* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i32 0), %struct._GimpParam** %14, align 8
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

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8*, i8*) #2

; Function Attrs: nounwind readnone
declare i8* @gimp_locale_directory() #3

; Function Attrs: nounwind
declare i8* @bind_textdomain_codeset(i8*, i8*) #2

; Function Attrs: nounwind
declare i8* @textdomain(i8*) #2

declare i32 @gimp_help_init(i32, i8**, i32, i8**) #1

declare void @g_printerr(i8*, ...) #1

declare %struct._GMainLoop* @g_main_loop_new(%struct._GMainContext*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @temp_proc_install() #0 {
entry:
  call void @gimp_install_temp_proc(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), i32 3, i32 4, i32 0, %struct._GimpParamDef* getelementptr inbounds ([4 x %struct._GimpParamDef], [4 x %struct._GimpParamDef]* @temp_proc_install.args, i32 0, i32 0), %struct._GimpParamDef* null, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* @temp_proc_run)
  ret void
}

declare void @gimp_extension_ack() #1

declare void @gimp_extension_enable() #1

declare void @g_main_loop_run(%struct._GMainLoop*) #1

declare void @g_main_loop_unref(%struct._GMainLoop*) #1

declare void @gimp_uninstall_temp_proc(i8*) #1

declare void @gimp_install_temp_proc(i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, %struct._GimpParamDef*, %struct._GimpParamDef*, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)*) #1

; Function Attrs: nounwind uwtable
define internal void @temp_proc_run(i8* %name, i32 %nparams, %struct._GimpParam* %param, i32* %nreturn_vals, %struct._GimpParam** %return_vals) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %nparams.addr = alloca i32, align 4
  %param.addr = alloca %struct._GimpParam*, align 8
  %nreturn_vals.addr = alloca i32*, align 8
  %return_vals.addr = alloca %struct._GimpParam**, align 8
  %status = alloca i32, align 4
  %procedure = alloca i8*, align 8
  %help_domain = alloca i8*, align 8
  %help_locales = alloca i8*, align 8
  %help_id = alloca i8*, align 8
  store i8* %name, i8** %name.addr, align 8
  store i32 %nparams, i32* %nparams.addr, align 4
  store %struct._GimpParam* %param, %struct._GimpParam** %param.addr, align 8
  store i32* %nreturn_vals, i32** %nreturn_vals.addr, align 8
  store %struct._GimpParam** %return_vals, %struct._GimpParam*** %return_vals.addr, align 8
  store i32 3, i32* %status, align 4
  store i8* null, i8** %procedure, align 8
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.24, i32 0, i32 0), i8** %help_domain, align 8
  store i8* null, i8** %help_locales, align 8
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i32 0, i32 0), i8** %help_id, align 8
  %0 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 1, i32* %0, align 4
  %1 = load %struct._GimpParam**, %struct._GimpParam*** %return_vals.addr, align 8
  store %struct._GimpParam* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @temp_proc_run.values, i32 0, i32 0), %struct._GimpParam** %1, align 8
  %2 = load i32, i32* %nparams.addr, align 4
  %cmp = icmp eq i32 %2, 4
  br i1 %cmp, label %if.then, label %if.end.54

if.then:                                          ; preds = %entry
  %3 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %3, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_string = bitcast %union._GimpParamData* %data to i8**
  %4 = load i8*, i8** %d_string, align 8
  %tobool = icmp ne i8* %4, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %5 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx1 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %5, i64 0
  %data2 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx1, i32 0, i32 1
  %d_string3 = bitcast %union._GimpParamData* %data2 to i8**
  %6 = load i8*, i8** %d_string3, align 8
  %call = call i64 @strlen(i8* %6) #7
  %tobool4 = icmp ne i64 %call, 0
  br i1 %tobool4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %land.lhs.true
  %7 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx6 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %7, i64 0
  %data7 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx6, i32 0, i32 1
  %d_string8 = bitcast %union._GimpParamData* %data7 to i8**
  %8 = load i8*, i8** %d_string8, align 8
  store i8* %8, i8** %procedure, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.5, %land.lhs.true, %if.then
  %9 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx9 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %9, i64 1
  %data10 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx9, i32 0, i32 1
  %d_string11 = bitcast %union._GimpParamData* %data10 to i8**
  %10 = load i8*, i8** %d_string11, align 8
  %tobool12 = icmp ne i8* %10, null
  br i1 %tobool12, label %land.lhs.true.13, label %if.end.23

land.lhs.true.13:                                 ; preds = %if.end
  %11 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx14 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %11, i64 1
  %data15 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx14, i32 0, i32 1
  %d_string16 = bitcast %union._GimpParamData* %data15 to i8**
  %12 = load i8*, i8** %d_string16, align 8
  %call17 = call i64 @strlen(i8* %12) #7
  %tobool18 = icmp ne i64 %call17, 0
  br i1 %tobool18, label %if.then.19, label %if.end.23

if.then.19:                                       ; preds = %land.lhs.true.13
  %13 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx20 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %13, i64 1
  %data21 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx20, i32 0, i32 1
  %d_string22 = bitcast %union._GimpParamData* %data21 to i8**
  %14 = load i8*, i8** %d_string22, align 8
  store i8* %14, i8** %help_domain, align 8
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.19, %land.lhs.true.13, %if.end
  %15 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx24 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %15, i64 2
  %data25 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx24, i32 0, i32 1
  %d_string26 = bitcast %union._GimpParamData* %data25 to i8**
  %16 = load i8*, i8** %d_string26, align 8
  %tobool27 = icmp ne i8* %16, null
  br i1 %tobool27, label %land.lhs.true.28, label %if.end.38

land.lhs.true.28:                                 ; preds = %if.end.23
  %17 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx29 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %17, i64 2
  %data30 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx29, i32 0, i32 1
  %d_string31 = bitcast %union._GimpParamData* %data30 to i8**
  %18 = load i8*, i8** %d_string31, align 8
  %call32 = call i64 @strlen(i8* %18) #7
  %tobool33 = icmp ne i64 %call32, 0
  br i1 %tobool33, label %if.then.34, label %if.end.38

if.then.34:                                       ; preds = %land.lhs.true.28
  %19 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx35 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %19, i64 2
  %data36 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx35, i32 0, i32 1
  %d_string37 = bitcast %union._GimpParamData* %data36 to i8**
  %20 = load i8*, i8** %d_string37, align 8
  store i8* %20, i8** %help_locales, align 8
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.34, %land.lhs.true.28, %if.end.23
  %21 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx39 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %21, i64 3
  %data40 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx39, i32 0, i32 1
  %d_string41 = bitcast %union._GimpParamData* %data40 to i8**
  %22 = load i8*, i8** %d_string41, align 8
  %tobool42 = icmp ne i8* %22, null
  br i1 %tobool42, label %land.lhs.true.43, label %if.end.53

land.lhs.true.43:                                 ; preds = %if.end.38
  %23 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx44 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %23, i64 3
  %data45 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx44, i32 0, i32 1
  %d_string46 = bitcast %union._GimpParamData* %data45 to i8**
  %24 = load i8*, i8** %d_string46, align 8
  %call47 = call i64 @strlen(i8* %24) #7
  %tobool48 = icmp ne i64 %call47, 0
  br i1 %tobool48, label %if.then.49, label %if.end.53

if.then.49:                                       ; preds = %land.lhs.true.43
  %25 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx50 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %25, i64 3
  %data51 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx50, i32 0, i32 1
  %d_string52 = bitcast %union._GimpParamData* %data51 to i8**
  %26 = load i8*, i8** %d_string52, align 8
  store i8* %26, i8** %help_id, align 8
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.49, %land.lhs.true.43, %if.end.38
  br label %if.end.54

if.end.54:                                        ; preds = %if.end.53, %entry
  %27 = load i8*, i8** %procedure, align 8
  %tobool55 = icmp ne i8* %27, null
  br i1 %tobool55, label %if.end.57, label %if.then.56

if.then.56:                                       ; preds = %if.end.54
  store i32 1, i32* %status, align 4
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.56, %if.end.54
  store i32 21, i32* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @temp_proc_run.values, i32 0, i64 0, i32 0), align 4
  %28 = load i32, i32* %status, align 4
  store i32 %28, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @temp_proc_run.values, i32 0, i64 0, i32 1) to i32*), align 4
  %29 = load i32, i32* %status, align 4
  %cmp58 = icmp eq i32 %29, 3
  br i1 %cmp58, label %if.then.59, label %if.end.60

if.then.59:                                       ; preds = %if.end.57
  %30 = load i8*, i8** %procedure, align 8
  %31 = load i8*, i8** %help_domain, align 8
  %32 = load i8*, i8** %help_locales, align 8
  %33 = load i8*, i8** %help_id, align 8
  call void @load_help(i8* %30, i8* %31, i8* %32, i8* %33)
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.59, %if.end.57
  ret void
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

; Function Attrs: nounwind uwtable
define internal void @load_help(i8* %procedure, i8* %help_domain, i8* %help_locales, i8* %help_id) #0 {
entry:
  %procedure.addr = alloca i8*, align 8
  %help_domain.addr = alloca i8*, align 8
  %help_locales.addr = alloca i8*, align 8
  %help_id.addr = alloca i8*, align 8
  %idle_help = alloca %struct.IdleHelp*, align 8
  store i8* %procedure, i8** %procedure.addr, align 8
  store i8* %help_domain, i8** %help_domain.addr, align 8
  store i8* %help_locales, i8** %help_locales.addr, align 8
  store i8* %help_id, i8** %help_id.addr, align 8
  %call = call noalias i8* @g_slice_alloc(i64 32)
  %0 = bitcast i8* %call to %struct.IdleHelp*
  store %struct.IdleHelp* %0, %struct.IdleHelp** %idle_help, align 8
  %1 = load i8*, i8** %procedure.addr, align 8
  %call1 = call noalias i8* @g_strdup(i8* %1)
  %2 = load %struct.IdleHelp*, %struct.IdleHelp** %idle_help, align 8
  %procedure2 = getelementptr inbounds %struct.IdleHelp, %struct.IdleHelp* %2, i32 0, i32 0
  store i8* %call1, i8** %procedure2, align 8
  %3 = load i8*, i8** %help_domain.addr, align 8
  %call3 = call noalias i8* @g_strdup(i8* %3)
  %4 = load %struct.IdleHelp*, %struct.IdleHelp** %idle_help, align 8
  %help_domain4 = getelementptr inbounds %struct.IdleHelp, %struct.IdleHelp* %4, i32 0, i32 1
  store i8* %call3, i8** %help_domain4, align 8
  %5 = load i8*, i8** %help_locales.addr, align 8
  %call5 = call noalias i8* @g_strdup(i8* %5)
  %6 = load %struct.IdleHelp*, %struct.IdleHelp** %idle_help, align 8
  %help_locales6 = getelementptr inbounds %struct.IdleHelp, %struct.IdleHelp* %6, i32 0, i32 2
  store i8* %call5, i8** %help_locales6, align 8
  %7 = load i8*, i8** %help_id.addr, align 8
  %call7 = call noalias i8* @g_strdup(i8* %7)
  %8 = load %struct.IdleHelp*, %struct.IdleHelp** %idle_help, align 8
  %help_id8 = getelementptr inbounds %struct.IdleHelp, %struct.IdleHelp* %8, i32 0, i32 3
  store i8* %call7, i8** %help_id8, align 8
  %9 = load %struct.IdleHelp*, %struct.IdleHelp** %idle_help, align 8
  %10 = bitcast %struct.IdleHelp* %9 to i8*
  %call9 = call i32 @g_idle_add(i32 (i8*)* @load_help_idle, i8* %10)
  ret void
}

declare noalias i8* @g_slice_alloc(i64) #1

declare noalias i8* @g_strdup(i8*) #1

declare i32 @g_idle_add(i32 (i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @load_help_idle(i8* %data) #0 {
entry:
  %data.addr = alloca i8*, align 8
  %idle_help = alloca %struct.IdleHelp*, align 8
  %domain = alloca %struct._GimpHelpDomain*, align 8
  %progress = alloca %struct._GimpHelpProgress*, align 8
  %locales = alloca %struct._GList*, align 8
  %uri = alloca i8*, align 8
  %fatal_error = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %n_return_vals = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct.IdleHelp*
  store %struct.IdleHelp* %1, %struct.IdleHelp** %idle_help, align 8
  %2 = load %struct.IdleHelp*, %struct.IdleHelp** %idle_help, align 8
  %help_domain = getelementptr inbounds %struct.IdleHelp, %struct.IdleHelp* %2, i32 0, i32 1
  %3 = load i8*, i8** %help_domain, align 8
  %call = call %struct._GimpHelpDomain* @gimp_help_lookup_domain(i8* %3)
  store %struct._GimpHelpDomain* %call, %struct._GimpHelpDomain** %domain, align 8
  %4 = load %struct._GimpHelpDomain*, %struct._GimpHelpDomain** %domain, align 8
  %tobool = icmp ne %struct._GimpHelpDomain* %4, null
  br i1 %tobool, label %if.then, label %if.end.17

if.then:                                          ; preds = %entry
  store %struct._GimpHelpProgress* null, %struct._GimpHelpProgress** %progress, align 8
  %5 = load %struct.IdleHelp*, %struct.IdleHelp** %idle_help, align 8
  %help_locales = getelementptr inbounds %struct.IdleHelp, %struct.IdleHelp* %5, i32 0, i32 2
  %6 = load i8*, i8** %help_locales, align 8
  %call1 = call %struct._GList* @gimp_help_parse_locales(i8* %6)
  store %struct._GList* %call1, %struct._GList** %locales, align 8
  %7 = load %struct._GimpHelpDomain*, %struct._GimpHelpDomain** %domain, align 8
  %help_uri = getelementptr inbounds %struct._GimpHelpDomain, %struct._GimpHelpDomain* %7, i32 0, i32 1
  %8 = load i8*, i8** %help_uri, align 8
  %call2 = call i32 @g_str_has_prefix(i8* %8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i32 0, i32 0))
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.end, label %if.then.4

if.then.4:                                        ; preds = %if.then
  %call5 = call %struct._GimpHelpProgress* @load_help_progress_new()
  store %struct._GimpHelpProgress* %call5, %struct._GimpHelpProgress** %progress, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.then
  %9 = load %struct._GimpHelpDomain*, %struct._GimpHelpDomain** %domain, align 8
  %10 = load %struct._GList*, %struct._GList** %locales, align 8
  %11 = load %struct.IdleHelp*, %struct.IdleHelp** %idle_help, align 8
  %help_id = getelementptr inbounds %struct.IdleHelp, %struct.IdleHelp* %11, i32 0, i32 3
  %12 = load i8*, i8** %help_id, align 8
  %13 = load %struct._GimpHelpProgress*, %struct._GimpHelpProgress** %progress, align 8
  %call6 = call i8* @gimp_help_domain_map(%struct._GimpHelpDomain* %9, %struct._GList* %10, i8* %12, %struct._GimpHelpProgress* %13, %struct._GimpHelpLocale** null, i32* %fatal_error)
  store i8* %call6, i8** %uri, align 8
  %14 = load %struct._GimpHelpProgress*, %struct._GimpHelpProgress** %progress, align 8
  %tobool7 = icmp ne %struct._GimpHelpProgress* %14, null
  br i1 %tobool7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end
  %15 = load %struct._GimpHelpProgress*, %struct._GimpHelpProgress** %progress, align 8
  call void @gimp_help_progress_free(%struct._GimpHelpProgress* %15)
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %if.end
  %16 = load %struct._GList*, %struct._GList** %locales, align 8
  call void @g_list_free_full(%struct._GList* %16, void (i8*)* @g_free)
  %17 = load i8*, i8** %uri, align 8
  %tobool10 = icmp ne i8* %17, null
  br i1 %tobool10, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %if.end.9
  %18 = load %struct.IdleHelp*, %struct.IdleHelp** %idle_help, align 8
  %procedure = getelementptr inbounds %struct.IdleHelp, %struct.IdleHelp* %18, i32 0, i32 0
  %19 = load i8*, i8** %procedure, align 8
  %20 = load i8*, i8** %uri, align 8
  %call12 = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* %19, i32* %n_return_vals, i32 4, i8* %20, i32 22)
  store %struct._GimpParam* %call12, %struct._GimpParam** %return_vals, align 8
  %21 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %22 = load i32, i32* %n_return_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %21, i32 %22)
  %23 = load i8*, i8** %uri, align 8
  call void @g_free(i8* %23)
  br label %if.end.16

if.else:                                          ; preds = %if.end.9
  %24 = load i32, i32* %fatal_error, align 4
  %tobool13 = icmp ne i32 %24, 0
  br i1 %tobool13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.else
  %25 = load %struct._GMainLoop*, %struct._GMainLoop** @main_loop, align 8
  call void @g_main_loop_quit(%struct._GMainLoop* %25)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.14, %if.else
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15, %if.then.11
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %entry
  %26 = load %struct.IdleHelp*, %struct.IdleHelp** %idle_help, align 8
  %procedure18 = getelementptr inbounds %struct.IdleHelp, %struct.IdleHelp* %26, i32 0, i32 0
  %27 = load i8*, i8** %procedure18, align 8
  call void @g_free(i8* %27)
  %28 = load %struct.IdleHelp*, %struct.IdleHelp** %idle_help, align 8
  %help_domain19 = getelementptr inbounds %struct.IdleHelp, %struct.IdleHelp* %28, i32 0, i32 1
  %29 = load i8*, i8** %help_domain19, align 8
  call void @g_free(i8* %29)
  %30 = load %struct.IdleHelp*, %struct.IdleHelp** %idle_help, align 8
  %help_locales20 = getelementptr inbounds %struct.IdleHelp, %struct.IdleHelp* %30, i32 0, i32 2
  %31 = load i8*, i8** %help_locales20, align 8
  call void @g_free(i8* %31)
  %32 = load %struct.IdleHelp*, %struct.IdleHelp** %idle_help, align 8
  %help_id21 = getelementptr inbounds %struct.IdleHelp, %struct.IdleHelp* %32, i32 0, i32 3
  %33 = load i8*, i8** %help_id21, align 8
  call void @g_free(i8* %33)
  br label %do.body

do.body:                                          ; preds = %if.end.17
  %34 = load %struct.IdleHelp*, %struct.IdleHelp** %idle_help, align 8
  %35 = bitcast %struct.IdleHelp* %34 to i8*
  call void @g_slice_free1(i64 32, i8* %35)
  br label %do.end

do.end:                                           ; preds = %do.body
  ret i32 0
}

declare %struct._GimpHelpDomain* @gimp_help_lookup_domain(i8*) #1

declare %struct._GList* @gimp_help_parse_locales(i8*) #1

declare i32 @g_str_has_prefix(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct._GimpHelpProgress* @load_help_progress_new() #0 {
entry:
  %call = call %struct._GimpHelpProgress* @gimp_help_progress_new(%struct.GimpHelpProgressVTable* @load_help_progress_new.vtable, i8* null)
  ret %struct._GimpHelpProgress* %call
}

declare i8* @gimp_help_domain_map(%struct._GimpHelpDomain*, %struct._GList*, i8*, %struct._GimpHelpProgress*, %struct._GimpHelpLocale**, i32*) #1

declare void @gimp_help_progress_free(%struct._GimpHelpProgress*) #1

declare void @g_list_free_full(%struct._GList*, void (i8*)*) #1

declare void @g_free(i8*) #1

declare %struct._GimpParam* @gimp_run_procedure(i8*, i32*, ...) #1

declare void @gimp_destroy_params(%struct._GimpParam*, i32) #1

declare void @g_main_loop_quit(%struct._GMainLoop*) #1

declare void @g_slice_free1(i64, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @load_help_progress_start(i8* %message, i32 %cancelable, i8* %user_data) #0 {
entry:
  %message.addr = alloca i8*, align 8
  %cancelable.addr = alloca i32, align 4
  %user_data.addr = alloca i8*, align 8
  store i8* %message, i8** %message.addr, align 8
  store i32 %cancelable, i32* %cancelable.addr, align 4
  store i8* %user_data, i8** %user_data.addr, align 8
  %0 = load i8*, i8** %message.addr, align 8
  %call = call i32 @gimp_progress_init(i8* %0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @load_help_progress_end(i8* %user_data) #0 {
entry:
  %user_data.addr = alloca i8*, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  %call = call i32 @gimp_progress_end()
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @load_help_progress_update(double %value, i8* %user_data) #0 {
entry:
  %value.addr = alloca double, align 8
  %user_data.addr = alloca i8*, align 8
  store double %value, double* %value.addr, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  %0 = load double, double* %value.addr, align 8
  %call = call i32 @gimp_progress_update(double %0)
  ret void
}

declare %struct._GimpHelpProgress* @gimp_help_progress_new(%struct.GimpHelpProgressVTable*, i8*) #1

declare i32 @gimp_progress_init(i8*) #1

declare i32 @gimp_progress_end() #1

declare i32 @gimp_progress_update(double) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
