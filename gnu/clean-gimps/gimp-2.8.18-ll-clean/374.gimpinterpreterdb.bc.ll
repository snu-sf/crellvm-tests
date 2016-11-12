; ModuleID = './app/plug-in/gimpinterpreterdb.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpInterpreterDBClass = type { %struct._GObjectClass }
%struct._GObjectClass = type { %struct._GTypeClass, %struct._GSList*, %struct._GObject* (i64, i32, %struct._GObjectConstructParam*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*)*, void (%struct._GObject*)*, void (%struct._GObject*, i32, %struct._GParamSpec**)*, void (%struct._GObject*, %struct._GParamSpec*)*, void (%struct._GObject*)*, i64, [6 x i8*] }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GData = type opaque
%struct._GObjectConstructParam = type { %struct._GParamSpec*, %struct._GValue* }
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GimpInterpreterDB = type { %struct._GObject, %struct._GHashTable*, %struct._GSList*, %struct._GHashTable*, %struct._GHashTable*, %struct._GHashTable* }
%struct._GHashTable = type opaque
%struct._GimpDatafileData = type { i8*, i8*, i8*, i64, i64, i64 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._GimpInterpreterMagic = type { i64, i8*, i8*, i32, i8* }
%struct._GString = type { i8*, i64, i64 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@gimp_interpreter_db_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"GimpInterpreterDB\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Gimp-Plug-In\00", align 1
@__func__.gimp_interpreter_db_load = private unnamed_addr constant [25 x i8] c"gimp_interpreter_db_load\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"GIMP_IS_INTERPRETER_DB (db)\00", align 1
@__func__.gimp_interpreter_db_clear = private unnamed_addr constant [26 x i8] c"gimp_interpreter_db_clear\00", align 1
@__func__.gimp_interpreter_db_resolve = private unnamed_addr constant [28 x i8] c"gimp_interpreter_db_resolve\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"program_path != NULL\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"interp_arg != NULL\00", align 1
@__func__.gimp_interpreter_db_get_extensions = private unnamed_addr constant [35 x i8] c"gimp_interpreter_db_get_extensions\00", align 1
@gimp_interpreter_db_parent_class = internal global i8* null, align 8
@GimpInterpreterDB_private_offset = internal global i32 0, align 4
@.str.5 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@g_ascii_table = external constant i16*, align 8
@.str.6 = private unnamed_addr constant [54 x i8] c"Bad interpreter referenced in interpreter file %s: %s\00", align 1
@.str.7 = private unnamed_addr constant [48 x i8] c"Bad binary format string in interpreter file %s\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"/usr/bin/env\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_interpreter_db_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_interpreter_db_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_interpreter_db_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0))
  %call6 = call i64 @g_type_register_static_simple(i64 80, i8* %call5, i32 136, void (i8*, i8*)* bitcast (void (i8*)* @gimp_interpreter_db_class_intern_init to void (i8*, i8*)*), i32 64, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpInterpreterDB*)* @gimp_interpreter_db_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call6, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_interpreter_db_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_interpreter_db_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_interpreter_db_class_intern_init(i8* %klass) #2 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_interpreter_db_parent_class, align 8
  %1 = load i32, i32* @GimpInterpreterDB_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpInterpreterDB_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpInterpreterDBClass*
  call void @gimp_interpreter_db_class_init(%struct._GimpInterpreterDBClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_interpreter_db_init(%struct._GimpInterpreterDB* %db) #2 {
entry:
  %db.addr = alloca %struct._GimpInterpreterDB*, align 8
  store %struct._GimpInterpreterDB* %db, %struct._GimpInterpreterDB** %db.addr, align 8
  %0 = load %struct._GimpInterpreterDB*, %struct._GimpInterpreterDB** %db.addr, align 8
  %programs = getelementptr inbounds %struct._GimpInterpreterDB, %struct._GimpInterpreterDB* %0, i32 0, i32 1
  store %struct._GHashTable* null, %struct._GHashTable** %programs, align 8
  %1 = load %struct._GimpInterpreterDB*, %struct._GimpInterpreterDB** %db.addr, align 8
  %magics = getelementptr inbounds %struct._GimpInterpreterDB, %struct._GimpInterpreterDB* %1, i32 0, i32 2
  store %struct._GSList* null, %struct._GSList** %magics, align 8
  %2 = load %struct._GimpInterpreterDB*, %struct._GimpInterpreterDB** %db.addr, align 8
  %magic_names = getelementptr inbounds %struct._GimpInterpreterDB, %struct._GimpInterpreterDB* %2, i32 0, i32 3
  store %struct._GHashTable* null, %struct._GHashTable** %magic_names, align 8
  %3 = load %struct._GimpInterpreterDB*, %struct._GimpInterpreterDB** %db.addr, align 8
  %extensions = getelementptr inbounds %struct._GimpInterpreterDB, %struct._GimpInterpreterDB* %3, i32 0, i32 4
  store %struct._GHashTable* null, %struct._GHashTable** %extensions, align 8
  %4 = load %struct._GimpInterpreterDB*, %struct._GimpInterpreterDB** %db.addr, align 8
  %extension_names = getelementptr inbounds %struct._GimpInterpreterDB, %struct._GimpInterpreterDB* %4, i32 0, i32 5
  store %struct._GHashTable* null, %struct._GHashTable** %extension_names, align 8
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GimpInterpreterDB* @gimp_interpreter_db_new() #2 {
entry:
  %call = call i64 @gimp_interpreter_db_get_type() #8
  %call1 = call i8* (i64, i8*, ...) @g_object_new(i64 %call, i8* null)
  %0 = bitcast i8* %call1 to %struct._GimpInterpreterDB*
  ret %struct._GimpInterpreterDB* %0
}

declare i8* @g_object_new(i64, i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @gimp_interpreter_db_load(%struct._GimpInterpreterDB* %db, i8* %interp_path) #2 {
entry:
  %db.addr = alloca %struct._GimpInterpreterDB*, align 8
  %interp_path.addr = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpInterpreterDB* %db, %struct._GimpInterpreterDB** %db.addr, align 8
  store i8* %interp_path, i8** %interp_path.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpInterpreterDB*, %struct._GimpInterpreterDB** %db.addr, align 8
  %1 = bitcast %struct._GimpInterpreterDB* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_interpreter_db_get_type() #8
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_interpreter_db_load, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpInterpreterDB*, %struct._GimpInterpreterDB** %db.addr, align 8
  call void @gimp_interpreter_db_clear(%struct._GimpInterpreterDB* %13)
  %call11 = call %struct._GHashTable* @g_hash_table_new_full(i32 (i8*)* @g_str_hash, i32 (i8*, i8*)* @g_str_equal, void (i8*)* @g_free, void (i8*)* @g_free)
  %14 = load %struct._GimpInterpreterDB*, %struct._GimpInterpreterDB** %db.addr, align 8
  %programs = getelementptr inbounds %struct._GimpInterpreterDB, %struct._GimpInterpreterDB* %14, i32 0, i32 1
  store %struct._GHashTable* %call11, %struct._GHashTable** %programs, align 8
  %call12 = call %struct._GHashTable* @g_hash_table_new_full(i32 (i8*)* @g_str_hash, i32 (i8*, i8*)* @g_str_equal, void (i8*)* @g_free, void (i8*)* @g_free)
  %15 = load %struct._GimpInterpreterDB*, %struct._GimpInterpreterDB** %db.addr, align 8
  %extensions = getelementptr inbounds %struct._GimpInterpreterDB, %struct._GimpInterpreterDB* %15, i32 0, i32 4
  store %struct._GHashTable* %call12, %struct._GHashTable** %extensions, align 8
  %call13 = call %struct._GHashTable* @g_hash_table_new_full(i32 (i8*)* @g_str_hash, i32 (i8*, i8*)* @g_str_equal, void (i8*)* @g_free, void (i8*)* null)
  %16 = load %struct._GimpInterpreterDB*, %struct._GimpInterpreterDB** %db.addr, align 8
  %magic_names = getelementptr inbounds %struct._GimpInterpreterDB, %struct._GimpInterpreterDB* %16, i32 0, i32 3
  store %struct._GHashTable* %call13, %struct._GHashTable** %magic_names, align 8
  %call14 = call %struct._GHashTable* @g_hash_table_new_full(i32 (i8*)* @g_str_hash, i32 (i8*, i8*)* @g_str_equal, void (i8*)* @g_free, void (i8*)* null)
  %17 = load %struct._GimpInterpreterDB*, %struct._GimpInterpreterDB** %db.addr, align 8
  %extension_names = getelementptr inbounds %struct._GimpInterpreterDB, %struct._GimpInterpreterDB* %17, i32 0, i32 5
  store %struct._GHashTable* %call14, %struct._GHashTable** %extension_names, align 8
  %18 = load i8*, i8** %interp_path.addr, align 8
  %19 = load %struct._GimpInterpreterDB*, %struct._GimpInterpreterDB** %db.addr, align 8
  %20 = bitcast %struct._GimpInterpreterDB* %19 to i8*
  call void @gimp_datafiles_read_directories(i8* %18, i32 16, void (%struct._GimpDatafileData*, i8*)* @gimp_interpreter_db_load_interp_file, i8* %20)
  %21 = load %struct._GimpInterpreterDB*, %struct._GimpInterpreterDB** %db.addr, align 8
  call void @gimp_interpreter_db_resolve_programs(%struct._GimpInterpreterDB* %21)
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #3

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define void @gimp_interpreter_db_clear(%struct._GimpInterpreterDB* %db) #2 {
entry:
  %db.addr = alloca %struct._GimpInterpreterDB*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpInterpreterDB* %db, %struct._GimpInterpreterDB** %db.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpInterpreterDB*, %struct._GimpInterpreterDB** %db.addr, align 8
  %1 = bitcast %struct._GimpInterpreterDB* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_interpreter_db_get_type() #8
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_interpreter_db_clear, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpInterpreterDB*, %struct._GimpInterpreterDB** %db.addr, align 8
  %magic_names = getelementptr inbounds %struct._GimpInterpreterDB, %struct._GimpInterpreterDB* %13, i32 0, i32 3
  %14 = load %struct._GHashTable*, %struct._GHashTable** %magic_names, align 8
  %tobool11 = icmp ne %struct._GHashTable* %14, null
  br i1 %tobool11, label %if.then.12, label %if.end.15

if.then.12:                                       ; preds = %do.end
  %15 = load %struct._GimpInterpreterDB*, %struct._GimpInterpreterDB** %db.addr, align 8
  %magic_names13 = getelementptr inbounds %struct._GimpInterpreterDB, %struct._GimpInterpreterDB* %15, i32 0, i32 3
  %16 = load %struct._GHashTable*, %struct._GHashTable** %magic_names13, align 8
  call void @g_hash_table_destroy(%struct._GHashTable* %16)
  %17 = load %struct._GimpInterpreterDB*, %struct._GimpInterpreterDB** %db.addr, align 8
  %magic_names14 = getelementptr inbounds %struct._GimpInterpreterDB, %struct._GimpInterpreterDB* %17, i32 0, i32 3
  store %struct._GHashTable* null, %struct._GHashTable** %magic_names14, align 8
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.12, %do.end
  %18 = load %struct._GimpInterpreterDB*, %struct._GimpInterpreterDB** %db.addr, align 8
  %extension_names = getelementptr inbounds %struct._GimpInterpreterDB, %struct._GimpInterpreterDB* %18, i32 0, i32 5
  %19 = load %struct._GHashTable*, %struct._GHashTable** %extension_names, align 8
  %tobool16 = icmp ne %struct._GHashTable* %19, null
  br i1 %tobool16, label %if.then.17, label %if.end.20

if.then.17:                                       ; preds = %if.end.15
  %20 = load %struct._GimpInterpreterDB*, %struct._GimpInterpreterDB** %db.addr, align 8
  %extension_names18 = getelementptr inbounds %struct._GimpInterpreterDB, %struct._GimpInterpreterDB* %20, i32 0, i32 5
  %21 = load %struct._GHashTable*, %struct._GHashTable** %extension_names18, align 8
  call void @g_hash_table_destroy(%struct._GHashTable* %21)
  %22 = load %struct._GimpInterpreterDB*, %struct._GimpInterpreterDB** %db.addr, align 8
  %extension_names19 = getelementptr inbounds %struct._GimpInterpreterDB, %struct._GimpInterpreterDB* %22, i32 0, i32 5
  store %struct._GHashTable* null, %struct._GHashTable** %extension_names19, align 8
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.17, %if.end.15
  %23 = load %struct._GimpInterpreterDB*, %struct._GimpInterpreterDB** %db.addr, align 8
  %programs = getelementptr inbounds %struct._GimpInterpreterDB, %struct._GimpInterpreterDB* %23, i32 0, i32 1
  %24 = load %struct._GHashTable*, %struct._GHashTable** %programs, align 8
  %tobool21 = icmp ne %struct._GHashTable* %24, null
  br i1 %tobool21, label %if.then.22, label %if.end.25

if.then.22:                                       ; preds = %if.end.20
  %25 = load %struct._GimpInterpreterDB*, %struct._GimpInterpreterDB** %db.addr, align 8
  %programs23 = getelementptr inbounds %struct._GimpInterpreterDB, %struct._GimpInterpreterDB* %25, i32 0, i32 1
  %26 = load %struct._GHashTable*, %struct._GHashTable** %programs23, align 8
  call void @g_hash_table_destroy(%struct._GHashTable* %26)
  %27 = load %struct._GimpInterpreterDB*, %struct._GimpInterpreterDB** %db.addr, align 8
  %programs24 = getelementptr inbounds %struct._GimpInterpreterDB, %struct._GimpInterpreterDB* %27, i32 0, i32 1
  store %struct._GHashTable* null, %struct._GHashTable** %programs24, align 8
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.22, %if.end.20
  %28 = load %struct._GimpInterpreterDB*, %struct._GimpInterpreterDB** %db.addr, align 8
  %extensions = getelementptr inbounds %struct._GimpInterpreterDB, %struct._GimpInterpreterDB* %28, i32 0, i32 4
  %29 = load %struct._GHashTable*, %struct._GHashTable** %extensions, align 8
  %tobool26 = icmp ne %struct._GHashTable* %29, null
  br i1 %tobool26, label %if.then.27, label %if.end.30

if.then.27:                                       ; preds = %if.end.25
  %30 = load %struct._GimpInterpreterDB*, %struct._GimpInterpreterDB** %db.addr, align 8
  %extensions28 = getelementptr inbounds %struct._GimpInterpreterDB, %struct._GimpInterpreterDB* %30, i32 0, i32 4
  %31 = load %struct._GHashTable*, %struct._GHashTable** %extensions28, align 8
  call void @g_hash_table_destroy(%struct._GHashTable* %31)
  %32 = load %struct._GimpInterpreterDB*, %struct._GimpInterpreterDB** %db.addr, align 8
  %extensions29 = getelementptr inbounds %struct._GimpInterpreterDB, %struct._GimpInterpreterDB* %32, i32 0, i32 4
  store %struct._GHashTable* null, %struct._GHashTable** %extensions29, align 8
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.27, %if.end.25
  %33 = load %struct._GimpInterpreterDB*, %struct._GimpInterpreterDB** %db.addr, align 8
  call void @gimp_interpreter_db_clear_magics(%struct._GimpInterpreterDB* %33)
  br label %return

return:                                           ; preds = %if.end.30, %if.else.9
  ret void
}

