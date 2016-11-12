; ModuleID = './app/pdb/gimppdb.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpPDBClass = type { %struct._GimpObjectClass, void (%struct._GimpPDB*, %struct._GimpProcedure*)*, void (%struct._GimpPDB*, %struct._GimpProcedure*)* }
%struct._GimpObjectClass = type { %struct._GObjectClass, void (%struct._GimpObject*)*, void (%struct._GimpObject*)*, i64 (%struct._GimpObject*, i64*)* }
%struct._GObjectClass = type { %struct._GTypeClass, %struct._GSList*, %struct._GObject* (i64, i32, %struct._GObjectConstructParam*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*)*, void (%struct._GObject*)*, void (%struct._GObject*, i32, %struct._GParamSpec**)*, void (%struct._GObject*, %struct._GParamSpec*)*, void (%struct._GObject*)*, i64, [6 x i8*] }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GData = type opaque
%struct._GObjectConstructParam = type { %struct._GParamSpec*, %struct._GValue* }
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GimpObjectPrivate = type opaque
%struct._GimpPDB = type { %struct._GimpObject, %struct._Gimp*, %struct._GHashTable*, %struct._GHashTable* }
%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
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
%struct._GimpToolInfo = type opaque
%struct._GimpContainer = type opaque
%struct._GimpTemplate = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpContext = type { %struct._GimpViewable, %struct._Gimp*, %struct._GimpContext*, i32, i32, %struct._GimpImage*, i8*, %struct._GimpToolInfo*, i8*, %struct._GimpPaintInfo*, i8*, %struct._GimpRGB, %struct._GimpRGB, double, i32, %struct._GimpBrush*, i8*, %struct._GimpDynamics*, i8*, %struct._GimpPattern*, i8*, %struct._GimpGradient*, i8*, %struct._GimpPalette*, i8*, %struct._GimpToolPreset*, i8*, %struct._GimpFont*, i8*, %struct._GimpBuffer*, i8*, %struct._GimpImagefile*, i8*, %struct._GimpTemplate*, i8* }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpBrush = type opaque
%struct._GimpDynamics = type opaque
%struct._GimpPattern = type opaque
%struct._GimpGradient = type opaque
%struct._GimpPalette = type opaque
%struct._GimpToolPreset = type opaque
%struct._GimpFont = type opaque
%struct._GimpImagefile = type opaque
%struct._GHashTable = type opaque
%struct._GimpProcedure = type { %struct._GimpObject, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, %struct._GParamSpec**, i32, %struct._GParamSpec**, %struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* }
%struct._GValueArray = type { i32, %struct._GValue*, i32 }
%struct._GError = type { i32, i32, i8* }
%struct._GTypeValueTable = type { void (%struct._GValue*)*, void (%struct._GValue*)*, void (%struct._GValue*, %struct._GValue*)*, i8* (%struct._GValue*)*, i8*, i8* (%struct._GValue*, i32, %union._GTypeCValue*, i32)*, i8*, i8* (%struct._GValue*, i32, %union._GTypeCValue*, i32)* }
%union._GTypeCValue = type { i64 }
%struct._GSignalInvocationHint = type { i32, i32, i32 }
%struct._GClosure = type { i32, {}*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, void (i8*, %struct._GClosure*)* }

@gimp_pdb_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"GimpPDB\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"Gimp-PDB\00", align 1
@__func__.gimp_pdb_new = private unnamed_addr constant [13 x i8] c"gimp_pdb_new\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"GIMP_IS_GIMP (gimp)\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"pdb\00", align 1
@__func__.gimp_pdb_register_procedure = private unnamed_addr constant [28 x i8] c"gimp_pdb_register_procedure\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"GIMP_IS_PDB (pdb)\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"GIMP_IS_PROCEDURE (procedure)\00", align 1
@gimp_pdb_signals = internal global [2 x i32] zeroinitializer, align 4
@__func__.gimp_pdb_unregister_procedure = private unnamed_addr constant [30 x i8] c"gimp_pdb_unregister_procedure\00", align 1
@__func__.gimp_pdb_lookup_procedure = private unnamed_addr constant [26 x i8] c"gimp_pdb_lookup_procedure\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"name != NULL\00", align 1
@__func__.gimp_pdb_register_compat_proc_name = private unnamed_addr constant [35 x i8] c"gimp_pdb_register_compat_proc_name\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"old_name != NULL\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"new_name != NULL\00", align 1
@__func__.gimp_pdb_lookup_compat_proc_name = private unnamed_addr constant [33 x i8] c"gimp_pdb_lookup_compat_proc_name\00", align 1
@__func__.gimp_pdb_execute_procedure_by_name_args = private unnamed_addr constant [40 x i8] c"gimp_pdb_execute_procedure_by_name_args\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"GIMP_IS_CONTEXT (context)\00", align 1
@.str.11 = private unnamed_addr constant [48 x i8] c"progress == NULL || GIMP_IS_PROGRESS (progress)\00", align 1
@.str.12 = private unnamed_addr constant [32 x i8] c"error == NULL || *error == NULL\00", align 1
@.str.13 = private unnamed_addr constant [25 x i8] c"Procedure '%s' not found\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"args != NULL\00", align 1
@__func__.gimp_pdb_execute_procedure_by_name = private unnamed_addr constant [35 x i8] c"gimp_pdb_execute_procedure_by_name\00", align 1
@.str.15 = private unnamed_addr constant [88 x i8] c"Procedure '%s' has been called with a wrong type for argument #%d. Expected %s, got %s.\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"gimppdb.c\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@__func__.gimp_pdb_get_deprecated_procedures = private unnamed_addr constant [35 x i8] c"gimp_pdb_get_deprecated_procedures\00", align 1
@gimp_pdb_parent_class = internal global i8* null, align 8
@GimpPDB_private_offset = internal global i32 0, align 4
@.str.18 = private unnamed_addr constant [19 x i8] c"register-procedure\00", align 1
@.str.19 = private unnamed_addr constant [21 x i8] c"unregister-procedure\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_pdb_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_pdb_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_pdb_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_object_get_type() #8
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 176, void (i8*, i8*)* bitcast (void (i8*)* @gimp_pdb_class_intern_init to void (i8*, i8*)*), i32 56, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpPDB*)* @gimp_pdb_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_pdb_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_pdb_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_pdb_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_pdb_parent_class, align 8
  %1 = load i32, i32* @GimpPDB_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpPDB_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpPDBClass*
  call void @gimp_pdb_class_init(%struct._GimpPDBClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_pdb_init(%struct._GimpPDB* %pdb) #3 {
entry:
  %pdb.addr = alloca %struct._GimpPDB*, align 8
  store %struct._GimpPDB* %pdb, %struct._GimpPDB** %pdb.addr, align 8
  %call = call %struct._GHashTable* @g_hash_table_new(i32 (i8*)* @g_str_hash, i32 (i8*, i8*)* @g_str_equal)
  %0 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %procedures = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %0, i32 0, i32 2
  store %struct._GHashTable* %call, %struct._GHashTable** %procedures, align 8
  %call1 = call %struct._GHashTable* @g_hash_table_new(i32 (i8*)* @g_str_hash, i32 (i8*, i8*)* @g_str_equal)
  %1 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %compat_proc_names = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %1, i32 0, i32 3
  store %struct._GHashTable* %call1, %struct._GHashTable** %compat_proc_names, align 8
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GimpPDB* @gimp_pdb_new(%struct._Gimp* %gimp) #3 {
entry:
  %retval = alloca %struct._GimpPDB*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %pdb = alloca %struct._GimpPDB*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.gimp_pdb_new, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpPDB* null, %struct._GimpPDB** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %call11 = call i64 @gimp_pdb_get_type() #8
  %call12 = call i8* (i64, i8*, ...) @g_object_new(i64 %call11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i8* null)
  %13 = bitcast i8* %call12 to %struct._GimpPDB*
  store %struct._GimpPDB* %13, %struct._GimpPDB** %pdb, align 8
  %14 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %15 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb, align 8
  %gimp13 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %15, i32 0, i32 1
  store %struct._Gimp* %14, %struct._Gimp** %gimp13, align 8
  %16 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb, align 8
  store %struct._GimpPDB* %16, %struct._GimpPDB** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %17 = load %struct._GimpPDB*, %struct._GimpPDB** %retval
  ret %struct._GimpPDB* %17
}

; Function Attrs: nounwind readnone
declare i64 @gimp_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare i8* @g_object_new(i64, i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @gimp_pdb_register_procedure(%struct._GimpPDB* %pdb, %struct._GimpProcedure* %procedure) #3 {
entry:
  %pdb.addr = alloca %struct._GimpPDB*, align 8
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._GimpPDB* %pdb, %struct._GimpPDB** %pdb.addr, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %1 = bitcast %struct._GimpPDB* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_pdb_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_pdb_register_procedure, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end.42

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %14 = bitcast %struct._GimpProcedure* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_procedure_get_type() #8
  store i64 %call16, i64* %__t15, align 8
  %15 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %tobool19 = icmp ne %struct._GTypeInstance* %15, null
  br i1 %tobool19, label %if.else.21, label %if.then.20

if.then.20:                                       ; preds = %do.body.11
  store i32 0, i32* %__r18, align 4
  br label %if.end.32

if.else.21:                                       ; preds = %do.body.11
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %g_class22 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %16, i32 0, i32 0
  %17 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class22, align 8
  %tobool23 = icmp ne %struct._GTypeClass* %17, null
  br i1 %tobool23, label %land.lhs.true.24, label %if.else.29

land.lhs.true.24:                                 ; preds = %if.else.21
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %g_class25 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class25, align 8
  %g_type26 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %19, i32 0, i32 0
  %20 = load i64, i64* %g_type26, align 8
  %21 = load i64, i64* %__t15, align 8
  %cmp27 = icmp eq i64 %20, %21
  br i1 %cmp27, label %if.then.28, label %if.else.29

if.then.28:                                       ; preds = %land.lhs.true.24
  store i32 1, i32* %__r18, align 4
  br label %if.end.31

if.else.29:                                       ; preds = %land.lhs.true.24, %if.else.21
  %22 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %23 = load i64, i64* %__t15, align 8
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #9
  store i32 %call30, i32* %__r18, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.29, %if.then.28
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.then.20
  %24 = load i32, i32* %__r18, align 4
  store i32 %24, i32* %tmp33
  %25 = load i32, i32* %tmp33
  %tobool34 = icmp ne i32 %25, 0
  br i1 %tobool34, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %if.end.32
  br label %if.end.37

if.else.36:                                       ; preds = %if.end.32
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_pdb_register_procedure, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.42

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %26 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %deprecated = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %26, i32 0, i32 9
  %27 = load i8*, i8** %deprecated, align 8
  %tobool39 = icmp ne i8* %27, null
  br i1 %tobool39, label %lor.lhs.false, label %if.then.41

lor.lhs.false:                                    ; preds = %do.end.38
  %28 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %28, i32 0, i32 1
  %29 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %pdb_compat_mode = getelementptr inbounds %struct._Gimp, %struct._Gimp* %29, i32 0, i32 13
  %30 = load i32, i32* %pdb_compat_mode, align 4
  %cmp40 = icmp ne i32 %30, 0
  br i1 %cmp40, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %lor.lhs.false, %do.end.38
  %31 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %32 = bitcast %struct._GimpPDB* %31 to i8*
  %33 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @gimp_pdb_signals, i32 0, i64 0), align 4
  %34 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %32, i32 %33, i32 0, %struct._GimpProcedure* %34)
  br label %if.end.42

