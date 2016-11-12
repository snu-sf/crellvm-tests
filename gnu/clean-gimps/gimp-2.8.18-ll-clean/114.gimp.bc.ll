; ModuleID = './libgimp/gimp.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GIOChannel = type { i32, %struct._GIOFuncs*, i8*, %struct._GIConv*, %struct._GIConv*, i8*, i32, i64, %struct._GString*, %struct._GString*, %struct._GString*, [6 x i8], i8, i8*, i8* }
%struct._GIOFuncs = type { i32 (%struct._GIOChannel*, i8*, i64, i64*, %struct._GError**)*, i32 (%struct._GIOChannel*, i8*, i64, i64*, %struct._GError**)*, i32 (%struct._GIOChannel*, i64, i32, %struct._GError**)*, i32 (%struct._GIOChannel*, %struct._GError**)*, %struct._GSource* (%struct._GIOChannel*, i32)*, void (%struct._GIOChannel*)*, i32 (%struct._GIOChannel*, i32, %struct._GError**)*, i32 (%struct._GIOChannel*)* }
%struct._GError = type { i32, i32, i8* }
%struct._GSource = type { i8*, %struct._GSourceCallbackFuncs*, %struct._GSourceFuncs*, i32, %struct._GMainContext*, i32, i32, i32, %struct._GSList*, %struct._GSource*, %struct._GSource*, i8*, %struct._GSourcePrivate* }
%struct._GSourceCallbackFuncs = type { void (i8*)*, void (i8*)*, void (i8*, %struct._GSource*, i32 (i8*)**, i8**)* }
%struct._GSourceFuncs = type { i32 (%struct._GSource*, i32*)*, i32 (%struct._GSource*)*, i32 (%struct._GSource*, i32 (i8*)*, i8*)*, void (%struct._GSource*)*, i32 (i8*)*, void ()* }
%struct._GMainContext = type opaque
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GSourcePrivate = type opaque
%struct._GIConv = type opaque
%struct._GString = type { i8*, i64, i64 }
%struct._GimpPlugInInfo = type { void ()*, void ()*, void ()*, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* }
%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }
%struct._GDebugKey = type { i8*, i32 }
%struct._GHashTable = type opaque
%struct._GimpUnitVtable = type { i32 ()*, i32 ()*, i32 (i8*, double, i32, i8*, i8*, i8*, i8*)*, i32 (i32)*, void (i32, i32)*, double (i32)*, i32 (i32)*, i8* (i32)*, i8* (i32)*, i8* (i32)*, i8* (i32)*, i8* (i32)*, void ()*, void ()*, void ()*, void ()* }
%struct.__sigset_t = type { [16 x i64] }
%struct._GimpWireMessage = type { i32, i8* }
%struct._GPConfig = type { i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i8*, i8*, i8*, i32, i32 }
%struct._GPProcRun = type { i8*, i32, %struct._GPParam* }
%struct._GPParam = type { i32, %union.anon }
%union.anon = type { %struct._GimpRGB }
%struct._GimpParamDef = type { i32, i8*, i8* }
%struct._GPProcInstall = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, %struct._GPParamDef*, %struct._GPParamDef* }
%struct._GPParamDef = type { i32, i8*, i8* }
%struct._GPProcUninstall = type { i8* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GimpParasite = type { i8*, i32, i32, i8* }
%struct._GPProcReturn = type { i8*, i32, %struct._GPParam* }
%struct.fd_set = type { [16 x i64] }
%struct.timeval = type { i64, i64 }

@_writechannel = global %struct._GIOChannel* null, align 8
@.str = private unnamed_addr constant [8 x i8] c"LibGimp\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"gimp.c\00", align 1
@__func__.gimp_main = private unnamed_addr constant [10 x i8] c"gimp_main\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"info != NULL\00", align 1
@PLUG_IN_INFO = internal global %struct._GimpPlugInInfo zeroinitializer, align 8
@.str.3 = private unnamed_addr constant [6 x i8] c"-gimp\00", align 1
@.str.4 = private unnamed_addr constant [57 x i8] c"%s is a GIMP plug-in and must be run by GIMP to be used\0A\00", align 1
@progname = internal global i8* null, align 8
@.str.5 = private unnamed_addr constant [18 x i8] c"GIMP_PLUGIN_DEBUG\00", align 1
@gimp_debug_keys = internal constant [8 x %struct._GDebugKey] [%struct._GDebugKey { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i32 0, i32 0), i32 1 }, %struct._GDebugKey { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.29, i32 0, i32 0), i32 2 }, %struct._GDebugKey { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i32 0, i32 0), i32 2 }, %struct._GDebugKey { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i32 0, i32 0), i32 4 }, %struct._GDebugKey { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i32 0, i32 0), i32 8 }, %struct._GDebugKey { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.33, i32 0, i32 0), i32 16 }, %struct._GDebugKey { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i32 0, i32 0), i32 32 }, %struct._GDebugKey { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.35, i32 0, i32 0), i32 18 }], align 16
@gimp_debug_flags = internal global i32 0, align 4
@.str.6 = private unnamed_addr constant [17 x i8] c"G_MESSAGES_DEBUG\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c",LibGimp\00", align 1
@stack_trace_mode = internal global i32 0, align 4
@_readchannel = internal global %struct._GIOChannel* null, align 8
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"gimp20-libgimp\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"-query\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"-init\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"Here I am!\00", align 1
@temp_proc_ht = internal global %struct._GHashTable* null, align 8
@__func__.gimp_install_procedure = private unnamed_addr constant [23 x i8] c"gimp_install_procedure\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"name != NULL\00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c"type != GIMP_INTERNAL\00", align 1
@.str.16 = private unnamed_addr constant [70 x i8] c"(n_params == 0 && params == NULL) || (n_params > 0 && params != NULL)\00", align 1
@.str.17 = private unnamed_addr constant [90 x i8] c"(n_return_vals == 0 && return_vals == NULL) || (n_return_vals > 0 && return_vals != NULL)\00", align 1
@__func__.gimp_install_temp_proc = private unnamed_addr constant [23 x i8] c"gimp_install_temp_proc\00", align 1
@.str.18 = private unnamed_addr constant [23 x i8] c"type == GIMP_TEMPORARY\00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"run_proc != NULL\00", align 1
@__func__.gimp_uninstall_temp_proc = private unnamed_addr constant [25 x i8] c"gimp_uninstall_temp_proc\00", align 1
@__func__.gimp_run_procedure = private unnamed_addr constant [19 x i8] c"gimp_run_procedure\00", align 1
@.str.20 = private unnamed_addr constant [22 x i8] c"n_return_vals != NULL\00", align 1
@.str.21 = private unnamed_addr constant [23 x i8] c"unexpected message: %d\00", align 1
@__func__.gimp_run_procedure2 = private unnamed_addr constant [20 x i8] c"gimp_run_procedure2\00", align 1
@pdb_error_message = internal global i8* null, align 8
@pdb_error_status = internal global i32 3, align 4
@.str.22 = private unnamed_addr constant [8 x i8] c"success\00", align 1
@.str.23 = private unnamed_addr constant [16 x i8] c"execution error\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"calling error\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"cancelled\00", align 1
@.str.26 = private unnamed_addr constant [22 x i8] c"invalid return status\00", align 1
@_tile_width = internal global i32 -1, align 4
@_tile_height = internal global i32 -1, align 4
@_shm_ID = internal global i32 -1, align 4
@_shm_addr = internal global i8* null, align 8
@_install_cmap = internal global i32 0, align 4
@_min_colors = internal global i32 144, align 4
@_show_tool_tips = internal global i32 1, align 4
@_show_help_button = internal global i32 1, align 4
@_check_size = internal global i32 1, align 4
@_check_type = internal global i32 1, align 4
@_gdisp_ID = internal global i32 -1, align 4
@_wm_class = internal global i8* null, align 8
@_display_name = internal global i8* null, align 8
@_monitor_number = internal global i32 0, align 4
@_timestamp = internal global i32 0, align 4
@gimp_extension_enable.callback_added = internal global i32 0, align 4
@.str.27 = private unnamed_addr constant [23 x i8] c"gimp_extension_process\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"pid\00", align 1
@.str.29 = private unnamed_addr constant [15 x i8] c"fatal-warnings\00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c"fw\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"query\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"init\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"run\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"quit\00", align 1
@.str.35 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.36 = private unnamed_addr constant [24 x i8] c"Waiting for debugger...\00", align 1
@.str.37 = private unnamed_addr constant [19 x i8] c"%s terminated: %s\0A\00", align 1
@.str.38 = private unnamed_addr constant [21 x i8] c"%s: fatal error: %s\0A\00", align 1
@.str.39 = private unnamed_addr constant [31 x i8] c"%s: fatal error: GIMP crashed\0A\00", align 1
@write_buffer_index = internal global i64 0, align 8
@write_buffer = internal global [1024 x i8] zeroinitializer, align 16
@.str.40 = private unnamed_addr constant [28 x i8] c"%s: gimp_flush(): error: %s\00", align 1
@.str.41 = private unnamed_addr constant [24 x i8] c"%s: gimp_flush(): error\00", align 1
@.str.42 = private unnamed_addr constant [53 x i8] c"unexpected tile message received (should not happen)\00", align 1
@.str.43 = private unnamed_addr constant [60 x i8] c"unexpected proc return message received (should not happen)\00", align 1
@.str.44 = private unnamed_addr constant [61 x i8] c"unexpected temp proc run message received (should not happen\00", align 1
@.str.45 = private unnamed_addr constant [64 x i8] c"unexpected temp proc return message received (should not happen\00", align 1
@.str.46 = private unnamed_addr constant [61 x i8] c"unexpected proc install message received (should not happen)\00", align 1
@.str.47 = private unnamed_addr constant [57 x i8] c"unexpected has init message received (should not happen)\00", align 1
@.str.48 = private unnamed_addr constant [100 x i8] c"Could not execute plug-in \22%s\22\0A(%s)\0Abecause GIMP is using an older version of the plug-in protocol.\00", align 1
@.str.49 = private unnamed_addr constant [97 x i8] c"Could not execute plug-in \22%s\22\0A(%s)\0Abecause it uses an obsolete version of the plug-in protocol.\00", align 1
@.str.50 = private unnamed_addr constant [66 x i8] c"shmat() failed: %s\0ACould not attach to gimp shared memory segment\00", align 1
@.str.51 = private unnamed_addr constant [57 x i8] c"unexpected proc run message received (should not happen)\00", align 1
@.str.52 = private unnamed_addr constant [65 x i8] c"unexpected temp proc return message received (should not happen)\00", align 1

; Function Attrs: nounwind uwtable
define i32 @gimp_main(%struct._GimpPlugInInfo* %info, i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %info.addr = alloca %struct._GimpPlugInInfo*, align 8
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %basename = alloca i8*, align 8
  %env_string = alloca i8*, align 8
  %debug_string = alloca i8*, align 8
  %debug_messages = alloca i8*, align 8
  %len = alloca i32, align 4
  %tmp = alloca i8*, align 8
  %vtable = alloca %struct._GimpUnitVtable, align 8
  %fatal_mask = alloca i32, align 4
  store %struct._GimpPlugInInfo* %info, %struct._GimpPlugInInfo** %info.addr, align 8
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPlugInInfo*, %struct._GimpPlugInInfo** %info.addr, align 8
  %cmp = icmp ne %struct._GimpPlugInInfo* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_assertion_message_expr(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 351, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.gimp_main, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0)) #10
  unreachable

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load %struct._GimpPlugInInfo*, %struct._GimpPlugInInfo** %info.addr, align 8
  %2 = bitcast %struct._GimpPlugInInfo* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct._GimpPlugInInfo* @PLUG_IN_INFO to i8*), i8* %2, i64 32, i32 8, i1 false)
  %3 = load i32, i32* %argc.addr, align 4
  %cmp1 = icmp ne i32 %3, 6
  br i1 %cmp1, label %if.then.3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end
  %4 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %4, i64 1
  %5 = load i8*, i8** %arrayidx, align 8
  %call = call i32 @strcmp(i8* %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0)) #11
  %cmp2 = icmp ne i32 %call, 0
  br i1 %cmp2, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %lor.lhs.false, %do.end
  %6 = load i8**, i8*** %argv.addr, align 8
  %arrayidx4 = getelementptr inbounds i8*, i8** %6, i64 0
  %7 = load i8*, i8** %arrayidx4, align 8
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.4, i32 0, i32 0), i8* %7)
  store i32 1, i32* %retval
  br label %return

if.end.5:                                         ; preds = %lor.lhs.false
  call void @gimp_env_init(i32 1)
  %8 = load i8**, i8*** %argv.addr, align 8
  %arrayidx6 = getelementptr inbounds i8*, i8** %8, i64 0
  %9 = load i8*, i8** %arrayidx6, align 8
  store i8* %9, i8** @progname, align 8
  %10 = load i8*, i8** @progname, align 8
  %call7 = call noalias i8* @g_path_get_basename(i8* %10)
  store i8* %call7, i8** %basename, align 8
  %11 = load i8*, i8** %basename, align 8
  call void @g_set_prgname(i8* %11)
  %call8 = call i8* @g_getenv(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i32 0, i32 0))
  store i8* %call8, i8** %env_string, align 8
  %12 = load i8*, i8** %env_string, align 8
  %tobool = icmp ne i8* %12, null
  br i1 %tobool, label %if.then.9, label %if.end.39

if.then.9:                                        ; preds = %if.end.5
  %13 = load i8*, i8** %env_string, align 8
  %call10 = call i8* @strchr(i8* %13, i32 44) #11
  store i8* %call10, i8** %debug_string, align 8
  %14 = load i8*, i8** %debug_string, align 8
  %tobool11 = icmp ne i8* %14, null
  br i1 %tobool11, label %if.then.12, label %if.else.24

if.then.12:                                       ; preds = %if.then.9
  %15 = load i8*, i8** %debug_string, align 8
  %16 = load i8*, i8** %env_string, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %15 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %16 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  store i32 %conv, i32* %len, align 4
  %17 = load i8*, i8** %basename, align 8
  %call13 = call i64 @strlen(i8* %17) #11
  %18 = load i32, i32* %len, align 4
  %conv14 = sext i32 %18 to i64
  %cmp15 = icmp eq i64 %call13, %conv14
  br i1 %cmp15, label %land.lhs.true, label %if.end.23

land.lhs.true:                                    ; preds = %if.then.12
  %19 = load i8*, i8** %basename, align 8
  %20 = load i8*, i8** %env_string, align 8
  %21 = load i32, i32* %len, align 4
  %conv17 = sext i32 %21 to i64
  %call18 = call i32 @strncmp(i8* %19, i8* %20, i64 %conv17) #11
  %cmp19 = icmp eq i32 %call18, 0
  br i1 %cmp19, label %if.then.21, label %if.end.23

if.then.21:                                       ; preds = %land.lhs.true
  %22 = load i8*, i8** %debug_string, align 8
  %add.ptr = getelementptr inbounds i8, i8* %22, i64 1
  %call22 = call i32 @g_parse_debug_string(i8* %add.ptr, %struct._GDebugKey* getelementptr inbounds ([8 x %struct._GDebugKey], [8 x %struct._GDebugKey]* @gimp_debug_keys, i32 0, i32 0), i32 8)
  store i32 %call22, i32* @gimp_debug_flags, align 4
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.21, %land.lhs.true, %if.then.12
  br label %if.end.30

if.else.24:                                       ; preds = %if.then.9
  %23 = load i8*, i8** %env_string, align 8
  %24 = load i8*, i8** %basename, align 8
  %call25 = call i32 @strcmp(i8* %23, i8* %24) #11
  %cmp26 = icmp eq i32 %call25, 0
  br i1 %cmp26, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %if.else.24
  store i32 18, i32* @gimp_debug_flags, align 4
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.28, %if.else.24
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.29, %if.end.23
  %call31 = call i8* @g_getenv(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i32 0, i32 0))
  store i8* %call31, i8** %debug_messages, align 8
  %25 = load i8*, i8** %debug_messages, align 8
  %tobool32 = icmp ne i8* %25, null
  br i1 %tobool32, label %if.then.33, label %if.else.36

if.then.33:                                       ; preds = %if.end.30
  %26 = load i8*, i8** %debug_messages, align 8
  %call34 = call noalias i8* (i8*, ...) @g_strconcat(i8* %26, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), i8* null)
  store i8* %call34, i8** %tmp, align 8
  %27 = load i8*, i8** %tmp, align 8
  %call35 = call i32 @g_setenv(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i32 0, i32 0), i8* %27, i32 1)
  %28 = load i8*, i8** %tmp, align 8
  call void @g_free(i8* %28)
  br label %if.end.38

if.else.36:                                       ; preds = %if.end.30
  %call37 = call i32 @g_setenv(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 1)
  br label %if.end.38

if.end.38:                                        ; preds = %if.else.36, %if.then.33
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %if.end.5
  %29 = load i8*, i8** %basename, align 8
  call void @g_free(i8* %29)
  %30 = load i8**, i8*** %argv.addr, align 8
  %arrayidx40 = getelementptr inbounds i8*, i8** %30, i64 5
  %31 = load i8*, i8** %arrayidx40, align 8
  %call41 = call i32 @atoi(i8* %31) #11
  %cmp42 = icmp sgt i32 %call41, 2
  br i1 %cmp42, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.39
  br label %cond.end.52

cond.false:                                       ; preds = %if.end.39
  %32 = load i8**, i8*** %argv.addr, align 8
  %arrayidx44 = getelementptr inbounds i8*, i8** %32, i64 5
  %33 = load i8*, i8** %arrayidx44, align 8
  %call45 = call i32 @atoi(i8* %33) #11
  %cmp46 = icmp slt i32 %call45, 0
  br i1 %cmp46, label %cond.true.48, label %cond.false.49

cond.true.48:                                     ; preds = %cond.false
  br label %cond.end

cond.false.49:                                    ; preds = %cond.false
  %34 = load i8**, i8*** %argv.addr, align 8
  %arrayidx50 = getelementptr inbounds i8*, i8** %34, i64 5
  %35 = load i8*, i8** %arrayidx50, align 8
  %call51 = call i32 @atoi(i8* %35) #11
  br label %cond.end

cond.end:                                         ; preds = %cond.false.49, %cond.true.48
  %cond = phi i32 [ 0, %cond.true.48 ], [ %call51, %cond.false.49 ]
  br label %cond.end.52

cond.end.52:                                      ; preds = %cond.end, %cond.true
  %cond53 = phi i32 [ 2, %cond.true ], [ %cond, %cond.end ]
  store i32 %cond53, i32* @stack_trace_mode, align 4
  %call54 = call void (i32)* @gimp_signal_private(i32 1, void (i32)* @gimp_plugin_sigfatal_handler, i32 0)
  %call55 = call void (i32)* @gimp_signal_private(i32 2, void (i32)* @gimp_plugin_sigfatal_handler, i32 0)
  %call56 = call void (i32)* @gimp_signal_private(i32 3, void (i32)* @gimp_plugin_sigfatal_handler, i32 0)
  %call57 = call void (i32)* @gimp_signal_private(i32 7, void (i32)* @gimp_plugin_sigfatal_handler, i32 0)
  %call58 = call void (i32)* @gimp_signal_private(i32 11, void (i32)* @gimp_plugin_sigfatal_handler, i32 0)
  %call59 = call void (i32)* @gimp_signal_private(i32 15, void (i32)* @gimp_plugin_sigfatal_handler, i32 0)
  %call60 = call void (i32)* @gimp_signal_private(i32 8, void (i32)* @gimp_plugin_sigfatal_handler, i32 0)
  %call61 = call void (i32)* @gimp_signal_private(i32 13, void (i32)* inttoptr (i64 1 to void (i32)*), i32 0)
  %call62 = call void (i32)* @gimp_signal_private(i32 17, void (i32)* null, i32 268435456)
  %36 = load i8**, i8*** %argv.addr, align 8
  %arrayidx63 = getelementptr inbounds i8*, i8** %36, i64 2
  %37 = load i8*, i8** %arrayidx63, align 8
  %call64 = call i32 @atoi(i8* %37) #11
  %call65 = call %struct._GIOChannel* @g_io_channel_unix_new(i32 %call64)
  store %struct._GIOChannel* %call65, %struct._GIOChannel** @_readchannel, align 8
  %38 = load i8**, i8*** %argv.addr, align 8
  %arrayidx66 = getelementptr inbounds i8*, i8** %38, i64 3
  %39 = load i8*, i8** %arrayidx66, align 8
  %call67 = call i32 @atoi(i8* %39) #11
  %call68 = call %struct._GIOChannel* @g_io_channel_unix_new(i32 %call67)
  store %struct._GIOChannel* %call68, %struct._GIOChannel** @_writechannel, align 8
  %40 = load %struct._GIOChannel*, %struct._GIOChannel** @_readchannel, align 8
  %call69 = call i32 @g_io_channel_set_encoding(%struct._GIOChannel* %40, i8* null, %struct._GError** null)
  %41 = load %struct._GIOChannel*, %struct._GIOChannel** @_writechannel, align 8
  %call70 = call i32 @g_io_channel_set_encoding(%struct._GIOChannel* %41, i8* null, %struct._GError** null)
  %42 = load %struct._GIOChannel*, %struct._GIOChannel** @_readchannel, align 8
  call void @g_io_channel_set_buffered(%struct._GIOChannel* %42, i32 0)
  %43 = load %struct._GIOChannel*, %struct._GIOChannel** @_writechannel, align 8
  call void @g_io_channel_set_buffered(%struct._GIOChannel* %43, i32 0)
  %44 = load %struct._GIOChannel*, %struct._GIOChannel** @_readchannel, align 8
  call void @g_io_channel_set_close_on_unref(%struct._GIOChannel* %44, i32 1)
  %45 = load %struct._GIOChannel*, %struct._GIOChannel** @_writechannel, align 8
  call void @g_io_channel_set_close_on_unref(%struct._GIOChannel* %45, i32 1)
  call void @gp_init()
  call void @gimp_wire_set_writer(i32 (%struct._GIOChannel*, i8*, i64, i8*)* @gimp_write)
  call void @gimp_wire_set_flusher(i32 (%struct._GIOChannel*, i8*)* @gimp_flush)
  call void @g_type_init()
  call void @gimp_enums_init()
  %unit_get_number_of_units = getelementptr inbounds %struct._GimpUnitVtable, %struct._GimpUnitVtable* %vtable, i32 0, i32 0
  store i32 ()* @_gimp_unit_cache_get_number_of_units, i32 ()** %unit_get_number_of_units, align 8
  %unit_get_number_of_built_in_units = getelementptr inbounds %struct._GimpUnitVtable, %struct._GimpUnitVtable* %vtable, i32 0, i32 1
  store i32 ()* @_gimp_unit_cache_get_number_of_built_in_units, i32 ()** %unit_get_number_of_built_in_units, align 8
  %unit_new = getelementptr inbounds %struct._GimpUnitVtable, %struct._GimpUnitVtable* %vtable, i32 0, i32 2
  store i32 (i8*, double, i32, i8*, i8*, i8*, i8*)* @_gimp_unit_cache_new, i32 (i8*, double, i32, i8*, i8*, i8*, i8*)** %unit_new, align 8
  %unit_get_deletion_flag = getelementptr inbounds %struct._GimpUnitVtable, %struct._GimpUnitVtable* %vtable, i32 0, i32 3
  store i32 (i32)* @_gimp_unit_cache_get_deletion_flag, i32 (i32)** %unit_get_deletion_flag, align 8
  %unit_set_deletion_flag = getelementptr inbounds %struct._GimpUnitVtable, %struct._GimpUnitVtable* %vtable, i32 0, i32 4
  store void (i32, i32)* @_gimp_unit_cache_set_deletion_flag, void (i32, i32)** %unit_set_deletion_flag, align 8
  %unit_get_factor = getelementptr inbounds %struct._GimpUnitVtable, %struct._GimpUnitVtable* %vtable, i32 0, i32 5
  store double (i32)* @_gimp_unit_cache_get_factor, double (i32)** %unit_get_factor, align 8
  %unit_get_digits = getelementptr inbounds %struct._GimpUnitVtable, %struct._GimpUnitVtable* %vtable, i32 0, i32 6
  store i32 (i32)* @_gimp_unit_cache_get_digits, i32 (i32)** %unit_get_digits, align 8
  %unit_get_identifier = getelementptr inbounds %struct._GimpUnitVtable, %struct._GimpUnitVtable* %vtable, i32 0, i32 7
  store i8* (i32)* @_gimp_unit_cache_get_identifier, i8* (i32)** %unit_get_identifier, align 8
  %unit_get_symbol = getelementptr inbounds %struct._GimpUnitVtable, %struct._GimpUnitVtable* %vtable, i32 0, i32 8
  store i8* (i32)* @_gimp_unit_cache_get_symbol, i8* (i32)** %unit_get_symbol, align 8
  %unit_get_abbreviation = getelementptr inbounds %struct._GimpUnitVtable, %struct._GimpUnitVtable* %vtable, i32 0, i32 9
  store i8* (i32)* @_gimp_unit_cache_get_abbreviation, i8* (i32)** %unit_get_abbreviation, align 8
  %unit_get_singular = getelementptr inbounds %struct._GimpUnitVtable, %struct._GimpUnitVtable* %vtable, i32 0, i32 10
  store i8* (i32)* @_gimp_unit_cache_get_singular, i8* (i32)** %unit_get_singular, align 8
  %unit_get_plural = getelementptr inbounds %struct._GimpUnitVtable, %struct._GimpUnitVtable* %vtable, i32 0, i32 11
  store i8* (i32)* @_gimp_unit_cache_get_plural, i8* (i32)** %unit_get_plural, align 8
  call void @gimp_base_init(%struct._GimpUnitVtable* %vtable)
  %call72 = call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i32 0, i32 0)) #2
  %call73 = call i8* @gimp_locale_directory() #12
  %call74 = call i8* @bindtextdomain(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i32 0, i32 0), i8* %call73) #2
  %call75 = call i8* @bind_textdomain_codeset(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0)) #2
  %call76 = call i32 @g_log_set_handler(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 32, void (i8*, i32, i8*, i8*)* @gimp_message_func, i8* null)
  %call77 = call i32 @g_log_set_handler(i8* null, i32 32, void (i8*, i32, i8*, i8*)* @gimp_message_func, i8* null)
  %46 = load i32, i32* @gimp_debug_flags, align 4
  %and = and i32 %46, 2
  %tobool78 = icmp ne i32 %and, 0
  br i1 %tobool78, label %if.then.79, label %if.end.83

