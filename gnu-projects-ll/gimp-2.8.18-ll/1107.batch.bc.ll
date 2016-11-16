; ModuleID = './app/batch.bc'
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
%struct._GimpPDB = type { %struct._GimpObject, %struct._Gimp*, %struct._GHashTable*, %struct._GHashTable* }
%struct._GHashTable = type opaque
%struct._GimpToolInfo = type opaque
%struct._GimpContainer = type opaque
%struct._GimpTemplate = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpContext = type opaque
%struct._GimpProcedure = type { %struct._GimpObject, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, %struct._GParamSpec**, i32, %struct._GParamSpec**, %struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* }
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
%struct._GValueArray = type { i32, %struct._GValue*, i32 }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GError = type { i32, i32, i8* }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, {}* }

@.str = private unnamed_addr constant [5 x i8] c"exit\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"GIMP_BATCH_INTERPRETER\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"plug-in-script-fu-eval\00", align 1
@.str.3 = private unnamed_addr constant [57 x i8] c"No batch interpreter specified, using the default '%s'.\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"plug-in-script-fu-text-console\00", align 1
@.str.6 = private unnamed_addr constant [66 x i8] c"The batch interpreter '%s' is not available. Batch mode disabled.\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"Gimp\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"EXIT: %s\0A\00", align 1
@__func__.batch_exit_after_callback = private unnamed_addr constant [26 x i8] c"batch_exit_after_callback\00", align 1
@.str.9 = private unnamed_addr constant [50 x i8] c"batch command experienced an execution error:\0A%s\0A\00", align 1
@.str.10 = private unnamed_addr constant [46 x i8] c"batch command experienced an execution error\0A\00", align 1
@.str.11 = private unnamed_addr constant [47 x i8] c"batch command experienced a calling error:\0A%s\0A\00", align 1
@.str.12 = private unnamed_addr constant [43 x i8] c"batch command experienced a calling error\0A\00", align 1
@.str.13 = private unnamed_addr constant [37 x i8] c"batch command executed successfully\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @batch_run(%struct._Gimp* %gimp, i8* %batch_interpreter, i8** %batch_commands) #0 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  %batch_interpreter.addr = alloca i8*, align 8
  %batch_commands.addr = alloca i8**, align 8
  %exit_id = alloca i64, align 8
  %proc_name = alloca i8*, align 8
  %procedure = alloca %struct._GimpProcedure*, align 8
  %eval_proc = alloca %struct._GimpProcedure*, align 8
  %i = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store i8* %batch_interpreter, i8** %batch_interpreter.addr, align 8
  store i8** %batch_commands, i8*** %batch_commands.addr, align 8
  %0 = load i8**, i8*** %batch_commands.addr, align 8
  %tobool = icmp ne i8** %0, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8**, i8*** %batch_commands.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 0
  %2 = load i8*, i8** %arrayidx, align 8
  %tobool1 = icmp ne i8* %2, null
  br i1 %tobool1, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %3 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %4 = bitcast %struct._Gimp* %3 to i8*
  %call = call i64 @g_signal_connect_data(i8* %4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), void ()* bitcast (void (%struct._Gimp*)* @batch_exit_after_callback to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 1)
  store i64 %call, i64* %exit_id, align 8
  %5 = load i8*, i8** %batch_interpreter.addr, align 8
  %tobool2 = icmp ne i8* %5, null
  br i1 %tobool2, label %if.end.12, label %if.then.3

if.then.3:                                        ; preds = %if.end
  %call4 = call i8* @g_getenv(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0))
  store i8* %call4, i8** %batch_interpreter.addr, align 8
  %6 = load i8*, i8** %batch_interpreter.addr, align 8
  %tobool5 = icmp ne i8* %6, null
  br i1 %tobool5, label %if.end.11, label %if.then.6

if.then.6:                                        ; preds = %if.then.3
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i32 0, i32 0), i8** %batch_interpreter.addr, align 8
  %7 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %be_verbose = getelementptr inbounds %struct._Gimp, %struct._Gimp* %7, i32 0, i32 4
  %8 = load i32, i32* %be_verbose, align 4
  %tobool7 = icmp ne i32 %8, 0
  br i1 %tobool7, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %if.then.6
  %call9 = call i8* @gettext(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i32 0, i32 0)) #5
  %9 = load i8*, i8** %batch_interpreter.addr, align 8
  call void (i8*, ...) @g_printerr(i8* %call9, i8* %9)
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.8, %if.then.6
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.10, %if.then.3
  br label %if.end.12

