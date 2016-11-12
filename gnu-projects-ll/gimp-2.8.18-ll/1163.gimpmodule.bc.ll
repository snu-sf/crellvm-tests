; ModuleID = './libgimpmodule/gimpmodule.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpModuleClass = type { %struct._GTypeModuleClass, void (%struct._GimpModule*)*, void ()*, void ()*, void ()*, void ()* }
%struct._GTypeModuleClass = type { %struct._GObjectClass, i32 (%struct._GTypeModule*)*, void (%struct._GTypeModule*)*, void ()*, void ()*, void ()*, void ()* }
%struct._GObjectClass = type { %struct._GTypeClass, %struct._GSList*, %struct._GObject* (i64, i32, %struct._GObjectConstructParam*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*)*, void (%struct._GObject*)*, void (%struct._GObject*, i32, %struct._GParamSpec**)*, void (%struct._GObject*, %struct._GParamSpec*)*, void (%struct._GObject*)*, i64, [6 x i8*] }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GData = type opaque
%struct._GObjectConstructParam = type { %struct._GParamSpec*, %struct._GValue* }
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GTypeModule = type { %struct._GObject, i32, %struct._GSList*, %struct._GSList*, i8* }
%struct._GimpModule = type { %struct._GTypeModule, i8*, i32, i32, i32, i32, %struct._GModule*, %struct._GimpModuleInfo*, i8*, %struct._GimpModuleInfo* (%struct._GTypeModule*)*, i32 (%struct._GTypeModule*)* }
%struct._GModule = type opaque
%struct._GimpModuleInfo = type { i32, i8*, i8*, i8*, i8*, i8* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GEnumValue = type { i32, i8*, i8* }
%struct._GSignalInvocationHint = type { i32, i32, i32 }
%struct._GClosure = type { i32, {}*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, void (i8*, %struct._GClosure*)* }

@gimp_module_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"GimpModule\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"LibGimpModule\00", align 1
@__func__.gimp_module_new = private unnamed_addr constant [16 x i8] c"gimp_module_new\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"filename != NULL\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"Skipping module '%s'\0A\00", align 1
@__func__.gimp_module_query_module = private unnamed_addr constant [25 x i8] c"gimp_module_query_module\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"GIMP_IS_MODULE (module)\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"gimp_module_query\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"Missing gimp_module_query() symbol\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"gimp20-libgimp\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"Module '%s' load error: %s\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"module ABI version does not match\00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"gimp_module_query() returned NULL\00", align 1
@__func__.gimp_module_modified = private unnamed_addr constant [21 x i8] c"gimp_module_modified\00", align 1
@module_signals = internal global [1 x i32] zeroinitializer, align 4
@__func__.gimp_module_set_load_inhibit = private unnamed_addr constant [29 x i8] c"gimp_module_set_load_inhibit\00", align 1
@gimp_module_state_name.statenames = internal constant [4 x i8*] [i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i32 0, i32 0)], align 16
@.str.11 = private unnamed_addr constant [13 x i8] c"Module error\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"Loaded\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"Load failed\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"Not loaded\00", align 1
@__func__.gimp_module_state_name = private unnamed_addr constant [23 x i8] c"gimp_module_state_name\00", align 1
@.str.15 = private unnamed_addr constant [74 x i8] c"state >= GIMP_MODULE_STATE_ERROR && state <= GIMP_MODULE_STATE_NOT_LOADED\00", align 1
@.str.16 = private unnamed_addr constant [24 x i8] c"gimp-module-error-quark\00", align 1
@__func__.gimp_module_info_copy = private unnamed_addr constant [22 x i8] c"gimp_module_info_copy\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"info != NULL\00", align 1
@__func__.gimp_module_info_free = private unnamed_addr constant [22 x i8] c"gimp_module_info_free\00", align 1
@gimp_module_parent_class = internal global i8* null, align 8
@GimpModule_private_offset = internal global i32 0, align 4
@.str.18 = private unnamed_addr constant [9 x i8] c"modified\00", align 1
@__func__.gimp_module_load = private unnamed_addr constant [17 x i8] c"gimp_module_load\00", align 1
@.str.19 = private unnamed_addr constant [30 x i8] c"gimp_module->filename != NULL\00", align 1
@.str.20 = private unnamed_addr constant [28 x i8] c"gimp_module->module == NULL\00", align 1
@.str.21 = private unnamed_addr constant [21 x i8] c"Loading module '%s'\0A\00", align 1
@.str.22 = private unnamed_addr constant [21 x i8] c"gimp_module_register\00", align 1
@.str.23 = private unnamed_addr constant [38 x i8] c"Missing gimp_module_register() symbol\00", align 1
@.str.24 = private unnamed_addr constant [38 x i8] c"gimp_module_register() returned FALSE\00", align 1
@__func__.gimp_module_unload = private unnamed_addr constant [19 x i8] c"gimp_module_unload\00", align 1
@.str.25 = private unnamed_addr constant [28 x i8] c"gimp_module->module != NULL\00", align 1
@.str.26 = private unnamed_addr constant [23 x i8] c"Unloading module '%s'\0A\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_module_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_module_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_module_get_type.g_define_type_id__volatile to i8*))
  %tobool2 = icmp ne i32 %call, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i1 [ false, %entry ], [ %tobool2, %land.rhs ]
  %land.ext = zext i1 %3 to i32
  store i32 %land.ext, i32* %tmp
  %4 = load i32, i32* %tmp
  %tobool3 = icmp ne i32 %4, 0
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %land.end
  %call5 = call i64 @g_type_module_get_type() #7
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 224, void (i8*, i8*)* bitcast (void (i8*)* @gimp_module_class_intern_init to void (i8*, i8*)*), i32 120, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpModule*)* @gimp_module_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_module_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_module_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @g_type_module_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_module_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_module_parent_class, align 8
  %1 = load i32, i32* @GimpModule_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpModule_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpModuleClass*
  call void @gimp_module_class_init(%struct._GimpModuleClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_module_init(%struct._GimpModule* %module) #3 {
entry:
  %module.addr = alloca %struct._GimpModule*, align 8
  store %struct._GimpModule* %module, %struct._GimpModule** %module.addr, align 8
  %0 = load %struct._GimpModule*, %struct._GimpModule** %module.addr, align 8
  %filename = getelementptr inbounds %struct._GimpModule, %struct._GimpModule* %0, i32 0, i32 1
  store i8* null, i8** %filename, align 8
  %1 = load %struct._GimpModule*, %struct._GimpModule** %module.addr, align 8
  %verbose = getelementptr inbounds %struct._GimpModule, %struct._GimpModule* %1, i32 0, i32 2
  store i32 0, i32* %verbose, align 4
  %2 = load %struct._GimpModule*, %struct._GimpModule** %module.addr, align 8
  %state = getelementptr inbounds %struct._GimpModule, %struct._GimpModule* %2, i32 0, i32 3
  store i32 0, i32* %state, align 4
  %3 = load %struct._GimpModule*, %struct._GimpModule** %module.addr, align 8
  %on_disk = getelementptr inbounds %struct._GimpModule, %struct._GimpModule* %3, i32 0, i32 4
  store i32 0, i32* %on_disk, align 4
  %4 = load %struct._GimpModule*, %struct._GimpModule** %module.addr, align 8
  %load_inhibit = getelementptr inbounds %struct._GimpModule, %struct._GimpModule* %4, i32 0, i32 5
  store i32 0, i32* %load_inhibit, align 4
  %5 = load %struct._GimpModule*, %struct._GimpModule** %module.addr, align 8
  %module1 = getelementptr inbounds %struct._GimpModule, %struct._GimpModule* %5, i32 0, i32 6
  store %struct._GModule* null, %struct._GModule** %module1, align 8
  %6 = load %struct._GimpModule*, %struct._GimpModule** %module.addr, align 8
  %info = getelementptr inbounds %struct._GimpModule, %struct._GimpModule* %6, i32 0, i32 7
  store %struct._GimpModuleInfo* null, %struct._GimpModuleInfo** %info, align 8
  %7 = load %struct._GimpModule*, %struct._GimpModule** %module.addr, align 8
  %last_module_error = getelementptr inbounds %struct._GimpModule, %struct._GimpModule* %7, i32 0, i32 8
  store i8* null, i8** %last_module_error, align 8
  %8 = load %struct._GimpModule*, %struct._GimpModule** %module.addr, align 8
  %query_module = getelementptr inbounds %struct._GimpModule, %struct._GimpModule* %8, i32 0, i32 9
  store %struct._GimpModuleInfo* (%struct._GTypeModule*)* null, %struct._GimpModuleInfo* (%struct._GTypeModule*)** %query_module, align 8
  %9 = load %struct._GimpModule*, %struct._GimpModule** %module.addr, align 8
  %register_module = getelementptr inbounds %struct._GimpModule, %struct._GimpModule* %9, i32 0, i32 10
  store i32 (%struct._GTypeModule*)* null, i32 (%struct._GTypeModule*)** %register_module, align 8
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GimpModule* @gimp_module_new(i8* %filename, i32 %load_inhibit, i32 %verbose) #3 {
entry:
  %retval = alloca %struct._GimpModule*, align 8
  %filename.addr = alloca i8*, align 8
  %load_inhibit.addr = alloca i32, align 4
  %verbose.addr = alloca i32, align 4
  %module = alloca %struct._GimpModule*, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store i32 %load_inhibit, i32* %load_inhibit.addr, align 4
  store i32 %verbose, i32* %verbose.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i8*, i8** %filename.addr, align 8
  %cmp = icmp ne i8* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.gimp_module_new, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpModule* null, %struct._GimpModule** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %call = call i64 @gimp_module_get_type() #7
  %call1 = call i8* (i64, i8*, ...) @g_object_new(i64 %call, i8* null)
  %1 = bitcast i8* %call1 to %struct._GimpModule*
  store %struct._GimpModule* %1, %struct._GimpModule** %module, align 8
  %2 = load i8*, i8** %filename.addr, align 8
  %call2 = call noalias i8* @g_strdup(i8* %2)
  %3 = load %struct._GimpModule*, %struct._GimpModule** %module, align 8
  %filename3 = getelementptr inbounds %struct._GimpModule, %struct._GimpModule* %3, i32 0, i32 1
  store i8* %call2, i8** %filename3, align 8
  %4 = load i32, i32* %load_inhibit.addr, align 4
  %tobool = icmp ne i32 %4, 0
  %cond = select i1 %tobool, i32 1, i32 0
  %5 = load %struct._GimpModule*, %struct._GimpModule** %module, align 8
  %load_inhibit4 = getelementptr inbounds %struct._GimpModule, %struct._GimpModule* %5, i32 0, i32 5
  store i32 %cond, i32* %load_inhibit4, align 4
  %6 = load i32, i32* %verbose.addr, align 4
  %tobool5 = icmp ne i32 %6, 0
  %cond6 = select i1 %tobool5, i32 1, i32 0
  %7 = load %struct._GimpModule*, %struct._GimpModule** %module, align 8
  %verbose7 = getelementptr inbounds %struct._GimpModule, %struct._GimpModule* %7, i32 0, i32 2
  store i32 %cond6, i32* %verbose7, align 4
  %8 = load %struct._GimpModule*, %struct._GimpModule** %module, align 8
  %on_disk = getelementptr inbounds %struct._GimpModule, %struct._GimpModule* %8, i32 0, i32 4
  store i32 1, i32* %on_disk, align 4
  %9 = load %struct._GimpModule*, %struct._GimpModule** %module, align 8
  %load_inhibit8 = getelementptr inbounds %struct._GimpModule, %struct._GimpModule* %9, i32 0, i32 5
  %10 = load i32, i32* %load_inhibit8, align 4
  %tobool9 = icmp ne i32 %10, 0
  br i1 %tobool9, label %if.else.19, label %if.then.10

if.then.10:                                       ; preds = %do.end
  %11 = load %struct._GimpModule*, %struct._GimpModule** %module, align 8
  %12 = bitcast %struct._GimpModule* %11 to %struct._GTypeInstance*
  %call11 = call i64 @g_type_module_get_type() #7
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call11)
  %13 = bitcast %struct._GTypeInstance* %call12 to %struct._GTypeModule*
  %call13 = call i32 @gimp_module_load(%struct._GTypeModule* %13)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then.15, label %if.end.18

