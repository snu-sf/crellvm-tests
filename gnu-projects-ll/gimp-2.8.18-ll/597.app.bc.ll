; ModuleID = './app/app.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GOptionContext = type opaque
%struct._GOptionGroup = type opaque
%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GimpObjectPrivate = type opaque
%struct._GimpCoreConfig = type { %struct._GimpBaseConfig, i8*, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, %struct._GimpTemplate*, %struct._GimpGrid*, i32, i64, i32, i32, i8*, i32, i32, i32, i64, %struct._GimpColorConfig*, i32, i32, %struct._GimpRGB, i32 }
%struct._GimpBaseConfig = type { %struct._GObject, i8*, i8*, i32, i64 }
%struct._GimpGrid = type opaque
%struct._GimpColorConfig = type { %struct._GObject, i32, i8*, i8*, i8*, i32, i8*, i32, i32, i8*, i32, %struct._GimpRGB, void ()*, void ()*, void ()*, void ()*, void ()*, void ()*, void ()*, void ()* }
%struct._GimpRGB = type { double, double, double, double }
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
%struct._GMainLoop = type opaque
%struct._GimpUserInstall = type opaque
%struct._GError = type { i32, i32, i8* }
%struct._GimpRc = type { %struct._GimpPluginConfig, i8*, i8*, i32, i32, i32 }
%struct._GimpPluginConfig = type { %struct._GimpGuiConfig, i8*, i8*, i8*, i8*, i8* }
%struct._GimpGuiConfig = type { %struct._GimpDisplayConfig, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i8*, i8*, i32, i32, i8*, i32, i8*, i32, i8*, i32, i32, i32, i32, i32, i32 }
%struct._GimpDisplayConfig = type { %struct._GimpCoreConfig, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, double, double, i32, i32, %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GimpDisplayOptions = type opaque
%struct._GMainContext = type opaque
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GClosureNotifyData = type { i8*, {}* }

@.str = private unnamed_addr constant [5 x i8] c"%s\0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [164 x i8] c"Unable to open a test swap file.\0A\0ATo avoid data loss, please check the location and permissions of the swap directory defined in your Preferences (currently \22%s\22).\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"exit\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"Gimp\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"EXIT: %s\0A\00", align 1
@__func__.app_exit_after_callback = private unnamed_addr constant [24 x i8] c"app_exit_after_callback\00", align 1

; Function Attrs: nounwind uwtable
define void @app_libs_init(%struct._GOptionContext* %context, i32 %no_interface) #0 {
entry:
  %context.addr = alloca %struct._GOptionContext*, align 8
  %no_interface.addr = alloca i32, align 4
  store %struct._GOptionContext* %context, %struct._GOptionContext** %context.addr, align 8
  store i32 %no_interface, i32* %no_interface.addr, align 4
  call void @g_type_init()
  %0 = load %struct._GOptionContext*, %struct._GOptionContext** %context.addr, align 8
  %call = call %struct._GOptionGroup* @gegl_get_option_group()
  call void @g_option_context_add_group(%struct._GOptionContext* %0, %struct._GOptionGroup* %call)
  ret void
}

declare void @g_type_init() #1

declare void @g_option_context_add_group(%struct._GOptionContext*, %struct._GOptionGroup*) #1

declare %struct._GOptionGroup* @gegl_get_option_group() #1

; Function Attrs: noreturn nounwind uwtable
define void @app_abort(i32 %no_interface, i8* %abort_message) #2 {
entry:
  %no_interface.addr = alloca i32, align 4
  %abort_message.addr = alloca i8*, align 8
  store i32 %no_interface, i32* %no_interface.addr, align 4
  store i8* %abort_message, i8** %abort_message.addr, align 8
  %0 = load i8*, i8** %abort_message.addr, align 8
  call void (i8*, ...) @g_print(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* %0)
  call void @app_exit(i32 1) #7
  unreachable

return:                                           ; No predecessors!
  ret void
}

declare void @g_print(i8*, ...) #1

; Function Attrs: noreturn nounwind uwtable
define void @app_exit(i32 %status) #2 {
entry:
  %status.addr = alloca i32, align 4
  store i32 %status, i32* %status.addr, align 4
  %0 = load i32, i32* %status.addr, align 4
  call void @exit(i32 %0) #8
  unreachable