if.end.42:                                        ; preds = %if.else.9, %if.else.36, %if.then.41, %lor.lhs.false
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_procedure_get_type() #2

declare void @g_signal_emit(i8*, i32, i32, ...) #1

; Function Attrs: nounwind uwtable
define void @gimp_pdb_unregister_procedure(%struct._GimpPDB* %pdb, %struct._GimpProcedure* %procedure) #3 {
entry:
  %pdb.addr = alloca %struct._GimpPDB*, align 8
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._GimpPDB* %pdb, %struct._GimpPDB** %pdb.addr, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %1 = bitcast %struct._GimpPDB* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_pdb_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_pdb_unregister_procedure, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %14 = bitcast %struct._GimpProcedure* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_procedure_get_type() #8
  store i64 %call16, i64* %__t15, align 8
  %15 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %tobool19 = icmp ne %struct._GTypeInstance* %15, null
  br i1 %tobool19, label %if.else.21, label %if.then.20

if.then.20:                                       ; preds = %do.body.11
  store i32 0, i32* %__r18, align 4
  br label %if.end.32

if.else.21:                                       ; preds = %do.body.11
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %g_class22 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %16, i32 0, i32 0
  %17 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class22, align 8
  %tobool23 = icmp ne %struct._GTypeClass* %17, null
  br i1 %tobool23, label %land.lhs.true.24, label %if.else.29

land.lhs.true.24:                                 ; preds = %if.else.21
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %g_class25 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class25, align 8
  %g_type26 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %19, i32 0, i32 0
  %20 = load i64, i64* %g_type26, align 8
  %21 = load i64, i64* %__t15, align 8
  %cmp27 = icmp eq i64 %20, %21
  br i1 %cmp27, label %if.then.28, label %if.else.29

if.then.28:                                       ; preds = %land.lhs.true.24
  store i32 1, i32* %__r18, align 4
  br label %if.end.31

if.else.29:                                       ; preds = %land.lhs.true.24, %if.else.21
  %22 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %23 = load i64, i64* %__t15, align 8
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #9
  store i32 %call30, i32* %__r18, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.29, %if.then.28
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.then.20
  %24 = load i32, i32* %__r18, align 4
  store i32 %24, i32* %tmp33
  %25 = load i32, i32* %tmp33
  %tobool34 = icmp ne i32 %25, 0
  br i1 %tobool34, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %if.end.32
  br label %if.end.37

if.else.36:                                       ; preds = %if.end.32
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_pdb_unregister_procedure, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i32 0, i32 0))
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %26 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %27 = bitcast %struct._GimpPDB* %26 to i8*
  %28 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @gimp_pdb_signals, i32 0, i64 1), align 4
  %29 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %27, i32 %28, i32 0, %struct._GimpProcedure* %29)
  br label %return

return:                                           ; preds = %do.end.38, %if.else.36, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._GimpProcedure* @gimp_pdb_lookup_procedure(%struct._GimpPDB* %pdb, i8* %name) #3 {
entry:
  %retval = alloca %struct._GimpProcedure*, align 8
  %pdb.addr = alloca %struct._GimpPDB*, align 8
  %name.addr = alloca i8*, align 8
  %list = alloca %struct._GList*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpPDB* %pdb, %struct._GimpPDB** %pdb.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %1 = bitcast %struct._GimpPDB* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_pdb_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_pdb_lookup_procedure, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i32 0, i32 0))
  store %struct._GimpProcedure* null, %struct._GimpProcedure** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i8*, i8** %name.addr, align 8
  %cmp12 = icmp ne i8* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_pdb_lookup_procedure, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0))
  store %struct._GimpProcedure* null, %struct._GimpProcedure** %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %procedures = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %14, i32 0, i32 2
  %15 = load %struct._GHashTable*, %struct._GHashTable** %procedures, align 8
  %16 = load i8*, i8** %name.addr, align 8
  %call17 = call i8* @g_hash_table_lookup(%struct._GHashTable* %15, i8* %16)
  %17 = bitcast i8* %call17 to %struct._GList*
  store %struct._GList* %17, %struct._GList** %list, align 8
  %18 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool18 = icmp ne %struct._GList* %18, null
  br i1 %tobool18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %do.end.16
  %19 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %19, i32 0, i32 0
  %20 = load i8*, i8** %data, align 8
  %21 = bitcast i8* %20 to %struct._GimpProcedure*
  store %struct._GimpProcedure* %21, %struct._GimpProcedure** %retval
  br label %return

if.end.20:                                        ; preds = %do.end.16
  store %struct._GimpProcedure* null, %struct._GimpProcedure** %retval
  br label %return

return:                                           ; preds = %if.end.20, %if.then.19, %if.else.14, %if.else.9
  %22 = load %struct._GimpProcedure*, %struct._GimpProcedure** %retval
  ret %struct._GimpProcedure* %22
}

declare i8* @g_hash_table_lookup(%struct._GHashTable*, i8*) #1

; Function Attrs: nounwind uwtable
define void @gimp_pdb_register_compat_proc_name(%struct._GimpPDB* %pdb, i8* %old_name, i8* %new_name) #3 {
entry:
  %pdb.addr = alloca %struct._GimpPDB*, align 8
  %old_name.addr = alloca i8*, align 8
  %new_name.addr = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpPDB* %pdb, %struct._GimpPDB** %pdb.addr, align 8
  store i8* %old_name, i8** %old_name.addr, align 8
  store i8* %new_name, i8** %new_name.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %1 = bitcast %struct._GimpPDB* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_pdb_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_pdb_register_compat_proc_name, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i8*, i8** %old_name.addr, align 8
  %cmp12 = icmp ne i8* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_pdb_register_compat_proc_name, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i32 0, i32 0))
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %14 = load i8*, i8** %new_name.addr, align 8
  %cmp18 = icmp ne i8* %14, null
  br i1 %cmp18, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %do.body.17
  br label %if.end.21

if.else.20:                                       ; preds = %do.body.17
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_pdb_register_compat_proc_name, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0))
  br label %return

if.end.21:                                        ; preds = %if.then.19
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  %15 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %compat_proc_names = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %15, i32 0, i32 3
  %16 = load %struct._GHashTable*, %struct._GHashTable** %compat_proc_names, align 8
  %17 = load i8*, i8** %old_name.addr, align 8
  %18 = load i8*, i8** %new_name.addr, align 8
  %call23 = call i32 @g_hash_table_insert(%struct._GHashTable* %16, i8* %17, i8* %18)
  br label %return

return:                                           ; preds = %do.end.22, %if.else.20, %if.else.14, %if.else.9
  ret void
}

declare i32 @g_hash_table_insert(%struct._GHashTable*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define i8* @gimp_pdb_lookup_compat_proc_name(%struct._GimpPDB* %pdb, i8* %old_name) #3 {
entry:
  %retval = alloca i8*, align 8
  %pdb.addr = alloca %struct._GimpPDB*, align 8
  %old_name.addr = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpPDB* %pdb, %struct._GimpPDB** %pdb.addr, align 8
  store i8* %old_name, i8** %old_name.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %1 = bitcast %struct._GimpPDB* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_pdb_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_pdb_lookup_compat_proc_name, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i8*, i8** %old_name.addr, align 8
  %cmp12 = icmp ne i8* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_pdb_lookup_compat_proc_name, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %compat_proc_names = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %14, i32 0, i32 3
  %15 = load %struct._GHashTable*, %struct._GHashTable** %compat_proc_names, align 8
  %16 = load i8*, i8** %old_name.addr, align 8
  %call17 = call i8* @g_hash_table_lookup(%struct._GHashTable* %15, i8* %16)
  store i8* %call17, i8** %retval
  br label %return

return:                                           ; preds = %do.end.16, %if.else.14, %if.else.9
  %17 = load i8*, i8** %retval
  ret i8* %17
}

; Function Attrs: nounwind uwtable
define %struct._GValueArray* @gimp_pdb_execute_procedure_by_name_args(%struct._GimpPDB* %pdb, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GError** %error, i8* %name, %struct._GValueArray* %args) #3 {
entry:
  %retval = alloca %struct._GValueArray*, align 8
  %pdb.addr = alloca %struct._GimpPDB*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %name.addr = alloca i8*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %return_vals = alloca %struct._GValueArray*, align 8
  %list = alloca %struct._GList*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  %__inst42 = alloca %struct._GTypeInstance*, align 8
  %__t44 = alloca i64, align 8
  %__r47 = alloca i32, align 4
  %tmp62 = alloca i32, align 4
  %pdb_error = alloca %struct._GError*, align 8
  %procedure = alloca %struct._GimpProcedure*, align 8
  %__inst101 = alloca %struct._GTypeInstance*, align 8
  %__t103 = alloca i64, align 8
  %__r106 = alloca i32, align 4
  %tmp121 = alloca i32, align 4
  store %struct._GimpPDB* %pdb, %struct._GimpPDB** %pdb.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GValueArray* null, %struct._GValueArray** %return_vals, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %1 = bitcast %struct._GimpPDB* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_pdb_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__func__.gimp_pdb_execute_procedure_by_name_args, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i32 0, i32 0))
  store %struct._GValueArray* null, %struct._GValueArray** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %14 = bitcast %struct._GimpContext* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_context_get_type() #8
  store i64 %call16, i64* %__t15, align 8
  %15 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %tobool19 = icmp ne %struct._GTypeInstance* %15, null
  br i1 %tobool19, label %if.else.21, label %if.then.20

if.then.20:                                       ; preds = %do.body.11
  store i32 0, i32* %__r18, align 4
  br label %if.end.32

if.else.21:                                       ; preds = %do.body.11
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %g_class22 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %16, i32 0, i32 0
  %17 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class22, align 8
  %tobool23 = icmp ne %struct._GTypeClass* %17, null
  br i1 %tobool23, label %land.lhs.true.24, label %if.else.29

land.lhs.true.24:                                 ; preds = %if.else.21
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %g_class25 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class25, align 8
  %g_type26 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %19, i32 0, i32 0
  %20 = load i64, i64* %g_type26, align 8
  %21 = load i64, i64* %__t15, align 8
  %cmp27 = icmp eq i64 %20, %21
  br i1 %cmp27, label %if.then.28, label %if.else.29

if.then.28:                                       ; preds = %land.lhs.true.24
  store i32 1, i32* %__r18, align 4
  br label %if.end.31

if.else.29:                                       ; preds = %land.lhs.true.24, %if.else.21
  %22 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %23 = load i64, i64* %__t15, align 8
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #9
  store i32 %call30, i32* %__r18, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.29, %if.then.28
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.then.20
  %24 = load i32, i32* %__r18, align 4
  store i32 %24, i32* %tmp33
  %25 = load i32, i32* %tmp33
  %tobool34 = icmp ne i32 %25, 0
  br i1 %tobool34, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %if.end.32
  br label %if.end.37

if.else.36:                                       ; preds = %if.end.32
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__func__.gimp_pdb_execute_procedure_by_name_args, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i32 0, i32 0))
  store %struct._GValueArray* null, %struct._GValueArray** %retval
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  br label %do.body.39

do.body.39:                                       ; preds = %do.end.38
  %26 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %cmp40 = icmp eq %struct._GimpProgress* %26, null
  br i1 %cmp40, label %if.then.64, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.39
  %27 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %28 = bitcast %struct._GimpProgress* %27 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %28, %struct._GTypeInstance** %__inst42, align 8
  %call45 = call i64 @gimp_progress_interface_get_type() #8
  store i64 %call45, i64* %__t44, align 8
  %29 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst42, align 8
  %tobool48 = icmp ne %struct._GTypeInstance* %29, null
  br i1 %tobool48, label %if.else.50, label %if.then.49