if.then.79:                                       ; preds = %cond.end.52
  %call81 = call i32 @g_log_set_always_fatal(i32 5)
  store i32 %call81, i32* %fatal_mask, align 4
  %47 = load i32, i32* %fatal_mask, align 4
  %or = or i32 %47, 24
  store i32 %or, i32* %fatal_mask, align 4
  %48 = load i32, i32* %fatal_mask, align 4
  %call82 = call i32 @g_log_set_always_fatal(i32 %48)
  br label %if.end.83

if.end.83:                                        ; preds = %if.then.79, %cond.end.52
  %49 = load i8**, i8*** %argv.addr, align 8
  %arrayidx84 = getelementptr inbounds i8*, i8** %49, i64 4
  %50 = load i8*, i8** %arrayidx84, align 8
  %call85 = call i32 @strcmp(i8* %50, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0)) #11
  %cmp86 = icmp eq i32 %call85, 0
  br i1 %cmp86, label %if.then.88, label %if.end.100

if.then.88:                                       ; preds = %if.end.83
  %51 = load void ()*, void ()** getelementptr inbounds (%struct._GimpPlugInInfo, %struct._GimpPlugInInfo* @PLUG_IN_INFO, i32 0, i32 0), align 8
  %tobool89 = icmp ne void ()* %51, null
  br i1 %tobool89, label %if.then.90, label %if.end.92

if.then.90:                                       ; preds = %if.then.88
  %52 = load %struct._GIOChannel*, %struct._GIOChannel** @_writechannel, align 8
  %call91 = call i32 @gp_has_init_write(%struct._GIOChannel* %52, i8* null)
  br label %if.end.92

if.end.92:                                        ; preds = %if.then.90, %if.then.88
  %53 = load i32, i32* @gimp_debug_flags, align 4
  %and93 = and i32 %53, 4
  %tobool94 = icmp ne i32 %and93, 0
  br i1 %tobool94, label %if.then.95, label %if.end.96

if.then.95:                                       ; preds = %if.end.92
  call void @gimp_debug_stop()
  br label %if.end.96

if.end.96:                                        ; preds = %if.then.95, %if.end.92
  %54 = load void ()*, void ()** getelementptr inbounds (%struct._GimpPlugInInfo, %struct._GimpPlugInInfo* @PLUG_IN_INFO, i32 0, i32 2), align 8
  %tobool97 = icmp ne void ()* %54, null
  br i1 %tobool97, label %if.then.98, label %if.end.99

if.then.98:                                       ; preds = %if.end.96
  %55 = load void ()*, void ()** getelementptr inbounds (%struct._GimpPlugInInfo, %struct._GimpPlugInInfo* @PLUG_IN_INFO, i32 0, i32 2), align 8
  call void %55()
  br label %if.end.99

if.end.99:                                        ; preds = %if.then.98, %if.end.96
  call void @gimp_close()
  store i32 0, i32* %retval
  br label %return

if.end.100:                                       ; preds = %if.end.83
  %56 = load i8**, i8*** %argv.addr, align 8
  %arrayidx101 = getelementptr inbounds i8*, i8** %56, i64 4
  %57 = load i8*, i8** %arrayidx101, align 8
  %call102 = call i32 @strcmp(i8* %57, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0)) #11
  %cmp103 = icmp eq i32 %call102, 0
  br i1 %cmp103, label %if.then.105, label %if.end.113

if.then.105:                                      ; preds = %if.end.100
  %58 = load i32, i32* @gimp_debug_flags, align 4
  %and106 = and i32 %58, 8
  %tobool107 = icmp ne i32 %and106, 0
  br i1 %tobool107, label %if.then.108, label %if.end.109

if.then.108:                                      ; preds = %if.then.105
  call void @gimp_debug_stop()
  br label %if.end.109

if.end.109:                                       ; preds = %if.then.108, %if.then.105
  %59 = load void ()*, void ()** getelementptr inbounds (%struct._GimpPlugInInfo, %struct._GimpPlugInInfo* @PLUG_IN_INFO, i32 0, i32 0), align 8
  %tobool110 = icmp ne void ()* %59, null
  br i1 %tobool110, label %if.then.111, label %if.end.112

if.then.111:                                      ; preds = %if.end.109
  %60 = load void ()*, void ()** getelementptr inbounds (%struct._GimpPlugInInfo, %struct._GimpPlugInInfo* @PLUG_IN_INFO, i32 0, i32 0), align 8
  call void %60()
  br label %if.end.112

if.end.112:                                       ; preds = %if.then.111, %if.end.109
  call void @gimp_close()
  store i32 0, i32* %retval
  br label %return

if.end.113:                                       ; preds = %if.end.100
  %61 = load i32, i32* @gimp_debug_flags, align 4
  %and114 = and i32 %61, 16
  %tobool115 = icmp ne i32 %and114, 0
  br i1 %tobool115, label %if.then.116, label %if.else.117

if.then.116:                                      ; preds = %if.end.113
  call void @gimp_debug_stop()
  br label %if.end.122

if.else.117:                                      ; preds = %if.end.113
  %62 = load i32, i32* @gimp_debug_flags, align 4
  %and118 = and i32 %62, 1
  %tobool119 = icmp ne i32 %and118, 0
  br i1 %tobool119, label %if.then.120, label %if.end.121

if.then.120:                                      ; preds = %if.else.117
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0))
  br label %if.end.121

if.end.121:                                       ; preds = %if.then.120, %if.else.117
  br label %if.end.122

if.end.122:                                       ; preds = %if.end.121, %if.then.116
  %call123 = call %struct._GHashTable* @g_hash_table_new(i32 (i8*)* @g_str_hash, i32 (i8*, i8*)* @g_str_equal)
  store %struct._GHashTable* %call123, %struct._GHashTable** @temp_proc_ht, align 8
  %63 = load %struct._GIOChannel*, %struct._GIOChannel** @_readchannel, align 8
  %call124 = call i32 @g_io_add_watch(%struct._GIOChannel* %63, i32 24, i32 (%struct._GIOChannel*, i32, i8*)* @gimp_plugin_io_error_handler, i8* null)
  call void @gimp_loop()
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.122, %if.end.112, %if.end.99, %if.then.3
  %64 = load i32, i32* %retval
  ret i32 %64
}

; Function Attrs: noreturn
declare void @g_assertion_message_expr(i8*, i8*, i32, i8*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

declare void @g_printerr(i8*, ...) #4

declare void @gimp_env_init(i32) #4

declare noalias i8* @g_path_get_basename(i8*) #4

declare void @g_set_prgname(i8*) #4

declare i8* @g_getenv(i8*) #4

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #3

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #3

declare i32 @g_parse_debug_string(i8*, %struct._GDebugKey*, i32) #4

declare noalias i8* @g_strconcat(i8*, ...) #4

declare i32 @g_setenv(i8*, i8*, i32) #4

declare void @g_free(i8*) #4

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #3

declare void (i32)* @gimp_signal_private(i32, void (i32)*, i32) #4

; Function Attrs: nounwind uwtable
define internal void @gimp_plugin_sigfatal_handler(i32 %sig_num) #0 {
entry:
  %sig_num.addr = alloca i32, align 4
  %sigset = alloca %struct.__sigset_t, align 8
  %sigset8 = alloca %struct.__sigset_t, align 8
  store i32 %sig_num, i32* %sig_num.addr, align 4
  %0 = load i32, i32* %sig_num.addr, align 4
  switch i32 %0, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb
    i32 3, label %sw.bb
    i32 6, label %sw.bb
    i32 15, label %sw.bb
    i32 7, label %sw.bb.1
    i32 11, label %sw.bb.1
    i32 8, label %sw.bb.1
    i32 13, label %sw.bb.1
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry, %entry, %entry
  %1 = load i8*, i8** @progname, align 8
  %2 = load i32, i32* %sig_num.addr, align 4
  %call = call i8* @g_strsignal(i32 %2) #12
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.37, i32 0, i32 0), i8* %1, i8* %call)
  br label %sw.epilog.11

sw.bb.1:                                          ; preds = %entry, %entry, %entry, %entry
  br label %sw.default

sw.default:                                       ; preds = %entry, %sw.bb.1
  %3 = load i8*, i8** @progname, align 8
  %4 = load i32, i32* %sig_num.addr, align 4
  %call2 = call i8* @g_strsignal(i32 %4) #12
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.38, i32 0, i32 0), i8* %3, i8* %call2)
  %5 = load i32, i32* @stack_trace_mode, align 4
  switch i32 %5, label %sw.epilog [
    i32 0, label %sw.bb.3
    i32 1, label %sw.bb.4
    i32 2, label %sw.bb.7
  ]

sw.bb.3:                                          ; preds = %sw.default
  br label %sw.epilog

sw.bb.4:                                          ; preds = %sw.default
  %call5 = call i32 @sigemptyset(%struct.__sigset_t* %sigset) #2
  %call6 = call i32 @sigprocmask(i32 2, %struct.__sigset_t* %sigset, %struct.__sigset_t* null) #2
  %6 = load i8*, i8** @progname, align 8
  call void @g_on_error_query(i8* %6)
  br label %sw.epilog

sw.bb.7:                                          ; preds = %sw.default
  %call9 = call i32 @sigemptyset(%struct.__sigset_t* %sigset8) #2
  %call10 = call i32 @sigprocmask(i32 2, %struct.__sigset_t* %sigset8, %struct.__sigset_t* null) #2
  %7 = load i8*, i8** @progname, align 8
  call void @g_on_error_stack_trace(i8* %7)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.7, %sw.bb.4, %sw.bb.3
  br label %sw.epilog.11

sw.epilog.11:                                     ; preds = %sw.epilog, %sw.bb
  call void @gimp_quit() #10
  unreachable

return:                                           ; No predecessors!
  ret void
}

declare %struct._GIOChannel* @g_io_channel_unix_new(i32) #4

declare i32 @g_io_channel_set_encoding(%struct._GIOChannel*, i8*, %struct._GError**) #4

declare void @g_io_channel_set_buffered(%struct._GIOChannel*, i32) #4

declare void @g_io_channel_set_close_on_unref(%struct._GIOChannel*, i32) #4

declare void @gp_init() #4

declare void @gimp_wire_set_writer(i32 (%struct._GIOChannel*, i8*, i64, i8*)*) #4

; Function Attrs: nounwind uwtable
define internal i32 @gimp_write(%struct._GIOChannel* %channel, i8* %buf, i64 %count, i8* %user_data) #0 {
entry:
  %retval = alloca i32, align 4
  %channel.addr = alloca %struct._GIOChannel*, align 8
  %buf.addr = alloca i8*, align 8
  %count.addr = alloca i64, align 8
  %user_data.addr = alloca i8*, align 8
  %bytes = alloca i64, align 8
  store %struct._GIOChannel* %channel, %struct._GIOChannel** %channel.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i64 %count, i64* %count.addr, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.6, %entry
  %0 = load i64, i64* %count.addr, align 8
  %cmp = icmp ugt i64 %0, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i64, i64* @write_buffer_index, align 8
  %2 = load i64, i64* %count.addr, align 8
  %add = add i64 %1, %2
  %cmp1 = icmp uge i64 %add, 1024
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %3 = load i64, i64* @write_buffer_index, align 8
  %sub = sub i64 1024, %3
  store i64 %sub, i64* %bytes, align 8
  %4 = load i64, i64* @write_buffer_index, align 8
  %arrayidx = getelementptr inbounds [1024 x i8], [1024 x i8]* @write_buffer, i32 0, i64 %4
  %5 = load i8*, i8** %buf.addr, align 8
  %6 = load i64, i64* %bytes, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %arrayidx, i8* %5, i64 %6, i32 1, i1 false)
  %7 = load i64, i64* %bytes, align 8
  %8 = load i64, i64* @write_buffer_index, align 8
  %add2 = add i64 %8, %7
  store i64 %add2, i64* @write_buffer_index, align 8
  %9 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %call = call i32 @gimp_wire_flush(%struct._GIOChannel* %9, i8* null)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then.3

if.then.3:                                        ; preds = %if.then
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.6

if.else:                                          ; preds = %while.body
  %10 = load i64, i64* %count.addr, align 8
  store i64 %10, i64* %bytes, align 8
  %11 = load i64, i64* @write_buffer_index, align 8
  %arrayidx4 = getelementptr inbounds [1024 x i8], [1024 x i8]* @write_buffer, i32 0, i64 %11
  %12 = load i8*, i8** %buf.addr, align 8
  %13 = load i64, i64* %bytes, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %arrayidx4, i8* %12, i64 %13, i32 1, i1 false)
  %14 = load i64, i64* %bytes, align 8
  %15 = load i64, i64* @write_buffer_index, align 8
  %add5 = add i64 %15, %14
  store i64 %add5, i64* @write_buffer_index, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %if.else, %if.end
  %16 = load i64, i64* %bytes, align 8
  %17 = load i8*, i8** %buf.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %17, i64 %16
  store i8* %add.ptr, i8** %buf.addr, align 8
  %18 = load i64, i64* %bytes, align 8
  %19 = load i64, i64* %count.addr, align 8
  %sub7 = sub i64 %19, %18
  store i64 %sub7, i64* %count.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.3
  %20 = load i32, i32* %retval
  ret i32 %20
}

declare void @gimp_wire_set_flusher(i32 (%struct._GIOChannel*, i8*)*) #4

; Function Attrs: nounwind uwtable
define internal i32 @gimp_flush(%struct._GIOChannel* %channel, i8* %user_data) #0 {
entry:
  %retval = alloca i32, align 4
  %channel.addr = alloca %struct._GIOChannel*, align 8
  %user_data.addr = alloca i8*, align 8
  %status = alloca i32, align 4
  %error = alloca %struct._GError*, align 8
  %count = alloca i64, align 8
  %bytes = alloca i64, align 8
  store %struct._GIOChannel* %channel, %struct._GIOChannel** %channel.addr, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  store %struct._GError* null, %struct._GError** %error, align 8
  %0 = load i64, i64* @write_buffer_index, align 8
  %cmp = icmp ugt i64 %0, 0
  br i1 %cmp, label %if.then, label %if.end.9

if.then:                                          ; preds = %entry
  store i64 0, i64* %count, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.8, %if.then
  %1 = load i64, i64* %count, align 8
  %2 = load i64, i64* @write_buffer_index, align 8
  %cmp1 = icmp ne i64 %1, %2
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %do.body

do.body:                                          ; preds = %do.cond, %while.body
  store i64 0, i64* %bytes, align 8
  %3 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %4 = load i64, i64* %count, align 8
  %arrayidx = getelementptr inbounds [1024 x i8], [1024 x i8]* @write_buffer, i32 0, i64 %4
  %5 = load i64, i64* @write_buffer_index, align 8
  %6 = load i64, i64* %count, align 8
  %sub = sub i64 %5, %6
  %call = call i32 @g_io_channel_write_chars(%struct._GIOChannel* %3, i8* %arrayidx, i64 %sub, i64* %bytes, %struct._GError** %error)
  store i32 %call, i32* %status, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %7 = load i32, i32* %status, align 4
  %cmp2 = icmp eq i32 %7, 3
  br i1 %cmp2, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %8 = load i32, i32* %status, align 4
  %cmp3 = icmp ne i32 %8, 1
  br i1 %cmp3, label %if.then.4, label %if.end.8

if.then.4:                                        ; preds = %do.end
  %9 = load %struct._GError*, %struct._GError** %error, align 8
  %tobool = icmp ne %struct._GError* %9, null
  br i1 %tobool, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.then.4
  %call6 = call i8* @g_get_prgname()
  %10 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %10, i32 0, i32 2
  %11 = load i8*, i8** %message, align 8
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.40, i32 0, i32 0), i8* %call6, i8* %11)
  %12 = load %struct._GError*, %struct._GError** %error, align 8
  call void @g_error_free(%struct._GError* %12)
  br label %if.end

if.else:                                          ; preds = %if.then.4
  %call7 = call i8* @g_get_prgname()
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.41, i32 0, i32 0), i8* %call7)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.5
  store i32 0, i32* %retval
  br label %return

if.end.8:                                         ; preds = %do.end
  %13 = load i64, i64* %bytes, align 8
  %14 = load i64, i64* %count, align 8
  %add = add i64 %14, %13
  store i64 %add, i64* %count, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i64 0, i64* @write_buffer_index, align 8
  br label %if.end.9

if.end.9:                                         ; preds = %while.end, %entry
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.9, %if.end
  %15 = load i32, i32* %retval
  ret i32 %15
}

declare void @g_type_init() #4

declare void @gimp_enums_init() #4

declare hidden i32 @_gimp_unit_cache_get_number_of_units() #4

; Function Attrs: nounwind readnone
declare hidden i32 @_gimp_unit_cache_get_number_of_built_in_units() #5

declare hidden i32 @_gimp_unit_cache_new(i8*, double, i32, i8*, i8*, i8*, i8*) #4

declare hidden i32 @_gimp_unit_cache_get_deletion_flag(i32) #4

declare hidden void @_gimp_unit_cache_set_deletion_flag(i32, i32) #4

declare hidden double @_gimp_unit_cache_get_factor(i32) #4

declare hidden i32 @_gimp_unit_cache_get_digits(i32) #4

declare hidden i8* @_gimp_unit_cache_get_identifier(i32) #4

declare hidden i8* @_gimp_unit_cache_get_symbol(i32) #4

declare hidden i8* @_gimp_unit_cache_get_abbreviation(i32) #4

declare hidden i8* @_gimp_unit_cache_get_singular(i32) #4

declare hidden i8* @_gimp_unit_cache_get_plural(i32) #4

declare void @gimp_base_init(%struct._GimpUnitVtable*) #4

; Function Attrs: nounwind
declare i8* @setlocale(i32, i8*) #6

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8*, i8*) #6

; Function Attrs: nounwind readnone
declare i8* @gimp_locale_directory() #5

; Function Attrs: nounwind
declare i8* @bind_textdomain_codeset(i8*, i8*) #6

declare i32 @g_log_set_handler(i8*, i32, void (i8*, i32, i8*, i8*)*, i8*) #4

; Function Attrs: nounwind uwtable
define internal void @gimp_message_func(i8* %log_domain, i32 %log_level, i8* %message, i8* %data) #0 {
entry:
  %log_domain.addr = alloca i8*, align 8
  %log_level.addr = alloca i32, align 4
  %message.addr = alloca i8*, align 8
  %data.addr = alloca i8*, align 8
  store i8* %log_domain, i8** %log_domain.addr, align 8
  store i32 %log_level, i32* %log_level.addr, align 4
  store i8* %message, i8** %message.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %message.addr, align 8
  %call = call i32 @gimp_message(i8* %0)
  ret void
}

declare i32 @g_log_set_always_fatal(i32) #4

declare i32 @gp_has_init_write(%struct._GIOChannel*, i8*) #4

; Function Attrs: nounwind uwtable
define internal void @gimp_debug_stop() #0 {
entry:
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.36, i32 0, i32 0))
  %call = call i32 @raise(i32 19) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_close() #0 {
entry:
  %0 = load i32, i32* @gimp_debug_flags, align 4
  %and = and i32 %0, 32
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @gimp_debug_stop()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load void ()*, void ()** getelementptr inbounds (%struct._GimpPlugInInfo, %struct._GimpPlugInInfo* @PLUG_IN_INFO, i32 0, i32 1), align 8
  %tobool1 = icmp ne void ()* %1, null
  br i1 %tobool1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %2 = load void ()*, void ()** getelementptr inbounds (%struct._GimpPlugInInfo, %struct._GimpPlugInInfo* @PLUG_IN_INFO, i32 0, i32 1), align 8
  call void %2()
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  %3 = load i32, i32* @_shm_ID, align 4
  %cmp = icmp ne i32 %3, -1
  br i1 %cmp, label %land.lhs.true, label %if.end.6

land.lhs.true:                                    ; preds = %if.end.3
  %4 = load i8*, i8** @_shm_addr, align 8
  %tobool4 = icmp ne i8* %4, null
  br i1 %tobool4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %land.lhs.true
  %5 = load i8*, i8** @_shm_addr, align 8
  %call = call i32 @shmdt(i8* %5) #2
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %land.lhs.true, %if.end.3
  %6 = load %struct._GIOChannel*, %struct._GIOChannel** @_writechannel, align 8
  %call7 = call i32 @gp_quit_write(%struct._GIOChannel* %6, i8* null)
  ret void
}

declare void @g_log(i8*, i32, i8*, ...) #4

declare %struct._GHashTable* @g_hash_table_new(i32 (i8*)*, i32 (i8*, i8*)*) #4

declare i32 @g_str_hash(i8*) #4

declare i32 @g_str_equal(i8*, i8*) #4

declare i32 @g_io_add_watch(%struct._GIOChannel*, i32, i32 (%struct._GIOChannel*, i32, i8*)*, i8*) #4

; Function Attrs: nounwind uwtable
define internal i32 @gimp_plugin_io_error_handler(%struct._GIOChannel* %channel, i32 %cond, i8* %data) #0 {
entry:
  %retval = alloca i32, align 4
  %channel.addr = alloca %struct._GIOChannel*, align 8
  %cond.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  store %struct._GIOChannel* %channel, %struct._GIOChannel** %channel.addr, align 8
  store i32 %cond, i32* %cond.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** @progname, align 8
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.39, i32 0, i32 0), i8* %0)
  call void @gimp_quit() #10
  unreachable

return:                                           ; No predecessors!
  %1 = load i32, i32* %retval
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define internal void @gimp_loop() #0 {
entry:
  %msg = alloca %struct._GimpWireMessage, align 8
  br label %while.body

while.body:                                       ; preds = %entry, %sw.epilog
  %0 = load %struct._GIOChannel*, %struct._GIOChannel** @_readchannel, align 8
  %call = call i32 @gimp_wire_read_msg(%struct._GIOChannel* %0, %struct._GimpWireMessage* %msg, i8* null)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %while.body
  call void @gimp_close()
  br label %return

if.end:                                           ; preds = %while.body
  %type = getelementptr inbounds %struct._GimpWireMessage, %struct._GimpWireMessage* %msg, i32 0, i32 0
  %1 = load i32, i32* %type, align 4
  switch i32 %1, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.1
    i32 2, label %sw.bb.2
    i32 3, label %sw.bb.2
    i32 4, label %sw.bb.2
    i32 5, label %sw.bb.3
    i32 6, label %sw.bb.5
    i32 7, label %sw.bb.6
    i32 8, label %sw.bb.7
    i32 9, label %sw.bb.8
    i32 12, label %sw.bb.9
  ]

sw.bb:                                            ; preds = %if.end
  call void @gimp_wire_destroy(%struct._GimpWireMessage* %msg)
  call void @gimp_close()
  br label %return

sw.bb.1:                                          ; preds = %if.end
  %data = getelementptr inbounds %struct._GimpWireMessage, %struct._GimpWireMessage* %msg, i32 0, i32 1
  %2 = load i8*, i8** %data, align 8
  %3 = bitcast i8* %2 to %struct._GPConfig*
  call void @gimp_config(%struct._GPConfig* %3)
  br label %sw.epilog

sw.bb.2:                                          ; preds = %if.end, %if.end, %if.end
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.42, i32 0, i32 0))
  br label %sw.epilog

sw.bb.3:                                          ; preds = %if.end
  %data4 = getelementptr inbounds %struct._GimpWireMessage, %struct._GimpWireMessage* %msg, i32 0, i32 1
  %4 = load i8*, i8** %data4, align 8
  %5 = bitcast i8* %4 to %struct._GPProcRun*
  call void @gimp_proc_run(%struct._GPProcRun* %5)
  call void @gimp_wire_destroy(%struct._GimpWireMessage* %msg)
  call void @gimp_close()
  br label %return

sw.bb.5:                                          ; preds = %if.end
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.43, i32 0, i32 0))
  br label %sw.epilog

sw.bb.6:                                          ; preds = %if.end
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.44, i32 0, i32 0))
  br label %sw.epilog

sw.bb.7:                                          ; preds = %if.end
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.45, i32 0, i32 0))
  br label %sw.epilog

sw.bb.8:                                          ; preds = %if.end
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.46, i32 0, i32 0))
  br label %sw.epilog

sw.bb.9:                                          ; preds = %if.end
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.47, i32 0, i32 0))
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %sw.bb.9, %sw.bb.8, %sw.bb.7, %sw.bb.6, %sw.bb.5, %sw.bb.2, %sw.bb.1
  call void @gimp_wire_destroy(%struct._GimpWireMessage* %msg)
  br label %while.body

return:                                           ; preds = %sw.bb.3, %sw.bb, %if.then
  ret void
}

