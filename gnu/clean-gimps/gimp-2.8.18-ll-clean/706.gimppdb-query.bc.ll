; ModuleID = './app/pdb/gimppdb-query.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpPDB = type { %struct._GimpObject, %struct._Gimp*, %struct._GHashTable*, %struct._GHashTable* }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GimpObjectPrivate = type opaque
%struct._Gimp = type opaque
%struct._GHashTable = type opaque
%struct._PDBDump = type { %struct._GimpPDB*, %struct._IO_FILE*, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GEnumClass = type { %struct._GTypeClass, i32, i32, i32, %struct._GEnumValue* }
%struct._GEnumValue = type { i32, i8*, i8* }
%struct._GString = type { i8*, i64, i64 }
%struct._GimpProcedure = type { %struct._GimpObject, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, %struct._GParamSpec**, i32, %struct._GParamSpec**, %struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* }
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
%struct._GimpContext = type opaque
%struct._GimpProgress = type opaque
%struct._GValueArray = type { i32, %struct._GValue*, i32 }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GError = type { i32, i32, i8* }
%struct._PDBStrings = type { i32, i8*, i8*, i8*, i8*, i8* }
%struct._GimpEnumDesc = type { i32, i8*, i8* }
%struct._PDBQuery = type { %struct._GimpPDB*, %struct._GRegex*, %struct._GRegex*, %struct._GRegex*, %struct._GRegex*, %struct._GRegex*, %struct._GRegex*, %struct._GRegex*, i8**, i32, i32 }
%struct._GRegex = type opaque
%struct._GMatchInfo = type opaque

@.str = private unnamed_addr constant [9 x i8] c"Gimp-PDB\00", align 1
@__func__.gimp_pdb_dump = private unnamed_addr constant [14 x i8] c"gimp_pdb_dump\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"GIMP_IS_PDB (pdb)\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"filename != NULL\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@__func__.gimp_pdb_query = private unnamed_addr constant [15 x i8] c"gimp_pdb_query\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"name != NULL\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"blurb != NULL\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"help != NULL\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"author != NULL\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"copyright != NULL\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"date != NULL\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"proc_type != NULL\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"num_procs != NULL\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"procs != NULL\00", align 1
@.str.13 = private unnamed_addr constant [32 x i8] c"error == NULL || *error == NULL\00", align 1
@__func__.gimp_pdb_proc_info = private unnamed_addr constant [19 x i8] c"gimp_pdb_proc_info\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"proc_name != NULL\00", align 1
@.str.15 = private unnamed_addr constant [25 x i8] c"Procedure '%s' not found\00", align 1
@.str.16 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.17 = private unnamed_addr constant [21 x i8] c"(register-procedure \00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"%s <%d>\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"  (\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"\0A    (\0A\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"      \00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"    )\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"\0A  )\0A\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"\0A  )\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"\0A)\0A\00", align 1
@.str.27 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c"\5C\5C\00", align 1
@.str.29 = private unnamed_addr constant [3 x i8] c"\5C\22\00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c"@{\00", align 1
@.str.31 = private unnamed_addr constant [3 x i8] c"@@\00", align 1
@.str.32 = private unnamed_addr constant [3 x i8] c"@}\00", align 1
@.str.33 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.34 = private unnamed_addr constant [3 x i8] c"\22\0A\00", align 1
@.str.35 = private unnamed_addr constant [48 x i8] c"This procedure is deprecated! Use '%s' instead.\00", align 1

; Function Attrs: nounwind uwtable
define i32 @gimp_pdb_dump(%struct._GimpPDB* %pdb, i8* %filename) #0 {
entry:
  %retval = alloca i32, align 4
  %pdb.addr = alloca %struct._GimpPDB*, align 8
  %filename.addr = alloca i8*, align 8
  %pdb_dump = alloca %struct._PDBDump, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpPDB* %pdb, %struct._GimpPDB** %pdb.addr, align 8
  store i8* %filename, i8** %filename.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %1 = bitcast %struct._GimpPDB* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_pdb_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.gimp_pdb_dump, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i8*, i8** %filename.addr, align 8
  %cmp12 = icmp ne i8* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.gimp_pdb_dump, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %pdb17 = getelementptr inbounds %struct._PDBDump, %struct._PDBDump* %pdb_dump, i32 0, i32 0
  store %struct._GimpPDB* %14, %struct._GimpPDB** %pdb17, align 8
  %15 = load i8*, i8** %filename.addr, align 8
  %call18 = call %struct._IO_FILE* @fopen(i8* %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  %file = getelementptr inbounds %struct._PDBDump, %struct._PDBDump* %pdb_dump, i32 0, i32 1
  store %struct._IO_FILE* %call18, %struct._IO_FILE** %file, align 8
  %file19 = getelementptr inbounds %struct._PDBDump, %struct._PDBDump* %pdb_dump, i32 0, i32 1
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %file19, align 8
  %tobool20 = icmp ne %struct._IO_FILE* %16, null
  br i1 %tobool20, label %if.end.22, label %if.then.21

if.then.21:                                       ; preds = %do.end.16
  store i32 0, i32* %retval
  br label %return

if.end.22:                                        ; preds = %do.end.16
  %dumping_compat = getelementptr inbounds %struct._PDBDump, %struct._PDBDump* %pdb_dump, i32 0, i32 2
  store i32 0, i32* %dumping_compat, align 4
  %17 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %procedures = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %17, i32 0, i32 2
  %18 = load %struct._GHashTable*, %struct._GHashTable** %procedures, align 8
  %19 = bitcast %struct._PDBDump* %pdb_dump to i8*
  call void @g_hash_table_foreach(%struct._GHashTable* %18, void (i8*, i8*, i8*)* @gimp_pdb_print_entry, i8* %19)
  %dumping_compat23 = getelementptr inbounds %struct._PDBDump, %struct._PDBDump* %pdb_dump, i32 0, i32 2
  store i32 1, i32* %dumping_compat23, align 4
  %20 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %compat_proc_names = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %20, i32 0, i32 3
  %21 = load %struct._GHashTable*, %struct._GHashTable** %compat_proc_names, align 8
  %22 = bitcast %struct._PDBDump* %pdb_dump to i8*
  call void @g_hash_table_foreach(%struct._GHashTable* %21, void (i8*, i8*, i8*)* @gimp_pdb_print_entry, i8* %22)
  %file24 = getelementptr inbounds %struct._PDBDump, %struct._PDBDump* %pdb_dump, i32 0, i32 1
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %file24, align 8
  %call25 = call i32 @fclose(%struct._IO_FILE* %23)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.22, %if.then.21, %if.else.14, %if.else.9
  %24 = load i32, i32* %retval
  ret i32 %24
}

; Function Attrs: nounwind readnone
declare i64 @gimp_pdb_get_type() #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #3

declare %struct._IO_FILE* @fopen(i8*, i8*) #3

declare void @g_hash_table_foreach(%struct._GHashTable*, void (i8*, i8*, i8*)*, i8*) #3

; Function Attrs: nounwind uwtable
define internal void @gimp_pdb_print_entry(i8* %key, i8* %value, i8* %user_data) #0 {
entry:
  %key.addr = alloca i8*, align 8
  %value.addr = alloca i8*, align 8
  %user_data.addr = alloca i8*, align 8
  %pdb_dump = alloca %struct._PDBDump*, align 8
  %file = alloca %struct._IO_FILE*, align 8
  %proc_name = alloca i8*, align 8
  %list = alloca %struct._GList*, align 8
  %arg_class = alloca %struct._GEnumClass*, align 8
  %proc_class = alloca %struct._GEnumClass*, align 8
  %buf = alloca %struct._GString*, align 8
  %num = alloca i32, align 4
  %procedure = alloca %struct._GimpProcedure*, align 8
  %strings = alloca %struct._PDBStrings, align 8
  %arg_value = alloca %struct._GEnumValue*, align 8
  %type_desc = alloca %struct._GimpEnumDesc*, align 8
  %i = alloca i32, align 4
  %pspec = alloca %struct._GParamSpec*, align 8
  %arg_type = alloca i32, align 4
  %desc = alloca i8*, align 8
  %pspec50 = alloca %struct._GParamSpec*, align 8
  %arg_type53 = alloca i32, align 4
  %desc54 = alloca i8*, align 8
  store i8* %key, i8** %key.addr, align 8
  store i8* %value, i8** %value.addr, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  %0 = load i8*, i8** %user_data.addr, align 8
  %1 = bitcast i8* %0 to %struct._PDBDump*
  store %struct._PDBDump* %1, %struct._PDBDump** %pdb_dump, align 8
  %2 = load %struct._PDBDump*, %struct._PDBDump** %pdb_dump, align 8
  %file1 = getelementptr inbounds %struct._PDBDump, %struct._PDBDump* %2, i32 0, i32 1
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %file1, align 8
  store %struct._IO_FILE* %3, %struct._IO_FILE** %file, align 8
  store i32 0, i32* %num, align 4
  %4 = load i8*, i8** %key.addr, align 8
  store i8* %4, i8** %proc_name, align 8
  %5 = load %struct._PDBDump*, %struct._PDBDump** %pdb_dump, align 8
  %dumping_compat = getelementptr inbounds %struct._PDBDump, %struct._PDBDump* %5, i32 0, i32 2
  %6 = load i32, i32* %dumping_compat, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %7 = load %struct._PDBDump*, %struct._PDBDump** %pdb_dump, align 8
  %pdb = getelementptr inbounds %struct._PDBDump, %struct._PDBDump* %7, i32 0, i32 0
  %8 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb, align 8
  %procedures = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %8, i32 0, i32 2
  %9 = load %struct._GHashTable*, %struct._GHashTable** %procedures, align 8
  %10 = load i8*, i8** %value.addr, align 8
  %call = call i8* @g_hash_table_lookup(%struct._GHashTable* %9, i8* %10)
  %11 = bitcast i8* %call to %struct._GList*
  store %struct._GList* %11, %struct._GList** %list, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %12 = load i8*, i8** %value.addr, align 8
  %13 = bitcast i8* %12 to %struct._GList*
  store %struct._GList* %13, %struct._GList** %list, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call2 = call i64 @gimp_pdb_arg_type_get_type() #6
  %call3 = call i8* @g_type_class_ref(i64 %call2)
  %14 = bitcast i8* %call3 to %struct._GEnumClass*
  store %struct._GEnumClass* %14, %struct._GEnumClass** %arg_class, align 8
  %call4 = call i64 @gimp_pdb_proc_type_get_type() #6
  %call5 = call i8* @g_type_class_ref(i64 %call4)
  %15 = bitcast i8* %call5 to %struct._GEnumClass*
  store %struct._GEnumClass* %15, %struct._GEnumClass** %proc_class, align 8
  %call6 = call %struct._GString* @g_string_new(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.16, i32 0, i32 0))
  store %struct._GString* %call6, %struct._GString** %buf, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.74, %if.end
  %16 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool7 = icmp ne %struct._GList* %16, null
  br i1 %tobool7, label %for.body, label %for.end.75