if.then.49:                                       ; preds = %lor.lhs.false
  store i32 0, i32* %__r47, align 4
  br label %if.end.61

if.else.50:                                       ; preds = %lor.lhs.false
  %30 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst42, align 8
  %g_class51 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %30, i32 0, i32 0
  %31 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class51, align 8
  %tobool52 = icmp ne %struct._GTypeClass* %31, null
  br i1 %tobool52, label %land.lhs.true.53, label %if.else.58

land.lhs.true.53:                                 ; preds = %if.else.50
  %32 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst42, align 8
  %g_class54 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %32, i32 0, i32 0
  %33 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class54, align 8
  %g_type55 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %33, i32 0, i32 0
  %34 = load i64, i64* %g_type55, align 8
  %35 = load i64, i64* %__t44, align 8
  %cmp56 = icmp eq i64 %34, %35
  br i1 %cmp56, label %if.then.57, label %if.else.58

if.then.57:                                       ; preds = %land.lhs.true.53
  store i32 1, i32* %__r47, align 4
  br label %if.end.60

if.else.58:                                       ; preds = %land.lhs.true.53, %if.else.50
  %36 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst42, align 8
  %37 = load i64, i64* %__t44, align 8
  %call59 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %36, i64 %37) #9
  store i32 %call59, i32* %__r47, align 4
  br label %if.end.60

if.end.60:                                        ; preds = %if.else.58, %if.then.57
  br label %if.end.61

if.end.61:                                        ; preds = %if.end.60, %if.then.49
  %38 = load i32, i32* %__r47, align 4
  store i32 %38, i32* %tmp62
  %39 = load i32, i32* %tmp62
  %tobool63 = icmp ne i32 %39, 0
  br i1 %tobool63, label %if.then.64, label %if.else.65

if.then.64:                                       ; preds = %if.end.61, %do.body.39
  br label %if.end.66

if.else.65:                                       ; preds = %if.end.61
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__func__.gimp_pdb_execute_procedure_by_name_args, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11, i32 0, i32 0))
  store %struct._GValueArray* null, %struct._GValueArray** %retval
  br label %return

if.end.66:                                        ; preds = %if.then.64
  br label %do.end.67

do.end.67:                                        ; preds = %if.end.66
  br label %do.body.68

do.body.68:                                       ; preds = %do.end.67
  %40 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %cmp69 = icmp eq %struct._GError** %40, null
  br i1 %cmp69, label %if.then.72, label %lor.lhs.false.70

lor.lhs.false.70:                                 ; preds = %do.body.68
  %41 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %42 = load %struct._GError*, %struct._GError** %41, align 8
  %cmp71 = icmp eq %struct._GError* %42, null
  br i1 %cmp71, label %if.then.72, label %if.else.73

if.then.72:                                       ; preds = %lor.lhs.false.70, %do.body.68
  br label %if.end.74

if.else.73:                                       ; preds = %lor.lhs.false.70
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__func__.gimp_pdb_execute_procedure_by_name_args, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.12, i32 0, i32 0))
  store %struct._GValueArray* null, %struct._GValueArray** %retval
  br label %return

if.end.74:                                        ; preds = %if.then.72
  br label %do.end.75

do.end.75:                                        ; preds = %if.end.74
  br label %do.body.76

do.body.76:                                       ; preds = %do.end.75
  %43 = load i8*, i8** %name.addr, align 8
  %cmp77 = icmp ne i8* %43, null
  br i1 %cmp77, label %if.then.78, label %if.else.79

if.then.78:                                       ; preds = %do.body.76
  br label %if.end.80

if.else.79:                                       ; preds = %do.body.76
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__func__.gimp_pdb_execute_procedure_by_name_args, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0))
  store %struct._GValueArray* null, %struct._GValueArray** %retval
  br label %return

if.end.80:                                        ; preds = %if.then.78
  br label %do.end.81

do.end.81:                                        ; preds = %if.end.80
  %44 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %procedures = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %44, i32 0, i32 2
  %45 = load %struct._GHashTable*, %struct._GHashTable** %procedures, align 8
  %46 = load i8*, i8** %name.addr, align 8
  %call82 = call i8* @g_hash_table_lookup(%struct._GHashTable* %45, i8* %46)
  %47 = bitcast i8* %call82 to %struct._GList*
  store %struct._GList* %47, %struct._GList** %list, align 8
  %48 = load %struct._GList*, %struct._GList** %list, align 8
  %cmp83 = icmp eq %struct._GList* %48, null
  br i1 %cmp83, label %if.then.84, label %if.end.90

if.then.84:                                       ; preds = %do.end.81
  %call86 = call i32 @gimp_pdb_error_quark() #8
  %call87 = call i8* @gettext(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i32 0, i32 0)) #6
  %49 = load i8*, i8** %name.addr, align 8
  %call88 = call %struct._GError* (i32, i32, i8*, ...) @g_error_new(i32 %call86, i32 2, i8* %call87, i8* %49)
  store %struct._GError* %call88, %struct._GError** %pdb_error, align 8
  %50 = load %struct._GError*, %struct._GError** %pdb_error, align 8
  %call89 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* null, i32 0, %struct._GError* %50)
  store %struct._GValueArray* %call89, %struct._GValueArray** %return_vals, align 8
  %51 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %52 = load %struct._GError*, %struct._GError** %pdb_error, align 8
  call void @g_propagate_error(%struct._GError** %51, %struct._GError* %52)
  %53 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  store %struct._GValueArray* %53, %struct._GValueArray** %retval
  br label %return

if.end.90:                                        ; preds = %do.end.81
  br label %do.body.91

do.body.91:                                       ; preds = %if.end.90
  %54 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %cmp92 = icmp ne %struct._GValueArray* %54, null
  br i1 %cmp92, label %if.then.93, label %if.else.94

if.then.93:                                       ; preds = %do.body.91
  br label %if.end.95

if.else.94:                                       ; preds = %do.body.91
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__func__.gimp_pdb_execute_procedure_by_name_args, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i32 0, i32 0))
  store %struct._GValueArray* null, %struct._GValueArray** %retval
  br label %return

if.end.95:                                        ; preds = %if.then.93
  br label %do.end.96

do.end.96:                                        ; preds = %if.end.95
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %do.end.96
  %55 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool97 = icmp ne %struct._GList* %55, null
  br i1 %tobool97, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %56 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %56, i32 0, i32 0
  %57 = load i8*, i8** %data, align 8
  %58 = bitcast i8* %57 to %struct._GimpProcedure*
  store %struct._GimpProcedure* %58, %struct._GimpProcedure** %procedure, align 8
  br label %do.body.99

do.body.99:                                       ; preds = %for.body
  %59 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %60 = bitcast %struct._GimpProcedure* %59 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %60, %struct._GTypeInstance** %__inst101, align 8
  %call104 = call i64 @gimp_procedure_get_type() #8
  store i64 %call104, i64* %__t103, align 8
  %61 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst101, align 8
  %tobool107 = icmp ne %struct._GTypeInstance* %61, null
  br i1 %tobool107, label %if.else.109, label %if.then.108

if.then.108:                                      ; preds = %do.body.99
  store i32 0, i32* %__r106, align 4
  br label %if.end.120

if.else.109:                                      ; preds = %do.body.99
  %62 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst101, align 8
  %g_class110 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %62, i32 0, i32 0
  %63 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class110, align 8
  %tobool111 = icmp ne %struct._GTypeClass* %63, null
  br i1 %tobool111, label %land.lhs.true.112, label %if.else.117

land.lhs.true.112:                                ; preds = %if.else.109
  %64 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst101, align 8
  %g_class113 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %64, i32 0, i32 0
  %65 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class113, align 8
  %g_type114 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %65, i32 0, i32 0
  %66 = load i64, i64* %g_type114, align 8
  %67 = load i64, i64* %__t103, align 8
  %cmp115 = icmp eq i64 %66, %67
  br i1 %cmp115, label %if.then.116, label %if.else.117

if.then.116:                                      ; preds = %land.lhs.true.112
  store i32 1, i32* %__r106, align 4
  br label %if.end.119

if.else.117:                                      ; preds = %land.lhs.true.112, %if.else.109
  %68 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst101, align 8
  %69 = load i64, i64* %__t103, align 8
  %call118 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %68, i64 %69) #9
  store i32 %call118, i32* %__r106, align 4
  br label %if.end.119

if.end.119:                                       ; preds = %if.else.117, %if.then.116
  br label %if.end.120

if.end.120:                                       ; preds = %if.end.119, %if.then.108
  %70 = load i32, i32* %__r106, align 4
  store i32 %70, i32* %tmp121
  %71 = load i32, i32* %tmp121
  %tobool122 = icmp ne i32 %71, 0
  br i1 %tobool122, label %if.then.123, label %if.else.124

if.then.123:                                      ; preds = %if.end.120
  br label %if.end.125

if.else.124:                                      ; preds = %if.end.120
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__func__.gimp_pdb_execute_procedure_by_name_args, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i32 0, i32 0))
  store %struct._GValueArray* null, %struct._GValueArray** %retval
  br label %return

if.end.125:                                       ; preds = %if.then.123
  br label %do.end.126

do.end.126:                                       ; preds = %if.end.125
  %72 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %73 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %73, i32 0, i32 1
  %74 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %75 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %76 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %77 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %78 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call127 = call %struct._GValueArray* @gimp_procedure_execute(%struct._GimpProcedure* %72, %struct._Gimp* %74, %struct._GimpContext* %75, %struct._GimpProgress* %76, %struct._GValueArray* %77, %struct._GError** %78)
  store %struct._GValueArray* %call127, %struct._GValueArray** %return_vals, align 8
  %79 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %79, i32 0, i32 1
  %80 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %80, i64 0
  %call128 = call i32 @g_value_get_enum(%struct._GValue* %arrayidx)
  %cmp129 = icmp eq i32 %call128, 2
  br i1 %cmp129, label %if.then.130, label %if.else.135

if.then.130:                                      ; preds = %do.end.126
  %81 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool131 = icmp ne %struct._GList* %81, null
  br i1 %tobool131, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.130
  %82 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %82, i32 0, i32 1
  %83 = load %struct._GList*, %struct._GList** %next, align 8
  %tobool132 = icmp ne %struct._GList* %83, null
  br i1 %tobool132, label %if.then.133, label %if.end.134

cond.false:                                       ; preds = %if.then.130
  br i1 false, label %if.then.133, label %if.end.134

if.then.133:                                      ; preds = %cond.false, %cond.true
  %84 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  call void @g_value_array_free(%struct._GValueArray* %84)
  %85 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  call void @g_clear_error(%struct._GError** %85)
  br label %if.end.134

if.end.134:                                       ; preds = %if.then.133, %cond.false, %cond.true
  br label %if.end.136

if.else.135:                                      ; preds = %do.end.126
  br label %for.end

if.end.136:                                       ; preds = %if.end.134
  br label %for.inc

for.inc:                                          ; preds = %if.end.136
  %86 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool137 = icmp ne %struct._GList* %86, null
  br i1 %tobool137, label %cond.true.138, label %cond.false.140

cond.true.138:                                    ; preds = %for.inc
  %87 = load %struct._GList*, %struct._GList** %list, align 8
  %next139 = getelementptr inbounds %struct._GList, %struct._GList* %87, i32 0, i32 1
  %88 = load %struct._GList*, %struct._GList** %next139, align 8
  br label %cond.end