if.then.15:                                       ; preds = %if.then.10
  %14 = load %struct._GimpModule*, %struct._GimpModule** %module, align 8
  %15 = bitcast %struct._GimpModule* %14 to %struct._GTypeInstance*
  %call16 = call i64 @g_type_module_get_type() #7
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call16)
  %16 = bitcast %struct._GTypeInstance* %call17 to %struct._GTypeModule*
  call void @gimp_module_unload(%struct._GTypeModule* %16)
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.15, %if.then.10
  br label %if.end.24

if.else.19:                                       ; preds = %do.end
  %17 = load i32, i32* %verbose.addr, align 4
  %tobool20 = icmp ne i32 %17, 0
  br i1 %tobool20, label %if.then.21, label %if.end.23

if.then.21:                                       ; preds = %if.else.19
  %18 = load i8*, i8** %filename.addr, align 8
  %call22 = call i8* @gimp_filename_to_utf8(i8* %18)
  call void (i8*, ...) @g_print(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i32 0, i32 0), i8* %call22)
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.21, %if.else.19
  %19 = load %struct._GimpModule*, %struct._GimpModule** %module, align 8
  %state = getelementptr inbounds %struct._GimpModule, %struct._GimpModule* %19, i32 0, i32 3
  store i32 3, i32* %state, align 4
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %if.end.18
  %20 = load %struct._GimpModule*, %struct._GimpModule** %module, align 8
  store %struct._GimpModule* %20, %struct._GimpModule** %retval
  br label %return

return:                                           ; preds = %if.end.24, %if.else
  %21 = load %struct._GimpModule*, %struct._GimpModule** %retval
  ret %struct._GimpModule* %21
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare i8* @g_object_new(i64, i8*, ...) #1