; Function Attrs: noreturn nounwind uwtable
define void @gimp_quit() #7 {
entry:
  call void @gimp_close()
  call void @exit(i32 0) #13
  unreachable

return:                                           ; No predecessors!
  ret void
}

; Function Attrs: noreturn nounwind
declare void @exit(i32) #8

; Function Attrs: nounwind uwtable
define void @gimp_install_procedure(i8* %name, i8* %blurb, i8* %help, i8* %author, i8* %copyright, i8* %date, i8* %menu_label, i8* %image_types, i32 %type, i32 %n_params, i32 %n_return_vals, %struct._GimpParamDef* %params, %struct._GimpParamDef* %return_vals) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %blurb.addr = alloca i8*, align 8
  %help.addr = alloca i8*, align 8
  %author.addr = alloca i8*, align 8
  %copyright.addr = alloca i8*, align 8
  %date.addr = alloca i8*, align 8
  %menu_label.addr = alloca i8*, align 8
  %image_types.addr = alloca i8*, align 8
  %type.addr = alloca i32, align 4
  %n_params.addr = alloca i32, align 4
  %n_return_vals.addr = alloca i32, align 4
  %params.addr = alloca %struct._GimpParamDef*, align 8
  %return_vals.addr = alloca %struct._GimpParamDef*, align 8
  %proc_install = alloca %struct._GPProcInstall, align 8
  store i8* %name, i8** %name.addr, align 8
  store i8* %blurb, i8** %blurb.addr, align 8
  store i8* %help, i8** %help.addr, align 8
  store i8* %author, i8** %author.addr, align 8
  store i8* %copyright, i8** %copyright.addr, align 8
  store i8* %date, i8** %date.addr, align 8
  store i8* %menu_label, i8** %menu_label.addr, align 8
  store i8* %image_types, i8** %image_types.addr, align 8
  store i32 %type, i32* %type.addr, align 4
  store i32 %n_params, i32* %n_params.addr, align 4
  store i32 %n_return_vals, i32* %n_return_vals.addr, align 4
  store %struct._GimpParamDef* %params, %struct._GimpParamDef** %params.addr, align 8
  store %struct._GimpParamDef* %return_vals, %struct._GimpParamDef** %return_vals.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i8*, i8** %name.addr, align 8
  %cmp = icmp ne i8* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_install_procedure, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i32 0, i32 0))
  br label %if.end.40

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load i32, i32* %type.addr, align 4
  %cmp2 = icmp ne i32 %1, 0
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %do.body.1
  br label %if.end.5

if.else.4:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_install_procedure, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15, i32 0, i32 0))
  br label %if.end.40

if.end.5:                                         ; preds = %if.then.3
  br label %do.end.6

do.end.6:                                         ; preds = %if.end.5
  br label %do.body.7

do.body.7:                                        ; preds = %do.end.6
  %2 = load i32, i32* %n_params.addr, align 4
  %cmp8 = icmp eq i32 %2, 0
  br i1 %cmp8, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %do.body.7
  %3 = load %struct._GimpParamDef*, %struct._GimpParamDef** %params.addr, align 8
  %cmp9 = icmp eq %struct._GimpParamDef* %3, null
  br i1 %cmp9, label %if.then.13, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %do.body.7
  %4 = load i32, i32* %n_params.addr, align 4
  %cmp10 = icmp sgt i32 %4, 0
  br i1 %cmp10, label %land.lhs.true.11, label %if.else.14

land.lhs.true.11:                                 ; preds = %lor.lhs.false
  %5 = load %struct._GimpParamDef*, %struct._GimpParamDef** %params.addr, align 8
  %cmp12 = icmp ne %struct._GimpParamDef* %5, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %land.lhs.true.11, %land.lhs.true
  br label %if.end.15

if.else.14:                                       ; preds = %land.lhs.true.11, %lor.lhs.false
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_install_procedure, i32 0, i32 0), i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.16, i32 0, i32 0))
  br label %if.end.40

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %6 = load i32, i32* %n_return_vals.addr, align 4
  %cmp18 = icmp eq i32 %6, 0
  br i1 %cmp18, label %land.lhs.true.19, label %lor.lhs.false.21

land.lhs.true.19:                                 ; preds = %do.body.17
  %7 = load %struct._GimpParamDef*, %struct._GimpParamDef** %return_vals.addr, align 8
  %cmp20 = icmp eq %struct._GimpParamDef* %7, null
  br i1 %cmp20, label %if.then.25, label %lor.lhs.false.21

lor.lhs.false.21:                                 ; preds = %land.lhs.true.19, %do.body.17
  %8 = load i32, i32* %n_return_vals.addr, align 4
  %cmp22 = icmp sgt i32 %8, 0
  br i1 %cmp22, label %land.lhs.true.23, label %if.else.26

land.lhs.true.23:                                 ; preds = %lor.lhs.false.21
  %9 = load %struct._GimpParamDef*, %struct._GimpParamDef** %return_vals.addr, align 8
  %cmp24 = icmp ne %struct._GimpParamDef* %9, null
  br i1 %cmp24, label %if.then.25, label %if.else.26

if.then.25:                                       ; preds = %land.lhs.true.23, %land.lhs.true.19
  br label %if.end.27

if.else.26:                                       ; preds = %land.lhs.true.23, %lor.lhs.false.21
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_install_procedure, i32 0, i32 0), i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.17, i32 0, i32 0))
  br label %if.end.40

if.end.27:                                        ; preds = %if.then.25
  br label %do.end.28

do.end.28:                                        ; preds = %if.end.27
  %10 = load i8*, i8** %name.addr, align 8
  %name29 = getelementptr inbounds %struct._GPProcInstall, %struct._GPProcInstall* %proc_install, i32 0, i32 0
  store i8* %10, i8** %name29, align 8
  %11 = load i8*, i8** %blurb.addr, align 8
  %blurb30 = getelementptr inbounds %struct._GPProcInstall, %struct._GPProcInstall* %proc_install, i32 0, i32 1
  store i8* %11, i8** %blurb30, align 8
  %12 = load i8*, i8** %help.addr, align 8
  %help31 = getelementptr inbounds %struct._GPProcInstall, %struct._GPProcInstall* %proc_install, i32 0, i32 2
  store i8* %12, i8** %help31, align 8
  %13 = load i8*, i8** %author.addr, align 8
  %author32 = getelementptr inbounds %struct._GPProcInstall, %struct._GPProcInstall* %proc_install, i32 0, i32 3
  store i8* %13, i8** %author32, align 8
  %14 = load i8*, i8** %copyright.addr, align 8
  %copyright33 = getelementptr inbounds %struct._GPProcInstall, %struct._GPProcInstall* %proc_install, i32 0, i32 4
  store i8* %14, i8** %copyright33, align 8
  %15 = load i8*, i8** %date.addr, align 8
  %date34 = getelementptr inbounds %struct._GPProcInstall, %struct._GPProcInstall* %proc_install, i32 0, i32 5
  store i8* %15, i8** %date34, align 8
  %16 = load i8*, i8** %menu_label.addr, align 8
  %menu_path = getelementptr inbounds %struct._GPProcInstall, %struct._GPProcInstall* %proc_install, i32 0, i32 6
  store i8* %16, i8** %menu_path, align 8
  %17 = load i8*, i8** %image_types.addr, align 8
  %image_types35 = getelementptr inbounds %struct._GPProcInstall, %struct._GPProcInstall* %proc_install, i32 0, i32 7
  store i8* %17, i8** %image_types35, align 8
  %18 = load i32, i32* %type.addr, align 4
  %type36 = getelementptr inbounds %struct._GPProcInstall, %struct._GPProcInstall* %proc_install, i32 0, i32 8
  store i32 %18, i32* %type36, align 4
  %19 = load i32, i32* %n_params.addr, align 4
  %nparams = getelementptr inbounds %struct._GPProcInstall, %struct._GPProcInstall* %proc_install, i32 0, i32 9
  store i32 %19, i32* %nparams, align 4
  %20 = load i32, i32* %n_return_vals.addr, align 4
  %nreturn_vals = getelementptr inbounds %struct._GPProcInstall, %struct._GPProcInstall* %proc_install, i32 0, i32 10
  store i32 %20, i32* %nreturn_vals, align 4
  %21 = load %struct._GimpParamDef*, %struct._GimpParamDef** %params.addr, align 8
  %22 = bitcast %struct._GimpParamDef* %21 to %struct._GPParamDef*
  %params37 = getelementptr inbounds %struct._GPProcInstall, %struct._GPProcInstall* %proc_install, i32 0, i32 11
  store %struct._GPParamDef* %22, %struct._GPParamDef** %params37, align 8
  %23 = load %struct._GimpParamDef*, %struct._GimpParamDef** %return_vals.addr, align 8
  %24 = bitcast %struct._GimpParamDef* %23 to %struct._GPParamDef*
  %return_vals38 = getelementptr inbounds %struct._GPProcInstall, %struct._GPProcInstall* %proc_install, i32 0, i32 12
  store %struct._GPParamDef* %24, %struct._GPParamDef** %return_vals38, align 8
  %25 = load %struct._GIOChannel*, %struct._GIOChannel** @_writechannel, align 8
  %call = call i32 @gp_proc_install_write(%struct._GIOChannel* %25, %struct._GPProcInstall* %proc_install, i8* null)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.40, label %if.then.39

if.then.39:                                       ; preds = %do.end.28
  call void @gimp_quit() #10
  unreachable

if.end.40:                                        ; preds = %if.else, %if.else.4, %if.else.14, %if.else.26, %do.end.28
  ret void
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #4

declare i32 @gp_proc_install_write(%struct._GIOChannel*, %struct._GPProcInstall*, i8*) #4

; Function Attrs: nounwind uwtable
define void @gimp_install_temp_proc(i8* %name, i8* %blurb, i8* %help, i8* %author, i8* %copyright, i8* %date, i8* %menu_label, i8* %image_types, i32 %type, i32 %n_params, i32 %n_return_vals, %struct._GimpParamDef* %params, %struct._GimpParamDef* %return_vals, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* %run_proc) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %blurb.addr = alloca i8*, align 8
  %help.addr = alloca i8*, align 8
  %author.addr = alloca i8*, align 8
  %copyright.addr = alloca i8*, align 8
  %date.addr = alloca i8*, align 8
  %menu_label.addr = alloca i8*, align 8
  %image_types.addr = alloca i8*, align 8
  %type.addr = alloca i32, align 4
  %n_params.addr = alloca i32, align 4
  %n_return_vals.addr = alloca i32, align 4
  %params.addr = alloca %struct._GimpParamDef*, align 8
  %return_vals.addr = alloca %struct._GimpParamDef*, align 8
  %run_proc.addr = alloca void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)*, align 8
  store i8* %name, i8** %name.addr, align 8
  store i8* %blurb, i8** %blurb.addr, align 8
  store i8* %help, i8** %help.addr, align 8
  store i8* %author, i8** %author.addr, align 8
  store i8* %copyright, i8** %copyright.addr, align 8
  store i8* %date, i8** %date.addr, align 8
  store i8* %menu_label, i8** %menu_label.addr, align 8
  store i8* %image_types, i8** %image_types.addr, align 8
  store i32 %type, i32* %type.addr, align 4
  store i32 %n_params, i32* %n_params.addr, align 4
  store i32 %n_return_vals, i32* %n_return_vals.addr, align 4
  store %struct._GimpParamDef* %params, %struct._GimpParamDef** %params.addr, align 8
  store %struct._GimpParamDef* %return_vals, %struct._GimpParamDef** %return_vals.addr, align 8
  store void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* %run_proc, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)** %run_proc.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i8*, i8** %name.addr, align 8
  %cmp = icmp ne i8* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_install_temp_proc, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load i32, i32* %n_params.addr, align 4
  %cmp2 = icmp eq i32 %1, 0
  br i1 %cmp2, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %do.body.1
  %2 = load %struct._GimpParamDef*, %struct._GimpParamDef** %params.addr, align 8
  %cmp3 = icmp eq %struct._GimpParamDef* %2, null
  br i1 %cmp3, label %if.then.7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %do.body.1
  %3 = load i32, i32* %n_params.addr, align 4
  %cmp4 = icmp sgt i32 %3, 0
  br i1 %cmp4, label %land.lhs.true.5, label %if.else.8

land.lhs.true.5:                                  ; preds = %lor.lhs.false
  %4 = load %struct._GimpParamDef*, %struct._GimpParamDef** %params.addr, align 8
  %cmp6 = icmp ne %struct._GimpParamDef* %4, null
  br i1 %cmp6, label %if.then.7, label %if.else.8

if.then.7:                                        ; preds = %land.lhs.true.5, %land.lhs.true
  br label %if.end.9

if.else.8:                                        ; preds = %land.lhs.true.5, %lor.lhs.false
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_install_temp_proc, i32 0, i32 0), i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.16, i32 0, i32 0))
  br label %return

if.end.9:                                         ; preds = %if.then.7
  br label %do.end.10

do.end.10:                                        ; preds = %if.end.9
  br label %do.body.11

do.body.11:                                       ; preds = %do.end.10
  %5 = load i32, i32* %n_return_vals.addr, align 4
  %cmp12 = icmp eq i32 %5, 0
  br i1 %cmp12, label %land.lhs.true.13, label %lor.lhs.false.15

land.lhs.true.13:                                 ; preds = %do.body.11
  %6 = load %struct._GimpParamDef*, %struct._GimpParamDef** %return_vals.addr, align 8
  %cmp14 = icmp eq %struct._GimpParamDef* %6, null
  br i1 %cmp14, label %if.then.19, label %lor.lhs.false.15

lor.lhs.false.15:                                 ; preds = %land.lhs.true.13, %do.body.11
  %7 = load i32, i32* %n_return_vals.addr, align 4
  %cmp16 = icmp sgt i32 %7, 0
  br i1 %cmp16, label %land.lhs.true.17, label %if.else.20

land.lhs.true.17:                                 ; preds = %lor.lhs.false.15
  %8 = load %struct._GimpParamDef*, %struct._GimpParamDef** %return_vals.addr, align 8
  %cmp18 = icmp ne %struct._GimpParamDef* %8, null
  br i1 %cmp18, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %land.lhs.true.17, %land.lhs.true.13
  br label %if.end.21

if.else.20:                                       ; preds = %land.lhs.true.17, %lor.lhs.false.15
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_install_temp_proc, i32 0, i32 0), i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.17, i32 0, i32 0))
  br label %return

if.end.21:                                        ; preds = %if.then.19
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  br label %do.body.23

do.body.23:                                       ; preds = %do.end.22
  %9 = load i32, i32* %type.addr, align 4
  %cmp24 = icmp eq i32 %9, 3
  br i1 %cmp24, label %if.then.25, label %if.else.26

if.then.25:                                       ; preds = %do.body.23
  br label %if.end.27

if.else.26:                                       ; preds = %do.body.23
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_install_temp_proc, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.18, i32 0, i32 0))
  br label %return

if.end.27:                                        ; preds = %if.then.25
  br label %do.end.28

do.end.28:                                        ; preds = %if.end.27
  br label %do.body.29

do.body.29:                                       ; preds = %do.end.28
  %10 = load void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)*, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)** %run_proc.addr, align 8
  %cmp30 = icmp ne void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* %10, null
  br i1 %cmp30, label %if.then.31, label %if.else.32

if.then.31:                                       ; preds = %do.body.29
  br label %if.end.33

if.else.32:                                       ; preds = %do.body.29
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_install_temp_proc, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i32 0, i32 0))
  br label %return

if.end.33:                                        ; preds = %if.then.31
  br label %do.end.34

do.end.34:                                        ; preds = %if.end.33
  %11 = load i8*, i8** %name.addr, align 8
  %12 = load i8*, i8** %blurb.addr, align 8
  %13 = load i8*, i8** %help.addr, align 8
  %14 = load i8*, i8** %author.addr, align 8
  %15 = load i8*, i8** %copyright.addr, align 8
  %16 = load i8*, i8** %date.addr, align 8
  %17 = load i8*, i8** %menu_label.addr, align 8
  %18 = load i8*, i8** %image_types.addr, align 8
  %19 = load i32, i32* %type.addr, align 4
  %20 = load i32, i32* %n_params.addr, align 4
  %21 = load i32, i32* %n_return_vals.addr, align 4
  %22 = load %struct._GimpParamDef*, %struct._GimpParamDef** %params.addr, align 8
  %23 = load %struct._GimpParamDef*, %struct._GimpParamDef** %return_vals.addr, align 8
  call void @gimp_install_procedure(i8* %11, i8* %12, i8* %13, i8* %14, i8* %15, i8* %16, i8* %17, i8* %18, i32 %19, i32 %20, i32 %21, %struct._GimpParamDef* %22, %struct._GimpParamDef* %23)
  %24 = load %struct._GHashTable*, %struct._GHashTable** @temp_proc_ht, align 8
  %25 = load i8*, i8** %name.addr, align 8
  %call = call noalias i8* @g_strdup(i8* %25)
  %26 = load void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)*, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)** %run_proc.addr, align 8
  %27 = bitcast void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* %26 to i8*
  %call35 = call i32 @g_hash_table_insert(%struct._GHashTable* %24, i8* %call, i8* %27)
  br label %return

return:                                           ; preds = %do.end.34, %if.else.32, %if.else.26, %if.else.20, %if.else.8, %if.else
  ret void
}

declare i32 @g_hash_table_insert(%struct._GHashTable*, i8*, i8*) #4

declare noalias i8* @g_strdup(i8*) #4

; Function Attrs: nounwind uwtable
define void @gimp_uninstall_temp_proc(i8* %name) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %proc_uninstall = alloca %struct._GPProcUninstall, align 8
  %hash_name = alloca i8*, align 8
  %found = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i8*, i8** %name.addr, align 8
  %cmp = icmp ne i8* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_uninstall_temp_proc, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i32 0, i32 0))
  br label %if.end.8

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load i8*, i8** %name.addr, align 8
  %name1 = getelementptr inbounds %struct._GPProcUninstall, %struct._GPProcUninstall* %proc_uninstall, i32 0, i32 0
  store i8* %1, i8** %name1, align 8
  %2 = load %struct._GIOChannel*, %struct._GIOChannel** @_writechannel, align 8
  %call = call i32 @gp_proc_uninstall_write(%struct._GIOChannel* %2, %struct._GPProcUninstall* %proc_uninstall, i8* null)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %do.end
  call void @gimp_quit() #10
  unreachable

if.end.3:                                         ; preds = %do.end
  %3 = load %struct._GHashTable*, %struct._GHashTable** @temp_proc_ht, align 8
  %4 = load i8*, i8** %name.addr, align 8
  %call4 = call i32 @g_hash_table_lookup_extended(%struct._GHashTable* %3, i8* %4, i8** %hash_name, i8** null)
  store i32 %call4, i32* %found, align 4
  %5 = load i32, i32* %found, align 4
  %tobool5 = icmp ne i32 %5, 0
  br i1 %tobool5, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %if.end.3
  %6 = load %struct._GHashTable*, %struct._GHashTable** @temp_proc_ht, align 8
  %7 = load i8*, i8** %name.addr, align 8
  %call7 = call i32 @g_hash_table_remove(%struct._GHashTable* %6, i8* %7)
  %8 = load i8*, i8** %hash_name, align 8
  call void @g_free(i8* %8)
  br label %if.end.8

if.end.8:                                         ; preds = %if.else, %if.then.6, %if.end.3
  ret void
}

declare i32 @gp_proc_uninstall_write(%struct._GIOChannel*, %struct._GPProcUninstall*, i8*) #4

declare i32 @g_hash_table_lookup_extended(%struct._GHashTable*, i8*, i8**, i8**) #4

declare i32 @g_hash_table_remove(%struct._GHashTable*, i8*) #4

; Function Attrs: nounwind uwtable
define %struct._GimpParam* @gimp_run_procedure(i8* %name, i32* %n_return_vals, ...) #0 {
entry:
  %retval = alloca %struct._GimpParam*, align 8
  %name.addr = alloca i8*, align 8
  %n_return_vals.addr = alloca i32*, align 8
  %param_type = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %params = alloca %struct._GimpParam*, align 8
  %n_params = alloca i32, align 4
  %args = alloca [1 x %struct.__va_list_tag], align 16
  %i = alloca i32, align 4
  %parasite = alloca %struct._GimpParasite*, align 8
  store i8* %name, i8** %name.addr, align 8
  store i32* %n_return_vals, i32** %n_return_vals.addr, align 8
  store %struct._GimpParam* null, %struct._GimpParam** %params, align 8
  store i32 0, i32* %n_params, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i8*, i8** %name.addr, align 8
  %cmp = icmp ne i8* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gimp_run_procedure, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i32 0, i32 0))
  store %struct._GimpParam* null, %struct._GimpParam** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load i32*, i32** %n_return_vals.addr, align 8
  %cmp2 = icmp ne i32* %1, null
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %do.body.1
  br label %if.end.5

if.else.4:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gimp_run_procedure, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.20, i32 0, i32 0))
  store %struct._GimpParam* null, %struct._GimpParam** %retval
  br label %return

if.end.5:                                         ; preds = %if.then.3
  br label %do.end.6

do.end.6:                                         ; preds = %if.end.5
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay7 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay7)
  %arraydecay8 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %gp_offset_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay8, i32 0, i32 0
  %gp_offset = load i32, i32* %gp_offset_p
  %fits_in_gp = icmp ule i32 %gp_offset, 40
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem

vaarg.in_reg:                                     ; preds = %do.end.6
  %2 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay8, i32 0, i32 3
  %reg_save_area = load i8*, i8** %2
  %3 = getelementptr i8, i8* %reg_save_area, i32 %gp_offset
  %4 = bitcast i8* %3 to i32*
  %5 = add i32 %gp_offset, 8
  store i32 %5, i32* %gp_offset_p
  br label %vaarg.end

vaarg.in_mem:                                     ; preds = %do.end.6
  %overflow_arg_area_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay8, i32 0, i32 2
  %overflow_arg_area = load i8*, i8** %overflow_arg_area_p
  %6 = bitcast i8* %overflow_arg_area to i32*
  %overflow_arg_area.next = getelementptr i8, i8* %overflow_arg_area, i32 8
  store i8* %overflow_arg_area.next, i8** %overflow_arg_area_p
  br label %vaarg.end

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr = phi i32* [ %4, %vaarg.in_reg ], [ %6, %vaarg.in_mem ]
  %7 = load i32, i32* %vaarg.addr
  store i32 %7, i32* %param_type, align 4
  br label %while.cond

while.cond:                                       ; preds = %vaarg.end.173, %vaarg.end
  %8 = load i32, i32* %param_type, align 4
  %cmp9 = icmp ne i32 %8, 22
  br i1 %cmp9, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %9 = load i32, i32* %param_type, align 4
  switch i32 %9, label %sw.epilog [
    i32 0, label %sw.bb
    i32 12, label %sw.bb
    i32 13, label %sw.bb
    i32 11, label %sw.bb
    i32 14, label %sw.bb
    i32 15, label %sw.bb
    i32 16, label %sw.bb
    i32 17, label %sw.bb
    i32 19, label %sw.bb
    i32 21, label %sw.bb
    i32 1, label %sw.bb.22
    i32 2, label %sw.bb.35
    i32 3, label %sw.bb.48
    i32 4, label %sw.bb.58
    i32 5, label %sw.bb.71
    i32 6, label %sw.bb.84
    i32 7, label %sw.bb.97
    i32 8, label %sw.bb.110
    i32 9, label %sw.bb.123
    i32 10, label %sw.bb.136
    i32 18, label %sw.bb.136
    i32 20, label %sw.bb.149
    i32 22, label %sw.bb.162
  ]

sw.bb:                                            ; preds = %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body
  %arraydecay10 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %gp_offset_p11 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay10, i32 0, i32 0
  %gp_offset12 = load i32, i32* %gp_offset_p11
  %fits_in_gp13 = icmp ule i32 %gp_offset12, 40
  br i1 %fits_in_gp13, label %vaarg.in_reg.14, label %vaarg.in_mem.16

vaarg.in_reg.14:                                  ; preds = %sw.bb
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay10, i32 0, i32 3
  %reg_save_area15 = load i8*, i8** %10
  %11 = getelementptr i8, i8* %reg_save_area15, i32 %gp_offset12
  %12 = bitcast i8* %11 to i32*
  %13 = add i32 %gp_offset12, 8
  store i32 %13, i32* %gp_offset_p11
  br label %vaarg.end.20

vaarg.in_mem.16:                                  ; preds = %sw.bb
  %overflow_arg_area_p17 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay10, i32 0, i32 2
  %overflow_arg_area18 = load i8*, i8** %overflow_arg_area_p17
  %14 = bitcast i8* %overflow_arg_area18 to i32*
  %overflow_arg_area.next19 = getelementptr i8, i8* %overflow_arg_area18, i32 8
  store i8* %overflow_arg_area.next19, i8** %overflow_arg_area_p17
  br label %vaarg.end.20

vaarg.end.20:                                     ; preds = %vaarg.in_mem.16, %vaarg.in_reg.14
  %vaarg.addr21 = phi i32* [ %12, %vaarg.in_reg.14 ], [ %14, %vaarg.in_mem.16 ]
  %15 = load i32, i32* %vaarg.addr21
  br label %sw.epilog

sw.bb.22:                                         ; preds = %while.body
  %arraydecay23 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %gp_offset_p24 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay23, i32 0, i32 0
  %gp_offset25 = load i32, i32* %gp_offset_p24
  %fits_in_gp26 = icmp ule i32 %gp_offset25, 40
  br i1 %fits_in_gp26, label %vaarg.in_reg.27, label %vaarg.in_mem.29

