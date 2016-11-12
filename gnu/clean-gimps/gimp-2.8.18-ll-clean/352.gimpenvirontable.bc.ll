; ModuleID = './app/plug-in/gimpenvirontable.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpEnvironTableClass = type { %struct._GObjectClass }
%struct._GObjectClass = type { %struct._GTypeClass, %struct._GSList*, %struct._GObject* (i64, i32, %struct._GObjectConstructParam*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*)*, void (%struct._GObject*)*, void (%struct._GObject*, i32, %struct._GParamSpec**)*, void (%struct._GObject*, %struct._GParamSpec*)*, void (%struct._GObject*)*, i64, [6 x i8*] }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GData = type opaque
%struct._GObjectConstructParam = type { %struct._GParamSpec*, %struct._GValue* }
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GimpEnvironTable = type { %struct._GObject, %struct._GHashTable*, %struct._GHashTable*, i8** }
%struct._GHashTable = type opaque
%struct._GimpEnvironValue = type { i8*, i8* }
%struct._GimpDatafileData = type { i8*, i8*, i8*, i64, i64, i64 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._GError = type { i32, i32, i8* }
%struct._GPtrArray = type { i8**, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@gimp_environ_table_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"GimpEnvironTable\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Gimp-Plug-In\00", align 1
@__func__.gimp_environ_table_load = private unnamed_addr constant [24 x i8] c"gimp_environ_table_load\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"GIMP_IS_ENVIRON_TABLE (environ_table)\00", align 1
@__func__.gimp_environ_table_add = private unnamed_addr constant [23 x i8] c"gimp_environ_table_add\00", align 1
@__func__.gimp_environ_table_remove = private unnamed_addr constant [26 x i8] c"gimp_environ_table_remove\00", align 1
@__func__.gimp_environ_table_clear = private unnamed_addr constant [25 x i8] c"gimp_environ_table_clear\00", align 1
@__func__.gimp_environ_table_clear_all = private unnamed_addr constant [29 x i8] c"gimp_environ_table_clear_all\00", align 1
@__func__.gimp_environ_table_get_envp = private unnamed_addr constant [28 x i8] c"gimp_environ_table_get_envp\00", align 1
@gimp_environ_table_parent_class = internal global i8* null, align 8
@GimpEnvironTable_private_offset = internal global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"Empty variable name in environment file %s\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"Illegal variable name in environment file %s: %s\00", align 1
@g_ascii_table = external constant i16*, align 8
@.str.6 = private unnamed_addr constant [2 x i8] c"=\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_environ_table_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_environ_table_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_environ_table_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0))
  %call6 = call i64 @g_type_register_static_simple(i64 80, i8* %call5, i32 136, void (i8*, i8*)* bitcast (void (i8*)* @gimp_environ_table_class_intern_init to void (i8*, i8*)*), i32 48, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpEnvironTable*)* @gimp_environ_table_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call6, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_environ_table_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_environ_table_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_environ_table_class_intern_init(i8* %klass) #2 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_environ_table_parent_class, align 8
  %1 = load i32, i32* @GimpEnvironTable_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpEnvironTable_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpEnvironTableClass*
  call void @gimp_environ_table_class_init(%struct._GimpEnvironTableClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_environ_table_init(%struct._GimpEnvironTable* %environ_table) #2 {
entry:
  %environ_table.addr = alloca %struct._GimpEnvironTable*, align 8
  store %struct._GimpEnvironTable* %environ_table, %struct._GimpEnvironTable** %environ_table.addr, align 8
  %0 = load %struct._GimpEnvironTable*, %struct._GimpEnvironTable** %environ_table.addr, align 8
  %vars = getelementptr inbounds %struct._GimpEnvironTable, %struct._GimpEnvironTable* %0, i32 0, i32 1
  store %struct._GHashTable* null, %struct._GHashTable** %vars, align 8
  %1 = load %struct._GimpEnvironTable*, %struct._GimpEnvironTable** %environ_table.addr, align 8
  %internal = getelementptr inbounds %struct._GimpEnvironTable, %struct._GimpEnvironTable* %1, i32 0, i32 2
  store %struct._GHashTable* null, %struct._GHashTable** %internal, align 8
  %2 = load %struct._GimpEnvironTable*, %struct._GimpEnvironTable** %environ_table.addr, align 8
  %envp = getelementptr inbounds %struct._GimpEnvironTable, %struct._GimpEnvironTable* %2, i32 0, i32 3
  store i8** null, i8*** %envp, align 8
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GimpEnvironTable* @gimp_environ_table_new() #2 {
entry:
  %call = call i64 @gimp_environ_table_get_type() #6
  %call1 = call i8* (i64, i8*, ...) @g_object_new(i64 %call, i8* null)
  %0 = bitcast i8* %call1 to %struct._GimpEnvironTable*
  ret %struct._GimpEnvironTable* %0
}

declare i8* @g_object_new(i64, i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @gimp_environ_table_load(%struct._GimpEnvironTable* %environ_table, i8* %env_path) #2 {
entry:
  %environ_table.addr = alloca %struct._GimpEnvironTable*, align 8
  %env_path.addr = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpEnvironTable* %environ_table, %struct._GimpEnvironTable** %environ_table.addr, align 8
  store i8* %env_path, i8** %env_path.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpEnvironTable*, %struct._GimpEnvironTable** %environ_table.addr, align 8
  %1 = bitcast %struct._GimpEnvironTable* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_environ_table_get_type() #6
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_environ_table_load, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpEnvironTable*, %struct._GimpEnvironTable** %environ_table.addr, align 8
  call void @gimp_environ_table_clear(%struct._GimpEnvironTable* %13)
  %call11 = call %struct._GHashTable* @g_hash_table_new_full(i32 (i8*)* @gimp_environ_table_str_hash, i32 (i8*, i8*)* @gimp_environ_table_str_equal, void (i8*)* @g_free, void (i8*)* bitcast (void (%struct._GimpEnvironValue*)* @gimp_environ_table_free_value to void (i8*)*))
  %14 = load %struct._GimpEnvironTable*, %struct._GimpEnvironTable** %environ_table.addr, align 8
  %vars = getelementptr inbounds %struct._GimpEnvironTable, %struct._GimpEnvironTable* %14, i32 0, i32 1
  store %struct._GHashTable* %call11, %struct._GHashTable** %vars, align 8
  %15 = load i8*, i8** %env_path.addr, align 8
  %16 = load %struct._GimpEnvironTable*, %struct._GimpEnvironTable** %environ_table.addr, align 8
  %17 = bitcast %struct._GimpEnvironTable* %16 to i8*
  call void @gimp_datafiles_read_directories(i8* %15, i32 16, void (%struct._GimpDatafileData*, i8*)* @gimp_environ_table_load_env_file, i8* %17)
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #3

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define void @gimp_environ_table_clear(%struct._GimpEnvironTable* %environ_table) #2 {
entry:
  %environ_table.addr = alloca %struct._GimpEnvironTable*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpEnvironTable* %environ_table, %struct._GimpEnvironTable** %environ_table.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpEnvironTable*, %struct._GimpEnvironTable** %environ_table.addr, align 8
  %1 = bitcast %struct._GimpEnvironTable* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_environ_table_get_type() #6
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_environ_table_clear, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpEnvironTable*, %struct._GimpEnvironTable** %environ_table.addr, align 8
  call void @gimp_environ_table_clear_envp(%struct._GimpEnvironTable* %13)
  %14 = load %struct._GimpEnvironTable*, %struct._GimpEnvironTable** %environ_table.addr, align 8
  call void @gimp_environ_table_clear_vars(%struct._GimpEnvironTable* %14)
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

declare %struct._GHashTable* @g_hash_table_new_full(i32 (i8*)*, i32 (i8*, i8*)*, void (i8*)*, void (i8*)*) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_environ_table_str_hash(i8* %v) #2 {
entry:
  %v.addr = alloca i8*, align 8
  store i8* %v, i8** %v.addr, align 8
  %0 = load i8*, i8** %v.addr, align 8
  %call = call i32 @g_str_hash(i8* %0)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_environ_table_str_equal(i8* %v1, i8* %v2) #2 {
entry:
  %v1.addr = alloca i8*, align 8
  %v2.addr = alloca i8*, align 8
  store i8* %v1, i8** %v1.addr, align 8
  store i8* %v2, i8** %v2.addr, align 8
  %0 = load i8*, i8** %v1.addr, align 8
  %1 = load i8*, i8** %v2.addr, align 8
  %call = call i32 @g_str_equal(i8* %0, i8* %1)
  ret i32 %call
}

declare void @g_free(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_environ_table_free_value(%struct._GimpEnvironValue* %val) #2 {
entry:
  %val.addr = alloca %struct._GimpEnvironValue*, align 8
  store %struct._GimpEnvironValue* %val, %struct._GimpEnvironValue** %val.addr, align 8
  %0 = load %struct._GimpEnvironValue*, %struct._GimpEnvironValue** %val.addr, align 8
  %value = getelementptr inbounds %struct._GimpEnvironValue, %struct._GimpEnvironValue* %0, i32 0, i32 0
  %1 = load i8*, i8** %value, align 8
  call void @g_free(i8* %1)
  %2 = load %struct._GimpEnvironValue*, %struct._GimpEnvironValue** %val.addr, align 8
  %separator = getelementptr inbounds %struct._GimpEnvironValue, %struct._GimpEnvironValue* %2, i32 0, i32 1
  %3 = load i8*, i8** %separator, align 8
  call void @g_free(i8* %3)
  br label %do.body

do.body:                                          ; preds = %entry
  %4 = load %struct._GimpEnvironValue*, %struct._GimpEnvironValue** %val.addr, align 8
  %5 = bitcast %struct._GimpEnvironValue* %4 to i8*
  call void @g_slice_free1(i64 16, i8* %5)
  br label %do.end

do.end:                                           ; preds = %do.body
  ret void
}

declare void @gimp_datafiles_read_directories(i8*, i32, void (%struct._GimpDatafileData*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_environ_table_load_env_file(%struct._GimpDatafileData* %file_data, i8* %user_data) #2 {
entry:
  %file_data.addr = alloca %struct._GimpDatafileData*, align 8
  %user_data.addr = alloca i8*, align 8
  %environ_table = alloca %struct._GimpEnvironTable*, align 8
  %env = alloca %struct._IO_FILE*, align 8
  %buffer = alloca [4096 x i8], align 16
  %len = alloca i64, align 8
  %name = alloca i8*, align 8
  %value = alloca i8*, align 8
  %separator = alloca i8*, align 8
  %p = alloca i8*, align 8
  %q = alloca i8*, align 8
  %val = alloca %struct._GimpEnvironValue*, align 8
  store %struct._GimpDatafileData* %file_data, %struct._GimpDatafileData** %file_data.addr, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  %0 = load i8*, i8** %user_data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_environ_table_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpEnvironTable*
  store %struct._GimpEnvironTable* %2, %struct._GimpEnvironTable** %environ_table, align 8
  %3 = load %struct._GimpDatafileData*, %struct._GimpDatafileData** %file_data.addr, align 8
  %filename = getelementptr inbounds %struct._GimpDatafileData, %struct._GimpDatafileData* %3, i32 0, i32 0
  %4 = load i8*, i8** %filename, align 8
  %call2 = call %struct._IO_FILE* @fopen(i8* %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  store %struct._IO_FILE* %call2, %struct._IO_FILE** %env, align 8
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %env, align 8
  %tobool = icmp ne %struct._IO_FILE* %5, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end.55, %if.then.39, %if.then.27, %if.then.20, %if.then.14, %if.then.6, %if.end
  %arraydecay = getelementptr inbounds [4096 x i8], [4096 x i8]* %buffer, i32 0, i32 0
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %env, align 8
  %call3 = call i8* @fgets(i8* %arraydecay, i32 4096, %struct._IO_FILE* %6)
  %tobool4 = icmp ne i8* %call3, null
  br i1 %tobool4, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %arrayidx = getelementptr inbounds [4096 x i8], [4096 x i8]* %buffer, i32 0, i64 0
  %7 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %7 to i32
  %cmp = icmp eq i32 %conv, 35
  br i1 %cmp, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %while.body
  br label %while.cond

if.end.7:                                         ; preds = %while.body
  %arraydecay8 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buffer, i32 0, i32 0
  %call9 = call i64 @strlen(i8* %arraydecay8) #7
  %sub = sub i64 %call9, 1
  store i64 %sub, i64* %len, align 8
  %8 = load i64, i64* %len, align 8
  %arrayidx10 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buffer, i32 0, i64 %8
  %9 = load i8, i8* %arrayidx10, align 1
  %conv11 = sext i8 %9 to i32
  %cmp12 = icmp ne i32 %conv11, 10
  br i1 %cmp12, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end.7
  br label %while.cond

if.end.15:                                        ; preds = %if.end.7
  %10 = load i64, i64* %len, align 8
  %arrayidx16 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buffer, i32 0, i64 %10
  store i8 0, i8* %arrayidx16, align 1
  %arraydecay17 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buffer, i32 0, i32 0
  %call18 = call i8* @strchr(i8* %arraydecay17, i32 61) #7
  store i8* %call18, i8** %p, align 8
  %11 = load i8*, i8** %p, align 8
  %tobool19 = icmp ne i8* %11, null
  br i1 %tobool19, label %if.end.21, label %if.then.20

if.then.20:                                       ; preds = %if.end.15
  br label %while.cond

if.end.21:                                        ; preds = %if.end.15
  %12 = load i8*, i8** %p, align 8
  store i8 0, i8* %12, align 1
  %arraydecay22 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buffer, i32 0, i32 0
  store i8* %arraydecay22, i8** %name, align 8
  %13 = load i8*, i8** %p, align 8
  %add.ptr = getelementptr inbounds i8, i8* %13, i64 1
  store i8* %add.ptr, i8** %value, align 8
  %14 = load i8*, i8** %name, align 8
  %arrayidx23 = getelementptr inbounds i8, i8* %14, i64 0
  %15 = load i8, i8* %arrayidx23, align 1
  %conv24 = sext i8 %15 to i32
  %cmp25 = icmp eq i32 %conv24, 0
  br i1 %cmp25, label %if.then.27, label %if.end.31

if.then.27:                                       ; preds = %if.end.21
  %call28 = call i8* @gettext(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i32 0, i32 0)) #5
  %16 = load %struct._GimpDatafileData*, %struct._GimpDatafileData** %file_data.addr, align 8
  %filename29 = getelementptr inbounds %struct._GimpDatafileData, %struct._GimpDatafileData* %16, i32 0, i32 0
  %17 = load i8*, i8** %filename29, align 8
  %call30 = call i8* @gimp_filename_to_utf8(i8* %17)
  call void (i8*, ...) @g_message(i8* %call28, i8* %call30)
  br label %while.cond

if.end.31:                                        ; preds = %if.end.21
  store i8* null, i8** %separator, align 8
  %18 = load i8*, i8** %name, align 8
  %call32 = call i8* @strchr(i8* %18, i32 32) #7
  store i8* %call32, i8** %q, align 8
  %19 = load i8*, i8** %q, align 8
  %tobool33 = icmp ne i8* %19, null
  br i1 %tobool33, label %if.then.34, label %if.end.36

if.then.34:                                       ; preds = %if.end.31
  %20 = load i8*, i8** %q, align 8
  store i8 0, i8* %20, align 1
  %21 = load i8*, i8** %name, align 8
  store i8* %21, i8** %separator, align 8
  %22 = load i8*, i8** %q, align 8
  %add.ptr35 = getelementptr inbounds i8, i8* %22, i64 1
  store i8* %add.ptr35, i8** %name, align 8
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.34, %if.end.31
  %23 = load i8*, i8** %name, align 8
  %call37 = call i32 @gimp_environ_table_legal_name(i8* %23)
  %tobool38 = icmp ne i32 %call37, 0
  br i1 %tobool38, label %if.end.43, label %if.then.39

if.then.39:                                       ; preds = %if.end.36
  %call40 = call i8* @gettext(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i32 0, i32 0)) #5
  %24 = load %struct._GimpDatafileData*, %struct._GimpDatafileData** %file_data.addr, align 8
  %filename41 = getelementptr inbounds %struct._GimpDatafileData, %struct._GimpDatafileData* %24, i32 0, i32 0
  %25 = load i8*, i8** %filename41, align 8
  %call42 = call i8* @gimp_filename_to_utf8(i8* %25)
  %26 = load i8*, i8** %name, align 8
  call void (i8*, ...) @g_message(i8* %call40, i8* %call42, i8* %26)
  br label %while.cond

if.end.43:                                        ; preds = %if.end.36
  %27 = load %struct._GimpEnvironTable*, %struct._GimpEnvironTable** %environ_table, align 8
  %vars = getelementptr inbounds %struct._GimpEnvironTable, %struct._GimpEnvironTable* %27, i32 0, i32 1
  %28 = load %struct._GHashTable*, %struct._GHashTable** %vars, align 8
  %29 = load i8*, i8** %name, align 8
  %call44 = call i8* @g_hash_table_lookup(%struct._GHashTable* %28, i8* %29)
  %tobool45 = icmp ne i8* %call44, null
  br i1 %tobool45, label %if.end.55, label %if.then.46

if.then.46:                                       ; preds = %if.end.43
  %call47 = call noalias i8* @g_slice_alloc(i64 16)
  %30 = bitcast i8* %call47 to %struct._GimpEnvironValue*
  store %struct._GimpEnvironValue* %30, %struct._GimpEnvironValue** %val, align 8
  %31 = load i8*, i8** %value, align 8
  %call48 = call noalias i8* @gimp_config_path_expand(i8* %31, i32 0, %struct._GError** null)
  %32 = load %struct._GimpEnvironValue*, %struct._GimpEnvironValue** %val, align 8
  %value49 = getelementptr inbounds %struct._GimpEnvironValue, %struct._GimpEnvironValue* %32, i32 0, i32 0
  store i8* %call48, i8** %value49, align 8
  %33 = load i8*, i8** %separator, align 8
  %call50 = call noalias i8* @g_strdup(i8* %33)
  %34 = load %struct._GimpEnvironValue*, %struct._GimpEnvironValue** %val, align 8
  %separator51 = getelementptr inbounds %struct._GimpEnvironValue, %struct._GimpEnvironValue* %34, i32 0, i32 1
  store i8* %call50, i8** %separator51, align 8
  %35 = load %struct._GimpEnvironTable*, %struct._GimpEnvironTable** %environ_table, align 8
  %vars52 = getelementptr inbounds %struct._GimpEnvironTable, %struct._GimpEnvironTable* %35, i32 0, i32 1
  %36 = load %struct._GHashTable*, %struct._GHashTable** %vars52, align 8
  %37 = load i8*, i8** %name, align 8
  %call53 = call noalias i8* @g_strdup(i8* %37)
  %38 = load %struct._GimpEnvironValue*, %struct._GimpEnvironValue** %val, align 8
  %39 = bitcast %struct._GimpEnvironValue* %38 to i8*
  %call54 = call i32 @g_hash_table_insert(%struct._GHashTable* %36, i8* %call53, i8* %39)
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.46, %if.end.43
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %env, align 8
  %call56 = call i32 @fclose(%struct._IO_FILE* %40)
  br label %return

return:                                           ; preds = %while.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_environ_table_add(%struct._GimpEnvironTable* %environ_table, i8* %name, i8* %value, i8* %separator) #2 {
entry:
  %environ_table.addr = alloca %struct._GimpEnvironTable*, align 8
  %name.addr = alloca i8*, align 8
  %value.addr = alloca i8*, align 8
  %separator.addr = alloca i8*, align 8
  %val = alloca %struct._GimpEnvironValue*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpEnvironTable* %environ_table, %struct._GimpEnvironTable** %environ_table.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store i8* %value, i8** %value.addr, align 8
  store i8* %separator, i8** %separator.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpEnvironTable*, %struct._GimpEnvironTable** %environ_table.addr, align 8
  %1 = bitcast %struct._GimpEnvironTable* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_environ_table_get_type() #6
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_environ_table_add, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpEnvironTable*, %struct._GimpEnvironTable** %environ_table.addr, align 8
  call void @gimp_environ_table_clear_envp(%struct._GimpEnvironTable* %13)
  %14 = load %struct._GimpEnvironTable*, %struct._GimpEnvironTable** %environ_table.addr, align 8
  %internal = getelementptr inbounds %struct._GimpEnvironTable, %struct._GimpEnvironTable* %14, i32 0, i32 2
  %15 = load %struct._GHashTable*, %struct._GHashTable** %internal, align 8
  %tobool11 = icmp ne %struct._GHashTable* %15, null
  br i1 %tobool11, label %if.end.15, label %if.then.12

if.then.12:                                       ; preds = %do.end
  %call13 = call %struct._GHashTable* @g_hash_table_new_full(i32 (i8*)* @g_str_hash, i32 (i8*, i8*)* @g_str_equal, void (i8*)* @g_free, void (i8*)* bitcast (void (%struct._GimpEnvironValue*)* @gimp_environ_table_free_value to void (i8*)*))
  %16 = load %struct._GimpEnvironTable*, %struct._GimpEnvironTable** %environ_table.addr, align 8
  %internal14 = getelementptr inbounds %struct._GimpEnvironTable, %struct._GimpEnvironTable* %16, i32 0, i32 2
  store %struct._GHashTable* %call13, %struct._GHashTable** %internal14, align 8
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.12, %do.end
  %call16 = call noalias i8* @g_slice_alloc(i64 16)
  %17 = bitcast i8* %call16 to %struct._GimpEnvironValue*
  store %struct._GimpEnvironValue* %17, %struct._GimpEnvironValue** %val, align 8
  %18 = load i8*, i8** %value.addr, align 8
  %call17 = call noalias i8* @g_strdup(i8* %18)
  %19 = load %struct._GimpEnvironValue*, %struct._GimpEnvironValue** %val, align 8
  %value18 = getelementptr inbounds %struct._GimpEnvironValue, %struct._GimpEnvironValue* %19, i32 0, i32 0
  store i8* %call17, i8** %value18, align 8
  %20 = load i8*, i8** %separator.addr, align 8
  %call19 = call noalias i8* @g_strdup(i8* %20)
  %21 = load %struct._GimpEnvironValue*, %struct._GimpEnvironValue** %val, align 8
  %separator20 = getelementptr inbounds %struct._GimpEnvironValue, %struct._GimpEnvironValue* %21, i32 0, i32 1
  store i8* %call19, i8** %separator20, align 8
  %22 = load %struct._GimpEnvironTable*, %struct._GimpEnvironTable** %environ_table.addr, align 8
  %internal21 = getelementptr inbounds %struct._GimpEnvironTable, %struct._GimpEnvironTable* %22, i32 0, i32 2
  %23 = load %struct._GHashTable*, %struct._GHashTable** %internal21, align 8
  %24 = load i8*, i8** %name.addr, align 8
  %call22 = call noalias i8* @g_strdup(i8* %24)
  %25 = load %struct._GimpEnvironValue*, %struct._GimpEnvironValue** %val, align 8
  %26 = bitcast %struct._GimpEnvironValue* %25 to i8*
  %call23 = call i32 @g_hash_table_insert(%struct._GHashTable* %23, i8* %call22, i8* %26)
  br label %return

return:                                           ; preds = %if.end.15, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_environ_table_clear_envp(%struct._GimpEnvironTable* %environ_table) #2 {
entry:
  %environ_table.addr = alloca %struct._GimpEnvironTable*, align 8
  store %struct._GimpEnvironTable* %environ_table, %struct._GimpEnvironTable** %environ_table.addr, align 8
  %0 = load %struct._GimpEnvironTable*, %struct._GimpEnvironTable** %environ_table.addr, align 8
  %envp = getelementptr inbounds %struct._GimpEnvironTable, %struct._GimpEnvironTable* %0, i32 0, i32 3
  %1 = load i8**, i8*** %envp, align 8
  %tobool = icmp ne i8** %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._GimpEnvironTable*, %struct._GimpEnvironTable** %environ_table.addr, align 8
  %envp1 = getelementptr inbounds %struct._GimpEnvironTable, %struct._GimpEnvironTable* %2, i32 0, i32 3
  %3 = load i8**, i8*** %envp1, align 8
  call void @g_strfreev(i8** %3)
  %4 = load %struct._GimpEnvironTable*, %struct._GimpEnvironTable** %environ_table.addr, align 8
  %envp2 = getelementptr inbounds %struct._GimpEnvironTable, %struct._GimpEnvironTable* %4, i32 0, i32 3
  store i8** null, i8*** %envp2, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare i32 @g_str_hash(i8*) #1

declare i32 @g_str_equal(i8*, i8*) #1

declare noalias i8* @g_slice_alloc(i64) #1

declare noalias i8* @g_strdup(i8*) #1

declare i32 @g_hash_table_insert(%struct._GHashTable*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define void @gimp_environ_table_remove(%struct._GimpEnvironTable* %environ_table, i8* %name) #2 {
entry:
  %environ_table.addr = alloca %struct._GimpEnvironTable*, align 8
  %name.addr = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpEnvironTable* %environ_table, %struct._GimpEnvironTable** %environ_table.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpEnvironTable*, %struct._GimpEnvironTable** %environ_table.addr, align 8
  %1 = bitcast %struct._GimpEnvironTable* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_environ_table_get_type() #6
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_environ_table_remove, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.20

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpEnvironTable*, %struct._GimpEnvironTable** %environ_table.addr, align 8
  %internal = getelementptr inbounds %struct._GimpEnvironTable, %struct._GimpEnvironTable* %13, i32 0, i32 2
  %14 = load %struct._GHashTable*, %struct._GHashTable** %internal, align 8
  %tobool11 = icmp ne %struct._GHashTable* %14, null
  br i1 %tobool11, label %if.end.13, label %if.then.12

if.then.12:                                       ; preds = %do.end
  br label %if.end.20

if.end.13:                                        ; preds = %do.end
  %15 = load %struct._GimpEnvironTable*, %struct._GimpEnvironTable** %environ_table.addr, align 8
  call void @gimp_environ_table_clear_envp(%struct._GimpEnvironTable* %15)
  %16 = load %struct._GimpEnvironTable*, %struct._GimpEnvironTable** %environ_table.addr, align 8
  %internal14 = getelementptr inbounds %struct._GimpEnvironTable, %struct._GimpEnvironTable* %16, i32 0, i32 2
  %17 = load %struct._GHashTable*, %struct._GHashTable** %internal14, align 8
  %18 = load i8*, i8** %name.addr, align 8
  %call15 = call i32 @g_hash_table_remove(%struct._GHashTable* %17, i8* %18)
  %19 = load %struct._GimpEnvironTable*, %struct._GimpEnvironTable** %environ_table.addr, align 8
  %internal16 = getelementptr inbounds %struct._GimpEnvironTable, %struct._GimpEnvironTable* %19, i32 0, i32 2
  %20 = load %struct._GHashTable*, %struct._GHashTable** %internal16, align 8
  %call17 = call i32 @g_hash_table_size(%struct._GHashTable* %20)
  %cmp18 = icmp eq i32 %call17, 0
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end.13
  %21 = load %struct._GimpEnvironTable*, %struct._GimpEnvironTable** %environ_table.addr, align 8
  call void @gimp_environ_table_clear_internal(%struct._GimpEnvironTable* %21)
  br label %if.end.20

if.end.20:                                        ; preds = %if.else.9, %if.then.12, %if.then.19, %if.end.13
  ret void
}

declare i32 @g_hash_table_remove(%struct._GHashTable*, i8*) #1

declare i32 @g_hash_table_size(%struct._GHashTable*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_environ_table_clear_internal(%struct._GimpEnvironTable* %environ_table) #2 {
entry:
  %environ_table.addr = alloca %struct._GimpEnvironTable*, align 8
  store %struct._GimpEnvironTable* %environ_table, %struct._GimpEnvironTable** %environ_table.addr, align 8
  %0 = load %struct._GimpEnvironTable*, %struct._GimpEnvironTable** %environ_table.addr, align 8
  %internal = getelementptr inbounds %struct._GimpEnvironTable, %struct._GimpEnvironTable* %0, i32 0, i32 2
  %1 = load %struct._GHashTable*, %struct._GHashTable** %internal, align 8
  %tobool = icmp ne %struct._GHashTable* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._GimpEnvironTable*, %struct._GimpEnvironTable** %environ_table.addr, align 8
  %internal1 = getelementptr inbounds %struct._GimpEnvironTable, %struct._GimpEnvironTable* %2, i32 0, i32 2
  %3 = load %struct._GHashTable*, %struct._GHashTable** %internal1, align 8
  call void @g_hash_table_destroy(%struct._GHashTable* %3)
  %4 = load %struct._GimpEnvironTable*, %struct._GimpEnvironTable** %environ_table.addr, align 8
  %internal2 = getelementptr inbounds %struct._GimpEnvironTable, %struct._GimpEnvironTable* %4, i32 0, i32 2
  store %struct._GHashTable* null, %struct._GHashTable** %internal2, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_environ_table_clear_vars(%struct._GimpEnvironTable* %environ_table) #2 {
entry:
  %environ_table.addr = alloca %struct._GimpEnvironTable*, align 8
  store %struct._GimpEnvironTable* %environ_table, %struct._GimpEnvironTable** %environ_table.addr, align 8
  %0 = load %struct._GimpEnvironTable*, %struct._GimpEnvironTable** %environ_table.addr, align 8
  %vars = getelementptr inbounds %struct._GimpEnvironTable, %struct._GimpEnvironTable* %0, i32 0, i32 1
  %1 = load %struct._GHashTable*, %struct._GHashTable** %vars, align 8
  %tobool = icmp ne %struct._GHashTable* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._GimpEnvironTable*, %struct._GimpEnvironTable** %environ_table.addr, align 8
  %vars1 = getelementptr inbounds %struct._GimpEnvironTable, %struct._GimpEnvironTable* %2, i32 0, i32 1
  %3 = load %struct._GHashTable*, %struct._GHashTable** %vars1, align 8
  call void @g_hash_table_destroy(%struct._GHashTable* %3)
  %4 = load %struct._GimpEnvironTable*, %struct._GimpEnvironTable** %environ_table.addr, align 8
  %vars2 = getelementptr inbounds %struct._GimpEnvironTable, %struct._GimpEnvironTable* %4, i32 0, i32 1
  store %struct._GHashTable* null, %struct._GHashTable** %vars2, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_environ_table_clear_all(%struct._GimpEnvironTable* %environ_table) #2 {
entry:
  %environ_table.addr = alloca %struct._GimpEnvironTable*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpEnvironTable* %environ_table, %struct._GimpEnvironTable** %environ_table.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpEnvironTable*, %struct._GimpEnvironTable** %environ_table.addr, align 8
  %1 = bitcast %struct._GimpEnvironTable* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_environ_table_get_type() #6
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_environ_table_clear_all, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpEnvironTable*, %struct._GimpEnvironTable** %environ_table.addr, align 8
  call void @gimp_environ_table_clear_envp(%struct._GimpEnvironTable* %13)
  %14 = load %struct._GimpEnvironTable*, %struct._GimpEnvironTable** %environ_table.addr, align 8
  call void @gimp_environ_table_clear_vars(%struct._GimpEnvironTable* %14)
  %15 = load %struct._GimpEnvironTable*, %struct._GimpEnvironTable** %environ_table.addr, align 8
  call void @gimp_environ_table_clear_internal(%struct._GimpEnvironTable* %15)
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define i8** @gimp_environ_table_get_envp(%struct._GimpEnvironTable* %environ_table) #2 {
entry:
  %retval = alloca i8**, align 8
  %environ_table.addr = alloca %struct._GimpEnvironTable*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpEnvironTable* %environ_table, %struct._GimpEnvironTable** %environ_table.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpEnvironTable*, %struct._GimpEnvironTable** %environ_table.addr, align 8
  %1 = bitcast %struct._GimpEnvironTable* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_environ_table_get_type() #6
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_environ_table_get_envp, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i32 0, i32 0))
  store i8** null, i8*** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpEnvironTable*, %struct._GimpEnvironTable** %environ_table.addr, align 8
  %envp = getelementptr inbounds %struct._GimpEnvironTable, %struct._GimpEnvironTable* %13, i32 0, i32 3
  %14 = load i8**, i8*** %envp, align 8
  %tobool11 = icmp ne i8** %14, null
  br i1 %tobool11, label %if.end.13, label %if.then.12

if.then.12:                                       ; preds = %do.end
  %15 = load %struct._GimpEnvironTable*, %struct._GimpEnvironTable** %environ_table.addr, align 8
  call void @gimp_environ_table_populate(%struct._GimpEnvironTable* %15)
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %do.end
  %16 = load %struct._GimpEnvironTable*, %struct._GimpEnvironTable** %environ_table.addr, align 8
  %envp14 = getelementptr inbounds %struct._GimpEnvironTable, %struct._GimpEnvironTable* %16, i32 0, i32 3
  %17 = load i8**, i8*** %envp14, align 8
  store i8** %17, i8*** %retval
  br label %return

return:                                           ; preds = %if.end.13, %if.else.9
  %18 = load i8**, i8*** %retval
  ret i8** %18
}

; Function Attrs: nounwind uwtable
define internal void @gimp_environ_table_populate(%struct._GimpEnvironTable* %environ_table) #2 {
entry:
  %environ_table.addr = alloca %struct._GimpEnvironTable*, align 8
  %env = alloca i8**, align 8
  %var = alloca i8**, align 8
  %env_array = alloca %struct._GPtrArray*, align 8
  store %struct._GimpEnvironTable* %environ_table, %struct._GimpEnvironTable** %environ_table.addr, align 8
  %call = call i8** @g_listenv()
  store i8** %call, i8*** %env, align 8
  %0 = load i8**, i8*** %env, align 8
  store i8** %0, i8*** %var, align 8
  %call1 = call %struct._GPtrArray* @g_ptr_array_new()
  store %struct._GPtrArray* %call1, %struct._GPtrArray** %env_array, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %1 = load i8**, i8*** %var, align 8
  %2 = load i8*, i8** %1, align 8
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load %struct._GimpEnvironTable*, %struct._GimpEnvironTable** %environ_table.addr, align 8
  %4 = load i8**, i8*** %var, align 8
  %5 = load i8*, i8** %4, align 8
  %call2 = call i32 @gimp_environ_table_pass_through(%struct._GimpEnvironTable* %3, i8* %5)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %6 = load %struct._GPtrArray*, %struct._GPtrArray** %env_array, align 8
  %7 = load i8**, i8*** %var, align 8
  %8 = load i8*, i8** %7, align 8
  %9 = load i8**, i8*** %var, align 8
  %10 = load i8*, i8** %9, align 8
  %call4 = call i8* @g_getenv(i8* %10)
  %call5 = call noalias i8* (i8*, ...) @g_strconcat(i8* %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0), i8* %call4, i8* null)
  call void @g_ptr_array_add(%struct._GPtrArray* %6, i8* %call5)
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %11 = load i8**, i8*** %var, align 8
  %incdec.ptr = getelementptr inbounds i8*, i8** %11, i32 1
  store i8** %incdec.ptr, i8*** %var, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %12 = load i8**, i8*** %env, align 8
  call void @g_strfreev(i8** %12)
  %13 = load %struct._GimpEnvironTable*, %struct._GimpEnvironTable** %environ_table.addr, align 8
  %vars = getelementptr inbounds %struct._GimpEnvironTable, %struct._GimpEnvironTable* %13, i32 0, i32 1
  %14 = load %struct._GHashTable*, %struct._GHashTable** %vars, align 8
  %tobool6 = icmp ne %struct._GHashTable* %14, null
  br i1 %tobool6, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %while.end
  %15 = load %struct._GimpEnvironTable*, %struct._GimpEnvironTable** %environ_table.addr, align 8
  %vars8 = getelementptr inbounds %struct._GimpEnvironTable, %struct._GimpEnvironTable* %15, i32 0, i32 1
  %16 = load %struct._GHashTable*, %struct._GHashTable** %vars8, align 8
  %17 = load %struct._GPtrArray*, %struct._GPtrArray** %env_array, align 8
  %18 = bitcast %struct._GPtrArray* %17 to i8*
  call void @g_hash_table_foreach(%struct._GHashTable* %16, void (i8*, i8*, i8*)* bitcast (void (i8*, %struct._GimpEnvironValue*, %struct._GPtrArray*)* @gimp_environ_table_populate_one to void (i8*, i8*, i8*)*), i8* %18)
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.7, %while.end
  %19 = load %struct._GimpEnvironTable*, %struct._GimpEnvironTable** %environ_table.addr, align 8
  %internal = getelementptr inbounds %struct._GimpEnvironTable, %struct._GimpEnvironTable* %19, i32 0, i32 2
  %20 = load %struct._GHashTable*, %struct._GHashTable** %internal, align 8
  %tobool10 = icmp ne %struct._GHashTable* %20, null
  br i1 %tobool10, label %if.then.11, label %if.end.13