if.end.12:                                        ; preds = %if.end.11, %if.end
  %10 = load i8*, i8** %batch_interpreter.addr, align 8
  %call13 = call i32 @strcmp(i8* %10, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i32 0, i32 0)) #8
  %cmp = icmp eq i32 %call13, 0
  br i1 %cmp, label %land.lhs.true, label %if.else.23

land.lhs.true:                                    ; preds = %if.end.12
  %11 = load i8**, i8*** %batch_commands.addr, align 8
  %arrayidx14 = getelementptr inbounds i8*, i8** %11, i64 0
  %12 = load i8*, i8** %arrayidx14, align 8
  %call15 = call i32 @strcmp(i8* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0)) #8
  %cmp16 = icmp eq i32 %call15, 0
  br i1 %cmp16, label %if.then.17, label %if.else.23

if.then.17:                                       ; preds = %land.lhs.true
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i32 0, i32 0), i8** %proc_name, align 8
  %13 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %pdb = getelementptr inbounds %struct._Gimp, %struct._Gimp* %13, i32 0, i32 44
  %14 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb, align 8
  %15 = load i8*, i8** %proc_name, align 8
  %call18 = call %struct._GimpProcedure* @gimp_pdb_lookup_procedure(%struct._GimpPDB* %14, i8* %15)
  store %struct._GimpProcedure* %call18, %struct._GimpProcedure** %procedure, align 8
  %16 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %tobool19 = icmp ne %struct._GimpProcedure* %16, null
  br i1 %tobool19, label %if.then.20, label %if.else

if.then.20:                                       ; preds = %if.then.17
  %17 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %18 = load i8*, i8** %proc_name, align 8
  %19 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @batch_run_cmd(%struct._Gimp* %17, i8* %18, %struct._GimpProcedure* %19, i32 1, i8* null)
  br label %if.end.22

if.else:                                          ; preds = %if.then.17
  %call21 = call i8* @gettext(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.6, i32 0, i32 0)) #5
  %20 = load i8*, i8** %proc_name, align 8
  call void (i8*, ...) @g_message(i8* %call21, i8* %20)
  br label %if.end.22

if.end.22:                                        ; preds = %if.else, %if.then.20
  br label %if.end.35

if.else.23:                                       ; preds = %land.lhs.true, %if.end.12
  %21 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %pdb24 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %21, i32 0, i32 44
  %22 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb24, align 8
  %23 = load i8*, i8** %batch_interpreter.addr, align 8
  %call25 = call %struct._GimpProcedure* @gimp_pdb_lookup_procedure(%struct._GimpPDB* %22, i8* %23)
  store %struct._GimpProcedure* %call25, %struct._GimpProcedure** %eval_proc, align 8
  %24 = load %struct._GimpProcedure*, %struct._GimpProcedure** %eval_proc, align 8
  %tobool26 = icmp ne %struct._GimpProcedure* %24, null
  br i1 %tobool26, label %if.then.27, label %if.else.32

if.then.27:                                       ; preds = %if.else.23
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.27
  %25 = load i32, i32* %i, align 4
  %idxprom = sext i32 %25 to i64
  %26 = load i8**, i8*** %batch_commands.addr, align 8
  %arrayidx28 = getelementptr inbounds i8*, i8** %26, i64 %idxprom
  %27 = load i8*, i8** %arrayidx28, align 8
  %tobool29 = icmp ne i8* %27, null
  br i1 %tobool29, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %28 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %29 = load i8*, i8** %batch_interpreter.addr, align 8
  %30 = load %struct._GimpProcedure*, %struct._GimpProcedure** %eval_proc, align 8
  %31 = load i32, i32* %i, align 4
  %idxprom30 = sext i32 %31 to i64
  %32 = load i8**, i8*** %batch_commands.addr, align 8
  %arrayidx31 = getelementptr inbounds i8*, i8** %32, i64 %idxprom30
  %33 = load i8*, i8** %arrayidx31, align 8
  call void @batch_run_cmd(%struct._Gimp* %28, i8* %29, %struct._GimpProcedure* %30, i32 1, i8* %33)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %34 = load i32, i32* %i, align 4
  %inc = add nsw i32 %34, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.34

if.else.32:                                       ; preds = %if.else.23
  %call33 = call i8* @gettext(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.6, i32 0, i32 0)) #5
  %35 = load i8*, i8** %batch_interpreter.addr, align 8
  call void (i8*, ...) @g_message(i8* %call33, i8* %35)
  br label %if.end.34