return:                                           ; No predecessors!
  ret void
}

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

; Function Attrs: nounwind uwtable
define void @app_run(i8* %full_prog_name, i8** %filenames, i8* %alternate_system_gimprc, i8* %alternate_gimprc, i8* %session_name, i8* %batch_interpreter, i8** %batch_commands, i32 %as_new, i32 %no_interface, i32 %no_data, i32 %no_fonts, i32 %no_splash, i32 %be_verbose, i32 %use_shm, i32 %use_cpu_accel, i32 %console_messages, i32 %use_debug_handler, i32 %stack_trace_mode, i32 %pdb_compat_mode) #0 {
entry:
  %full_prog_name.addr = alloca i8*, align 8
  %filenames.addr = alloca i8**, align 8
  %alternate_system_gimprc.addr = alloca i8*, align 8
  %alternate_gimprc.addr = alloca i8*, align 8
  %session_name.addr = alloca i8*, align 8
  %batch_interpreter.addr = alloca i8*, align 8
  %batch_commands.addr = alloca i8**, align 8
  %as_new.addr = alloca i32, align 4
  %no_interface.addr = alloca i32, align 4
  %no_data.addr = alloca i32, align 4
  %no_fonts.addr = alloca i32, align 4
  %no_splash.addr = alloca i32, align 4
  %be_verbose.addr = alloca i32, align 4
  %use_shm.addr = alloca i32, align 4
  %use_cpu_accel.addr = alloca i32, align 4
  %console_messages.addr = alloca i32, align 4
  %use_debug_handler.addr = alloca i32, align 4
  %stack_trace_mode.addr = alloca i32, align 4
  %pdb_compat_mode.addr = alloca i32, align 4
  %update_status_func = alloca void (i8*, i8*, double)*, align 8
  %gimp = alloca %struct._Gimp*, align 8
  %config = alloca %struct._GimpBaseConfig*, align 8
  %loop = alloca %struct._GMainLoop*, align 8
  %run_loop = alloca %struct._GMainLoop*, align 8
  %swap_is_ok = alloca i32, align 4
  %install = alloca %struct._GimpUserInstall*, align 8
  %path = alloca i8*, align 8
  %i = alloca i32, align 4
  store i8* %full_prog_name, i8** %full_prog_name.addr, align 8
  store i8** %filenames, i8*** %filenames.addr, align 8
  store i8* %alternate_system_gimprc, i8** %alternate_system_gimprc.addr, align 8
  store i8* %alternate_gimprc, i8** %alternate_gimprc.addr, align 8
  store i8* %session_name, i8** %session_name.addr, align 8
  store i8* %batch_interpreter, i8** %batch_interpreter.addr, align 8
  store i8** %batch_commands, i8*** %batch_commands.addr, align 8
  store i32 %as_new, i32* %as_new.addr, align 4
  store i32 %no_interface, i32* %no_interface.addr, align 4
  store i32 %no_data, i32* %no_data.addr, align 4
  store i32 %no_fonts, i32* %no_fonts.addr, align 4
  store i32 %no_splash, i32* %no_splash.addr, align 4
  store i32 %be_verbose, i32* %be_verbose.addr, align 4
  store i32 %use_shm, i32* %use_shm.addr, align 4
  store i32 %use_cpu_accel, i32* %use_cpu_accel.addr, align 4
  store i32 %console_messages, i32* %console_messages.addr, align 4
  store i32 %use_debug_handler, i32* %use_debug_handler.addr, align 4
  store i32 %stack_trace_mode, i32* %stack_trace_mode.addr, align 4
  store i32 %pdb_compat_mode, i32* %pdb_compat_mode.addr, align 4
  store void (i8*, i8*, double)* null, void (i8*, i8*, double)** %update_status_func, align 8
  %0 = load i8*, i8** %full_prog_name.addr, align 8
  %1 = load i8*, i8** %session_name.addr, align 8
  %2 = load i32, i32* %be_verbose.addr, align 4
  %3 = load i32, i32* %no_data.addr, align 4
  %4 = load i32, i32* %no_fonts.addr, align 4
  %5 = load i32, i32* %no_interface.addr, align 4
  %6 = load i32, i32* %use_shm.addr, align 4
  %7 = load i32, i32* %console_messages.addr, align 4
  %8 = load i32, i32* %stack_trace_mode.addr, align 4
  %9 = load i32, i32* %pdb_compat_mode.addr, align 4
  %call = call %struct._Gimp* @gimp_new(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9)
  store %struct._Gimp* %call, %struct._Gimp** %gimp, align 8
  %10 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %11 = load i8*, i8** %full_prog_name.addr, align 8
  %12 = load i32, i32* %use_debug_handler.addr, align 4
  %13 = load i32, i32* %stack_trace_mode.addr, align 4
  call void @errors_init(%struct._Gimp* %10, i8* %11, i32 %12, i32 %13)
  %14 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  call void @units_init(%struct._Gimp* %14)
  %call1 = call i8* @gimp_directory() #9
  %call2 = call i32 @g_file_test(i8* %call1, i32 4)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %15 = load i32, i32* %be_verbose.addr, align 4
  %call3 = call %struct._GimpUserInstall* @gimp_user_install_new(i32 %15)
  store %struct._GimpUserInstall* %call3, %struct._GimpUserInstall** %install, align 8
  %16 = load %struct._GimpUserInstall*, %struct._GimpUserInstall** %install, align 8
  %call4 = call i32 @gimp_user_install_run(%struct._GimpUserInstall* %16)
  %17 = load %struct._GimpUserInstall*, %struct._GimpUserInstall** %install, align 8
  call void @gimp_user_install_free(%struct._GimpUserInstall* %17)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %18 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %19 = load i8*, i8** %alternate_system_gimprc.addr, align 8
  %20 = load i8*, i8** %alternate_gimprc.addr, align 8
  call void @gimp_load_config(%struct._Gimp* %18, i8* %19, i8* %20)
  %21 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %config5 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %21, i32 0, i32 1
  %22 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config5, align 8
  %23 = bitcast %struct._GimpCoreConfig* %22 to %struct._GTypeInstance*
  %call6 = call i64 @gimp_base_config_get_type() #9
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call6)
  %24 = bitcast %struct._GTypeInstance* %call7 to %struct._GimpBaseConfig*
  store %struct._GimpBaseConfig* %24, %struct._GimpBaseConfig** %config, align 8
  %25 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %config8 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %25, i32 0, i32 1
  %26 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config8, align 8
  %language = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %26, i32 0, i32 1
  %27 = load i8*, i8** %language, align 8
  call void @language_init(i8* %27)
  %28 = load %struct._GimpBaseConfig*, %struct._GimpBaseConfig** %config, align 8
  %29 = load i32, i32* %be_verbose.addr, align 4
  %30 = load i32, i32* %use_cpu_accel.addr, align 4
  %call9 = call i32 @base_init(%struct._GimpBaseConfig* %28, i32 %29, i32 %30)
  store i32 %call9, i32* %swap_is_ok, align 4
  %31 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  call void @gimp_gegl_init(%struct._Gimp* %31)
  %32 = load void (i8*, i8*, double)*, void (i8*, i8*, double)** %update_status_func, align 8
  %tobool10 = icmp ne void (i8*, i8*, double)* %32, null
  br i1 %tobool10, label %if.end.12, label %if.then.11