declare %struct._GHashTable* @g_hash_table_new_full(i32 (i8*)*, i32 (i8*, i8*)*, void (i8*)*, void (i8*)*) #1

declare i32 @g_str_hash(i8*) #1

declare i32 @g_str_equal(i8*, i8*) #1

declare void @g_free(i8*) #1

declare void @gimp_datafiles_read_directories(i8*, i32, void (%struct._GimpDatafileData*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_interpreter_db_load_interp_file(%struct._GimpDatafileData* %file_data, i8* %user_data) #2 {
entry:
  %file_data.addr = alloca %struct._GimpDatafileData*, align 8
  %user_data.addr = alloca i8*, align 8
  %db = alloca %struct._GimpInterpreterDB*, align 8
  %interp_file = alloca %struct._IO_FILE*, align 8
  %buffer = alloca [4096 x i8], align 16
  %len = alloca i64, align 8
  store %struct._GimpDatafileData* %file_data, %struct._GimpDatafileData** %file_data.addr, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  %0 = load i8*, i8** %user_data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_interpreter_db_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpInterpreterDB*
  store %struct._GimpInterpreterDB* %2, %struct._GimpInterpreterDB** %db, align 8
  %3 = load %struct._GimpDatafileData*, %struct._GimpDatafileData** %file_data.addr, align 8
  %filename = getelementptr inbounds %struct._GimpDatafileData, %struct._GimpDatafileData* %3, i32 0, i32 0
  %4 = load i8*, i8** %filename, align 8
  %call2 = call %struct._IO_FILE* @fopen(i8* %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0))
  store %struct._IO_FILE* %call2, %struct._IO_FILE** %interp_file, align 8
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %interp_file, align 8
  %tobool = icmp ne %struct._IO_FILE* %5, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end.42, %if.then.14, %if.then.6, %if.end
  %arraydecay = getelementptr inbounds [4096 x i8], [4096 x i8]* %buffer, i32 0, i32 0
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %interp_file, align 8
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
  %call9 = call i64 @strlen(i8* %arraydecay8) #9
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
  %arrayidx17 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buffer, i32 0, i64 0
  %11 = load i8, i8* %arrayidx17, align 1
  %idxprom = zext i8 %11 to i64
  %12 = load i16*, i16** @g_ascii_table, align 8
  %arrayidx18 = getelementptr inbounds i16, i16* %12, i64 %idxprom
  %13 = load i16, i16* %arrayidx18, align 2
  %conv19 = zext i16 %13 to i32
  %and = and i32 %conv19, 1
  %cmp20 = icmp ne i32 %and, 0
  br i1 %cmp20, label %if.then.26, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.15
  %arrayidx22 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buffer, i32 0, i64 0
  %14 = load i8, i8* %arrayidx22, align 1
  %conv23 = sext i8 %14 to i32
  %cmp24 = icmp eq i32 %conv23, 47
  br i1 %cmp24, label %if.then.26, label %if.else

if.then.26:                                       ; preds = %lor.lhs.false, %if.end.15
  %15 = load %struct._GimpInterpreterDB*, %struct._GimpInterpreterDB** %db, align 8
  %16 = load %struct._GimpDatafileData*, %struct._GimpDatafileData** %file_data.addr, align 8
  %arraydecay27 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buffer, i32 0, i32 0
  call void @gimp_interpreter_db_add_program(%struct._GimpInterpreterDB* %15, %struct._GimpDatafileData* %16, i8* %arraydecay27)
  br label %if.end.42

if.else:                                          ; preds = %lor.lhs.false
  %arrayidx28 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buffer, i32 0, i64 0
  %17 = load i8, i8* %arrayidx28, align 1
  %idxprom29 = zext i8 %17 to i64
  %18 = load i16*, i16** @g_ascii_table, align 8
  %arrayidx30 = getelementptr inbounds i16, i16* %18, i64 %idxprom29
  %19 = load i16, i16* %arrayidx30, align 2
  %conv31 = zext i16 %19 to i32
  %and32 = and i32 %conv31, 256
  %cmp33 = icmp ne i32 %and32, 0
  br i1 %cmp33, label %if.end.41, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.else
  %arrayidx35 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buffer, i32 0, i64 0
  %20 = load i8, i8* %arrayidx35, align 1
  %conv36 = sext i8 %20 to i32
  %cmp37 = icmp ne i32 %conv36, 0
  br i1 %cmp37, label %if.then.39, label %if.end.41

if.then.39:                                       ; preds = %land.lhs.true
  %21 = load %struct._GimpInterpreterDB*, %struct._GimpInterpreterDB** %db, align 8
  %22 = load %struct._GimpDatafileData*, %struct._GimpDatafileData** %file_data.addr, align 8
  %arraydecay40 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buffer, i32 0, i32 0
  call void @gimp_interpreter_db_add_binfmt_misc(%struct._GimpInterpreterDB* %21, %struct._GimpDatafileData* %22, i8* %arraydecay40)
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.39, %land.lhs.true, %if.else
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.41, %if.then.26
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %interp_file, align 8
  %call43 = call i32 @fclose(%struct._IO_FILE* %23)
  br label %return

return:                                           ; preds = %while.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_interpreter_db_resolve_programs(%struct._GimpInterpreterDB* %db) #2 {
entry:
  %db.addr = alloca %struct._GimpInterpreterDB*, align 8
  %list = alloca %struct._GSList*, align 8
  %extensions = alloca %struct._GHashTable*, align 8
  %magic = alloca %struct._GimpInterpreterMagic*, align 8
  %program = alloca i8*, align 8
  store %struct._GimpInterpreterDB* %db, %struct._GimpInterpreterDB** %db.addr, align 8
  %0 = load %struct._GimpInterpreterDB*, %struct._GimpInterpreterDB** %db.addr, align 8
  %magics = getelementptr inbounds %struct._GimpInterpreterDB, %struct._GimpInterpreterDB* %0, i32 0, i32 2
  %1 = load %struct._GSList*, %struct._GSList** %magics, align 8
  store %struct._GSList* %1, %struct._GSList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct._GSList*, %struct._GSList** %list, align 8
  %tobool = icmp ne %struct._GSList* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct._GSList*, %struct._GSList** %list, align 8
  %data = getelementptr inbounds %struct._GSList, %struct._GSList* %3, i32 0, i32 0
  %4 = load i8*, i8** %data, align 8
  %5 = bitcast i8* %4 to %struct._GimpInterpreterMagic*
  store %struct._GimpInterpreterMagic* %5, %struct._GimpInterpreterMagic** %magic, align 8
  %6 = load %struct._GimpInterpreterDB*, %struct._GimpInterpreterDB** %db.addr, align 8
  %programs = getelementptr inbounds %struct._GimpInterpreterDB, %struct._GimpInterpreterDB* %6, i32 0, i32 1
  %7 = load %struct._GHashTable*, %struct._GHashTable** %programs, align 8
  %8 = load %struct._GimpInterpreterMagic*, %struct._GimpInterpreterMagic** %magic, align 8
  %program1 = getelementptr inbounds %struct._GimpInterpreterMagic, %struct._GimpInterpreterMagic* %8, i32 0, i32 4
  %9 = load i8*, i8** %program1, align 8
  %call = call i8* @g_hash_table_lookup(%struct._GHashTable* %7, i8* %9)
  store i8* %call, i8** %program, align 8
  %10 = load i8*, i8** %program, align 8
  %cmp = icmp ne i8* %10, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %11 = load %struct._GimpInterpreterMagic*, %struct._GimpInterpreterMagic** %magic, align 8
  %program2 = getelementptr inbounds %struct._GimpInterpreterMagic, %struct._GimpInterpreterMagic* %11, i32 0, i32 4
  %12 = load i8*, i8** %program2, align 8
  call void @g_free(i8* %12)
  %13 = load i8*, i8** %program, align 8
  %call3 = call noalias i8* @g_strdup(i8* %13)
  %14 = load %struct._GimpInterpreterMagic*, %struct._GimpInterpreterMagic** %magic, align 8
  %program4 = getelementptr inbounds %struct._GimpInterpreterMagic, %struct._GimpInterpreterMagic* %14, i32 0, i32 4
  store i8* %call3, i8** %program4, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %15 = load %struct._GSList*, %struct._GSList** %list, align 8
  %next = getelementptr inbounds %struct._GSList, %struct._GSList* %15, i32 0, i32 1
  %16 = load %struct._GSList*, %struct._GSList** %next, align 8
  store %struct._GSList* %16, %struct._GSList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %17 = load %struct._GimpInterpreterDB*, %struct._GimpInterpreterDB** %db.addr, align 8
  %extensions5 = getelementptr inbounds %struct._GimpInterpreterDB, %struct._GimpInterpreterDB* %17, i32 0, i32 4
  %18 = load %struct._GHashTable*, %struct._GHashTable** %extensions5, align 8
  store %struct._GHashTable* %18, %struct._GHashTable** %extensions, align 8
  %call6 = call %struct._GHashTable* @g_hash_table_new_full(i32 (i8*)* @g_str_hash, i32 (i8*, i8*)* @g_str_equal, void (i8*)* @g_free, void (i8*)* @g_free)
  %19 = load %struct._GimpInterpreterDB*, %struct._GimpInterpreterDB** %db.addr, align 8
  %extensions7 = getelementptr inbounds %struct._GimpInterpreterDB, %struct._GimpInterpreterDB* %19, i32 0, i32 4
  store %struct._GHashTable* %call6, %struct._GHashTable** %extensions7, align 8
  %20 = load %struct._GHashTable*, %struct._GHashTable** %extensions, align 8
  %21 = load %struct._GimpInterpreterDB*, %struct._GimpInterpreterDB** %db.addr, align 8
  %22 = bitcast %struct._GimpInterpreterDB* %21 to i8*
  %call8 = call i32 @g_hash_table_foreach_steal(%struct._GHashTable* %20, i32 (i8*, i8*, i8*)* @resolve_program, i8* %22)
  %23 = load %struct._GHashTable*, %struct._GHashTable** %extensions, align 8
  call void @g_hash_table_destroy(%struct._GHashTable* %23)
  ret void
}