declare noalias i8* @g_strdup(i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_module_load(%struct._GTypeModule* %module) #3 {
entry:
  %retval = alloca i32, align 4
  %module.addr = alloca %struct._GTypeModule*, align 8
  %gimp_module = alloca %struct._GimpModule*, align 8
  %func = alloca i8*, align 8
  store %struct._GTypeModule* %module, %struct._GTypeModule** %module.addr, align 8
  %0 = load %struct._GTypeModule*, %struct._GTypeModule** %module.addr, align 8
  %1 = bitcast %struct._GTypeModule* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_module_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpModule*
  store %struct._GimpModule* %2, %struct._GimpModule** %gimp_module, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %3 = load %struct._GimpModule*, %struct._GimpModule** %gimp_module, align 8
  %filename = getelementptr inbounds %struct._GimpModule, %struct._GimpModule* %3, i32 0, i32 1
  %4 = load i8*, i8** %filename, align 8
  %cmp = icmp ne i8* %4, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.gimp_module_load, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.19, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.2

do.body.2:                                        ; preds = %do.end
  %5 = load %struct._GimpModule*, %struct._GimpModule** %gimp_module, align 8
  %module3 = getelementptr inbounds %struct._GimpModule, %struct._GimpModule* %5, i32 0, i32 6
  %6 = load %struct._GModule*, %struct._GModule** %module3, align 8
  %cmp4 = icmp eq %struct._GModule* %6, null
  br i1 %cmp4, label %if.then.5, label %if.else.6

if.then.5:                                        ; preds = %do.body.2
  br label %if.end.7

if.else.6:                                        ; preds = %do.body.2
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.gimp_module_load, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.20, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.7:                                         ; preds = %if.then.5
  br label %do.end.8

do.end.8:                                         ; preds = %if.end.7
  %7 = load %struct._GimpModule*, %struct._GimpModule** %gimp_module, align 8
  %verbose = getelementptr inbounds %struct._GimpModule, %struct._GimpModule* %7, i32 0, i32 2
  %8 = load i32, i32* %verbose, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then.9, label %if.end.12

if.then.9:                                        ; preds = %do.end.8
  %9 = load %struct._GimpModule*, %struct._GimpModule** %gimp_module, align 8
  %filename10 = getelementptr inbounds %struct._GimpModule, %struct._GimpModule* %9, i32 0, i32 1
  %10 = load i8*, i8** %filename10, align 8
  %call11 = call i8* @gimp_filename_to_utf8(i8* %10)
  call void (i8*, ...) @g_print(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.21, i32 0, i32 0), i8* %call11)
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.9, %do.end.8
  %11 = load %struct._GimpModule*, %struct._GimpModule** %gimp_module, align 8
  %call13 = call i32 @gimp_module_open(%struct._GimpModule* %11)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.end.16, label %if.then.15

if.then.15:                                       ; preds = %if.end.12
  store i32 0, i32* %retval
  br label %return

if.end.16:                                        ; preds = %if.end.12
  %12 = load %struct._GimpModule*, %struct._GimpModule** %gimp_module, align 8
  %call17 = call i32 @gimp_module_query_module(%struct._GimpModule* %12)
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.end.20, label %if.then.19

if.then.19:                                       ; preds = %if.end.16
  store i32 0, i32* %retval
  br label %return

if.end.20:                                        ; preds = %if.end.16
  %13 = load %struct._GimpModule*, %struct._GimpModule** %gimp_module, align 8
  %module21 = getelementptr inbounds %struct._GimpModule, %struct._GimpModule* %13, i32 0, i32 6
  %14 = load %struct._GModule*, %struct._GModule** %module21, align 8
  %call22 = call i32 @g_module_symbol(%struct._GModule* %14, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.22, i32 0, i32 0), i8** %func)
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %if.end.29, label %if.then.24

if.then.24:                                       ; preds = %if.end.20
  %15 = load %struct._GimpModule*, %struct._GimpModule** %gimp_module, align 8
  call void @gimp_module_set_last_error(%struct._GimpModule* %15, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.23, i32 0, i32 0))
  %call25 = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i32 0, i32 0)) #6
  %16 = load %struct._GimpModule*, %struct._GimpModule** %gimp_module, align 8
  %filename26 = getelementptr inbounds %struct._GimpModule, %struct._GimpModule* %16, i32 0, i32 1
  %17 = load i8*, i8** %filename26, align 8
  %call27 = call i8* @gimp_filename_to_utf8(i8* %17)
  %18 = load %struct._GimpModule*, %struct._GimpModule** %gimp_module, align 8
  %last_module_error = getelementptr inbounds %struct._GimpModule, %struct._GimpModule* %18, i32 0, i32 8
  %19 = load i8*, i8** %last_module_error, align 8
  call void (i8*, ...) @g_message(i8* %call25, i8* %call27, i8* %19)
  %20 = load %struct._GimpModule*, %struct._GimpModule** %gimp_module, align 8
  %call28 = call i32 @gimp_module_close(%struct._GimpModule* %20)
  %21 = load %struct._GimpModule*, %struct._GimpModule** %gimp_module, align 8
  %state = getelementptr inbounds %struct._GimpModule, %struct._GimpModule* %21, i32 0, i32 3
  store i32 0, i32* %state, align 4
  store i32 0, i32* %retval
  br label %return

if.end.29:                                        ; preds = %if.end.20
  %22 = load i8*, i8** %func, align 8
  %23 = bitcast i8* %22 to i32 (%struct._GTypeModule*)*
  %24 = load %struct._GimpModule*, %struct._GimpModule** %gimp_module, align 8
  %register_module = getelementptr inbounds %struct._GimpModule, %struct._GimpModule* %24, i32 0, i32 10
  store i32 (%struct._GTypeModule*)* %23, i32 (%struct._GTypeModule*)** %register_module, align 8
  %25 = load %struct._GimpModule*, %struct._GimpModule** %gimp_module, align 8
  %register_module30 = getelementptr inbounds %struct._GimpModule, %struct._GimpModule* %25, i32 0, i32 10
  %26 = load i32 (%struct._GTypeModule*)*, i32 (%struct._GTypeModule*)** %register_module30, align 8
  %27 = load %struct._GTypeModule*, %struct._GTypeModule** %module.addr, align 8
  %call31 = call i32 %26(%struct._GTypeModule* %27)
  %tobool32 = icmp ne i32 %call31, 0
  br i1 %tobool32, label %if.end.40, label %if.then.33

if.then.33:                                       ; preds = %if.end.29
  %28 = load %struct._GimpModule*, %struct._GimpModule** %gimp_module, align 8
  call void @gimp_module_set_last_error(%struct._GimpModule* %28, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.24, i32 0, i32 0))
  %call34 = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i32 0, i32 0)) #6
  %29 = load %struct._GimpModule*, %struct._GimpModule** %gimp_module, align 8
  %filename35 = getelementptr inbounds %struct._GimpModule, %struct._GimpModule* %29, i32 0, i32 1
  %30 = load i8*, i8** %filename35, align 8
  %call36 = call i8* @gimp_filename_to_utf8(i8* %30)
  %31 = load %struct._GimpModule*, %struct._GimpModule** %gimp_module, align 8
  %last_module_error37 = getelementptr inbounds %struct._GimpModule, %struct._GimpModule* %31, i32 0, i32 8
  %32 = load i8*, i8** %last_module_error37, align 8
  call void (i8*, ...) @g_message(i8* %call34, i8* %call36, i8* %32)
  %33 = load %struct._GimpModule*, %struct._GimpModule** %gimp_module, align 8
  %call38 = call i32 @gimp_module_close(%struct._GimpModule* %33)
  %34 = load %struct._GimpModule*, %struct._GimpModule** %gimp_module, align 8
  %state39 = getelementptr inbounds %struct._GimpModule, %struct._GimpModule* %34, i32 0, i32 3
  store i32 2, i32* %state39, align 4
  store i32 0, i32* %retval
  br label %return

