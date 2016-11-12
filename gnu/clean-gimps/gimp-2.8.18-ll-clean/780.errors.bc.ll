; ModuleID = './app/errors.bc'
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
%struct.__sigset_t = type { [16 x i64] }

@errors_init.log_domains = internal constant [20 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [5 x i8] c"Gimp\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Gimp-Actions\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"Gimp-Base\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"Gimp-Composite\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"Gimp-Config\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"Gimp-Core\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"Gimp-Dialogs\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"Gimp-Display\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"Gimp-File\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"Gimp-GUI\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"Gimp-Menus\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"Gimp-PDB\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"Gimp-Paint\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"Gimp-Paint-Funcs\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"Gimp-Plug-In\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"Gimp-Text\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"Gimp-Tools\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"Gimp-Vectors\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"Gimp-Widgets\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"Gimp-XCF\00", align 1
@__func__.errors_init = private unnamed_addr constant [12 x i8] c"errors_init\00", align 1
@.str.20 = private unnamed_addr constant [20 x i8] c"GIMP_IS_GIMP (gimp)\00", align 1
@.str.21 = private unnamed_addr constant [24 x i8] c"_full_prog_name != NULL\00", align 1
@full_prog_name = internal global i8* null, align 8
@.str.22 = private unnamed_addr constant [23 x i8] c"full_prog_name == NULL\00", align 1
@the_errors_gimp = internal global %struct._Gimp* null, align 8
@use_debug_handler = internal global i32 0, align 4
@stack_trace_mode = internal global i32 1, align 4
@.str.23 = private unnamed_addr constant [12 x i8] c"fatal error\00", align 1
@.str.24 = private unnamed_addr constant [11 x i8] c"terminated\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"%s: %s\0A\0A\00", align 1
@.str.26 = private unnamed_addr constant [12 x i8] c"%s: %s: %s\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @errors_init(%struct._Gimp* %gimp, i8* %_full_prog_name, i32 %_use_debug_handler, i32 %_stack_trace_mode) #0 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  %_full_prog_name.addr = alloca i8*, align 8
  %_use_debug_handler.addr = alloca i32, align 4
  %_stack_trace_mode.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store i8* %_full_prog_name, i8** %_full_prog_name.addr, align 8
  store i32 %_use_debug_handler, i32* %_use_debug_handler.addr, align 4
  store i32 %_stack_trace_mode, i32* %_stack_trace_mode.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #7
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.errors_init, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.20, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i8*, i8** %_full_prog_name.addr, align 8
  %cmp12 = icmp ne i8* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.errors_init, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.21, i32 0, i32 0))
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %14 = load i8*, i8** @full_prog_name, align 8
  %cmp18 = icmp eq i8* %14, null
  br i1 %cmp18, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %do.body.17
  br label %if.end.21

if.else.20:                                       ; preds = %do.body.17
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.errors_init, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i32 0, i32 0))
  br label %return

if.end.21:                                        ; preds = %if.then.19
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  %15 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  store %struct._Gimp* %15, %struct._Gimp** @the_errors_gimp, align 8
  %16 = load i32, i32* %_use_debug_handler.addr, align 4
  %tobool23 = icmp ne i32 %16, 0
  %cond = select i1 %tobool23, i32 1, i32 0
  store i32 %cond, i32* @use_debug_handler, align 4
  %17 = load i32, i32* %_stack_trace_mode.addr, align 4
  store i32 %17, i32* @stack_trace_mode, align 4
  %18 = load i8*, i8** %_full_prog_name.addr, align 8
  %call24 = call noalias i8* @g_strdup(i8* %18)
  store i8* %call24, i8** @full_prog_name, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end.22
  %19 = load i32, i32* %i, align 4
  %conv = sext i32 %19 to i64
  %cmp25 = icmp ult i64 %conv, 20
  br i1 %cmp25, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %20 = load i32, i32* %i, align 4
  %idxprom = sext i32 %20 to i64
  %arrayidx = getelementptr inbounds [20 x i8*], [20 x i8*]* @errors_init.log_domains, i32 0, i64 %idxprom
  %21 = load i8*, i8** %arrayidx, align 8
  %22 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %23 = bitcast %struct._Gimp* %22 to i8*
  %call27 = call i32 @g_log_set_handler(i8* %21, i32 32, void (i8*, i32, i8*, i8*)* @gimp_message_log_func, i8* %23)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %24 = load i32, i32* %i, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %25 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %26 = bitcast %struct._Gimp* %25 to i8*
  %call28 = call i32 @g_log_set_handler(i8* null, i32 6, void (i8*, i32, i8*, i8*)* @gimp_error_log_func, i8* %26)
  br label %return