if.then.11:                                       ; preds = %if.end
  store void (i8*, i8*, double)* @app_init_update_noop, void (i8*, i8*, double)** %update_status_func, align 8
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.11, %if.end
  %33 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %34 = load void (i8*, i8*, double)*, void (i8*, i8*, double)** %update_status_func, align 8
  call void @gimp_initialize(%struct._Gimp* %33, void (i8*, i8*, double)* %34)
  %35 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %36 = load void (i8*, i8*, double)*, void (i8*, i8*, double)** %update_status_func, align 8
  call void @gimp_restore(%struct._Gimp* %35, void (i8*, i8*, double)* %36)
  %37 = load i32, i32* %swap_is_ok, align 4
  %tobool13 = icmp ne i32 %37, 0
  br i1 %tobool13, label %if.end.17, label %if.then.14

if.then.14:                                       ; preds = %if.end.12
  %38 = load %struct._GimpBaseConfig*, %struct._GimpBaseConfig** %config, align 8
  %swap_path = getelementptr inbounds %struct._GimpBaseConfig, %struct._GimpBaseConfig* %38, i32 0, i32 2
  %39 = load i8*, i8** %swap_path, align 8
  %call15 = call noalias i8* @gimp_config_path_expand(i8* %39, i32 0, %struct._GError** null)
  store i8* %call15, i8** %path, align 8
  %call16 = call i8* @gettext(i8* getelementptr inbounds ([164 x i8], [164 x i8]* @.str.1, i32 0, i32 0)) #6
  %40 = load i8*, i8** %path, align 8
  call void (i8*, ...) @g_message(i8* %call16, i8* %40)
  %41 = load i8*, i8** %path, align 8
  call void @g_free(i8* %41)
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.14, %if.end.12
  %42 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %edit_config = getelementptr inbounds %struct._Gimp, %struct._Gimp* %42, i32 0, i32 2
  %43 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %edit_config, align 8
  %44 = bitcast %struct._GimpCoreConfig* %43 to %struct._GTypeInstance*
  %call18 = call i64 @gimp_rc_get_type() #9
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %44, i64 %call18)
  %45 = bitcast %struct._GTypeInstance* %call19 to %struct._GimpRc*
  call void @gimp_rc_set_autosave(%struct._GimpRc* %45, i32 1)
  %call20 = call %struct._GMainLoop* @g_main_loop_new(%struct._GMainContext* null, i32 0)
  store %struct._GMainLoop* %call20, %struct._GMainLoop** %run_loop, align 8
  store %struct._GMainLoop* %call20, %struct._GMainLoop** %loop, align 8
  %46 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %47 = bitcast %struct._Gimp* %46 to i8*
  %48 = bitcast %struct._GMainLoop** %run_loop to i8*
  %call21 = call i64 @g_signal_connect_data(i8* %47, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), void ()* bitcast (i32 (%struct._Gimp*, i32, %struct._GMainLoop**)* @app_exit_after_callback to void ()*), i8* %48, void (i8*, %struct._GClosure*)* null, i32 1)
  %49 = load i8**, i8*** %filenames.addr, align 8
  %tobool22 = icmp ne i8** %49, null
  br i1 %tobool22, label %if.then.23, label %if.end.30