if.end.40:                                        ; preds = %if.end.29
  %35 = load %struct._GimpModule*, %struct._GimpModule** %gimp_module, align 8
  %state41 = getelementptr inbounds %struct._GimpModule, %struct._GimpModule* %35, i32 0, i32 3
  store i32 1, i32* %state41, align 4
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.40, %if.then.33, %if.then.24, %if.then.19, %if.then.15, %if.else.6, %if.else
  %36 = load i32, i32* %retval
  ret i32 %36
}

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_module_unload(%struct._GTypeModule* %module) #3 {
entry:
  %module.addr = alloca %struct._GTypeModule*, align 8
  %gimp_module = alloca %struct._GimpModule*, align 8
  store %struct._GTypeModule* %module, %struct._GTypeModule** %module.addr, align 8
  %0 = load %struct._GTypeModule*, %struct._GTypeModule** %module.addr, align 8
  %1 = bitcast %struct._GTypeModule* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_module_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpModule*
  store %struct._GimpModule* %2, %struct._GimpModule** %gimp_module, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %3 = load %struct._GimpModule*, %struct._GimpModule** %gimp_module, align 8
  %module2 = getelementptr inbounds %struct._GimpModule, %struct._GimpModule* %3, i32 0, i32 6
  %4 = load %struct._GModule*, %struct._GModule** %module2, align 8
  %cmp = icmp ne %struct._GModule* %4, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gimp_module_unload, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.25, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %5 = load %struct._GimpModule*, %struct._GimpModule** %gimp_module, align 8
  %verbose = getelementptr inbounds %struct._GimpModule, %struct._GimpModule* %5, i32 0, i32 2
  %6 = load i32, i32* %verbose, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %do.end
  %7 = load %struct._GimpModule*, %struct._GimpModule** %gimp_module, align 8
  %filename = getelementptr inbounds %struct._GimpModule, %struct._GimpModule* %7, i32 0, i32 1
  %8 = load i8*, i8** %filename, align 8
  %call4 = call i8* @gimp_filename_to_utf8(i8* %8)
  call void (i8*, ...) @g_print(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.26, i32 0, i32 0), i8* %call4)
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.3, %do.end
  %9 = load %struct._GimpModule*, %struct._GimpModule** %gimp_module, align 8
  %call6 = call i32 @gimp_module_close(%struct._GimpModule* %9)
  br label %return

return:                                           ; preds = %if.end.5, %if.else
  ret void
}

declare void @g_print(i8*, ...) #1

declare i8* @gimp_filename_to_utf8(i8*) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_module_query_module(%struct._GimpModule* %module) #3 {
entry:
  %retval = alloca i32, align 4
  %module.addr = alloca %struct._GimpModule*, align 8
  %info = alloca %struct._GimpModuleInfo*, align 8
  %close_module = alloca i32, align 4
  %func = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpModule* %module, %struct._GimpModule** %module.addr, align 8
  store i32 0, i32* %close_module, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpModule*, %struct._GimpModule** %module.addr, align 8
  %1 = bitcast %struct._GimpModule* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_module_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_module_query_module, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpModule*, %struct._GimpModule** %module.addr, align 8
  %module11 = getelementptr inbounds %struct._GimpModule, %struct._GimpModule* %13, i32 0, i32 6
  %14 = load %struct._GModule*, %struct._GModule** %module11, align 8
  %tobool12 = icmp ne %struct._GModule* %14, null
  br i1 %tobool12, label %if.end.18, label %if.then.13

if.then.13:                                       ; preds = %do.end
  %15 = load %struct._GimpModule*, %struct._GimpModule** %module.addr, align 8
  %call14 = call i32 @gimp_module_open(%struct._GimpModule* %15)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.end.17, label %if.then.16

if.then.16:                                       ; preds = %if.then.13
  store i32 0, i32* %retval
  br label %return

if.end.17:                                        ; preds = %if.then.13
  store i32 1, i32* %close_module, align 4
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %do.end
  %16 = load %struct._GimpModule*, %struct._GimpModule** %module.addr, align 8
  %module19 = getelementptr inbounds %struct._GimpModule, %struct._GimpModule* %16, i32 0, i32 6
  %17 = load %struct._GModule*, %struct._GModule** %module19, align 8
  %call20 = call i32 @g_module_symbol(%struct._GModule* %17, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i32 0, i32 0), i8** %func)
  %tobool21 = icmp ne i32 %call20, 0
  br i1 %tobool21, label %if.end.26, label %if.then.22

if.then.22:                                       ; preds = %if.end.18
  %18 = load %struct._GimpModule*, %struct._GimpModule** %module.addr, align 8
  call void @gimp_module_set_last_error(%struct._GimpModule* %18, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i32 0, i32 0))
  %call23 = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i32 0, i32 0)) #6
  %19 = load %struct._GimpModule*, %struct._GimpModule** %module.addr, align 8
  %filename = getelementptr inbounds %struct._GimpModule, %struct._GimpModule* %19, i32 0, i32 1
  %20 = load i8*, i8** %filename, align 8
  %call24 = call i8* @gimp_filename_to_utf8(i8* %20)
  %21 = load %struct._GimpModule*, %struct._GimpModule** %module.addr, align 8
  %last_module_error = getelementptr inbounds %struct._GimpModule, %struct._GimpModule* %21, i32 0, i32 8
  %22 = load i8*, i8** %last_module_error, align 8
  call void (i8*, ...) @g_message(i8* %call23, i8* %call24, i8* %22)
  %23 = load %struct._GimpModule*, %struct._GimpModule** %module.addr, align 8
  %call25 = call i32 @gimp_module_close(%struct._GimpModule* %23)
  %24 = load %struct._GimpModule*, %struct._GimpModule** %module.addr, align 8
  %state = getelementptr inbounds %struct._GimpModule, %struct._GimpModule* %24, i32 0, i32 3
  store i32 0, i32* %state, align 4
  store i32 0, i32* %retval
  br label %return

if.end.26:                                        ; preds = %if.end.18
  %25 = load i8*, i8** %func, align 8
  %26 = bitcast i8* %25 to %struct._GimpModuleInfo* (%struct._GTypeModule*)*
  %27 = load %struct._GimpModule*, %struct._GimpModule** %module.addr, align 8
  %query_module = getelementptr inbounds %struct._GimpModule, %struct._GimpModule* %27, i32 0, i32 9
  store %struct._GimpModuleInfo* (%struct._GTypeModule*)* %26, %struct._GimpModuleInfo* (%struct._GTypeModule*)** %query_module, align 8
  %28 = load %struct._GimpModule*, %struct._GimpModule** %module.addr, align 8
  %info27 = getelementptr inbounds %struct._GimpModule, %struct._GimpModule* %28, i32 0, i32 7
  %29 = load %struct._GimpModuleInfo*, %struct._GimpModuleInfo** %info27, align 8
  %tobool28 = icmp ne %struct._GimpModuleInfo* %29, null
  br i1 %tobool28, label %if.then.29, label %if.end.32

if.then.29:                                       ; preds = %if.end.26
  %30 = load %struct._GimpModule*, %struct._GimpModule** %module.addr, align 8
  %info30 = getelementptr inbounds %struct._GimpModule, %struct._GimpModule* %30, i32 0, i32 7
  %31 = load %struct._GimpModuleInfo*, %struct._GimpModuleInfo** %info30, align 8
  call void @gimp_module_info_free(%struct._GimpModuleInfo* %31)
  %32 = load %struct._GimpModule*, %struct._GimpModule** %module.addr, align 8
  %info31 = getelementptr inbounds %struct._GimpModule, %struct._GimpModule* %32, i32 0, i32 7
  store %struct._GimpModuleInfo* null, %struct._GimpModuleInfo** %info31, align 8
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.29, %if.end.26
  %33 = load %struct._GimpModule*, %struct._GimpModule** %module.addr, align 8
  %query_module33 = getelementptr inbounds %struct._GimpModule, %struct._GimpModule* %33, i32 0, i32 9
  %34 = load %struct._GimpModuleInfo* (%struct._GTypeModule*)*, %struct._GimpModuleInfo* (%struct._GTypeModule*)** %query_module33, align 8
  %35 = load %struct._GimpModule*, %struct._GimpModule** %module.addr, align 8
  %36 = bitcast %struct._GimpModule* %35 to %struct._GTypeInstance*
  %call34 = call i64 @g_type_module_get_type() #7
  %call35 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %36, i64 %call34)
  %37 = bitcast %struct._GTypeInstance* %call35 to %struct._GTypeModule*
  %call36 = call %struct._GimpModuleInfo* %34(%struct._GTypeModule* %37)
  store %struct._GimpModuleInfo* %call36, %struct._GimpModuleInfo** %info, align 8
  %38 = load %struct._GimpModuleInfo*, %struct._GimpModuleInfo** %info, align 8
  %tobool37 = icmp ne %struct._GimpModuleInfo* %38, null
  br i1 %tobool37, label %lor.lhs.false, label %if.then.39