vaarg.in_reg.27:                                  ; preds = %sw.bb.22
  %16 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay23, i32 0, i32 3
  %reg_save_area28 = load i8*, i8** %16
  %17 = getelementptr i8, i8* %reg_save_area28, i32 %gp_offset25
  %18 = bitcast i8* %17 to i32*
  %19 = add i32 %gp_offset25, 8
  store i32 %19, i32* %gp_offset_p24
  br label %vaarg.end.33

vaarg.in_mem.29:                                  ; preds = %sw.bb.22
  %overflow_arg_area_p30 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay23, i32 0, i32 2
  %overflow_arg_area31 = load i8*, i8** %overflow_arg_area_p30
  %20 = bitcast i8* %overflow_arg_area31 to i32*
  %overflow_arg_area.next32 = getelementptr i8, i8* %overflow_arg_area31, i32 8
  store i8* %overflow_arg_area.next32, i8** %overflow_arg_area_p30
  br label %vaarg.end.33

vaarg.end.33:                                     ; preds = %vaarg.in_mem.29, %vaarg.in_reg.27
  %vaarg.addr34 = phi i32* [ %18, %vaarg.in_reg.27 ], [ %20, %vaarg.in_mem.29 ]
  %21 = load i32, i32* %vaarg.addr34
  br label %sw.epilog

sw.bb.35:                                         ; preds = %while.body
  %arraydecay36 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %gp_offset_p37 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay36, i32 0, i32 0
  %gp_offset38 = load i32, i32* %gp_offset_p37
  %fits_in_gp39 = icmp ule i32 %gp_offset38, 40
  br i1 %fits_in_gp39, label %vaarg.in_reg.40, label %vaarg.in_mem.42

vaarg.in_reg.40:                                  ; preds = %sw.bb.35
  %22 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay36, i32 0, i32 3
  %reg_save_area41 = load i8*, i8** %22
  %23 = getelementptr i8, i8* %reg_save_area41, i32 %gp_offset38
  %24 = bitcast i8* %23 to i32*
  %25 = add i32 %gp_offset38, 8
  store i32 %25, i32* %gp_offset_p37
  br label %vaarg.end.46

vaarg.in_mem.42:                                  ; preds = %sw.bb.35
  %overflow_arg_area_p43 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay36, i32 0, i32 2
  %overflow_arg_area44 = load i8*, i8** %overflow_arg_area_p43
  %26 = bitcast i8* %overflow_arg_area44 to i32*
  %overflow_arg_area.next45 = getelementptr i8, i8* %overflow_arg_area44, i32 8
  store i8* %overflow_arg_area.next45, i8** %overflow_arg_area_p43
  br label %vaarg.end.46

vaarg.end.46:                                     ; preds = %vaarg.in_mem.42, %vaarg.in_reg.40
  %vaarg.addr47 = phi i32* [ %24, %vaarg.in_reg.40 ], [ %26, %vaarg.in_mem.42 ]
  %27 = load i32, i32* %vaarg.addr47
  br label %sw.epilog

sw.bb.48:                                         ; preds = %while.body
  %arraydecay49 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %fp_offset_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay49, i32 0, i32 1
  %fp_offset = load i32, i32* %fp_offset_p
  %fits_in_fp = icmp ule i32 %fp_offset, 160
  br i1 %fits_in_fp, label %vaarg.in_reg.50, label %vaarg.in_mem.52

vaarg.in_reg.50:                                  ; preds = %sw.bb.48
  %28 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay49, i32 0, i32 3
  %reg_save_area51 = load i8*, i8** %28
  %29 = getelementptr i8, i8* %reg_save_area51, i32 %fp_offset
  %30 = bitcast i8* %29 to double*
  %31 = add i32 %fp_offset, 16
  store i32 %31, i32* %fp_offset_p
  br label %vaarg.end.56

vaarg.in_mem.52:                                  ; preds = %sw.bb.48
  %overflow_arg_area_p53 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay49, i32 0, i32 2
  %overflow_arg_area54 = load i8*, i8** %overflow_arg_area_p53
  %32 = bitcast i8* %overflow_arg_area54 to double*
  %overflow_arg_area.next55 = getelementptr i8, i8* %overflow_arg_area54, i32 8
  store i8* %overflow_arg_area.next55, i8** %overflow_arg_area_p53
  br label %vaarg.end.56

vaarg.end.56:                                     ; preds = %vaarg.in_mem.52, %vaarg.in_reg.50
  %vaarg.addr57 = phi double* [ %30, %vaarg.in_reg.50 ], [ %32, %vaarg.in_mem.52 ]
  %33 = load double, double* %vaarg.addr57
  br label %sw.epilog

sw.bb.58:                                         ; preds = %while.body
  %arraydecay59 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %gp_offset_p60 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay59, i32 0, i32 0
  %gp_offset61 = load i32, i32* %gp_offset_p60
  %fits_in_gp62 = icmp ule i32 %gp_offset61, 40
  br i1 %fits_in_gp62, label %vaarg.in_reg.63, label %vaarg.in_mem.65

vaarg.in_reg.63:                                  ; preds = %sw.bb.58
  %34 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay59, i32 0, i32 3
  %reg_save_area64 = load i8*, i8** %34
  %35 = getelementptr i8, i8* %reg_save_area64, i32 %gp_offset61
  %36 = bitcast i8* %35 to i8**
  %37 = add i32 %gp_offset61, 8
  store i32 %37, i32* %gp_offset_p60
  br label %vaarg.end.69

vaarg.in_mem.65:                                  ; preds = %sw.bb.58
  %overflow_arg_area_p66 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay59, i32 0, i32 2
  %overflow_arg_area67 = load i8*, i8** %overflow_arg_area_p66
  %38 = bitcast i8* %overflow_arg_area67 to i8**
  %overflow_arg_area.next68 = getelementptr i8, i8* %overflow_arg_area67, i32 8
  store i8* %overflow_arg_area.next68, i8** %overflow_arg_area_p66
  br label %vaarg.end.69

vaarg.end.69:                                     ; preds = %vaarg.in_mem.65, %vaarg.in_reg.63
  %vaarg.addr70 = phi i8** [ %36, %vaarg.in_reg.63 ], [ %38, %vaarg.in_mem.65 ]
  %39 = load i8*, i8** %vaarg.addr70
  br label %sw.epilog

sw.bb.71:                                         ; preds = %while.body
  %arraydecay72 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %gp_offset_p73 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay72, i32 0, i32 0
  %gp_offset74 = load i32, i32* %gp_offset_p73
  %fits_in_gp75 = icmp ule i32 %gp_offset74, 40
  br i1 %fits_in_gp75, label %vaarg.in_reg.76, label %vaarg.in_mem.78

vaarg.in_reg.76:                                  ; preds = %sw.bb.71
  %40 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay72, i32 0, i32 3
  %reg_save_area77 = load i8*, i8** %40
  %41 = getelementptr i8, i8* %reg_save_area77, i32 %gp_offset74
  %42 = bitcast i8* %41 to i32**
  %43 = add i32 %gp_offset74, 8
  store i32 %43, i32* %gp_offset_p73
  br label %vaarg.end.82

vaarg.in_mem.78:                                  ; preds = %sw.bb.71
  %overflow_arg_area_p79 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay72, i32 0, i32 2
  %overflow_arg_area80 = load i8*, i8** %overflow_arg_area_p79
  %44 = bitcast i8* %overflow_arg_area80 to i32**
  %overflow_arg_area.next81 = getelementptr i8, i8* %overflow_arg_area80, i32 8
  store i8* %overflow_arg_area.next81, i8** %overflow_arg_area_p79
  br label %vaarg.end.82

vaarg.end.82:                                     ; preds = %vaarg.in_mem.78, %vaarg.in_reg.76
  %vaarg.addr83 = phi i32** [ %42, %vaarg.in_reg.76 ], [ %44, %vaarg.in_mem.78 ]
  %45 = load i32*, i32** %vaarg.addr83
  br label %sw.epilog

sw.bb.84:                                         ; preds = %while.body
  %arraydecay85 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %gp_offset_p86 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay85, i32 0, i32 0
  %gp_offset87 = load i32, i32* %gp_offset_p86
  %fits_in_gp88 = icmp ule i32 %gp_offset87, 40
  br i1 %fits_in_gp88, label %vaarg.in_reg.89, label %vaarg.in_mem.91

vaarg.in_reg.89:                                  ; preds = %sw.bb.84
  %46 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay85, i32 0, i32 3
  %reg_save_area90 = load i8*, i8** %46
  %47 = getelementptr i8, i8* %reg_save_area90, i32 %gp_offset87
  %48 = bitcast i8* %47 to i16**
  %49 = add i32 %gp_offset87, 8
  store i32 %49, i32* %gp_offset_p86
  br label %vaarg.end.95

vaarg.in_mem.91:                                  ; preds = %sw.bb.84
  %overflow_arg_area_p92 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay85, i32 0, i32 2
  %overflow_arg_area93 = load i8*, i8** %overflow_arg_area_p92
  %50 = bitcast i8* %overflow_arg_area93 to i16**
  %overflow_arg_area.next94 = getelementptr i8, i8* %overflow_arg_area93, i32 8
  store i8* %overflow_arg_area.next94, i8** %overflow_arg_area_p92
  br label %vaarg.end.95

vaarg.end.95:                                     ; preds = %vaarg.in_mem.91, %vaarg.in_reg.89
  %vaarg.addr96 = phi i16** [ %48, %vaarg.in_reg.89 ], [ %50, %vaarg.in_mem.91 ]
  %51 = load i16*, i16** %vaarg.addr96
  br label %sw.epilog

sw.bb.97:                                         ; preds = %while.body
  %arraydecay98 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %gp_offset_p99 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay98, i32 0, i32 0
  %gp_offset100 = load i32, i32* %gp_offset_p99
  %fits_in_gp101 = icmp ule i32 %gp_offset100, 40
  br i1 %fits_in_gp101, label %vaarg.in_reg.102, label %vaarg.in_mem.104

vaarg.in_reg.102:                                 ; preds = %sw.bb.97
  %52 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay98, i32 0, i32 3
  %reg_save_area103 = load i8*, i8** %52
  %53 = getelementptr i8, i8* %reg_save_area103, i32 %gp_offset100
  %54 = bitcast i8* %53 to i8**
  %55 = add i32 %gp_offset100, 8
  store i32 %55, i32* %gp_offset_p99
  br label %vaarg.end.108

vaarg.in_mem.104:                                 ; preds = %sw.bb.97
  %overflow_arg_area_p105 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay98, i32 0, i32 2
  %overflow_arg_area106 = load i8*, i8** %overflow_arg_area_p105
  %56 = bitcast i8* %overflow_arg_area106 to i8**
  %overflow_arg_area.next107 = getelementptr i8, i8* %overflow_arg_area106, i32 8
  store i8* %overflow_arg_area.next107, i8** %overflow_arg_area_p105
  br label %vaarg.end.108

vaarg.end.108:                                    ; preds = %vaarg.in_mem.104, %vaarg.in_reg.102
  %vaarg.addr109 = phi i8** [ %54, %vaarg.in_reg.102 ], [ %56, %vaarg.in_mem.104 ]
  %57 = load i8*, i8** %vaarg.addr109
  br label %sw.epilog

sw.bb.110:                                        ; preds = %while.body
  %arraydecay111 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %gp_offset_p112 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay111, i32 0, i32 0
  %gp_offset113 = load i32, i32* %gp_offset_p112
  %fits_in_gp114 = icmp ule i32 %gp_offset113, 40
  br i1 %fits_in_gp114, label %vaarg.in_reg.115, label %vaarg.in_mem.117

vaarg.in_reg.115:                                 ; preds = %sw.bb.110
  %58 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay111, i32 0, i32 3
  %reg_save_area116 = load i8*, i8** %58
  %59 = getelementptr i8, i8* %reg_save_area116, i32 %gp_offset113
  %60 = bitcast i8* %59 to double**
  %61 = add i32 %gp_offset113, 8
  store i32 %61, i32* %gp_offset_p112
  br label %vaarg.end.121

vaarg.in_mem.117:                                 ; preds = %sw.bb.110
  %overflow_arg_area_p118 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay111, i32 0, i32 2
  %overflow_arg_area119 = load i8*, i8** %overflow_arg_area_p118
  %62 = bitcast i8* %overflow_arg_area119 to double**
  %overflow_arg_area.next120 = getelementptr i8, i8* %overflow_arg_area119, i32 8
  store i8* %overflow_arg_area.next120, i8** %overflow_arg_area_p118
  br label %vaarg.end.121

vaarg.end.121:                                    ; preds = %vaarg.in_mem.117, %vaarg.in_reg.115
  %vaarg.addr122 = phi double** [ %60, %vaarg.in_reg.115 ], [ %62, %vaarg.in_mem.117 ]
  %63 = load double*, double** %vaarg.addr122
  br label %sw.epilog

sw.bb.123:                                        ; preds = %while.body
  %arraydecay124 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %gp_offset_p125 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay124, i32 0, i32 0
  %gp_offset126 = load i32, i32* %gp_offset_p125
  %fits_in_gp127 = icmp ule i32 %gp_offset126, 40
  br i1 %fits_in_gp127, label %vaarg.in_reg.128, label %vaarg.in_mem.130

vaarg.in_reg.128:                                 ; preds = %sw.bb.123
  %64 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay124, i32 0, i32 3
  %reg_save_area129 = load i8*, i8** %64
  %65 = getelementptr i8, i8* %reg_save_area129, i32 %gp_offset126
  %66 = bitcast i8* %65 to i8***
  %67 = add i32 %gp_offset126, 8
  store i32 %67, i32* %gp_offset_p125
  br label %vaarg.end.134

vaarg.in_mem.130:                                 ; preds = %sw.bb.123
  %overflow_arg_area_p131 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay124, i32 0, i32 2
  %overflow_arg_area132 = load i8*, i8** %overflow_arg_area_p131
  %68 = bitcast i8* %overflow_arg_area132 to i8***
  %overflow_arg_area.next133 = getelementptr i8, i8* %overflow_arg_area132, i32 8
  store i8* %overflow_arg_area.next133, i8** %overflow_arg_area_p131
  br label %vaarg.end.134

vaarg.end.134:                                    ; preds = %vaarg.in_mem.130, %vaarg.in_reg.128
  %vaarg.addr135 = phi i8*** [ %66, %vaarg.in_reg.128 ], [ %68, %vaarg.in_mem.130 ]
  %69 = load i8**, i8*** %vaarg.addr135
  br label %sw.epilog

sw.bb.136:                                        ; preds = %while.body, %while.body
  %arraydecay137 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %gp_offset_p138 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay137, i32 0, i32 0
  %gp_offset139 = load i32, i32* %gp_offset_p138
  %fits_in_gp140 = icmp ule i32 %gp_offset139, 40
  br i1 %fits_in_gp140, label %vaarg.in_reg.141, label %vaarg.in_mem.143

vaarg.in_reg.141:                                 ; preds = %sw.bb.136
  %70 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay137, i32 0, i32 3
  %reg_save_area142 = load i8*, i8** %70
  %71 = getelementptr i8, i8* %reg_save_area142, i32 %gp_offset139
  %72 = bitcast i8* %71 to %struct._GimpRGB**
  %73 = add i32 %gp_offset139, 8
  store i32 %73, i32* %gp_offset_p138
  br label %vaarg.end.147

vaarg.in_mem.143:                                 ; preds = %sw.bb.136
  %overflow_arg_area_p144 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay137, i32 0, i32 2
  %overflow_arg_area145 = load i8*, i8** %overflow_arg_area_p144
  %74 = bitcast i8* %overflow_arg_area145 to %struct._GimpRGB**
  %overflow_arg_area.next146 = getelementptr i8, i8* %overflow_arg_area145, i32 8
  store i8* %overflow_arg_area.next146, i8** %overflow_arg_area_p144
  br label %vaarg.end.147

vaarg.end.147:                                    ; preds = %vaarg.in_mem.143, %vaarg.in_reg.141
  %vaarg.addr148 = phi %struct._GimpRGB** [ %72, %vaarg.in_reg.141 ], [ %74, %vaarg.in_mem.143 ]
  %75 = load %struct._GimpRGB*, %struct._GimpRGB** %vaarg.addr148
  br label %sw.epilog

sw.bb.149:                                        ; preds = %while.body
  %arraydecay150 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %gp_offset_p151 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay150, i32 0, i32 0
  %gp_offset152 = load i32, i32* %gp_offset_p151
  %fits_in_gp153 = icmp ule i32 %gp_offset152, 40
  br i1 %fits_in_gp153, label %vaarg.in_reg.154, label %vaarg.in_mem.156

vaarg.in_reg.154:                                 ; preds = %sw.bb.149
  %76 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay150, i32 0, i32 3
  %reg_save_area155 = load i8*, i8** %76
  %77 = getelementptr i8, i8* %reg_save_area155, i32 %gp_offset152
  %78 = bitcast i8* %77 to %struct._GimpParasite**
  %79 = add i32 %gp_offset152, 8
  store i32 %79, i32* %gp_offset_p151
  br label %vaarg.end.160

vaarg.in_mem.156:                                 ; preds = %sw.bb.149
  %overflow_arg_area_p157 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay150, i32 0, i32 2
  %overflow_arg_area158 = load i8*, i8** %overflow_arg_area_p157
  %80 = bitcast i8* %overflow_arg_area158 to %struct._GimpParasite**
  %overflow_arg_area.next159 = getelementptr i8, i8* %overflow_arg_area158, i32 8
  store i8* %overflow_arg_area.next159, i8** %overflow_arg_area_p157
  br label %vaarg.end.160

vaarg.end.160:                                    ; preds = %vaarg.in_mem.156, %vaarg.in_reg.154
  %vaarg.addr161 = phi %struct._GimpParasite** [ %78, %vaarg.in_reg.154 ], [ %80, %vaarg.in_mem.156 ]
  %81 = load %struct._GimpParasite*, %struct._GimpParasite** %vaarg.addr161
  br label %sw.epilog

sw.bb.162:                                        ; preds = %while.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %while.body, %sw.bb.162, %vaarg.end.160, %vaarg.end.147, %vaarg.end.134, %vaarg.end.121, %vaarg.end.108, %vaarg.end.95, %vaarg.end.82, %vaarg.end.69, %vaarg.end.56, %vaarg.end.46, %vaarg.end.33, %vaarg.end.20
  %82 = load i32, i32* %n_params, align 4
  %inc = add nsw i32 %82, 1
  store i32 %inc, i32* %n_params, align 4
  %arraydecay163 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %gp_offset_p164 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay163, i32 0, i32 0
  %gp_offset165 = load i32, i32* %gp_offset_p164
  %fits_in_gp166 = icmp ule i32 %gp_offset165, 40
  br i1 %fits_in_gp166, label %vaarg.in_reg.167, label %vaarg.in_mem.169

vaarg.in_reg.167:                                 ; preds = %sw.epilog
  %83 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay163, i32 0, i32 3
  %reg_save_area168 = load i8*, i8** %83
  %84 = getelementptr i8, i8* %reg_save_area168, i32 %gp_offset165
  %85 = bitcast i8* %84 to i32*
  %86 = add i32 %gp_offset165, 8
  store i32 %86, i32* %gp_offset_p164
  br label %vaarg.end.173

vaarg.in_mem.169:                                 ; preds = %sw.epilog
  %overflow_arg_area_p170 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay163, i32 0, i32 2
  %overflow_arg_area171 = load i8*, i8** %overflow_arg_area_p170
  %87 = bitcast i8* %overflow_arg_area171 to i32*
  %overflow_arg_area.next172 = getelementptr i8, i8* %overflow_arg_area171, i32 8
  store i8* %overflow_arg_area.next172, i8** %overflow_arg_area_p170
  br label %vaarg.end.173

vaarg.end.173:                                    ; preds = %vaarg.in_mem.169, %vaarg.in_reg.167
  %vaarg.addr174 = phi i32* [ %85, %vaarg.in_reg.167 ], [ %87, %vaarg.in_mem.169 ]
  %88 = load i32, i32* %vaarg.addr174
  store i32 %88, i32* %param_type, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %arraydecay175 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay175176 = bitcast %struct.__va_list_tag* %arraydecay175 to i8*
  call void @llvm.va_end(i8* %arraydecay175176)
  %89 = load i32, i32* %n_params, align 4
  %conv = sext i32 %89 to i64
  %call = call noalias i8* @g_malloc0_n(i64 %conv, i64 40)
  %90 = bitcast i8* %call to %struct._GimpParam*
  store %struct._GimpParam* %90, %struct._GimpParam** %params, align 8
  %arraydecay177 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay177178 = bitcast %struct.__va_list_tag* %arraydecay177 to i8*
  call void @llvm.va_start(i8* %arraydecay177178)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.end
  %91 = load i32, i32* %i, align 4
  %92 = load i32, i32* %n_params, align 4
  %cmp179 = icmp slt i32 %91, %92
  br i1 %cmp179, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arraydecay181 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %gp_offset_p182 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay181, i32 0, i32 0
  %gp_offset183 = load i32, i32* %gp_offset_p182
  %fits_in_gp184 = icmp ule i32 %gp_offset183, 40
  br i1 %fits_in_gp184, label %vaarg.in_reg.185, label %vaarg.in_mem.187

vaarg.in_reg.185:                                 ; preds = %for.body
  %93 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay181, i32 0, i32 3
  %reg_save_area186 = load i8*, i8** %93
  %94 = getelementptr i8, i8* %reg_save_area186, i32 %gp_offset183
  %95 = bitcast i8* %94 to i32*
  %96 = add i32 %gp_offset183, 8
  store i32 %96, i32* %gp_offset_p182
  br label %vaarg.end.191

vaarg.in_mem.187:                                 ; preds = %for.body
  %overflow_arg_area_p188 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay181, i32 0, i32 2
  %overflow_arg_area189 = load i8*, i8** %overflow_arg_area_p188
  %97 = bitcast i8* %overflow_arg_area189 to i32*
  %overflow_arg_area.next190 = getelementptr i8, i8* %overflow_arg_area189, i32 8
  store i8* %overflow_arg_area.next190, i8** %overflow_arg_area_p188
  br label %vaarg.end.191

vaarg.end.191:                                    ; preds = %vaarg.in_mem.187, %vaarg.in_reg.185
  %vaarg.addr192 = phi i32* [ %95, %vaarg.in_reg.185 ], [ %97, %vaarg.in_mem.187 ]
  %98 = load i32, i32* %vaarg.addr192
  %99 = load i32, i32* %i, align 4
  %idxprom = sext i32 %99 to i64
  %100 = load %struct._GimpParam*, %struct._GimpParam** %params, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %100, i64 %idxprom
  %type = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 0
  store i32 %98, i32* %type, align 4
  %101 = load i32, i32* %i, align 4
  %idxprom193 = sext i32 %101 to i64
  %102 = load %struct._GimpParam*, %struct._GimpParam** %params, align 8
  %arrayidx194 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %102, i64 %idxprom193
  %type195 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx194, i32 0, i32 0
  %103 = load i32, i32* %type195, align 4
  switch i32 %103, label %sw.epilog.583 [
    i32 0, label %sw.bb.196
    i32 1, label %sw.bb.211
    i32 2, label %sw.bb.228
    i32 3, label %sw.bb.245
    i32 4, label %sw.bb.261
    i32 5, label %sw.bb.277
    i32 6, label %sw.bb.293
    i32 7, label %sw.bb.309
    i32 8, label %sw.bb.325
    i32 9, label %sw.bb.341
    i32 10, label %sw.bb.357
    i32 11, label %sw.bb.373
    i32 12, label %sw.bb.389
    i32 13, label %sw.bb.405
    i32 14, label %sw.bb.421
    i32 15, label %sw.bb.437
    i32 16, label %sw.bb.453
    i32 17, label %sw.bb.469
    i32 18, label %sw.bb.485
    i32 19, label %sw.bb.501
    i32 20, label %sw.bb.517
    i32 21, label %sw.bb.566
    i32 22, label %sw.bb.582
  ]

sw.bb.196:                                        ; preds = %vaarg.end.191
  %arraydecay197 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %gp_offset_p198 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay197, i32 0, i32 0
  %gp_offset199 = load i32, i32* %gp_offset_p198
  %fits_in_gp200 = icmp ule i32 %gp_offset199, 40
  br i1 %fits_in_gp200, label %vaarg.in_reg.201, label %vaarg.in_mem.203

vaarg.in_reg.201:                                 ; preds = %sw.bb.196
  %104 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay197, i32 0, i32 3
  %reg_save_area202 = load i8*, i8** %104
  %105 = getelementptr i8, i8* %reg_save_area202, i32 %gp_offset199
  %106 = bitcast i8* %105 to i32*
  %107 = add i32 %gp_offset199, 8
  store i32 %107, i32* %gp_offset_p198
  br label %vaarg.end.207

vaarg.in_mem.203:                                 ; preds = %sw.bb.196
  %overflow_arg_area_p204 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay197, i32 0, i32 2
  %overflow_arg_area205 = load i8*, i8** %overflow_arg_area_p204
  %108 = bitcast i8* %overflow_arg_area205 to i32*
  %overflow_arg_area.next206 = getelementptr i8, i8* %overflow_arg_area205, i32 8
  store i8* %overflow_arg_area.next206, i8** %overflow_arg_area_p204
  br label %vaarg.end.207