cond.false.140:                                   ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false.140, %cond.true.138
  %cond = phi %struct._GList* [ %88, %cond.true.138 ], [ null, %cond.false.140 ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %if.else.135, %for.cond
  %89 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  store %struct._GValueArray* %89, %struct._GValueArray** %retval
  br label %return

return:                                           ; preds = %for.end, %if.else.124, %if.else.94, %if.then.84, %if.else.79, %if.else.73, %if.else.65, %if.else.36, %if.else.9
  %90 = load %struct._GValueArray*, %struct._GValueArray** %retval
  ret %struct._GValueArray* %90
}

; Function Attrs: nounwind readnone
declare i64 @gimp_context_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_progress_interface_get_type() #2

declare %struct._GError* @g_error_new(i32, i32, i8*, ...) #1

; Function Attrs: nounwind readnone
declare i32 @gimp_pdb_error_quark() #2

; Function Attrs: nounwind
declare i8* @gettext(i8*) #5

declare %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure*, i32, %struct._GError*) #1

declare void @g_propagate_error(%struct._GError**, %struct._GError*) #1

declare %struct._GValueArray* @gimp_procedure_execute(%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**) #1

declare i32 @g_value_get_enum(%struct._GValue*) #1

declare void @g_value_array_free(%struct._GValueArray*) #1

declare void @g_clear_error(%struct._GError**) #1

; Function Attrs: nounwind uwtable
define %struct._GValueArray* @gimp_pdb_execute_procedure_by_name(%struct._GimpPDB* %pdb, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GError** %error, i8* %name, ...) #3 {
entry:
  %retval = alloca %struct._GValueArray*, align 8
  %pdb.addr = alloca %struct._GimpPDB*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %name.addr = alloca i8*, align 8
  %procedure = alloca %struct._GimpProcedure*, align 8
  %args = alloca %struct._GValueArray*, align 8
  %return_vals = alloca %struct._GValueArray*, align 8
  %va_args = alloca [1 x %struct.__va_list_tag], align 16
  %i = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  %__inst42 = alloca %struct._GTypeInstance*, align 8
  %__t44 = alloca i64, align 8
  %__r47 = alloca i32, align 4
  %tmp62 = alloca i32, align 4
  %pdb_error = alloca %struct._GError*, align 8
  %value = alloca %struct._GValue*, align 8
  %arg_type = alloca i64, align 8
  %error_msg = alloca i8*, align 8
  %pdb_error105 = alloca %struct._GError*, align 8
  %expected = alloca i8*, align 8
  %got = alloca i8*, align 8
  %_value = alloca %struct._GValue*, align 8
  %_value_type = alloca i64, align 8
  %_vtable = alloca %struct._GTypeValueTable*, align 8
  %_val = alloca %struct._GValue*, align 8
  %_flags = alloca i32, align 4
  %_vtab = alloca %struct._GTypeValueTable*, align 8
  %_collect_format = alloca i8*, align 8
  %_cvalues = alloca [8 x %union._GTypeCValue], align 16
  %_n_values = alloca i32, align 4
  %_cvalue = alloca %union._GTypeCValue*, align 8
  %pdb_error211 = alloca %struct._GError*, align 8
  store %struct._GimpPDB* %pdb, %struct._GimpPDB** %pdb.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %1 = bitcast %struct._GimpPDB* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_pdb_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_pdb_execute_procedure_by_name, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i32 0, i32 0))
  store %struct._GValueArray* null, %struct._GValueArray** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %14 = bitcast %struct._GimpContext* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_context_get_type() #8
  store i64 %call16, i64* %__t15, align 8
  %15 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %tobool19 = icmp ne %struct._GTypeInstance* %15, null
  br i1 %tobool19, label %if.else.21, label %if.then.20

if.then.20:                                       ; preds = %do.body.11
  store i32 0, i32* %__r18, align 4
  br label %if.end.32

if.else.21:                                       ; preds = %do.body.11
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %g_class22 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %16, i32 0, i32 0
  %17 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class22, align 8
  %tobool23 = icmp ne %struct._GTypeClass* %17, null
  br i1 %tobool23, label %land.lhs.true.24, label %if.else.29

land.lhs.true.24:                                 ; preds = %if.else.21
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %g_class25 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class25, align 8
  %g_type26 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %19, i32 0, i32 0
  %20 = load i64, i64* %g_type26, align 8
  %21 = load i64, i64* %__t15, align 8
  %cmp27 = icmp eq i64 %20, %21
  br i1 %cmp27, label %if.then.28, label %if.else.29

if.then.28:                                       ; preds = %land.lhs.true.24
  store i32 1, i32* %__r18, align 4
  br label %if.end.31

if.else.29:                                       ; preds = %land.lhs.true.24, %if.else.21
  %22 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %23 = load i64, i64* %__t15, align 8
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #9
  store i32 %call30, i32* %__r18, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.29, %if.then.28
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.then.20
  %24 = load i32, i32* %__r18, align 4
  store i32 %24, i32* %tmp33
  %25 = load i32, i32* %tmp33
  %tobool34 = icmp ne i32 %25, 0
  br i1 %tobool34, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %if.end.32
  br label %if.end.37

if.else.36:                                       ; preds = %if.end.32
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_pdb_execute_procedure_by_name, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i32 0, i32 0))
  store %struct._GValueArray* null, %struct._GValueArray** %retval
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  br label %do.body.39

do.body.39:                                       ; preds = %do.end.38
  %26 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %cmp40 = icmp eq %struct._GimpProgress* %26, null
  br i1 %cmp40, label %if.then.64, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.39
  %27 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %28 = bitcast %struct._GimpProgress* %27 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %28, %struct._GTypeInstance** %__inst42, align 8
  %call45 = call i64 @gimp_progress_interface_get_type() #8
  store i64 %call45, i64* %__t44, align 8
  %29 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst42, align 8
  %tobool48 = icmp ne %struct._GTypeInstance* %29, null
  br i1 %tobool48, label %if.else.50, label %if.then.49

if.then.49:                                       ; preds = %lor.lhs.false
  store i32 0, i32* %__r47, align 4
  br label %if.end.61

if.else.50:                                       ; preds = %lor.lhs.false
  %30 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst42, align 8
  %g_class51 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %30, i32 0, i32 0
  %31 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class51, align 8
  %tobool52 = icmp ne %struct._GTypeClass* %31, null
  br i1 %tobool52, label %land.lhs.true.53, label %if.else.58

land.lhs.true.53:                                 ; preds = %if.else.50
  %32 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst42, align 8
  %g_class54 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %32, i32 0, i32 0
  %33 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class54, align 8
  %g_type55 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %33, i32 0, i32 0
  %34 = load i64, i64* %g_type55, align 8
  %35 = load i64, i64* %__t44, align 8
  %cmp56 = icmp eq i64 %34, %35
  br i1 %cmp56, label %if.then.57, label %if.else.58

if.then.57:                                       ; preds = %land.lhs.true.53
  store i32 1, i32* %__r47, align 4
  br label %if.end.60

if.else.58:                                       ; preds = %land.lhs.true.53, %if.else.50
  %36 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst42, align 8
  %37 = load i64, i64* %__t44, align 8
  %call59 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %36, i64 %37) #9
  store i32 %call59, i32* %__r47, align 4
  br label %if.end.60

if.end.60:                                        ; preds = %if.else.58, %if.then.57
  br label %if.end.61

if.end.61:                                        ; preds = %if.end.60, %if.then.49
  %38 = load i32, i32* %__r47, align 4
  store i32 %38, i32* %tmp62
  %39 = load i32, i32* %tmp62
  %tobool63 = icmp ne i32 %39, 0
  br i1 %tobool63, label %if.then.64, label %if.else.65

if.then.64:                                       ; preds = %if.end.61, %do.body.39
  br label %if.end.66

if.else.65:                                       ; preds = %if.end.61
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_pdb_execute_procedure_by_name, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11, i32 0, i32 0))
  store %struct._GValueArray* null, %struct._GValueArray** %retval
  br label %return

if.end.66:                                        ; preds = %if.then.64
  br label %do.end.67

do.end.67:                                        ; preds = %if.end.66
  br label %do.body.68

do.body.68:                                       ; preds = %do.end.67
  %40 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %cmp69 = icmp eq %struct._GError** %40, null
  br i1 %cmp69, label %if.then.72, label %lor.lhs.false.70

lor.lhs.false.70:                                 ; preds = %do.body.68
  %41 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %42 = load %struct._GError*, %struct._GError** %41, align 8
  %cmp71 = icmp eq %struct._GError* %42, null
  br i1 %cmp71, label %if.then.72, label %if.else.73

if.then.72:                                       ; preds = %lor.lhs.false.70, %do.body.68
  br label %if.end.74

if.else.73:                                       ; preds = %lor.lhs.false.70
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_pdb_execute_procedure_by_name, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.12, i32 0, i32 0))
  store %struct._GValueArray* null, %struct._GValueArray** %retval
  br label %return

if.end.74:                                        ; preds = %if.then.72
  br label %do.end.75

do.end.75:                                        ; preds = %if.end.74
  br label %do.body.76

do.body.76:                                       ; preds = %do.end.75
  %43 = load i8*, i8** %name.addr, align 8
  %cmp77 = icmp ne i8* %43, null
  br i1 %cmp77, label %if.then.78, label %if.else.79

if.then.78:                                       ; preds = %do.body.76
  br label %if.end.80

if.else.79:                                       ; preds = %do.body.76
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_pdb_execute_procedure_by_name, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0))
  store %struct._GValueArray* null, %struct._GValueArray** %retval
  br label %return

if.end.80:                                        ; preds = %if.then.78
  br label %do.end.81

do.end.81:                                        ; preds = %if.end.80
  %44 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %45 = load i8*, i8** %name.addr, align 8
  %call82 = call %struct._GimpProcedure* @gimp_pdb_lookup_procedure(%struct._GimpPDB* %44, i8* %45)
  store %struct._GimpProcedure* %call82, %struct._GimpProcedure** %procedure, align 8
  %46 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %tobool83 = icmp ne %struct._GimpProcedure* %46, null
  br i1 %tobool83, label %if.end.90, label %if.then.84

if.then.84:                                       ; preds = %do.end.81
  %call86 = call i32 @gimp_pdb_error_quark() #8
  %call87 = call i8* @gettext(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i32 0, i32 0)) #6
  %47 = load i8*, i8** %name.addr, align 8
  %call88 = call %struct._GError* (i32, i32, i8*, ...) @g_error_new(i32 %call86, i32 2, i8* %call87, i8* %47)
  store %struct._GError* %call88, %struct._GError** %pdb_error, align 8
  %48 = load %struct._GError*, %struct._GError** %pdb_error, align 8
  %call89 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* null, i32 0, %struct._GError* %48)
  store %struct._GValueArray* %call89, %struct._GValueArray** %return_vals, align 8
  %49 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %50 = load %struct._GError*, %struct._GError** %pdb_error, align 8
  call void @g_propagate_error(%struct._GError** %49, %struct._GError* %50)
  %51 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  store %struct._GValueArray* %51, %struct._GValueArray** %retval
  br label %return