lor.lhs.false:                                    ; preds = %if.end.32
  %39 = load %struct._GimpModuleInfo*, %struct._GimpModuleInfo** %info, align 8
  %abi_version = getelementptr inbounds %struct._GimpModuleInfo, %struct._GimpModuleInfo* %39, i32 0, i32 0
  %40 = load i32, i32* %abi_version, align 4
  %cmp38 = icmp ne i32 %40, 4
  br i1 %cmp38, label %if.then.39, label %if.end.47

if.then.39:                                       ; preds = %lor.lhs.false, %if.end.32
  %41 = load %struct._GimpModule*, %struct._GimpModule** %module.addr, align 8
  %42 = load %struct._GimpModuleInfo*, %struct._GimpModuleInfo** %info, align 8
  %tobool40 = icmp ne %struct._GimpModuleInfo* %42, null
  %cond = select i1 %tobool40, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i32 0, i32 0)
  call void @gimp_module_set_last_error(%struct._GimpModule* %41, i8* %cond)
  %call41 = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i32 0, i32 0)) #6
  %43 = load %struct._GimpModule*, %struct._GimpModule** %module.addr, align 8
  %filename42 = getelementptr inbounds %struct._GimpModule, %struct._GimpModule* %43, i32 0, i32 1
  %44 = load i8*, i8** %filename42, align 8
  %call43 = call i8* @gimp_filename_to_utf8(i8* %44)
  %45 = load %struct._GimpModule*, %struct._GimpModule** %module.addr, align 8
  %last_module_error44 = getelementptr inbounds %struct._GimpModule, %struct._GimpModule* %45, i32 0, i32 8
  %46 = load i8*, i8** %last_module_error44, align 8
  call void (i8*, ...) @g_message(i8* %call41, i8* %call43, i8* %46)
  %47 = load %struct._GimpModule*, %struct._GimpModule** %module.addr, align 8
  %call45 = call i32 @gimp_module_close(%struct._GimpModule* %47)
  %48 = load %struct._GimpModule*, %struct._GimpModule** %module.addr, align 8
  %state46 = getelementptr inbounds %struct._GimpModule, %struct._GimpModule* %48, i32 0, i32 3
  store i32 0, i32* %state46, align 4
  store i32 0, i32* %retval
  br label %return

if.end.47:                                        ; preds = %lor.lhs.false
  %49 = load %struct._GimpModuleInfo*, %struct._GimpModuleInfo** %info, align 8
  %call48 = call %struct._GimpModuleInfo* @gimp_module_info_copy(%struct._GimpModuleInfo* %49)
  %50 = load %struct._GimpModule*, %struct._GimpModule** %module.addr, align 8
  %info49 = getelementptr inbounds %struct._GimpModule, %struct._GimpModule* %50, i32 0, i32 7
  store %struct._GimpModuleInfo* %call48, %struct._GimpModuleInfo** %info49, align 8
  %51 = load i32, i32* %close_module, align 4
  %tobool50 = icmp ne i32 %51, 0
  br i1 %tobool50, label %if.then.51, label %if.end.53

if.then.51:                                       ; preds = %if.end.47
  %52 = load %struct._GimpModule*, %struct._GimpModule** %module.addr, align 8
  %call52 = call i32 @gimp_module_close(%struct._GimpModule* %52)
  store i32 %call52, i32* %retval
  br label %return

if.end.53:                                        ; preds = %if.end.47
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.53, %if.then.51, %if.then.39, %if.then.22, %if.then.16, %if.else.9
  %53 = load i32, i32* %retval
  ret i32 %53
}

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

; Function Attrs: nounwind uwtable
define internal i32 @gimp_module_open(%struct._GimpModule* %module) #3 {
entry:
  %retval = alloca i32, align 4
  %module.addr = alloca %struct._GimpModule*, align 8
  store %struct._GimpModule* %module, %struct._GimpModule** %module.addr, align 8
  %0 = load %struct._GimpModule*, %struct._GimpModule** %module.addr, align 8
  %filename = getelementptr inbounds %struct._GimpModule, %struct._GimpModule* %0, i32 0, i32 1
  %1 = load i8*, i8** %filename, align 8
  %call = call %struct._GModule* @g_module_open(i8* %1, i32 0)
  %2 = load %struct._GimpModule*, %struct._GimpModule** %module.addr, align 8
  %module1 = getelementptr inbounds %struct._GimpModule, %struct._GimpModule* %2, i32 0, i32 6
  store %struct._GModule* %call, %struct._GModule** %module1, align 8
  %3 = load %struct._GimpModule*, %struct._GimpModule** %module.addr, align 8
  %module2 = getelementptr inbounds %struct._GimpModule, %struct._GimpModule* %3, i32 0, i32 6
  %4 = load %struct._GModule*, %struct._GModule** %module2, align 8
  %tobool = icmp ne %struct._GModule* %4, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpModule*, %struct._GimpModule** %module.addr, align 8
  %state = getelementptr inbounds %struct._GimpModule, %struct._GimpModule* %5, i32 0, i32 3
  store i32 0, i32* %state, align 4
  %6 = load %struct._GimpModule*, %struct._GimpModule** %module.addr, align 8
  %call3 = call i8* @g_module_error()
  call void @gimp_module_set_last_error(%struct._GimpModule* %6, i8* %call3)
  %call4 = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i32 0, i32 0)) #6
  %7 = load %struct._GimpModule*, %struct._GimpModule** %module.addr, align 8
  %filename5 = getelementptr inbounds %struct._GimpModule, %struct._GimpModule* %7, i32 0, i32 1
  %8 = load i8*, i8** %filename5, align 8
  %call6 = call i8* @gimp_filename_to_utf8(i8* %8)
  %9 = load %struct._GimpModule*, %struct._GimpModule** %module.addr, align 8
  %last_module_error = getelementptr inbounds %struct._GimpModule, %struct._GimpModule* %9, i32 0, i32 8
  %10 = load i8*, i8** %last_module_error, align 8
  call void (i8*, ...) @g_message(i8* %call4, i8* %call6, i8* %10)
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %11 = load i32, i32* %retval
  ret i32 %11
}