if.then.11:                                       ; preds = %if.end.9
  %21 = load %struct._GimpEnvironTable*, %struct._GimpEnvironTable** %environ_table.addr, align 8
  %internal12 = getelementptr inbounds %struct._GimpEnvironTable, %struct._GimpEnvironTable* %21, i32 0, i32 2
  %22 = load %struct._GHashTable*, %struct._GHashTable** %internal12, align 8
  %23 = load %struct._GPtrArray*, %struct._GPtrArray** %env_array, align 8
  %24 = bitcast %struct._GPtrArray* %23 to i8*
  call void @g_hash_table_foreach(%struct._GHashTable* %22, void (i8*, i8*, i8*)* bitcast (void (i8*, %struct._GimpEnvironValue*, %struct._GPtrArray*)* @gimp_environ_table_populate_one to void (i8*, i8*, i8*)*), i8* %24)
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.11, %if.end.9
  %25 = load %struct._GPtrArray*, %struct._GPtrArray** %env_array, align 8
  call void @g_ptr_array_add(%struct._GPtrArray* %25, i8* null)
  %26 = load %struct._GPtrArray*, %struct._GPtrArray** %env_array, align 8
  %call14 = call i8** @g_ptr_array_free(%struct._GPtrArray* %26, i32 0)
  %27 = load %struct._GimpEnvironTable*, %struct._GimpEnvironTable** %environ_table.addr, align 8
  %envp = getelementptr inbounds %struct._GimpEnvironTable, %struct._GimpEnvironTable* %27, i32 0, i32 3
  store i8** %call14, i8*** %envp, align 8
  ret void
}

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_environ_table_class_init(%struct._GimpEnvironTableClass* %class) #2 {
entry:
  %class.addr = alloca %struct._GimpEnvironTableClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  store %struct._GimpEnvironTableClass* %class, %struct._GimpEnvironTableClass** %class.addr, align 8
  %0 = load %struct._GimpEnvironTableClass*, %struct._GimpEnvironTableClass** %class.addr, align 8
  %1 = bitcast %struct._GimpEnvironTableClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %3, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_environ_table_finalize, void (%struct._GObject*)** %finalize, align 8
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_environ_table_finalize(%struct._GObject* %object) #2 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %environ_table = alloca %struct._GimpEnvironTable*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_environ_table_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpEnvironTable*
  store %struct._GimpEnvironTable* %2, %struct._GimpEnvironTable** %environ_table, align 8
  %3 = load %struct._GimpEnvironTable*, %struct._GimpEnvironTable** %environ_table, align 8
  call void @gimp_environ_table_clear_all(%struct._GimpEnvironTable* %3)
  %4 = load i8*, i8** @gimp_environ_table_parent_class, align 8
  %5 = bitcast i8* %4 to %struct._GTypeClass*
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %5, i64 80)
  %6 = bitcast %struct._GTypeClass* %call2 to %struct._GObjectClass*
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %6, i32 0, i32 6
  %7 = load void (%struct._GObject*)*, void (%struct._GObject*)** %finalize, align 8
  %8 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %7(%struct._GObject* %8)
  ret void
}

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #3