declare void @g_hash_table_destroy(%struct._GHashTable*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_interpreter_db_clear_magics(%struct._GimpInterpreterDB* %db) #2 {
entry:
  %db.addr = alloca %struct._GimpInterpreterDB*, align 8
  %magic = alloca %struct._GimpInterpreterMagic*, align 8
  %list = alloca %struct._GSList*, align 8
  %last = alloca %struct._GSList*, align 8
  store %struct._GimpInterpreterDB* %db, %struct._GimpInterpreterDB** %db.addr, align 8
  %0 = load %struct._GimpInterpreterDB*, %struct._GimpInterpreterDB** %db.addr, align 8
  %magics = getelementptr inbounds %struct._GimpInterpreterDB, %struct._GimpInterpreterDB* %0, i32 0, i32 2
  %1 = load %struct._GSList*, %struct._GSList** %magics, align 8
  store %struct._GSList* %1, %struct._GSList** %list, align 8
  %2 = load %struct._GimpInterpreterDB*, %struct._GimpInterpreterDB** %db.addr, align 8
  %magics1 = getelementptr inbounds %struct._GimpInterpreterDB, %struct._GimpInterpreterDB* %2, i32 0, i32 2
  store %struct._GSList* null, %struct._GSList** %magics1, align 8
  br label %while.cond

while.cond:                                       ; preds = %do.end, %entry
  %3 = load %struct._GSList*, %struct._GSList** %list, align 8
  %tobool = icmp ne %struct._GSList* %3, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load %struct._GSList*, %struct._GSList** %list, align 8
  %data = getelementptr inbounds %struct._GSList, %struct._GSList* %4, i32 0, i32 0
  %5 = load i8*, i8** %data, align 8
  %6 = bitcast i8* %5 to %struct._GimpInterpreterMagic*
  store %struct._GimpInterpreterMagic* %6, %struct._GimpInterpreterMagic** %magic, align 8
  %7 = load %struct._GimpInterpreterMagic*, %struct._GimpInterpreterMagic** %magic, align 8
  %magic2 = getelementptr inbounds %struct._GimpInterpreterMagic, %struct._GimpInterpreterMagic* %7, i32 0, i32 1
  %8 = load i8*, i8** %magic2, align 8
  call void @g_free(i8* %8)
  %9 = load %struct._GimpInterpreterMagic*, %struct._GimpInterpreterMagic** %magic, align 8
  %mask = getelementptr inbounds %struct._GimpInterpreterMagic, %struct._GimpInterpreterMagic* %9, i32 0, i32 2
  %10 = load i8*, i8** %mask, align 8
  call void @g_free(i8* %10)
  %11 = load %struct._GimpInterpreterMagic*, %struct._GimpInterpreterMagic** %magic, align 8
  %program = getelementptr inbounds %struct._GimpInterpreterMagic, %struct._GimpInterpreterMagic* %11, i32 0, i32 4
  %12 = load i8*, i8** %program, align 8
  call void @g_free(i8* %12)
  br label %do.body

do.body:                                          ; preds = %while.body
  %13 = load %struct._GimpInterpreterMagic*, %struct._GimpInterpreterMagic** %magic, align 8
  %14 = bitcast %struct._GimpInterpreterMagic* %13 to i8*
  call void @g_slice_free1(i64 40, i8* %14)
  br label %do.end

do.end:                                           ; preds = %do.body
  %15 = load %struct._GSList*, %struct._GSList** %list, align 8
  store %struct._GSList* %15, %struct._GSList** %last, align 8
  %16 = load %struct._GSList*, %struct._GSList** %list, align 8
  %next = getelementptr inbounds %struct._GSList, %struct._GSList* %16, i32 0, i32 1
  %17 = load %struct._GSList*, %struct._GSList** %next, align 8
  store %struct._GSList* %17, %struct._GSList** %list, align 8
  %18 = load %struct._GSList*, %struct._GSList** %last, align 8
  call void @g_slist_free_1(%struct._GSList* %18)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @gimp_interpreter_db_resolve(%struct._GimpInterpreterDB* %db, i8* %program_path, i8** %interp_arg) #2 {
entry:
  %retval = alloca i8*, align 8
  %db.addr = alloca %struct._GimpInterpreterDB*, align 8
  %program_path.addr = alloca i8*, align 8
  %interp_arg.addr = alloca i8**, align 8
  %fd = alloca i32, align 4
  %len = alloca i64, align 8
  %buffer = alloca [4096 x i8], align 16
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpInterpreterDB* %db, %struct._GimpInterpreterDB** %db.addr, align 8
  store i8* %program_path, i8** %program_path.addr, align 8
  store i8** %interp_arg, i8*** %interp_arg.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpInterpreterDB*, %struct._GimpInterpreterDB** %db.addr, align 8
  %1 = bitcast %struct._GimpInterpreterDB* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_interpreter_db_get_type() #8
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_interpreter_db_resolve, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i8*, i8** %program_path.addr, align 8
  %cmp12 = icmp ne i8* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_interpreter_db_resolve, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %14 = load i8**, i8*** %interp_arg.addr, align 8
  %cmp18 = icmp ne i8** %14, null
  br i1 %cmp18, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %do.body.17
  br label %if.end.21

if.else.20:                                       ; preds = %do.body.17
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_interpreter_db_resolve, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end.21:                                        ; preds = %if.then.19
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  %15 = load i8**, i8*** %interp_arg.addr, align 8
  store i8* null, i8** %15, align 8
  %16 = load i8*, i8** %program_path.addr, align 8
  %call23 = call i32 (i8*, i32, ...) @open(i8* %16, i32 0, i32 0)
  store i32 %call23, i32* %fd, align 4
  %17 = load i32, i32* %fd, align 4
  %cmp24 = icmp eq i32 %17, -1
  br i1 %cmp24, label %if.then.25, label %if.end.27

if.then.25:                                       ; preds = %do.end.22
  %18 = load %struct._GimpInterpreterDB*, %struct._GimpInterpreterDB** %db.addr, align 8
  %19 = load i8*, i8** %program_path.addr, align 8
  %call26 = call i8* @resolve_extension(%struct._GimpInterpreterDB* %18, i8* %19)
  store i8* %call26, i8** %retval
  br label %return

if.end.27:                                        ; preds = %do.end.22
  %20 = bitcast [4096 x i8]* %buffer to i8*
  call void @llvm.memset.p0i8.i64(i8* %20, i8 0, i64 4096, i32 16, i1 false)
  %21 = load i32, i32* %fd, align 4
  %arraydecay = getelementptr inbounds [4096 x i8], [4096 x i8]* %buffer, i32 0, i32 0
  %call28 = call i64 @read(i32 %21, i8* %arraydecay, i64 4096)
  store i64 %call28, i64* %len, align 8
  %22 = load i32, i32* %fd, align 4
  %call29 = call i32 @close(i32 %22)
  %23 = load i64, i64* %len, align 8
  %cmp30 = icmp sle i64 %23, 0
  br i1 %cmp30, label %if.then.31, label %if.end.33

if.then.31:                                       ; preds = %if.end.27
  %24 = load %struct._GimpInterpreterDB*, %struct._GimpInterpreterDB** %db.addr, align 8
  %25 = load i8*, i8** %program_path.addr, align 8
  %call32 = call i8* @resolve_extension(%struct._GimpInterpreterDB* %24, i8* %25)
  store i8* %call32, i8** %retval
  br label %return

if.end.33:                                        ; preds = %if.end.27
  %26 = load i64, i64* %len, align 8
  %cmp34 = icmp sgt i64 %26, 3
  br i1 %cmp34, label %land.lhs.true.35, label %if.end.46

land.lhs.true.35:                                 ; preds = %if.end.33
  %arrayidx = getelementptr inbounds [4096 x i8], [4096 x i8]* %buffer, i32 0, i64 0
  %27 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %27 to i32
  %cmp36 = icmp eq i32 %conv, 35
  br i1 %cmp36, label %land.lhs.true.38, label %if.end.46

land.lhs.true.38:                                 ; preds = %land.lhs.true.35
  %arrayidx39 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buffer, i32 0, i64 1
  %28 = load i8, i8* %arrayidx39, align 1
  %conv40 = sext i8 %28 to i32
  %cmp41 = icmp eq i32 %conv40, 33
  br i1 %cmp41, label %if.then.43, label %if.end.46

if.then.43:                                       ; preds = %land.lhs.true.38
  %29 = load %struct._GimpInterpreterDB*, %struct._GimpInterpreterDB** %db.addr, align 8
  %30 = load i8*, i8** %program_path.addr, align 8
  %arraydecay44 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buffer, i32 0, i32 0
  %31 = load i64, i64* %len, align 8
  %32 = load i8**, i8*** %interp_arg.addr, align 8
  %call45 = call i8* @resolve_sh_bang(%struct._GimpInterpreterDB* %29, i8* %30, i8* %arraydecay44, i64 %31, i8** %32)
  store i8* %call45, i8** %retval
  br label %return

if.end.46:                                        ; preds = %land.lhs.true.38, %land.lhs.true.35, %if.end.33
  %33 = load %struct._GimpInterpreterDB*, %struct._GimpInterpreterDB** %db.addr, align 8
  %34 = load i8*, i8** %program_path.addr, align 8
  %arraydecay47 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buffer, i32 0, i32 0
  %call48 = call i8* @resolve_magic(%struct._GimpInterpreterDB* %33, i8* %34, i8* %arraydecay47)
  store i8* %call48, i8** %retval
  br label %return

return:                                           ; preds = %if.end.46, %if.then.43, %if.then.31, %if.then.25, %if.else.20, %if.else.14, %if.else.9
  %35 = load i8*, i8** %retval
  ret i8* %35
}

declare i32 @open(i8*, i32, ...) #1

; Function Attrs: nounwind uwtable
define internal i8* @resolve_extension(%struct._GimpInterpreterDB* %db, i8* %program_path) #2 {
entry:
  %retval = alloca i8*, align 8
  %db.addr = alloca %struct._GimpInterpreterDB*, align 8
  %program_path.addr = alloca i8*, align 8
  %filename = alloca i8*, align 8
  %p = alloca i8*, align 8
  %program = alloca i8*, align 8
  store %struct._GimpInterpreterDB* %db, %struct._GimpInterpreterDB** %db.addr, align 8
  store i8* %program_path, i8** %program_path.addr, align 8
  %0 = load i8*, i8** %program_path.addr, align 8
  %call = call noalias i8* @g_path_get_basename(i8* %0)
  store i8* %call, i8** %filename, align 8
  %1 = load i8*, i8** %filename, align 8
  %call1 = call i8* @strrchr(i8* %1, i32 46) #9
  store i8* %call1, i8** %p, align 8
  %2 = load i8*, i8** %p, align 8
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %3)
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct._GimpInterpreterDB*, %struct._GimpInterpreterDB** %db.addr, align 8
  %extensions = getelementptr inbounds %struct._GimpInterpreterDB, %struct._GimpInterpreterDB* %4, i32 0, i32 4
  %5 = load %struct._GHashTable*, %struct._GHashTable** %extensions, align 8
  %6 = load i8*, i8** %p, align 8
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 1
  %call2 = call i8* @g_hash_table_lookup(%struct._GHashTable* %5, i8* %add.ptr)
  store i8* %call2, i8** %program, align 8
  %7 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %7)
  %8 = load i8*, i8** %program, align 8
  %call3 = call noalias i8* @g_strdup(i8* %8)
  store i8* %call3, i8** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %9 = load i8*, i8** %retval
  ret i8* %9
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