declare i32 @g_module_symbol(%struct._GModule*, i8*, i8**) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_module_set_last_error(%struct._GimpModule* %module, i8* %error_str) #3 {
entry:
  %module.addr = alloca %struct._GimpModule*, align 8
  %error_str.addr = alloca i8*, align 8
  store %struct._GimpModule* %module, %struct._GimpModule** %module.addr, align 8
  store i8* %error_str, i8** %error_str.addr, align 8
  %0 = load %struct._GimpModule*, %struct._GimpModule** %module.addr, align 8
  %last_module_error = getelementptr inbounds %struct._GimpModule, %struct._GimpModule* %0, i32 0, i32 8
  %1 = load i8*, i8** %last_module_error, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._GimpModule*, %struct._GimpModule** %module.addr, align 8
  %last_module_error1 = getelementptr inbounds %struct._GimpModule, %struct._GimpModule* %2, i32 0, i32 8
  %3 = load i8*, i8** %last_module_error1, align 8
  call void @g_free(i8* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i8*, i8** %error_str.addr, align 8
  %call = call noalias i8* @g_strdup(i8* %4)
  %5 = load %struct._GimpModule*, %struct._GimpModule** %module.addr, align 8
  %last_module_error2 = getelementptr inbounds %struct._GimpModule, %struct._GimpModule* %5, i32 0, i32 8
  store i8* %call, i8** %last_module_error2, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @g_message(i8* %format, ...) #3 {
entry:
  %format.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %format, i8** %format.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i8*, i8** %format.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  call void @g_logv(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 32, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

; Function Attrs: nounwind
declare i8* @dgettext(i8*, i8*) #5

; Function Attrs: nounwind uwtable
define internal i32 @gimp_module_close(%struct._GimpModule* %module) #3 {
entry:
  %module.addr = alloca %struct._GimpModule*, align 8
  store %struct._GimpModule* %module, %struct._GimpModule** %module.addr, align 8
  %0 = load %struct._GimpModule*, %struct._GimpModule** %module.addr, align 8
  %module1 = getelementptr inbounds %struct._GimpModule, %struct._GimpModule* %0, i32 0, i32 6
  %1 = load %struct._GModule*, %struct._GModule** %module1, align 8
  %call = call i32 @g_module_close(%struct._GModule* %1)
  %2 = load %struct._GimpModule*, %struct._GimpModule** %module.addr, align 8
  %module2 = getelementptr inbounds %struct._GimpModule, %struct._GimpModule* %2, i32 0, i32 6
  store %struct._GModule* null, %struct._GModule** %module2, align 8
  %3 = load %struct._GimpModule*, %struct._GimpModule** %module.addr, align 8
  %query_module = getelementptr inbounds %struct._GimpModule, %struct._GimpModule* %3, i32 0, i32 9
  store %struct._GimpModuleInfo* (%struct._GTypeModule*)* null, %struct._GimpModuleInfo* (%struct._GTypeModule*)** %query_module, align 8
  %4 = load %struct._GimpModule*, %struct._GimpModule** %module.addr, align 8
  %register_module = getelementptr inbounds %struct._GimpModule, %struct._GimpModule* %4, i32 0, i32 10
  store i32 (%struct._GTypeModule*)* null, i32 (%struct._GTypeModule*)** %register_module, align 8
  %5 = load %struct._GimpModule*, %struct._GimpModule** %module.addr, align 8
  %state = getelementptr inbounds %struct._GimpModule, %struct._GimpModule* %5, i32 0, i32 3
  store i32 3, i32* %state, align 4
  ret i32 1
}

; Function Attrs: nounwind uwtable
define void @gimp_module_info_free(%struct._GimpModuleInfo* %info) #3 {
entry:
  %info.addr = alloca %struct._GimpModuleInfo*, align 8
  store %struct._GimpModuleInfo* %info, %struct._GimpModuleInfo** %info.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpModuleInfo*, %struct._GimpModuleInfo** %info.addr, align 8
  %cmp = icmp ne %struct._GimpModuleInfo* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_module_info_free, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i32 0, i32 0))
  br label %do.end.2

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load %struct._GimpModuleInfo*, %struct._GimpModuleInfo** %info.addr, align 8
  %purpose = getelementptr inbounds %struct._GimpModuleInfo, %struct._GimpModuleInfo* %1, i32 0, i32 1
  %2 = load i8*, i8** %purpose, align 8
  call void @g_free(i8* %2)
  %3 = load %struct._GimpModuleInfo*, %struct._GimpModuleInfo** %info.addr, align 8
  %author = getelementptr inbounds %struct._GimpModuleInfo, %struct._GimpModuleInfo* %3, i32 0, i32 2
  %4 = load i8*, i8** %author, align 8
  call void @g_free(i8* %4)
  %5 = load %struct._GimpModuleInfo*, %struct._GimpModuleInfo** %info.addr, align 8
  %version = getelementptr inbounds %struct._GimpModuleInfo, %struct._GimpModuleInfo* %5, i32 0, i32 3
  %6 = load i8*, i8** %version, align 8
  call void @g_free(i8* %6)
  %7 = load %struct._GimpModuleInfo*, %struct._GimpModuleInfo** %info.addr, align 8
  %copyright = getelementptr inbounds %struct._GimpModuleInfo, %struct._GimpModuleInfo* %7, i32 0, i32 4
  %8 = load i8*, i8** %copyright, align 8
  call void @g_free(i8* %8)
  %9 = load %struct._GimpModuleInfo*, %struct._GimpModuleInfo** %info.addr, align 8
  %date = getelementptr inbounds %struct._GimpModuleInfo, %struct._GimpModuleInfo* %9, i32 0, i32 5
  %10 = load i8*, i8** %date, align 8
  call void @g_free(i8* %10)
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %11 = load %struct._GimpModuleInfo*, %struct._GimpModuleInfo** %info.addr, align 8
  %12 = bitcast %struct._GimpModuleInfo* %11 to i8*
  call void @g_slice_free1(i64 48, i8* %12)
  br label %do.end.2

do.end.2:                                         ; preds = %if.else, %do.body.1
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._GimpModuleInfo* @gimp_module_info_copy(%struct._GimpModuleInfo* %info) #3 {
entry:
  %retval = alloca %struct._GimpModuleInfo*, align 8
  %info.addr = alloca %struct._GimpModuleInfo*, align 8
  store %struct._GimpModuleInfo* %info, %struct._GimpModuleInfo** %info.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpModuleInfo*, %struct._GimpModuleInfo** %info.addr, align 8
  %cmp = icmp ne %struct._GimpModuleInfo* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_module_info_copy, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i32 0, i32 0))
  store %struct._GimpModuleInfo* null, %struct._GimpModuleInfo** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load %struct._GimpModuleInfo*, %struct._GimpModuleInfo** %info.addr, align 8
  %abi_version = getelementptr inbounds %struct._GimpModuleInfo, %struct._GimpModuleInfo* %1, i32 0, i32 0
  %2 = load i32, i32* %abi_version, align 4
  %3 = load %struct._GimpModuleInfo*, %struct._GimpModuleInfo** %info.addr, align 8
  %purpose = getelementptr inbounds %struct._GimpModuleInfo, %struct._GimpModuleInfo* %3, i32 0, i32 1
  %4 = load i8*, i8** %purpose, align 8
  %5 = load %struct._GimpModuleInfo*, %struct._GimpModuleInfo** %info.addr, align 8
  %author = getelementptr inbounds %struct._GimpModuleInfo, %struct._GimpModuleInfo* %5, i32 0, i32 2
  %6 = load i8*, i8** %author, align 8
  %7 = load %struct._GimpModuleInfo*, %struct._GimpModuleInfo** %info.addr, align 8
  %version = getelementptr inbounds %struct._GimpModuleInfo, %struct._GimpModuleInfo* %7, i32 0, i32 3
  %8 = load i8*, i8** %version, align 8
  %9 = load %struct._GimpModuleInfo*, %struct._GimpModuleInfo** %info.addr, align 8
  %copyright = getelementptr inbounds %struct._GimpModuleInfo, %struct._GimpModuleInfo* %9, i32 0, i32 4
  %10 = load i8*, i8** %copyright, align 8
  %11 = load %struct._GimpModuleInfo*, %struct._GimpModuleInfo** %info.addr, align 8
  %date = getelementptr inbounds %struct._GimpModuleInfo, %struct._GimpModuleInfo* %11, i32 0, i32 5
  %12 = load i8*, i8** %date, align 8
  %call = call %struct._GimpModuleInfo* @gimp_module_info_new(i32 %2, i8* %4, i8* %6, i8* %8, i8* %10, i8* %12)
  store %struct._GimpModuleInfo* %call, %struct._GimpModuleInfo** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else
  %13 = load %struct._GimpModuleInfo*, %struct._GimpModuleInfo** %retval
  ret %struct._GimpModuleInfo* %13
}