if.end.34:                                        ; preds = %if.else.32, %for.end
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %if.end.22
  %36 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %37 = bitcast %struct._Gimp* %36 to i8*
  %38 = load i64, i64* %exit_id, align 8
  call void @g_signal_handler_disconnect(i8* %37, i64 %38)
  br label %return

return:                                           ; preds = %if.end.35, %if.then
  ret void
}

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: noreturn nounwind uwtable
define internal void @batch_exit_after_callback(%struct._Gimp* %gimp) #2 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %be_verbose = getelementptr inbounds %struct._Gimp, %struct._Gimp* %0, i32 0, i32 4
  %1 = load i32, i32* %be_verbose, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @g_print(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.batch_exit_after_callback, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @gegl_exit()
  call void @tile_swap_exit()
  call void @exit(i32 0) #9
  unreachable

return:                                           ; No predecessors!
  ret void
}

declare i8* @g_getenv(i8*) #1

declare void @g_printerr(i8*, ...) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #3

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

declare %struct._GimpProcedure* @gimp_pdb_lookup_procedure(%struct._GimpPDB*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @batch_run_cmd(%struct._Gimp* %gimp, i8* %proc_name, %struct._GimpProcedure* %procedure, i32 %run_mode, i8* %cmd) #0 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  %proc_name.addr = alloca i8*, align 8
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %run_mode.addr = alloca i32, align 4
  %cmd.addr = alloca i8*, align 8
  %args = alloca %struct._GValueArray*, align 8
  %return_vals = alloca %struct._GValueArray*, align 8
  %error = alloca %struct._GError*, align 8
  %i = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst20 = alloca %struct._GTypeInstance*, align 8
  %__t25 = alloca i64, align 8
  %__r28 = alloca i32, align 4
  %tmp43 = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store i8* %proc_name, i8** %proc_name.addr, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store i32 %run_mode, i32* %run_mode.addr, align 4
  store i8* %cmd, i8** %cmd.addr, align 8
  store %struct._GError* null, %struct._GError** %error, align 8
  store i32 0, i32* %i, align 4
  %0 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %call = call %struct._GValueArray* @gimp_procedure_get_arguments(%struct._GimpProcedure* %0)
  store %struct._GValueArray* %call, %struct._GValueArray** %args, align 8
  %1 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %num_args = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %1, i32 0, i32 10
  %2 = load i32, i32* %num_args, align 4
  %3 = load i32, i32* %i, align 4
  %cmp = icmp sgt i32 %2, %3
  br i1 %cmp, label %land.lhs.true, label %if.end.15

land.lhs.true:                                    ; preds = %entry
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %args1 = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %5, i32 0, i32 11
  %6 = load %struct._GParamSpec**, %struct._GParamSpec*** %args1, align 8
  %arrayidx = getelementptr inbounds %struct._GParamSpec*, %struct._GParamSpec** %6, i64 %idxprom
  %7 = load %struct._GParamSpec*, %struct._GParamSpec** %arrayidx, align 8
  %8 = bitcast %struct._GParamSpec* %7 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %8, %struct._GTypeInstance** %__inst, align 8
  %call2 = call i64 @gimp_param_int32_get_type() #10
  store i64 %call2, i64* %__t, align 8
  %9 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %9, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true
  store i32 0, i32* %__r, align 4
  br label %if.end.10

if.else:                                          ; preds = %land.lhs.true
  %10 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %10, i32 0, i32 0
  %11 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool3 = icmp ne %struct._GTypeClass* %11, null
  br i1 %tobool3, label %land.lhs.true.4, label %if.else.8

land.lhs.true.4:                                  ; preds = %if.else
  %12 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class5 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %12, i32 0, i32 0
  %13 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class5, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %13, i32 0, i32 0
  %14 = load i64, i64* %g_type, align 8
  %15 = load i64, i64* %__t, align 8
  %cmp6 = icmp eq i64 %14, %15
  br i1 %cmp6, label %if.then.7, label %if.else.8

if.then.7:                                        ; preds = %land.lhs.true.4
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.8:                                        ; preds = %land.lhs.true.4, %if.else
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %17 = load i64, i64* %__t, align 8
  %call9 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %16, i64 %17) #8
  store i32 %call9, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.8, %if.then.7
  br label %if.end.10

if.end.10:                                        ; preds = %if.end, %if.then
  %18 = load i32, i32* %__r, align 4
  store i32 %18, i32* %tmp
  %19 = load i32, i32* %tmp
  %tobool11 = icmp ne i32 %19, 0
  br i1 %tobool11, label %if.then.12, label %if.end.15