vaarg.end.207:                                    ; preds = %vaarg.in_mem.203, %vaarg.in_reg.201
  %vaarg.addr208 = phi i32* [ %106, %vaarg.in_reg.201 ], [ %108, %vaarg.in_mem.203 ]
  %109 = load i32, i32* %vaarg.addr208
  %110 = load i32, i32* %i, align 4
  %idxprom209 = sext i32 %110 to i64
  %111 = load %struct._GimpParam*, %struct._GimpParam** %params, align 8
  %arrayidx210 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %111, i64 %idxprom209
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx210, i32 0, i32 1
  %d_int32 = bitcast %union._GimpParamData* %data to i32*
  store i32 %109, i32* %d_int32, align 4
  br label %sw.epilog.583

sw.bb.211:                                        ; preds = %vaarg.end.191
  %arraydecay212 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %gp_offset_p213 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay212, i32 0, i32 0
  %gp_offset214 = load i32, i32* %gp_offset_p213
  %fits_in_gp215 = icmp ule i32 %gp_offset214, 40
  br i1 %fits_in_gp215, label %vaarg.in_reg.216, label %vaarg.in_mem.218

vaarg.in_reg.216:                                 ; preds = %sw.bb.211
  %112 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay212, i32 0, i32 3
  %reg_save_area217 = load i8*, i8** %112
  %113 = getelementptr i8, i8* %reg_save_area217, i32 %gp_offset214
  %114 = bitcast i8* %113 to i32*
  %115 = add i32 %gp_offset214, 8
  store i32 %115, i32* %gp_offset_p213
  br label %vaarg.end.222

vaarg.in_mem.218:                                 ; preds = %sw.bb.211
  %overflow_arg_area_p219 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay212, i32 0, i32 2
  %overflow_arg_area220 = load i8*, i8** %overflow_arg_area_p219
  %116 = bitcast i8* %overflow_arg_area220 to i32*
  %overflow_arg_area.next221 = getelementptr i8, i8* %overflow_arg_area220, i32 8
  store i8* %overflow_arg_area.next221, i8** %overflow_arg_area_p219
  br label %vaarg.end.222

vaarg.end.222:                                    ; preds = %vaarg.in_mem.218, %vaarg.in_reg.216
  %vaarg.addr223 = phi i32* [ %114, %vaarg.in_reg.216 ], [ %116, %vaarg.in_mem.218 ]
  %117 = load i32, i32* %vaarg.addr223
  %conv224 = trunc i32 %117 to i16
  %118 = load i32, i32* %i, align 4
  %idxprom225 = sext i32 %118 to i64
  %119 = load %struct._GimpParam*, %struct._GimpParam** %params, align 8
  %arrayidx226 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %119, i64 %idxprom225
  %data227 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx226, i32 0, i32 1
  %d_int16 = bitcast %union._GimpParamData* %data227 to i16*
  store i16 %conv224, i16* %d_int16, align 2
  br label %sw.epilog.583

sw.bb.228:                                        ; preds = %vaarg.end.191
  %arraydecay229 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %gp_offset_p230 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay229, i32 0, i32 0
  %gp_offset231 = load i32, i32* %gp_offset_p230
  %fits_in_gp232 = icmp ule i32 %gp_offset231, 40
  br i1 %fits_in_gp232, label %vaarg.in_reg.233, label %vaarg.in_mem.235

vaarg.in_reg.233:                                 ; preds = %sw.bb.228
  %120 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay229, i32 0, i32 3
  %reg_save_area234 = load i8*, i8** %120
  %121 = getelementptr i8, i8* %reg_save_area234, i32 %gp_offset231
  %122 = bitcast i8* %121 to i32*
  %123 = add i32 %gp_offset231, 8
  store i32 %123, i32* %gp_offset_p230
  br label %vaarg.end.239

vaarg.in_mem.235:                                 ; preds = %sw.bb.228
  %overflow_arg_area_p236 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay229, i32 0, i32 2
  %overflow_arg_area237 = load i8*, i8** %overflow_arg_area_p236
  %124 = bitcast i8* %overflow_arg_area237 to i32*
  %overflow_arg_area.next238 = getelementptr i8, i8* %overflow_arg_area237, i32 8
  store i8* %overflow_arg_area.next238, i8** %overflow_arg_area_p236
  br label %vaarg.end.239

vaarg.end.239:                                    ; preds = %vaarg.in_mem.235, %vaarg.in_reg.233
  %vaarg.addr240 = phi i32* [ %122, %vaarg.in_reg.233 ], [ %124, %vaarg.in_mem.235 ]
  %125 = load i32, i32* %vaarg.addr240
  %conv241 = trunc i32 %125 to i8
  %126 = load i32, i32* %i, align 4
  %idxprom242 = sext i32 %126 to i64
  %127 = load %struct._GimpParam*, %struct._GimpParam** %params, align 8
  %arrayidx243 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %127, i64 %idxprom242
  %data244 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx243, i32 0, i32 1
  %d_int8 = bitcast %union._GimpParamData* %data244 to i8*
  store i8 %conv241, i8* %d_int8, align 1
  br label %sw.epilog.583

sw.bb.245:                                        ; preds = %vaarg.end.191
  %arraydecay246 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %fp_offset_p247 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay246, i32 0, i32 1
  %fp_offset248 = load i32, i32* %fp_offset_p247
  %fits_in_fp249 = icmp ule i32 %fp_offset248, 160
  br i1 %fits_in_fp249, label %vaarg.in_reg.250, label %vaarg.in_mem.252

vaarg.in_reg.250:                                 ; preds = %sw.bb.245
  %128 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay246, i32 0, i32 3
  %reg_save_area251 = load i8*, i8** %128
  %129 = getelementptr i8, i8* %reg_save_area251, i32 %fp_offset248
  %130 = bitcast i8* %129 to double*
  %131 = add i32 %fp_offset248, 16
  store i32 %131, i32* %fp_offset_p247
  br label %vaarg.end.256

vaarg.in_mem.252:                                 ; preds = %sw.bb.245
  %overflow_arg_area_p253 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay246, i32 0, i32 2
  %overflow_arg_area254 = load i8*, i8** %overflow_arg_area_p253
  %132 = bitcast i8* %overflow_arg_area254 to double*
  %overflow_arg_area.next255 = getelementptr i8, i8* %overflow_arg_area254, i32 8
  store i8* %overflow_arg_area.next255, i8** %overflow_arg_area_p253
  br label %vaarg.end.256

vaarg.end.256:                                    ; preds = %vaarg.in_mem.252, %vaarg.in_reg.250
  %vaarg.addr257 = phi double* [ %130, %vaarg.in_reg.250 ], [ %132, %vaarg.in_mem.252 ]
  %133 = load double, double* %vaarg.addr257
  %134 = load i32, i32* %i, align 4
  %idxprom258 = sext i32 %134 to i64
  %135 = load %struct._GimpParam*, %struct._GimpParam** %params, align 8
  %arrayidx259 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %135, i64 %idxprom258
  %data260 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx259, i32 0, i32 1
  %d_float = bitcast %union._GimpParamData* %data260 to double*
  store double %133, double* %d_float, align 8
  br label %sw.epilog.583

sw.bb.261:                                        ; preds = %vaarg.end.191
  %arraydecay262 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %gp_offset_p263 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay262, i32 0, i32 0
  %gp_offset264 = load i32, i32* %gp_offset_p263
  %fits_in_gp265 = icmp ule i32 %gp_offset264, 40
  br i1 %fits_in_gp265, label %vaarg.in_reg.266, label %vaarg.in_mem.268

vaarg.in_reg.266:                                 ; preds = %sw.bb.261
  %136 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay262, i32 0, i32 3
  %reg_save_area267 = load i8*, i8** %136
  %137 = getelementptr i8, i8* %reg_save_area267, i32 %gp_offset264
  %138 = bitcast i8* %137 to i8**
  %139 = add i32 %gp_offset264, 8
  store i32 %139, i32* %gp_offset_p263
  br label %vaarg.end.272

vaarg.in_mem.268:                                 ; preds = %sw.bb.261
  %overflow_arg_area_p269 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay262, i32 0, i32 2
  %overflow_arg_area270 = load i8*, i8** %overflow_arg_area_p269
  %140 = bitcast i8* %overflow_arg_area270 to i8**
  %overflow_arg_area.next271 = getelementptr i8, i8* %overflow_arg_area270, i32 8
  store i8* %overflow_arg_area.next271, i8** %overflow_arg_area_p269
  br label %vaarg.end.272

vaarg.end.272:                                    ; preds = %vaarg.in_mem.268, %vaarg.in_reg.266
  %vaarg.addr273 = phi i8** [ %138, %vaarg.in_reg.266 ], [ %140, %vaarg.in_mem.268 ]
  %141 = load i8*, i8** %vaarg.addr273
  %142 = load i32, i32* %i, align 4
  %idxprom274 = sext i32 %142 to i64
  %143 = load %struct._GimpParam*, %struct._GimpParam** %params, align 8
  %arrayidx275 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %143, i64 %idxprom274
  %data276 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx275, i32 0, i32 1
  %d_string = bitcast %union._GimpParamData* %data276 to i8**
  store i8* %141, i8** %d_string, align 8
  br label %sw.epilog.583

sw.bb.277:                                        ; preds = %vaarg.end.191
  %arraydecay278 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %gp_offset_p279 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay278, i32 0, i32 0
  %gp_offset280 = load i32, i32* %gp_offset_p279
  %fits_in_gp281 = icmp ule i32 %gp_offset280, 40
  br i1 %fits_in_gp281, label %vaarg.in_reg.282, label %vaarg.in_mem.284

vaarg.in_reg.282:                                 ; preds = %sw.bb.277
  %144 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay278, i32 0, i32 3
  %reg_save_area283 = load i8*, i8** %144
  %145 = getelementptr i8, i8* %reg_save_area283, i32 %gp_offset280
  %146 = bitcast i8* %145 to i32**
  %147 = add i32 %gp_offset280, 8
  store i32 %147, i32* %gp_offset_p279
  br label %vaarg.end.288

vaarg.in_mem.284:                                 ; preds = %sw.bb.277
  %overflow_arg_area_p285 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay278, i32 0, i32 2
  %overflow_arg_area286 = load i8*, i8** %overflow_arg_area_p285
  %148 = bitcast i8* %overflow_arg_area286 to i32**
  %overflow_arg_area.next287 = getelementptr i8, i8* %overflow_arg_area286, i32 8
  store i8* %overflow_arg_area.next287, i8** %overflow_arg_area_p285
  br label %vaarg.end.288

vaarg.end.288:                                    ; preds = %vaarg.in_mem.284, %vaarg.in_reg.282
  %vaarg.addr289 = phi i32** [ %146, %vaarg.in_reg.282 ], [ %148, %vaarg.in_mem.284 ]
  %149 = load i32*, i32** %vaarg.addr289
  %150 = load i32, i32* %i, align 4
  %idxprom290 = sext i32 %150 to i64
  %151 = load %struct._GimpParam*, %struct._GimpParam** %params, align 8
  %arrayidx291 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %151, i64 %idxprom290
  %data292 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx291, i32 0, i32 1
  %d_int32array = bitcast %union._GimpParamData* %data292 to i32**
  store i32* %149, i32** %d_int32array, align 8
  br label %sw.epilog.583

sw.bb.293:                                        ; preds = %vaarg.end.191
  %arraydecay294 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %gp_offset_p295 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay294, i32 0, i32 0
  %gp_offset296 = load i32, i32* %gp_offset_p295
  %fits_in_gp297 = icmp ule i32 %gp_offset296, 40
  br i1 %fits_in_gp297, label %vaarg.in_reg.298, label %vaarg.in_mem.300

vaarg.in_reg.298:                                 ; preds = %sw.bb.293
  %152 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay294, i32 0, i32 3
  %reg_save_area299 = load i8*, i8** %152
  %153 = getelementptr i8, i8* %reg_save_area299, i32 %gp_offset296
  %154 = bitcast i8* %153 to i16**
  %155 = add i32 %gp_offset296, 8
  store i32 %155, i32* %gp_offset_p295
  br label %vaarg.end.304

vaarg.in_mem.300:                                 ; preds = %sw.bb.293
  %overflow_arg_area_p301 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay294, i32 0, i32 2
  %overflow_arg_area302 = load i8*, i8** %overflow_arg_area_p301
  %156 = bitcast i8* %overflow_arg_area302 to i16**
  %overflow_arg_area.next303 = getelementptr i8, i8* %overflow_arg_area302, i32 8
  store i8* %overflow_arg_area.next303, i8** %overflow_arg_area_p301
  br label %vaarg.end.304

vaarg.end.304:                                    ; preds = %vaarg.in_mem.300, %vaarg.in_reg.298
  %vaarg.addr305 = phi i16** [ %154, %vaarg.in_reg.298 ], [ %156, %vaarg.in_mem.300 ]
  %157 = load i16*, i16** %vaarg.addr305
  %158 = load i32, i32* %i, align 4
  %idxprom306 = sext i32 %158 to i64
  %159 = load %struct._GimpParam*, %struct._GimpParam** %params, align 8
  %arrayidx307 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %159, i64 %idxprom306
  %data308 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx307, i32 0, i32 1
  %d_int16array = bitcast %union._GimpParamData* %data308 to i16**
  store i16* %157, i16** %d_int16array, align 8
  br label %sw.epilog.583

sw.bb.309:                                        ; preds = %vaarg.end.191
  %arraydecay310 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %gp_offset_p311 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay310, i32 0, i32 0
  %gp_offset312 = load i32, i32* %gp_offset_p311
  %fits_in_gp313 = icmp ule i32 %gp_offset312, 40
  br i1 %fits_in_gp313, label %vaarg.in_reg.314, label %vaarg.in_mem.316

vaarg.in_reg.314:                                 ; preds = %sw.bb.309
  %160 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay310, i32 0, i32 3
  %reg_save_area315 = load i8*, i8** %160
  %161 = getelementptr i8, i8* %reg_save_area315, i32 %gp_offset312
  %162 = bitcast i8* %161 to i8**
  %163 = add i32 %gp_offset312, 8
  store i32 %163, i32* %gp_offset_p311
  br label %vaarg.end.320

vaarg.in_mem.316:                                 ; preds = %sw.bb.309
  %overflow_arg_area_p317 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay310, i32 0, i32 2
  %overflow_arg_area318 = load i8*, i8** %overflow_arg_area_p317
  %164 = bitcast i8* %overflow_arg_area318 to i8**
  %overflow_arg_area.next319 = getelementptr i8, i8* %overflow_arg_area318, i32 8
  store i8* %overflow_arg_area.next319, i8** %overflow_arg_area_p317
  br label %vaarg.end.320

vaarg.end.320:                                    ; preds = %vaarg.in_mem.316, %vaarg.in_reg.314
  %vaarg.addr321 = phi i8** [ %162, %vaarg.in_reg.314 ], [ %164, %vaarg.in_mem.316 ]
  %165 = load i8*, i8** %vaarg.addr321
  %166 = load i32, i32* %i, align 4
  %idxprom322 = sext i32 %166 to i64
  %167 = load %struct._GimpParam*, %struct._GimpParam** %params, align 8
  %arrayidx323 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %167, i64 %idxprom322
  %data324 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx323, i32 0, i32 1
  %d_int8array = bitcast %union._GimpParamData* %data324 to i8**
  store i8* %165, i8** %d_int8array, align 8
  br label %sw.epilog.583

sw.bb.325:                                        ; preds = %vaarg.end.191
  %arraydecay326 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %gp_offset_p327 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay326, i32 0, i32 0
  %gp_offset328 = load i32, i32* %gp_offset_p327
  %fits_in_gp329 = icmp ule i32 %gp_offset328, 40
  br i1 %fits_in_gp329, label %vaarg.in_reg.330, label %vaarg.in_mem.332

vaarg.in_reg.330:                                 ; preds = %sw.bb.325
  %168 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay326, i32 0, i32 3
  %reg_save_area331 = load i8*, i8** %168
  %169 = getelementptr i8, i8* %reg_save_area331, i32 %gp_offset328
  %170 = bitcast i8* %169 to double**
  %171 = add i32 %gp_offset328, 8
  store i32 %171, i32* %gp_offset_p327
  br label %vaarg.end.336

vaarg.in_mem.332:                                 ; preds = %sw.bb.325
  %overflow_arg_area_p333 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay326, i32 0, i32 2
  %overflow_arg_area334 = load i8*, i8** %overflow_arg_area_p333
  %172 = bitcast i8* %overflow_arg_area334 to double**
  %overflow_arg_area.next335 = getelementptr i8, i8* %overflow_arg_area334, i32 8
  store i8* %overflow_arg_area.next335, i8** %overflow_arg_area_p333
  br label %vaarg.end.336

vaarg.end.336:                                    ; preds = %vaarg.in_mem.332, %vaarg.in_reg.330
  %vaarg.addr337 = phi double** [ %170, %vaarg.in_reg.330 ], [ %172, %vaarg.in_mem.332 ]
  %173 = load double*, double** %vaarg.addr337
  %174 = load i32, i32* %i, align 4
  %idxprom338 = sext i32 %174 to i64
  %175 = load %struct._GimpParam*, %struct._GimpParam** %params, align 8
  %arrayidx339 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %175, i64 %idxprom338
  %data340 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx339, i32 0, i32 1
  %d_floatarray = bitcast %union._GimpParamData* %data340 to double**
  store double* %173, double** %d_floatarray, align 8
  br label %sw.epilog.583

sw.bb.341:                                        ; preds = %vaarg.end.191
  %arraydecay342 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %gp_offset_p343 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay342, i32 0, i32 0
  %gp_offset344 = load i32, i32* %gp_offset_p343
  %fits_in_gp345 = icmp ule i32 %gp_offset344, 40
  br i1 %fits_in_gp345, label %vaarg.in_reg.346, label %vaarg.in_mem.348

vaarg.in_reg.346:                                 ; preds = %sw.bb.341
  %176 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay342, i32 0, i32 3
  %reg_save_area347 = load i8*, i8** %176
  %177 = getelementptr i8, i8* %reg_save_area347, i32 %gp_offset344
  %178 = bitcast i8* %177 to i8***
  %179 = add i32 %gp_offset344, 8
  store i32 %179, i32* %gp_offset_p343
  br label %vaarg.end.352

vaarg.in_mem.348:                                 ; preds = %sw.bb.341
  %overflow_arg_area_p349 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay342, i32 0, i32 2
  %overflow_arg_area350 = load i8*, i8** %overflow_arg_area_p349
  %180 = bitcast i8* %overflow_arg_area350 to i8***
  %overflow_arg_area.next351 = getelementptr i8, i8* %overflow_arg_area350, i32 8
  store i8* %overflow_arg_area.next351, i8** %overflow_arg_area_p349
  br label %vaarg.end.352

vaarg.end.352:                                    ; preds = %vaarg.in_mem.348, %vaarg.in_reg.346
  %vaarg.addr353 = phi i8*** [ %178, %vaarg.in_reg.346 ], [ %180, %vaarg.in_mem.348 ]
  %181 = load i8**, i8*** %vaarg.addr353
  %182 = load i32, i32* %i, align 4
  %idxprom354 = sext i32 %182 to i64
  %183 = load %struct._GimpParam*, %struct._GimpParam** %params, align 8
  %arrayidx355 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %183, i64 %idxprom354
  %data356 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx355, i32 0, i32 1
  %d_stringarray = bitcast %union._GimpParamData* %data356 to i8***
  store i8** %181, i8*** %d_stringarray, align 8
  br label %sw.epilog.583

sw.bb.357:                                        ; preds = %vaarg.end.191
  %184 = load i32, i32* %i, align 4
  %idxprom358 = sext i32 %184 to i64
  %185 = load %struct._GimpParam*, %struct._GimpParam** %params, align 8
  %arrayidx359 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %185, i64 %idxprom358
  %data360 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx359, i32 0, i32 1
  %d_color = bitcast %union._GimpParamData* %data360 to %struct._GimpRGB*
  %arraydecay361 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %gp_offset_p362 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay361, i32 0, i32 0
  %gp_offset363 = load i32, i32* %gp_offset_p362
  %fits_in_gp364 = icmp ule i32 %gp_offset363, 40
  br i1 %fits_in_gp364, label %vaarg.in_reg.365, label %vaarg.in_mem.367

vaarg.in_reg.365:                                 ; preds = %sw.bb.357
  %186 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay361, i32 0, i32 3
  %reg_save_area366 = load i8*, i8** %186
  %187 = getelementptr i8, i8* %reg_save_area366, i32 %gp_offset363
  %188 = bitcast i8* %187 to %struct._GimpRGB**
  %189 = add i32 %gp_offset363, 8
  store i32 %189, i32* %gp_offset_p362
  br label %vaarg.end.371

vaarg.in_mem.367:                                 ; preds = %sw.bb.357
  %overflow_arg_area_p368 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay361, i32 0, i32 2
  %overflow_arg_area369 = load i8*, i8** %overflow_arg_area_p368
  %190 = bitcast i8* %overflow_arg_area369 to %struct._GimpRGB**
  %overflow_arg_area.next370 = getelementptr i8, i8* %overflow_arg_area369, i32 8
  store i8* %overflow_arg_area.next370, i8** %overflow_arg_area_p368
  br label %vaarg.end.371

vaarg.end.371:                                    ; preds = %vaarg.in_mem.367, %vaarg.in_reg.365
  %vaarg.addr372 = phi %struct._GimpRGB** [ %188, %vaarg.in_reg.365 ], [ %190, %vaarg.in_mem.367 ]
  %191 = load %struct._GimpRGB*, %struct._GimpRGB** %vaarg.addr372
  %192 = bitcast %struct._GimpRGB* %d_color to i8*
  %193 = bitcast %struct._GimpRGB* %191 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %192, i8* %193, i64 32, i32 8, i1 false)
  br label %sw.epilog.583

sw.bb.373:                                        ; preds = %vaarg.end.191
  %arraydecay374 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %gp_offset_p375 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay374, i32 0, i32 0
  %gp_offset376 = load i32, i32* %gp_offset_p375
  %fits_in_gp377 = icmp ule i32 %gp_offset376, 40
  br i1 %fits_in_gp377, label %vaarg.in_reg.378, label %vaarg.in_mem.380

vaarg.in_reg.378:                                 ; preds = %sw.bb.373
  %194 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay374, i32 0, i32 3
  %reg_save_area379 = load i8*, i8** %194
  %195 = getelementptr i8, i8* %reg_save_area379, i32 %gp_offset376
  %196 = bitcast i8* %195 to i32*
  %197 = add i32 %gp_offset376, 8
  store i32 %197, i32* %gp_offset_p375
  br label %vaarg.end.384

vaarg.in_mem.380:                                 ; preds = %sw.bb.373
  %overflow_arg_area_p381 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay374, i32 0, i32 2
  %overflow_arg_area382 = load i8*, i8** %overflow_arg_area_p381
  %198 = bitcast i8* %overflow_arg_area382 to i32*
  %overflow_arg_area.next383 = getelementptr i8, i8* %overflow_arg_area382, i32 8
  store i8* %overflow_arg_area.next383, i8** %overflow_arg_area_p381
  br label %vaarg.end.384

vaarg.end.384:                                    ; preds = %vaarg.in_mem.380, %vaarg.in_reg.378
  %vaarg.addr385 = phi i32* [ %196, %vaarg.in_reg.378 ], [ %198, %vaarg.in_mem.380 ]
  %199 = load i32, i32* %vaarg.addr385
  %200 = load i32, i32* %i, align 4
  %idxprom386 = sext i32 %200 to i64
  %201 = load %struct._GimpParam*, %struct._GimpParam** %params, align 8
  %arrayidx387 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %201, i64 %idxprom386
  %data388 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx387, i32 0, i32 1
  %d_item = bitcast %union._GimpParamData* %data388 to i32*
  store i32 %199, i32* %d_item, align 4
  br label %sw.epilog.583

sw.bb.389:                                        ; preds = %vaarg.end.191
  %arraydecay390 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %gp_offset_p391 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay390, i32 0, i32 0
  %gp_offset392 = load i32, i32* %gp_offset_p391
  %fits_in_gp393 = icmp ule i32 %gp_offset392, 40
  br i1 %fits_in_gp393, label %vaarg.in_reg.394, label %vaarg.in_mem.396

vaarg.in_reg.394:                                 ; preds = %sw.bb.389
  %202 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay390, i32 0, i32 3
  %reg_save_area395 = load i8*, i8** %202
  %203 = getelementptr i8, i8* %reg_save_area395, i32 %gp_offset392
  %204 = bitcast i8* %203 to i32*
  %205 = add i32 %gp_offset392, 8
  store i32 %205, i32* %gp_offset_p391
  br label %vaarg.end.400

vaarg.in_mem.396:                                 ; preds = %sw.bb.389
  %overflow_arg_area_p397 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay390, i32 0, i32 2
  %overflow_arg_area398 = load i8*, i8** %overflow_arg_area_p397
  %206 = bitcast i8* %overflow_arg_area398 to i32*
  %overflow_arg_area.next399 = getelementptr i8, i8* %overflow_arg_area398, i32 8
  store i8* %overflow_arg_area.next399, i8** %overflow_arg_area_p397
  br label %vaarg.end.400

