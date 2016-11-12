; ModuleID = './libgimpmodule/gimpmoduledb.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpModuleDBClass = type { %struct._GObjectClass, void (%struct._GimpModuleDB*, %struct._GimpModule*)*, void (%struct._GimpModuleDB*, %struct._GimpModule*)*, void (%struct._GimpModuleDB*, %struct._GimpModule*)*, void ()*, void ()*, void ()*, void ()* }
%struct._GObjectClass = type { %struct._GTypeClass, %struct._GSList*, %struct._GObject* (i64, i32, %struct._GObjectConstructParam*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*)*, void (%struct._GObject*)*, void (%struct._GObject*, i32, %struct._GParamSpec**)*, void (%struct._GObject*, %struct._GParamSpec*)*, void (%struct._GObject*)*, i64, [6 x i8*] }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GData = type opaque
%struct._GObjectConstructParam = type { %struct._GParamSpec*, %struct._GValue* }
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GimpModuleDB = type { %struct._GObject, %struct._GList*, i8*, i32 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpModule = type { %struct._GTypeModule, i8*, i32, i32, i32, i32, %struct._GModule*, %struct._GimpModuleInfo*, i8*, %struct._GimpModuleInfo* (%struct._GTypeModule*)*, i32 (%struct._GTypeModule*)* }
%struct._GTypeModule = type { %struct._GObject, i32, %struct._GSList*, %struct._GSList*, i8* }
%struct._GModule = type opaque
%struct._GimpModuleInfo = type { i32, i8*, i8*, i8*, i8*, i8* }
%struct._GimpDatafileData = type { i8*, i8*, i8*, i64, i64, i64 }
%struct._GClosure = type { i32, {}*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, void (i8*, %struct._GClosure*)* }
%struct._GSignalInvocationHint = type { i32, i32, i32 }

@gimp_module_db_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"GimpModuleDB\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"LibGimpModule\00", align 1
@__func__.gimp_module_db_set_load_inhibit = private unnamed_addr constant [32 x i8] c"gimp_module_db_set_load_inhibit\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"GIMP_IS_MODULE_DB (db)\00", align 1
@__func__.gimp_module_db_get_load_inhibit = private unnamed_addr constant [32 x i8] c"gimp_module_db_get_load_inhibit\00", align 1
@__func__.gimp_module_db_load = private unnamed_addr constant [20 x i8] c"gimp_module_db_load\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"module_path != NULL\00", align 1
@__func__.gimp_module_db_refresh = private unnamed_addr constant [23 x i8] c"gimp_module_db_refresh\00", align 1
@gimp_module_db_parent_class = internal global i8* null, align 8
@GimpModuleDB_private_offset = internal global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@db_signals = internal global [3 x i32] zeroinitializer, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"remove\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"module-modified\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c".so\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"modified\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_module_db_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_module_db_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_module_db_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0))
  %call6 = call i64 @g_type_register_static_simple(i64 80, i8* %call5, i32 192, void (i8*, i8*)* bitcast (void (i8*)* @gimp_module_db_class_intern_init to void (i8*, i8*)*), i32 48, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpModuleDB*)* @gimp_module_db_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call6, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_module_db_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_module_db_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_module_db_class_intern_init(i8* %klass) #2 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_module_db_parent_class, align 8
  %1 = load i32, i32* @GimpModuleDB_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpModuleDB_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpModuleDBClass*
  call void @gimp_module_db_class_init(%struct._GimpModuleDBClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_module_db_init(%struct._GimpModuleDB* %db) #2 {
entry:
  %db.addr = alloca %struct._GimpModuleDB*, align 8
  store %struct._GimpModuleDB* %db, %struct._GimpModuleDB** %db.addr, align 8
  %0 = load %struct._GimpModuleDB*, %struct._GimpModuleDB** %db.addr, align 8
  %modules = getelementptr inbounds %struct._GimpModuleDB, %struct._GimpModuleDB* %0, i32 0, i32 1
  store %struct._GList* null, %struct._GList** %modules, align 8
  %1 = load %struct._GimpModuleDB*, %struct._GimpModuleDB** %db.addr, align 8
  %load_inhibit = getelementptr inbounds %struct._GimpModuleDB, %struct._GimpModuleDB* %1, i32 0, i32 2
  store i8* null, i8** %load_inhibit, align 8
  %2 = load %struct._GimpModuleDB*, %struct._GimpModuleDB** %db.addr, align 8
  %verbose = getelementptr inbounds %struct._GimpModuleDB, %struct._GimpModuleDB* %2, i32 0, i32 3
  store i32 0, i32* %verbose, align 4
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GimpModuleDB* @gimp_module_db_new(i32 %verbose) #2 {
entry:
  %verbose.addr = alloca i32, align 4
  %db = alloca %struct._GimpModuleDB*, align 8
  store i32 %verbose, i32* %verbose.addr, align 4
  %call = call i64 @gimp_module_db_get_type() #5
  %call1 = call i8* (i64, i8*, ...) @g_object_new(i64 %call, i8* null)
  %0 = bitcast i8* %call1 to %struct._GimpModuleDB*
  store %struct._GimpModuleDB* %0, %struct._GimpModuleDB** %db, align 8
  %1 = load i32, i32* %verbose.addr, align 4
  %tobool = icmp ne i32 %1, 0
  %cond = select i1 %tobool, i32 1, i32 0
  %2 = load %struct._GimpModuleDB*, %struct._GimpModuleDB** %db, align 8
  %verbose2 = getelementptr inbounds %struct._GimpModuleDB, %struct._GimpModuleDB* %2, i32 0, i32 3
  store i32 %cond, i32* %verbose2, align 4
  %3 = load %struct._GimpModuleDB*, %struct._GimpModuleDB** %db, align 8
  ret %struct._GimpModuleDB* %3
}