for.body:                                         ; preds = %for.cond
  %17 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %17, i32 0, i32 0
  %18 = load i8*, i8** %data, align 8
  %19 = bitcast i8* %18 to %struct._GimpProcedure*
  store %struct._GimpProcedure* %19, %struct._GimpProcedure** %procedure, align 8
  %20 = load i32, i32* %num, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %num, align 4
  %21 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %22 = load %struct._PDBDump*, %struct._PDBDump** %pdb_dump, align 8
  %dumping_compat8 = getelementptr inbounds %struct._PDBDump, %struct._PDBDump* %22, i32 0, i32 2
  %23 = load i32, i32* %dumping_compat8, align 4
  call void @gimp_pdb_get_strings(%struct._PDBStrings* %strings, %struct._GimpProcedure* %21, i32 %23)
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %24, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.17, i32 0, i32 0))
  %25 = load i32, i32* %num, align 4
  %cmp = icmp ne i32 %25, 1
  br i1 %cmp, label %if.then.10, label %if.else.12

if.then.10:                                       ; preds = %for.body
  %26 = load %struct._GString*, %struct._GString** %buf, align 8
  %27 = load i8*, i8** %proc_name, align 8
  %28 = load i32, i32* %num, align 4
  call void (%struct._GString*, i8*, ...) @g_string_printf(%struct._GString* %26, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i32 0, i32 0), i8* %27, i32 %28)
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %30 = load %struct._GString*, %struct._GString** %buf, align 8
  %str = getelementptr inbounds %struct._GString, %struct._GString* %30, i32 0, i32 0
  %31 = load i8*, i8** %str, align 8
  %call11 = call i32 @output_string(%struct._IO_FILE* %29, i8* %31)
  br label %if.end.14

if.else.12:                                       ; preds = %for.body
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %33 = load i8*, i8** %proc_name, align 8
  %call13 = call i32 @output_string(%struct._IO_FILE* %32, i8* %33)
  br label %if.end.14

if.end.14:                                        ; preds = %if.else.12, %if.then.10
  %34 = load %struct._GEnumClass*, %struct._GEnumClass** %proc_class, align 8
  %35 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %proc_type = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %35, i32 0, i32 1
  %36 = load i32, i32* %proc_type, align 4
  %call15 = call %struct._GimpEnumDesc* @gimp_enum_get_desc(%struct._GEnumClass* %34, i32 %36)
  store %struct._GimpEnumDesc* %call15, %struct._GimpEnumDesc** %type_desc, align 8
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %37, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i32 0, i32 0))
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %blurb = getelementptr inbounds %struct._PDBStrings, %struct._PDBStrings* %strings, i32 0, i32 1
  %39 = load i8*, i8** %blurb, align 8
  %call17 = call i32 @output_string(%struct._IO_FILE* %38, i8* %39)
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call18 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %40, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i32 0, i32 0))
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %help = getelementptr inbounds %struct._PDBStrings, %struct._PDBStrings* %strings, i32 0, i32 2
  %42 = load i8*, i8** %help, align 8
  %call19 = call i32 @output_string(%struct._IO_FILE* %41, i8* %42)
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %43, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i32 0, i32 0))
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %author = getelementptr inbounds %struct._PDBStrings, %struct._PDBStrings* %strings, i32 0, i32 3
  %45 = load i8*, i8** %author, align 8
  %call21 = call i32 @output_string(%struct._IO_FILE* %44, i8* %45)
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %46, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i32 0, i32 0))
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %copyright = getelementptr inbounds %struct._PDBStrings, %struct._PDBStrings* %strings, i32 0, i32 4
  %48 = load i8*, i8** %copyright, align 8
  %call23 = call i32 @output_string(%struct._IO_FILE* %47, i8* %48)
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call24 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %49, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i32 0, i32 0))
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %date = getelementptr inbounds %struct._PDBStrings, %struct._PDBStrings* %strings, i32 0, i32 5
  %51 = load i8*, i8** %date, align 8
  %call25 = call i32 @output_string(%struct._IO_FILE* %50, i8* %51)
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call26 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %52, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i32 0, i32 0))
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %54 = load %struct._GimpEnumDesc*, %struct._GimpEnumDesc** %type_desc, align 8
  %value_desc = getelementptr inbounds %struct._GimpEnumDesc, %struct._GimpEnumDesc* %54, i32 0, i32 1
  %55 = load i8*, i8** %value_desc, align 8
  %call27 = call i32 @output_string(%struct._IO_FILE* %53, i8* %55)
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call28 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %56, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %for.cond.29

for.cond.29:                                      ; preds = %for.inc, %if.end.14
  %57 = load i32, i32* %i, align 4
  %58 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %num_args = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %58, i32 0, i32 10
  %59 = load i32, i32* %num_args, align 4
  %cmp30 = icmp slt i32 %57, %59
  br i1 %cmp30, label %for.body.31, label %for.end

for.body.31:                                      ; preds = %for.cond.29
  %60 = load i32, i32* %i, align 4
  %idxprom = sext i32 %60 to i64
  %61 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %args = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %61, i32 0, i32 11
  %62 = load %struct._GParamSpec**, %struct._GParamSpec*** %args, align 8
  %arrayidx = getelementptr inbounds %struct._GParamSpec*, %struct._GParamSpec** %62, i64 %idxprom
  %63 = load %struct._GParamSpec*, %struct._GParamSpec** %arrayidx, align 8
  store %struct._GParamSpec* %63, %struct._GParamSpec** %pspec, align 8
  %64 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec, align 8
  %call32 = call i8* @gimp_param_spec_get_desc(%struct._GParamSpec* %64)
  store i8* %call32, i8** %desc, align 8
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call33 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %65, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i32 0, i32 0))
  %66 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec, align 8
  %value_type = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %66, i32 0, i32 3
  %67 = load i64, i64* %value_type, align 8
  %call34 = call i32 @gimp_pdb_compat_arg_type_from_gtype(i64 %67)
  store i32 %call34, i32* %arg_type, align 4
  %68 = load %struct._GEnumClass*, %struct._GEnumClass** %arg_class, align 8
  %69 = load i32, i32* %arg_type, align 4
  %call35 = call %struct._GEnumValue* @g_enum_get_value(%struct._GEnumClass* %68, i32 %69)
  store %struct._GEnumValue* %call35, %struct._GEnumValue** %arg_value, align 8
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call36 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %70, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i32 0, i32 0))
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %72 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec, align 8
  %call37 = call i8* @g_param_spec_get_name(%struct._GParamSpec* %72)
  %call38 = call i32 @output_string(%struct._IO_FILE* %71, i8* %call37)
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call39 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %73, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i32 0, i32 0))
  %74 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %75 = load %struct._GEnumValue*, %struct._GEnumValue** %arg_value, align 8
  %value_name = getelementptr inbounds %struct._GEnumValue, %struct._GEnumValue* %75, i32 0, i32 1
  %76 = load i8*, i8** %value_name, align 8
  %call40 = call i32 @output_string(%struct._IO_FILE* %74, i8* %76)
  %77 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call41 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %77, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i32 0, i32 0))
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %79 = load i8*, i8** %desc, align 8
  %call42 = call i32 @output_string(%struct._IO_FILE* %78, i8* %79)
  %80 = load i8*, i8** %desc, align 8
  call void @g_free(i8* %80)
  %81 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call43 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %81, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0))
  br label %for.inc

for.inc:                                          ; preds = %for.body.31
  %82 = load i32, i32* %i, align 4
  %inc44 = add nsw i32 %82, 1
  store i32 %inc44, i32* %i, align 4
  br label %for.cond.29

for.end:                                          ; preds = %for.cond.29
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call45 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0))
  %84 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call46 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %84, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %for.cond.47

for.cond.47:                                      ; preds = %for.inc.69, %for.end
  %85 = load i32, i32* %i, align 4
  %86 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %num_values = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %86, i32 0, i32 12
  %87 = load i32, i32* %num_values, align 4
  %cmp48 = icmp slt i32 %85, %87
  br i1 %cmp48, label %for.body.49, label %for.end.71

for.body.49:                                      ; preds = %for.cond.47
  %88 = load i32, i32* %i, align 4
  %idxprom51 = sext i32 %88 to i64
  %89 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %values = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %89, i32 0, i32 13
  %90 = load %struct._GParamSpec**, %struct._GParamSpec*** %values, align 8
  %arrayidx52 = getelementptr inbounds %struct._GParamSpec*, %struct._GParamSpec** %90, i64 %idxprom51
  %91 = load %struct._GParamSpec*, %struct._GParamSpec** %arrayidx52, align 8
  store %struct._GParamSpec* %91, %struct._GParamSpec** %pspec50, align 8
  %92 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec50, align 8
  %call55 = call i8* @gimp_param_spec_get_desc(%struct._GParamSpec* %92)
  store i8* %call55, i8** %desc54, align 8
  %93 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call56 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %93, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i32 0, i32 0))
  %94 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec50, align 8
  %value_type57 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %94, i32 0, i32 3
  %95 = load i64, i64* %value_type57, align 8
  %call58 = call i32 @gimp_pdb_compat_arg_type_from_gtype(i64 %95)
  store i32 %call58, i32* %arg_type53, align 4
  %96 = load %struct._GEnumClass*, %struct._GEnumClass** %arg_class, align 8
  %97 = load i32, i32* %arg_type53, align 4
  %call59 = call %struct._GEnumValue* @g_enum_get_value(%struct._GEnumClass* %96, i32 %97)
  store %struct._GEnumValue* %call59, %struct._GEnumValue** %arg_value, align 8
  %98 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call60 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %98, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i32 0, i32 0))
  %99 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %100 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec50, align 8
  %call61 = call i8* @g_param_spec_get_name(%struct._GParamSpec* %100)
  %call62 = call i32 @output_string(%struct._IO_FILE* %99, i8* %call61)
  %101 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call63 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %101, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i32 0, i32 0))
  %102 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %103 = load %struct._GEnumValue*, %struct._GEnumValue** %arg_value, align 8
  %value_name64 = getelementptr inbounds %struct._GEnumValue, %struct._GEnumValue* %103, i32 0, i32 1
  %104 = load i8*, i8** %value_name64, align 8
  %call65 = call i32 @output_string(%struct._IO_FILE* %102, i8* %104)
  %105 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call66 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %105, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i32 0, i32 0))
  %106 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %107 = load i8*, i8** %desc54, align 8
  %call67 = call i32 @output_string(%struct._IO_FILE* %106, i8* %107)
  %108 = load i8*, i8** %desc54, align 8
  call void @g_free(i8* %108)
  %109 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call68 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %109, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0))
  br label %for.inc.69