vaarg.end.400:                                    ; preds = %vaarg.in_mem.396, %vaarg.in_reg.394
  %vaarg.addr401 = phi i32* [ %204, %vaarg.in_reg.394 ], [ %206, %vaarg.in_mem.396 ]
  %207 = load i32, i32* %vaarg.addr401
  %208 = load i32, i32* %i, align 4
  %idxprom402 = sext i32 %208 to i64
  %209 = load %struct._GimpParam*, %struct._GimpParam** %params, align 8
  %arrayidx403 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %209, i64 %idxprom402
  %data404 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx403, i32 0, i32 1
  %d_display = bitcast %union._GimpParamData* %data404 to i32*
  store i32 %207, i32* %d_display, align 4
  br label %sw.epilog.583

sw.bb.405:                                        ; preds = %vaarg.end.191
  %arraydecay406 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %gp_offset_p407 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay406, i32 0, i32 0
  %gp_offset408 = load i32, i32* %gp_offset_p407
  %fits_in_gp409 = icmp ule i32 %gp_offset408, 40
  br i1 %fits_in_gp409, label %vaarg.in_reg.410, label %vaarg.in_mem.412

vaarg.in_reg.410:                                 ; preds = %sw.bb.405
  %210 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay406, i32 0, i32 3
  %reg_save_area411 = load i8*, i8** %210
  %211 = getelementptr i8, i8* %reg_save_area411, i32 %gp_offset408
  %212 = bitcast i8* %211 to i32*
  %213 = add i32 %gp_offset408, 8
  store i32 %213, i32* %gp_offset_p407
  br label %vaarg.end.416

vaarg.in_mem.412:                                 ; preds = %sw.bb.405
  %overflow_arg_area_p413 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay406, i32 0, i32 2
  %overflow_arg_area414 = load i8*, i8** %overflow_arg_area_p413
  %214 = bitcast i8* %overflow_arg_area414 to i32*
  %overflow_arg_area.next415 = getelementptr i8, i8* %overflow_arg_area414, i32 8
  store i8* %overflow_arg_area.next415, i8** %overflow_arg_area_p413
  br label %vaarg.end.416

vaarg.end.416:                                    ; preds = %vaarg.in_mem.412, %vaarg.in_reg.410
  %vaarg.addr417 = phi i32* [ %212, %vaarg.in_reg.410 ], [ %214, %vaarg.in_mem.412 ]
  %215 = load i32, i32* %vaarg.addr417
  %216 = load i32, i32* %i, align 4
  %idxprom418 = sext i32 %216 to i64
  %217 = load %struct._GimpParam*, %struct._GimpParam** %params, align 8
  %arrayidx419 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %217, i64 %idxprom418
  %data420 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx419, i32 0, i32 1
  %d_image = bitcast %union._GimpParamData* %data420 to i32*
  store i32 %215, i32* %d_image, align 4
  br label %sw.epilog.583

sw.bb.421:                                        ; preds = %vaarg.end.191
  %arraydecay422 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %gp_offset_p423 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay422, i32 0, i32 0
  %gp_offset424 = load i32, i32* %gp_offset_p423
  %fits_in_gp425 = icmp ule i32 %gp_offset424, 40
  br i1 %fits_in_gp425, label %vaarg.in_reg.426, label %vaarg.in_mem.428

vaarg.in_reg.426:                                 ; preds = %sw.bb.421
  %218 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay422, i32 0, i32 3
  %reg_save_area427 = load i8*, i8** %218
  %219 = getelementptr i8, i8* %reg_save_area427, i32 %gp_offset424
  %220 = bitcast i8* %219 to i32*
  %221 = add i32 %gp_offset424, 8
  store i32 %221, i32* %gp_offset_p423
  br label %vaarg.end.432

vaarg.in_mem.428:                                 ; preds = %sw.bb.421
  %overflow_arg_area_p429 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay422, i32 0, i32 2
  %overflow_arg_area430 = load i8*, i8** %overflow_arg_area_p429
  %222 = bitcast i8* %overflow_arg_area430 to i32*
  %overflow_arg_area.next431 = getelementptr i8, i8* %overflow_arg_area430, i32 8
  store i8* %overflow_arg_area.next431, i8** %overflow_arg_area_p429
  br label %vaarg.end.432

vaarg.end.432:                                    ; preds = %vaarg.in_mem.428, %vaarg.in_reg.426
  %vaarg.addr433 = phi i32* [ %220, %vaarg.in_reg.426 ], [ %222, %vaarg.in_mem.428 ]
  %223 = load i32, i32* %vaarg.addr433
  %224 = load i32, i32* %i, align 4
  %idxprom434 = sext i32 %224 to i64
  %225 = load %struct._GimpParam*, %struct._GimpParam** %params, align 8
  %arrayidx435 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %225, i64 %idxprom434
  %data436 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx435, i32 0, i32 1
  %d_layer = bitcast %union._GimpParamData* %data436 to i32*
  store i32 %223, i32* %d_layer, align 4
  br label %sw.epilog.583

sw.bb.437:                                        ; preds = %vaarg.end.191
  %arraydecay438 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %gp_offset_p439 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay438, i32 0, i32 0
  %gp_offset440 = load i32, i32* %gp_offset_p439
  %fits_in_gp441 = icmp ule i32 %gp_offset440, 40
  br i1 %fits_in_gp441, label %vaarg.in_reg.442, label %vaarg.in_mem.444

vaarg.in_reg.442:                                 ; preds = %sw.bb.437
  %226 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay438, i32 0, i32 3
  %reg_save_area443 = load i8*, i8** %226
  %227 = getelementptr i8, i8* %reg_save_area443, i32 %gp_offset440
  %228 = bitcast i8* %227 to i32*
  %229 = add i32 %gp_offset440, 8
  store i32 %229, i32* %gp_offset_p439
  br label %vaarg.end.448

vaarg.in_mem.444:                                 ; preds = %sw.bb.437
  %overflow_arg_area_p445 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay438, i32 0, i32 2
  %overflow_arg_area446 = load i8*, i8** %overflow_arg_area_p445
  %230 = bitcast i8* %overflow_arg_area446 to i32*
  %overflow_arg_area.next447 = getelementptr i8, i8* %overflow_arg_area446, i32 8
  store i8* %overflow_arg_area.next447, i8** %overflow_arg_area_p445
  br label %vaarg.end.448

vaarg.end.448:                                    ; preds = %vaarg.in_mem.444, %vaarg.in_reg.442
  %vaarg.addr449 = phi i32* [ %228, %vaarg.in_reg.442 ], [ %230, %vaarg.in_mem.444 ]
  %231 = load i32, i32* %vaarg.addr449
  %232 = load i32, i32* %i, align 4
  %idxprom450 = sext i32 %232 to i64
  %233 = load %struct._GimpParam*, %struct._GimpParam** %params, align 8
  %arrayidx451 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %233, i64 %idxprom450
  %data452 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx451, i32 0, i32 1
  %d_channel = bitcast %union._GimpParamData* %data452 to i32*
  store i32 %231, i32* %d_channel, align 4
  br label %sw.epilog.583

sw.bb.453:                                        ; preds = %vaarg.end.191
  %arraydecay454 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %gp_offset_p455 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay454, i32 0, i32 0
  %gp_offset456 = load i32, i32* %gp_offset_p455
  %fits_in_gp457 = icmp ule i32 %gp_offset456, 40
  br i1 %fits_in_gp457, label %vaarg.in_reg.458, label %vaarg.in_mem.460

vaarg.in_reg.458:                                 ; preds = %sw.bb.453
  %234 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay454, i32 0, i32 3
  %reg_save_area459 = load i8*, i8** %234
  %235 = getelementptr i8, i8* %reg_save_area459, i32 %gp_offset456
  %236 = bitcast i8* %235 to i32*
  %237 = add i32 %gp_offset456, 8
  store i32 %237, i32* %gp_offset_p455
  br label %vaarg.end.464

vaarg.in_mem.460:                                 ; preds = %sw.bb.453
  %overflow_arg_area_p461 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay454, i32 0, i32 2
  %overflow_arg_area462 = load i8*, i8** %overflow_arg_area_p461
  %238 = bitcast i8* %overflow_arg_area462 to i32*
  %overflow_arg_area.next463 = getelementptr i8, i8* %overflow_arg_area462, i32 8
  store i8* %overflow_arg_area.next463, i8** %overflow_arg_area_p461
  br label %vaarg.end.464

vaarg.end.464:                                    ; preds = %vaarg.in_mem.460, %vaarg.in_reg.458
  %vaarg.addr465 = phi i32* [ %236, %vaarg.in_reg.458 ], [ %238, %vaarg.in_mem.460 ]
  %239 = load i32, i32* %vaarg.addr465
  %240 = load i32, i32* %i, align 4
  %idxprom466 = sext i32 %240 to i64
  %241 = load %struct._GimpParam*, %struct._GimpParam** %params, align 8
  %arrayidx467 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %241, i64 %idxprom466
  %data468 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx467, i32 0, i32 1
  %d_drawable = bitcast %union._GimpParamData* %data468 to i32*
  store i32 %239, i32* %d_drawable, align 4
  br label %sw.epilog.583

sw.bb.469:                                        ; preds = %vaarg.end.191
  %arraydecay470 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %gp_offset_p471 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay470, i32 0, i32 0
  %gp_offset472 = load i32, i32* %gp_offset_p471
  %fits_in_gp473 = icmp ule i32 %gp_offset472, 40
  br i1 %fits_in_gp473, label %vaarg.in_reg.474, label %vaarg.in_mem.476

vaarg.in_reg.474:                                 ; preds = %sw.bb.469
  %242 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay470, i32 0, i32 3
  %reg_save_area475 = load i8*, i8** %242
  %243 = getelementptr i8, i8* %reg_save_area475, i32 %gp_offset472
  %244 = bitcast i8* %243 to i32*
  %245 = add i32 %gp_offset472, 8
  store i32 %245, i32* %gp_offset_p471
  br label %vaarg.end.480

vaarg.in_mem.476:                                 ; preds = %sw.bb.469
  %overflow_arg_area_p477 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay470, i32 0, i32 2
  %overflow_arg_area478 = load i8*, i8** %overflow_arg_area_p477
  %246 = bitcast i8* %overflow_arg_area478 to i32*
  %overflow_arg_area.next479 = getelementptr i8, i8* %overflow_arg_area478, i32 8
  store i8* %overflow_arg_area.next479, i8** %overflow_arg_area_p477
  br label %vaarg.end.480

vaarg.end.480:                                    ; preds = %vaarg.in_mem.476, %vaarg.in_reg.474
  %vaarg.addr481 = phi i32* [ %244, %vaarg.in_reg.474 ], [ %246, %vaarg.in_mem.476 ]
  %247 = load i32, i32* %vaarg.addr481
  %248 = load i32, i32* %i, align 4
  %idxprom482 = sext i32 %248 to i64
  %249 = load %struct._GimpParam*, %struct._GimpParam** %params, align 8
  %arrayidx483 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %249, i64 %idxprom482
  %data484 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx483, i32 0, i32 1
  %d_selection = bitcast %union._GimpParamData* %data484 to i32*
  store i32 %247, i32* %d_selection, align 4
  br label %sw.epilog.583

sw.bb.485:                                        ; preds = %vaarg.end.191
  %arraydecay486 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %gp_offset_p487 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay486, i32 0, i32 0
  %gp_offset488 = load i32, i32* %gp_offset_p487
  %fits_in_gp489 = icmp ule i32 %gp_offset488, 40
  br i1 %fits_in_gp489, label %vaarg.in_reg.490, label %vaarg.in_mem.492

vaarg.in_reg.490:                                 ; preds = %sw.bb.485
  %250 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay486, i32 0, i32 3
  %reg_save_area491 = load i8*, i8** %250
  %251 = getelementptr i8, i8* %reg_save_area491, i32 %gp_offset488
  %252 = bitcast i8* %251 to %struct._GimpRGB**
  %253 = add i32 %gp_offset488, 8
  store i32 %253, i32* %gp_offset_p487
  br label %vaarg.end.496

vaarg.in_mem.492:                                 ; preds = %sw.bb.485
  %overflow_arg_area_p493 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay486, i32 0, i32 2
  %overflow_arg_area494 = load i8*, i8** %overflow_arg_area_p493
  %254 = bitcast i8* %overflow_arg_area494 to %struct._GimpRGB**
  %overflow_arg_area.next495 = getelementptr i8, i8* %overflow_arg_area494, i32 8
  store i8* %overflow_arg_area.next495, i8** %overflow_arg_area_p493
  br label %vaarg.end.496

vaarg.end.496:                                    ; preds = %vaarg.in_mem.492, %vaarg.in_reg.490
  %vaarg.addr497 = phi %struct._GimpRGB** [ %252, %vaarg.in_reg.490 ], [ %254, %vaarg.in_mem.492 ]
  %255 = load %struct._GimpRGB*, %struct._GimpRGB** %vaarg.addr497
  %256 = load i32, i32* %i, align 4
  %idxprom498 = sext i32 %256 to i64
  %257 = load %struct._GimpParam*, %struct._GimpParam** %params, align 8
  %arrayidx499 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %257, i64 %idxprom498
  %data500 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx499, i32 0, i32 1
  %d_colorarray = bitcast %union._GimpParamData* %data500 to %struct._GimpRGB**
  store %struct._GimpRGB* %255, %struct._GimpRGB** %d_colorarray, align 8
  br label %sw.epilog.583

sw.bb.501:                                        ; preds = %vaarg.end.191
  %arraydecay502 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %gp_offset_p503 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay502, i32 0, i32 0
  %gp_offset504 = load i32, i32* %gp_offset_p503
  %fits_in_gp505 = icmp ule i32 %gp_offset504, 40
  br i1 %fits_in_gp505, label %vaarg.in_reg.506, label %vaarg.in_mem.508

vaarg.in_reg.506:                                 ; preds = %sw.bb.501
  %258 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay502, i32 0, i32 3
  %reg_save_area507 = load i8*, i8** %258
  %259 = getelementptr i8, i8* %reg_save_area507, i32 %gp_offset504
  %260 = bitcast i8* %259 to i32*
  %261 = add i32 %gp_offset504, 8
  store i32 %261, i32* %gp_offset_p503
  br label %vaarg.end.512

vaarg.in_mem.508:                                 ; preds = %sw.bb.501
  %overflow_arg_area_p509 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay502, i32 0, i32 2
  %overflow_arg_area510 = load i8*, i8** %overflow_arg_area_p509
  %262 = bitcast i8* %overflow_arg_area510 to i32*
  %overflow_arg_area.next511 = getelementptr i8, i8* %overflow_arg_area510, i32 8
  store i8* %overflow_arg_area.next511, i8** %overflow_arg_area_p509
  br label %vaarg.end.512

vaarg.end.512:                                    ; preds = %vaarg.in_mem.508, %vaarg.in_reg.506
  %vaarg.addr513 = phi i32* [ %260, %vaarg.in_reg.506 ], [ %262, %vaarg.in_mem.508 ]
  %263 = load i32, i32* %vaarg.addr513
  %264 = load i32, i32* %i, align 4
  %idxprom514 = sext i32 %264 to i64
  %265 = load %struct._GimpParam*, %struct._GimpParam** %params, align 8
  %arrayidx515 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %265, i64 %idxprom514
  %data516 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx515, i32 0, i32 1
  %d_vectors = bitcast %union._GimpParamData* %data516 to i32*
  store i32 %263, i32* %d_vectors, align 4
  br label %sw.epilog.583

sw.bb.517:                                        ; preds = %vaarg.end.191
  %arraydecay518 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %gp_offset_p519 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay518, i32 0, i32 0
  %gp_offset520 = load i32, i32* %gp_offset_p519
  %fits_in_gp521 = icmp ule i32 %gp_offset520, 40
  br i1 %fits_in_gp521, label %vaarg.in_reg.522, label %vaarg.in_mem.524

vaarg.in_reg.522:                                 ; preds = %sw.bb.517
  %266 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay518, i32 0, i32 3
  %reg_save_area523 = load i8*, i8** %266
  %267 = getelementptr i8, i8* %reg_save_area523, i32 %gp_offset520
  %268 = bitcast i8* %267 to %struct._GimpParasite**
  %269 = add i32 %gp_offset520, 8
  store i32 %269, i32* %gp_offset_p519
  br label %vaarg.end.528

vaarg.in_mem.524:                                 ; preds = %sw.bb.517
  %overflow_arg_area_p525 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay518, i32 0, i32 2
  %overflow_arg_area526 = load i8*, i8** %overflow_arg_area_p525
  %270 = bitcast i8* %overflow_arg_area526 to %struct._GimpParasite**
  %overflow_arg_area.next527 = getelementptr i8, i8* %overflow_arg_area526, i32 8
  store i8* %overflow_arg_area.next527, i8** %overflow_arg_area_p525
  br label %vaarg.end.528

vaarg.end.528:                                    ; preds = %vaarg.in_mem.524, %vaarg.in_reg.522
  %vaarg.addr529 = phi %struct._GimpParasite** [ %268, %vaarg.in_reg.522 ], [ %270, %vaarg.in_mem.524 ]
  %271 = load %struct._GimpParasite*, %struct._GimpParasite** %vaarg.addr529
  store %struct._GimpParasite* %271, %struct._GimpParasite** %parasite, align 8
  %272 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  %cmp530 = icmp eq %struct._GimpParasite* %272, null
  br i1 %cmp530, label %if.then.532, label %if.else.542

if.then.532:                                      ; preds = %vaarg.end.528
  %273 = load i32, i32* %i, align 4
  %idxprom533 = sext i32 %273 to i64
  %274 = load %struct._GimpParam*, %struct._GimpParam** %params, align 8
  %arrayidx534 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %274, i64 %idxprom533
  %data535 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx534, i32 0, i32 1
  %d_parasite = bitcast %union._GimpParamData* %data535 to %struct._GimpParasite*
  %name536 = getelementptr inbounds %struct._GimpParasite, %struct._GimpParasite* %d_parasite, i32 0, i32 0
  store i8* null, i8** %name536, align 8
  %275 = load i32, i32* %i, align 4
  %idxprom537 = sext i32 %275 to i64
  %276 = load %struct._GimpParam*, %struct._GimpParam** %params, align 8
  %arrayidx538 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %276, i64 %idxprom537
  %data539 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx538, i32 0, i32 1
  %d_parasite540 = bitcast %union._GimpParamData* %data539 to %struct._GimpParasite*
  %data541 = getelementptr inbounds %struct._GimpParasite, %struct._GimpParasite* %d_parasite540, i32 0, i32 3
  store i8* null, i8** %data541, align 8
  br label %if.end.565

if.else.542:                                      ; preds = %vaarg.end.528
  %277 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  %name543 = getelementptr inbounds %struct._GimpParasite, %struct._GimpParasite* %277, i32 0, i32 0
  %278 = load i8*, i8** %name543, align 8
  %279 = load i32, i32* %i, align 4
  %idxprom544 = sext i32 %279 to i64
  %280 = load %struct._GimpParam*, %struct._GimpParam** %params, align 8
  %arrayidx545 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %280, i64 %idxprom544
  %data546 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx545, i32 0, i32 1
  %d_parasite547 = bitcast %union._GimpParamData* %data546 to %struct._GimpParasite*
  %name548 = getelementptr inbounds %struct._GimpParasite, %struct._GimpParasite* %d_parasite547, i32 0, i32 0
  store i8* %278, i8** %name548, align 8
  %281 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  %flags = getelementptr inbounds %struct._GimpParasite, %struct._GimpParasite* %281, i32 0, i32 1
  %282 = load i32, i32* %flags, align 4
  %283 = load i32, i32* %i, align 4
  %idxprom549 = sext i32 %283 to i64
  %284 = load %struct._GimpParam*, %struct._GimpParam** %params, align 8
  %arrayidx550 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %284, i64 %idxprom549
  %data551 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx550, i32 0, i32 1
  %d_parasite552 = bitcast %union._GimpParamData* %data551 to %struct._GimpParasite*
  %flags553 = getelementptr inbounds %struct._GimpParasite, %struct._GimpParasite* %d_parasite552, i32 0, i32 1
  store i32 %282, i32* %flags553, align 4
  %285 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  %size = getelementptr inbounds %struct._GimpParasite, %struct._GimpParasite* %285, i32 0, i32 2
  %286 = load i32, i32* %size, align 4
  %287 = load i32, i32* %i, align 4
  %idxprom554 = sext i32 %287 to i64
  %288 = load %struct._GimpParam*, %struct._GimpParam** %params, align 8
  %arrayidx555 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %288, i64 %idxprom554
  %data556 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx555, i32 0, i32 1
  %d_parasite557 = bitcast %union._GimpParamData* %data556 to %struct._GimpParasite*
  %size558 = getelementptr inbounds %struct._GimpParasite, %struct._GimpParasite* %d_parasite557, i32 0, i32 2
  store i32 %286, i32* %size558, align 4
  %289 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  %data559 = getelementptr inbounds %struct._GimpParasite, %struct._GimpParasite* %289, i32 0, i32 3
  %290 = load i8*, i8** %data559, align 8
  %291 = load i32, i32* %i, align 4
  %idxprom560 = sext i32 %291 to i64
  %292 = load %struct._GimpParam*, %struct._GimpParam** %params, align 8
  %arrayidx561 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %292, i64 %idxprom560
  %data562 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx561, i32 0, i32 1
  %d_parasite563 = bitcast %union._GimpParamData* %data562 to %struct._GimpParasite*
  %data564 = getelementptr inbounds %struct._GimpParasite, %struct._GimpParasite* %d_parasite563, i32 0, i32 3
  store i8* %290, i8** %data564, align 8
  br label %if.end.565

if.end.565:                                       ; preds = %if.else.542, %if.then.532
  br label %sw.epilog.583

sw.bb.566:                                        ; preds = %vaarg.end.191
  %arraydecay567 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %gp_offset_p568 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay567, i32 0, i32 0
  %gp_offset569 = load i32, i32* %gp_offset_p568
  %fits_in_gp570 = icmp ule i32 %gp_offset569, 40
  br i1 %fits_in_gp570, label %vaarg.in_reg.571, label %vaarg.in_mem.573

vaarg.in_reg.571:                                 ; preds = %sw.bb.566
  %293 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay567, i32 0, i32 3
  %reg_save_area572 = load i8*, i8** %293
  %294 = getelementptr i8, i8* %reg_save_area572, i32 %gp_offset569
  %295 = bitcast i8* %294 to i32*
  %296 = add i32 %gp_offset569, 8
  store i32 %296, i32* %gp_offset_p568
  br label %vaarg.end.577

vaarg.in_mem.573:                                 ; preds = %sw.bb.566
  %overflow_arg_area_p574 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay567, i32 0, i32 2
  %overflow_arg_area575 = load i8*, i8** %overflow_arg_area_p574
  %297 = bitcast i8* %overflow_arg_area575 to i32*
  %overflow_arg_area.next576 = getelementptr i8, i8* %overflow_arg_area575, i32 8
  store i8* %overflow_arg_area.next576, i8** %overflow_arg_area_p574
  br label %vaarg.end.577

vaarg.end.577:                                    ; preds = %vaarg.in_mem.573, %vaarg.in_reg.571
  %vaarg.addr578 = phi i32* [ %295, %vaarg.in_reg.571 ], [ %297, %vaarg.in_mem.573 ]
  %298 = load i32, i32* %vaarg.addr578
  %299 = load i32, i32* %i, align 4
  %idxprom579 = sext i32 %299 to i64
  %300 = load %struct._GimpParam*, %struct._GimpParam** %params, align 8
  %arrayidx580 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %300, i64 %idxprom579
  %data581 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx580, i32 0, i32 1
  %d_status = bitcast %union._GimpParamData* %data581 to i32*
  store i32 %298, i32* %d_status, align 4
  br label %sw.epilog.583

sw.bb.582:                                        ; preds = %vaarg.end.191
  br label %sw.epilog.583

sw.epilog.583:                                    ; preds = %vaarg.end.191, %sw.bb.582, %vaarg.end.577, %if.end.565, %vaarg.end.512, %vaarg.end.496, %vaarg.end.480, %vaarg.end.464, %vaarg.end.448, %vaarg.end.432, %vaarg.end.416, %vaarg.end.400, %vaarg.end.384, %vaarg.end.371, %vaarg.end.352, %vaarg.end.336, %vaarg.end.320, %vaarg.end.304, %vaarg.end.288, %vaarg.end.272, %vaarg.end.256, %vaarg.end.239, %vaarg.end.222, %vaarg.end.207
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog.583
  %301 = load i32, i32* %i, align 4
  %inc584 = add nsw i32 %301, 1
  store i32 %inc584, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %arraydecay585 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay585586 = bitcast %struct.__va_list_tag* %arraydecay585 to i8*
  call void @llvm.va_end(i8* %arraydecay585586)
  %302 = load i8*, i8** %name.addr, align 8
  %303 = load i32*, i32** %n_return_vals.addr, align 8
  %304 = load i32, i32* %n_params, align 4
  %305 = load %struct._GimpParam*, %struct._GimpParam** %params, align 8
  %call587 = call %struct._GimpParam* @gimp_run_procedure2(i8* %302, i32* %303, i32 %304, %struct._GimpParam* %305)
  store %struct._GimpParam* %call587, %struct._GimpParam** %return_vals, align 8
  %306 = load %struct._GimpParam*, %struct._GimpParam** %params, align 8
  %307 = bitcast %struct._GimpParam* %306 to i8*
  call void @g_free(i8* %307)
  %308 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  store %struct._GimpParam* %308, %struct._GimpParam** %retval
  br label %return