if.then.23:                                       ; preds = %if.end.17
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.23
  %50 = load i32, i32* %i, align 4
  %idxprom = sext i32 %50 to i64
  %51 = load i8**, i8*** %filenames.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %51, i64 %idxprom
  %52 = load i8*, i8** %arrayidx, align 8
  %cmp = icmp ne i8* %52, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %53 = load %struct._GMainLoop*, %struct._GMainLoop** %run_loop, align 8
  %tobool24 = icmp ne %struct._GMainLoop* %53, null
  br i1 %tobool24, label %if.then.25, label %if.end.29

if.then.25:                                       ; preds = %for.body
  %54 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %55 = load i32, i32* %i, align 4
  %idxprom26 = sext i32 %55 to i64
  %56 = load i8**, i8*** %filenames.addr, align 8
  %arrayidx27 = getelementptr inbounds i8*, i8** %56, i64 %idxprom26
  %57 = load i8*, i8** %arrayidx27, align 8
  %58 = load i32, i32* %as_new.addr, align 4
  %call28 = call i32 @file_open_from_command_line(%struct._Gimp* %54, i8* %57, i32 %58)
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.25, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.29
  %59 = load i32, i32* %i, align 4
  %inc = add nsw i32 %59, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.30

if.end.30:                                        ; preds = %for.end, %if.end.17
  %60 = load %struct._GMainLoop*, %struct._GMainLoop** %run_loop, align 8
  %tobool31 = icmp ne %struct._GMainLoop* %60, null
  br i1 %tobool31, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %if.end.30
  %61 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %62 = load i8*, i8** %batch_interpreter.addr, align 8
  %63 = load i8**, i8*** %batch_commands.addr, align 8
  call void @batch_run(%struct._Gimp* %61, i8* %62, i8** %63)
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.32, %if.end.30
  %64 = load %struct._GMainLoop*, %struct._GMainLoop** %run_loop, align 8
  %tobool34 = icmp ne %struct._GMainLoop* %64, null
  br i1 %tobool34, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %if.end.33
  %65 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  call void @gimp_threads_leave(%struct._Gimp* %65)
  %66 = load %struct._GMainLoop*, %struct._GMainLoop** %loop, align 8
  call void @g_main_loop_run(%struct._GMainLoop* %66)
  %67 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  call void @gimp_threads_enter(%struct._Gimp* %67)
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.35, %if.end.33
  %68 = load %struct._GMainLoop*, %struct._GMainLoop** %loop, align 8
  call void @g_main_loop_unref(%struct._GMainLoop* %68)
  %69 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %70 = bitcast %struct._Gimp* %69 to i8*
  call void @g_object_unref(i8* %70)
  call void @gimp_debug_instances()
  call void @errors_exit()
  call void @gegl_exit()
  call void @base_exit()
  ret void
}