; Function Attrs: nounwind uwtable
define void @gimp_module_modified(%struct._GimpModule* %module) #3 {
entry:
  %module.addr = alloca %struct._GimpModule*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpModule* %module, %struct._GimpModule** %module.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpModule*, %struct._GimpModule** %module.addr, align 8
  %1 = bitcast %struct._GimpModule* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_module_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_module_modified, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpModule*, %struct._GimpModule** %module.addr, align 8
  %14 = bitcast %struct._GimpModule* %13 to i8*
  %15 = load i32, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @module_signals, i32 0, i64 0), align 4
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %14, i32 %15, i32 0)
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

declare void @g_signal_emit(i8*, i32, i32, ...) #1

; Function Attrs: nounwind uwtable
define void @gimp_module_set_load_inhibit(%struct._GimpModule* %module, i32 %load_inhibit) #3 {
entry:
  %module.addr = alloca %struct._GimpModule*, align 8
  %load_inhibit.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpModule* %module, %struct._GimpModule** %module.addr, align 8
  store i32 %load_inhibit, i32* %load_inhibit.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpModule*, %struct._GimpModule** %module.addr, align 8
  %1 = bitcast %struct._GimpModule* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_module_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_module_set_load_inhibit, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.16

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load i32, i32* %load_inhibit.addr, align 4
  %14 = load %struct._GimpModule*, %struct._GimpModule** %module.addr, align 8
  %load_inhibit11 = getelementptr inbounds %struct._GimpModule, %struct._GimpModule* %14, i32 0, i32 5
  %15 = load i32, i32* %load_inhibit11, align 4
  %cmp12 = icmp ne i32 %13, %15
  br i1 %cmp12, label %if.then.13, label %if.end.16

if.then.13:                                       ; preds = %do.end
  %16 = load i32, i32* %load_inhibit.addr, align 4
  %tobool14 = icmp ne i32 %16, 0
  %cond = select i1 %tobool14, i32 1, i32 0
  %17 = load %struct._GimpModule*, %struct._GimpModule** %module.addr, align 8
  %load_inhibit15 = getelementptr inbounds %struct._GimpModule, %struct._GimpModule* %17, i32 0, i32 5
  store i32 %cond, i32* %load_inhibit15, align 4
  %18 = load %struct._GimpModule*, %struct._GimpModule** %module.addr, align 8
  call void @gimp_module_modified(%struct._GimpModule* %18)
  br label %if.end.16

if.end.16:                                        ; preds = %if.else.9, %if.then.13, %do.end
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @gimp_module_state_name(i32 %state) #3 {
entry:
  %retval = alloca i8*, align 8
  %state.addr = alloca i32, align 4
  store i32 %state, i32* %state.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i32, i32* %state.addr, align 4
  %cmp = icmp uge i32 %0, 0
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %do.body
  %1 = load i32, i32* %state.addr, align 4
  %cmp1 = icmp ule i32 %1, 3
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_module_state_name, i32 0, i32 0), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.15, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %2 = load i32, i32* %state.addr, align 4
  %idxprom = zext i32 %2 to i64
  %arrayidx = getelementptr inbounds [4 x i8*], [4 x i8*]* @gimp_module_state_name.statenames, i32 0, i64 %idxprom
  %3 = load i8*, i8** %arrayidx, align 8
  %call = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0), i8* %3) #6
  store i8* %call, i8** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else
  %4 = load i8*, i8** %retval
  ret i8* %4
}

; Function Attrs: nounwind uwtable
define i64 @gimp_module_register_enum(%struct._GTypeModule* %module, i8* %name, %struct._GEnumValue* %const_static_values) #3 {
entry:
  %module.addr = alloca %struct._GTypeModule*, align 8
  %name.addr = alloca i8*, align 8
  %const_static_values.addr = alloca %struct._GEnumValue*, align 8
  store %struct._GTypeModule* %module, %struct._GTypeModule** %module.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store %struct._GEnumValue* %const_static_values, %struct._GEnumValue** %const_static_values.addr, align 8
  %0 = load %struct._GTypeModule*, %struct._GTypeModule** %module.addr, align 8
  %1 = load i8*, i8** %name.addr, align 8
  %2 = load %struct._GEnumValue*, %struct._GEnumValue** %const_static_values.addr, align 8
  %call = call i64 @g_type_module_register_enum(%struct._GTypeModule* %0, i8* %1, %struct._GEnumValue* %2)
  ret i64 %call
}

declare i64 @g_type_module_register_enum(%struct._GTypeModule*, i8*, %struct._GEnumValue*) #1

; Function Attrs: nounwind readnone uwtable
define i32 @gimp_module_error_quark() #0 {
entry:
  %call = call i32 @g_quark_from_static_string(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i32 0, i32 0))
  ret i32 %call
}

declare i32 @g_quark_from_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define %struct._GimpModuleInfo* @gimp_module_info_new(i32 %abi_version, i8* %purpose, i8* %author, i8* %version, i8* %copyright, i8* %date) #3 {
entry:
  %abi_version.addr = alloca i32, align 4
  %purpose.addr = alloca i8*, align 8
  %author.addr = alloca i8*, align 8
  %version.addr = alloca i8*, align 8
  %copyright.addr = alloca i8*, align 8
  %date.addr = alloca i8*, align 8
  %info = alloca %struct._GimpModuleInfo*, align 8
  store i32 %abi_version, i32* %abi_version.addr, align 4
  store i8* %purpose, i8** %purpose.addr, align 8
  store i8* %author, i8** %author.addr, align 8
  store i8* %version, i8** %version.addr, align 8
  store i8* %copyright, i8** %copyright.addr, align 8
  store i8* %date, i8** %date.addr, align 8
  %call = call noalias i8* @g_slice_alloc0(i64 48)
  %0 = bitcast i8* %call to %struct._GimpModuleInfo*
  store %struct._GimpModuleInfo* %0, %struct._GimpModuleInfo** %info, align 8
  %1 = load i32, i32* %abi_version.addr, align 4
  %2 = load %struct._GimpModuleInfo*, %struct._GimpModuleInfo** %info, align 8
  %abi_version1 = getelementptr inbounds %struct._GimpModuleInfo, %struct._GimpModuleInfo* %2, i32 0, i32 0
  store i32 %1, i32* %abi_version1, align 4
  %3 = load i8*, i8** %purpose.addr, align 8
  %call2 = call noalias i8* @g_strdup(i8* %3)
  %4 = load %struct._GimpModuleInfo*, %struct._GimpModuleInfo** %info, align 8
  %purpose3 = getelementptr inbounds %struct._GimpModuleInfo, %struct._GimpModuleInfo* %4, i32 0, i32 1
  store i8* %call2, i8** %purpose3, align 8
  %5 = load i8*, i8** %author.addr, align 8
  %call4 = call noalias i8* @g_strdup(i8* %5)
  %6 = load %struct._GimpModuleInfo*, %struct._GimpModuleInfo** %info, align 8
  %author5 = getelementptr inbounds %struct._GimpModuleInfo, %struct._GimpModuleInfo* %6, i32 0, i32 2
  store i8* %call4, i8** %author5, align 8
  %7 = load i8*, i8** %version.addr, align 8
  %call6 = call noalias i8* @g_strdup(i8* %7)
  %8 = load %struct._GimpModuleInfo*, %struct._GimpModuleInfo** %info, align 8
  %version7 = getelementptr inbounds %struct._GimpModuleInfo, %struct._GimpModuleInfo* %8, i32 0, i32 3
  store i8* %call6, i8** %version7, align 8
  %9 = load i8*, i8** %copyright.addr, align 8
  %call8 = call noalias i8* @g_strdup(i8* %9)
  %10 = load %struct._GimpModuleInfo*, %struct._GimpModuleInfo** %info, align 8
  %copyright9 = getelementptr inbounds %struct._GimpModuleInfo, %struct._GimpModuleInfo* %10, i32 0, i32 4
  store i8* %call8, i8** %copyright9, align 8
  %11 = load i8*, i8** %date.addr, align 8
  %call10 = call noalias i8* @g_strdup(i8* %11)
  %12 = load %struct._GimpModuleInfo*, %struct._GimpModuleInfo** %info, align 8
  %date11 = getelementptr inbounds %struct._GimpModuleInfo, %struct._GimpModuleInfo* %12, i32 0, i32 5
  store i8* %call10, i8** %date11, align 8
  %13 = load %struct._GimpModuleInfo*, %struct._GimpModuleInfo** %info, align 8
  ret %struct._GimpModuleInfo* %13
}