for.inc.69:                                       ; preds = %for.body.49
  %110 = load i32, i32* %i, align 4
  %inc70 = add nsw i32 %110, 1
  store i32 %inc70, i32* %i, align 4
  br label %for.cond.47

for.end.71:                                       ; preds = %for.cond.47
  %111 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call72 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %111, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i32 0, i32 0))
  %112 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call73 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %112, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i32 0, i32 0))
  call void @gimp_pdb_free_strings(%struct._PDBStrings* %strings)
  br label %for.inc.74

for.inc.74:                                       ; preds = %for.end.71
  %113 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %113, i32 0, i32 1
  %114 = load %struct._GList*, %struct._GList** %next, align 8
  store %struct._GList* %114, %struct._GList** %list, align 8
  br label %for.cond

for.end.75:                                       ; preds = %for.cond
  %115 = load %struct._GString*, %struct._GString** %buf, align 8
  %call76 = call i8* @g_string_free(%struct._GString* %115, i32 1)
  %116 = load %struct._GEnumClass*, %struct._GEnumClass** %arg_class, align 8
  %117 = bitcast %struct._GEnumClass* %116 to i8*
  call void @g_type_class_unref(i8* %117)
  %118 = load %struct._GEnumClass*, %struct._GEnumClass** %proc_class, align 8
  %119 = bitcast %struct._GEnumClass* %118 to i8*
  call void @g_type_class_unref(i8* %119)
  ret void
}

declare i32 @fclose(%struct._IO_FILE*) #3

; Function Attrs: nounwind uwtable
define i32 @gimp_pdb_query(%struct._GimpPDB* %pdb, i8* %name, i8* %blurb, i8* %help, i8* %author, i8* %copyright, i8* %date, i8* %proc_type, i32* %num_procs, i8*** %procs, %struct._GError** %error) #0 {
entry:
  %retval = alloca i32, align 4
  %pdb.addr = alloca %struct._GimpPDB*, align 8
  %name.addr = alloca i8*, align 8
  %blurb.addr = alloca i8*, align 8
  %help.addr = alloca i8*, align 8
  %author.addr = alloca i8*, align 8
  %copyright.addr = alloca i8*, align 8
  %date.addr = alloca i8*, align 8
  %proc_type.addr = alloca i8*, align 8
  %num_procs.addr = alloca i32*, align 8
  %procs.addr = alloca i8***, align 8
  %error.addr = alloca %struct._GError**, align 8
  %pdb_query = alloca %struct._PDBQuery, align 8
  %success = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpPDB* %pdb, %struct._GimpPDB** %pdb.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store i8* %blurb, i8** %blurb.addr, align 8
  store i8* %help, i8** %help.addr, align 8
  store i8* %author, i8** %author.addr, align 8
  store i8* %copyright, i8** %copyright.addr, align 8
  store i8* %date, i8** %date.addr, align 8
  store i8* %proc_type, i8** %proc_type.addr, align 8
  store i32* %num_procs, i32** %num_procs.addr, align 8
  store i8*** %procs, i8**** %procs.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  %0 = bitcast %struct._PDBQuery* %pdb_query to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 80, i32 8, i1 false)
  store i32 0, i32* %success, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %1 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %2 = bitcast %struct._GimpPDB* %1 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %2, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_pdb_get_type() #6
  store i64 %call, i64* %__t, align 8
  %3 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %3, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.6

if.else:                                          ; preds = %do.body
  %4 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %4, i32 0, i32 0
  %5 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool1 = icmp ne %struct._GTypeClass* %5, null
  br i1 %tobool1, label %land.lhs.true, label %if.else.4

land.lhs.true:                                    ; preds = %if.else
  %6 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class2 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %6, i32 0, i32 0
  %7 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class2, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %7, i32 0, i32 0
  %8 = load i64, i64* %g_type, align 8
  %9 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %8, %9
  br i1 %cmp, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.4:                                        ; preds = %land.lhs.true, %if.else
  %10 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %11 = load i64, i64* %__t, align 8
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %10, i64 %11) #7
  store i32 %call5, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.4, %if.then.3
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %if.then
  %12 = load i32, i32* %__r, align 4
  store i32 %12, i32* %tmp
  %13 = load i32, i32* %tmp
  %tobool7 = icmp ne i32 %13, 0
  br i1 %tobool7, label %if.then.8, label %if.else.9

if.then.8:                                        ; preds = %if.end.6
  br label %if.end.10

if.else.9:                                        ; preds = %if.end.6
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.gimp_pdb_query, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %14 = load i8*, i8** %name.addr, align 8
  %cmp12 = icmp ne i8* %14, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.gimp_pdb_query, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %15 = load i8*, i8** %blurb.addr, align 8
  %cmp18 = icmp ne i8* %15, null
  br i1 %cmp18, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %do.body.17
  br label %if.end.21

if.else.20:                                       ; preds = %do.body.17
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.gimp_pdb_query, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.21:                                        ; preds = %if.then.19
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  br label %do.body.23

do.body.23:                                       ; preds = %do.end.22
  %16 = load i8*, i8** %help.addr, align 8
  %cmp24 = icmp ne i8* %16, null
  br i1 %cmp24, label %if.then.25, label %if.else.26

if.then.25:                                       ; preds = %do.body.23
  br label %if.end.27

if.else.26:                                       ; preds = %do.body.23
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.gimp_pdb_query, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.27:                                        ; preds = %if.then.25
  br label %do.end.28

do.end.28:                                        ; preds = %if.end.27
  br label %do.body.29

do.body.29:                                       ; preds = %do.end.28
  %17 = load i8*, i8** %author.addr, align 8
  %cmp30 = icmp ne i8* %17, null
  br i1 %cmp30, label %if.then.31, label %if.else.32

if.then.31:                                       ; preds = %do.body.29
  br label %if.end.33

if.else.32:                                       ; preds = %do.body.29
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.gimp_pdb_query, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.33:                                        ; preds = %if.then.31
  br label %do.end.34

do.end.34:                                        ; preds = %if.end.33
  br label %do.body.35

do.body.35:                                       ; preds = %do.end.34
  %18 = load i8*, i8** %copyright.addr, align 8
  %cmp36 = icmp ne i8* %18, null
  br i1 %cmp36, label %if.then.37, label %if.else.38

if.then.37:                                       ; preds = %do.body.35
  br label %if.end.39

if.else.38:                                       ; preds = %do.body.35
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.gimp_pdb_query, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.39:                                        ; preds = %if.then.37
  br label %do.end.40

do.end.40:                                        ; preds = %if.end.39
  br label %do.body.41

do.body.41:                                       ; preds = %do.end.40
  %19 = load i8*, i8** %date.addr, align 8
  %cmp42 = icmp ne i8* %19, null
  br i1 %cmp42, label %if.then.43, label %if.else.44

if.then.43:                                       ; preds = %do.body.41
  br label %if.end.45

if.else.44:                                       ; preds = %do.body.41
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.gimp_pdb_query, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.45:                                        ; preds = %if.then.43
  br label %do.end.46

do.end.46:                                        ; preds = %if.end.45
  br label %do.body.47

do.body.47:                                       ; preds = %do.end.46
  %20 = load i8*, i8** %proc_type.addr, align 8
  %cmp48 = icmp ne i8* %20, null
  br i1 %cmp48, label %if.then.49, label %if.else.50

if.then.49:                                       ; preds = %do.body.47
  br label %if.end.51

if.else.50:                                       ; preds = %do.body.47
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.gimp_pdb_query, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.51:                                        ; preds = %if.then.49
  br label %do.end.52

do.end.52:                                        ; preds = %if.end.51
  br label %do.body.53

do.body.53:                                       ; preds = %do.end.52
  %21 = load i32*, i32** %num_procs.addr, align 8
  %cmp54 = icmp ne i32* %21, null
  br i1 %cmp54, label %if.then.55, label %if.else.56

if.then.55:                                       ; preds = %do.body.53
  br label %if.end.57

if.else.56:                                       ; preds = %do.body.53
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.gimp_pdb_query, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.57:                                        ; preds = %if.then.55
  br label %do.end.58

do.end.58:                                        ; preds = %if.end.57
  br label %do.body.59

do.body.59:                                       ; preds = %do.end.58
  %22 = load i8***, i8**** %procs.addr, align 8
  %cmp60 = icmp ne i8*** %22, null
  br i1 %cmp60, label %if.then.61, label %if.else.62

if.then.61:                                       ; preds = %do.body.59
  br label %if.end.63

if.else.62:                                       ; preds = %do.body.59
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.gimp_pdb_query, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.63:                                        ; preds = %if.then.61
  br label %do.end.64

do.end.64:                                        ; preds = %if.end.63
  br label %do.body.65

do.body.65:                                       ; preds = %do.end.64
  %23 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %cmp66 = icmp eq %struct._GError** %23, null
  br i1 %cmp66, label %if.then.68, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.65
  %24 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %25 = load %struct._GError*, %struct._GError** %24, align 8
  %cmp67 = icmp eq %struct._GError* %25, null
  br i1 %cmp67, label %if.then.68, label %if.else.69