if.then.12:                                       ; preds = %if.end.10
  %20 = load i32, i32* %i, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %i, align 4
  %idxprom13 = sext i32 %20 to i64
  %21 = load %struct._GValueArray*, %struct._GValueArray** %args, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %21, i32 0, i32 1
  %22 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx14 = getelementptr inbounds %struct._GValue, %struct._GValue* %22, i64 %idxprom13
  %23 = load i32, i32* %run_mode.addr, align 4
  call void @g_value_set_int(%struct._GValue* %arrayidx14, i32 %23)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.12, %if.end.10, %entry
  %24 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %num_args16 = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %24, i32 0, i32 10
  %25 = load i32, i32* %num_args16, align 4
  %26 = load i32, i32* %i, align 4
  %cmp17 = icmp sgt i32 %25, %26
  br i1 %cmp17, label %land.lhs.true.18, label %if.end.50

land.lhs.true.18:                                 ; preds = %if.end.15
  %27 = load i32, i32* %i, align 4
  %idxprom21 = sext i32 %27 to i64
  %28 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %args22 = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %28, i32 0, i32 11
  %29 = load %struct._GParamSpec**, %struct._GParamSpec*** %args22, align 8
  %arrayidx23 = getelementptr inbounds %struct._GParamSpec*, %struct._GParamSpec** %29, i64 %idxprom21
  %30 = load %struct._GParamSpec*, %struct._GParamSpec** %arrayidx23, align 8
  %31 = bitcast %struct._GParamSpec* %30 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %31, %struct._GTypeInstance** %__inst20, align 8
  %call26 = call i64 @gimp_param_string_get_type() #10
  store i64 %call26, i64* %__t25, align 8
  %32 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst20, align 8
  %tobool29 = icmp ne %struct._GTypeInstance* %32, null
  br i1 %tobool29, label %if.else.31, label %if.then.30

if.then.30:                                       ; preds = %land.lhs.true.18
  store i32 0, i32* %__r28, align 4
  br label %if.end.42

if.else.31:                                       ; preds = %land.lhs.true.18
  %33 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst20, align 8
  %g_class32 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %33, i32 0, i32 0
  %34 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class32, align 8
  %tobool33 = icmp ne %struct._GTypeClass* %34, null
  br i1 %tobool33, label %land.lhs.true.34, label %if.else.39

land.lhs.true.34:                                 ; preds = %if.else.31
  %35 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst20, align 8
  %g_class35 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %35, i32 0, i32 0
  %36 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class35, align 8
  %g_type36 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %36, i32 0, i32 0
  %37 = load i64, i64* %g_type36, align 8
  %38 = load i64, i64* %__t25, align 8
  %cmp37 = icmp eq i64 %37, %38
  br i1 %cmp37, label %if.then.38, label %if.else.39

if.then.38:                                       ; preds = %land.lhs.true.34
  store i32 1, i32* %__r28, align 4
  br label %if.end.41

if.else.39:                                       ; preds = %land.lhs.true.34, %if.else.31
  %39 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst20, align 8
  %40 = load i64, i64* %__t25, align 8
  %call40 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %39, i64 %40) #8
  store i32 %call40, i32* %__r28, align 4
  br label %if.end.41

if.end.41:                                        ; preds = %if.else.39, %if.then.38
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.41, %if.then.30
  %41 = load i32, i32* %__r28, align 4
  store i32 %41, i32* %tmp43
  %42 = load i32, i32* %tmp43
  %tobool44 = icmp ne i32 %42, 0
  br i1 %tobool44, label %if.then.45, label %if.end.50