declare i8* @g_object_new(i64, i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @gimp_module_db_set_load_inhibit(%struct._GimpModuleDB* %db, i8* %load_inhibit) #2 {
entry:
  %db.addr = alloca %struct._GimpModuleDB*, align 8
  %load_inhibit.addr = alloca i8*, align 8
  %list = alloca %struct._GList*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %module = alloca %struct._GimpModule*, align 8
  store %struct._GimpModuleDB* %db, %struct._GimpModuleDB** %db.addr, align 8
  store i8* %load_inhibit, i8** %load_inhibit.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpModuleDB*, %struct._GimpModuleDB** %db.addr, align 8
  %1 = bitcast %struct._GimpModuleDB* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_module_db_get_type() #5
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_module_db_set_load_inhibit, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i32 0, i32 0))
  br label %for.end

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpModuleDB*, %struct._GimpModuleDB** %db.addr, align 8
  %load_inhibit11 = getelementptr inbounds %struct._GimpModuleDB, %struct._GimpModuleDB* %13, i32 0, i32 2
  %14 = load i8*, i8** %load_inhibit11, align 8
  %tobool12 = icmp ne i8* %14, null
  br i1 %tobool12, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %do.end
  %15 = load %struct._GimpModuleDB*, %struct._GimpModuleDB** %db.addr, align 8
  %load_inhibit14 = getelementptr inbounds %struct._GimpModuleDB, %struct._GimpModuleDB* %15, i32 0, i32 2
  %16 = load i8*, i8** %load_inhibit14, align 8
  call void @g_free(i8* %16)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.13, %do.end
  %17 = load i8*, i8** %load_inhibit.addr, align 8
  %call16 = call noalias i8* @g_strdup(i8* %17)
  %18 = load %struct._GimpModuleDB*, %struct._GimpModuleDB** %db.addr, align 8
  %load_inhibit17 = getelementptr inbounds %struct._GimpModuleDB, %struct._GimpModuleDB* %18, i32 0, i32 2
  store i8* %call16, i8** %load_inhibit17, align 8
  %19 = load %struct._GimpModuleDB*, %struct._GimpModuleDB** %db.addr, align 8
  %modules = getelementptr inbounds %struct._GimpModuleDB, %struct._GimpModuleDB* %19, i32 0, i32 1
  %20 = load %struct._GList*, %struct._GList** %modules, align 8
  store %struct._GList* %20, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %if.end.15
  %21 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool18 = icmp ne %struct._GList* %21, null
  br i1 %tobool18, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %22 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %22, i32 0, i32 0
  %23 = load i8*, i8** %data, align 8
  %24 = bitcast i8* %23 to %struct._GimpModule*
  store %struct._GimpModule* %24, %struct._GimpModule** %module, align 8
  %25 = load %struct._GimpModule*, %struct._GimpModule** %module, align 8
  %26 = load %struct._GimpModule*, %struct._GimpModule** %module, align 8
  %filename = getelementptr inbounds %struct._GimpModule, %struct._GimpModule* %26, i32 0, i32 1
  %27 = load i8*, i8** %filename, align 8
  %28 = load i8*, i8** %load_inhibit.addr, align 8
  %call20 = call i32 @is_in_inhibit_list(i8* %27, i8* %28)
  call void @gimp_module_set_load_inhibit(%struct._GimpModule* %25, i32 %call20)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %29 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool21 = icmp ne %struct._GList* %29, null
  br i1 %tobool21, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %30 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %30, i32 0, i32 1
  %31 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %31, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %if.else.9, %for.cond
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #3

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare void @g_free(i8*) #1

declare noalias i8* @g_strdup(i8*) #1