if.then.68:                                       ; preds = %lor.lhs.false, %do.body.65
  br label %if.end.70

if.else.69:                                       ; preds = %lor.lhs.false
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.gimp_pdb_query, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.13, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.70:                                        ; preds = %if.then.68
  br label %do.end.71

do.end.71:                                        ; preds = %if.end.70
  %26 = load i32*, i32** %num_procs.addr, align 8
  store i32 0, i32* %26, align 4
  %27 = load i8***, i8**** %procs.addr, align 8
  store i8** null, i8*** %27, align 8
  %28 = load i8*, i8** %name.addr, align 8
  %29 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call72 = call %struct._GRegex* @g_regex_new(i8* %28, i32 8193, i32 0, %struct._GError** %29)
  %name_regex = getelementptr inbounds %struct._PDBQuery, %struct._PDBQuery* %pdb_query, i32 0, i32 1
  store %struct._GRegex* %call72, %struct._GRegex** %name_regex, align 8
  %name_regex73 = getelementptr inbounds %struct._PDBQuery, %struct._PDBQuery* %pdb_query, i32 0, i32 1
  %30 = load %struct._GRegex*, %struct._GRegex** %name_regex73, align 8
  %tobool74 = icmp ne %struct._GRegex* %30, null
  br i1 %tobool74, label %if.end.76, label %if.then.75

if.then.75:                                       ; preds = %do.end.71
  br label %cleanup

if.end.76:                                        ; preds = %do.end.71
  %31 = load i8*, i8** %blurb.addr, align 8
  %32 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call77 = call %struct._GRegex* @g_regex_new(i8* %31, i32 8193, i32 0, %struct._GError** %32)
  %blurb_regex = getelementptr inbounds %struct._PDBQuery, %struct._PDBQuery* %pdb_query, i32 0, i32 2
  store %struct._GRegex* %call77, %struct._GRegex** %blurb_regex, align 8
  %blurb_regex78 = getelementptr inbounds %struct._PDBQuery, %struct._PDBQuery* %pdb_query, i32 0, i32 2
  %33 = load %struct._GRegex*, %struct._GRegex** %blurb_regex78, align 8
  %tobool79 = icmp ne %struct._GRegex* %33, null
  br i1 %tobool79, label %if.end.81, label %if.then.80

if.then.80:                                       ; preds = %if.end.76
  br label %cleanup

if.end.81:                                        ; preds = %if.end.76
  %34 = load i8*, i8** %help.addr, align 8
  %35 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call82 = call %struct._GRegex* @g_regex_new(i8* %34, i32 8193, i32 0, %struct._GError** %35)
  %help_regex = getelementptr inbounds %struct._PDBQuery, %struct._PDBQuery* %pdb_query, i32 0, i32 3
  store %struct._GRegex* %call82, %struct._GRegex** %help_regex, align 8
  %help_regex83 = getelementptr inbounds %struct._PDBQuery, %struct._PDBQuery* %pdb_query, i32 0, i32 3
  %36 = load %struct._GRegex*, %struct._GRegex** %help_regex83, align 8
  %tobool84 = icmp ne %struct._GRegex* %36, null
  br i1 %tobool84, label %if.end.86, label %if.then.85

if.then.85:                                       ; preds = %if.end.81
  br label %cleanup

if.end.86:                                        ; preds = %if.end.81
  %37 = load i8*, i8** %author.addr, align 8
  %38 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call87 = call %struct._GRegex* @g_regex_new(i8* %37, i32 8193, i32 0, %struct._GError** %38)
  %author_regex = getelementptr inbounds %struct._PDBQuery, %struct._PDBQuery* %pdb_query, i32 0, i32 4
  store %struct._GRegex* %call87, %struct._GRegex** %author_regex, align 8
  %author_regex88 = getelementptr inbounds %struct._PDBQuery, %struct._PDBQuery* %pdb_query, i32 0, i32 4
  %39 = load %struct._GRegex*, %struct._GRegex** %author_regex88, align 8
  %tobool89 = icmp ne %struct._GRegex* %39, null
  br i1 %tobool89, label %if.end.91, label %if.then.90

if.then.90:                                       ; preds = %if.end.86
  br label %cleanup

if.end.91:                                        ; preds = %if.end.86
  %40 = load i8*, i8** %copyright.addr, align 8
  %41 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call92 = call %struct._GRegex* @g_regex_new(i8* %40, i32 8193, i32 0, %struct._GError** %41)
  %copyright_regex = getelementptr inbounds %struct._PDBQuery, %struct._PDBQuery* %pdb_query, i32 0, i32 5
  store %struct._GRegex* %call92, %struct._GRegex** %copyright_regex, align 8
  %copyright_regex93 = getelementptr inbounds %struct._PDBQuery, %struct._PDBQuery* %pdb_query, i32 0, i32 5
  %42 = load %struct._GRegex*, %struct._GRegex** %copyright_regex93, align 8
  %tobool94 = icmp ne %struct._GRegex* %42, null
  br i1 %tobool94, label %if.end.96, label %if.then.95

if.then.95:                                       ; preds = %if.end.91
  br label %cleanup

if.end.96:                                        ; preds = %if.end.91
  %43 = load i8*, i8** %date.addr, align 8
  %44 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call97 = call %struct._GRegex* @g_regex_new(i8* %43, i32 8193, i32 0, %struct._GError** %44)
  %date_regex = getelementptr inbounds %struct._PDBQuery, %struct._PDBQuery* %pdb_query, i32 0, i32 6
  store %struct._GRegex* %call97, %struct._GRegex** %date_regex, align 8
  %date_regex98 = getelementptr inbounds %struct._PDBQuery, %struct._PDBQuery* %pdb_query, i32 0, i32 6
  %45 = load %struct._GRegex*, %struct._GRegex** %date_regex98, align 8
  %tobool99 = icmp ne %struct._GRegex* %45, null
  br i1 %tobool99, label %if.end.101, label %if.then.100

if.then.100:                                      ; preds = %if.end.96
  br label %cleanup

if.end.101:                                       ; preds = %if.end.96
  %46 = load i8*, i8** %proc_type.addr, align 8
  %47 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call102 = call %struct._GRegex* @g_regex_new(i8* %46, i32 8193, i32 0, %struct._GError** %47)
  %proc_type_regex = getelementptr inbounds %struct._PDBQuery, %struct._PDBQuery* %pdb_query, i32 0, i32 7
  store %struct._GRegex* %call102, %struct._GRegex** %proc_type_regex, align 8
  %proc_type_regex103 = getelementptr inbounds %struct._PDBQuery, %struct._PDBQuery* %pdb_query, i32 0, i32 7
  %48 = load %struct._GRegex*, %struct._GRegex** %proc_type_regex103, align 8
  %tobool104 = icmp ne %struct._GRegex* %48, null
  br i1 %tobool104, label %if.end.106, label %if.then.105

if.then.105:                                      ; preds = %if.end.101
  br label %cleanup

if.end.106:                                       ; preds = %if.end.101
  store i32 1, i32* %success, align 4
  %49 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %pdb107 = getelementptr inbounds %struct._PDBQuery, %struct._PDBQuery* %pdb_query, i32 0, i32 0
  store %struct._GimpPDB* %49, %struct._GimpPDB** %pdb107, align 8
  %list_of_procs = getelementptr inbounds %struct._PDBQuery, %struct._PDBQuery* %pdb_query, i32 0, i32 8
  store i8** null, i8*** %list_of_procs, align 8
  %num_procs108 = getelementptr inbounds %struct._PDBQuery, %struct._PDBQuery* %pdb_query, i32 0, i32 9
  store i32 0, i32* %num_procs108, align 4
  %querying_compat = getelementptr inbounds %struct._PDBQuery, %struct._PDBQuery* %pdb_query, i32 0, i32 10
  store i32 0, i32* %querying_compat, align 4
  %50 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %procedures = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %50, i32 0, i32 2
  %51 = load %struct._GHashTable*, %struct._GHashTable** %procedures, align 8
  %52 = bitcast %struct._PDBQuery* %pdb_query to i8*
  call void @g_hash_table_foreach(%struct._GHashTable* %51, void (i8*, i8*, i8*)* @gimp_pdb_query_entry, i8* %52)
  %querying_compat109 = getelementptr inbounds %struct._PDBQuery, %struct._PDBQuery* %pdb_query, i32 0, i32 10
  store i32 1, i32* %querying_compat109, align 4
  %53 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %compat_proc_names = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %53, i32 0, i32 3
  %54 = load %struct._GHashTable*, %struct._GHashTable** %compat_proc_names, align 8
  %55 = bitcast %struct._PDBQuery* %pdb_query to i8*
  call void @g_hash_table_foreach(%struct._GHashTable* %54, void (i8*, i8*, i8*)* @gimp_pdb_query_entry, i8* %55)
  br label %cleanup

cleanup:                                          ; preds = %if.end.106, %if.then.105, %if.then.100, %if.then.95, %if.then.90, %if.then.85, %if.then.80, %if.then.75
  %proc_type_regex110 = getelementptr inbounds %struct._PDBQuery, %struct._PDBQuery* %pdb_query, i32 0, i32 7
  %56 = load %struct._GRegex*, %struct._GRegex** %proc_type_regex110, align 8
  %tobool111 = icmp ne %struct._GRegex* %56, null
  br i1 %tobool111, label %if.then.112, label %if.end.114

if.then.112:                                      ; preds = %cleanup
  %proc_type_regex113 = getelementptr inbounds %struct._PDBQuery, %struct._PDBQuery* %pdb_query, i32 0, i32 7
  %57 = load %struct._GRegex*, %struct._GRegex** %proc_type_regex113, align 8
  call void @g_regex_unref(%struct._GRegex* %57)
  br label %if.end.114

if.end.114:                                       ; preds = %if.then.112, %cleanup
  %date_regex115 = getelementptr inbounds %struct._PDBQuery, %struct._PDBQuery* %pdb_query, i32 0, i32 6
  %58 = load %struct._GRegex*, %struct._GRegex** %date_regex115, align 8
  %tobool116 = icmp ne %struct._GRegex* %58, null
  br i1 %tobool116, label %if.then.117, label %if.end.119