if.then.45:                                       ; preds = %if.end.42
  %43 = load i32, i32* %i, align 4
  %inc46 = add nsw i32 %43, 1
  store i32 %inc46, i32* %i, align 4
  %idxprom47 = sext i32 %43 to i64
  %44 = load %struct._GValueArray*, %struct._GValueArray** %args, align 8
  %values48 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %44, i32 0, i32 1
  %45 = load %struct._GValue*, %struct._GValue** %values48, align 8
  %arrayidx49 = getelementptr inbounds %struct._GValue, %struct._GValue* %45, i64 %idxprom47
  %46 = load i8*, i8** %cmd.addr, align 8
  call void @g_value_set_static_string(%struct._GValue* %arrayidx49, i8* %46)
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.45, %if.end.42, %if.end.15
  %47 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %pdb = getelementptr inbounds %struct._Gimp, %struct._Gimp* %47, i32 0, i32 44
  %48 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb, align 8
  %49 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call51 = call %struct._GimpContext* @gimp_get_user_context(%struct._Gimp* %49)
  %50 = load i8*, i8** %proc_name.addr, align 8
  %51 = load %struct._GValueArray*, %struct._GValueArray** %args, align 8
  %call52 = call %struct._GValueArray* @gimp_pdb_execute_procedure_by_name_args(%struct._GimpPDB* %48, %struct._GimpContext* %call51, %struct._GimpProgress* null, %struct._GError** %error, i8* %50, %struct._GValueArray* %51)
  store %struct._GValueArray* %call52, %struct._GValueArray** %return_vals, align 8
  %52 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values53 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %52, i32 0, i32 1
  %53 = load %struct._GValue*, %struct._GValue** %values53, align 8
  %arrayidx54 = getelementptr inbounds %struct._GValue, %struct._GValue* %53, i64 0
  %call55 = call i32 @g_value_get_enum(%struct._GValue* %arrayidx54)
  switch i32 %call55, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.60
    i32 3, label %sw.bb.66
  ]

sw.bb:                                            ; preds = %if.end.50
  %54 = load %struct._GError*, %struct._GError** %error, align 8
  %tobool56 = icmp ne %struct._GError* %54, null
  br i1 %tobool56, label %if.then.57, label %if.else.58

if.then.57:                                       ; preds = %sw.bb
  %55 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %55, i32 0, i32 2
  %56 = load i8*, i8** %message, align 8
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.9, i32 0, i32 0), i8* %56)
  br label %if.end.59

if.else.58:                                       ; preds = %sw.bb
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.10, i32 0, i32 0))
  br label %if.end.59

if.end.59:                                        ; preds = %if.else.58, %if.then.57
  br label %sw.epilog

sw.bb.60:                                         ; preds = %if.end.50
  %57 = load %struct._GError*, %struct._GError** %error, align 8
  %tobool61 = icmp ne %struct._GError* %57, null
  br i1 %tobool61, label %if.then.62, label %if.else.64

if.then.62:                                       ; preds = %sw.bb.60
  %58 = load %struct._GError*, %struct._GError** %error, align 8
  %message63 = getelementptr inbounds %struct._GError, %struct._GError* %58, i32 0, i32 2
  %59 = load i8*, i8** %message63, align 8
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.11, i32 0, i32 0), i8* %59)
  br label %if.end.65

if.else.64:                                       ; preds = %sw.bb.60
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.12, i32 0, i32 0))
  br label %if.end.65

if.end.65:                                        ; preds = %if.else.64, %if.then.62
  br label %sw.epilog

sw.bb.66:                                         ; preds = %if.end.50
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.13, i32 0, i32 0))
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.50, %sw.bb.66, %if.end.65, %if.end.59
  %60 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  call void @g_value_array_free(%struct._GValueArray* %60)
  %61 = load %struct._GValueArray*, %struct._GValueArray** %args, align 8
  call void @g_value_array_free(%struct._GValueArray* %61)
  %62 = load %struct._GError*, %struct._GError** %error, align 8
  %tobool67 = icmp ne %struct._GError* %62, null
  br i1 %tobool67, label %if.then.68, label %if.end.69

if.then.68:                                       ; preds = %sw.epilog
  %63 = load %struct._GError*, %struct._GError** %error, align 8
  call void @g_error_free(%struct._GError* %63)
  br label %if.end.69

if.end.69:                                        ; preds = %if.then.68, %sw.epilog
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
  call void @g_logv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i32 32, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

declare void @g_signal_handler_disconnect(i8*, i64) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

declare void @g_print(i8*, ...) #1

declare void @gegl_exit() #1

declare void @tile_swap_exit() #1

; Function Attrs: noreturn nounwind
declare void @exit(i32) #6

declare %struct._GValueArray* @gimp_procedure_get_arguments(%struct._GimpProcedure*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_param_int32_get_type() #7

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_value_set_int(%struct._GValue*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_param_string_get_type() #7

declare void @g_value_set_static_string(%struct._GValue*, i8*) #1

declare %struct._GValueArray* @gimp_pdb_execute_procedure_by_name_args(%struct._GimpPDB*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GError**, i8*, %struct._GValueArray*) #1

declare %struct._GimpContext* @gimp_get_user_context(%struct._Gimp*) #1

declare i32 @g_value_get_enum(%struct._GValue*) #1

declare void @g_value_array_free(%struct._GValueArray*) #1

declare void @g_error_free(%struct._GError*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readonly }
attributes #9 = { noreturn nounwind }
attributes #10 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