declare i64 @read(i32, i8*, i64) #1

declare i32 @close(i32) #1

; Function Attrs: nounwind uwtable
define internal i8* @resolve_sh_bang(%struct._GimpInterpreterDB* %db, i8* %program_path, i8* %buffer, i64 %len, i8** %interp_arg) #2 {
entry:
  %retval = alloca i8*, align 8
  %db.addr = alloca %struct._GimpInterpreterDB*, align 8
  %program_path.addr = alloca i8*, align 8
  %buffer.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %interp_arg.addr = alloca i8**, align 8
  %cp = alloca i8*, align 8
  %name = alloca i8*, align 8
  %program = alloca i8*, align 8
  store %struct._GimpInterpreterDB* %db, %struct._GimpInterpreterDB** %db.addr, align 8
  store i8* %program_path, i8** %program_path.addr, align 8
  store i8* %buffer, i8** %buffer.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  store i8** %interp_arg, i8*** %interp_arg.addr, align 8
  %0 = load i8*, i8** %buffer.addr, align 8
  %call = call i8* @strchr(i8* %0, i32 10) #9
  store i8* %call, i8** %cp, align 8
  %1 = load i8*, i8** %cp, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %buffer.addr, align 8
  %3 = load i64, i64* %len.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 %3
  %add.ptr1 = getelementptr inbounds i8, i8* %add.ptr, i64 -1
  store i8* %add.ptr1, i8** %cp, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i8*, i8** %cp, align 8
  store i8 0, i8* %4, align 1
  br label %while.cond

while.cond:                                       ; preds = %if.end.12, %if.end
  %5 = load i8*, i8** %cp, align 8
  %6 = load i8*, i8** %buffer.addr, align 8
  %cmp = icmp ugt i8* %5, %6
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load i8*, i8** %cp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %7, i32 -1
  store i8* %incdec.ptr, i8** %cp, align 8
  %8 = load i8*, i8** %cp, align 8
  %9 = load i8, i8* %8, align 1
  %conv = sext i8 %9 to i32
  %cmp2 = icmp eq i32 %conv, 32
  br i1 %cmp2, label %if.then.11, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %10 = load i8*, i8** %cp, align 8
  %11 = load i8, i8* %10, align 1
  %conv4 = sext i8 %11 to i32
  %cmp5 = icmp eq i32 %conv4, 9
  br i1 %cmp5, label %if.then.11, label %lor.lhs.false.7

lor.lhs.false.7:                                  ; preds = %lor.lhs.false
  %12 = load i8*, i8** %cp, align 8
  %13 = load i8, i8* %12, align 1
  %conv8 = sext i8 %13 to i32
  %cmp9 = icmp eq i32 %conv8, 13
  br i1 %cmp9, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %lor.lhs.false.7, %lor.lhs.false, %while.body
  %14 = load i8*, i8** %cp, align 8
  store i8 0, i8* %14, align 1
  br label %if.end.12

if.else:                                          ; preds = %lor.lhs.false.7
  br label %while.end

if.end.12:                                        ; preds = %if.then.11
  br label %while.cond

while.end:                                        ; preds = %if.else, %while.cond
  %15 = load i8*, i8** %buffer.addr, align 8
  %add.ptr13 = getelementptr inbounds i8, i8* %15, i64 2
  store i8* %add.ptr13, i8** %cp, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.end
  %16 = load i8*, i8** %cp, align 8
  %17 = load i8, i8* %16, align 1
  %conv14 = sext i8 %17 to i32
  %cmp15 = icmp eq i32 %conv14, 32
  br i1 %cmp15, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %for.cond
  %18 = load i8*, i8** %cp, align 8
  %19 = load i8, i8* %18, align 1
  %conv17 = sext i8 %19 to i32
  %cmp18 = icmp eq i32 %conv17, 9
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %for.cond
  %20 = phi i1 [ true, %for.cond ], [ %cmp18, %lor.rhs ]
  br i1 %20, label %for.body, label %for.end

for.body:                                         ; preds = %lor.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %21 = load i8*, i8** %cp, align 8
  %incdec.ptr20 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %incdec.ptr20, i8** %cp, align 8
  br label %for.cond

for.end:                                          ; preds = %lor.end
  %22 = load i8*, i8** %cp, align 8
  %23 = load i8, i8* %22, align 1
  %conv21 = sext i8 %23 to i32
  %cmp22 = icmp eq i32 %conv21, 0
  br i1 %cmp22, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %for.end
  store i8* null, i8** %retval
  br label %return

if.end.25:                                        ; preds = %for.end
  %24 = load i8*, i8** %cp, align 8
  store i8* %24, i8** %name, align 8
  br label %for.cond.26

for.cond.26:                                      ; preds = %for.inc.36, %if.end.25
  %25 = load i8*, i8** %cp, align 8
  %26 = load i8, i8* %25, align 1
  %conv27 = sext i8 %26 to i32
  %tobool28 = icmp ne i32 %conv27, 0
  br i1 %tobool28, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %for.cond.26
  %27 = load i8*, i8** %cp, align 8
  %28 = load i8, i8* %27, align 1
  %conv29 = sext i8 %28 to i32
  %cmp30 = icmp ne i32 %conv29, 32
  br i1 %cmp30, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %29 = load i8*, i8** %cp, align 8
  %30 = load i8, i8* %29, align 1
  %conv32 = sext i8 %30 to i32
  %cmp33 = icmp ne i32 %conv32, 9
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %for.cond.26
  %31 = phi i1 [ false, %land.lhs.true ], [ false, %for.cond.26 ], [ %cmp33, %land.rhs ]
  br i1 %31, label %for.body.35, label %for.end.38

for.body.35:                                      ; preds = %land.end
  br label %for.inc.36

for.inc.36:                                       ; preds = %for.body.35
  %32 = load i8*, i8** %cp, align 8
  %incdec.ptr37 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %incdec.ptr37, i8** %cp, align 8
  br label %for.cond.26

for.end.38:                                       ; preds = %land.end
  br label %while.cond.39

while.cond.39:                                    ; preds = %while.body.48, %for.end.38
  %33 = load i8*, i8** %cp, align 8
  %34 = load i8, i8* %33, align 1
  %conv40 = sext i8 %34 to i32
  %cmp41 = icmp eq i32 %conv40, 32
  br i1 %cmp41, label %lor.end.47, label %lor.rhs.43

lor.rhs.43:                                       ; preds = %while.cond.39
  %35 = load i8*, i8** %cp, align 8
  %36 = load i8, i8* %35, align 1
  %conv44 = sext i8 %36 to i32
  %cmp45 = icmp eq i32 %conv44, 9
  br label %lor.end.47

lor.end.47:                                       ; preds = %lor.rhs.43, %while.cond.39
  %37 = phi i1 [ true, %while.cond.39 ], [ %cmp45, %lor.rhs.43 ]
  br i1 %37, label %while.body.48, label %while.end.50

while.body.48:                                    ; preds = %lor.end.47
  %38 = load i8*, i8** %cp, align 8
  %incdec.ptr49 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %incdec.ptr49, i8** %cp, align 8
  store i8 0, i8* %38, align 1
  br label %while.cond.39

while.end.50:                                     ; preds = %lor.end.47
  %39 = load i8*, i8** %cp, align 8
  %40 = load i8, i8* %39, align 1
  %tobool51 = icmp ne i8 %40, 0
  br i1 %tobool51, label %if.then.52, label %if.end.64

if.then.52:                                       ; preds = %while.end.50
  %41 = load i8*, i8** %name, align 8
  %call53 = call i32 @strcmp(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i8* %41) #9
  %cmp54 = icmp eq i32 %call53, 0
  br i1 %cmp54, label %if.then.56, label %if.end.62

if.then.56:                                       ; preds = %if.then.52
  %42 = load %struct._GimpInterpreterDB*, %struct._GimpInterpreterDB** %db.addr, align 8
  %programs = getelementptr inbounds %struct._GimpInterpreterDB, %struct._GimpInterpreterDB* %42, i32 0, i32 1
  %43 = load %struct._GHashTable*, %struct._GHashTable** %programs, align 8
  %44 = load i8*, i8** %cp, align 8
  %call57 = call i8* @g_hash_table_lookup(%struct._GHashTable* %43, i8* %44)
  store i8* %call57, i8** %program, align 8
  %45 = load i8*, i8** %program, align 8
  %tobool58 = icmp ne i8* %45, null
  br i1 %tobool58, label %if.then.59, label %if.end.61

if.then.59:                                       ; preds = %if.then.56
  %46 = load i8*, i8** %program, align 8
  %call60 = call noalias i8* @g_strdup(i8* %46)
  store i8* %call60, i8** %retval
  br label %return

if.end.61:                                        ; preds = %if.then.56
  br label %if.end.62

if.end.62:                                        ; preds = %if.end.61, %if.then.52
  %47 = load i8*, i8** %cp, align 8
  %call63 = call noalias i8* @g_strdup(i8* %47)
  %48 = load i8**, i8*** %interp_arg.addr, align 8
  store i8* %call63, i8** %48, align 8
  br label %if.end.64

if.end.64:                                        ; preds = %if.end.62, %while.end.50
  %49 = load %struct._GimpInterpreterDB*, %struct._GimpInterpreterDB** %db.addr, align 8
  %programs65 = getelementptr inbounds %struct._GimpInterpreterDB, %struct._GimpInterpreterDB* %49, i32 0, i32 1
  %50 = load %struct._GHashTable*, %struct._GHashTable** %programs65, align 8
  %51 = load i8*, i8** %name, align 8
  %call66 = call i8* @g_hash_table_lookup(%struct._GHashTable* %50, i8* %51)
  store i8* %call66, i8** %program, align 8
  %52 = load i8*, i8** %program, align 8
  %tobool67 = icmp ne i8* %52, null
  br i1 %tobool67, label %if.end.69, label %if.then.68

if.then.68:                                       ; preds = %if.end.64
  %53 = load i8*, i8** %name, align 8
  store i8* %53, i8** %program, align 8
  br label %if.end.69

if.end.69:                                        ; preds = %if.then.68, %if.end.64
  %54 = load i8*, i8** %program, align 8
  %call70 = call noalias i8* @g_strdup(i8* %54)
  store i8* %call70, i8** %retval
  br label %return

return:                                           ; preds = %if.end.69, %if.then.59, %if.then.24
  %55 = load i8*, i8** %retval
  ret i8* %55
}