return:                                           ; preds = %for.end, %if.else.4, %if.else
  %309 = load %struct._GimpParam*, %struct._GimpParam** %retval
  ret %struct._GimpParam* %309
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #2

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #2

declare noalias i8* @g_malloc0_n(i64, i64) #4

; Function Attrs: nounwind uwtable
define %struct._GimpParam* @gimp_run_procedure2(i8* %name, i32* %n_return_vals, i32 %n_params, %struct._GimpParam* %params) #0 {
entry:
  %retval = alloca %struct._GimpParam*, align 8
  %name.addr = alloca i8*, align 8
  %n_return_vals.addr = alloca i32*, align 8
  %n_params.addr = alloca i32, align 4
  %params.addr = alloca %struct._GimpParam*, align 8
  %proc_run = alloca %struct._GPProcRun, align 8
  %proc_return = alloca %struct._GPProcReturn*, align 8
  %msg = alloca %struct._GimpWireMessage, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  store i8* %name, i8** %name.addr, align 8
  store i32* %n_return_vals, i32** %n_return_vals.addr, align 8
  store i32 %n_params, i32* %n_params.addr, align 4
  store %struct._GimpParam* %params, %struct._GimpParam** %params.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i8*, i8** %name.addr, align 8
  %cmp = icmp ne i8* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_run_procedure2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i32 0, i32 0))
  store %struct._GimpParam* null, %struct._GimpParam** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load i32*, i32** %n_return_vals.addr, align 8
  %cmp2 = icmp ne i32* %1, null
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %do.body.1
  br label %if.end.5

if.else.4:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_run_procedure2, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.20, i32 0, i32 0))
  store %struct._GimpParam* null, %struct._GimpParam** %retval
  br label %return

if.end.5:                                         ; preds = %if.then.3
  br label %do.end.6

do.end.6:                                         ; preds = %if.end.5
  %2 = load i8*, i8** %name.addr, align 8
  %name7 = getelementptr inbounds %struct._GPProcRun, %struct._GPProcRun* %proc_run, i32 0, i32 0
  store i8* %2, i8** %name7, align 8
  %3 = load i32, i32* %n_params.addr, align 4
  %nparams = getelementptr inbounds %struct._GPProcRun, %struct._GPProcRun* %proc_run, i32 0, i32 1
  store i32 %3, i32* %nparams, align 4
  %4 = load %struct._GimpParam*, %struct._GimpParam** %params.addr, align 8
  %5 = bitcast %struct._GimpParam* %4 to %struct._GPParam*
  %params8 = getelementptr inbounds %struct._GPProcRun, %struct._GPProcRun* %proc_run, i32 0, i32 2
  store %struct._GPParam* %5, %struct._GPParam** %params8, align 8
  %6 = load %struct._GIOChannel*, %struct._GIOChannel** @_writechannel, align 8
  %call = call i32 @gp_proc_run_write(%struct._GIOChannel* %6, %struct._GPProcRun* %proc_run, i8* null)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.10, label %if.then.9

if.then.9:                                        ; preds = %do.end.6
  call void @gimp_quit() #10
  unreachable

if.end.10:                                        ; preds = %do.end.6
  call void @gimp_read_expect_msg(%struct._GimpWireMessage* %msg, i32 6)
  %data = getelementptr inbounds %struct._GimpWireMessage, %struct._GimpWireMessage* %msg, i32 0, i32 1
  %7 = load i8*, i8** %data, align 8
  %8 = bitcast i8* %7 to %struct._GPProcReturn*
  store %struct._GPProcReturn* %8, %struct._GPProcReturn** %proc_return, align 8
  %9 = load %struct._GPProcReturn*, %struct._GPProcReturn** %proc_return, align 8
  %nparams11 = getelementptr inbounds %struct._GPProcReturn, %struct._GPProcReturn* %9, i32 0, i32 1
  %10 = load i32, i32* %nparams11, align 4
  %11 = load i32*, i32** %n_return_vals.addr, align 8
  store i32 %10, i32* %11, align 4
  %12 = load %struct._GPProcReturn*, %struct._GPProcReturn** %proc_return, align 8
  %params12 = getelementptr inbounds %struct._GPProcReturn, %struct._GPProcReturn* %12, i32 0, i32 2
  %13 = load %struct._GPParam*, %struct._GPParam** %params12, align 8
  %14 = bitcast %struct._GPParam* %13 to %struct._GimpParam*
  store %struct._GimpParam* %14, %struct._GimpParam** %return_vals, align 8
  %15 = load %struct._GPProcReturn*, %struct._GPProcReturn** %proc_return, align 8
  %nparams13 = getelementptr inbounds %struct._GPProcReturn, %struct._GPProcReturn* %15, i32 0, i32 1
  store i32 0, i32* %nparams13, align 4
  %16 = load %struct._GPProcReturn*, %struct._GPProcReturn** %proc_return, align 8
  %params14 = getelementptr inbounds %struct._GPProcReturn, %struct._GPProcReturn* %16, i32 0, i32 2
  store %struct._GPParam* null, %struct._GPParam** %params14, align 8
  call void @gimp_wire_destroy(%struct._GimpWireMessage* %msg)
  %17 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %18 = load i32*, i32** %n_return_vals.addr, align 8
  %19 = load i32, i32* %18, align 4
  call void @gimp_set_pdb_error(%struct._GimpParam* %17, i32 %19)
  %20 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  store %struct._GimpParam* %20, %struct._GimpParam** %retval
  br label %return

return:                                           ; preds = %if.end.10, %if.else.4, %if.else
  %21 = load %struct._GimpParam*, %struct._GimpParam** %retval
  ret %struct._GimpParam* %21
}

; Function Attrs: nounwind uwtable
define void @gimp_read_expect_msg(%struct._GimpWireMessage* %msg, i32 %type) #0 {
entry:
  %msg.addr = alloca %struct._GimpWireMessage*, align 8
  %type.addr = alloca i32, align 4
  store %struct._GimpWireMessage* %msg, %struct._GimpWireMessage** %msg.addr, align 8
  store i32 %type, i32* %type.addr, align 4
  br label %while.body

while.body:                                       ; preds = %entry, %if.end.10
  %0 = load %struct._GIOChannel*, %struct._GIOChannel** @_readchannel, align 8
  %1 = load %struct._GimpWireMessage*, %struct._GimpWireMessage** %msg.addr, align 8
  %call = call i32 @gimp_wire_read_msg(%struct._GIOChannel* %0, %struct._GimpWireMessage* %1, i8* null)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %while.body
  call void @gimp_quit() #10
  unreachable

if.end:                                           ; preds = %while.body
  %2 = load %struct._GimpWireMessage*, %struct._GimpWireMessage** %msg.addr, align 8
  %type1 = getelementptr inbounds %struct._GimpWireMessage, %struct._GimpWireMessage* %2, i32 0, i32 0
  %3 = load i32, i32* %type1, align 4
  %4 = load i32, i32* %type.addr, align 4
  %cmp = icmp eq i32 %3, %4
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  ret void

if.end.3:                                         ; preds = %if.end
  %5 = load %struct._GimpWireMessage*, %struct._GimpWireMessage** %msg.addr, align 8
  %type4 = getelementptr inbounds %struct._GimpWireMessage, %struct._GimpWireMessage* %5, i32 0, i32 0
  %6 = load i32, i32* %type4, align 4
  %cmp5 = icmp eq i32 %6, 7
  br i1 %cmp5, label %if.then.8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.3
  %7 = load %struct._GimpWireMessage*, %struct._GimpWireMessage** %msg.addr, align 8
  %type6 = getelementptr inbounds %struct._GimpWireMessage, %struct._GimpWireMessage* %7, i32 0, i32 0
  %8 = load i32, i32* %type6, align 4
  %cmp7 = icmp eq i32 %8, 0
  br i1 %cmp7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %lor.lhs.false, %if.end.3
  %9 = load %struct._GimpWireMessage*, %struct._GimpWireMessage** %msg.addr, align 8
  call void @gimp_process_message(%struct._GimpWireMessage* %9)
  br label %if.end.10

if.else:                                          ; preds = %lor.lhs.false
  %10 = load %struct._GimpWireMessage*, %struct._GimpWireMessage** %msg.addr, align 8
  %type9 = getelementptr inbounds %struct._GimpWireMessage, %struct._GimpWireMessage* %10, i32 0, i32 0
  %11 = load i32, i32* %type9, align 4
  call void (i8*, ...) @g_error(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.21, i32 0, i32 0), i32 %11)
  br label %if.end.10

if.end.10:                                        ; preds = %if.else, %if.then.8
  %12 = load %struct._GimpWireMessage*, %struct._GimpWireMessage** %msg.addr, align 8
  call void @gimp_wire_destroy(%struct._GimpWireMessage* %12)
  br label %while.body
}

declare i32 @gimp_wire_read_msg(%struct._GIOChannel*, %struct._GimpWireMessage*, i8*) #4

; Function Attrs: nounwind uwtable
define internal void @gimp_process_message(%struct._GimpWireMessage* %msg) #0 {
entry:
  %msg.addr = alloca %struct._GimpWireMessage*, align 8
  store %struct._GimpWireMessage* %msg, %struct._GimpWireMessage** %msg.addr, align 8
  %0 = load %struct._GimpWireMessage*, %struct._GimpWireMessage** %msg.addr, align 8
  %type = getelementptr inbounds %struct._GimpWireMessage, %struct._GimpWireMessage* %0, i32 0, i32 0
  %1 = load i32, i32* %type, align 4
  switch i32 %1, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.1
    i32 2, label %sw.bb.2
    i32 3, label %sw.bb.2
    i32 4, label %sw.bb.2
    i32 5, label %sw.bb.3
    i32 6, label %sw.bb.4
    i32 7, label %sw.bb.5
    i32 8, label %sw.bb.7
    i32 9, label %sw.bb.8
    i32 12, label %sw.bb.9
  ]

sw.bb:                                            ; preds = %entry
  call void @gimp_quit() #10
  unreachable

sw.bb.1:                                          ; preds = %entry
  %2 = load %struct._GimpWireMessage*, %struct._GimpWireMessage** %msg.addr, align 8
  %data = getelementptr inbounds %struct._GimpWireMessage, %struct._GimpWireMessage* %2, i32 0, i32 1
  %3 = load i8*, i8** %data, align 8
  %4 = bitcast i8* %3 to %struct._GPConfig*
  call void @gimp_config(%struct._GPConfig* %4)
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry, %entry, %entry
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.42, i32 0, i32 0))
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.51, i32 0, i32 0))
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.43, i32 0, i32 0))
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %5 = load %struct._GimpWireMessage*, %struct._GimpWireMessage** %msg.addr, align 8
  %data6 = getelementptr inbounds %struct._GimpWireMessage, %struct._GimpWireMessage* %5, i32 0, i32 1
  %6 = load i8*, i8** %data6, align 8
  %7 = bitcast i8* %6 to %struct._GPProcRun*
  call void @gimp_temp_proc_run(%struct._GPProcRun* %7)
  br label %sw.epilog

sw.bb.7:                                          ; preds = %entry
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.52, i32 0, i32 0))
  br label %sw.epilog

sw.bb.8:                                          ; preds = %entry
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.46, i32 0, i32 0))
  br label %sw.epilog

sw.bb.9:                                          ; preds = %entry
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.47, i32 0, i32 0))
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb.9, %sw.bb.8, %sw.bb.7, %sw.bb.5, %sw.bb.4, %sw.bb.3, %sw.bb.2, %sw.bb.1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @g_error(i8* %format, ...) #0 {
entry:
  %format.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %format, i8** %format.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i8*, i8** %format.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  call void @g_logv(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 4, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  br label %for.cond

for.cond:                                         ; preds = %for.cond, %entry
  br label %for.cond

return:                                           ; No predecessors!
  ret void
}

declare void @gimp_wire_destroy(%struct._GimpWireMessage*) #4

declare i32 @gp_proc_run_write(%struct._GIOChannel*, %struct._GPProcRun*, i8*) #4

; Function Attrs: nounwind uwtable
define internal void @gimp_set_pdb_error(%struct._GimpParam* %return_vals, i32 %n_return_vals) #0 {
entry:
  %return_vals.addr = alloca %struct._GimpParam*, align 8
  %n_return_vals.addr = alloca i32, align 4
  store %struct._GimpParam* %return_vals, %struct._GimpParam** %return_vals.addr, align 8
  store i32 %n_return_vals, i32* %n_return_vals.addr, align 4
  %0 = load i8*, i8** @pdb_error_message, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** @pdb_error_message, align 8
  call void @g_free(i8* %1)
  store i8* null, i8** @pdb_error_message, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct._GimpParam*, %struct._GimpParam** %return_vals.addr, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %2, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_status = bitcast %union._GimpParamData* %data to i32*
  %3 = load i32, i32* %d_status, align 4
  store i32 %3, i32* @pdb_error_status, align 4
  %4 = load i32, i32* @pdb_error_status, align 4
  switch i32 %4, label %sw.epilog [
    i32 3, label %sw.bb
    i32 2, label %sw.bb
    i32 0, label %sw.bb.1
    i32 1, label %sw.bb.1
    i32 4, label %sw.bb.1
  ]

sw.bb:                                            ; preds = %if.end, %if.end
  br label %sw.epilog

sw.bb.1:                                          ; preds = %if.end, %if.end, %if.end
  %5 = load i32, i32* %n_return_vals.addr, align 4
  %cmp = icmp sgt i32 %5, 1
  br i1 %cmp, label %land.lhs.true, label %if.end.7

land.lhs.true:                                    ; preds = %sw.bb.1
  %6 = load %struct._GimpParam*, %struct._GimpParam** %return_vals.addr, align 8
  %arrayidx2 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %6, i64 1
  %type = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx2, i32 0, i32 0
  %7 = load i32, i32* %type, align 4
  %cmp3 = icmp eq i32 %7, 4
  br i1 %cmp3, label %if.then.4, label %if.end.7

if.then.4:                                        ; preds = %land.lhs.true
  %8 = load %struct._GimpParam*, %struct._GimpParam** %return_vals.addr, align 8
  %arrayidx5 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %8, i64 1
  %data6 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx5, i32 0, i32 1
  %d_string = bitcast %union._GimpParamData* %data6 to i8**
  %9 = load i8*, i8** %d_string, align 8
  %call = call noalias i8* @g_strdup(i8* %9)
  store i8* %call, i8** @pdb_error_message, align 8
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.4, %land.lhs.true, %sw.bb.1
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %if.end.7, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_destroy_params(%struct._GimpParam* %params, i32 %n_params) #0 {
entry:
  %params.addr = alloca %struct._GimpParam*, align 8
  %n_params.addr = alloca i32, align 4
  store %struct._GimpParam* %params, %struct._GimpParam** %params.addr, align 8
  store i32 %n_params, i32* %n_params.addr, align 4
  %0 = load %struct._GimpParam*, %struct._GimpParam** %params.addr, align 8
  %1 = bitcast %struct._GimpParam* %0 to %struct._GPParam*
  %2 = load i32, i32* %n_params.addr, align 4
  call void @gp_params_destroy(%struct._GPParam* %1, i32 %2)
  ret void
}

declare void @gp_params_destroy(%struct._GPParam*, i32) #4

; Function Attrs: nounwind uwtable
define void @gimp_destroy_paramdefs(%struct._GimpParamDef* %paramdefs, i32 %n_params) #0 {
entry:
  %paramdefs.addr = alloca %struct._GimpParamDef*, align 8
  %n_params.addr = alloca i32, align 4
  store %struct._GimpParamDef* %paramdefs, %struct._GimpParamDef** %paramdefs.addr, align 8
  store i32 %n_params, i32* %n_params.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, i32* %n_params.addr, align 4
  %dec = add nsw i32 %0, -1
  store i32 %dec, i32* %n_params.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i32, i32* %n_params.addr, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load %struct._GimpParamDef*, %struct._GimpParamDef** %paramdefs.addr, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParamDef, %struct._GimpParamDef* %2, i64 %idxprom
  %name = getelementptr inbounds %struct._GimpParamDef, %struct._GimpParamDef* %arrayidx, i32 0, i32 1
  %3 = load i8*, i8** %name, align 8
  call void @g_free(i8* %3)
  %4 = load i32, i32* %n_params.addr, align 4
  %idxprom1 = sext i32 %4 to i64
  %5 = load %struct._GimpParamDef*, %struct._GimpParamDef** %paramdefs.addr, align 8
  %arrayidx2 = getelementptr inbounds %struct._GimpParamDef, %struct._GimpParamDef* %5, i64 %idxprom1
  %description = getelementptr inbounds %struct._GimpParamDef, %struct._GimpParamDef* %arrayidx2, i32 0, i32 2
  %6 = load i8*, i8** %description, align 8
  call void @g_free(i8* %6)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %7 = load %struct._GimpParamDef*, %struct._GimpParamDef** %paramdefs.addr, align 8
  %8 = bitcast %struct._GimpParamDef* %7 to i8*
  call void @g_free(i8* %8)
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @gimp_get_pdb_error() #0 {
entry:
  %retval = alloca i8*, align 8
  %0 = load i8*, i8** @pdb_error_message, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i8*, i8** @pdb_error_message, align 8
  %call = call i64 @strlen(i8* %1) #11
  %tobool1 = icmp ne i64 %call, 0
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %2 = load i8*, i8** @pdb_error_message, align 8
  store i8* %2, i8** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %3 = load i32, i32* @pdb_error_status, align 4
  switch i32 %3, label %sw.default [
    i32 3, label %sw.bb
    i32 0, label %sw.bb.3
    i32 1, label %sw.bb.5
    i32 4, label %sw.bb.7
  ]

sw.bb:                                            ; preds = %if.end
  %call2 = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i32 0, i32 0)) #2
  store i8* %call2, i8** %retval
  br label %return

sw.bb.3:                                          ; preds = %if.end
  %call4 = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.23, i32 0, i32 0)) #2
  store i8* %call4, i8** %retval
  br label %return

sw.bb.5:                                          ; preds = %if.end
  %call6 = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i32 0, i32 0)) #2
  store i8* %call6, i8** %retval
  br label %return

sw.bb.7:                                          ; preds = %if.end
  %call8 = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i32 0, i32 0)) #2
  store i8* %call8, i8** %retval
  br label %return

sw.default:                                       ; preds = %if.end
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.26, i32 0, i32 0), i8** %retval
  br label %return

return:                                           ; preds = %sw.default, %sw.bb.7, %sw.bb.5, %sw.bb.3, %sw.bb, %if.then
  %4 = load i8*, i8** %retval
  ret i8* %4
}

; Function Attrs: nounwind
declare i8* @dgettext(i8*, i8*) #6

; Function Attrs: nounwind readnone uwtable
define i32 @gimp_tile_width() #9 {
entry:
  %0 = load i32, i32* @_tile_width, align 4
  ret i32 %0
}

; Function Attrs: nounwind readnone uwtable
define i32 @gimp_tile_height() #9 {
entry:
  %0 = load i32, i32* @_tile_height, align 4
  ret i32 %0
}

; Function Attrs: nounwind readnone uwtable
define i32 @gimp_shm_ID() #9 {
entry:
  %0 = load i32, i32* @_shm_ID, align 4
  ret i32 %0
}

; Function Attrs: nounwind readnone uwtable
define i8* @gimp_shm_addr() #9 {
entry:
  %0 = load i8*, i8** @_shm_addr, align 8
  ret i8* %0
}

; Function Attrs: nounwind readnone uwtable
define double @gimp_gamma() #9 {
entry:
  ret double 2.200000e+00
}

; Function Attrs: nounwind readnone uwtable
define i32 @gimp_install_cmap() #9 {
entry:
  %0 = load i32, i32* @_install_cmap, align 4
  ret i32 %0
}

; Function Attrs: nounwind readnone uwtable
define i32 @gimp_min_colors() #9 {
entry:
  %0 = load i32, i32* @_min_colors, align 4
  ret i32 %0
}

; Function Attrs: nounwind readnone uwtable
define i32 @gimp_show_tool_tips() #9 {
entry:
  %0 = load i32, i32* @_show_tool_tips, align 4
  ret i32 %0
}

; Function Attrs: nounwind readnone uwtable
define i32 @gimp_show_help_button() #9 {
entry:
  %0 = load i32, i32* @_show_help_button, align 4
  ret i32 %0
}

; Function Attrs: nounwind readnone uwtable
define i32 @gimp_check_size() #9 {
entry:
  %0 = load i32, i32* @_check_size, align 4
  ret i32 %0
}

; Function Attrs: nounwind readnone uwtable
define i32 @gimp_check_type() #9 {
entry:
  %0 = load i32, i32* @_check_type, align 4
  ret i32 %0
}

; Function Attrs: nounwind readnone uwtable
define i32 @gimp_default_display() #9 {
entry:
  %0 = load i32, i32* @_gdisp_ID, align 4
  ret i32 %0
}

; Function Attrs: nounwind readnone uwtable
define i8* @gimp_wm_class() #9 {
entry:
  %0 = load i8*, i8** @_wm_class, align 8
  ret i8* %0
}

; Function Attrs: nounwind readnone uwtable
define i8* @gimp_display_name() #9 {
entry:
  %0 = load i8*, i8** @_display_name, align 8
  ret i8* %0
}

; Function Attrs: nounwind readnone uwtable
define i32 @gimp_monitor_number() #9 {
entry:
  %0 = load i32, i32* @_monitor_number, align 4
  ret i32 %0
}

; Function Attrs: nounwind readnone uwtable
define i32 @gimp_user_time() #9 {
entry:
  %0 = load i32, i32* @_timestamp, align 4
  ret i32 %0
}

; Function Attrs: nounwind readnone uwtable
define i8* @gimp_get_progname() #9 {
entry:
  %0 = load i8*, i8** @progname, align 8
  ret i8* %0
}

; Function Attrs: nounwind uwtable
define void @gimp_extension_ack() #0 {
entry:
  %0 = load %struct._GIOChannel*, %struct._GIOChannel** @_writechannel, align 8
  %call = call i32 @gp_extension_ack_write(%struct._GIOChannel* %0, i8* null)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @gimp_quit() #10
  unreachable

if.end:                                           ; preds = %entry
  ret void
}

declare i32 @gp_extension_ack_write(%struct._GIOChannel*, i8*) #4

; Function Attrs: nounwind uwtable
define void @gimp_extension_enable() #0 {
entry:
  %0 = load i32, i32* @gimp_extension_enable.callback_added, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct._GIOChannel*, %struct._GIOChannel** @_readchannel, align 8
  %call = call i32 @g_io_add_watch(%struct._GIOChannel* %1, i32 3, i32 (%struct._GIOChannel*, i32, i8*)* @gimp_extension_read, i8* null)
  store i32 1, i32* @gimp_extension_enable.callback_added, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_extension_read(%struct._GIOChannel* %channel, i32 %condition, i8* %data) #0 {
entry:
  %channel.addr = alloca %struct._GIOChannel*, align 8
  %condition.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  store %struct._GIOChannel* %channel, %struct._GIOChannel** %channel.addr, align 8
  store i32 %condition, i32* %condition.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @gimp_single_message()
  ret i32 1
}

; Function Attrs: nounwind uwtable
define void @gimp_extension_process(i32 %timeout) #0 {
entry:
  %timeout.addr = alloca i32, align 4
  %select_val = alloca i32, align 4
  %readfds = alloca %struct.fd_set, align 8
  %tv = alloca %struct.timeval, align 8
  %tvp = alloca %struct.timeval*, align 8
  %__d0 = alloca i32, align 4
  %__d1 = alloca i32, align 4
  store i32 %timeout, i32* %timeout.addr, align 4
  br label %do.body

do.body:                                          ; preds = %land.end, %entry
  %0 = load i32, i32* %timeout.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  %1 = load i32, i32* %timeout.addr, align 4
  %div = udiv i32 %1, 1000
  %conv = zext i32 %div to i64
  %tv_sec = getelementptr inbounds %struct.timeval, %struct.timeval* %tv, i32 0, i32 0
  store i64 %conv, i64* %tv_sec, align 8
  %2 = load i32, i32* %timeout.addr, align 4
  %rem = urem i32 %2, 1000
  %mul = mul i32 %rem, 1000
  %conv1 = zext i32 %mul to i64
  %tv_usec = getelementptr inbounds %struct.timeval, %struct.timeval* %tv, i32 0, i32 1
  store i64 %conv1, i64* %tv_usec, align 8
  store %struct.timeval* %tv, %struct.timeval** %tvp, align 8
  br label %if.end

if.else:                                          ; preds = %do.body
  store %struct.timeval* null, %struct.timeval** %tvp, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %do.body.2

do.body.2:                                        ; preds = %if.end
  %fds_bits = getelementptr inbounds %struct.fd_set, %struct.fd_set* %readfds, i32 0, i32 0
  %arrayidx = getelementptr inbounds [16 x i64], [16 x i64]* %fds_bits, i32 0, i64 0
  %3 = call { i64, i64* } asm sideeffect "cld; rep; stosq", "={cx},={di},{ax},0,1,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 0, i64 16, i64* %arrayidx) #2, !srcloc !2
  %asmresult = extractvalue { i64, i64* } %3, 0
  %asmresult3 = extractvalue { i64, i64* } %3, 1
  %4 = trunc i64 %asmresult to i32
  store i32 %4, i32* %__d0, align 4
  %5 = ptrtoint i64* %asmresult3 to i64
  %6 = trunc i64 %5 to i32
  store i32 %6, i32* %__d1, align 4
  br label %do.end