if.end.90:                                        ; preds = %do.end.81
  %52 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call91 = call %struct._GValueArray* @gimp_procedure_get_arguments(%struct._GimpProcedure* %52)
  store %struct._GValueArray* %call91, %struct._GValueArray** %args, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %va_args, i32 0, i32 0
  %arraydecay92 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay92)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.90
  %53 = load i32, i32* %i, align 4
  %54 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %num_args = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %54, i32 0, i32 10
  %55 = load i32, i32* %num_args, align 4
  %cmp93 = icmp slt i32 %53, %55
  br i1 %cmp93, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  store i8* null, i8** %error_msg, align 8
  %arraydecay97 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %va_args, i32 0, i32 0
  %gp_offset_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay97, i32 0, i32 0
  %gp_offset = load i32, i32* %gp_offset_p
  %fits_in_gp = icmp ule i32 %gp_offset, 40
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem

vaarg.in_reg:                                     ; preds = %for.body
  %56 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay97, i32 0, i32 3
  %reg_save_area = load i8*, i8** %56
  %57 = getelementptr i8, i8* %reg_save_area, i32 %gp_offset
  %58 = bitcast i8* %57 to i64*
  %59 = add i32 %gp_offset, 8
  store i32 %59, i32* %gp_offset_p
  br label %vaarg.end

vaarg.in_mem:                                     ; preds = %for.body
  %overflow_arg_area_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay97, i32 0, i32 2
  %overflow_arg_area = load i8*, i8** %overflow_arg_area_p
  %60 = bitcast i8* %overflow_arg_area to i64*
  %overflow_arg_area.next = getelementptr i8, i8* %overflow_arg_area, i32 8
  store i8* %overflow_arg_area.next, i8** %overflow_arg_area_p
  br label %vaarg.end

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr = phi i64* [ %58, %vaarg.in_reg ], [ %60, %vaarg.in_mem ]
  %61 = load i64, i64* %vaarg.addr
  store i64 %61, i64* %arg_type, align 8
  %62 = load i64, i64* %arg_type, align 8
  %cmp98 = icmp eq i64 %62, 4
  br i1 %cmp98, label %if.then.99, label %if.end.100

if.then.99:                                       ; preds = %vaarg.end
  br label %for.end

if.end.100:                                       ; preds = %vaarg.end
  %63 = load i32, i32* %i, align 4
  %idxprom = sext i32 %63 to i64
  %64 = load %struct._GValueArray*, %struct._GValueArray** %args, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %64, i32 0, i32 1
  %65 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %65, i64 %idxprom
  store %struct._GValue* %arrayidx, %struct._GValue** %value, align 8
  %66 = load i64, i64* %arg_type, align 8
  %67 = load %struct._GValue*, %struct._GValue** %value, align 8
  %g_type101 = getelementptr inbounds %struct._GValue, %struct._GValue* %67, i32 0, i32 0
  %68 = load i64, i64* %g_type101, align 8
  %cmp102 = icmp ne i64 %66, %68
  br i1 %cmp102, label %if.then.103, label %if.end.118

if.then.103:                                      ; preds = %if.end.100
  %69 = load %struct._GValue*, %struct._GValue** %value, align 8
  %g_type107 = getelementptr inbounds %struct._GValue, %struct._GValue* %69, i32 0, i32 0
  %70 = load i64, i64* %g_type107, align 8
  %call108 = call i8* @g_type_name(i64 %70)
  store i8* %call108, i8** %expected, align 8
  %71 = load i64, i64* %arg_type, align 8
  %call110 = call i8* @g_type_name(i64 %71)
  store i8* %call110, i8** %got, align 8
  %72 = load %struct._GValueArray*, %struct._GValueArray** %args, align 8
  call void @g_value_array_free(%struct._GValueArray* %72)
  %call111 = call i32 @gimp_pdb_error_quark() #8
  %call112 = call i8* @gettext(i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.15, i32 0, i32 0)) #6
  %73 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %74 = bitcast %struct._GimpProcedure* %73 to i8*
  %call113 = call i8* @gimp_object_get_name(i8* %74)
  %75 = load i32, i32* %i, align 4
  %add = add nsw i32 %75, 1
  %76 = load i8*, i8** %expected, align 8
  %77 = load i8*, i8** %got, align 8
  %call114 = call %struct._GError* (i32, i32, i8*, ...) @g_error_new(i32 %call111, i32 3, i8* %call112, i8* %call113, i32 %add, i8* %76, i8* %77)
  store %struct._GError* %call114, %struct._GError** %pdb_error105, align 8
  %78 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %79 = load %struct._GError*, %struct._GError** %pdb_error105, align 8
  %call115 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %78, i32 0, %struct._GError* %79)
  store %struct._GValueArray* %call115, %struct._GValueArray** %return_vals, align 8
  %80 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %81 = load %struct._GError*, %struct._GError** %pdb_error105, align 8
  call void @g_propagate_error(%struct._GError** %80, %struct._GError* %81)
  %arraydecay116 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %va_args, i32 0, i32 0
  %arraydecay116117 = bitcast %struct.__va_list_tag* %arraydecay116 to i8*
  call void @llvm.va_end(i8* %arraydecay116117)
  %82 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  store %struct._GValueArray* %82, %struct._GValueArray** %retval
  br label %return

if.end.118:                                       ; preds = %if.end.100
  br label %do.body.119

do.body.119:                                      ; preds = %if.end.118
  %83 = load %struct._GValue*, %struct._GValue** %value, align 8
  store %struct._GValue* %83, %struct._GValue** %_value, align 8
  %84 = load %struct._GValue*, %struct._GValue** %_value, align 8
  %g_type122 = getelementptr inbounds %struct._GValue, %struct._GValue* %84, i32 0, i32 0
  %85 = load i64, i64* %g_type122, align 8
  store i64 %85, i64* %_value_type, align 8
  %86 = load i64, i64* %_value_type, align 8
  %call124 = call %struct._GTypeValueTable* @g_type_value_table_peek(i64 %86)
  store %struct._GTypeValueTable* %call124, %struct._GTypeValueTable** %_vtable, align 8
  %87 = load %struct._GTypeValueTable*, %struct._GTypeValueTable** %_vtable, align 8
  %value_free = getelementptr inbounds %struct._GTypeValueTable, %struct._GTypeValueTable* %87, i32 0, i32 1
  %88 = load void (%struct._GValue*)*, void (%struct._GValue*)** %value_free, align 8
  %tobool125 = icmp ne void (%struct._GValue*)* %88, null
  br i1 %tobool125, label %if.then.126, label %if.end.128

if.then.126:                                      ; preds = %do.body.119
  %89 = load %struct._GTypeValueTable*, %struct._GTypeValueTable** %_vtable, align 8
  %value_free127 = getelementptr inbounds %struct._GTypeValueTable, %struct._GTypeValueTable* %89, i32 0, i32 1
  %90 = load void (%struct._GValue*)*, void (%struct._GValue*)** %value_free127, align 8
  %91 = load %struct._GValue*, %struct._GValue** %_value, align 8
  call void %90(%struct._GValue* %91)
  br label %if.end.128

if.end.128:                                       ; preds = %if.then.126, %do.body.119
  %92 = load %struct._GValue*, %struct._GValue** %_value, align 8
  %data = getelementptr inbounds %struct._GValue, %struct._GValue* %92, i32 0, i32 1
  %93 = bitcast [2 x %union.anon]* %data to i8*
  call void @llvm.memset.p0i8.i64(i8* %93, i8 0, i64 16, i32 8, i1 false)
  br label %do.body.129

do.body.129:                                      ; preds = %if.end.128
  %94 = load %struct._GValue*, %struct._GValue** %value, align 8
  store %struct._GValue* %94, %struct._GValue** %_val, align 8
  store i32 134217728, i32* %_flags, align 4
  %95 = load i64, i64* %_value_type, align 8
  %call133 = call %struct._GTypeValueTable* @g_type_value_table_peek(i64 %95)
  store %struct._GTypeValueTable* %call133, %struct._GTypeValueTable** %_vtab, align 8
  %96 = load %struct._GTypeValueTable*, %struct._GTypeValueTable** %_vtab, align 8
  %collect_format = getelementptr inbounds %struct._GTypeValueTable, %struct._GTypeValueTable* %96, i32 0, i32 4
  %97 = load i8*, i8** %collect_format, align 8
  store i8* %97, i8** %_collect_format, align 8
  %98 = bitcast [8 x %union._GTypeCValue]* %_cvalues to i8*
  call void @llvm.memset.p0i8.i64(i8* %98, i8 0, i64 64, i32 16, i1 false)
  %99 = bitcast i8* %98 to <{ { i32, [4 x i8] }, %union._GTypeCValue, %union._GTypeCValue, %union._GTypeCValue, %union._GTypeCValue, %union._GTypeCValue, %union._GTypeCValue, %union._GTypeCValue }>*
  %100 = getelementptr <{ { i32, [4 x i8] }, %union._GTypeCValue, %union._GTypeCValue, %union._GTypeCValue, %union._GTypeCValue, %union._GTypeCValue, %union._GTypeCValue, %union._GTypeCValue }>, <{ { i32, [4 x i8] }, %union._GTypeCValue, %union._GTypeCValue, %union._GTypeCValue, %union._GTypeCValue, %union._GTypeCValue, %union._GTypeCValue, %union._GTypeCValue }>* %99, i32 0, i32 0
  store i32 0, i32* %_n_values, align 4
  %101 = load i64, i64* %_value_type, align 8
  %102 = load %struct._GValue*, %struct._GValue** %_val, align 8
  %g_type137 = getelementptr inbounds %struct._GValue, %struct._GValue* %102, i32 0, i32 0
  store i64 %101, i64* %g_type137, align 8
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %do.body.129
  %103 = load i8*, i8** %_collect_format, align 8
  %104 = load i8, i8* %103, align 1
  %tobool138 = icmp ne i8 %104, 0
  br i1 %tobool138, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %arraydecay140 = getelementptr inbounds [8 x %union._GTypeCValue], [8 x %union._GTypeCValue]* %_cvalues, i32 0, i32 0
  %105 = load i32, i32* %_n_values, align 4
  %inc = add i32 %105, 1
  store i32 %inc, i32* %_n_values, align 4
  %idx.ext = zext i32 %105 to i64
  %add.ptr = getelementptr inbounds %union._GTypeCValue, %union._GTypeCValue* %arraydecay140, i64 %idx.ext
  store %union._GTypeCValue* %add.ptr, %union._GTypeCValue** %_cvalue, align 8
  %106 = load i8*, i8** %_collect_format, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %106, i32 1
  store i8* %incdec.ptr, i8** %_collect_format, align 8
  %107 = load i8, i8* %106, align 1
  %conv = sext i8 %107 to i32
  switch i32 %conv, label %sw.default [
    i32 105, label %sw.bb
    i32 108, label %sw.bb.153
    i32 113, label %sw.bb.166
    i32 100, label %sw.bb.179
    i32 112, label %sw.bb.189
  ]

sw.bb:                                            ; preds = %while.body
  %arraydecay141 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %va_args, i32 0, i32 0
  %gp_offset_p142 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay141, i32 0, i32 0
  %gp_offset143 = load i32, i32* %gp_offset_p142
  %fits_in_gp144 = icmp ule i32 %gp_offset143, 40
  br i1 %fits_in_gp144, label %vaarg.in_reg.145, label %vaarg.in_mem.147

vaarg.in_reg.145:                                 ; preds = %sw.bb
  %108 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay141, i32 0, i32 3
  %reg_save_area146 = load i8*, i8** %108
  %109 = getelementptr i8, i8* %reg_save_area146, i32 %gp_offset143
  %110 = bitcast i8* %109 to i32*
  %111 = add i32 %gp_offset143, 8
  store i32 %111, i32* %gp_offset_p142
  br label %vaarg.end.151