; Function Attrs: nounwind uwtable
define internal i8* @resolve_magic(%struct._GimpInterpreterDB* %db, i8* %program_path, i8* %buffer) #2 {
entry:
  %retval = alloca i8*, align 8
  %db.addr = alloca %struct._GimpInterpreterDB*, align 8
  %program_path.addr = alloca i8*, align 8
  %buffer.addr = alloca i8*, align 8
  %list = alloca %struct._GSList*, align 8
  %magic = alloca %struct._GimpInterpreterMagic*, align 8
  %s = alloca i8*, align 8
  %i = alloca i32, align 4
  store %struct._GimpInterpreterDB* %db, %struct._GimpInterpreterDB** %db.addr, align 8
  store i8* %program_path, i8** %program_path.addr, align 8
  store i8* %buffer, i8** %buffer.addr, align 8
  %0 = load %struct._GimpInterpreterDB*, %struct._GimpInterpreterDB** %db.addr, align 8
  %magics = getelementptr inbounds %struct._GimpInterpreterDB, %struct._GimpInterpreterDB* %0, i32 0, i32 2
  %1 = load %struct._GSList*, %struct._GSList** %magics, align 8
  store %struct._GSList* %1, %struct._GSList** %list, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.33, %entry
  %2 = load %struct._GSList*, %struct._GSList** %list, align 8
  %tobool = icmp ne %struct._GSList* %2, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load %struct._GSList*, %struct._GSList** %list, align 8
  %data = getelementptr inbounds %struct._GSList, %struct._GSList* %3, i32 0, i32 0
  %4 = load i8*, i8** %data, align 8
  %5 = bitcast i8* %4 to %struct._GimpInterpreterMagic*
  store %struct._GimpInterpreterMagic* %5, %struct._GimpInterpreterMagic** %magic, align 8
  %6 = load i8*, i8** %buffer.addr, align 8
  %7 = load %struct._GimpInterpreterMagic*, %struct._GimpInterpreterMagic** %magic, align 8
  %offset = getelementptr inbounds %struct._GimpInterpreterMagic, %struct._GimpInterpreterMagic* %7, i32 0, i32 0
  %8 = load i64, i64* %offset, align 8
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 %8
  store i8* %add.ptr, i8** %s, align 8
  %9 = load %struct._GimpInterpreterMagic*, %struct._GimpInterpreterMagic** %magic, align 8
  %mask = getelementptr inbounds %struct._GimpInterpreterMagic, %struct._GimpInterpreterMagic* %9, i32 0, i32 2
  %10 = load i8*, i8** %mask, align 8
  %tobool1 = icmp ne i8* %10, null
  br i1 %tobool1, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %11 = load i32, i32* %i, align 4
  %12 = load %struct._GimpInterpreterMagic*, %struct._GimpInterpreterMagic** %magic, align 8
  %size = getelementptr inbounds %struct._GimpInterpreterMagic, %struct._GimpInterpreterMagic* %12, i32 0, i32 3
  %13 = load i32, i32* %size, align 4
  %cmp = icmp ult i32 %11, %13
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load i8*, i8** %s, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr, i8** %s, align 8
  %15 = load i8, i8* %14, align 1
  %conv = sext i8 %15 to i32
  %16 = load i32, i32* %i, align 4
  %idxprom = zext i32 %16 to i64
  %17 = load %struct._GimpInterpreterMagic*, %struct._GimpInterpreterMagic** %magic, align 8
  %magic2 = getelementptr inbounds %struct._GimpInterpreterMagic, %struct._GimpInterpreterMagic* %17, i32 0, i32 1
  %18 = load i8*, i8** %magic2, align 8
  %arrayidx = getelementptr inbounds i8, i8* %18, i64 %idxprom
  %19 = load i8, i8* %arrayidx, align 1
  %conv3 = sext i8 %19 to i32
  %xor = xor i32 %conv, %conv3
  %20 = load i32, i32* %i, align 4
  %idxprom4 = zext i32 %20 to i64
  %21 = load %struct._GimpInterpreterMagic*, %struct._GimpInterpreterMagic** %magic, align 8
  %mask5 = getelementptr inbounds %struct._GimpInterpreterMagic, %struct._GimpInterpreterMagic* %21, i32 0, i32 2
  %22 = load i8*, i8** %mask5, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %22, i64 %idxprom4
  %23 = load i8, i8* %arrayidx6, align 1
  %conv7 = sext i8 %23 to i32
  %and = and i32 %xor, %conv7
  %tobool8 = icmp ne i32 %and, 0
  br i1 %tobool8, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %24 = load i32, i32* %i, align 4
  %inc = add i32 %24, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.9, %for.cond
  br label %if.end.28

if.else:                                          ; preds = %while.body
  store i32 0, i32* %i, align 4
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc.25, %if.else
  %25 = load i32, i32* %i, align 4
  %26 = load %struct._GimpInterpreterMagic*, %struct._GimpInterpreterMagic** %magic, align 8
  %size11 = getelementptr inbounds %struct._GimpInterpreterMagic, %struct._GimpInterpreterMagic* %26, i32 0, i32 3
  %27 = load i32, i32* %size11, align 4
  %cmp12 = icmp ult i32 %25, %27
  br i1 %cmp12, label %for.body.14, label %for.end.27

for.body.14:                                      ; preds = %for.cond.10
  %28 = load i8*, i8** %s, align 8
  %incdec.ptr15 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %incdec.ptr15, i8** %s, align 8
  %29 = load i8, i8* %28, align 1
  %conv16 = sext i8 %29 to i32
  %30 = load i32, i32* %i, align 4
  %idxprom17 = zext i32 %30 to i64
  %31 = load %struct._GimpInterpreterMagic*, %struct._GimpInterpreterMagic** %magic, align 8
  %magic18 = getelementptr inbounds %struct._GimpInterpreterMagic, %struct._GimpInterpreterMagic* %31, i32 0, i32 1
  %32 = load i8*, i8** %magic18, align 8
  %arrayidx19 = getelementptr inbounds i8, i8* %32, i64 %idxprom17
  %33 = load i8, i8* %arrayidx19, align 1
  %conv20 = sext i8 %33 to i32
  %xor21 = xor i32 %conv16, %conv20
  %tobool22 = icmp ne i32 %xor21, 0
  br i1 %tobool22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %for.body.14
  br label %for.end.27

if.end.24:                                        ; preds = %for.body.14
  br label %for.inc.25

for.inc.25:                                       ; preds = %if.end.24
  %34 = load i32, i32* %i, align 4
  %inc26 = add i32 %34, 1
  store i32 %inc26, i32* %i, align 4
  br label %for.cond.10

for.end.27:                                       ; preds = %if.then.23, %for.cond.10
  br label %if.end.28

if.end.28:                                        ; preds = %for.end.27, %for.end
  %35 = load i32, i32* %i, align 4
  %36 = load %struct._GimpInterpreterMagic*, %struct._GimpInterpreterMagic** %magic, align 8
  %size29 = getelementptr inbounds %struct._GimpInterpreterMagic, %struct._GimpInterpreterMagic* %36, i32 0, i32 3
  %37 = load i32, i32* %size29, align 4
  %cmp30 = icmp eq i32 %35, %37
  br i1 %cmp30, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %if.end.28
  %38 = load %struct._GimpInterpreterMagic*, %struct._GimpInterpreterMagic** %magic, align 8
  %program = getelementptr inbounds %struct._GimpInterpreterMagic, %struct._GimpInterpreterMagic* %38, i32 0, i32 4
  %39 = load i8*, i8** %program, align 8
  %call = call noalias i8* @g_strdup(i8* %39)
  store i8* %call, i8** %retval
  br label %return

if.end.33:                                        ; preds = %if.end.28
  %40 = load %struct._GSList*, %struct._GSList** %list, align 8
  %next = getelementptr inbounds %struct._GSList, %struct._GSList* %40, i32 0, i32 1
  %41 = load %struct._GSList*, %struct._GSList** %next, align 8
  store %struct._GSList* %41, %struct._GSList** %list, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %42 = load %struct._GimpInterpreterDB*, %struct._GimpInterpreterDB** %db.addr, align 8
  %43 = load i8*, i8** %program_path.addr, align 8
  %call34 = call i8* @resolve_extension(%struct._GimpInterpreterDB* %42, i8* %43)
  store i8* %call34, i8** %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.32
  %44 = load i8*, i8** %retval
  ret i8* %44
}

; Function Attrs: nounwind uwtable
define i8* @gimp_interpreter_db_get_extensions(%struct._GimpInterpreterDB* %db) #2 {
entry:
  %retval = alloca i8*, align 8
  %db.addr = alloca %struct._GimpInterpreterDB*, align 8
  %str = alloca %struct._GString*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpInterpreterDB* %db, %struct._GimpInterpreterDB** %db.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpInterpreterDB*, %struct._GimpInterpreterDB** %db.addr, align 8
  %1 = bitcast %struct._GimpInterpreterDB* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_interpreter_db_get_type() #8
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_interpreter_db_get_extensions, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpInterpreterDB*, %struct._GimpInterpreterDB** %db.addr, align 8
  %extensions = getelementptr inbounds %struct._GimpInterpreterDB, %struct._GimpInterpreterDB* %13, i32 0, i32 4
  %14 = load %struct._GHashTable*, %struct._GHashTable** %extensions, align 8
  %call11 = call i32 @g_hash_table_size(%struct._GHashTable* %14)
  %cmp12 = icmp eq i32 %call11, 0
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %do.end
  store i8* null, i8** %retval
  br label %return

if.end.14:                                        ; preds = %do.end
  %call15 = call %struct._GString* @g_string_new(i8* null)
  store %struct._GString* %call15, %struct._GString** %str, align 8
  %15 = load %struct._GimpInterpreterDB*, %struct._GimpInterpreterDB** %db.addr, align 8
  %extensions16 = getelementptr inbounds %struct._GimpInterpreterDB, %struct._GimpInterpreterDB* %15, i32 0, i32 4
  %16 = load %struct._GHashTable*, %struct._GHashTable** %extensions16, align 8
  %17 = load %struct._GString*, %struct._GString** %str, align 8
  %18 = bitcast %struct._GString* %17 to i8*
  call void @g_hash_table_foreach(%struct._GHashTable* %16, void (i8*, i8*, i8*)* bitcast (void (i8*, i8*, %struct._GString*)* @collect_extensions to void (i8*, i8*, i8*)*), i8* %18)
  %19 = load %struct._GString*, %struct._GString** %str, align 8
  %call17 = call i8* @g_string_free(%struct._GString* %19, i32 0)
  store i8* %call17, i8** %retval
  br label %return

return:                                           ; preds = %if.end.14, %if.then.13, %if.else.9
  %20 = load i8*, i8** %retval
  ret i8* %20
}

declare i32 @g_hash_table_size(%struct._GHashTable*) #1

declare %struct._GString* @g_string_new(i8*) #1

declare void @g_hash_table_foreach(%struct._GHashTable*, void (i8*, i8*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @collect_extensions(i8* %ext, i8* %program, %struct._GString* %str) #2 {
entry:
  %ext.addr = alloca i8*, align 8
  %program.addr = alloca i8*, align 8
  %str.addr = alloca %struct._GString*, align 8
  store i8* %ext, i8** %ext.addr, align 8
  store i8* %program, i8** %program.addr, align 8
  store %struct._GString* %str, %struct._GString** %str.addr, align 8
  %0 = load %struct._GString*, %struct._GString** %str.addr, align 8
  %len = getelementptr inbounds %struct._GString, %struct._GString* %0, i32 0, i32 1
  %1 = load i64, i64* %len, align 8
  %tobool = icmp ne i64 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._GString*, %struct._GString** %str.addr, align 8
  %call = call %struct._GString* @g_string_append_c_inline(%struct._GString* %2, i8 signext 58)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct._GString*, %struct._GString** %str.addr, align 8
  %call1 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %3, i8 signext 46)
  %4 = load %struct._GString*, %struct._GString** %str.addr, align 8
  %5 = load i8*, i8** %ext.addr, align 8
  %call2 = call %struct._GString* @g_string_append(%struct._GString* %4, i8* %5)
  ret void
}

declare i8* @g_string_free(%struct._GString*, i32) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_interpreter_db_class_init(%struct._GimpInterpreterDBClass* %class) #2 {
entry:
  %class.addr = alloca %struct._GimpInterpreterDBClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  store %struct._GimpInterpreterDBClass* %class, %struct._GimpInterpreterDBClass** %class.addr, align 8
  %0 = load %struct._GimpInterpreterDBClass*, %struct._GimpInterpreterDBClass** %class.addr, align 8
  %1 = bitcast %struct._GimpInterpreterDBClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %3, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_interpreter_db_finalize, void (%struct._GObject*)** %finalize, align 8
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_interpreter_db_finalize(%struct._GObject* %object) #2 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %db = alloca %struct._GimpInterpreterDB*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_interpreter_db_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpInterpreterDB*
  store %struct._GimpInterpreterDB* %2, %struct._GimpInterpreterDB** %db, align 8
  %3 = load %struct._GimpInterpreterDB*, %struct._GimpInterpreterDB** %db, align 8
  call void @gimp_interpreter_db_clear(%struct._GimpInterpreterDB* %3)
  %4 = load i8*, i8** @gimp_interpreter_db_parent_class, align 8
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