declare %struct._Gimp* @gimp_new(i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare void @errors_init(%struct._Gimp*, i8*, i32, i32) #1

declare void @units_init(%struct._Gimp*) #1

declare i32 @g_file_test(i8*, i32) #1

; Function Attrs: nounwind readnone
declare i8* @gimp_directory() #4

declare %struct._GimpUserInstall* @gimp_user_install_new(i32) #1

declare i32 @gimp_user_install_run(%struct._GimpUserInstall*) #1

declare void @gimp_user_install_free(%struct._GimpUserInstall*) #1

declare void @gimp_load_config(%struct._Gimp*, i8*, i8*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_base_config_get_type() #4

declare void @language_init(i8*) #1

declare i32 @base_init(%struct._GimpBaseConfig*, i32, i32) #1

declare void @gimp_gegl_init(%struct._Gimp*) #1

; Function Attrs: nounwind uwtable
define internal void @app_init_update_noop(i8* %text1, i8* %text2, double %percentage) #0 {
entry:
  %text1.addr = alloca i8*, align 8
  %text2.addr = alloca i8*, align 8
  %percentage.addr = alloca double, align 8
  store i8* %text1, i8** %text1.addr, align 8
  store i8* %text2, i8** %text2.addr, align 8
  store double %percentage, double* %percentage.addr, align 8
  ret void
}

declare void @gimp_initialize(%struct._Gimp*, void (i8*, i8*, double)*) #1

declare void @gimp_restore(%struct._Gimp*, void (i8*, i8*, double)*) #1

declare noalias i8* @gimp_config_path_expand(i8*, i32, %struct._GError**) #1

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

; Function Attrs: nounwind
declare i8* @gettext(i8*) #5

declare void @g_free(i8*) #1

declare void @gimp_rc_set_autosave(%struct._GimpRc*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_rc_get_type() #4

declare %struct._GMainLoop* @g_main_loop_new(%struct._GMainContext*, i32) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @app_exit_after_callback(%struct._Gimp* %gimp, i32 %kill_it, %struct._GMainLoop** %loop) #0 {
entry:
  %retval = alloca i32, align 4
  %gimp.addr = alloca %struct._Gimp*, align 8
  %kill_it.addr = alloca i32, align 4
  %loop.addr = alloca %struct._GMainLoop**, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store i32 %kill_it, i32* %kill_it.addr, align 4
  store %struct._GMainLoop** %loop, %struct._GMainLoop*** %loop.addr, align 8
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %be_verbose = getelementptr inbounds %struct._Gimp, %struct._Gimp* %0, i32 0, i32 4
  %1 = load i32, i32* %be_verbose, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @g_print(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.app_exit_after_callback, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @gegl_exit()
  call void @tile_swap_exit()
  call void @exit(i32 0) #8
  unreachable

return:                                           ; No predecessors!
  %2 = load i32, i32* %retval
  ret i32 %2
}

declare i32 @file_open_from_command_line(%struct._Gimp*, i8*, i32) #1

declare void @batch_run(%struct._Gimp*, i8*, i8**) #1

declare void @gimp_threads_leave(%struct._Gimp*) #1

declare void @g_main_loop_run(%struct._GMainLoop*) #1

declare void @gimp_threads_enter(%struct._Gimp*) #1

declare void @g_main_loop_unref(%struct._GMainLoop*) #1

declare void @g_object_unref(i8*) #1

declare void @gimp_debug_instances() #1

declare void @errors_exit() #1

declare void @gegl_exit() #1

declare void @base_exit() #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #6

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #6

declare void @tile_swap_exit() #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { noreturn }
attributes #8 = { noreturn nounwind }
attributes #9 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