if.then.117:                                      ; preds = %if.end.114
  %date_regex118 = getelementptr inbounds %struct._PDBQuery, %struct._PDBQuery* %pdb_query, i32 0, i32 6
  %59 = load %struct._GRegex*, %struct._GRegex** %date_regex118, align 8
  call void @g_regex_unref(%struct._GRegex* %59)
  br label %if.end.119

if.end.119:                                       ; preds = %if.then.117, %if.end.114
  %copyright_regex120 = getelementptr inbounds %struct._PDBQuery, %struct._PDBQuery* %pdb_query, i32 0, i32 5
  %60 = load %struct._GRegex*, %struct._GRegex** %copyright_regex120, align 8
  %tobool121 = icmp ne %struct._GRegex* %60, null
  br i1 %tobool121, label %if.then.122, label %if.end.124

if.then.122:                                      ; preds = %if.end.119
  %copyright_regex123 = getelementptr inbounds %struct._PDBQuery, %struct._PDBQuery* %pdb_query, i32 0, i32 5
  %61 = load %struct._GRegex*, %struct._GRegex** %copyright_regex123, align 8
  call void @g_regex_unref(%struct._GRegex* %61)
  br label %if.end.124

if.end.124:                                       ; preds = %if.then.122, %if.end.119
  %author_regex125 = getelementptr inbounds %struct._PDBQuery, %struct._PDBQuery* %pdb_query, i32 0, i32 4
  %62 = load %struct._GRegex*, %struct._GRegex** %author_regex125, align 8
  %tobool126 = icmp ne %struct._GRegex* %62, null
  br i1 %tobool126, label %if.then.127, label %if.end.129

if.then.127:                                      ; preds = %if.end.124
  %author_regex128 = getelementptr inbounds %struct._PDBQuery, %struct._PDBQuery* %pdb_query, i32 0, i32 4
  %63 = load %struct._GRegex*, %struct._GRegex** %author_regex128, align 8
  call void @g_regex_unref(%struct._GRegex* %63)
  br label %if.end.129

if.end.129:                                       ; preds = %if.then.127, %if.end.124
  %help_regex130 = getelementptr inbounds %struct._PDBQuery, %struct._PDBQuery* %pdb_query, i32 0, i32 3
  %64 = load %struct._GRegex*, %struct._GRegex** %help_regex130, align 8
  %tobool131 = icmp ne %struct._GRegex* %64, null
  br i1 %tobool131, label %if.then.132, label %if.end.134

if.then.132:                                      ; preds = %if.end.129
  %help_regex133 = getelementptr inbounds %struct._PDBQuery, %struct._PDBQuery* %pdb_query, i32 0, i32 3
  %65 = load %struct._GRegex*, %struct._GRegex** %help_regex133, align 8
  call void @g_regex_unref(%struct._GRegex* %65)
  br label %if.end.134

if.end.134:                                       ; preds = %if.then.132, %if.end.129
  %blurb_regex135 = getelementptr inbounds %struct._PDBQuery, %struct._PDBQuery* %pdb_query, i32 0, i32 2
  %66 = load %struct._GRegex*, %struct._GRegex** %blurb_regex135, align 8
  %tobool136 = icmp ne %struct._GRegex* %66, null
  br i1 %tobool136, label %if.then.137, label %if.end.139

if.then.137:                                      ; preds = %if.end.134
  %blurb_regex138 = getelementptr inbounds %struct._PDBQuery, %struct._PDBQuery* %pdb_query, i32 0, i32 2
  %67 = load %struct._GRegex*, %struct._GRegex** %blurb_regex138, align 8
  call void @g_regex_unref(%struct._GRegex* %67)
  br label %if.end.139

if.end.139:                                       ; preds = %if.then.137, %if.end.134
  %name_regex140 = getelementptr inbounds %struct._PDBQuery, %struct._PDBQuery* %pdb_query, i32 0, i32 1
  %68 = load %struct._GRegex*, %struct._GRegex** %name_regex140, align 8
  %tobool141 = icmp ne %struct._GRegex* %68, null
  br i1 %tobool141, label %if.then.142, label %if.end.144

if.then.142:                                      ; preds = %if.end.139
  %name_regex143 = getelementptr inbounds %struct._PDBQuery, %struct._PDBQuery* %pdb_query, i32 0, i32 1
  %69 = load %struct._GRegex*, %struct._GRegex** %name_regex143, align 8
  call void @g_regex_unref(%struct._GRegex* %69)
  br label %if.end.144

if.end.144:                                       ; preds = %if.then.142, %if.end.139
  %70 = load i32, i32* %success, align 4
  %tobool145 = icmp ne i32 %70, 0
  br i1 %tobool145, label %if.then.146, label %if.end.149

if.then.146:                                      ; preds = %if.end.144
  %num_procs147 = getelementptr inbounds %struct._PDBQuery, %struct._PDBQuery* %pdb_query, i32 0, i32 9
  %71 = load i32, i32* %num_procs147, align 4
  %72 = load i32*, i32** %num_procs.addr, align 8
  store i32 %71, i32* %72, align 4
  %list_of_procs148 = getelementptr inbounds %struct._PDBQuery, %struct._PDBQuery* %pdb_query, i32 0, i32 8
  %73 = load i8**, i8*** %list_of_procs148, align 8
  %74 = load i8***, i8**** %procs.addr, align 8
  store i8** %73, i8*** %74, align 8
  br label %if.end.149

if.end.149:                                       ; preds = %if.then.146, %if.end.144
  %75 = load i32, i32* %success, align 4
  store i32 %75, i32* %retval
  br label %return

return:                                           ; preds = %if.end.149, %if.else.69, %if.else.62, %if.else.56, %if.else.50, %if.else.44, %if.else.38, %if.else.32, %if.else.26, %if.else.20, %if.else.14, %if.else.9
  %76 = load i32, i32* %retval
  ret i32 %76
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

declare %struct._GRegex* @g_regex_new(i8*, i32, i32, %struct._GError**) #3

; Function Attrs: nounwind uwtable
define internal void @gimp_pdb_query_entry(i8* %key, i8* %value, i8* %user_data) #0 {
entry:
  %key.addr = alloca i8*, align 8
  %value.addr = alloca i8*, align 8
  %user_data.addr = alloca i8*, align 8
  %pdb_query = alloca %struct._PDBQuery*, align 8
  %list = alloca %struct._GList*, align 8
  %procedure = alloca %struct._GimpProcedure*, align 8
  %proc_name = alloca i8*, align 8
  %strings = alloca %struct._PDBStrings, align 8
  %enum_class = alloca %struct._GEnumClass*, align 8
  %type_desc = alloca %struct._GimpEnumDesc*, align 8
  store i8* %key, i8** %key.addr, align 8
  store i8* %value, i8** %value.addr, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  %0 = load i8*, i8** %user_data.addr, align 8
  %1 = bitcast i8* %0 to %struct._PDBQuery*
  store %struct._PDBQuery* %1, %struct._PDBQuery** %pdb_query, align 8
  %2 = load i8*, i8** %key.addr, align 8
  store i8* %2, i8** %proc_name, align 8
  %3 = load %struct._PDBQuery*, %struct._PDBQuery** %pdb_query, align 8
  %querying_compat = getelementptr inbounds %struct._PDBQuery, %struct._PDBQuery* %3, i32 0, i32 10
  %4 = load i32, i32* %querying_compat, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load %struct._PDBQuery*, %struct._PDBQuery** %pdb_query, align 8
  %pdb = getelementptr inbounds %struct._PDBQuery, %struct._PDBQuery* %5, i32 0, i32 0
  %6 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb, align 8
  %procedures = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %6, i32 0, i32 2
  %7 = load %struct._GHashTable*, %struct._GHashTable** %procedures, align 8
  %8 = load i8*, i8** %value.addr, align 8
  %call = call i8* @g_hash_table_lookup(%struct._GHashTable* %7, i8* %8)
  %9 = bitcast i8* %call to %struct._GList*
  store %struct._GList* %9, %struct._GList** %list, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %10 = load i8*, i8** %value.addr, align 8
  %11 = bitcast i8* %10 to %struct._GList*
  store %struct._GList* %11, %struct._GList** %list, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %12 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool1 = icmp ne %struct._GList* %12, null
  br i1 %tobool1, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %if.end
  br label %return

if.end.3:                                         ; preds = %if.end
  %13 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %13, i32 0, i32 0
  %14 = load i8*, i8** %data, align 8
  %15 = bitcast i8* %14 to %struct._GimpProcedure*
  store %struct._GimpProcedure* %15, %struct._GimpProcedure** %procedure, align 8
  %16 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %17 = load %struct._PDBQuery*, %struct._PDBQuery** %pdb_query, align 8
  %querying_compat4 = getelementptr inbounds %struct._PDBQuery, %struct._PDBQuery* %17, i32 0, i32 10
  %18 = load i32, i32* %querying_compat4, align 4
  call void @gimp_pdb_get_strings(%struct._PDBStrings* %strings, %struct._GimpProcedure* %16, i32 %18)
  %call5 = call i64 @gimp_pdb_proc_type_get_type() #6
  %call6 = call i8* @g_type_class_ref(i64 %call5)
  %19 = bitcast i8* %call6 to %struct._GEnumClass*
  store %struct._GEnumClass* %19, %struct._GEnumClass** %enum_class, align 8
  %20 = load %struct._GEnumClass*, %struct._GEnumClass** %enum_class, align 8
  %21 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %proc_type = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %21, i32 0, i32 1
  %22 = load i32, i32* %proc_type, align 4
  %call7 = call %struct._GimpEnumDesc* @gimp_enum_get_desc(%struct._GEnumClass* %20, i32 %22)
  store %struct._GimpEnumDesc* %call7, %struct._GimpEnumDesc** %type_desc, align 8
  %23 = load %struct._GEnumClass*, %struct._GEnumClass** %enum_class, align 8
  %24 = bitcast %struct._GEnumClass* %23 to i8*
  call void @g_type_class_unref(i8* %24)
  %25 = load %struct._PDBQuery*, %struct._PDBQuery** %pdb_query, align 8
  %name_regex = getelementptr inbounds %struct._PDBQuery, %struct._PDBQuery* %25, i32 0, i32 1
  %26 = load %struct._GRegex*, %struct._GRegex** %name_regex, align 8
  %27 = load i8*, i8** %proc_name, align 8
  %call8 = call i32 @match_string(%struct._GRegex* %26, i8* %27)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %land.lhs.true, label %if.end.34