; Function Attrs: nounwind uwtable
define internal void @gimp_interpreter_db_add_program(%struct._GimpInterpreterDB* %db, %struct._GimpDatafileData* %file_data, i8* %buffer) #2 {
entry:
  %db.addr = alloca %struct._GimpInterpreterDB*, align 8
  %file_data.addr = alloca %struct._GimpDatafileData*, align 8
  %buffer.addr = alloca i8*, align 8
  %name = alloca i8*, align 8
  %program = alloca i8*, align 8
  %p = alloca i8*, align 8
  store %struct._GimpInterpreterDB* %db, %struct._GimpInterpreterDB** %db.addr, align 8
  store %struct._GimpDatafileData* %file_data, %struct._GimpDatafileData** %file_data.addr, align 8
  store i8* %buffer, i8** %buffer.addr, align 8
  %0 = load i8*, i8** %buffer.addr, align 8
  %call = call i8* @strchr(i8* %0, i32 61) #9
  store i8* %call, i8** %p, align 8
  %1 = load i8*, i8** %p, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.15

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %p, align 8
  store i8 0, i8* %2, align 1
  %3 = load i8*, i8** %buffer.addr, align 8
  store i8* %3, i8** %name, align 8
  %4 = load i8*, i8** %p, align 8
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 1
  store i8* %add.ptr, i8** %program, align 8
  %5 = load i8*, i8** %program, align 8
  %call1 = call i32 @g_file_test(i8* %5, i32 8)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.end.7, label %if.then.3

if.then.3:                                        ; preds = %if.end
  %call4 = call i8* @gettext(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.6, i32 0, i32 0)) #4
  %6 = load %struct._GimpDatafileData*, %struct._GimpDatafileData** %file_data.addr, align 8
  %filename = getelementptr inbounds %struct._GimpDatafileData, %struct._GimpDatafileData* %6, i32 0, i32 0
  %7 = load i8*, i8** %filename, align 8
  %call5 = call i8* @gimp_filename_to_utf8(i8* %7)
  %8 = load i8*, i8** %program, align 8
  %call6 = call i8* @gimp_filename_to_utf8(i8* %8)
  call void (i8*, ...) @g_message(i8* %call4, i8* %call5, i8* %call6)
  br label %if.end.15

if.end.7:                                         ; preds = %if.end
  %9 = load %struct._GimpInterpreterDB*, %struct._GimpInterpreterDB** %db.addr, align 8
  %programs = getelementptr inbounds %struct._GimpInterpreterDB, %struct._GimpInterpreterDB* %9, i32 0, i32 1
  %10 = load %struct._GHashTable*, %struct._GHashTable** %programs, align 8
  %11 = load i8*, i8** %name, align 8
  %call8 = call i8* @g_hash_table_lookup(%struct._GHashTable* %10, i8* %11)
  %tobool9 = icmp ne i8* %call8, null
  br i1 %tobool9, label %if.end.15, label %if.then.10

if.then.10:                                       ; preds = %if.end.7
  %12 = load %struct._GimpInterpreterDB*, %struct._GimpInterpreterDB** %db.addr, align 8
  %programs11 = getelementptr inbounds %struct._GimpInterpreterDB, %struct._GimpInterpreterDB* %12, i32 0, i32 1
  %13 = load %struct._GHashTable*, %struct._GHashTable** %programs11, align 8
  %14 = load i8*, i8** %name, align 8
  %call12 = call noalias i8* @g_strdup(i8* %14)
  %15 = load i8*, i8** %program, align 8
  %call13 = call noalias i8* @g_strdup(i8* %15)
  %call14 = call i32 @g_hash_table_insert(%struct._GHashTable* %13, i8* %call12, i8* %call13)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then, %if.then.3, %if.then.10, %if.end.7
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_interpreter_db_add_binfmt_misc(%struct._GimpInterpreterDB* %db, %struct._GimpDatafileData* %file_data, i8* %buffer) #2 {
entry:
  %db.addr = alloca %struct._GimpInterpreterDB*, align 8
  %file_data.addr = alloca %struct._GimpDatafileData*, align 8
  %buffer.addr = alloca i8*, align 8
  %tokens = alloca i8**, align 8
  %name = alloca i8*, align 8
  %type = alloca i8*, align 8
  %program = alloca i8*, align 8
  %count = alloca i64, align 8
  %del = alloca [2 x i8], align 1
  store %struct._GimpInterpreterDB* %db, %struct._GimpInterpreterDB** %db.addr, align 8
  store %struct._GimpDatafileData* %file_data, %struct._GimpDatafileData** %file_data.addr, align 8
  store i8* %buffer, i8** %buffer.addr, align 8
  store i8** null, i8*** %tokens, align 8
  %0 = load i8*, i8** %buffer.addr, align 8
  %call = call i64 @strlen(i8* %0) #9
  store i64 %call, i64* %count, align 8
  %1 = load i64, i64* %count, align 8
  %cmp = icmp ult i64 %1, 10
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i64, i64* %count, align 8
  %cmp1 = icmp ugt i64 %2, 255
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %bail

if.end:                                           ; preds = %lor.lhs.false
  %3 = load i8*, i8** %buffer.addr, align 8
  %4 = load i8, i8* %3, align 1
  %arrayidx = getelementptr inbounds [2 x i8], [2 x i8]* %del, i32 0, i64 0
  store i8 %4, i8* %arrayidx, align 1
  %arrayidx2 = getelementptr inbounds [2 x i8], [2 x i8]* %del, i32 0, i64 1
  store i8 0, i8* %arrayidx2, align 1
  %5 = load i8*, i8** %buffer.addr, align 8
  %6 = load i64, i64* %count, align 8
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %6
  %arrayidx3 = getelementptr inbounds [2 x i8], [2 x i8]* %del, i32 0, i64 0
  %7 = load i8, i8* %arrayidx3, align 1
  %conv = sext i8 %7 to i32
  %8 = trunc i32 %conv to i8
  call void @llvm.memset.p0i8.i64(i8* %add.ptr, i8 %8, i64 8, i32 1, i1 false)
  %9 = load i8*, i8** %buffer.addr, align 8
  %add.ptr4 = getelementptr inbounds i8, i8* %9, i64 1
  %arraydecay = getelementptr inbounds [2 x i8], [2 x i8]* %del, i32 0, i32 0
  %call5 = call noalias i8** @g_strsplit(i8* %add.ptr4, i8* %arraydecay, i32 -1)
  store i8** %call5, i8*** %tokens, align 8
  %10 = load i8**, i8*** %tokens, align 8
  %arrayidx6 = getelementptr inbounds i8*, i8** %10, i64 0
  %11 = load i8*, i8** %arrayidx6, align 8
  store i8* %11, i8** %name, align 8
  %12 = load i8**, i8*** %tokens, align 8
  %arrayidx7 = getelementptr inbounds i8*, i8** %12, i64 1
  %13 = load i8*, i8** %arrayidx7, align 8
  store i8* %13, i8** %type, align 8
  %14 = load i8**, i8*** %tokens, align 8
  %arrayidx8 = getelementptr inbounds i8*, i8** %14, i64 5
  %15 = load i8*, i8** %arrayidx8, align 8
  store i8* %15, i8** %program, align 8
  %16 = load i8*, i8** %name, align 8
  %arrayidx9 = getelementptr inbounds i8, i8* %16, i64 0
  %17 = load i8, i8* %arrayidx9, align 1
  %conv10 = sext i8 %17 to i32
  %cmp11 = icmp eq i32 %conv10, 0
  br i1 %cmp11, label %if.then.28, label %lor.lhs.false.13

lor.lhs.false.13:                                 ; preds = %if.end
  %18 = load i8*, i8** %program, align 8
  %arrayidx14 = getelementptr inbounds i8, i8* %18, i64 0
  %19 = load i8, i8* %arrayidx14, align 1
  %conv15 = sext i8 %19 to i32
  %cmp16 = icmp eq i32 %conv15, 0
  br i1 %cmp16, label %if.then.28, label %lor.lhs.false.18

lor.lhs.false.18:                                 ; preds = %lor.lhs.false.13
  %20 = load i8*, i8** %type, align 8
  %arrayidx19 = getelementptr inbounds i8, i8* %20, i64 0
  %21 = load i8, i8* %arrayidx19, align 1
  %conv20 = sext i8 %21 to i32
  %cmp21 = icmp eq i32 %conv20, 0
  br i1 %cmp21, label %if.then.28, label %lor.lhs.false.23

lor.lhs.false.23:                                 ; preds = %lor.lhs.false.18
  %22 = load i8*, i8** %type, align 8
  %arrayidx24 = getelementptr inbounds i8, i8* %22, i64 1
  %23 = load i8, i8* %arrayidx24, align 1
  %conv25 = sext i8 %23 to i32
  %cmp26 = icmp ne i32 %conv25, 0
  br i1 %cmp26, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %lor.lhs.false.23, %lor.lhs.false.18, %lor.lhs.false.13, %if.end
  br label %bail

if.end.29:                                        ; preds = %lor.lhs.false.23
  %24 = load i8*, i8** %type, align 8
  %arrayidx30 = getelementptr inbounds i8, i8* %24, i64 0
  %25 = load i8, i8* %arrayidx30, align 1
  %conv31 = sext i8 %25 to i32
  switch i32 %conv31, label %sw.default [
    i32 69, label %sw.bb
    i32 77, label %sw.bb.35
  ]

sw.bb:                                            ; preds = %if.end.29
  %26 = load %struct._GimpInterpreterDB*, %struct._GimpInterpreterDB** %db.addr, align 8
  %27 = load i8**, i8*** %tokens, align 8
  %call32 = call i32 @gimp_interpreter_db_add_extension(%struct._GimpInterpreterDB* %26, i8** %27)
  %tobool = icmp ne i32 %call32, 0
  br i1 %tobool, label %if.end.34, label %if.then.33

if.then.33:                                       ; preds = %sw.bb
  br label %bail

if.end.34:                                        ; preds = %sw.bb
  br label %sw.epilog

sw.bb.35:                                         ; preds = %if.end.29
  %28 = load %struct._GimpInterpreterDB*, %struct._GimpInterpreterDB** %db.addr, align 8
  %29 = load i8**, i8*** %tokens, align 8
  %call36 = call i32 @gimp_interpreter_db_add_magic(%struct._GimpInterpreterDB* %28, i8** %29)
  %tobool37 = icmp ne i32 %call36, 0
  br i1 %tobool37, label %if.end.39, label %if.then.38

if.then.38:                                       ; preds = %sw.bb.35
  br label %bail

if.end.39:                                        ; preds = %sw.bb.35
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.29
  br label %bail

sw.epilog:                                        ; preds = %if.end.39, %if.end.34
  br label %out

bail:                                             ; preds = %sw.default, %if.then.38, %if.then.33, %if.then.28, %if.then
  %call40 = call i8* @gettext(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i32 0, i32 0)) #4
  %30 = load %struct._GimpDatafileData*, %struct._GimpDatafileData** %file_data.addr, align 8
  %filename = getelementptr inbounds %struct._GimpDatafileData, %struct._GimpDatafileData* %30, i32 0, i32 0
  %31 = load i8*, i8** %filename, align 8
  %call41 = call i8* @gimp_filename_to_utf8(i8* %31)
  call void (i8*, ...) @g_message(i8* %call40, i8* %call41)
  br label %out

out:                                              ; preds = %bail, %sw.epilog
  %32 = load i8**, i8*** %tokens, align 8
  call void @g_strfreev(i8** %32)
  ret void
}

declare i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #3

declare i32 @g_file_test(i8*, i32) #1

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
declare i8* @gettext(i8*) #5

declare i8* @gimp_filename_to_utf8(i8*) #1

declare i8* @g_hash_table_lookup(%struct._GHashTable*, i8*) #1

declare i32 @g_hash_table_insert(%struct._GHashTable*, i8*, i8*) #1

declare noalias i8* @g_strdup(i8*) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #4

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #4