vaarg.in_mem.147:                                 ; preds = %sw.bb
  %overflow_arg_area_p148 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay141, i32 0, i32 2
  %overflow_arg_area149 = load i8*, i8** %overflow_arg_area_p148
  %112 = bitcast i8* %overflow_arg_area149 to i32*
  %overflow_arg_area.next150 = getelementptr i8, i8* %overflow_arg_area149, i32 8
  store i8* %overflow_arg_area.next150, i8** %overflow_arg_area_p148
  br label %vaarg.end.151

vaarg.end.151:                                    ; preds = %vaarg.in_mem.147, %vaarg.in_reg.145
  %vaarg.addr152 = phi i32* [ %110, %vaarg.in_reg.145 ], [ %112, %vaarg.in_mem.147 ]
  %113 = load i32, i32* %vaarg.addr152
  %114 = load %union._GTypeCValue*, %union._GTypeCValue** %_cvalue, align 8
  %v_int = bitcast %union._GTypeCValue* %114 to i32*
  store i32 %113, i32* %v_int, align 4
  br label %sw.epilog

sw.bb.153:                                        ; preds = %while.body
  %arraydecay154 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %va_args, i32 0, i32 0
  %gp_offset_p155 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay154, i32 0, i32 0
  %gp_offset156 = load i32, i32* %gp_offset_p155
  %fits_in_gp157 = icmp ule i32 %gp_offset156, 40
  br i1 %fits_in_gp157, label %vaarg.in_reg.158, label %vaarg.in_mem.160

vaarg.in_reg.158:                                 ; preds = %sw.bb.153
  %115 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay154, i32 0, i32 3
  %reg_save_area159 = load i8*, i8** %115
  %116 = getelementptr i8, i8* %reg_save_area159, i32 %gp_offset156
  %117 = bitcast i8* %116 to i64*
  %118 = add i32 %gp_offset156, 8
  store i32 %118, i32* %gp_offset_p155
  br label %vaarg.end.164

vaarg.in_mem.160:                                 ; preds = %sw.bb.153
  %overflow_arg_area_p161 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay154, i32 0, i32 2
  %overflow_arg_area162 = load i8*, i8** %overflow_arg_area_p161
  %119 = bitcast i8* %overflow_arg_area162 to i64*
  %overflow_arg_area.next163 = getelementptr i8, i8* %overflow_arg_area162, i32 8
  store i8* %overflow_arg_area.next163, i8** %overflow_arg_area_p161
  br label %vaarg.end.164

vaarg.end.164:                                    ; preds = %vaarg.in_mem.160, %vaarg.in_reg.158
  %vaarg.addr165 = phi i64* [ %117, %vaarg.in_reg.158 ], [ %119, %vaarg.in_mem.160 ]
  %120 = load i64, i64* %vaarg.addr165
  %121 = load %union._GTypeCValue*, %union._GTypeCValue** %_cvalue, align 8
  %v_long = bitcast %union._GTypeCValue* %121 to i64*
  store i64 %120, i64* %v_long, align 8
  br label %sw.epilog

sw.bb.166:                                        ; preds = %while.body
  %arraydecay167 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %va_args, i32 0, i32 0
  %gp_offset_p168 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay167, i32 0, i32 0
  %gp_offset169 = load i32, i32* %gp_offset_p168
  %fits_in_gp170 = icmp ule i32 %gp_offset169, 40
  br i1 %fits_in_gp170, label %vaarg.in_reg.171, label %vaarg.in_mem.173

vaarg.in_reg.171:                                 ; preds = %sw.bb.166
  %122 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay167, i32 0, i32 3
  %reg_save_area172 = load i8*, i8** %122
  %123 = getelementptr i8, i8* %reg_save_area172, i32 %gp_offset169
  %124 = bitcast i8* %123 to i64*
  %125 = add i32 %gp_offset169, 8
  store i32 %125, i32* %gp_offset_p168
  br label %vaarg.end.177

vaarg.in_mem.173:                                 ; preds = %sw.bb.166
  %overflow_arg_area_p174 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay167, i32 0, i32 2
  %overflow_arg_area175 = load i8*, i8** %overflow_arg_area_p174
  %126 = bitcast i8* %overflow_arg_area175 to i64*
  %overflow_arg_area.next176 = getelementptr i8, i8* %overflow_arg_area175, i32 8
  store i8* %overflow_arg_area.next176, i8** %overflow_arg_area_p174
  br label %vaarg.end.177

vaarg.end.177:                                    ; preds = %vaarg.in_mem.173, %vaarg.in_reg.171
  %vaarg.addr178 = phi i64* [ %124, %vaarg.in_reg.171 ], [ %126, %vaarg.in_mem.173 ]
  %127 = load i64, i64* %vaarg.addr178
  %128 = load %union._GTypeCValue*, %union._GTypeCValue** %_cvalue, align 8
  %v_int64 = bitcast %union._GTypeCValue* %128 to i64*
  store i64 %127, i64* %v_int64, align 8
  br label %sw.epilog

sw.bb.179:                                        ; preds = %while.body
  %arraydecay180 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %va_args, i32 0, i32 0
  %fp_offset_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay180, i32 0, i32 1
  %fp_offset = load i32, i32* %fp_offset_p
  %fits_in_fp = icmp ule i32 %fp_offset, 160
  br i1 %fits_in_fp, label %vaarg.in_reg.181, label %vaarg.in_mem.183

vaarg.in_reg.181:                                 ; preds = %sw.bb.179
  %129 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay180, i32 0, i32 3
  %reg_save_area182 = load i8*, i8** %129
  %130 = getelementptr i8, i8* %reg_save_area182, i32 %fp_offset
  %131 = bitcast i8* %130 to double*
  %132 = add i32 %fp_offset, 16
  store i32 %132, i32* %fp_offset_p
  br label %vaarg.end.187

vaarg.in_mem.183:                                 ; preds = %sw.bb.179
  %overflow_arg_area_p184 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay180, i32 0, i32 2
  %overflow_arg_area185 = load i8*, i8** %overflow_arg_area_p184
  %133 = bitcast i8* %overflow_arg_area185 to double*
  %overflow_arg_area.next186 = getelementptr i8, i8* %overflow_arg_area185, i32 8
  store i8* %overflow_arg_area.next186, i8** %overflow_arg_area_p184
  br label %vaarg.end.187

vaarg.end.187:                                    ; preds = %vaarg.in_mem.183, %vaarg.in_reg.181
  %vaarg.addr188 = phi double* [ %131, %vaarg.in_reg.181 ], [ %133, %vaarg.in_mem.183 ]
  %134 = load double, double* %vaarg.addr188
  %135 = load %union._GTypeCValue*, %union._GTypeCValue** %_cvalue, align 8
  %v_double = bitcast %union._GTypeCValue* %135 to double*
  store double %134, double* %v_double, align 8
  br label %sw.epilog

sw.bb.189:                                        ; preds = %while.body
  %arraydecay190 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %va_args, i32 0, i32 0
  %gp_offset_p191 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay190, i32 0, i32 0
  %gp_offset192 = load i32, i32* %gp_offset_p191
  %fits_in_gp193 = icmp ule i32 %gp_offset192, 40
  br i1 %fits_in_gp193, label %vaarg.in_reg.194, label %vaarg.in_mem.196

vaarg.in_reg.194:                                 ; preds = %sw.bb.189
  %136 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay190, i32 0, i32 3
  %reg_save_area195 = load i8*, i8** %136
  %137 = getelementptr i8, i8* %reg_save_area195, i32 %gp_offset192
  %138 = bitcast i8* %137 to i8**
  %139 = add i32 %gp_offset192, 8
  store i32 %139, i32* %gp_offset_p191
  br label %vaarg.end.200

vaarg.in_mem.196:                                 ; preds = %sw.bb.189
  %overflow_arg_area_p197 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay190, i32 0, i32 2
  %overflow_arg_area198 = load i8*, i8** %overflow_arg_area_p197
  %140 = bitcast i8* %overflow_arg_area198 to i8**
  %overflow_arg_area.next199 = getelementptr i8, i8* %overflow_arg_area198, i32 8
  store i8* %overflow_arg_area.next199, i8** %overflow_arg_area_p197
  br label %vaarg.end.200

vaarg.end.200:                                    ; preds = %vaarg.in_mem.196, %vaarg.in_reg.194
  %vaarg.addr201 = phi i8** [ %138, %vaarg.in_reg.194 ], [ %140, %vaarg.in_mem.196 ]
  %141 = load i8*, i8** %vaarg.addr201
  %142 = load %union._GTypeCValue*, %union._GTypeCValue** %_cvalue, align 8
  %v_pointer = bitcast %union._GTypeCValue* %142 to i8**
  store i8* %141, i8** %v_pointer, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %while.body
  br label %do.body.202

do.body.202:                                      ; preds = %sw.default
  call void @g_assertion_message_expr(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i32 0, i32 0), i32 435, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_pdb_execute_procedure_by_name, i32 0, i32 0), i8* null) #10
  unreachable

do.end.203:                                       ; No predecessors!
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end.203, %vaarg.end.200, %vaarg.end.187, %vaarg.end.177, %vaarg.end.164, %vaarg.end.151
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %143 = load %struct._GTypeValueTable*, %struct._GTypeValueTable** %_vtab, align 8
  %collect_value = getelementptr inbounds %struct._GTypeValueTable, %struct._GTypeValueTable* %143, i32 0, i32 5
  %144 = load i8* (%struct._GValue*, i32, %union._GTypeCValue*, i32)*, i8* (%struct._GValue*, i32, %union._GTypeCValue*, i32)** %collect_value, align 8
  %145 = load %struct._GValue*, %struct._GValue** %_val, align 8
  %146 = load i32, i32* %_n_values, align 4
  %arraydecay204 = getelementptr inbounds [8 x %union._GTypeCValue], [8 x %union._GTypeCValue]* %_cvalues, i32 0, i32 0
  %147 = load i32, i32* %_flags, align 4
  %call205 = call i8* %144(%struct._GValue* %145, i32 %146, %union._GTypeCValue* %arraydecay204, i32 %147)
  store i8* %call205, i8** %error_msg, align 8
  br label %do.end.206

do.end.206:                                       ; preds = %while.end
  br label %do.end.207

do.end.207:                                       ; preds = %do.end.206
  %148 = load i8*, i8** %error_msg, align 8
  %tobool208 = icmp ne i8* %148, null
  br i1 %tobool208, label %if.then.209, label %if.end.217

if.then.209:                                      ; preds = %do.end.207
  %call212 = call i32 @gimp_pdb_error_quark() #8
  %149 = load i8*, i8** %error_msg, align 8
  %call213 = call %struct._GError* @g_error_new_literal(i32 %call212, i32 5, i8* %149)
  store %struct._GError* %call213, %struct._GError** %pdb_error211, align 8
  %150 = load i8*, i8** %error_msg, align 8
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_pdb_execute_procedure_by_name, i32 0, i32 0), i8* %150)
  %151 = load i8*, i8** %error_msg, align 8
  call void @g_free(i8* %151)
  %152 = load %struct._GValueArray*, %struct._GValueArray** %args, align 8
  call void @g_value_array_free(%struct._GValueArray* %152)
  %153 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %154 = load %struct._GError*, %struct._GError** %pdb_error211, align 8
  %call214 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %153, i32 0, %struct._GError* %154)
  store %struct._GValueArray* %call214, %struct._GValueArray** %return_vals, align 8
  %155 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %156 = load %struct._GError*, %struct._GError** %pdb_error211, align 8
  call void @g_propagate_error(%struct._GError** %155, %struct._GError* %156)
  %arraydecay215 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %va_args, i32 0, i32 0
  %arraydecay215216 = bitcast %struct.__va_list_tag* %arraydecay215 to i8*
  call void @llvm.va_end(i8* %arraydecay215216)
  %157 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  store %struct._GValueArray* %157, %struct._GValueArray** %retval
  br label %return