declare void @gimp_module_set_load_inhibit(%struct._GimpModule*, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @is_in_inhibit_list(i8* %filename, i8* %inhibit_list) #2 {
entry:
  %retval = alloca i32, align 4
  %filename.addr = alloca i8*, align 8
  %inhibit_list.addr = alloca i8*, align 8
  %p = alloca i8*, align 8
  %pathlen = alloca i32, align 4
  %start = alloca i8*, align 8
  %end = alloca i8*, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store i8* %inhibit_list, i8** %inhibit_list.addr, align 8
  %0 = load i8*, i8** %inhibit_list.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8*, i8** %inhibit_list.addr, align 8
  %call = call i64 @strlen(i8* %1) #6
  %tobool1 = icmp ne i64 %call, 0
  br i1 %tobool1, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load i8*, i8** %inhibit_list.addr, align 8
  %3 = load i8*, i8** %filename.addr, align 8
  %call2 = call i8* @strstr(i8* %2, i8* %3) #6
  store i8* %call2, i8** %p, align 8
  %4 = load i8*, i8** %p, align 8
  %tobool3 = icmp ne i8* %4, null
  br i1 %tobool3, label %if.end.5, label %if.then.4

if.then.4:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %5 = load i8*, i8** %p, align 8
  store i8* %5, i8** %start, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.5
  %6 = load i8*, i8** %start, align 8
  %7 = load i8*, i8** %inhibit_list.addr, align 8
  %cmp = icmp ne i8* %6, %7
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %8 = load i8*, i8** %start, align 8
  %9 = load i8, i8* %8, align 1
  %conv = sext i8 %9 to i32
  %cmp6 = icmp ne i32 %conv, 58
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %10 = phi i1 [ false, %while.cond ], [ %cmp6, %land.rhs ]
  br i1 %10, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %11 = load i8*, i8** %start, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %11, i32 -1
  store i8* %incdec.ptr, i8** %start, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %12 = load i8*, i8** %start, align 8
  %13 = load i8, i8* %12, align 1
  %conv8 = sext i8 %13 to i32
  %cmp9 = icmp eq i32 %conv8, 58
  br i1 %cmp9, label %if.then.11, label %if.end.13

if.then.11:                                       ; preds = %while.end
  %14 = load i8*, i8** %start, align 8
  %incdec.ptr12 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr12, i8** %start, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.11, %while.end
  %15 = load i8*, i8** %p, align 8
  %call14 = call i8* @strchr(i8* %15, i32 58) #6
  store i8* %call14, i8** %end, align 8
  %16 = load i8*, i8** %end, align 8
  %tobool15 = icmp ne i8* %16, null
  br i1 %tobool15, label %if.end.18, label %if.then.16

if.then.16:                                       ; preds = %if.end.13
  %17 = load i8*, i8** %inhibit_list.addr, align 8
  %18 = load i8*, i8** %inhibit_list.addr, align 8
  %call17 = call i64 @strlen(i8* %18) #6
  %add.ptr = getelementptr inbounds i8, i8* %17, i64 %call17
  store i8* %add.ptr, i8** %end, align 8
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.16, %if.end.13
  %19 = load i8*, i8** %filename.addr, align 8
  %call19 = call i64 @strlen(i8* %19) #6
  %conv20 = trunc i64 %call19 to i32
  store i32 %conv20, i32* %pathlen, align 4
  %20 = load i8*, i8** %end, align 8
  %21 = load i8*, i8** %start, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %20 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %21 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %22 = load i32, i32* %pathlen, align 4
  %conv21 = sext i32 %22 to i64
  %cmp22 = icmp eq i64 %sub.ptr.sub, %conv21
  br i1 %cmp22, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.end.18
  store i32 1, i32* %retval
  br label %return

if.end.25:                                        ; preds = %if.end.18
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.25, %if.then.24, %if.then.4, %if.then
  %23 = load i32, i32* %retval
  ret i32 %23
}

; Function Attrs: nounwind uwtable
define i8* @gimp_module_db_get_load_inhibit(%struct._GimpModuleDB* %db) #2 {
entry:
  %retval = alloca i8*, align 8
  %db.addr = alloca %struct._GimpModuleDB*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpModuleDB* %db, %struct._GimpModuleDB** %db.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpModuleDB*, %struct._GimpModuleDB** %db.addr, align 8
  %1 = bitcast %struct._GimpModuleDB* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_module_db_get_type() #5
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_module_db_get_load_inhibit, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpModuleDB*, %struct._GimpModuleDB** %db.addr, align 8
  %load_inhibit = getelementptr inbounds %struct._GimpModuleDB, %struct._GimpModuleDB* %13, i32 0, i32 2
  %14 = load i8*, i8** %load_inhibit, align 8
  store i8* %14, i8** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %15 = load i8*, i8** %retval
  ret i8* %15
}