land.lhs.true:                                    ; preds = %if.end.3
  %28 = load %struct._PDBQuery*, %struct._PDBQuery** %pdb_query, align 8
  %blurb_regex = getelementptr inbounds %struct._PDBQuery, %struct._PDBQuery* %28, i32 0, i32 2
  %29 = load %struct._GRegex*, %struct._GRegex** %blurb_regex, align 8
  %blurb = getelementptr inbounds %struct._PDBStrings, %struct._PDBStrings* %strings, i32 0, i32 1
  %30 = load i8*, i8** %blurb, align 8
  %call10 = call i32 @match_string(%struct._GRegex* %29, i8* %30)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %land.lhs.true.12, label %if.end.34

land.lhs.true.12:                                 ; preds = %land.lhs.true
  %31 = load %struct._PDBQuery*, %struct._PDBQuery** %pdb_query, align 8
  %help_regex = getelementptr inbounds %struct._PDBQuery, %struct._PDBQuery* %31, i32 0, i32 3
  %32 = load %struct._GRegex*, %struct._GRegex** %help_regex, align 8
  %help = getelementptr inbounds %struct._PDBStrings, %struct._PDBStrings* %strings, i32 0, i32 2
  %33 = load i8*, i8** %help, align 8
  %call13 = call i32 @match_string(%struct._GRegex* %32, i8* %33)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %land.lhs.true.15, label %if.end.34

land.lhs.true.15:                                 ; preds = %land.lhs.true.12
  %34 = load %struct._PDBQuery*, %struct._PDBQuery** %pdb_query, align 8
  %author_regex = getelementptr inbounds %struct._PDBQuery, %struct._PDBQuery* %34, i32 0, i32 4
  %35 = load %struct._GRegex*, %struct._GRegex** %author_regex, align 8
  %author = getelementptr inbounds %struct._PDBStrings, %struct._PDBStrings* %strings, i32 0, i32 3
  %36 = load i8*, i8** %author, align 8
  %call16 = call i32 @match_string(%struct._GRegex* %35, i8* %36)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %land.lhs.true.18, label %if.end.34

land.lhs.true.18:                                 ; preds = %land.lhs.true.15
  %37 = load %struct._PDBQuery*, %struct._PDBQuery** %pdb_query, align 8
  %copyright_regex = getelementptr inbounds %struct._PDBQuery, %struct._PDBQuery* %37, i32 0, i32 5
  %38 = load %struct._GRegex*, %struct._GRegex** %copyright_regex, align 8
  %copyright = getelementptr inbounds %struct._PDBStrings, %struct._PDBStrings* %strings, i32 0, i32 4
  %39 = load i8*, i8** %copyright, align 8
  %call19 = call i32 @match_string(%struct._GRegex* %38, i8* %39)
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %land.lhs.true.21, label %if.end.34

land.lhs.true.21:                                 ; preds = %land.lhs.true.18
  %40 = load %struct._PDBQuery*, %struct._PDBQuery** %pdb_query, align 8
  %date_regex = getelementptr inbounds %struct._PDBQuery, %struct._PDBQuery* %40, i32 0, i32 6
  %41 = load %struct._GRegex*, %struct._GRegex** %date_regex, align 8
  %date = getelementptr inbounds %struct._PDBStrings, %struct._PDBStrings* %strings, i32 0, i32 5
  %42 = load i8*, i8** %date, align 8
  %call22 = call i32 @match_string(%struct._GRegex* %41, i8* %42)
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %land.lhs.true.24, label %if.end.34

land.lhs.true.24:                                 ; preds = %land.lhs.true.21
  %43 = load %struct._PDBQuery*, %struct._PDBQuery** %pdb_query, align 8
  %proc_type_regex = getelementptr inbounds %struct._PDBQuery, %struct._PDBQuery* %43, i32 0, i32 7
  %44 = load %struct._GRegex*, %struct._GRegex** %proc_type_regex, align 8
  %45 = load %struct._GimpEnumDesc*, %struct._GimpEnumDesc** %type_desc, align 8
  %value_desc = getelementptr inbounds %struct._GimpEnumDesc, %struct._GimpEnumDesc* %45, i32 0, i32 1
  %46 = load i8*, i8** %value_desc, align 8
  %call25 = call i32 @match_string(%struct._GRegex* %44, i8* %46)
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %if.then.27, label %if.end.34

if.then.27:                                       ; preds = %land.lhs.true.24
  %47 = load %struct._PDBQuery*, %struct._PDBQuery** %pdb_query, align 8
  %num_procs = getelementptr inbounds %struct._PDBQuery, %struct._PDBQuery* %47, i32 0, i32 9
  %48 = load i32, i32* %num_procs, align 4
  %inc = add nsw i32 %48, 1
  store i32 %inc, i32* %num_procs, align 4
  %49 = load %struct._PDBQuery*, %struct._PDBQuery** %pdb_query, align 8
  %list_of_procs = getelementptr inbounds %struct._PDBQuery, %struct._PDBQuery* %49, i32 0, i32 8
  %50 = load i8**, i8*** %list_of_procs, align 8
  %51 = bitcast i8** %50 to i8*
  %52 = load %struct._PDBQuery*, %struct._PDBQuery** %pdb_query, align 8
  %num_procs28 = getelementptr inbounds %struct._PDBQuery, %struct._PDBQuery* %52, i32 0, i32 9
  %53 = load i32, i32* %num_procs28, align 4
  %conv = sext i32 %53 to i64
  %call29 = call i8* @g_realloc_n(i8* %51, i64 %conv, i64 8)
  %54 = bitcast i8* %call29 to i8**
  %55 = load %struct._PDBQuery*, %struct._PDBQuery** %pdb_query, align 8
  %list_of_procs30 = getelementptr inbounds %struct._PDBQuery, %struct._PDBQuery* %55, i32 0, i32 8
  store i8** %54, i8*** %list_of_procs30, align 8
  %56 = load i8*, i8** %proc_name, align 8
  %call31 = call noalias i8* @g_strdup(i8* %56)
  %57 = load %struct._PDBQuery*, %struct._PDBQuery** %pdb_query, align 8
  %num_procs32 = getelementptr inbounds %struct._PDBQuery, %struct._PDBQuery* %57, i32 0, i32 9
  %58 = load i32, i32* %num_procs32, align 4
  %sub = sub nsw i32 %58, 1
  %idxprom = sext i32 %sub to i64
  %59 = load %struct._PDBQuery*, %struct._PDBQuery** %pdb_query, align 8
  %list_of_procs33 = getelementptr inbounds %struct._PDBQuery, %struct._PDBQuery* %59, i32 0, i32 8
  %60 = load i8**, i8*** %list_of_procs33, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %60, i64 %idxprom
  store i8* %call31, i8** %arrayidx, align 8
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.27, %land.lhs.true.24, %land.lhs.true.21, %land.lhs.true.18, %land.lhs.true.15, %land.lhs.true.12, %land.lhs.true, %if.end.3
  call void @gimp_pdb_free_strings(%struct._PDBStrings* %strings)
  br label %return

return:                                           ; preds = %if.end.34, %if.then.2
  ret void
}

declare void @g_regex_unref(%struct._GRegex*) #3

; Function Attrs: nounwind uwtable
define i32 @gimp_pdb_proc_info(%struct._GimpPDB* %pdb, i8* %proc_name, i8** %blurb, i8** %help, i8** %author, i8** %copyright, i8** %date, i32* %proc_type, i32* %num_args, i32* %num_values, %struct._GError** %error) #0 {
entry:
  %retval = alloca i32, align 4
  %pdb.addr = alloca %struct._GimpPDB*, align 8
  %proc_name.addr = alloca i8*, align 8
  %blurb.addr = alloca i8**, align 8
  %help.addr = alloca i8**, align 8
  %author.addr = alloca i8**, align 8
  %copyright.addr = alloca i8**, align 8
  %date.addr = alloca i8**, align 8
  %proc_type.addr = alloca i32*, align 8
  %num_args.addr = alloca i32*, align 8
  %num_values.addr = alloca i32*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %procedure = alloca %struct._GimpProcedure*, align 8
  %strings = alloca %struct._PDBStrings, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %compat_name = alloca i8*, align 8
  store %struct._GimpPDB* %pdb, %struct._GimpPDB** %pdb.addr, align 8
  store i8* %proc_name, i8** %proc_name.addr, align 8
  store i8** %blurb, i8*** %blurb.addr, align 8
  store i8** %help, i8*** %help.addr, align 8
  store i8** %author, i8*** %author.addr, align 8
  store i8** %copyright, i8*** %copyright.addr, align 8
  store i8** %date, i8*** %date.addr, align 8
  store i32* %proc_type, i32** %proc_type.addr, align 8
  store i32* %num_args, i32** %num_args.addr, align 8
  store i32* %num_values, i32** %num_values.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %1 = bitcast %struct._GimpPDB* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_pdb_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gimp_pdb_proc_info, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i8*, i8** %proc_name.addr, align 8
  %cmp12 = icmp ne i8* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gimp_pdb_proc_info, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %14 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %cmp18 = icmp eq %struct._GError** %14, null
  br i1 %cmp18, label %if.then.20, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.17
  %15 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %16 = load %struct._GError*, %struct._GError** %15, align 8
  %cmp19 = icmp eq %struct._GError* %16, null
  br i1 %cmp19, label %if.then.20, label %if.else.21

if.then.20:                                       ; preds = %lor.lhs.false, %do.body.17
  br label %if.end.22

if.else.21:                                       ; preds = %lor.lhs.false
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gimp_pdb_proc_info, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.13, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.22:                                        ; preds = %if.then.20
  br label %do.end.23

do.end.23:                                        ; preds = %if.end.22
  %17 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %18 = load i8*, i8** %proc_name.addr, align 8
  %call24 = call %struct._GimpProcedure* @gimp_pdb_lookup_procedure(%struct._GimpPDB* %17, i8* %18)
  store %struct._GimpProcedure* %call24, %struct._GimpProcedure** %procedure, align 8
  %19 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %tobool25 = icmp ne %struct._GimpProcedure* %19, null
  br i1 %tobool25, label %if.then.26, label %if.else.27