declare noalias i8* @g_slice_alloc0(i64) #1

declare void @g_free(i8*) #1

declare void @g_slice_free1(i64, i8*) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_module_class_init(%struct._GimpModuleClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpModuleClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %module_class = alloca %struct._GTypeModuleClass*, align 8
  store %struct._GimpModuleClass* %klass, %struct._GimpModuleClass** %klass.addr, align 8
  %0 = load %struct._GimpModuleClass*, %struct._GimpModuleClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpModuleClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpModuleClass*, %struct._GimpModuleClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpModuleClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @g_type_module_get_type() #7
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GTypeModuleClass*
  store %struct._GTypeModuleClass* %5, %struct._GTypeModuleClass** %module_class, align 8
  %6 = load %struct._GimpModuleClass*, %struct._GimpModuleClass** %klass.addr, align 8
  %7 = bitcast %struct._GimpModuleClass* %6 to %struct._GTypeClass*
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %7, i32 0, i32 0
  %8 = load i64, i64* %g_type, align 8
  %call3 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i32 0, i32 0), i64 %8, i32 1, i32 184, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @g_cclosure_marshal_VOID__VOID, i64 4, i32 0)
  store i32 %call3, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @module_signals, i32 0, i64 0), align 4
  %9 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %9, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_module_finalize, void (%struct._GObject*)** %finalize, align 8
  %10 = load %struct._GTypeModuleClass*, %struct._GTypeModuleClass** %module_class, align 8
  %load = getelementptr inbounds %struct._GTypeModuleClass, %struct._GTypeModuleClass* %10, i32 0, i32 1
  store i32 (%struct._GTypeModule*)* @gimp_module_load, i32 (%struct._GTypeModule*)** %load, align 8
  %11 = load %struct._GTypeModuleClass*, %struct._GTypeModuleClass** %module_class, align 8
  %unload = getelementptr inbounds %struct._GTypeModuleClass, %struct._GTypeModuleClass* %11, i32 0, i32 2
  store void (%struct._GTypeModule*)* @gimp_module_unload, void (%struct._GTypeModule*)** %unload, align 8
  %12 = load %struct._GimpModuleClass*, %struct._GimpModuleClass** %klass.addr, align 8
  %modified = getelementptr inbounds %struct._GimpModuleClass, %struct._GimpModuleClass* %12, i32 0, i32 1
  store void (%struct._GimpModule*)* null, void (%struct._GimpModule*)** %modified, align 8
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

declare i32 @g_signal_new(i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) #1

declare void @g_cclosure_marshal_VOID__VOID(%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_module_finalize(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %module = alloca %struct._GimpModule*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_module_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpModule*
  store %struct._GimpModule* %2, %struct._GimpModule** %module, align 8
  %3 = load %struct._GimpModule*, %struct._GimpModule** %module, align 8
  %info = getelementptr inbounds %struct._GimpModule, %struct._GimpModule* %3, i32 0, i32 7
  %4 = load %struct._GimpModuleInfo*, %struct._GimpModuleInfo** %info, align 8
  %tobool = icmp ne %struct._GimpModuleInfo* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpModule*, %struct._GimpModule** %module, align 8
  %info2 = getelementptr inbounds %struct._GimpModule, %struct._GimpModule* %5, i32 0, i32 7
  %6 = load %struct._GimpModuleInfo*, %struct._GimpModuleInfo** %info2, align 8
  call void @gimp_module_info_free(%struct._GimpModuleInfo* %6)
  %7 = load %struct._GimpModule*, %struct._GimpModule** %module, align 8
  %info3 = getelementptr inbounds %struct._GimpModule, %struct._GimpModule* %7, i32 0, i32 7
  store %struct._GimpModuleInfo* null, %struct._GimpModuleInfo** %info3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct._GimpModule*, %struct._GimpModule** %module, align 8
  %last_module_error = getelementptr inbounds %struct._GimpModule, %struct._GimpModule* %8, i32 0, i32 8
  %9 = load i8*, i8** %last_module_error, align 8
  %tobool4 = icmp ne i8* %9, null
  br i1 %tobool4, label %if.then.5, label %if.end.8

if.then.5:                                        ; preds = %if.end
  %10 = load %struct._GimpModule*, %struct._GimpModule** %module, align 8
  %last_module_error6 = getelementptr inbounds %struct._GimpModule, %struct._GimpModule* %10, i32 0, i32 8
  %11 = load i8*, i8** %last_module_error6, align 8
  call void @g_free(i8* %11)
  %12 = load %struct._GimpModule*, %struct._GimpModule** %module, align 8
  %last_module_error7 = getelementptr inbounds %struct._GimpModule, %struct._GimpModule* %12, i32 0, i32 8
  store i8* null, i8** %last_module_error7, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.5, %if.end
  %13 = load %struct._GimpModule*, %struct._GimpModule** %module, align 8
  %filename = getelementptr inbounds %struct._GimpModule, %struct._GimpModule* %13, i32 0, i32 1
  %14 = load i8*, i8** %filename, align 8
  %tobool9 = icmp ne i8* %14, null
  br i1 %tobool9, label %if.then.10, label %if.end.13

if.then.10:                                       ; preds = %if.end.8
  %15 = load %struct._GimpModule*, %struct._GimpModule** %module, align 8
  %filename11 = getelementptr inbounds %struct._GimpModule, %struct._GimpModule* %15, i32 0, i32 1
  %16 = load i8*, i8** %filename11, align 8
  call void @g_free(i8* %16)
  %17 = load %struct._GimpModule*, %struct._GimpModule** %module, align 8
  %filename12 = getelementptr inbounds %struct._GimpModule, %struct._GimpModule* %17, i32 0, i32 1
  store i8* null, i8** %filename12, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.10, %if.end.8
  %18 = load i8*, i8** @gimp_module_parent_class, align 8
  %19 = bitcast i8* %18 to %struct._GTypeClass*
  %call14 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %19, i64 80)
  %20 = bitcast %struct._GTypeClass* %call14 to %struct._GObjectClass*
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %20, i32 0, i32 6
  %21 = load void (%struct._GObject*)*, void (%struct._GObject*)** %finalize, align 8
  %22 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %21(%struct._GObject* %22)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #6

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #6

declare %struct._GModule* @g_module_open(i8*, i32) #1

declare i8* @g_module_error() #1

declare i32 @g_module_close(%struct._GModule*) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readnone }
attributes #8 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