; Function Attrs: nounwind uwtable
define void @gimp_module_db_load(%struct._GimpModuleDB* %db, i8* %module_path) #2 {
entry:
  %db.addr = alloca %struct._GimpModuleDB*, align 8
  %module_path.addr = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpModuleDB* %db, %struct._GimpModuleDB** %db.addr, align 8
  store i8* %module_path, i8** %module_path.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpModuleDB*, %struct._GimpModuleDB** %db.addr, align 8
  %1 = bitcast %struct._GimpModuleDB* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_module_db_get_type() #5
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_module_db_load, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.20

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i8*, i8** %module_path.addr, align 8
  %cmp12 = icmp ne i8* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_module_db_load, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.20

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %call17 = call i32 @g_module_supported() #5
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %do.end.16
  %14 = load i8*, i8** %module_path.addr, align 8
  %15 = load %struct._GimpModuleDB*, %struct._GimpModuleDB** %db.addr, align 8
  %16 = bitcast %struct._GimpModuleDB* %15 to i8*
  call void @gimp_datafiles_read_directories(i8* %14, i32 16, void (%struct._GimpDatafileData*, i8*)* @gimp_module_db_module_initialize, i8* %16)
  br label %if.end.20

if.end.20:                                        ; preds = %if.else.9, %if.else.14, %if.then.19, %do.end.16
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @g_module_supported() #4

declare void @gimp_datafiles_read_directories(i8*, i32, void (%struct._GimpDatafileData*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_module_db_module_initialize(%struct._GimpDatafileData* %file_data, i8* %user_data) #2 {
entry:
  %file_data.addr = alloca %struct._GimpDatafileData*, align 8
  %user_data.addr = alloca i8*, align 8
  %db = alloca %struct._GimpModuleDB*, align 8
  %module = alloca %struct._GimpModule*, align 8
  %load_inhibit = alloca i32, align 4
  store %struct._GimpDatafileData* %file_data, %struct._GimpDatafileData** %file_data.addr, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  %0 = load i8*, i8** %user_data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_module_db_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpModuleDB*
  store %struct._GimpModuleDB* %2, %struct._GimpModuleDB** %db, align 8
  %3 = load %struct._GimpDatafileData*, %struct._GimpDatafileData** %file_data.addr, align 8
  %filename = getelementptr inbounds %struct._GimpDatafileData, %struct._GimpDatafileData* %3, i32 0, i32 0
  %4 = load i8*, i8** %filename, align 8
  %call2 = call i32 @gimp_datafiles_check_extension(i8* %4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0))
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct._GimpModuleDB*, %struct._GimpModuleDB** %db, align 8
  %6 = load %struct._GimpDatafileData*, %struct._GimpDatafileData** %file_data.addr, align 8
  %filename3 = getelementptr inbounds %struct._GimpDatafileData, %struct._GimpDatafileData* %6, i32 0, i32 0
  %7 = load i8*, i8** %filename3, align 8
  %call4 = call %struct._GimpModule* @gimp_module_db_module_find_by_path(%struct._GimpModuleDB* %5, i8* %7)
  %tobool5 = icmp ne %struct._GimpModule* %call4, null
  br i1 %tobool5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  br label %return

if.end.7:                                         ; preds = %if.end
  %8 = load %struct._GimpDatafileData*, %struct._GimpDatafileData** %file_data.addr, align 8
  %filename8 = getelementptr inbounds %struct._GimpDatafileData, %struct._GimpDatafileData* %8, i32 0, i32 0
  %9 = load i8*, i8** %filename8, align 8
  %10 = load %struct._GimpModuleDB*, %struct._GimpModuleDB** %db, align 8
  %load_inhibit9 = getelementptr inbounds %struct._GimpModuleDB, %struct._GimpModuleDB* %10, i32 0, i32 2
  %11 = load i8*, i8** %load_inhibit9, align 8
  %call10 = call i32 @is_in_inhibit_list(i8* %9, i8* %11)
  store i32 %call10, i32* %load_inhibit, align 4
  %12 = load %struct._GimpDatafileData*, %struct._GimpDatafileData** %file_data.addr, align 8
  %filename11 = getelementptr inbounds %struct._GimpDatafileData, %struct._GimpDatafileData* %12, i32 0, i32 0
  %13 = load i8*, i8** %filename11, align 8
  %14 = load i32, i32* %load_inhibit, align 4
  %15 = load %struct._GimpModuleDB*, %struct._GimpModuleDB** %db, align 8
  %verbose = getelementptr inbounds %struct._GimpModuleDB, %struct._GimpModuleDB* %15, i32 0, i32 3
  %16 = load i32, i32* %verbose, align 4
  %call12 = call %struct._GimpModule* @gimp_module_new(i8* %13, i32 %14, i32 %16)
  store %struct._GimpModule* %call12, %struct._GimpModule** %module, align 8
  %17 = load %struct._GimpModule*, %struct._GimpModule** %module, align 8
  %18 = bitcast %struct._GimpModule* %17 to i8*
  %19 = load %struct._GimpModuleDB*, %struct._GimpModuleDB** %db, align 8
  %20 = bitcast %struct._GimpModuleDB* %19 to i8*
  %call13 = call i64 @g_signal_connect_data(i8* %18, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), void ()* bitcast (void (%struct._GimpModule*, %struct._GimpModuleDB*)* @gimp_module_db_module_modified to void ()*), i8* %20, void (i8*, %struct._GClosure*)* null, i32 0)
  %21 = load %struct._GimpModuleDB*, %struct._GimpModuleDB** %db, align 8
  %modules = getelementptr inbounds %struct._GimpModuleDB, %struct._GimpModuleDB* %21, i32 0, i32 1
  %22 = load %struct._GList*, %struct._GList** %modules, align 8
  %23 = load %struct._GimpModule*, %struct._GimpModule** %module, align 8
  %24 = bitcast %struct._GimpModule* %23 to i8*
  %call14 = call %struct._GList* @g_list_append(%struct._GList* %22, i8* %24)
  %25 = load %struct._GimpModuleDB*, %struct._GimpModuleDB** %db, align 8
  %modules15 = getelementptr inbounds %struct._GimpModuleDB, %struct._GimpModuleDB* %25, i32 0, i32 1
  store %struct._GList* %call14, %struct._GList** %modules15, align 8
  %26 = load %struct._GimpModuleDB*, %struct._GimpModuleDB** %db, align 8
  %27 = bitcast %struct._GimpModuleDB* %26 to i8*
  %28 = load i32, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @db_signals, i32 0, i64 0), align 4
  %29 = load %struct._GimpModule*, %struct._GimpModule** %module, align 8
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %27, i32 %28, i32 0, %struct._GimpModule* %29)
  br label %return