return:                                           ; preds = %for.end, %if.else.20, %if.else.14, %if.else.9
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_get_type() #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #3

declare noalias i8* @g_strdup(i8*) #3

declare i32 @g_log_set_handler(i8*, i32, void (i8*, i32, i8*, i8*)*, i8*) #3

; Function Attrs: nounwind uwtable
define internal void @gimp_message_log_func(i8* %log_domain, i32 %flags, i8* %message, i8* %data) #0 {
entry:
  %log_domain.addr = alloca i8*, align 8
  %flags.addr = alloca i32, align 4
  %message.addr = alloca i8*, align 8
  %data.addr = alloca i8*, align 8
  %gimp = alloca %struct._Gimp*, align 8
  store i8* %log_domain, i8** %log_domain.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  store i8* %message, i8** %message.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._Gimp*
  store %struct._Gimp* %1, %struct._Gimp** %gimp, align 8
  %2 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %tobool = icmp ne %struct._Gimp* %2, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %4 = load i8*, i8** %message.addr, align 8
  call void @gimp_show_message(%struct._Gimp* %3, %struct._GObject* null, i32 1, i8* null, i8* %4)
  br label %if.end

if.else:                                          ; preds = %entry
  %5 = load i8*, i8** @full_prog_name, align 8
  %call = call i8* @gimp_filename_to_utf8(i8* %5)
  %6 = load i8*, i8** %message.addr, align 8
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i32 0, i32 0), i8* %call, i8* %6)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: noreturn nounwind uwtable
define internal void @gimp_error_log_func(i8* %domain, i32 %flags, i8* %message, i8* %data) #4 {
entry:
  %domain.addr = alloca i8*, align 8
  %flags.addr = alloca i32, align 4
  %message.addr = alloca i8*, align 8
  %data.addr = alloca i8*, align 8
  store i8* %domain, i8** %domain.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  store i8* %message, i8** %message.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %message.addr, align 8
  call void @gimp_fatal_error(i8* %0) #9
  unreachable

return:                                           ; No predecessors!
  ret void
}

; Function Attrs: nounwind uwtable
define void @errors_exit() #0 {
entry:
  store %struct._Gimp* null, %struct._Gimp** @the_errors_gimp, align 8
  ret void
}

; Function Attrs: noreturn nounwind uwtable
define void @gimp_fatal_error(i8* %message) #4 {
entry:
  %message.addr = alloca i8*, align 8
  store i8* %message, i8** %message.addr, align 8
  %0 = load i8*, i8** %message.addr, align 8
  call void @gimp_eek(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i32 0, i32 0), i8* %0, i32 1) #9
  unreachable

return:                                           ; No predecessors!
  ret void
}