if.then.26:                                       ; preds = %do.end.23
  %20 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_get_strings(%struct._PDBStrings* %strings, %struct._GimpProcedure* %20, i32 0)
  br label %if.end.37

if.else.27:                                       ; preds = %do.end.23
  %21 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %22 = load i8*, i8** %proc_name.addr, align 8
  %call29 = call i8* @gimp_pdb_lookup_compat_proc_name(%struct._GimpPDB* %21, i8* %22)
  store i8* %call29, i8** %compat_name, align 8
  %23 = load i8*, i8** %compat_name, align 8
  %tobool30 = icmp ne i8* %23, null
  br i1 %tobool30, label %if.then.31, label %if.end.36

if.then.31:                                       ; preds = %if.else.27
  %24 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %25 = load i8*, i8** %compat_name, align 8
  %call32 = call %struct._GimpProcedure* @gimp_pdb_lookup_procedure(%struct._GimpPDB* %24, i8* %25)
  store %struct._GimpProcedure* %call32, %struct._GimpProcedure** %procedure, align 8
  %26 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %tobool33 = icmp ne %struct._GimpProcedure* %26, null
  br i1 %tobool33, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %if.then.31
  %27 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_get_strings(%struct._PDBStrings* %strings, %struct._GimpProcedure* %27, i32 1)
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.34, %if.then.31
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %if.else.27
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %if.then.26
  %28 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %tobool38 = icmp ne %struct._GimpProcedure* %28, null
  br i1 %tobool38, label %if.then.39, label %if.end.83

if.then.39:                                       ; preds = %if.end.37
  %compat = getelementptr inbounds %struct._PDBStrings, %struct._PDBStrings* %strings, i32 0, i32 0
  %29 = load i32, i32* %compat, align 4
  %tobool40 = icmp ne i32 %29, 0
  br i1 %tobool40, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.39
  %blurb41 = getelementptr inbounds %struct._PDBStrings, %struct._PDBStrings* %strings, i32 0, i32 1
  %30 = load i8*, i8** %blurb41, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then.39
  %blurb42 = getelementptr inbounds %struct._PDBStrings, %struct._PDBStrings* %strings, i32 0, i32 1
  %31 = load i8*, i8** %blurb42, align 8
  %call43 = call noalias i8* @g_strdup(i8* %31)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %30, %cond.true ], [ %call43, %cond.false ]
  %32 = load i8**, i8*** %blurb.addr, align 8
  store i8* %cond, i8** %32, align 8
  %compat44 = getelementptr inbounds %struct._PDBStrings, %struct._PDBStrings* %strings, i32 0, i32 0
  %33 = load i32, i32* %compat44, align 4
  %tobool45 = icmp ne i32 %33, 0
  br i1 %tobool45, label %cond.true.46, label %cond.false.48

cond.true.46:                                     ; preds = %cond.end
  %help47 = getelementptr inbounds %struct._PDBStrings, %struct._PDBStrings* %strings, i32 0, i32 2
  %34 = load i8*, i8** %help47, align 8
  br label %cond.end.51

cond.false.48:                                    ; preds = %cond.end
  %help49 = getelementptr inbounds %struct._PDBStrings, %struct._PDBStrings* %strings, i32 0, i32 2
  %35 = load i8*, i8** %help49, align 8
  %call50 = call noalias i8* @g_strdup(i8* %35)
  br label %cond.end.51

cond.end.51:                                      ; preds = %cond.false.48, %cond.true.46
  %cond52 = phi i8* [ %34, %cond.true.46 ], [ %call50, %cond.false.48 ]
  %36 = load i8**, i8*** %help.addr, align 8
  store i8* %cond52, i8** %36, align 8
  %compat53 = getelementptr inbounds %struct._PDBStrings, %struct._PDBStrings* %strings, i32 0, i32 0
  %37 = load i32, i32* %compat53, align 4
  %tobool54 = icmp ne i32 %37, 0
  br i1 %tobool54, label %cond.true.55, label %cond.false.57

cond.true.55:                                     ; preds = %cond.end.51
  %author56 = getelementptr inbounds %struct._PDBStrings, %struct._PDBStrings* %strings, i32 0, i32 3
  %38 = load i8*, i8** %author56, align 8
  br label %cond.end.60

cond.false.57:                                    ; preds = %cond.end.51
  %author58 = getelementptr inbounds %struct._PDBStrings, %struct._PDBStrings* %strings, i32 0, i32 3
  %39 = load i8*, i8** %author58, align 8
  %call59 = call noalias i8* @g_strdup(i8* %39)
  br label %cond.end.60

cond.end.60:                                      ; preds = %cond.false.57, %cond.true.55
  %cond61 = phi i8* [ %38, %cond.true.55 ], [ %call59, %cond.false.57 ]
  %40 = load i8**, i8*** %author.addr, align 8
  store i8* %cond61, i8** %40, align 8
  %compat62 = getelementptr inbounds %struct._PDBStrings, %struct._PDBStrings* %strings, i32 0, i32 0
  %41 = load i32, i32* %compat62, align 4
  %tobool63 = icmp ne i32 %41, 0
  br i1 %tobool63, label %cond.true.64, label %cond.false.66

cond.true.64:                                     ; preds = %cond.end.60
  %copyright65 = getelementptr inbounds %struct._PDBStrings, %struct._PDBStrings* %strings, i32 0, i32 4
  %42 = load i8*, i8** %copyright65, align 8
  br label %cond.end.69

cond.false.66:                                    ; preds = %cond.end.60
  %copyright67 = getelementptr inbounds %struct._PDBStrings, %struct._PDBStrings* %strings, i32 0, i32 4
  %43 = load i8*, i8** %copyright67, align 8
  %call68 = call noalias i8* @g_strdup(i8* %43)
  br label %cond.end.69

cond.end.69:                                      ; preds = %cond.false.66, %cond.true.64
  %cond70 = phi i8* [ %42, %cond.true.64 ], [ %call68, %cond.false.66 ]
  %44 = load i8**, i8*** %copyright.addr, align 8
  store i8* %cond70, i8** %44, align 8
  %compat71 = getelementptr inbounds %struct._PDBStrings, %struct._PDBStrings* %strings, i32 0, i32 0
  %45 = load i32, i32* %compat71, align 4
  %tobool72 = icmp ne i32 %45, 0
  br i1 %tobool72, label %cond.true.73, label %cond.false.75

cond.true.73:                                     ; preds = %cond.end.69
  %date74 = getelementptr inbounds %struct._PDBStrings, %struct._PDBStrings* %strings, i32 0, i32 5
  %46 = load i8*, i8** %date74, align 8
  br label %cond.end.78

cond.false.75:                                    ; preds = %cond.end.69
  %date76 = getelementptr inbounds %struct._PDBStrings, %struct._PDBStrings* %strings, i32 0, i32 5
  %47 = load i8*, i8** %date76, align 8
  %call77 = call noalias i8* @g_strdup(i8* %47)
  br label %cond.end.78

cond.end.78:                                      ; preds = %cond.false.75, %cond.true.73
  %cond79 = phi i8* [ %46, %cond.true.73 ], [ %call77, %cond.false.75 ]
  %48 = load i8**, i8*** %date.addr, align 8
  store i8* %cond79, i8** %48, align 8
  %49 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %proc_type80 = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %49, i32 0, i32 1
  %50 = load i32, i32* %proc_type80, align 4
  %51 = load i32*, i32** %proc_type.addr, align 8
  store i32 %50, i32* %51, align 4
  %52 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %num_args81 = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %52, i32 0, i32 10
  %53 = load i32, i32* %num_args81, align 4
  %54 = load i32*, i32** %num_args.addr, align 8
  store i32 %53, i32* %54, align 4
  %55 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %num_values82 = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %55, i32 0, i32 12
  %56 = load i32, i32* %num_values82, align 4
  %57 = load i32*, i32** %num_values.addr, align 8
  store i32 %56, i32* %57, align 4
  store i32 1, i32* %retval
  br label %return

if.end.83:                                        ; preds = %if.end.37
  %58 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call84 = call i32 @gimp_pdb_error_quark() #6
  %call85 = call i8* @gettext(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.15, i32 0, i32 0)) #4
  %59 = load i8*, i8** %proc_name.addr, align 8
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %58, i32 %call84, i32 2, i8* %call85, i8* %59)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.83, %cond.end.78, %if.else.21, %if.else.14, %if.else.9
  %60 = load i32, i32* %retval
  ret i32 %60
}

declare %struct._GimpProcedure* @gimp_pdb_lookup_procedure(%struct._GimpPDB*, i8*) #3