return:                                           ; preds = %if.end.7, %if.then.6, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_module_db_refresh(%struct._GimpModuleDB* %db, i8* %module_path) #2 {
entry:
  %db.addr = alloca %struct._GimpModuleDB*, align 8
  %module_path.addr = alloca i8*, align 8
  %kill_list = alloca %struct._GList*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpModuleDB* %db, %struct._GimpModuleDB** %db.addr, align 8
  store i8* %module_path, i8** %module_path.addr, align 8
  store %struct._GList* null, %struct._GList** %kill_list, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpModuleDB*, %struct._GimpModuleDB** %db.addr, align 8
  %1 = bitcast %struct._GimpModuleDB* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_module_db_get_type() #5
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_module_db_refresh, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i8*, i8** %module_path.addr, align 8
  %cmp12 = icmp ne i8* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_module_db_refresh, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GimpModuleDB*, %struct._GimpModuleDB** %db.addr, align 8
  %modules = getelementptr inbounds %struct._GimpModuleDB, %struct._GimpModuleDB* %14, i32 0, i32 1
  %15 = load %struct._GList*, %struct._GList** %modules, align 8
  %16 = bitcast %struct._GList** %kill_list to i8*
  call void @g_list_foreach(%struct._GList* %15, void (i8*, i8*)* @gimp_module_db_module_on_disk_func, i8* %16)
  %17 = load %struct._GList*, %struct._GList** %kill_list, align 8
  %18 = load %struct._GimpModuleDB*, %struct._GimpModuleDB** %db.addr, align 8
  %19 = bitcast %struct._GimpModuleDB* %18 to i8*
  call void @g_list_foreach(%struct._GList* %17, void (i8*, i8*)* @gimp_module_db_module_remove_func, i8* %19)
  %20 = load %struct._GList*, %struct._GList** %kill_list, align 8
  call void @g_list_free(%struct._GList* %20)
  %21 = load i8*, i8** %module_path.addr, align 8
  %22 = load %struct._GimpModuleDB*, %struct._GimpModuleDB** %db.addr, align 8
  %23 = bitcast %struct._GimpModuleDB* %22 to i8*
  call void @gimp_datafiles_read_directories(i8* %21, i32 16, void (%struct._GimpDatafileData*, i8*)* @gimp_module_db_module_initialize, i8* %23)
  br label %return

return:                                           ; preds = %do.end.16, %if.else.14, %if.else.9
  ret void
}