if.end.217:                                       ; preds = %do.end.207
  br label %for.inc

for.inc:                                          ; preds = %if.end.217
  %158 = load i32, i32* %i, align 4
  %inc218 = add nsw i32 %158, 1
  store i32 %inc218, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.99, %for.cond
  %arraydecay219 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %va_args, i32 0, i32 0
  %arraydecay219220 = bitcast %struct.__va_list_tag* %arraydecay219 to i8*
  call void @llvm.va_end(i8* %arraydecay219220)
  %159 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %160 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %161 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %162 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %163 = load i8*, i8** %name.addr, align 8
  %164 = load %struct._GValueArray*, %struct._GValueArray** %args, align 8
  %call221 = call %struct._GValueArray* @gimp_pdb_execute_procedure_by_name_args(%struct._GimpPDB* %159, %struct._GimpContext* %160, %struct._GimpProgress* %161, %struct._GError** %162, i8* %163, %struct._GValueArray* %164)
  store %struct._GValueArray* %call221, %struct._GValueArray** %return_vals, align 8
  %165 = load %struct._GValueArray*, %struct._GValueArray** %args, align 8
  call void @g_value_array_free(%struct._GValueArray* %165)
  %166 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  store %struct._GValueArray* %166, %struct._GValueArray** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.209, %if.then.103, %if.then.84, %if.else.79, %if.else.73, %if.else.65, %if.else.36, %if.else.9
  %167 = load %struct._GValueArray*, %struct._GValueArray** %retval
  ret %struct._GValueArray* %167
}

declare %struct._GValueArray* @gimp_procedure_get_arguments(%struct._GimpProcedure*) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #6

declare i8* @g_type_name(i64) #1

declare i8* @gimp_object_get_name(i8*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #6

declare %struct._GTypeValueTable* @g_type_value_table_peek(i64) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #6

; Function Attrs: noreturn
declare void @g_assertion_message_expr(i8*, i8*, i32, i8*, i8*) #7

declare %struct._GError* @g_error_new_literal(i32, i32, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @g_warning(i8* %format, ...) #3 {
entry:
  %format.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %format, i8** %format.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i8*, i8** %format.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  call void @g_logv(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

declare void @g_free(i8*) #1

; Function Attrs: nounwind uwtable
define %struct._GList* @gimp_pdb_get_deprecated_procedures(%struct._GimpPDB* %pdb) #3 {
entry:
  %retval = alloca %struct._GList*, align 8
  %pdb.addr = alloca %struct._GimpPDB*, align 8
  %result = alloca %struct._GList*, align 8
  %procs = alloca %struct._GList*, align 8
  %iter = alloca %struct._GList*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %proc_list = alloca %struct._GList*, align 8
  %procedure = alloca %struct._GimpProcedure*, align 8
  store %struct._GimpPDB* %pdb, %struct._GimpPDB** %pdb.addr, align 8
  store %struct._GList* null, %struct._GList** %result, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %1 = bitcast %struct._GimpPDB* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_pdb_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_pdb_get_deprecated_procedures, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i32 0, i32 0))
  store %struct._GList* null, %struct._GList** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %procedures = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %13, i32 0, i32 2
  %14 = load %struct._GHashTable*, %struct._GHashTable** %procedures, align 8
  %call11 = call %struct._GList* @g_hash_table_get_values(%struct._GHashTable* %14)
  store %struct._GList* %call11, %struct._GList** %procs, align 8
  %15 = load %struct._GList*, %struct._GList** %procs, align 8
  store %struct._GList* %15, %struct._GList** %iter, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %do.end
  %16 = load %struct._GList*, %struct._GList** %iter, align 8
  %tobool12 = icmp ne %struct._GList* %16, null
  br i1 %tobool12, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load %struct._GList*, %struct._GList** %iter, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %17, i32 0, i32 0
  %18 = load i8*, i8** %data, align 8
  %19 = bitcast i8* %18 to %struct._GList*
  store %struct._GList* %19, %struct._GList** %proc_list, align 8
  %20 = load %struct._GList*, %struct._GList** %proc_list, align 8
  %data15 = getelementptr inbounds %struct._GList, %struct._GList* %20, i32 0, i32 0
  %21 = load i8*, i8** %data15, align 8
  %22 = bitcast i8* %21 to %struct._GTypeInstance*
  %call16 = call i64 @gimp_procedure_get_type() #8
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call16)
  %23 = bitcast %struct._GTypeInstance* %call17 to %struct._GimpProcedure*
  store %struct._GimpProcedure* %23, %struct._GimpProcedure** %procedure, align 8
  %24 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %deprecated = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %24, i32 0, i32 9
  %25 = load i8*, i8** %deprecated, align 8
  %tobool18 = icmp ne i8* %25, null
  br i1 %tobool18, label %if.then.19, label %if.end.21

if.then.19:                                       ; preds = %for.body
  %26 = load %struct._GList*, %struct._GList** %result, align 8
  %27 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %28 = bitcast %struct._GimpProcedure* %27 to i8*
  %call20 = call %struct._GList* @g_list_prepend(%struct._GList* %26, i8* %28)
  store %struct._GList* %call20, %struct._GList** %result, align 8
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.19, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.21
  %29 = load %struct._GList*, %struct._GList** %iter, align 8
  %tobool22 = icmp ne %struct._GList* %29, null
  br i1 %tobool22, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %30 = load %struct._GList*, %struct._GList** %iter, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %30, i32 0, i32 1
  %31 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %31, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %iter, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %32 = load %struct._GList*, %struct._GList** %result, align 8
  %call23 = call %struct._GList* @g_list_sort(%struct._GList* %32, i32 (i8*, i8*)* bitcast (i32 (%struct._GimpProcedure*, %struct._GimpProcedure*)* @gimp_procedure_name_compare to i32 (i8*, i8*)*))
  store %struct._GList* %call23, %struct._GList** %result, align 8
  %33 = load %struct._GList*, %struct._GList** %procs, align 8
  call void @g_list_free(%struct._GList* %33)
  %34 = load %struct._GList*, %struct._GList** %result, align 8
  store %struct._GList* %34, %struct._GList** %retval
  br label %return

return:                                           ; preds = %for.end, %if.else.9
  %35 = load %struct._GList*, %struct._GList** %retval
  ret %struct._GList* %35
}

declare %struct._GList* @g_hash_table_get_values(%struct._GHashTable*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare %struct._GList* @g_list_prepend(%struct._GList*, i8*) #1

declare %struct._GList* @g_list_sort(%struct._GList*, i32 (i8*, i8*)*) #1

declare i32 @gimp_procedure_name_compare(%struct._GimpProcedure*, %struct._GimpProcedure*) #1

declare void @g_list_free(%struct._GList*) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_pdb_class_init(%struct._GimpPDBClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpPDBClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %gimp_object_class = alloca %struct._GimpObjectClass*, align 8
  store %struct._GimpPDBClass* %klass, %struct._GimpPDBClass** %klass.addr, align 8
  %0 = load %struct._GimpPDBClass*, %struct._GimpPDBClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpPDBClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpPDBClass*, %struct._GimpPDBClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpPDBClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gimp_object_get_type() #8
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GimpObjectClass*
  store %struct._GimpObjectClass* %5, %struct._GimpObjectClass** %gimp_object_class, align 8
  %6 = load %struct._GimpPDBClass*, %struct._GimpPDBClass** %klass.addr, align 8
  %7 = bitcast %struct._GimpPDBClass* %6 to %struct._GTypeClass*
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %7, i32 0, i32 0
  %8 = load i64, i64* %g_type, align 8
  %call3 = call i64 @gimp_procedure_get_type() #8
  %call4 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i32 0, i32 0), i64 %8, i32 1, i32 160, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @g_cclosure_marshal_VOID__OBJECT, i64 4, i32 1, i64 %call3)
  store i32 %call4, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @gimp_pdb_signals, i32 0, i64 0), align 4
  %9 = load %struct._GimpPDBClass*, %struct._GimpPDBClass** %klass.addr, align 8
  %10 = bitcast %struct._GimpPDBClass* %9 to %struct._GTypeClass*
  %g_type5 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %10, i32 0, i32 0
  %11 = load i64, i64* %g_type5, align 8
  %call6 = call i64 @gimp_procedure_get_type() #8
  %call7 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.19, i32 0, i32 0), i64 %11, i32 1, i32 168, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @g_cclosure_marshal_VOID__OBJECT, i64 4, i32 1, i64 %call6)
  store i32 %call7, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @gimp_pdb_signals, i32 0, i64 1), align 4
  %12 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %12, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_pdb_finalize, void (%struct._GObject*)** %finalize, align 8
  %13 = load %struct._GimpObjectClass*, %struct._GimpObjectClass** %gimp_object_class, align 8
  %get_memsize = getelementptr inbounds %struct._GimpObjectClass, %struct._GimpObjectClass* %13, i32 0, i32 3
  store i64 (%struct._GimpObject*, i64*)* @gimp_pdb_get_memsize, i64 (%struct._GimpObject*, i64*)** %get_memsize, align 8
  %14 = load %struct._GimpPDBClass*, %struct._GimpPDBClass** %klass.addr, align 8
  %register_procedure = getelementptr inbounds %struct._GimpPDBClass, %struct._GimpPDBClass* %14, i32 0, i32 1
  store void (%struct._GimpPDB*, %struct._GimpProcedure*)* @gimp_pdb_real_register_procedure, void (%struct._GimpPDB*, %struct._GimpProcedure*)** %register_procedure, align 8
  %15 = load %struct._GimpPDBClass*, %struct._GimpPDBClass** %klass.addr, align 8
  %unregister_procedure = getelementptr inbounds %struct._GimpPDBClass, %struct._GimpPDBClass* %15, i32 0, i32 2
  store void (%struct._GimpPDB*, %struct._GimpProcedure*)* @gimp_pdb_real_unregister_procedure, void (%struct._GimpPDB*, %struct._GimpProcedure*)** %unregister_procedure, align 8
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

declare i32 @g_signal_new(i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) #1