; Function Attrs: nounwind uwtable
define internal void @gimp_pdb_get_strings(%struct._PDBStrings* %strings, %struct._GimpProcedure* %procedure, i32 %compat) #0 {
entry:
  %strings.addr = alloca %struct._PDBStrings*, align 8
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %compat.addr = alloca i32, align 4
  store %struct._PDBStrings* %strings, %struct._PDBStrings** %strings.addr, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store i32 %compat, i32* %compat.addr, align 4
  %0 = load i32, i32* %compat.addr, align 4
  %1 = load %struct._PDBStrings*, %struct._PDBStrings** %strings.addr, align 8
  %compat1 = getelementptr inbounds %struct._PDBStrings, %struct._PDBStrings* %1, i32 0, i32 0
  store i32 %0, i32* %compat1, align 4
  %2 = load i32, i32* %compat.addr, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %4 = bitcast %struct._GimpProcedure* %3 to i8*
  %call = call i8* @gimp_object_get_name(i8* %4)
  %call2 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.35, i32 0, i32 0), i8* %call)
  %5 = load %struct._PDBStrings*, %struct._PDBStrings** %strings.addr, align 8
  %blurb = getelementptr inbounds %struct._PDBStrings, %struct._PDBStrings* %5, i32 0, i32 1
  store i8* %call2, i8** %blurb, align 8
  %6 = load %struct._PDBStrings*, %struct._PDBStrings** %strings.addr, align 8
  %blurb3 = getelementptr inbounds %struct._PDBStrings, %struct._PDBStrings* %6, i32 0, i32 1
  %7 = load i8*, i8** %blurb3, align 8
  %call4 = call noalias i8* @g_strdup(i8* %7)
  %8 = load %struct._PDBStrings*, %struct._PDBStrings** %strings.addr, align 8
  %help = getelementptr inbounds %struct._PDBStrings, %struct._PDBStrings* %8, i32 0, i32 2
  store i8* %call4, i8** %help, align 8
  %9 = load %struct._PDBStrings*, %struct._PDBStrings** %strings.addr, align 8
  %author = getelementptr inbounds %struct._PDBStrings, %struct._PDBStrings* %9, i32 0, i32 3
  store i8* null, i8** %author, align 8
  %10 = load %struct._PDBStrings*, %struct._PDBStrings** %strings.addr, align 8
  %copyright = getelementptr inbounds %struct._PDBStrings, %struct._PDBStrings* %10, i32 0, i32 4
  store i8* null, i8** %copyright, align 8
  %11 = load %struct._PDBStrings*, %struct._PDBStrings** %strings.addr, align 8
  %date = getelementptr inbounds %struct._PDBStrings, %struct._PDBStrings* %11, i32 0, i32 5
  store i8* null, i8** %date, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %12 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %blurb5 = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %12, i32 0, i32 4
  %13 = load i8*, i8** %blurb5, align 8
  %14 = load %struct._PDBStrings*, %struct._PDBStrings** %strings.addr, align 8
  %blurb6 = getelementptr inbounds %struct._PDBStrings, %struct._PDBStrings* %14, i32 0, i32 1
  store i8* %13, i8** %blurb6, align 8
  %15 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %help7 = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %15, i32 0, i32 5
  %16 = load i8*, i8** %help7, align 8
  %17 = load %struct._PDBStrings*, %struct._PDBStrings** %strings.addr, align 8
  %help8 = getelementptr inbounds %struct._PDBStrings, %struct._PDBStrings* %17, i32 0, i32 2
  store i8* %16, i8** %help8, align 8
  %18 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %author9 = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %18, i32 0, i32 6
  %19 = load i8*, i8** %author9, align 8
  %20 = load %struct._PDBStrings*, %struct._PDBStrings** %strings.addr, align 8
  %author10 = getelementptr inbounds %struct._PDBStrings, %struct._PDBStrings* %20, i32 0, i32 3
  store i8* %19, i8** %author10, align 8
  %21 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %copyright11 = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %21, i32 0, i32 7
  %22 = load i8*, i8** %copyright11, align 8
  %23 = load %struct._PDBStrings*, %struct._PDBStrings** %strings.addr, align 8
  %copyright12 = getelementptr inbounds %struct._PDBStrings, %struct._PDBStrings* %23, i32 0, i32 4
  store i8* %22, i8** %copyright12, align 8
  %24 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %date13 = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %24, i32 0, i32 8
  %25 = load i8*, i8** %date13, align 8
  %26 = load %struct._PDBStrings*, %struct._PDBStrings** %strings.addr, align 8
  %date14 = getelementptr inbounds %struct._PDBStrings, %struct._PDBStrings* %26, i32 0, i32 5
  store i8* %25, i8** %date14, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

declare i8* @gimp_pdb_lookup_compat_proc_name(%struct._GimpPDB*, i8*) #3

declare noalias i8* @g_strdup(i8*) #3

declare void @g_set_error(%struct._GError**, i32, i32, i8*, ...) #3

; Function Attrs: nounwind readnone
declare i32 @gimp_pdb_error_quark() #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #5

declare i8* @g_hash_table_lookup(%struct._GHashTable*, i8*) #3

declare i8* @g_type_class_ref(i64) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_pdb_proc_type_get_type() #1

declare %struct._GimpEnumDesc* @gimp_enum_get_desc(%struct._GEnumClass*, i32) #3

declare void @g_type_class_unref(i8*) #3

; Function Attrs: nounwind uwtable
define internal i32 @match_string(%struct._GRegex* %regex, i8* %string) #0 {
entry:
  %regex.addr = alloca %struct._GRegex*, align 8
  %string.addr = alloca i8*, align 8
  store %struct._GRegex* %regex, %struct._GRegex** %regex.addr, align 8
  store i8* %string, i8** %string.addr, align 8
  %0 = load i8*, i8** %string.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.16, i32 0, i32 0), i8** %string.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load %struct._GRegex*, %struct._GRegex** %regex.addr, align 8
  %2 = load i8*, i8** %string.addr, align 8
  %call = call i32 @g_regex_match(%struct._GRegex* %1, i8* %2, i32 0, %struct._GMatchInfo** null)
  ret i32 %call
}

declare i8* @g_realloc_n(i8*, i64, i64) #3

; Function Attrs: nounwind uwtable
define internal void @gimp_pdb_free_strings(%struct._PDBStrings* %strings) #0 {
entry:
  %strings.addr = alloca %struct._PDBStrings*, align 8
  store %struct._PDBStrings* %strings, %struct._PDBStrings** %strings.addr, align 8
  %0 = load %struct._PDBStrings*, %struct._PDBStrings** %strings.addr, align 8
  %compat = getelementptr inbounds %struct._PDBStrings, %struct._PDBStrings* %0, i32 0, i32 0
  %1 = load i32, i32* %compat, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._PDBStrings*, %struct._PDBStrings** %strings.addr, align 8
  %blurb = getelementptr inbounds %struct._PDBStrings, %struct._PDBStrings* %2, i32 0, i32 1
  %3 = load i8*, i8** %blurb, align 8
  call void @g_free(i8* %3)
  %4 = load %struct._PDBStrings*, %struct._PDBStrings** %strings.addr, align 8
  %help = getelementptr inbounds %struct._PDBStrings, %struct._PDBStrings* %4, i32 0, i32 2
  %5 = load i8*, i8** %help, align 8
  call void @g_free(i8* %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare i32 @g_regex_match(%struct._GRegex*, i8*, i32, %struct._GMatchInfo**) #3

declare void @g_free(i8*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_pdb_arg_type_get_type() #1

declare %struct._GString* @g_string_new(i8*) #3

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #3

declare void @g_string_printf(%struct._GString*, i8*, ...) #3

; Function Attrs: nounwind uwtable
define internal i32 @output_string(%struct._IO_FILE* %file, i8* %string) #0 {
entry:
  %retval = alloca i32, align 4
  %file.addr = alloca %struct._IO_FILE*, align 8
  %string.addr = alloca i8*, align 8
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8
  store i8* %string, i8** %string.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i32 0, i32 0))
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %string.addr, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.then.1, label %if.end.38

if.then.1:                                        ; preds = %if.end
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %if.then.1
  %2 = load i8*, i8** %string.addr, align 8
  %3 = load i8, i8* %2, align 1
  %tobool2 = icmp ne i8 %3, 0
  br i1 %tobool2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i8*, i8** %string.addr, align 8
  %5 = load i8, i8* %4, align 1
  %conv = sext i8 %5 to i32
  switch i32 %conv, label %sw.default [
    i32 92, label %sw.bb
    i32 34, label %sw.bb.8
    i32 123, label %sw.bb.14
    i32 64, label %sw.bb.20
    i32 125, label %sw.bb.26
  ]

sw.bb:                                            ; preds = %while.body
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i32 0, i32 0))
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %sw.bb
  store i32 0, i32* %retval
  br label %return

if.end.7:                                         ; preds = %sw.bb
  br label %sw.epilog

sw.bb.8:                                          ; preds = %while.body
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.29, i32 0, i32 0))
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %sw.bb.8
  store i32 0, i32* %retval
  br label %return

if.end.13:                                        ; preds = %sw.bb.8
  br label %sw.epilog

sw.bb.14:                                         ; preds = %while.body
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i32 0, i32 0))
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %sw.bb.14
  store i32 0, i32* %retval
  br label %return

if.end.19:                                        ; preds = %sw.bb.14
  br label %sw.epilog

sw.bb.20:                                         ; preds = %while.body
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.31, i32 0, i32 0))
  %cmp22 = icmp slt i32 %call21, 0
  br i1 %cmp22, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %sw.bb.20
  store i32 0, i32* %retval
  br label %return

if.end.25:                                        ; preds = %sw.bb.20
  br label %sw.epilog

sw.bb.26:                                         ; preds = %while.body
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call27 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.32, i32 0, i32 0))
  %cmp28 = icmp slt i32 %call27, 0
  br i1 %cmp28, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %sw.bb.26
  store i32 0, i32* %retval
  br label %return

if.end.31:                                        ; preds = %sw.bb.26
  br label %sw.epilog

sw.default:                                       ; preds = %while.body
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %12 = load i8*, i8** %string.addr, align 8
  %13 = load i8, i8* %12, align 1
  %conv32 = sext i8 %13 to i32
  %call33 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.33, i32 0, i32 0), i32 %conv32)
  %cmp34 = icmp slt i32 %call33, 0
  br i1 %cmp34, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %sw.default
  store i32 0, i32* %retval
  br label %return

if.end.37:                                        ; preds = %sw.default
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.37, %if.end.31, %if.end.25, %if.end.19, %if.end.13, %if.end.7
  %14 = load i8*, i8** %string.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr, i8** %string.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.38

if.end.38:                                        ; preds = %while.end, %if.end
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call39 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34, i32 0, i32 0))
  %cmp40 = icmp slt i32 %call39, 0
  br i1 %cmp40, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %if.end.38
  store i32 0, i32* %retval
  br label %return

if.end.43:                                        ; preds = %if.end.38
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.43, %if.then.42, %if.then.36, %if.then.30, %if.then.24, %if.then.18, %if.then.12, %if.then.6, %if.then
  %16 = load i32, i32* %retval
  ret i32 %16
}

declare i8* @gimp_param_spec_get_desc(%struct._GParamSpec*) #3

declare i32 @gimp_pdb_compat_arg_type_from_gtype(i64) #3

declare %struct._GEnumValue* @g_enum_get_value(%struct._GEnumClass*, i32) #3

declare i8* @g_param_spec_get_name(%struct._GParamSpec*) #3

declare i8* @g_string_free(%struct._GString*, i32) #3

declare noalias i8* @g_strdup_printf(i8*, ...) #3

declare i8* @gimp_object_get_name(i8*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