declare void @g_list_foreach(%struct._GList*, void (i8*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_module_db_module_on_disk_func(i8* %data, i8* %user_data) #2 {
entry:
  %data.addr = alloca i8*, align 8
  %user_data.addr = alloca i8*, align 8
  %module = alloca %struct._GimpModule*, align 8
  %kill_list = alloca %struct._GList**, align 8
  %old_on_disk = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GimpModule*
  store %struct._GimpModule* %1, %struct._GimpModule** %module, align 8
  %2 = load i8*, i8** %user_data.addr, align 8
  %3 = bitcast i8* %2 to %struct._GList**
  store %struct._GList** %3, %struct._GList*** %kill_list, align 8
  %4 = load %struct._GimpModule*, %struct._GimpModule** %module, align 8
  %on_disk = getelementptr inbounds %struct._GimpModule, %struct._GimpModule* %4, i32 0, i32 4
  %5 = load i32, i32* %on_disk, align 4
  store i32 %5, i32* %old_on_disk, align 4
  %6 = load %struct._GimpModule*, %struct._GimpModule** %module, align 8
  %filename = getelementptr inbounds %struct._GimpModule, %struct._GimpModule* %6, i32 0, i32 1
  %7 = load i8*, i8** %filename, align 8
  %call = call i32 @g_file_test(i8* %7, i32 1)
  %8 = load %struct._GimpModule*, %struct._GimpModule** %module, align 8
  %on_disk1 = getelementptr inbounds %struct._GimpModule, %struct._GimpModule* %8, i32 0, i32 4
  store i32 %call, i32* %on_disk1, align 4
  %9 = load %struct._GimpModule*, %struct._GimpModule** %module, align 8
  %on_disk2 = getelementptr inbounds %struct._GimpModule, %struct._GimpModule* %9, i32 0, i32 4
  %10 = load i32, i32* %on_disk2, align 4
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %11 = load %struct._GimpModule*, %struct._GimpModule** %module, align 8
  %module3 = getelementptr inbounds %struct._GimpModule, %struct._GimpModule* %11, i32 0, i32 6
  %12 = load %struct._GModule*, %struct._GModule** %module3, align 8
  %tobool4 = icmp ne %struct._GModule* %12, null
  br i1 %tobool4, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %13 = load %struct._GList**, %struct._GList*** %kill_list, align 8
  %14 = load %struct._GList*, %struct._GList** %13, align 8
  %15 = load %struct._GimpModule*, %struct._GimpModule** %module, align 8
  %16 = bitcast %struct._GimpModule* %15 to i8*
  %call5 = call %struct._GList* @g_list_append(%struct._GList* %14, i8* %16)
  %17 = load %struct._GList**, %struct._GList*** %kill_list, align 8
  store %struct._GList* %call5, %struct._GList** %17, align 8
  store %struct._GimpModule* null, %struct._GimpModule** %module, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %18 = load %struct._GimpModule*, %struct._GimpModule** %module, align 8
  %tobool6 = icmp ne %struct._GimpModule* %18, null
  br i1 %tobool6, label %land.lhs.true.7, label %if.end.10

land.lhs.true.7:                                  ; preds = %if.end
  %19 = load %struct._GimpModule*, %struct._GimpModule** %module, align 8
  %on_disk8 = getelementptr inbounds %struct._GimpModule, %struct._GimpModule* %19, i32 0, i32 4
  %20 = load i32, i32* %on_disk8, align 4
  %21 = load i32, i32* %old_on_disk, align 4
  %cmp = icmp ne i32 %20, %21
  br i1 %cmp, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %land.lhs.true.7
  %22 = load %struct._GimpModule*, %struct._GimpModule** %module, align 8
  call void @gimp_module_modified(%struct._GimpModule* %22)
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.9, %land.lhs.true.7, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_module_db_module_remove_func(i8* %data, i8* %user_data) #2 {
entry:
  %data.addr = alloca i8*, align 8
  %user_data.addr = alloca i8*, align 8
  %module = alloca %struct._GimpModule*, align 8
  %db = alloca %struct._GimpModuleDB*, align 8
  store i8* %data, i8** %data.addr, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GimpModule*
  store %struct._GimpModule* %1, %struct._GimpModule** %module, align 8
  %2 = load i8*, i8** %user_data.addr, align 8
  %3 = bitcast i8* %2 to %struct._GimpModuleDB*
  store %struct._GimpModuleDB* %3, %struct._GimpModuleDB** %db, align 8
  %4 = load %struct._GimpModule*, %struct._GimpModule** %module, align 8
  %5 = bitcast %struct._GimpModule* %4 to i8*
  %6 = load %struct._GimpModuleDB*, %struct._GimpModuleDB** %db, align 8
  %7 = bitcast %struct._GimpModuleDB* %6 to i8*
  %call = call i32 @g_signal_handlers_disconnect_matched(i8* %5, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpModule*, %struct._GimpModuleDB*)* @gimp_module_db_module_modified to i8*), i8* %7)
  %8 = load %struct._GimpModuleDB*, %struct._GimpModuleDB** %db, align 8
  %modules = getelementptr inbounds %struct._GimpModuleDB, %struct._GimpModuleDB* %8, i32 0, i32 1
  %9 = load %struct._GList*, %struct._GList** %modules, align 8
  %10 = load %struct._GimpModule*, %struct._GimpModule** %module, align 8
  %11 = bitcast %struct._GimpModule* %10 to i8*
  %call1 = call %struct._GList* @g_list_remove(%struct._GList* %9, i8* %11)
  %12 = load %struct._GimpModuleDB*, %struct._GimpModuleDB** %db, align 8
  %modules2 = getelementptr inbounds %struct._GimpModuleDB, %struct._GimpModuleDB* %12, i32 0, i32 1
  store %struct._GList* %call1, %struct._GList** %modules2, align 8
  %13 = load %struct._GimpModuleDB*, %struct._GimpModuleDB** %db, align 8
  %14 = bitcast %struct._GimpModuleDB* %13 to i8*
  %15 = load i32, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @db_signals, i32 0, i64 1), align 4
  %16 = load %struct._GimpModule*, %struct._GimpModule** %module, align 8
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %14, i32 %15, i32 0, %struct._GimpModule* %16)
  ret void
}