; Function Attrs: noreturn nounwind uwtable
define internal void @gimp_eek(i8* %reason, i8* %message, i32 %use_handler) #4 {
entry:
  %reason.addr = alloca i8*, align 8
  %message.addr = alloca i8*, align 8
  %use_handler.addr = alloca i32, align 4
  %sigset = alloca %struct.__sigset_t, align 8
  %sigset7 = alloca %struct.__sigset_t, align 8
  store i8* %reason, i8** %reason.addr, align 8
  store i8* %message, i8** %message.addr, align 8
  store i32 %use_handler, i32* %use_handler.addr, align 4
  %0 = load i8*, i8** @full_prog_name, align 8
  %call = call i8* @gimp_filename_to_utf8(i8* %0)
  %1 = load i8*, i8** %reason.addr, align 8
  %2 = load i8*, i8** %message.addr, align 8
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i32 0, i32 0), i8* %call, i8* %1, i8* %2)
  %3 = load i32, i32* %use_handler.addr, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end.10

if.then:                                          ; preds = %entry
  %4 = load i32, i32* @stack_trace_mode, align 4
  switch i32 %4, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.1
    i32 2, label %sw.bb.6
  ]

sw.bb:                                            ; preds = %if.then
  br label %sw.epilog

sw.bb.1:                                          ; preds = %if.then
  %call2 = call i32 @sigemptyset(%struct.__sigset_t* %sigset) #10
  %call3 = call i32 @sigprocmask(i32 2, %struct.__sigset_t* %sigset, %struct.__sigset_t* null) #10
  %5 = load %struct._Gimp*, %struct._Gimp** @the_errors_gimp, align 8
  %tobool4 = icmp ne %struct._Gimp* %5, null
  br i1 %tobool4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %sw.bb.1
  %6 = load %struct._Gimp*, %struct._Gimp** @the_errors_gimp, align 8
  call void @gimp_gui_ungrab(%struct._Gimp* %6)
  br label %if.end

if.end:                                           ; preds = %if.then.5, %sw.bb.1
  %7 = load i8*, i8** @full_prog_name, align 8
  call void @g_on_error_query(i8* %7)
  br label %sw.epilog

sw.bb.6:                                          ; preds = %if.then
  %call8 = call i32 @sigemptyset(%struct.__sigset_t* %sigset7) #10
  %call9 = call i32 @sigprocmask(i32 2, %struct.__sigset_t* %sigset7, %struct.__sigset_t* null) #10
  %8 = load i8*, i8** @full_prog_name, align 8
  call void @g_on_error_stack_trace(i8* %8)
  br label %sw.epilog

sw.default:                                       ; preds = %if.then
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.6, %if.end, %sw.bb
  br label %if.end.10

if.end.10:                                        ; preds = %sw.epilog, %entry
  call void @exit(i32 1) #11
  unreachable

return:                                           ; No predecessors!
  ret void
}

; Function Attrs: noreturn nounwind uwtable
define void @gimp_terminate(i8* %message) #4 {
entry:
  %message.addr = alloca i8*, align 8
  store i8* %message, i8** %message.addr, align 8
  %0 = load i8*, i8** %message.addr, align 8
  %1 = load i32, i32* @use_debug_handler, align 4
  call void @gimp_eek(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.24, i32 0, i32 0), i8* %0, i32 %1) #9
  unreachable

return:                                           ; No predecessors!
  ret void
}

declare void @gimp_show_message(%struct._Gimp*, %struct._GObject*, i32, i8*, i8*) #3

declare void @g_printerr(i8*, ...) #3

declare i8* @gimp_filename_to_utf8(i8*) #3

; Function Attrs: nounwind
declare i32 @sigemptyset(%struct.__sigset_t*) #5

; Function Attrs: nounwind
declare i32 @sigprocmask(i32, %struct.__sigset_t*, %struct.__sigset_t*) #5

declare void @gimp_gui_ungrab(%struct._Gimp*) #3

declare void @g_on_error_query(i8*) #3

declare void @g_on_error_stack_trace(i8*) #3

; Function Attrs: noreturn nounwind
declare void @exit(i32) #6

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone }
attributes #8 = { nounwind readonly }
attributes #9 = { noreturn }
attributes #10 = { nounwind }
attributes #11 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