; Function Attrs: nounwind uwtable
define internal void @g_message(i8* %format, ...) #2 {
entry:
  %format.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %format, i8** %format.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i8*, i8** %format.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  call void @g_logv(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 32, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

declare i8* @gimp_filename_to_utf8(i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_environ_table_legal_name(i8* %name) #2 {
entry:
  %retval = alloca i32, align 4
  %name.addr = alloca i8*, align 8
  %s = alloca i8*, align 8
  store i8* %name, i8** %name.addr, align 8
  %0 = load i8*, i8** %name.addr, align 8
  %1 = load i8, i8* %0, align 1
  %idxprom = zext i8 %1 to i64
  %2 = load i16*, i16** @g_ascii_table, align 8
  %arrayidx = getelementptr inbounds i16, i16* %2, i64 %idxprom
  %3 = load i16, i16* %arrayidx, align 2
  %conv = zext i16 %3 to i32
  %and = and i32 %conv, 2
  %cmp = icmp ne i32 %and, 0
  br i1 %cmp, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %4 = load i8*, i8** %name.addr, align 8
  %5 = load i8, i8* %4, align 1
  %conv2 = sext i8 %5 to i32
  %cmp3 = icmp ne i32 %conv2, 95
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %6 = load i8*, i8** %name.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 1
  store i8* %add.ptr, i8** %s, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %7 = load i8*, i8** %s, align 8
  %8 = load i8, i8* %7, align 1
  %tobool = icmp ne i8 %8, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i8*, i8** %s, align 8
  %10 = load i8, i8* %9, align 1
  %idxprom5 = zext i8 %10 to i64
  %11 = load i16*, i16** @g_ascii_table, align 8
  %arrayidx6 = getelementptr inbounds i16, i16* %11, i64 %idxprom5
  %12 = load i16, i16* %arrayidx6, align 2
  %conv7 = zext i16 %12 to i32
  %and8 = and i32 %conv7, 1
  %cmp9 = icmp ne i32 %and8, 0
  br i1 %cmp9, label %if.end.16, label %land.lhs.true.11

land.lhs.true.11:                                 ; preds = %for.body
  %13 = load i8*, i8** %s, align 8
  %14 = load i8, i8* %13, align 1
  %conv12 = sext i8 %14 to i32
  %cmp13 = icmp ne i32 %conv12, 95
  br i1 %cmp13, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %land.lhs.true.11
  store i32 0, i32* %retval
  br label %return

if.end.16:                                        ; preds = %land.lhs.true.11, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.16
  %15 = load i8*, i8** %s, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr, i8** %s, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.15, %if.then
  %16 = load i32, i32* %retval
  ret i32 %16
}

declare i8* @g_hash_table_lookup(%struct._GHashTable*, i8*) #1

declare noalias i8* @gimp_config_path_expand(i8*, i32, %struct._GError**) #1

declare i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

declare i8** @g_listenv() #1

declare %struct._GPtrArray* @g_ptr_array_new() #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_environ_table_pass_through(%struct._GimpEnvironTable* %environ_table, i8* %name) #2 {
entry:
  %environ_table.addr = alloca %struct._GimpEnvironTable*, align 8
  %name.addr = alloca i8*, align 8
  %vars = alloca i32, align 4
  %internal = alloca i32, align 4
  store %struct._GimpEnvironTable* %environ_table, %struct._GimpEnvironTable** %environ_table.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  %0 = load %struct._GimpEnvironTable*, %struct._GimpEnvironTable** %environ_table.addr, align 8
  %vars1 = getelementptr inbounds %struct._GimpEnvironTable, %struct._GimpEnvironTable* %0, i32 0, i32 1
  %1 = load %struct._GHashTable*, %struct._GHashTable** %vars1, align 8
  %tobool = icmp ne %struct._GHashTable* %1, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %2 = load %struct._GimpEnvironTable*, %struct._GimpEnvironTable** %environ_table.addr, align 8
  %vars2 = getelementptr inbounds %struct._GimpEnvironTable, %struct._GimpEnvironTable* %2, i32 0, i32 1
  %3 = load %struct._GHashTable*, %struct._GHashTable** %vars2, align 8
  %4 = load i8*, i8** %name.addr, align 8
  %call = call i8* @g_hash_table_lookup(%struct._GHashTable* %3, i8* %4)
  %tobool3 = icmp ne i8* %call, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %5 = phi i1 [ false, %entry ], [ %tobool3, %land.rhs ]
  %land.ext = zext i1 %5 to i32
  store i32 %land.ext, i32* %vars, align 4
  %6 = load %struct._GimpEnvironTable*, %struct._GimpEnvironTable** %environ_table.addr, align 8
  %internal4 = getelementptr inbounds %struct._GimpEnvironTable, %struct._GimpEnvironTable* %6, i32 0, i32 2
  %7 = load %struct._GHashTable*, %struct._GHashTable** %internal4, align 8
  %tobool5 = icmp ne %struct._GHashTable* %7, null
  br i1 %tobool5, label %land.rhs.6, label %land.end.10

land.rhs.6:                                       ; preds = %land.end
  %8 = load %struct._GimpEnvironTable*, %struct._GimpEnvironTable** %environ_table.addr, align 8
  %internal7 = getelementptr inbounds %struct._GimpEnvironTable, %struct._GimpEnvironTable* %8, i32 0, i32 2
  %9 = load %struct._GHashTable*, %struct._GHashTable** %internal7, align 8
  %10 = load i8*, i8** %name.addr, align 8
  %call8 = call i8* @g_hash_table_lookup(%struct._GHashTable* %9, i8* %10)
  %tobool9 = icmp ne i8* %call8, null
  br label %land.end.10

land.end.10:                                      ; preds = %land.rhs.6, %land.end
  %11 = phi i1 [ false, %land.end ], [ %tobool9, %land.rhs.6 ]
  %land.ext11 = zext i1 %11 to i32
  store i32 %land.ext11, i32* %internal, align 4
  %12 = load i32, i32* %vars, align 4
  %tobool12 = icmp ne i32 %12, 0
  br i1 %tobool12, label %land.end.15, label %land.rhs.13

land.rhs.13:                                      ; preds = %land.end.10
  %13 = load i32, i32* %internal, align 4
  %tobool14 = icmp ne i32 %13, 0
  %lnot = xor i1 %tobool14, true
  br label %land.end.15

land.end.15:                                      ; preds = %land.rhs.13, %land.end.10
  %14 = phi i1 [ false, %land.end.10 ], [ %lnot, %land.rhs.13 ]
  %land.ext16 = zext i1 %14 to i32
  ret i32 %land.ext16
}