declare void @g_list_free(%struct._GList*) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_module_db_class_init(%struct._GimpModuleDBClass* %klass) #2 {
entry:
  %klass.addr = alloca %struct._GimpModuleDBClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  store %struct._GimpModuleDBClass* %klass, %struct._GimpModuleDBClass** %klass.addr, align 8
  %0 = load %struct._GimpModuleDBClass*, %struct._GimpModuleDBClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpModuleDBClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpModuleDBClass*, %struct._GimpModuleDBClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpModuleDBClass* %3 to %struct._GTypeClass*
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %4, i32 0, i32 0
  %5 = load i64, i64* %g_type, align 8
  %call1 = call i64 @gimp_module_get_type() #5
  %call2 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i64 %5, i32 1, i32 136, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @g_cclosure_marshal_VOID__OBJECT, i64 4, i32 1, i64 %call1)
  store i32 %call2, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @db_signals, i32 0, i64 0), align 4
  %6 = load %struct._GimpModuleDBClass*, %struct._GimpModuleDBClass** %klass.addr, align 8
  %7 = bitcast %struct._GimpModuleDBClass* %6 to %struct._GTypeClass*
  %g_type3 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %7, i32 0, i32 0
  %8 = load i64, i64* %g_type3, align 8
  %call4 = call i64 @gimp_module_get_type() #5
  %call5 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i64 %8, i32 1, i32 144, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @g_cclosure_marshal_VOID__OBJECT, i64 4, i32 1, i64 %call4)
  store i32 %call5, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @db_signals, i32 0, i64 1), align 4
  %9 = load %struct._GimpModuleDBClass*, %struct._GimpModuleDBClass** %klass.addr, align 8
  %10 = bitcast %struct._GimpModuleDBClass* %9 to %struct._GTypeClass*
  %g_type6 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %10, i32 0, i32 0
  %11 = load i64, i64* %g_type6, align 8
  %call7 = call i64 @gimp_module_get_type() #5
  %call8 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0), i64 %11, i32 1, i32 152, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @g_cclosure_marshal_VOID__OBJECT, i64 4, i32 1, i64 %call7)
  store i32 %call8, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @db_signals, i32 0, i64 2), align 4
  %12 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %12, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_module_db_finalize, void (%struct._GObject*)** %finalize, align 8
  %13 = load %struct._GimpModuleDBClass*, %struct._GimpModuleDBClass** %klass.addr, align 8
  %add = getelementptr inbounds %struct._GimpModuleDBClass, %struct._GimpModuleDBClass* %13, i32 0, i32 1
  store void (%struct._GimpModuleDB*, %struct._GimpModule*)* null, void (%struct._GimpModuleDB*, %struct._GimpModule*)** %add, align 8
  %14 = load %struct._GimpModuleDBClass*, %struct._GimpModuleDBClass** %klass.addr, align 8
  %remove = getelementptr inbounds %struct._GimpModuleDBClass, %struct._GimpModuleDBClass* %14, i32 0, i32 2
  store void (%struct._GimpModuleDB*, %struct._GimpModule*)* null, void (%struct._GimpModuleDB*, %struct._GimpModule*)** %remove, align 8
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

declare i32 @g_signal_new(i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) #1

declare void @g_cclosure_marshal_VOID__OBJECT(%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_module_get_type() #4

; Function Attrs: nounwind uwtable
define internal void @gimp_module_db_finalize(%struct._GObject* %object) #2 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %db = alloca %struct._GimpModuleDB*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_module_db_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpModuleDB*
  store %struct._GimpModuleDB* %2, %struct._GimpModuleDB** %db, align 8
  %3 = load %struct._GimpModuleDB*, %struct._GimpModuleDB** %db, align 8
  %modules = getelementptr inbounds %struct._GimpModuleDB, %struct._GimpModuleDB* %3, i32 0, i32 1
  %4 = load %struct._GList*, %struct._GList** %modules, align 8
  %tobool = icmp ne %struct._GList* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpModuleDB*, %struct._GimpModuleDB** %db, align 8
  %modules2 = getelementptr inbounds %struct._GimpModuleDB, %struct._GimpModuleDB* %5, i32 0, i32 1
  %6 = load %struct._GList*, %struct._GList** %modules2, align 8
  call void @g_list_free(%struct._GList* %6)
  %7 = load %struct._GimpModuleDB*, %struct._GimpModuleDB** %db, align 8
  %modules3 = getelementptr inbounds %struct._GimpModuleDB, %struct._GimpModuleDB* %7, i32 0, i32 1
  store %struct._GList* null, %struct._GList** %modules3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct._GimpModuleDB*, %struct._GimpModuleDB** %db, align 8
  %load_inhibit = getelementptr inbounds %struct._GimpModuleDB, %struct._GimpModuleDB* %8, i32 0, i32 2
  %9 = load i8*, i8** %load_inhibit, align 8
  %tobool4 = icmp ne i8* %9, null
  br i1 %tobool4, label %if.then.5, label %if.end.8

if.then.5:                                        ; preds = %if.end
  %10 = load %struct._GimpModuleDB*, %struct._GimpModuleDB** %db, align 8
  %load_inhibit6 = getelementptr inbounds %struct._GimpModuleDB, %struct._GimpModuleDB* %10, i32 0, i32 2
  %11 = load i8*, i8** %load_inhibit6, align 8
  call void @g_free(i8* %11)
  %12 = load %struct._GimpModuleDB*, %struct._GimpModuleDB** %db, align 8
  %load_inhibit7 = getelementptr inbounds %struct._GimpModuleDB, %struct._GimpModuleDB* %12, i32 0, i32 2
  store i8* null, i8** %load_inhibit7, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.5, %if.end
  %13 = load i8*, i8** @gimp_module_db_parent_class, align 8
  %14 = bitcast i8* %13 to %struct._GTypeClass*
  %call9 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %14, i64 80)
  %15 = bitcast %struct._GTypeClass* %call9 to %struct._GObjectClass*
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %15, i32 0, i32 6
  %16 = load void (%struct._GObject*)*, void (%struct._GObject*)** %finalize, align 8
  %17 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %16(%struct._GObject* %17)
  ret void
}

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind readonly
declare i8* @strstr(i8*, i8*) #3

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #3