declare noalias i8** @g_strsplit(i8*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_interpreter_db_add_extension(%struct._GimpInterpreterDB* %db, i8** %tokens) #2 {
entry:
  %retval = alloca i32, align 4
  %db.addr = alloca %struct._GimpInterpreterDB*, align 8
  %tokens.addr = alloca i8**, align 8
  %name = alloca i8*, align 8
  %extension = alloca i8*, align 8
  %program = alloca i8*, align 8
  %prog = alloca i8*, align 8
  store %struct._GimpInterpreterDB* %db, %struct._GimpInterpreterDB** %db.addr, align 8
  store i8** %tokens, i8*** %tokens.addr, align 8
  %0 = load i8**, i8*** %tokens.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %0, i64 0
  %1 = load i8*, i8** %arrayidx, align 8
  store i8* %1, i8** %name, align 8
  %2 = load i8**, i8*** %tokens.addr, align 8
  %arrayidx1 = getelementptr inbounds i8*, i8** %2, i64 3
  %3 = load i8*, i8** %arrayidx1, align 8
  store i8* %3, i8** %extension, align 8
  %4 = load i8**, i8*** %tokens.addr, align 8
  %arrayidx2 = getelementptr inbounds i8*, i8** %4, i64 5
  %5 = load i8*, i8** %arrayidx2, align 8
  store i8* %5, i8** %program, align 8
  %6 = load %struct._GimpInterpreterDB*, %struct._GimpInterpreterDB** %db.addr, align 8
  %extension_names = getelementptr inbounds %struct._GimpInterpreterDB, %struct._GimpInterpreterDB* %6, i32 0, i32 5
  %7 = load %struct._GHashTable*, %struct._GHashTable** %extension_names, align 8
  %8 = load i8*, i8** %name, align 8
  %call = call i8* @g_hash_table_lookup(%struct._GHashTable* %7, i8* %8)
  %tobool = icmp ne i8* %call, null
  br i1 %tobool, label %if.end.16, label %if.then

if.then:                                          ; preds = %entry
  %9 = load i8*, i8** %extension, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %9, i64 0
  %10 = load i8, i8* %arrayidx3, align 1
  %conv = sext i8 %10 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then.9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %11 = load i8*, i8** %extension, align 8
  %arrayidx5 = getelementptr inbounds i8, i8* %11, i64 0
  %12 = load i8, i8* %arrayidx5, align 1
  %conv6 = sext i8 %12 to i32
  %cmp7 = icmp eq i32 %conv6, 47
  br i1 %cmp7, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %lor.lhs.false, %if.then
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %13 = load i8*, i8** %program, align 8
  %call10 = call noalias i8* @g_strdup(i8* %13)
  store i8* %call10, i8** %prog, align 8
  %14 = load %struct._GimpInterpreterDB*, %struct._GimpInterpreterDB** %db.addr, align 8
  %extensions = getelementptr inbounds %struct._GimpInterpreterDB, %struct._GimpInterpreterDB* %14, i32 0, i32 4
  %15 = load %struct._GHashTable*, %struct._GHashTable** %extensions, align 8
  %16 = load i8*, i8** %extension, align 8
  %call11 = call noalias i8* @g_strdup(i8* %16)
  %17 = load i8*, i8** %prog, align 8
  %call12 = call i32 @g_hash_table_insert(%struct._GHashTable* %15, i8* %call11, i8* %17)
  %18 = load %struct._GimpInterpreterDB*, %struct._GimpInterpreterDB** %db.addr, align 8
  %extension_names13 = getelementptr inbounds %struct._GimpInterpreterDB, %struct._GimpInterpreterDB* %18, i32 0, i32 5
  %19 = load %struct._GHashTable*, %struct._GHashTable** %extension_names13, align 8
  %20 = load i8*, i8** %name, align 8
  %call14 = call noalias i8* @g_strdup(i8* %20)
  %21 = load i8*, i8** %prog, align 8
  %call15 = call i32 @g_hash_table_insert(%struct._GHashTable* %19, i8* %call14, i8* %21)
  br label %if.end.16

if.end.16:                                        ; preds = %if.end, %entry
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.16, %if.then.9
  %22 = load i32, i32* %retval
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_interpreter_db_add_magic(%struct._GimpInterpreterDB* %db, i8** %tokens) #2 {
entry:
  %retval = alloca i32, align 4
  %db.addr = alloca %struct._GimpInterpreterDB*, align 8
  %tokens.addr = alloca i8**, align 8
  %interp_magic = alloca %struct._GimpInterpreterMagic*, align 8
  %name = alloca i8*, align 8
  %num = alloca i8*, align 8
  %magic = alloca i8*, align 8
  %mask = alloca i8*, align 8
  %program = alloca i8*, align 8
  %offset = alloca i64, align 8
  %size = alloca i32, align 4
  store %struct._GimpInterpreterDB* %db, %struct._GimpInterpreterDB** %db.addr, align 8
  store i8** %tokens, i8*** %tokens.addr, align 8
  %0 = load i8**, i8*** %tokens.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %0, i64 0
  %1 = load i8*, i8** %arrayidx, align 8
  store i8* %1, i8** %name, align 8
  %2 = load i8**, i8*** %tokens.addr, align 8
  %arrayidx1 = getelementptr inbounds i8*, i8** %2, i64 2
  %3 = load i8*, i8** %arrayidx1, align 8
  store i8* %3, i8** %num, align 8
  %4 = load i8**, i8*** %tokens.addr, align 8
  %arrayidx2 = getelementptr inbounds i8*, i8** %4, i64 3
  %5 = load i8*, i8** %arrayidx2, align 8
  store i8* %5, i8** %magic, align 8
  %6 = load i8**, i8*** %tokens.addr, align 8
  %arrayidx3 = getelementptr inbounds i8*, i8** %6, i64 4
  %7 = load i8*, i8** %arrayidx3, align 8
  store i8* %7, i8** %mask, align 8
  %8 = load i8**, i8*** %tokens.addr, align 8
  %arrayidx4 = getelementptr inbounds i8*, i8** %8, i64 5
  %9 = load i8*, i8** %arrayidx4, align 8
  store i8* %9, i8** %program, align 8
  %10 = load %struct._GimpInterpreterDB*, %struct._GimpInterpreterDB** %db.addr, align 8
  %magic_names = getelementptr inbounds %struct._GimpInterpreterDB, %struct._GimpInterpreterDB* %10, i32 0, i32 3
  %11 = load %struct._GHashTable*, %struct._GHashTable** %magic_names, align 8
  %12 = load i8*, i8** %name, align 8
  %call = call i8* @g_hash_table_lookup(%struct._GHashTable* %11, i8* %12)
  %tobool = icmp ne i8* %call, null
  br i1 %tobool, label %if.end.59, label %if.then

if.then:                                          ; preds = %entry
  %13 = load i8*, i8** %num, align 8
  %arrayidx5 = getelementptr inbounds i8, i8* %13, i64 0
  %14 = load i8, i8* %arrayidx5, align 1
  %conv = sext i8 %14 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.then
  %15 = load i8*, i8** %num, align 8
  %call8 = call i64 @strtoul(i8* %15, i8** %num, i32 10) #4
  store i64 %call8, i64* %offset, align 8
  %16 = load i8*, i8** %num, align 8
  %arrayidx9 = getelementptr inbounds i8, i8* %16, i64 0
  %17 = load i8, i8* %arrayidx9, align 1
  %conv10 = sext i8 %17 to i32
  %cmp11 = icmp ne i32 %conv10, 0
  br i1 %cmp11, label %if.then.13, label %if.end

if.then.13:                                       ; preds = %if.then.7
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then.7
  %18 = load i64, i64* %offset, align 8
  %cmp14 = icmp ugt i64 %18, 1024
  br i1 %cmp14, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.17:                                        ; preds = %if.end
  br label %if.end.18

if.else:                                          ; preds = %if.then
  store i64 0, i64* %offset, align 8
  br label %if.end.18

if.end.18:                                        ; preds = %if.else, %if.end.17
  %19 = load i8*, i8** %magic, align 8
  %call19 = call i32 @scanarg(i8* %19)
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %if.end.22, label %if.then.21

if.then.21:                                       ; preds = %if.end.18
  store i32 0, i32* %retval
  br label %return

if.end.22:                                        ; preds = %if.end.18
  %20 = load i8*, i8** %mask, align 8
  %call23 = call i32 @scanarg(i8* %20)
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %if.end.26, label %if.then.25

if.then.25:                                       ; preds = %if.end.22
  store i32 0, i32* %retval
  br label %return

if.end.26:                                        ; preds = %if.end.22
  %21 = load i8*, i8** %magic, align 8
  %call27 = call i32 @unquote(i8* %21)
  store i32 %call27, i32* %size, align 4
  %22 = load i32, i32* %size, align 4
  %conv28 = zext i32 %22 to i64
  %23 = load i64, i64* %offset, align 8
  %add = add i64 %conv28, %23
  %cmp29 = icmp ugt i64 %add, 2048
  br i1 %cmp29, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.end.26
  store i32 0, i32* %retval
  br label %return

if.end.32:                                        ; preds = %if.end.26
  %24 = load i8*, i8** %mask, align 8
  %arrayidx33 = getelementptr inbounds i8, i8* %24, i64 0
  %25 = load i8, i8* %arrayidx33, align 1
  %conv34 = sext i8 %25 to i32
  %cmp35 = icmp eq i32 %conv34, 0
  br i1 %cmp35, label %if.then.37, label %if.else.38

if.then.37:                                       ; preds = %if.end.32
  store i8* null, i8** %mask, align 8
  br label %if.end.44

if.else.38:                                       ; preds = %if.end.32
  %26 = load i8*, i8** %mask, align 8
  %call39 = call i32 @unquote(i8* %26)
  %27 = load i32, i32* %size, align 4
  %cmp40 = icmp ne i32 %call39, %27
  br i1 %cmp40, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %if.else.38
  store i32 0, i32* %retval
  br label %return

if.end.43:                                        ; preds = %if.else.38
  br label %if.end.44

if.end.44:                                        ; preds = %if.end.43, %if.then.37
  %call45 = call noalias i8* @g_slice_alloc(i64 40)
  %28 = bitcast i8* %call45 to %struct._GimpInterpreterMagic*
  store %struct._GimpInterpreterMagic* %28, %struct._GimpInterpreterMagic** %interp_magic, align 8
  %29 = load i64, i64* %offset, align 8
  %30 = load %struct._GimpInterpreterMagic*, %struct._GimpInterpreterMagic** %interp_magic, align 8
  %offset46 = getelementptr inbounds %struct._GimpInterpreterMagic, %struct._GimpInterpreterMagic* %30, i32 0, i32 0
  store i64 %29, i64* %offset46, align 8
  %31 = load i8*, i8** %magic, align 8
  %32 = load i32, i32* %size, align 4
  %call47 = call noalias i8* @g_memdup(i8* %31, i32 %32)
  %33 = load %struct._GimpInterpreterMagic*, %struct._GimpInterpreterMagic** %interp_magic, align 8
  %magic48 = getelementptr inbounds %struct._GimpInterpreterMagic, %struct._GimpInterpreterMagic* %33, i32 0, i32 1
  store i8* %call47, i8** %magic48, align 8
  %34 = load i8*, i8** %mask, align 8
  %35 = load i32, i32* %size, align 4
  %call49 = call noalias i8* @g_memdup(i8* %34, i32 %35)
  %36 = load %struct._GimpInterpreterMagic*, %struct._GimpInterpreterMagic** %interp_magic, align 8
  %mask50 = getelementptr inbounds %struct._GimpInterpreterMagic, %struct._GimpInterpreterMagic* %36, i32 0, i32 2
  store i8* %call49, i8** %mask50, align 8
  %37 = load i32, i32* %size, align 4
  %38 = load %struct._GimpInterpreterMagic*, %struct._GimpInterpreterMagic** %interp_magic, align 8
  %size51 = getelementptr inbounds %struct._GimpInterpreterMagic, %struct._GimpInterpreterMagic* %38, i32 0, i32 3
  store i32 %37, i32* %size51, align 4
  %39 = load i8*, i8** %program, align 8
  %call52 = call noalias i8* @g_strdup(i8* %39)
  %40 = load %struct._GimpInterpreterMagic*, %struct._GimpInterpreterMagic** %interp_magic, align 8
  %program53 = getelementptr inbounds %struct._GimpInterpreterMagic, %struct._GimpInterpreterMagic* %40, i32 0, i32 4
  store i8* %call52, i8** %program53, align 8
  %41 = load %struct._GimpInterpreterDB*, %struct._GimpInterpreterDB** %db.addr, align 8
  %magics = getelementptr inbounds %struct._GimpInterpreterDB, %struct._GimpInterpreterDB* %41, i32 0, i32 2
  %42 = load %struct._GSList*, %struct._GSList** %magics, align 8
  %43 = load %struct._GimpInterpreterMagic*, %struct._GimpInterpreterMagic** %interp_magic, align 8
  %44 = bitcast %struct._GimpInterpreterMagic* %43 to i8*
  %call54 = call %struct._GSList* @g_slist_append(%struct._GSList* %42, i8* %44)
  %45 = load %struct._GimpInterpreterDB*, %struct._GimpInterpreterDB** %db.addr, align 8
  %magics55 = getelementptr inbounds %struct._GimpInterpreterDB, %struct._GimpInterpreterDB* %45, i32 0, i32 2
  store %struct._GSList* %call54, %struct._GSList** %magics55, align 8
  %46 = load %struct._GimpInterpreterDB*, %struct._GimpInterpreterDB** %db.addr, align 8
  %magic_names56 = getelementptr inbounds %struct._GimpInterpreterDB, %struct._GimpInterpreterDB* %46, i32 0, i32 3
  %47 = load %struct._GHashTable*, %struct._GHashTable** %magic_names56, align 8
  %48 = load i8*, i8** %name, align 8
  %call57 = call noalias i8* @g_strdup(i8* %48)
  %49 = load %struct._GimpInterpreterMagic*, %struct._GimpInterpreterMagic** %interp_magic, align 8
  %50 = bitcast %struct._GimpInterpreterMagic* %49 to i8*
  %call58 = call i32 @g_hash_table_insert(%struct._GHashTable* %47, i8* %call57, i8* %50)
  br label %if.end.59

if.end.59:                                        ; preds = %if.end.44, %entry
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.59, %if.then.42, %if.then.31, %if.then.25, %if.then.21, %if.then.16, %if.then.13
  %51 = load i32, i32* %retval
  ret i32 %51
}