declare void @g_ptr_array_add(%struct._GPtrArray*, i8*) #1

declare noalias i8* @g_strconcat(i8*, ...) #1

declare i8* @g_getenv(i8*) #1

declare void @g_strfreev(i8**) #1

declare void @g_hash_table_foreach(%struct._GHashTable*, void (i8*, i8*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_environ_table_populate_one(i8* %name, %struct._GimpEnvironValue* %val, %struct._GPtrArray* %env_array) #2 {
entry:
  %name.addr = alloca i8*, align 8
  %val.addr = alloca %struct._GimpEnvironValue*, align 8
  %env_array.addr = alloca %struct._GPtrArray*, align 8
  %old = alloca i8*, align 8
  %var = alloca i8*, align 8
  store i8* %name, i8** %name.addr, align 8
  store %struct._GimpEnvironValue* %val, %struct._GimpEnvironValue** %val.addr, align 8
  store %struct._GPtrArray* %env_array, %struct._GPtrArray** %env_array.addr, align 8
  store i8* null, i8** %var, align 8
  %0 = load %struct._GimpEnvironValue*, %struct._GimpEnvironValue** %val.addr, align 8
  %separator = getelementptr inbounds %struct._GimpEnvironValue, %struct._GimpEnvironValue* %0, i32 0, i32 1
  %1 = load i8*, i8** %separator, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.then, label %if.end.5

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %name.addr, align 8
  %call = call i8* @g_getenv(i8* %2)
  store i8* %call, i8** %old, align 8
  %3 = load i8*, i8** %old, align 8
  %tobool1 = icmp ne i8* %3, null
  br i1 %tobool1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %4 = load i8*, i8** %name.addr, align 8
  %5 = load %struct._GimpEnvironValue*, %struct._GimpEnvironValue** %val.addr, align 8
  %value = getelementptr inbounds %struct._GimpEnvironValue, %struct._GimpEnvironValue* %5, i32 0, i32 0
  %6 = load i8*, i8** %value, align 8
  %7 = load %struct._GimpEnvironValue*, %struct._GimpEnvironValue** %val.addr, align 8
  %separator3 = getelementptr inbounds %struct._GimpEnvironValue, %struct._GimpEnvironValue* %7, i32 0, i32 1
  %8 = load i8*, i8** %separator3, align 8
  %9 = load i8*, i8** %old, align 8
  %call4 = call noalias i8* (i8*, ...) @g_strconcat(i8* %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0), i8* %6, i8* %8, i8* %9, i8* null)
  store i8* %call4, i8** %var, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %entry
  %10 = load i8*, i8** %var, align 8
  %tobool6 = icmp ne i8* %10, null
  br i1 %tobool6, label %if.end.10, label %if.then.7

if.then.7:                                        ; preds = %if.end.5
  %11 = load i8*, i8** %name.addr, align 8
  %12 = load %struct._GimpEnvironValue*, %struct._GimpEnvironValue** %val.addr, align 8
  %value8 = getelementptr inbounds %struct._GimpEnvironValue, %struct._GimpEnvironValue* %12, i32 0, i32 0
  %13 = load i8*, i8** %value8, align 8
  %call9 = call noalias i8* (i8*, ...) @g_strconcat(i8* %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0), i8* %13, i8* null)
  store i8* %call9, i8** %var, align 8
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.7, %if.end.5
  %14 = load %struct._GPtrArray*, %struct._GPtrArray** %env_array.addr, align 8
  %15 = load i8*, i8** %var, align 8
  call void @g_ptr_array_add(%struct._GPtrArray* %14, i8* %15)
  ret void
}

declare i8** @g_ptr_array_free(%struct._GPtrArray*, i32) #1

declare void @g_hash_table_destroy(%struct._GHashTable*) #1

declare void @g_slice_free1(i64, i8*) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