declare void @g_cclosure_marshal_VOID__OBJECT(%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_pdb_finalize(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %pdb = alloca %struct._GimpPDB*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_pdb_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpPDB*
  store %struct._GimpPDB* %2, %struct._GimpPDB** %pdb, align 8
  %3 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb, align 8
  %procedures = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %3, i32 0, i32 2
  %4 = load %struct._GHashTable*, %struct._GHashTable** %procedures, align 8
  %tobool = icmp ne %struct._GHashTable* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb, align 8
  %procedures2 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %5, i32 0, i32 2
  %6 = load %struct._GHashTable*, %struct._GHashTable** %procedures2, align 8
  call void @g_hash_table_foreach(%struct._GHashTable* %6, void (i8*, i8*, i8*)* @gimp_pdb_entry_free, i8* null)
  %7 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb, align 8
  %procedures3 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %7, i32 0, i32 2
  %8 = load %struct._GHashTable*, %struct._GHashTable** %procedures3, align 8
  call void @g_hash_table_destroy(%struct._GHashTable* %8)
  %9 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb, align 8
  %procedures4 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %9, i32 0, i32 2
  store %struct._GHashTable* null, %struct._GHashTable** %procedures4, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb, align 8
  %compat_proc_names = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %10, i32 0, i32 3
  %11 = load %struct._GHashTable*, %struct._GHashTable** %compat_proc_names, align 8
  %tobool5 = icmp ne %struct._GHashTable* %11, null
  br i1 %tobool5, label %if.then.6, label %if.end.9

if.then.6:                                        ; preds = %if.end
  %12 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb, align 8
  %compat_proc_names7 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %12, i32 0, i32 3
  %13 = load %struct._GHashTable*, %struct._GHashTable** %compat_proc_names7, align 8
  call void @g_hash_table_destroy(%struct._GHashTable* %13)
  %14 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb, align 8
  %compat_proc_names8 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %14, i32 0, i32 3
  store %struct._GHashTable* null, %struct._GHashTable** %compat_proc_names8, align 8
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.6, %if.end
  %15 = load i8*, i8** @gimp_pdb_parent_class, align 8
  %16 = bitcast i8* %15 to %struct._GTypeClass*
  %call10 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %16, i64 80)
  %17 = bitcast %struct._GTypeClass* %call10 to %struct._GObjectClass*
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %17, i32 0, i32 6
  %18 = load void (%struct._GObject*)*, void (%struct._GObject*)** %finalize, align 8
  %19 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %18(%struct._GObject* %19)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i64 @gimp_pdb_get_memsize(%struct._GimpObject* %object, i64* %gui_size) #3 {
entry:
  %object.addr = alloca %struct._GimpObject*, align 8
  %gui_size.addr = alloca i64*, align 8
  %pdb = alloca %struct._GimpPDB*, align 8
  %memsize = alloca i64, align 8
  store %struct._GimpObject* %object, %struct._GimpObject** %object.addr, align 8
  store i64* %gui_size, i64** %gui_size.addr, align 8
  %0 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %1 = bitcast %struct._GimpObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_pdb_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpPDB*
  store %struct._GimpPDB* %2, %struct._GimpPDB** %pdb, align 8
  store i64 0, i64* %memsize, align 8
  %3 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb, align 8
  %procedures = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %3, i32 0, i32 2
  %4 = load %struct._GHashTable*, %struct._GHashTable** %procedures, align 8
  %5 = load i64*, i64** %gui_size.addr, align 8
  %call2 = call i64 @gimp_g_hash_table_get_memsize_foreach(%struct._GHashTable* %4, i64 (i8*, i64*)* bitcast (i64 (%struct._GList*, i64*)* @gimp_pdb_entry_get_memsize to i64 (i8*, i64*)*), i64* %5)
  %6 = load i64, i64* %memsize, align 8
  %add = add nsw i64 %6, %call2
  store i64 %add, i64* %memsize, align 8
  %7 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb, align 8
  %compat_proc_names = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %7, i32 0, i32 3
  %8 = load %struct._GHashTable*, %struct._GHashTable** %compat_proc_names, align 8
  %call3 = call i64 @gimp_g_hash_table_get_memsize(%struct._GHashTable* %8, i64 0)
  %9 = load i64, i64* %memsize, align 8
  %add4 = add nsw i64 %9, %call3
  store i64 %add4, i64* %memsize, align 8
  %10 = load i64, i64* %memsize, align 8
  %11 = load i8*, i8** @gimp_pdb_parent_class, align 8
  %12 = bitcast i8* %11 to %struct._GTypeClass*
  %call5 = call i64 @gimp_object_get_type() #8
  %call6 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %12, i64 %call5)
  %13 = bitcast %struct._GTypeClass* %call6 to %struct._GimpObjectClass*
  %get_memsize = getelementptr inbounds %struct._GimpObjectClass, %struct._GimpObjectClass* %13, i32 0, i32 3
  %14 = load i64 (%struct._GimpObject*, i64*)*, i64 (%struct._GimpObject*, i64*)** %get_memsize, align 8
  %15 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %16 = load i64*, i64** %gui_size.addr, align 8
  %call7 = call i64 %14(%struct._GimpObject* %15, i64* %16)
  %add8 = add nsw i64 %10, %call7
  ret i64 %add8
}

; Function Attrs: nounwind uwtable
define internal void @gimp_pdb_real_register_procedure(%struct._GimpPDB* %pdb, %struct._GimpProcedure* %procedure) #3 {
entry:
  %pdb.addr = alloca %struct._GimpPDB*, align 8
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %name = alloca i8*, align 8
  %list = alloca %struct._GList*, align 8
  store %struct._GimpPDB* %pdb, %struct._GimpPDB** %pdb.addr, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  %0 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %1 = bitcast %struct._GimpProcedure* %0 to i8*
  %call = call i8* @gimp_object_get_name(i8* %1)
  store i8* %call, i8** %name, align 8
  %2 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %procedures = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %2, i32 0, i32 2
  %3 = load %struct._GHashTable*, %struct._GHashTable** %procedures, align 8
  %4 = load i8*, i8** %name, align 8
  %call1 = call i8* @g_hash_table_lookup(%struct._GHashTable* %3, i8* %4)
  %5 = bitcast i8* %call1 to %struct._GList*
  store %struct._GList* %5, %struct._GList** %list, align 8
  %6 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %procedures2 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %6, i32 0, i32 2
  %7 = load %struct._GHashTable*, %struct._GHashTable** %procedures2, align 8
  %8 = load i8*, i8** %name, align 8
  %9 = load %struct._GList*, %struct._GList** %list, align 8
  %10 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %11 = bitcast %struct._GimpProcedure* %10 to i8*
  %call3 = call i8* @g_object_ref(i8* %11)
  %call4 = call %struct._GList* @g_list_prepend(%struct._GList* %9, i8* %call3)
  %12 = bitcast %struct._GList* %call4 to i8*
  %call5 = call i32 @g_hash_table_replace(%struct._GHashTable* %7, i8* %8, i8* %12)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_pdb_real_unregister_procedure(%struct._GimpPDB* %pdb, %struct._GimpProcedure* %procedure) #3 {
entry:
  %pdb.addr = alloca %struct._GimpPDB*, align 8
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %name = alloca i8*, align 8
  %list = alloca %struct._GList*, align 8
  store %struct._GimpPDB* %pdb, %struct._GimpPDB** %pdb.addr, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  %0 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %1 = bitcast %struct._GimpProcedure* %0 to i8*
  %call = call i8* @gimp_object_get_name(i8* %1)
  store i8* %call, i8** %name, align 8
  %2 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %procedures = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %2, i32 0, i32 2
  %3 = load %struct._GHashTable*, %struct._GHashTable** %procedures, align 8
  %4 = load i8*, i8** %name, align 8
  %call1 = call i8* @g_hash_table_lookup(%struct._GHashTable* %3, i8* %4)
  %5 = bitcast i8* %call1 to %struct._GList*
  store %struct._GList* %5, %struct._GList** %list, align 8
  %6 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool = icmp ne %struct._GList* %6, null
  br i1 %tobool, label %if.then, label %if.end.10

if.then:                                          ; preds = %entry
  %7 = load %struct._GList*, %struct._GList** %list, align 8
  %8 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %9 = bitcast %struct._GimpProcedure* %8 to i8*
  %call2 = call %struct._GList* @g_list_remove(%struct._GList* %7, i8* %9)
  store %struct._GList* %call2, %struct._GList** %list, align 8
  %10 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool3 = icmp ne %struct._GList* %10, null
  br i1 %tobool3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.then
  %11 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %11, i32 0, i32 0
  %12 = load i8*, i8** %data, align 8
  %call5 = call i8* @gimp_object_get_name(i8* %12)
  store i8* %call5, i8** %name, align 8
  %13 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %procedures6 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %13, i32 0, i32 2
  %14 = load %struct._GHashTable*, %struct._GHashTable** %procedures6, align 8
  %15 = load i8*, i8** %name, align 8
  %16 = load %struct._GList*, %struct._GList** %list, align 8
  %17 = bitcast %struct._GList* %16 to i8*
  %call7 = call i32 @g_hash_table_replace(%struct._GHashTable* %14, i8* %15, i8* %17)
  br label %if.end

if.else:                                          ; preds = %if.then
  %18 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %procedures8 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %18, i32 0, i32 2
  %19 = load %struct._GHashTable*, %struct._GHashTable** %procedures8, align 8
  %20 = load i8*, i8** %name, align 8
  %call9 = call i32 @g_hash_table_remove(%struct._GHashTable* %19, i8* %20)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.4
  %21 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %22 = bitcast %struct._GimpProcedure* %21 to i8*
  call void @g_object_unref(i8* %22)
  br label %if.end.10

if.end.10:                                        ; preds = %if.end, %entry
  ret void
}

declare void @g_hash_table_foreach(%struct._GHashTable*, void (i8*, i8*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_pdb_entry_free(i8* %key, i8* %value, i8* %user_data) #3 {
entry:
  %key.addr = alloca i8*, align 8
  %value.addr = alloca i8*, align 8
  %user_data.addr = alloca i8*, align 8
  store i8* %key, i8** %key.addr, align 8
  store i8* %value, i8** %value.addr, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  %0 = load i8*, i8** %value.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %value.addr, align 8
  %2 = bitcast i8* %1 to %struct._GList*
  call void @g_list_free_full(%struct._GList* %2, void (i8*)* @g_object_unref)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @g_hash_table_destroy(%struct._GHashTable*) #1

declare void @g_list_free_full(%struct._GList*, void (i8*)*) #1

declare void @g_object_unref(i8*) #1

declare i64 @gimp_g_hash_table_get_memsize_foreach(%struct._GHashTable*, i64 (i8*, i64*)*, i64*) #1

; Function Attrs: nounwind uwtable
define internal i64 @gimp_pdb_entry_get_memsize(%struct._GList* %procedures, i64* %gui_size) #3 {
entry:
  %procedures.addr = alloca %struct._GList*, align 8
  %gui_size.addr = alloca i64*, align 8
  store %struct._GList* %procedures, %struct._GList** %procedures.addr, align 8
  store i64* %gui_size, i64** %gui_size.addr, align 8
  %0 = load %struct._GList*, %struct._GList** %procedures.addr, align 8
  %1 = load i64*, i64** %gui_size.addr, align 8
  %call = call i64 @gimp_g_list_get_memsize_foreach(%struct._GList* %0, i64 (i8*, i64*)* bitcast (i64 (%struct._GimpObject*, i64*)* @gimp_object_get_memsize to i64 (i8*, i64*)*), i64* %1)
  ret i64 %call
}

declare i64 @gimp_g_hash_table_get_memsize(%struct._GHashTable*, i64) #1

declare i64 @gimp_g_list_get_memsize_foreach(%struct._GList*, i64 (i8*, i64*)*, i64*) #1

declare i64 @gimp_object_get_memsize(%struct._GimpObject*, i64*) #1

declare i32 @g_hash_table_replace(%struct._GHashTable*, i8*, i8*) #1

declare i8* @g_object_ref(i8*) #1

declare %struct._GList* @g_list_remove(%struct._GList*, i8*) #1

declare i32 @g_hash_table_remove(%struct._GHashTable*, i8*) #1

declare %struct._GHashTable* @g_hash_table_new(i32 (i8*)*, i32 (i8*, i8*)*) #1

declare i32 @g_str_hash(i8*) #1

declare i32 @g_str_equal(i8*, i8*) #1

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readnone }
attributes #9 = { nounwind readonly }
attributes #10 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