declare i32 @gimp_datafiles_check_extension(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct._GimpModule* @gimp_module_db_module_find_by_path(%struct._GimpModuleDB* %db, i8* %fullpath) #2 {
entry:
  %retval = alloca %struct._GimpModule*, align 8
  %db.addr = alloca %struct._GimpModuleDB*, align 8
  %fullpath.addr = alloca i8*, align 8
  %list = alloca %struct._GList*, align 8
  %module = alloca %struct._GimpModule*, align 8
  store %struct._GimpModuleDB* %db, %struct._GimpModuleDB** %db.addr, align 8
  store i8* %fullpath, i8** %fullpath.addr, align 8
  %0 = load %struct._GimpModuleDB*, %struct._GimpModuleDB** %db.addr, align 8
  %modules = getelementptr inbounds %struct._GimpModuleDB, %struct._GimpModuleDB* %0, i32 0, i32 1
  %1 = load %struct._GList*, %struct._GList** %modules, align 8
  store %struct._GList* %1, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %entry
  %2 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool = icmp ne %struct._GList* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %3, i32 0, i32 0
  %4 = load i8*, i8** %data, align 8
  %5 = bitcast i8* %4 to %struct._GimpModule*
  store %struct._GimpModule* %5, %struct._GimpModule** %module, align 8
  %6 = load %struct._GimpModule*, %struct._GimpModule** %module, align 8
  %filename = getelementptr inbounds %struct._GimpModule, %struct._GimpModule* %6, i32 0, i32 1
  %7 = load i8*, i8** %filename, align 8
  %8 = load i8*, i8** %fullpath.addr, align 8
  %call = call i32 @strcmp(i8* %7, i8* %8) #6
  %tobool1 = icmp ne i32 %call, 0
  br i1 %tobool1, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  %9 = load %struct._GimpModule*, %struct._GimpModule** %module, align 8
  store %struct._GimpModule* %9, %struct._GimpModule** %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %10 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool2 = icmp ne %struct._GList* %10, null
  br i1 %tobool2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %11 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %11, i32 0, i32 1
  %12 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %12, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store %struct._GimpModule* null, %struct._GimpModule** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %13 = load %struct._GimpModule*, %struct._GimpModule** %retval
  ret %struct._GimpModule* %13
}

declare %struct._GimpModule* @gimp_module_new(i8*, i32, i32) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_module_db_module_modified(%struct._GimpModule* %module, %struct._GimpModuleDB* %db) #2 {
entry:
  %module.addr = alloca %struct._GimpModule*, align 8
  %db.addr = alloca %struct._GimpModuleDB*, align 8
  store %struct._GimpModule* %module, %struct._GimpModule** %module.addr, align 8
  store %struct._GimpModuleDB* %db, %struct._GimpModuleDB** %db.addr, align 8
  %0 = load %struct._GimpModuleDB*, %struct._GimpModuleDB** %db.addr, align 8
  %1 = bitcast %struct._GimpModuleDB* %0 to i8*
  %2 = load i32, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @db_signals, i32 0, i64 2), align 4
  %3 = load %struct._GimpModule*, %struct._GimpModule** %module.addr, align 8
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %1, i32 %2, i32 0, %struct._GimpModule* %3)
  ret void
}

declare %struct._GList* @g_list_append(%struct._GList*, i8*) #1

declare void @g_signal_emit(i8*, i32, i32, ...) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

declare i32 @g_file_test(i8*, i32) #1

declare void @gimp_module_modified(%struct._GimpModule*) #1

declare i32 @g_signal_handlers_disconnect_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

declare %struct._GList* @g_list_remove(%struct._GList*, i8*) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