declare void @g_strfreev(i8**) #1

; Function Attrs: nounwind
declare i64 @strtoul(i8*, i8**, i32) #5

; Function Attrs: nounwind uwtable
define internal i32 @scanarg(i8* %s) #2 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  %c = alloca i8, align 1
  store i8* %s, i8** %s.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.23, %entry
  %0 = load i8*, i8** %s.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i32 1
  store i8* %incdec.ptr, i8** %s.addr, align 8
  %1 = load i8, i8* %0, align 1
  store i8 %1, i8* %c, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i8, i8* %c, align 1
  %conv2 = sext i8 %2 to i32
  %cmp3 = icmp eq i32 %conv2, 92
  br i1 %cmp3, label %land.lhs.true, label %if.end.23

land.lhs.true:                                    ; preds = %while.body
  %3 = load i8*, i8** %s.addr, align 8
  %4 = load i8, i8* %3, align 1
  %conv5 = sext i8 %4 to i32
  %cmp6 = icmp eq i32 %conv5, 120
  br i1 %cmp6, label %if.then, label %if.end.23

if.then:                                          ; preds = %land.lhs.true
  %5 = load i8*, i8** %s.addr, align 8
  %incdec.ptr8 = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr8, i8** %s.addr, align 8
  %6 = load i8*, i8** %s.addr, align 8
  %incdec.ptr9 = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr9, i8** %s.addr, align 8
  %7 = load i8, i8* %6, align 1
  %idxprom = zext i8 %7 to i64
  %8 = load i16*, i16** @g_ascii_table, align 8
  %arrayidx = getelementptr inbounds i16, i16* %8, i64 %idxprom
  %9 = load i16, i16* %arrayidx, align 2
  %conv10 = zext i16 %9 to i32
  %and = and i32 %conv10, 1024
  %cmp11 = icmp ne i32 %and, 0
  br i1 %cmp11, label %if.end, label %if.then.13

if.then.13:                                       ; preds = %if.then
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  %10 = load i8*, i8** %s.addr, align 8
  %incdec.ptr14 = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %incdec.ptr14, i8** %s.addr, align 8
  %11 = load i8, i8* %10, align 1
  %idxprom15 = zext i8 %11 to i64
  %12 = load i16*, i16** @g_ascii_table, align 8
  %arrayidx16 = getelementptr inbounds i16, i16* %12, i64 %idxprom15
  %13 = load i16, i16* %arrayidx16, align 2
  %conv17 = zext i16 %13 to i32
  %and18 = and i32 %conv17, 1024
  %cmp19 = icmp ne i32 %and18, 0
  br i1 %cmp19, label %if.end.22, label %if.then.21

if.then.21:                                       ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.22:                                        ; preds = %if.end
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %land.lhs.true, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.21, %if.then.13
  %14 = load i32, i32* %retval
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define internal i32 @unquote(i8* %from) #2 {
entry:
  %from.addr = alloca i8*, align 8
  %s = alloca i8*, align 8
  %p = alloca i8*, align 8
  %c = alloca i8, align 1
  store i8* %from, i8** %from.addr, align 8
  %0 = load i8*, i8** %from.addr, align 8
  store i8* %0, i8** %s, align 8
  %1 = load i8*, i8** %from.addr, align 8
  store i8* %1, i8** %p, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %if.then, %entry
  %2 = load i8*, i8** %s, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %2, i32 1
  store i8* %incdec.ptr, i8** %s, align 8
  %3 = load i8, i8* %2, align 1
  store i8 %3, i8* %c, align 1
  %conv = sext i8 %3 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i8, i8* %c, align 1
  %conv2 = sext i8 %4 to i32
  %cmp3 = icmp eq i32 %conv2, 92
  br i1 %cmp3, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %while.body
  %5 = load i8*, i8** %s, align 8
  %6 = load i8, i8* %5, align 1
  %conv5 = sext i8 %6 to i32
  %cmp6 = icmp eq i32 %conv5, 120
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %7 = load i8*, i8** %s, align 8
  %incdec.ptr8 = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %incdec.ptr8, i8** %s, align 8
  %8 = load i8*, i8** %s, align 8
  %incdec.ptr9 = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %incdec.ptr9, i8** %s, align 8
  %9 = load i8, i8* %8, align 1
  %call = call i32 @g_ascii_xdigit_value(i8 signext %9) #8
  %shl = shl i32 %call, 4
  %conv10 = trunc i32 %shl to i8
  %10 = load i8*, i8** %p, align 8
  store i8 %conv10, i8* %10, align 1
  %11 = load i8*, i8** %s, align 8
  %incdec.ptr11 = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %incdec.ptr11, i8** %s, align 8
  %12 = load i8, i8* %11, align 1
  %call12 = call i32 @g_ascii_xdigit_value(i8 signext %12) #8
  %13 = load i8*, i8** %p, align 8
  %incdec.ptr13 = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %incdec.ptr13, i8** %p, align 8
  %14 = load i8, i8* %13, align 1
  %conv14 = sext i8 %14 to i32
  %or = or i32 %conv14, %call12
  %conv15 = trunc i32 %or to i8
  store i8 %conv15, i8* %13, align 1
  br label %while.cond

if.end:                                           ; preds = %land.lhs.true, %while.body
  %15 = load i8, i8* %c, align 1
  %16 = load i8*, i8** %p, align 8
  %incdec.ptr16 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr16, i8** %p, align 8
  store i8 %15, i8* %16, align 1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %17 = load i8*, i8** %p, align 8
  %18 = load i8*, i8** %from.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %17 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %18 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv17 = trunc i64 %sub.ptr.sub to i32
  ret i32 %conv17
}

declare noalias i8* @g_slice_alloc(i64) #1

declare noalias i8* @g_memdup(i8*, i32) #1

declare %struct._GSList* @g_slist_append(%struct._GSList*, i8*) #1

; Function Attrs: nounwind readnone
declare i32 @g_ascii_xdigit_value(i8 signext) #6

declare void @g_slice_free1(i64, i8*) #1

declare void @g_slist_free_1(%struct._GSList*) #1

declare i32 @g_hash_table_foreach_steal(%struct._GHashTable*, i32 (i8*, i8*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @resolve_program(i8* %key, i8* %value, i8* %user_data) #2 {
entry:
  %key.addr = alloca i8*, align 8
  %value.addr = alloca i8*, align 8
  %user_data.addr = alloca i8*, align 8
  %db = alloca %struct._GimpInterpreterDB*, align 8
  %program = alloca i8*, align 8
  store i8* %key, i8** %key.addr, align 8
  store i8* %value, i8** %value.addr, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  %0 = load i8*, i8** %user_data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GimpInterpreterDB*
  store %struct._GimpInterpreterDB* %1, %struct._GimpInterpreterDB** %db, align 8
  %2 = load %struct._GimpInterpreterDB*, %struct._GimpInterpreterDB** %db, align 8
  %programs = getelementptr inbounds %struct._GimpInterpreterDB, %struct._GimpInterpreterDB* %2, i32 0, i32 1
  %3 = load %struct._GHashTable*, %struct._GHashTable** %programs, align 8
  %4 = load i8*, i8** %value.addr, align 8
  %call = call i8* @g_hash_table_lookup(%struct._GHashTable* %3, i8* %4)
  store i8* %call, i8** %program, align 8
  %5 = load i8*, i8** %program, align 8
  %cmp = icmp ne i8* %5, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load i8*, i8** %value.addr, align 8
  call void @g_free(i8* %6)
  %7 = load i8*, i8** %program, align 8
  %call1 = call noalias i8* @g_strdup(i8* %7)
  store i8* %call1, i8** %value.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct._GimpInterpreterDB*, %struct._GimpInterpreterDB** %db, align 8
  %extensions = getelementptr inbounds %struct._GimpInterpreterDB, %struct._GimpInterpreterDB* %8, i32 0, i32 4
  %9 = load %struct._GHashTable*, %struct._GHashTable** %extensions, align 8
  %10 = load i8*, i8** %key.addr, align 8
  %11 = load i8*, i8** %value.addr, align 8
  %call2 = call i32 @g_hash_table_insert(%struct._GHashTable* %9, i8* %10, i8* %11)
  ret i32 1
}

declare noalias i8* @g_path_get_basename(i8*) #1

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) #3

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

; Function Attrs: inlinehint nounwind uwtable
define internal %struct._GString* @g_string_append_c_inline(%struct._GString* %gstring, i8 signext %c) #7 {
entry:
  %gstring.addr = alloca %struct._GString*, align 8
  %c.addr = alloca i8, align 1
  store %struct._GString* %gstring, %struct._GString** %gstring.addr, align 8
  store i8 %c, i8* %c.addr, align 1
  %0 = load %struct._GString*, %struct._GString** %gstring.addr, align 8
  %len = getelementptr inbounds %struct._GString, %struct._GString* %0, i32 0, i32 1
  %1 = load i64, i64* %len, align 8
  %add = add i64 %1, 1
  %2 = load %struct._GString*, %struct._GString** %gstring.addr, align 8
  %allocated_len = getelementptr inbounds %struct._GString, %struct._GString* %2, i32 0, i32 2
  %3 = load i64, i64* %allocated_len, align 8
  %cmp = icmp ult i64 %add, %3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load i8, i8* %c.addr, align 1
  %5 = load %struct._GString*, %struct._GString** %gstring.addr, align 8
  %len1 = getelementptr inbounds %struct._GString, %struct._GString* %5, i32 0, i32 1
  %6 = load i64, i64* %len1, align 8
  %inc = add i64 %6, 1
  store i64 %inc, i64* %len1, align 8
  %7 = load %struct._GString*, %struct._GString** %gstring.addr, align 8
  %str = getelementptr inbounds %struct._GString, %struct._GString* %7, i32 0, i32 0
  %8 = load i8*, i8** %str, align 8
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %6
  store i8 %4, i8* %arrayidx, align 1
  %9 = load %struct._GString*, %struct._GString** %gstring.addr, align 8
  %len2 = getelementptr inbounds %struct._GString, %struct._GString* %9, i32 0, i32 1
  %10 = load i64, i64* %len2, align 8
  %11 = load %struct._GString*, %struct._GString** %gstring.addr, align 8
  %str3 = getelementptr inbounds %struct._GString, %struct._GString* %11, i32 0, i32 0
  %12 = load i8*, i8** %str3, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %12, i64 %10
  store i8 0, i8* %arrayidx4, align 1
  br label %if.end

if.else:                                          ; preds = %entry
  %13 = load %struct._GString*, %struct._GString** %gstring.addr, align 8
  %14 = load i8, i8* %c.addr, align 1
  %call = call %struct._GString* @g_string_insert_c(%struct._GString* %13, i64 -1, i8 signext %14)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %15 = load %struct._GString*, %struct._GString** %gstring.addr, align 8
  ret %struct._GString* %15
}

declare %struct._GString* @g_string_append(%struct._GString*, i8*) #1

declare %struct._GString* @g_string_insert_c(%struct._GString*, i64, i8 signext) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readnone }
attributes #9 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