do.end:                                           ; preds = %do.body.2
  %7 = load %struct._GIOChannel*, %struct._GIOChannel** @_readchannel, align 8
  %call = call i32 @g_io_channel_unix_get_fd(%struct._GIOChannel* %7)
  %rem4 = srem i32 %call, 64
  %sh_prom = zext i32 %rem4 to i64
  %shl = shl i64 1, %sh_prom
  %8 = load %struct._GIOChannel*, %struct._GIOChannel** @_readchannel, align 8
  %call5 = call i32 @g_io_channel_unix_get_fd(%struct._GIOChannel* %8)
  %div6 = sdiv i32 %call5, 64
  %idxprom = sext i32 %div6 to i64
  %fds_bits7 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %readfds, i32 0, i32 0
  %arrayidx8 = getelementptr inbounds [16 x i64], [16 x i64]* %fds_bits7, i32 0, i64 %idxprom
  %9 = load i64, i64* %arrayidx8, align 8
  %or = or i64 %9, %shl
  store i64 %or, i64* %arrayidx8, align 8
  %10 = load %struct.timeval*, %struct.timeval** %tvp, align 8
  %call9 = call i32 @select(i32 1024, %struct.fd_set* %readfds, %struct.fd_set* null, %struct.fd_set* null, %struct.timeval* %10)
  store i32 %call9, i32* %select_val, align 4
  %cmp = icmp sgt i32 %call9, 0
  br i1 %cmp, label %if.then.11, label %if.else.12

if.then.11:                                       ; preds = %do.end
  call void @gimp_single_message()
  br label %if.end.20

if.else.12:                                       ; preds = %do.end
  %11 = load i32, i32* %select_val, align 4
  %cmp13 = icmp eq i32 %11, -1
  br i1 %cmp13, label %land.lhs.true, label %if.end.19

land.lhs.true:                                    ; preds = %if.else.12
  %call15 = call i32* @__errno_location() #12
  %12 = load i32, i32* %call15, align 4
  %cmp16 = icmp ne i32 %12, 4
  br i1 %cmp16, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %land.lhs.true
  call void @perror(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.27, i32 0, i32 0))
  call void @gimp_quit() #10
  unreachable

if.end.19:                                        ; preds = %land.lhs.true, %if.else.12
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.19, %if.then.11
  br label %do.cond

do.cond:                                          ; preds = %if.end.20
  %13 = load i32, i32* %select_val, align 4
  %cmp21 = icmp eq i32 %13, -1
  br i1 %cmp21, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond
  %call23 = call i32* @__errno_location() #12
  %14 = load i32, i32* %call23, align 4
  %cmp24 = icmp eq i32 %14, 4
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %15 = phi i1 [ false, %do.cond ], [ %cmp24, %land.rhs ]
  br i1 %15, label %do.body, label %do.end.26

do.end.26:                                        ; preds = %land.end
  ret void
}

declare i32 @g_io_channel_unix_get_fd(%struct._GIOChannel*) #4

declare i32 @select(i32, %struct.fd_set*, %struct.fd_set*, %struct.fd_set*, %struct.timeval*) #4

; Function Attrs: nounwind uwtable
define internal void @gimp_single_message() #0 {
entry:
  %msg = alloca %struct._GimpWireMessage, align 8
  %0 = load %struct._GIOChannel*, %struct._GIOChannel** @_readchannel, align 8
  %call = call i32 @gimp_wire_read_msg(%struct._GIOChannel* %0, %struct._GimpWireMessage* %msg, i8* null)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @gimp_quit() #10
  unreachable

if.end:                                           ; preds = %entry
  call void @gimp_process_message(%struct._GimpWireMessage* %msg)
  call void @gimp_wire_destroy(%struct._GimpWireMessage* %msg)
  ret void
}

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #5

declare void @perror(i8*) #4

; Function Attrs: nounwind uwtable
define %struct._GimpParasite* @gimp_parasite_find(i8* %name) #0 {
entry:
  %name.addr = alloca i8*, align 8
  store i8* %name, i8** %name.addr, align 8
  %0 = load i8*, i8** %name.addr, align 8
  %call = call %struct._GimpParasite* @gimp_get_parasite(i8* %0)
  ret %struct._GimpParasite* %call
}

declare %struct._GimpParasite* @gimp_get_parasite(i8*) #4

; Function Attrs: nounwind uwtable
define i32 @gimp_parasite_attach(%struct._GimpParasite* %parasite) #0 {
entry:
  %parasite.addr = alloca %struct._GimpParasite*, align 8
  store %struct._GimpParasite* %parasite, %struct._GimpParasite** %parasite.addr, align 8
  %0 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite.addr, align 8
  %call = call i32 @gimp_attach_parasite(%struct._GimpParasite* %0)
  ret i32 %call
}

declare i32 @gimp_attach_parasite(%struct._GimpParasite*) #4

; Function Attrs: nounwind uwtable
define i32 @gimp_parasite_detach(i8* %name) #0 {
entry:
  %name.addr = alloca i8*, align 8
  store i8* %name, i8** %name.addr, align 8
  %0 = load i8*, i8** %name.addr, align 8
  %call = call i32 @gimp_detach_parasite(i8* %0)
  ret i32 %call
}

declare i32 @gimp_detach_parasite(i8*) #4

; Function Attrs: nounwind uwtable
define i32 @gimp_parasite_list(i32* %num_parasites, i8*** %parasites) #0 {
entry:
  %num_parasites.addr = alloca i32*, align 8
  %parasites.addr = alloca i8***, align 8
  store i32* %num_parasites, i32** %num_parasites.addr, align 8
  store i8*** %parasites, i8**** %parasites.addr, align 8
  %0 = load i32*, i32** %num_parasites.addr, align 8
  %call = call i8** @gimp_get_parasite_list(i32* %0)
  %1 = load i8***, i8**** %parasites.addr, align 8
  store i8** %call, i8*** %1, align 8
  %2 = load i8***, i8**** %parasites.addr, align 8
  %3 = load i8**, i8*** %2, align 8
  %cmp = icmp ne i8** %3, null
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

declare i8** @gimp_get_parasite_list(i32*) #4

; Function Attrs: nounwind uwtable
define i32 @gimp_attach_new_parasite(i8* %name, i32 %flags, i32 %size, i8* %data) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %flags.addr = alloca i32, align 4
  %size.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %parasite = alloca %struct._GimpParasite*, align 8
  %success = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  store i32 %size, i32* %size.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %name.addr, align 8
  %1 = load i32, i32* %flags.addr, align 4
  %2 = load i32, i32* %size.addr, align 4
  %3 = load i8*, i8** %data.addr, align 8
  %call = call %struct._GimpParasite* @gimp_parasite_new(i8* %0, i32 %1, i32 %2, i8* %3)
  store %struct._GimpParasite* %call, %struct._GimpParasite** %parasite, align 8
  %4 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  %call1 = call i32 @gimp_attach_parasite(%struct._GimpParasite* %4)
  store i32 %call1, i32* %success, align 4
  %5 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  call void @gimp_parasite_free(%struct._GimpParasite* %5)
  %6 = load i32, i32* %success, align 4
  ret i32 %6
}

declare %struct._GimpParasite* @gimp_parasite_new(i8*, i32, i32, i8*) #4

declare void @gimp_parasite_free(%struct._GimpParasite*) #4

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #4

; Function Attrs: nounwind
declare i32 @shmdt(i8*) #6

declare i32 @gp_quit_write(%struct._GIOChannel*, i8*) #4

; Function Attrs: nounwind
declare i32 @raise(i32) #6

declare i32 @gimp_message(i8*) #4

; Function Attrs: nounwind readnone
declare i8* @g_strsignal(i32) #5

; Function Attrs: nounwind
declare i32 @sigemptyset(%struct.__sigset_t*) #6

; Function Attrs: nounwind
declare i32 @sigprocmask(i32, %struct.__sigset_t*, %struct.__sigset_t*) #6

declare void @g_on_error_query(i8*) #4

declare void @g_on_error_stack_trace(i8*) #4

declare i32 @gimp_wire_flush(%struct._GIOChannel*, i8*) #4

declare i32 @g_io_channel_write_chars(%struct._GIOChannel*, i8*, i64, i64*, %struct._GError**) #4

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

declare i8* @g_get_prgname() #4

declare void @g_error_free(%struct._GError*) #4

; Function Attrs: nounwind uwtable
define internal void @gimp_config(%struct._GPConfig* %config) #0 {
entry:
  %config.addr = alloca %struct._GPConfig*, align 8
  store %struct._GPConfig* %config, %struct._GPConfig** %config.addr, align 8
  %0 = load %struct._GPConfig*, %struct._GPConfig** %config.addr, align 8
  %version = getelementptr inbounds %struct._GPConfig, %struct._GPConfig* %0, i32 0, i32 0
  %1 = load i32, i32* %version, align 4
  %cmp = icmp ult i32 %1, 20
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = call i8* @g_get_prgname()
  %call1 = call i8* @gimp_filename_to_utf8(i8* %call)
  %2 = load i8*, i8** @progname, align 8
  %call2 = call i8* @gimp_filename_to_utf8(i8* %2)
  call void (i8*, ...) @g_message(i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str.48, i32 0, i32 0), i8* %call1, i8* %call2)
  call void @gimp_quit() #10
  unreachable

if.else:                                          ; preds = %entry
  %3 = load %struct._GPConfig*, %struct._GPConfig** %config.addr, align 8
  %version3 = getelementptr inbounds %struct._GPConfig, %struct._GPConfig* %3, i32 0, i32 0
  %4 = load i32, i32* %version3, align 4
  %cmp4 = icmp ugt i32 %4, 20
  br i1 %cmp4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.else
  %call6 = call i8* @g_get_prgname()
  %call7 = call i8* @gimp_filename_to_utf8(i8* %call6)
  %5 = load i8*, i8** @progname, align 8
  %call8 = call i8* @gimp_filename_to_utf8(i8* %5)
  call void (i8*, ...) @g_message(i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.49, i32 0, i32 0), i8* %call7, i8* %call8)
  call void @gimp_quit() #10
  unreachable

if.end:                                           ; preds = %if.else
  br label %if.end.9

if.end.9:                                         ; preds = %if.end
  %6 = load %struct._GPConfig*, %struct._GPConfig** %config.addr, align 8
  %tile_width = getelementptr inbounds %struct._GPConfig, %struct._GPConfig* %6, i32 0, i32 1
  %7 = load i32, i32* %tile_width, align 4
  store i32 %7, i32* @_tile_width, align 4
  %8 = load %struct._GPConfig*, %struct._GPConfig** %config.addr, align 8
  %tile_height = getelementptr inbounds %struct._GPConfig, %struct._GPConfig* %8, i32 0, i32 2
  %9 = load i32, i32* %tile_height, align 4
  store i32 %9, i32* @_tile_height, align 4
  %10 = load %struct._GPConfig*, %struct._GPConfig** %config.addr, align 8
  %shm_ID = getelementptr inbounds %struct._GPConfig, %struct._GPConfig* %10, i32 0, i32 3
  %11 = load i32, i32* %shm_ID, align 4
  store i32 %11, i32* @_shm_ID, align 4
  %12 = load %struct._GPConfig*, %struct._GPConfig** %config.addr, align 8
  %check_size = getelementptr inbounds %struct._GPConfig, %struct._GPConfig* %12, i32 0, i32 4
  %13 = load i8, i8* %check_size, align 1
  %conv = sext i8 %13 to i32
  store i32 %conv, i32* @_check_size, align 4
  %14 = load %struct._GPConfig*, %struct._GPConfig** %config.addr, align 8
  %check_type = getelementptr inbounds %struct._GPConfig, %struct._GPConfig* %14, i32 0, i32 5
  %15 = load i8, i8* %check_type, align 1
  %conv10 = sext i8 %15 to i32
  store i32 %conv10, i32* @_check_type, align 4
  %16 = load %struct._GPConfig*, %struct._GPConfig** %config.addr, align 8
  %install_cmap = getelementptr inbounds %struct._GPConfig, %struct._GPConfig* %16, i32 0, i32 12
  %17 = load i8, i8* %install_cmap, align 1
  %conv11 = sext i8 %17 to i32
  %tobool = icmp ne i32 %conv11, 0
  %cond = select i1 %tobool, i32 1, i32 0
  store i32 %cond, i32* @_install_cmap, align 4
  %18 = load %struct._GPConfig*, %struct._GPConfig** %config.addr, align 8
  %show_tooltips = getelementptr inbounds %struct._GPConfig, %struct._GPConfig* %18, i32 0, i32 13
  %19 = load i8, i8* %show_tooltips, align 1
  %conv12 = sext i8 %19 to i32
  %tobool13 = icmp ne i32 %conv12, 0
  %cond14 = select i1 %tobool13, i32 1, i32 0
  store i32 %cond14, i32* @_show_tool_tips, align 4
  %20 = load %struct._GPConfig*, %struct._GPConfig** %config.addr, align 8
  %show_help_button = getelementptr inbounds %struct._GPConfig, %struct._GPConfig* %20, i32 0, i32 6
  %21 = load i8, i8* %show_help_button, align 1
  %conv15 = sext i8 %21 to i32
  %tobool16 = icmp ne i32 %conv15, 0
  %cond17 = select i1 %tobool16, i32 1, i32 0
  store i32 %cond17, i32* @_show_help_button, align 4
  %22 = load %struct._GPConfig*, %struct._GPConfig** %config.addr, align 8
  %min_colors = getelementptr inbounds %struct._GPConfig, %struct._GPConfig* %22, i32 0, i32 14
  %23 = load i32, i32* %min_colors, align 4
  store i32 %23, i32* @_min_colors, align 4
  %24 = load %struct._GPConfig*, %struct._GPConfig** %config.addr, align 8
  %gdisp_ID = getelementptr inbounds %struct._GPConfig, %struct._GPConfig* %24, i32 0, i32 15
  %25 = load i32, i32* %gdisp_ID, align 4
  store i32 %25, i32* @_gdisp_ID, align 4
  %26 = load %struct._GPConfig*, %struct._GPConfig** %config.addr, align 8
  %wm_class = getelementptr inbounds %struct._GPConfig, %struct._GPConfig* %26, i32 0, i32 17
  %27 = load i8*, i8** %wm_class, align 8
  %call18 = call noalias i8* @g_strdup(i8* %27)
  store i8* %call18, i8** @_wm_class, align 8
  %28 = load %struct._GPConfig*, %struct._GPConfig** %config.addr, align 8
  %display_name = getelementptr inbounds %struct._GPConfig, %struct._GPConfig* %28, i32 0, i32 18
  %29 = load i8*, i8** %display_name, align 8
  %call19 = call noalias i8* @g_strdup(i8* %29)
  store i8* %call19, i8** @_display_name, align 8
  %30 = load %struct._GPConfig*, %struct._GPConfig** %config.addr, align 8
  %monitor_number = getelementptr inbounds %struct._GPConfig, %struct._GPConfig* %30, i32 0, i32 19
  %31 = load i32, i32* %monitor_number, align 4
  store i32 %31, i32* @_monitor_number, align 4
  %32 = load %struct._GPConfig*, %struct._GPConfig** %config.addr, align 8
  %timestamp = getelementptr inbounds %struct._GPConfig, %struct._GPConfig* %32, i32 0, i32 20
  %33 = load i32, i32* %timestamp, align 4
  store i32 %33, i32* @_timestamp, align 4
  %34 = load %struct._GPConfig*, %struct._GPConfig** %config.addr, align 8
  %app_name = getelementptr inbounds %struct._GPConfig, %struct._GPConfig* %34, i32 0, i32 16
  %35 = load i8*, i8** %app_name, align 8
  %tobool20 = icmp ne i8* %35, null
  br i1 %tobool20, label %if.then.21, label %if.end.23

if.then.21:                                       ; preds = %if.end.9
  %36 = load %struct._GPConfig*, %struct._GPConfig** %config.addr, align 8
  %app_name22 = getelementptr inbounds %struct._GPConfig, %struct._GPConfig* %36, i32 0, i32 16
  %37 = load i8*, i8** %app_name22, align 8
  call void @g_set_application_name(i8* %37)
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.21, %if.end.9
  %38 = load %struct._GPConfig*, %struct._GPConfig** %config.addr, align 8
  %use_cpu_accel = getelementptr inbounds %struct._GPConfig, %struct._GPConfig* %38, i32 0, i32 7
  %39 = load i8, i8* %use_cpu_accel, align 1
  %conv24 = sext i8 %39 to i32
  call void @gimp_cpu_accel_set_use(i32 %conv24)
  %40 = load i32, i32* @_shm_ID, align 4
  %cmp25 = icmp ne i32 %40, -1
  br i1 %cmp25, label %if.then.27, label %if.end.35

if.then.27:                                       ; preds = %if.end.23
  %41 = load i32, i32* @_shm_ID, align 4
  %call28 = call i8* @shmat(i32 %41, i8* null, i32 0) #2
  store i8* %call28, i8** @_shm_addr, align 8
  %42 = load i8*, i8** @_shm_addr, align 8
  %cmp29 = icmp eq i8* %42, inttoptr (i64 -1 to i8*)
  br i1 %cmp29, label %if.then.31, label %if.end.34

if.then.31:                                       ; preds = %if.then.27
  %call32 = call i32* @__errno_location() #12
  %43 = load i32, i32* %call32, align 4
  %call33 = call i8* @g_strerror(i32 %43) #12
  call void (i8*, ...) @g_error(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.50, i32 0, i32 0), i8* %call33)
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.31, %if.then.27
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %if.end.23
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_proc_run(%struct._GPProcRun* %proc_run) #0 {
entry:
  %proc_run.addr = alloca %struct._GPProcRun*, align 8
  %proc_return = alloca %struct._GPProcReturn, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %n_return_vals = alloca i32, align 4
  store %struct._GPProcRun* %proc_run, %struct._GPProcRun** %proc_run.addr, align 8
  %0 = load void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)*, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)** getelementptr inbounds (%struct._GimpPlugInInfo, %struct._GimpPlugInInfo* @PLUG_IN_INFO, i32 0, i32 3), align 8
  %tobool = icmp ne void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* %0, null
  br i1 %tobool, label %if.then, label %if.end.7

if.then:                                          ; preds = %entry
  %1 = load void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)*, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)** getelementptr inbounds (%struct._GimpPlugInInfo, %struct._GimpPlugInInfo* @PLUG_IN_INFO, i32 0, i32 3), align 8
  %2 = load %struct._GPProcRun*, %struct._GPProcRun** %proc_run.addr, align 8
  %name = getelementptr inbounds %struct._GPProcRun, %struct._GPProcRun* %2, i32 0, i32 0
  %3 = load i8*, i8** %name, align 8
  %4 = load %struct._GPProcRun*, %struct._GPProcRun** %proc_run.addr, align 8
  %nparams = getelementptr inbounds %struct._GPProcRun, %struct._GPProcRun* %4, i32 0, i32 1
  %5 = load i32, i32* %nparams, align 4
  %6 = load %struct._GPProcRun*, %struct._GPProcRun** %proc_run.addr, align 8
  %params = getelementptr inbounds %struct._GPProcRun, %struct._GPProcRun* %6, i32 0, i32 2
  %7 = load %struct._GPParam*, %struct._GPParam** %params, align 8
  %8 = bitcast %struct._GPParam* %7 to %struct._GimpParam*
  call void %1(i8* %3, i32 %5, %struct._GimpParam* %8, i32* %n_return_vals, %struct._GimpParam** %return_vals)
  %9 = load %struct._GPProcRun*, %struct._GPProcRun** %proc_run.addr, align 8
  %name1 = getelementptr inbounds %struct._GPProcRun, %struct._GPProcRun* %9, i32 0, i32 0
  %10 = load i8*, i8** %name1, align 8
  %name2 = getelementptr inbounds %struct._GPProcReturn, %struct._GPProcReturn* %proc_return, i32 0, i32 0
  store i8* %10, i8** %name2, align 8
  %11 = load i32, i32* %n_return_vals, align 4
  %nparams3 = getelementptr inbounds %struct._GPProcReturn, %struct._GPProcReturn* %proc_return, i32 0, i32 1
  store i32 %11, i32* %nparams3, align 4
  %12 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %13 = bitcast %struct._GimpParam* %12 to %struct._GPParam*
  %params4 = getelementptr inbounds %struct._GPProcReturn, %struct._GPProcReturn* %proc_return, i32 0, i32 2
  store %struct._GPParam* %13, %struct._GPParam** %params4, align 8
  %14 = load %struct._GIOChannel*, %struct._GIOChannel** @_writechannel, align 8
  %call = call i32 @gp_proc_return_write(%struct._GIOChannel* %14, %struct._GPProcReturn* %proc_return, i8* null)
  %tobool5 = icmp ne i32 %call, 0
  br i1 %tobool5, label %if.end, label %if.then.6

if.then.6:                                        ; preds = %if.then
  call void @gimp_quit() #10
  unreachable

if.end:                                           ; preds = %if.then
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %entry
  ret void
}

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
  call void @g_logv(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 32, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

declare i8* @gimp_filename_to_utf8(i8*) #4

declare void @g_set_application_name(i8*) #4

declare void @gimp_cpu_accel_set_use(i32) #4

; Function Attrs: nounwind
declare i8* @shmat(i32, i8*, i32) #6

; Function Attrs: nounwind readnone
declare i8* @g_strerror(i32) #5

declare i32 @gp_proc_return_write(%struct._GIOChannel*, %struct._GPProcReturn*, i8*) #4

; Function Attrs: nounwind uwtable
define internal void @gimp_temp_proc_run(%struct._GPProcRun* %proc_run) #0 {
entry:
  %proc_run.addr = alloca %struct._GPProcRun*, align 8
  %run_proc = alloca void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)*, align 8
  %proc_return = alloca %struct._GPProcReturn, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %n_return_vals = alloca i32, align 4
  store %struct._GPProcRun* %proc_run, %struct._GPProcRun** %proc_run.addr, align 8
  %0 = load %struct._GHashTable*, %struct._GHashTable** @temp_proc_ht, align 8
  %1 = load %struct._GPProcRun*, %struct._GPProcRun** %proc_run.addr, align 8
  %name = getelementptr inbounds %struct._GPProcRun, %struct._GPProcRun* %1, i32 0, i32 0
  %2 = load i8*, i8** %name, align 8
  %call = call i8* @g_hash_table_lookup(%struct._GHashTable* %0, i8* %2)
  %3 = bitcast i8* %call to void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)*
  store void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* %3, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)** %run_proc, align 8
  %4 = load void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)*, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)** %run_proc, align 8
  %tobool = icmp ne void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* %4, null
  br i1 %tobool, label %if.then, label %if.end.9

if.then:                                          ; preds = %entry
  %5 = load void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)*, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)** %run_proc, align 8
  %6 = load %struct._GPProcRun*, %struct._GPProcRun** %proc_run.addr, align 8
  %name1 = getelementptr inbounds %struct._GPProcRun, %struct._GPProcRun* %6, i32 0, i32 0
  %7 = load i8*, i8** %name1, align 8
  %8 = load %struct._GPProcRun*, %struct._GPProcRun** %proc_run.addr, align 8
  %nparams = getelementptr inbounds %struct._GPProcRun, %struct._GPProcRun* %8, i32 0, i32 1
  %9 = load i32, i32* %nparams, align 4
  %10 = load %struct._GPProcRun*, %struct._GPProcRun** %proc_run.addr, align 8
  %params = getelementptr inbounds %struct._GPProcRun, %struct._GPProcRun* %10, i32 0, i32 2
  %11 = load %struct._GPParam*, %struct._GPParam** %params, align 8
  %12 = bitcast %struct._GPParam* %11 to %struct._GimpParam*
  call void %5(i8* %7, i32 %9, %struct._GimpParam* %12, i32* %n_return_vals, %struct._GimpParam** %return_vals)
  %13 = load %struct._GPProcRun*, %struct._GPProcRun** %proc_run.addr, align 8
  %name2 = getelementptr inbounds %struct._GPProcRun, %struct._GPProcRun* %13, i32 0, i32 0
  %14 = load i8*, i8** %name2, align 8
  %name3 = getelementptr inbounds %struct._GPProcReturn, %struct._GPProcReturn* %proc_return, i32 0, i32 0
  store i8* %14, i8** %name3, align 8
  %15 = load i32, i32* %n_return_vals, align 4
  %nparams4 = getelementptr inbounds %struct._GPProcReturn, %struct._GPProcReturn* %proc_return, i32 0, i32 1
  store i32 %15, i32* %nparams4, align 4
  %16 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %17 = bitcast %struct._GimpParam* %16 to %struct._GPParam*
  %params5 = getelementptr inbounds %struct._GPProcReturn, %struct._GPProcReturn* %proc_return, i32 0, i32 2
  store %struct._GPParam* %17, %struct._GPParam** %params5, align 8
  %18 = load %struct._GIOChannel*, %struct._GIOChannel** @_writechannel, align 8
  %call6 = call i32 @gp_temp_proc_return_write(%struct._GIOChannel* %18, %struct._GPProcReturn* %proc_return, i8* null)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.end, label %if.then.8

if.then.8:                                        ; preds = %if.then
  call void @gimp_quit() #10
  unreachable

if.end:                                           ; preds = %if.then
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %entry
  ret void
}

declare i8* @g_hash_table_lookup(%struct._GHashTable*, i8*) #4

declare i32 @gp_temp_proc_return_write(%struct._GIOChannel*, %struct._GPProcReturn*, i8*) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { noreturn }
attributes #11 = { nounwind readonly }
attributes #12 = { nounwind readnone }
attributes #13 = { noreturn nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!2 = !{i32 2019578}
