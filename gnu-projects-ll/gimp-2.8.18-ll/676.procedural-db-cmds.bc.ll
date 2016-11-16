; ModuleID = './app/pdb/procedural-db-cmds.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpPDB = type { %struct._GimpObject, %struct._Gimp*, %struct._GHashTable*, %struct._GHashTable* }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GimpObjectPrivate = type opaque
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
%struct._GimpContext = type opaque
%struct._GHashTable = type opaque
%struct._GimpProcedure = type { %struct._GimpObject, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, %struct._GParamSpec**, i32, %struct._GParamSpec**, %struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* }
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
%struct._GValueArray = type { i32, %struct._GValue*, i32 }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GError = type { i32, i32, i8* }
%struct._GimpParamSpecEnum = type { %struct._GParamSpecEnum, %struct._GSList* }
%struct._GParamSpecEnum = type { %struct._GParamSpec, %struct._GEnumClass*, i32 }
%struct._GEnumClass = type { %struct._GTypeClass, i32, i32, i32, %struct._GEnumValue* }
%struct._GEnumValue = type { i32, i8*, i8* }
%struct._GSList = type { i8*, %struct._GSList* }

@.str = private unnamed_addr constant [29 x i8] c"gimp-procedural-db-temp-name\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Generates a unique temporary PDB name.\00", align 1
@.str.2 = private unnamed_addr constant [85 x i8] c"This procedure generates a temporary PDB entry name that is guaranteed to be unique.\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"Andy Thomas\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"1998\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"temp-name\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"temp name\00", align 1
@.str.7 = private unnamed_addr constant [50 x i8] c"A unique temporary name for a temporary PDB entry\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"gimp-procedural-db-dump\00", align 1
@.str.9 = private unnamed_addr constant [54 x i8] c"Dumps the current contents of the procedural database\00", align 1
@.str.10 = private unnamed_addr constant [169 x i8] c"This procedure dumps the contents of the procedural database to the specified file. The file will contain all of the information provided for each registered procedure.\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"Spencer Kimball & Josh MacDonald\00", align 1
@.str.12 = private unnamed_addr constant [48 x i8] c"Spencer Kimball & Josh MacDonald & Peter Mattis\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"1995-1996\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"filename\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"The dump filename\00", align 1
@.str.16 = private unnamed_addr constant [25 x i8] c"gimp-procedural-db-query\00", align 1
@.str.17 = private unnamed_addr constant [84 x i8] c"Queries the procedural database for its contents using regular expression matching.\00", align 1
@.str.18 = private unnamed_addr constant [721 x i8] c"This procedure queries the contents of the procedural database. It is supplied with seven arguments matching procedures on { name, blurb, help, author, copyright, date, procedure type}. This is accomplished using regular expression matching. For instance, to find all procedures with \22jpeg\22 listed in the blurb, all seven arguments can be supplied as \22.*\22, except for the second, which can be supplied as \22.*jpeg.*\22. There are two return arguments for this procedure. The first is the number of procedures matching the query. The second is a concatenated list of procedure names corresponding to those matching the query. If no matching entries are found, then the returned string is NULL and the number of entries is 0.\00", align 1
@.str.19 = private unnamed_addr constant [31 x i8] c"Spencer Kimball & Peter Mattis\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.21 = private unnamed_addr constant [29 x i8] c"The regex for procedure name\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"blurb\00", align 1
@.str.23 = private unnamed_addr constant [30 x i8] c"The regex for procedure blurb\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.25 = private unnamed_addr constant [29 x i8] c"The regex for procedure help\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"author\00", align 1
@.str.27 = private unnamed_addr constant [31 x i8] c"The regex for procedure author\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"copyright\00", align 1
@.str.29 = private unnamed_addr constant [34 x i8] c"The regex for procedure copyright\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"date\00", align 1
@.str.31 = private unnamed_addr constant [29 x i8] c"The regex for procedure date\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"proc-type\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"proc type\00", align 1
@.str.34 = private unnamed_addr constant [117 x i8] c"The regex for procedure type: { 'Internal GIMP procedure', 'GIMP Plug-In', 'GIMP Extension', 'Temporary Procedure' }\00", align 1
@.str.35 = private unnamed_addr constant [12 x i8] c"num-matches\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c"num matches\00", align 1
@.str.37 = private unnamed_addr constant [34 x i8] c"The number of matching procedures\00", align 1
@.str.38 = private unnamed_addr constant [16 x i8] c"procedure-names\00", align 1
@.str.39 = private unnamed_addr constant [16 x i8] c"procedure names\00", align 1
@.str.40 = private unnamed_addr constant [28 x i8] c"The list of procedure names\00", align 1
@.str.41 = private unnamed_addr constant [31 x i8] c"gimp-procedural-db-proc-exists\00", align 1
@.str.42 = private unnamed_addr constant [68 x i8] c"Checks if the specified procedure exists in the procedural database\00", align 1
@.str.43 = private unnamed_addr constant [91 x i8] c"This procedure checks if the specified procedure is registered in the procedural database.\00", align 1
@.str.44 = private unnamed_addr constant [29 x i8] c"Sven Neumann <sven@gimp.org>\00", align 1
@.str.45 = private unnamed_addr constant [13 x i8] c"Sven Neumann\00", align 1
@.str.46 = private unnamed_addr constant [5 x i8] c"2008\00", align 1
@.str.47 = private unnamed_addr constant [15 x i8] c"procedure-name\00", align 1
@.str.48 = private unnamed_addr constant [15 x i8] c"procedure name\00", align 1
@.str.49 = private unnamed_addr constant [19 x i8] c"The procedure name\00", align 1
@.str.50 = private unnamed_addr constant [7 x i8] c"exists\00", align 1
@.str.51 = private unnamed_addr constant [47 x i8] c"Whether a procedure of that name is registered\00", align 1
@.str.52 = private unnamed_addr constant [29 x i8] c"gimp-procedural-db-proc-info\00", align 1
@.str.53 = private unnamed_addr constant [76 x i8] c"Queries the procedural database for information on the specified procedure.\00", align 1
@.str.54 = private unnamed_addr constant [352 x i8] c"This procedure returns information on the specified procedure. A short blurb, detailed help, author(s), copyright information, procedure type, number of input, and number of return values are returned. For specific information on each input argument and return value, use the 'gimp-procedural-db-proc-arg' and 'gimp-procedural-db-proc-val' procedures.\00", align 1
@.str.55 = private unnamed_addr constant [5 x i8] c"1997\00", align 1
@.str.56 = private unnamed_addr constant [14 x i8] c"A short blurb\00", align 1
@.str.57 = private unnamed_addr constant [24 x i8] c"Detailed procedure help\00", align 1
@.str.58 = private unnamed_addr constant [27 x i8] c"Author(s) of the procedure\00", align 1
@.str.59 = private unnamed_addr constant [14 x i8] c"The copyright\00", align 1
@.str.60 = private unnamed_addr constant [15 x i8] c"Copyright date\00", align 1
@.str.61 = private unnamed_addr constant [19 x i8] c"The procedure type\00", align 1
@.str.62 = private unnamed_addr constant [9 x i8] c"num-args\00", align 1
@.str.63 = private unnamed_addr constant [9 x i8] c"num args\00", align 1
@.str.64 = private unnamed_addr constant [30 x i8] c"The number of input arguments\00", align 1
@.str.65 = private unnamed_addr constant [11 x i8] c"num-values\00", align 1
@.str.66 = private unnamed_addr constant [11 x i8] c"num values\00", align 1
@.str.67 = private unnamed_addr constant [28 x i8] c"The number of return values\00", align 1
@.str.68 = private unnamed_addr constant [28 x i8] c"gimp-procedural-db-proc-arg\00", align 1
@.str.69 = private unnamed_addr constant [87 x i8] c"Queries the procedural database for information on the specified procedure's argument.\00", align 1
@.str.70 = private unnamed_addr constant [132 x i8] c"This procedure returns information on the specified procedure's argument. The argument type, name, and a description are retrieved.\00", align 1
@.str.71 = private unnamed_addr constant [8 x i8] c"arg-num\00", align 1
@.str.72 = private unnamed_addr constant [8 x i8] c"arg num\00", align 1
@.str.73 = private unnamed_addr constant [20 x i8] c"The argument number\00", align 1
@.str.74 = private unnamed_addr constant [9 x i8] c"arg-type\00", align 1
@.str.75 = private unnamed_addr constant [9 x i8] c"arg type\00", align 1
@.str.76 = private unnamed_addr constant [21 x i8] c"The type of argument\00", align 1
@.str.77 = private unnamed_addr constant [9 x i8] c"arg-name\00", align 1
@.str.78 = private unnamed_addr constant [9 x i8] c"arg name\00", align 1
@.str.79 = private unnamed_addr constant [25 x i8] c"The name of the argument\00", align 1
@.str.80 = private unnamed_addr constant [9 x i8] c"arg-desc\00", align 1
@.str.81 = private unnamed_addr constant [9 x i8] c"arg desc\00", align 1
@.str.82 = private unnamed_addr constant [30 x i8] c"A description of the argument\00", align 1
@.str.83 = private unnamed_addr constant [28 x i8] c"gimp-procedural-db-proc-val\00", align 1
@.str.84 = private unnamed_addr constant [91 x i8] c"Queries the procedural database for information on the specified procedure's return value.\00", align 1
@.str.85 = private unnamed_addr constant [140 x i8] c"This procedure returns information on the specified procedure's return value. The return value type, name, and a description are retrieved.\00", align 1
@.str.86 = private unnamed_addr constant [8 x i8] c"val-num\00", align 1
@.str.87 = private unnamed_addr constant [8 x i8] c"val num\00", align 1
@.str.88 = private unnamed_addr constant [24 x i8] c"The return value number\00", align 1
@.str.89 = private unnamed_addr constant [9 x i8] c"val-type\00", align 1
@.str.90 = private unnamed_addr constant [9 x i8] c"val type\00", align 1
@.str.91 = private unnamed_addr constant [25 x i8] c"The type of return value\00", align 1
@.str.92 = private unnamed_addr constant [9 x i8] c"val-name\00", align 1
@.str.93 = private unnamed_addr constant [9 x i8] c"val name\00", align 1
@.str.94 = private unnamed_addr constant [29 x i8] c"The name of the return value\00", align 1
@.str.95 = private unnamed_addr constant [9 x i8] c"val-desc\00", align 1
@.str.96 = private unnamed_addr constant [9 x i8] c"val desc\00", align 1
@.str.97 = private unnamed_addr constant [34 x i8] c"A description of the return value\00", align 1
@.str.98 = private unnamed_addr constant [28 x i8] c"gimp-procedural-db-get-data\00", align 1
@.str.99 = private unnamed_addr constant [55 x i8] c"Returns data associated with the specified identifier.\00", align 1
@.str.100 = private unnamed_addr constant [214 x i8] c"This procedure returns any data which may have been associated with the specified identifier. The data is a variable length array of bytes. If no data has been associated with the identifier, an error is returned.\00", align 1
@.str.101 = private unnamed_addr constant [11 x i8] c"identifier\00", align 1
@.str.102 = private unnamed_addr constant [36 x i8] c"The identifier associated with data\00", align 1
@.str.103 = private unnamed_addr constant [6 x i8] c"bytes\00", align 1
@.str.104 = private unnamed_addr constant [32 x i8] c"The number of bytes in the data\00", align 1
@.str.105 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@.str.106 = private unnamed_addr constant [29 x i8] c"A byte array containing data\00", align 1
@.str.107 = private unnamed_addr constant [33 x i8] c"gimp-procedural-db-get-data-size\00", align 1
@.str.108 = private unnamed_addr constant [63 x i8] c"Returns size of data associated with the specified identifier.\00", align 1
@.str.109 = private unnamed_addr constant [180 x i8] c"This procedure returns the size of any data which may have been associated with the specified identifier. If no data has been associated with the identifier, an error is returned.\00", align 1
@.str.110 = private unnamed_addr constant [10 x i8] c"Nick Lamb\00", align 1
@.str.111 = private unnamed_addr constant [28 x i8] c"gimp-procedural-db-set-data\00", align 1
@.str.112 = private unnamed_addr constant [60 x i8] c"Associates the specified identifier with the supplied data.\00", align 1
@.str.113 = private unnamed_addr constant [152 x i8] c"This procedure associates the supplied data with the provided identifier. The data may be subsequently retrieved by a call to 'procedural-db-get-data'.\00", align 1
@procedural_db_temp_name_invoker.proc_number = internal global i32 0, align 4
@.str.114 = private unnamed_addr constant [25 x i8] c"temp-procedure-number-%d\00", align 1

; Function Attrs: nounwind uwtable
define void @register_procedural_db_procs(%struct._GimpPDB* %pdb) #0 {
entry:
  %pdb.addr = alloca %struct._GimpPDB*, align 8
  %procedure = alloca %struct._GimpProcedure*, align 8
  store %struct._GimpPDB* %pdb, %struct._GimpPDB** %pdb.addr, align 8
  %call = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @procedural_db_temp_name_invoker)
  store %struct._GimpProcedure* %call, %struct._GimpProcedure** %procedure, align 8
  %0 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %1 = bitcast %struct._GimpProcedure* %0 to %struct._GTypeInstance*
  %call1 = call i64 @gimp_object_get_type() #3
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call1)
  %2 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %2, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i32 0, i32 0))
  %3 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %3, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* null)
  %4 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call3 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.7, i32 0, i32 0), i32 0, i32 0, i32 0, i8* null, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %4, %struct._GParamSpec* %call3)
  %5 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %6 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %5, %struct._GimpProcedure* %6)
  %7 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %8 = bitcast %struct._GimpProcedure* %7 to i8*
  call void @g_object_unref(i8* %8)
  %call4 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @procedural_db_dump_invoker)
  store %struct._GimpProcedure* %call4, %struct._GimpProcedure** %procedure, align 8
  %9 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %10 = bitcast %struct._GimpProcedure* %9 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_object_get_type() #3
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call5)
  %11 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %11, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i32 0, i32 0))
  %12 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %12, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([169 x i8], [169 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0), i8* null)
  %13 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call7 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i32 0, i32 0), i32 1, i32 0, i32 1, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %13, %struct._GParamSpec* %call7)
  %14 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %15 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %14, %struct._GimpProcedure* %15)
  %16 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %17 = bitcast %struct._GimpProcedure* %16 to i8*
  call void @g_object_unref(i8* %17)
  %call8 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @procedural_db_query_invoker)
  store %struct._GimpProcedure* %call8, %struct._GimpProcedure** %procedure, align 8
  %18 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %19 = bitcast %struct._GimpProcedure* %18 to %struct._GTypeInstance*
  %call9 = call i64 @gimp_object_get_type() #3
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call9)
  %20 = bitcast %struct._GTypeInstance* %call10 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %20, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i32 0, i32 0))
  %21 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %21, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([721 x i8], [721 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0), i8* null)
  %22 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call11 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.21, i32 0, i32 0), i32 1, i32 0, i32 0, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %22, %struct._GParamSpec* %call11)
  %23 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call12 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.23, i32 0, i32 0), i32 1, i32 0, i32 0, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %23, %struct._GParamSpec* %call12)
  %24 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call13 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.25, i32 0, i32 0), i32 1, i32 0, i32 0, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %24, %struct._GParamSpec* %call13)
  %25 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call14 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.27, i32 0, i32 0), i32 1, i32 0, i32 0, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %25, %struct._GParamSpec* %call14)
  %26 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call15 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.29, i32 0, i32 0), i32 1, i32 0, i32 0, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %26, %struct._GParamSpec* %call15)
  %27 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call16 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.31, i32 0, i32 0), i32 1, i32 0, i32 0, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %27, %struct._GParamSpec* %call16)
  %28 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call17 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([117 x i8], [117 x i8]* @.str.34, i32 0, i32 0), i32 1, i32 0, i32 0, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %28, %struct._GParamSpec* %call17)
  %29 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call18 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.37, i32 0, i32 0), i32 0, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %29, %struct._GParamSpec* %call18)
  %30 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call19 = call %struct._GParamSpec* @gimp_param_spec_string_array(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.40, i32 0, i32 0), i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %30, %struct._GParamSpec* %call19)
  %31 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %32 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %31, %struct._GimpProcedure* %32)
  %33 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %34 = bitcast %struct._GimpProcedure* %33 to i8*
  call void @g_object_unref(i8* %34)
  %call20 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @procedural_db_proc_exists_invoker)
  store %struct._GimpProcedure* %call20, %struct._GimpProcedure** %procedure, align 8
  %35 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %36 = bitcast %struct._GimpProcedure* %35 to %struct._GTypeInstance*
  %call21 = call i64 @gimp_object_get_type() #3
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %36, i64 %call21)
  %37 = bitcast %struct._GTypeInstance* %call22 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %37, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.41, i32 0, i32 0))
  %38 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %38, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.46, i32 0, i32 0), i8* null)
  %39 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call23 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.49, i32 0, i32 0), i32 0, i32 0, i32 1, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %39, %struct._GParamSpec* %call23)
  %40 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call24 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.51, i32 0, i32 0), i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %40, %struct._GParamSpec* %call24)
  %41 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %42 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %41, %struct._GimpProcedure* %42)
  %43 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %44 = bitcast %struct._GimpProcedure* %43 to i8*
  call void @g_object_unref(i8* %44)
  %call25 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @procedural_db_proc_info_invoker)
  store %struct._GimpProcedure* %call25, %struct._GimpProcedure** %procedure, align 8
  %45 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %46 = bitcast %struct._GimpProcedure* %45 to %struct._GTypeInstance*
  %call26 = call i64 @gimp_object_get_type() #3
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %46, i64 %call26)
  %47 = bitcast %struct._GTypeInstance* %call27 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %47, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.52, i32 0, i32 0))
  %48 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %48, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([352 x i8], [352 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i32 0, i32 0), i8* null)
  %49 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call28 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.49, i32 0, i32 0), i32 0, i32 0, i32 1, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %49, %struct._GParamSpec* %call28)
  %50 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call29 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.56, i32 0, i32 0), i32 0, i32 0, i32 0, i8* null, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %50, %struct._GParamSpec* %call29)
  %51 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call30 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.57, i32 0, i32 0), i32 0, i32 0, i32 0, i8* null, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %51, %struct._GParamSpec* %call30)
  %52 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call31 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.58, i32 0, i32 0), i32 0, i32 0, i32 0, i8* null, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %52, %struct._GParamSpec* %call31)
  %53 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call32 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.59, i32 0, i32 0), i32 0, i32 0, i32 0, i8* null, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %53, %struct._GParamSpec* %call32)
  %54 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call33 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.60, i32 0, i32 0), i32 0, i32 0, i32 0, i8* null, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %54, %struct._GParamSpec* %call33)
  %55 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call34 = call i64 @gimp_pdb_proc_type_get_type() #3
  %call35 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.61, i32 0, i32 0), i64 %call34, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %55, %struct._GParamSpec* %call35)
  %56 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call36 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.64, i32 0, i32 0), i32 -2147483648, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %56, %struct._GParamSpec* %call36)
  %57 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call37 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.67, i32 0, i32 0), i32 -2147483648, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %57, %struct._GParamSpec* %call37)
  %58 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %59 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %58, %struct._GimpProcedure* %59)
  %60 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %61 = bitcast %struct._GimpProcedure* %60 to i8*
  call void @g_object_unref(i8* %61)
  %call38 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @procedural_db_proc_arg_invoker)
  store %struct._GimpProcedure* %call38, %struct._GimpProcedure** %procedure, align 8
  %62 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %63 = bitcast %struct._GimpProcedure* %62 to %struct._GTypeInstance*
  %call39 = call i64 @gimp_object_get_type() #3
  %call40 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %63, i64 %call39)
  %64 = bitcast %struct._GTypeInstance* %call40 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %64, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.68, i32 0, i32 0))
  %65 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %65, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([132 x i8], [132 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i32 0, i32 0), i8* null)
  %66 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call41 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.49, i32 0, i32 0), i32 0, i32 0, i32 1, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %66, %struct._GParamSpec* %call41)
  %67 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call42 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.72, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.73, i32 0, i32 0), i32 -2147483648, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %67, %struct._GParamSpec* %call42)
  %68 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call43 = call i64 @gimp_pdb_arg_type_get_type() #3
  %call44 = call %struct._GParamSpec* @gimp_param_spec_enum(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.74, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.75, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.76, i32 0, i32 0), i64 %call43, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %68, %struct._GParamSpec* %call44)
  %69 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %values = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %69, i32 0, i32 13
  %70 = load %struct._GParamSpec**, %struct._GParamSpec*** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GParamSpec*, %struct._GParamSpec** %70, i64 0
  %71 = load %struct._GParamSpec*, %struct._GParamSpec** %arrayidx, align 8
  %72 = bitcast %struct._GParamSpec* %71 to %struct._GTypeInstance*
  %call45 = call i64 @gimp_param_enum_get_type() #3
  %call46 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %72, i64 %call45)
  %73 = bitcast %struct._GTypeInstance* %call46 to %struct._GimpParamSpecEnum*
  call void @gimp_param_spec_enum_exclude_value(%struct._GimpParamSpecEnum* %73, i32 22)
  %74 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call47 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.77, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.79, i32 0, i32 0), i32 0, i32 0, i32 0, i8* null, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %74, %struct._GParamSpec* %call47)
  %75 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call48 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.80, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.81, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.82, i32 0, i32 0), i32 0, i32 0, i32 0, i8* null, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %75, %struct._GParamSpec* %call48)
  %76 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %77 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %76, %struct._GimpProcedure* %77)
  %78 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %79 = bitcast %struct._GimpProcedure* %78 to i8*
  call void @g_object_unref(i8* %79)
  %call49 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @procedural_db_proc_val_invoker)
  store %struct._GimpProcedure* %call49, %struct._GimpProcedure** %procedure, align 8
  %80 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %81 = bitcast %struct._GimpProcedure* %80 to %struct._GTypeInstance*
  %call50 = call i64 @gimp_object_get_type() #3
  %call51 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %81, i64 %call50)
  %82 = bitcast %struct._GTypeInstance* %call51 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %82, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.83, i32 0, i32 0))
  %83 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %83, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.83, i32 0, i32 0), i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.84, i32 0, i32 0), i8* getelementptr inbounds ([140 x i8], [140 x i8]* @.str.85, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i32 0, i32 0), i8* null)
  %84 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call52 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.49, i32 0, i32 0), i32 0, i32 0, i32 1, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %84, %struct._GParamSpec* %call52)
  %85 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call53 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.86, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.87, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.88, i32 0, i32 0), i32 -2147483648, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %85, %struct._GParamSpec* %call53)
  %86 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call54 = call i64 @gimp_pdb_arg_type_get_type() #3
  %call55 = call %struct._GParamSpec* @gimp_param_spec_enum(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.89, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.90, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.91, i32 0, i32 0), i64 %call54, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %86, %struct._GParamSpec* %call55)
  %87 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %values56 = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %87, i32 0, i32 13
  %88 = load %struct._GParamSpec**, %struct._GParamSpec*** %values56, align 8
  %arrayidx57 = getelementptr inbounds %struct._GParamSpec*, %struct._GParamSpec** %88, i64 0
  %89 = load %struct._GParamSpec*, %struct._GParamSpec** %arrayidx57, align 8
  %90 = bitcast %struct._GParamSpec* %89 to %struct._GTypeInstance*
  %call58 = call i64 @gimp_param_enum_get_type() #3
  %call59 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %90, i64 %call58)
  %91 = bitcast %struct._GTypeInstance* %call59 to %struct._GimpParamSpecEnum*
  call void @gimp_param_spec_enum_exclude_value(%struct._GimpParamSpecEnum* %91, i32 22)
  %92 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call60 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.92, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.93, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.94, i32 0, i32 0), i32 0, i32 0, i32 0, i8* null, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %92, %struct._GParamSpec* %call60)
  %93 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call61 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.95, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.96, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.97, i32 0, i32 0), i32 0, i32 0, i32 0, i8* null, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %93, %struct._GParamSpec* %call61)
  %94 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %95 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %94, %struct._GimpProcedure* %95)
  %96 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %97 = bitcast %struct._GimpProcedure* %96 to i8*
  call void @g_object_unref(i8* %97)
  %call62 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @procedural_db_get_data_invoker)
  store %struct._GimpProcedure* %call62, %struct._GimpProcedure** %procedure, align 8
  %98 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %99 = bitcast %struct._GimpProcedure* %98 to %struct._GTypeInstance*
  %call63 = call i64 @gimp_object_get_type() #3
  %call64 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %99, i64 %call63)
  %100 = bitcast %struct._GTypeInstance* %call64 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %100, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.98, i32 0, i32 0))
  %101 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %101, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.98, i32 0, i32 0), i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.99, i32 0, i32 0), i8* getelementptr inbounds ([214 x i8], [214 x i8]* @.str.100, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i32 0, i32 0), i8* null)
  %102 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call65 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.101, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.101, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.102, i32 0, i32 0), i32 0, i32 0, i32 1, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %102, %struct._GParamSpec* %call65)
  %103 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call66 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.103, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.103, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.104, i32 0, i32 0), i32 1, i32 2147483647, i32 1, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %103, %struct._GParamSpec* %call66)
  %104 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call67 = call %struct._GParamSpec* @gimp_param_spec_int8_array(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.105, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.105, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.106, i32 0, i32 0), i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %104, %struct._GParamSpec* %call67)
  %105 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %106 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %105, %struct._GimpProcedure* %106)
  %107 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %108 = bitcast %struct._GimpProcedure* %107 to i8*
  call void @g_object_unref(i8* %108)
  %call68 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @procedural_db_get_data_size_invoker)
  store %struct._GimpProcedure* %call68, %struct._GimpProcedure** %procedure, align 8
  %109 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %110 = bitcast %struct._GimpProcedure* %109 to %struct._GTypeInstance*
  %call69 = call i64 @gimp_object_get_type() #3
  %call70 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %110, i64 %call69)
  %111 = bitcast %struct._GTypeInstance* %call70 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %111, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.107, i32 0, i32 0))
  %112 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %112, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.107, i32 0, i32 0), i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.108, i32 0, i32 0), i8* getelementptr inbounds ([180 x i8], [180 x i8]* @.str.109, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.110, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.110, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* null)
  %113 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call71 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.101, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.101, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.102, i32 0, i32 0), i32 0, i32 0, i32 1, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %113, %struct._GParamSpec* %call71)
  %114 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call72 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.103, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.103, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.104, i32 0, i32 0), i32 1, i32 2147483647, i32 1, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %114, %struct._GParamSpec* %call72)
  %115 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %116 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %115, %struct._GimpProcedure* %116)
  %117 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %118 = bitcast %struct._GimpProcedure* %117 to i8*
  call void @g_object_unref(i8* %118)
  %call73 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @procedural_db_set_data_invoker)
  store %struct._GimpProcedure* %call73, %struct._GimpProcedure** %procedure, align 8
  %119 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %120 = bitcast %struct._GimpProcedure* %119 to %struct._GTypeInstance*
  %call74 = call i64 @gimp_object_get_type() #3
  %call75 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %120, i64 %call74)
  %121 = bitcast %struct._GTypeInstance* %call75 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %121, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.111, i32 0, i32 0))
  %122 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %122, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.111, i32 0, i32 0), i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.112, i32 0, i32 0), i8* getelementptr inbounds ([152 x i8], [152 x i8]* @.str.113, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i32 0, i32 0), i8* null)
  %123 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call76 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.101, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.101, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.102, i32 0, i32 0), i32 0, i32 0, i32 1, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %123, %struct._GParamSpec* %call76)
  %124 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call77 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.103, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.103, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.104, i32 0, i32 0), i32 1, i32 2147483647, i32 1, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %124, %struct._GParamSpec* %call77)
  %125 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call78 = call %struct._GParamSpec* @gimp_param_spec_int8_array(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.105, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.105, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.106, i32 0, i32 0), i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %125, %struct._GParamSpec* %call78)
  %126 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %127 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %126, %struct._GimpProcedure* %127)
  %128 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %129 = bitcast %struct._GimpProcedure* %128 to i8*
  call void @g_object_unref(i8* %129)
  ret void
}

declare %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)*) #1

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @procedural_db_temp_name_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %return_vals = alloca %struct._GValueArray*, align 8
  %temp_name = alloca i8*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i8* null, i8** %temp_name, align 8
  %0 = load i32, i32* @procedural_db_temp_name_invoker.proc_number, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, i32* @procedural_db_temp_name_invoker.proc_number, align 4
  %call = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.114, i32 0, i32 0), i32 %0)
  store i8* %call, i8** %temp_name, align 8
  %1 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %call1 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %1, i32 1, %struct._GError* null)
  store %struct._GValueArray* %call1, %struct._GValueArray** %return_vals, align 8
  %2 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %2, i32 0, i32 1
  %3 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %3, i64 1
  %4 = load i8*, i8** %temp_name, align 8
  call void @g_value_take_string(%struct._GValue* %arrayidx, i8* %4)
  %5 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %5
}

declare void @gimp_object_set_static_name(%struct._GimpObject*, i8*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #2

declare void @gimp_procedure_set_static_strings(%struct._GimpProcedure*, i8*, i8*, i8*, i8*, i8*, i8*, i8*) #1

declare void @gimp_procedure_add_return_value(%struct._GimpProcedure*, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @gimp_param_spec_string(i8*, i8*, i8*, i32, i32, i32, i8*, i32) #1

declare void @gimp_pdb_register_procedure(%struct._GimpPDB*, %struct._GimpProcedure*) #1

declare void @g_object_unref(i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @procedural_db_dump_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %filename = alloca i8*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %call = call i8* @g_value_get_string(%struct._GValue* %arrayidx)
  store i8* %call, i8** %filename, align 8
  %2 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %pdb = getelementptr inbounds %struct._Gimp, %struct._Gimp* %3, i32 0, i32 44
  %4 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb, align 8
  %5 = load i8*, i8** %filename, align 8
  %call1 = call i32 @gimp_pdb_dump(%struct._GimpPDB* %4, i8* %5)
  store i32 %call1, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %7 = load i32, i32* %success, align 4
  %8 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool2 = icmp ne %struct._GError** %8, null
  br i1 %tobool2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %9 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %10 = load %struct._GError*, %struct._GError** %9, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %10, %cond.true ], [ null, %cond.false ]
  %call3 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %6, i32 %7, %struct._GError* %cond)
  ret %struct._GValueArray* %call3
}

declare void @gimp_procedure_add_argument(%struct._GimpProcedure*, %struct._GParamSpec*) #1

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @procedural_db_query_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %return_vals = alloca %struct._GValueArray*, align 8
  %name = alloca i8*, align 8
  %blurb = alloca i8*, align 8
  %help = alloca i8*, align 8
  %author = alloca i8*, align 8
  %copyright = alloca i8*, align 8
  %date = alloca i8*, align 8
  %proc_type = alloca i8*, align 8
  %num_matches = alloca i32, align 4
  %procedure_names = alloca i8**, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store i32 0, i32* %num_matches, align 4
  store i8** null, i8*** %procedure_names, align 8
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %call = call i8* @g_value_get_string(%struct._GValue* %arrayidx)
  store i8* %call, i8** %name, align 8
  %2 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %2, i32 0, i32 1
  %3 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %3, i64 1
  %call3 = call i8* @g_value_get_string(%struct._GValue* %arrayidx2)
  store i8* %call3, i8** %blurb, align 8
  %4 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values4 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %4, i32 0, i32 1
  %5 = load %struct._GValue*, %struct._GValue** %values4, align 8
  %arrayidx5 = getelementptr inbounds %struct._GValue, %struct._GValue* %5, i64 2
  %call6 = call i8* @g_value_get_string(%struct._GValue* %arrayidx5)
  store i8* %call6, i8** %help, align 8
  %6 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values7 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %6, i32 0, i32 1
  %7 = load %struct._GValue*, %struct._GValue** %values7, align 8
  %arrayidx8 = getelementptr inbounds %struct._GValue, %struct._GValue* %7, i64 3
  %call9 = call i8* @g_value_get_string(%struct._GValue* %arrayidx8)
  store i8* %call9, i8** %author, align 8
  %8 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values10 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %8, i32 0, i32 1
  %9 = load %struct._GValue*, %struct._GValue** %values10, align 8
  %arrayidx11 = getelementptr inbounds %struct._GValue, %struct._GValue* %9, i64 4
  %call12 = call i8* @g_value_get_string(%struct._GValue* %arrayidx11)
  store i8* %call12, i8** %copyright, align 8
  %10 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values13 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %10, i32 0, i32 1
  %11 = load %struct._GValue*, %struct._GValue** %values13, align 8
  %arrayidx14 = getelementptr inbounds %struct._GValue, %struct._GValue* %11, i64 5
  %call15 = call i8* @g_value_get_string(%struct._GValue* %arrayidx14)
  store i8* %call15, i8** %date, align 8
  %12 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values16 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %12, i32 0, i32 1
  %13 = load %struct._GValue*, %struct._GValue** %values16, align 8
  %arrayidx17 = getelementptr inbounds %struct._GValue, %struct._GValue* %13, i64 6
  %call18 = call i8* @g_value_get_string(%struct._GValue* %arrayidx17)
  store i8* %call18, i8** %proc_type, align 8
  %14 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %14, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %15 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %pdb = getelementptr inbounds %struct._Gimp, %struct._Gimp* %15, i32 0, i32 44
  %16 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb, align 8
  %17 = load i8*, i8** %name, align 8
  %18 = load i8*, i8** %blurb, align 8
  %19 = load i8*, i8** %help, align 8
  %20 = load i8*, i8** %author, align 8
  %21 = load i8*, i8** %copyright, align 8
  %22 = load i8*, i8** %date, align 8
  %23 = load i8*, i8** %proc_type, align 8
  %24 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call19 = call i32 @gimp_pdb_query(%struct._GimpPDB* %16, i8* %17, i8* %18, i8* %19, i8* %20, i8* %21, i8* %22, i8* %23, i32* %num_matches, i8*** %procedure_names, %struct._GError** %24)
  store i32 %call19, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %25 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %26 = load i32, i32* %success, align 4
  %27 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool20 = icmp ne %struct._GError** %27, null
  br i1 %tobool20, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %28 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %29 = load %struct._GError*, %struct._GError** %28, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %29, %cond.true ], [ null, %cond.false ]
  %call21 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %25, i32 %26, %struct._GError* %cond)
  store %struct._GValueArray* %call21, %struct._GValueArray** %return_vals, align 8
  %30 = load i32, i32* %success, align 4
  %tobool22 = icmp ne i32 %30, 0
  br i1 %tobool22, label %if.then.23, label %if.end.28

if.then.23:                                       ; preds = %cond.end
  %31 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values24 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %31, i32 0, i32 1
  %32 = load %struct._GValue*, %struct._GValue** %values24, align 8
  %arrayidx25 = getelementptr inbounds %struct._GValue, %struct._GValue* %32, i64 1
  %33 = load i32, i32* %num_matches, align 4
  call void @g_value_set_int(%struct._GValue* %arrayidx25, i32 %33)
  %34 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values26 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %34, i32 0, i32 1
  %35 = load %struct._GValue*, %struct._GValue** %values26, align 8
  %arrayidx27 = getelementptr inbounds %struct._GValue, %struct._GValue* %35, i64 2
  %36 = load i8**, i8*** %procedure_names, align 8
  %37 = load i32, i32* %num_matches, align 4
  %conv = sext i32 %37 to i64
  call void @gimp_value_take_stringarray(%struct._GValue* %arrayidx27, i8** %36, i64 %conv)
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.23, %cond.end
  %38 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %38
}

declare %struct._GParamSpec* @gimp_param_spec_int32(i8*, i8*, i8*, i32, i32, i32, i32) #1

declare %struct._GParamSpec* @gimp_param_spec_string_array(i8*, i8*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @procedural_db_proc_exists_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %return_vals = alloca %struct._GValueArray*, align 8
  %procedure_name = alloca i8*, align 8
  %exists = alloca i32, align 4
  %procedure1 = alloca %struct._GimpProcedure*, align 8
  %canonical = alloca i8*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store i32 0, i32* %exists, align 4
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %call = call i8* @g_value_get_string(%struct._GValue* %arrayidx)
  store i8* %call, i8** %procedure_name, align 8
  %2 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end.13

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %procedure_name, align 8
  %call2 = call noalias i8* @gimp_canonicalize_identifier(i8* %3)
  store i8* %call2, i8** %canonical, align 8
  %4 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %pdb = getelementptr inbounds %struct._Gimp, %struct._Gimp* %4, i32 0, i32 44
  %5 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb, align 8
  %6 = load i8*, i8** %canonical, align 8
  %call3 = call %struct._GimpProcedure* @gimp_pdb_lookup_procedure(%struct._GimpPDB* %5, i8* %6)
  store %struct._GimpProcedure* %call3, %struct._GimpProcedure** %procedure1, align 8
  %7 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure1, align 8
  %tobool4 = icmp ne %struct._GimpProcedure* %7, null
  br i1 %tobool4, label %if.end.12, label %if.then.5

if.then.5:                                        ; preds = %if.then
  %8 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %pdb6 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %8, i32 0, i32 44
  %9 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb6, align 8
  %10 = load i8*, i8** %canonical, align 8
  %call7 = call i8* @gimp_pdb_lookup_compat_proc_name(%struct._GimpPDB* %9, i8* %10)
  store i8* %call7, i8** %procedure_name, align 8
  %11 = load i8*, i8** %procedure_name, align 8
  %tobool8 = icmp ne i8* %11, null
  br i1 %tobool8, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %if.then.5
  %12 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %pdb10 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %12, i32 0, i32 44
  %13 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb10, align 8
  %14 = load i8*, i8** %procedure_name, align 8
  %call11 = call %struct._GimpProcedure* @gimp_pdb_lookup_procedure(%struct._GimpPDB* %13, i8* %14)
  store %struct._GimpProcedure* %call11, %struct._GimpProcedure** %procedure1, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.9, %if.then.5
  br label %if.end.12

if.end.12:                                        ; preds = %if.end, %if.then
  %15 = load i8*, i8** %canonical, align 8
  call void @g_free(i8* %15)
  %16 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure1, align 8
  %cmp = icmp ne %struct._GimpProcedure* %16, null
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %exists, align 4
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %entry
  %17 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %18 = load i32, i32* %success, align 4
  %19 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool14 = icmp ne %struct._GError** %19, null
  br i1 %tobool14, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.13
  %20 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %21 = load %struct._GError*, %struct._GError** %20, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.13
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %21, %cond.true ], [ null, %cond.false ]
  %call15 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %17, i32 %18, %struct._GError* %cond)
  store %struct._GValueArray* %call15, %struct._GValueArray** %return_vals, align 8
  %22 = load i32, i32* %success, align 4
  %tobool16 = icmp ne i32 %22, 0
  br i1 %tobool16, label %if.then.17, label %if.end.20

if.then.17:                                       ; preds = %cond.end
  %23 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values18 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %23, i32 0, i32 1
  %24 = load %struct._GValue*, %struct._GValue** %values18, align 8
  %arrayidx19 = getelementptr inbounds %struct._GValue, %struct._GValue* %24, i64 1
  %25 = load i32, i32* %exists, align 4
  call void @g_value_set_boolean(%struct._GValue* %arrayidx19, i32 %25)
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.17, %cond.end
  %26 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %26
}

declare %struct._GParamSpec* @g_param_spec_boolean(i8*, i8*, i8*, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @procedural_db_proc_info_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %return_vals = alloca %struct._GValueArray*, align 8
  %procedure_name = alloca i8*, align 8
  %blurb = alloca i8*, align 8
  %help = alloca i8*, align 8
  %author = alloca i8*, align 8
  %copyright = alloca i8*, align 8
  %date = alloca i8*, align 8
  %proc_type = alloca i32, align 4
  %num_args = alloca i32, align 4
  %num_values = alloca i32, align 4
  %ptype = alloca i32, align 4
  %canonical = alloca i8*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store i8* null, i8** %blurb, align 8
  store i8* null, i8** %help, align 8
  store i8* null, i8** %author, align 8
  store i8* null, i8** %copyright, align 8
  store i8* null, i8** %date, align 8
  store i32 0, i32* %proc_type, align 4
  store i32 0, i32* %num_args, align 4
  store i32 0, i32* %num_values, align 4
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %call = call i8* @g_value_get_string(%struct._GValue* %arrayidx)
  store i8* %call, i8** %procedure_name, align 8
  %2 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %procedure_name, align 8
  %call1 = call noalias i8* @gimp_canonicalize_identifier(i8* %3)
  store i8* %call1, i8** %canonical, align 8
  %4 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %pdb = getelementptr inbounds %struct._Gimp, %struct._Gimp* %4, i32 0, i32 44
  %5 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb, align 8
  %6 = load i8*, i8** %canonical, align 8
  %7 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call2 = call i32 @gimp_pdb_proc_info(%struct._GimpPDB* %5, i8* %6, i8** %blurb, i8** %help, i8** %author, i8** %copyright, i8** %date, i32* %ptype, i32* %num_args, i32* %num_values, %struct._GError** %7)
  store i32 %call2, i32* %success, align 4
  %8 = load i32, i32* %ptype, align 4
  store i32 %8, i32* %proc_type, align 4
  %9 = load i8*, i8** %canonical, align 8
  call void @g_free(i8* %9)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %11 = load i32, i32* %success, align 4
  %12 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool3 = icmp ne %struct._GError** %12, null
  br i1 %tobool3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %13 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %14 = load %struct._GError*, %struct._GError** %13, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %14, %cond.true ], [ null, %cond.false ]
  %call4 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %10, i32 %11, %struct._GError* %cond)
  store %struct._GValueArray* %call4, %struct._GValueArray** %return_vals, align 8
  %15 = load i32, i32* %success, align 4
  %tobool5 = icmp ne i32 %15, 0
  br i1 %tobool5, label %if.then.6, label %if.end.23

if.then.6:                                        ; preds = %cond.end
  %16 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values7 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %16, i32 0, i32 1
  %17 = load %struct._GValue*, %struct._GValue** %values7, align 8
  %arrayidx8 = getelementptr inbounds %struct._GValue, %struct._GValue* %17, i64 1
  %18 = load i8*, i8** %blurb, align 8
  call void @g_value_take_string(%struct._GValue* %arrayidx8, i8* %18)
  %19 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values9 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %19, i32 0, i32 1
  %20 = load %struct._GValue*, %struct._GValue** %values9, align 8
  %arrayidx10 = getelementptr inbounds %struct._GValue, %struct._GValue* %20, i64 2
  %21 = load i8*, i8** %help, align 8
  call void @g_value_take_string(%struct._GValue* %arrayidx10, i8* %21)
  %22 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values11 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %22, i32 0, i32 1
  %23 = load %struct._GValue*, %struct._GValue** %values11, align 8
  %arrayidx12 = getelementptr inbounds %struct._GValue, %struct._GValue* %23, i64 3
  %24 = load i8*, i8** %author, align 8
  call void @g_value_take_string(%struct._GValue* %arrayidx12, i8* %24)
  %25 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values13 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %25, i32 0, i32 1
  %26 = load %struct._GValue*, %struct._GValue** %values13, align 8
  %arrayidx14 = getelementptr inbounds %struct._GValue, %struct._GValue* %26, i64 4
  %27 = load i8*, i8** %copyright, align 8
  call void @g_value_take_string(%struct._GValue* %arrayidx14, i8* %27)
  %28 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values15 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %28, i32 0, i32 1
  %29 = load %struct._GValue*, %struct._GValue** %values15, align 8
  %arrayidx16 = getelementptr inbounds %struct._GValue, %struct._GValue* %29, i64 5
  %30 = load i8*, i8** %date, align 8
  call void @g_value_take_string(%struct._GValue* %arrayidx16, i8* %30)
  %31 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values17 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %31, i32 0, i32 1
  %32 = load %struct._GValue*, %struct._GValue** %values17, align 8
  %arrayidx18 = getelementptr inbounds %struct._GValue, %struct._GValue* %32, i64 6
  %33 = load i32, i32* %proc_type, align 4
  call void @g_value_set_enum(%struct._GValue* %arrayidx18, i32 %33)
  %34 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values19 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %34, i32 0, i32 1
  %35 = load %struct._GValue*, %struct._GValue** %values19, align 8
  %arrayidx20 = getelementptr inbounds %struct._GValue, %struct._GValue* %35, i64 7
  %36 = load i32, i32* %num_args, align 4
  call void @g_value_set_int(%struct._GValue* %arrayidx20, i32 %36)
  %37 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values21 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %37, i32 0, i32 1
  %38 = load %struct._GValue*, %struct._GValue** %values21, align 8
  %arrayidx22 = getelementptr inbounds %struct._GValue, %struct._GValue* %38, i64 8
  %39 = load i32, i32* %num_values, align 4
  call void @g_value_set_int(%struct._GValue* %arrayidx22, i32 %39)
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.6, %cond.end
  %40 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %40
}

declare %struct._GParamSpec* @g_param_spec_enum(i8*, i8*, i8*, i64, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_pdb_proc_type_get_type() #2

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @procedural_db_proc_arg_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %return_vals = alloca %struct._GValueArray*, align 8
  %procedure_name = alloca i8*, align 8
  %arg_num = alloca i32, align 4
  %arg_type = alloca i32, align 4
  %arg_name = alloca i8*, align 8
  %arg_desc = alloca i8*, align 8
  %proc = alloca %struct._GimpProcedure*, align 8
  %canonical = alloca i8*, align 8
  %compat_name = alloca i8*, align 8
  %pspec = alloca %struct._GParamSpec*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store i32 0, i32* %arg_type, align 4
  store i8* null, i8** %arg_name, align 8
  store i8* null, i8** %arg_desc, align 8
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %call = call i8* @g_value_get_string(%struct._GValue* %arrayidx)
  store i8* %call, i8** %procedure_name, align 8
  %2 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %2, i32 0, i32 1
  %3 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %3, i64 1
  %call3 = call i32 @g_value_get_int(%struct._GValue* %arrayidx2)
  store i32 %call3, i32* %arg_num, align 4
  %4 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.end.27

if.then:                                          ; preds = %entry
  %5 = load i8*, i8** %procedure_name, align 8
  %call4 = call noalias i8* @gimp_canonicalize_identifier(i8* %5)
  store i8* %call4, i8** %canonical, align 8
  %6 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %pdb = getelementptr inbounds %struct._Gimp, %struct._Gimp* %6, i32 0, i32 44
  %7 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb, align 8
  %8 = load i8*, i8** %canonical, align 8
  %call5 = call %struct._GimpProcedure* @gimp_pdb_lookup_procedure(%struct._GimpPDB* %7, i8* %8)
  store %struct._GimpProcedure* %call5, %struct._GimpProcedure** %proc, align 8
  %9 = load %struct._GimpProcedure*, %struct._GimpProcedure** %proc, align 8
  %tobool6 = icmp ne %struct._GimpProcedure* %9, null
  br i1 %tobool6, label %if.end.14, label %if.then.7

if.then.7:                                        ; preds = %if.then
  %10 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %pdb8 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %10, i32 0, i32 44
  %11 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb8, align 8
  %12 = load i8*, i8** %canonical, align 8
  %call9 = call i8* @gimp_pdb_lookup_compat_proc_name(%struct._GimpPDB* %11, i8* %12)
  store i8* %call9, i8** %compat_name, align 8
  %13 = load i8*, i8** %compat_name, align 8
  %tobool10 = icmp ne i8* %13, null
  br i1 %tobool10, label %if.then.11, label %if.end

if.then.11:                                       ; preds = %if.then.7
  %14 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %pdb12 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %14, i32 0, i32 44
  %15 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb12, align 8
  %16 = load i8*, i8** %compat_name, align 8
  %call13 = call %struct._GimpProcedure* @gimp_pdb_lookup_procedure(%struct._GimpPDB* %15, i8* %16)
  store %struct._GimpProcedure* %call13, %struct._GimpProcedure** %proc, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.11, %if.then.7
  br label %if.end.14

if.end.14:                                        ; preds = %if.end, %if.then
  %17 = load i8*, i8** %canonical, align 8
  call void @g_free(i8* %17)
  %18 = load %struct._GimpProcedure*, %struct._GimpProcedure** %proc, align 8
  %tobool15 = icmp ne %struct._GimpProcedure* %18, null
  br i1 %tobool15, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end.14
  %19 = load i32, i32* %arg_num, align 4
  %cmp = icmp sge i32 %19, 0
  br i1 %cmp, label %land.lhs.true.16, label %if.else

land.lhs.true.16:                                 ; preds = %land.lhs.true
  %20 = load i32, i32* %arg_num, align 4
  %21 = load %struct._GimpProcedure*, %struct._GimpProcedure** %proc, align 8
  %num_args = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %21, i32 0, i32 10
  %22 = load i32, i32* %num_args, align 4
  %cmp17 = icmp slt i32 %20, %22
  br i1 %cmp17, label %if.then.18, label %if.else

if.then.18:                                       ; preds = %land.lhs.true.16
  %23 = load i32, i32* %arg_num, align 4
  %idxprom = sext i32 %23 to i64
  %24 = load %struct._GimpProcedure*, %struct._GimpProcedure** %proc, align 8
  %args19 = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %24, i32 0, i32 11
  %25 = load %struct._GParamSpec**, %struct._GParamSpec*** %args19, align 8
  %arrayidx20 = getelementptr inbounds %struct._GParamSpec*, %struct._GParamSpec** %25, i64 %idxprom
  %26 = load %struct._GParamSpec*, %struct._GParamSpec** %arrayidx20, align 8
  store %struct._GParamSpec* %26, %struct._GParamSpec** %pspec, align 8
  %27 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec, align 8
  %28 = bitcast %struct._GParamSpec* %27 to %struct._GTypeInstance*
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 76)
  %29 = bitcast %struct._GTypeInstance* %call21 to %struct._GParamSpec*
  %value_type = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %29, i32 0, i32 3
  %30 = load i64, i64* %value_type, align 8
  %call22 = call i32 @gimp_pdb_compat_arg_type_from_gtype(i64 %30)
  store i32 %call22, i32* %arg_type, align 4
  %31 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec, align 8
  %call23 = call i8* @g_param_spec_get_name(%struct._GParamSpec* %31)
  %call24 = call noalias i8* @g_strdup(i8* %call23)
  store i8* %call24, i8** %arg_name, align 8
  %32 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec, align 8
  %call25 = call i8* @gimp_param_spec_get_desc(%struct._GParamSpec* %32)
  store i8* %call25, i8** %arg_desc, align 8
  br label %if.end.26

if.else:                                          ; preds = %land.lhs.true.16, %land.lhs.true, %if.end.14
  store i32 0, i32* %success, align 4
  br label %if.end.26

if.end.26:                                        ; preds = %if.else, %if.then.18
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %entry
  %33 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %34 = load i32, i32* %success, align 4
  %35 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool28 = icmp ne %struct._GError** %35, null
  br i1 %tobool28, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.27
  %36 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %37 = load %struct._GError*, %struct._GError** %36, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.27
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %37, %cond.true ], [ null, %cond.false ]
  %call29 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %33, i32 %34, %struct._GError* %cond)
  store %struct._GValueArray* %call29, %struct._GValueArray** %return_vals, align 8
  %38 = load i32, i32* %success, align 4
  %tobool30 = icmp ne i32 %38, 0
  br i1 %tobool30, label %if.then.31, label %if.end.38

if.then.31:                                       ; preds = %cond.end
  %39 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values32 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %39, i32 0, i32 1
  %40 = load %struct._GValue*, %struct._GValue** %values32, align 8
  %arrayidx33 = getelementptr inbounds %struct._GValue, %struct._GValue* %40, i64 1
  %41 = load i32, i32* %arg_type, align 4
  call void @g_value_set_enum(%struct._GValue* %arrayidx33, i32 %41)
  %42 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values34 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %42, i32 0, i32 1
  %43 = load %struct._GValue*, %struct._GValue** %values34, align 8
  %arrayidx35 = getelementptr inbounds %struct._GValue, %struct._GValue* %43, i64 2
  %44 = load i8*, i8** %arg_name, align 8
  call void @g_value_take_string(%struct._GValue* %arrayidx35, i8* %44)
  %45 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values36 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %45, i32 0, i32 1
  %46 = load %struct._GValue*, %struct._GValue** %values36, align 8
  %arrayidx37 = getelementptr inbounds %struct._GValue, %struct._GValue* %46, i64 3
  %47 = load i8*, i8** %arg_desc, align 8
  call void @g_value_take_string(%struct._GValue* %arrayidx37, i8* %47)
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.31, %cond.end
  %48 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %48
}

declare %struct._GParamSpec* @gimp_param_spec_enum(i8*, i8*, i8*, i64, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_pdb_arg_type_get_type() #2

declare void @gimp_param_spec_enum_exclude_value(%struct._GimpParamSpecEnum*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_param_enum_get_type() #2

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @procedural_db_proc_val_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %return_vals = alloca %struct._GValueArray*, align 8
  %procedure_name = alloca i8*, align 8
  %val_num = alloca i32, align 4
  %val_type = alloca i32, align 4
  %val_name = alloca i8*, align 8
  %val_desc = alloca i8*, align 8
  %proc = alloca %struct._GimpProcedure*, align 8
  %canonical = alloca i8*, align 8
  %compat_name = alloca i8*, align 8
  %pspec = alloca %struct._GParamSpec*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store i32 0, i32* %val_type, align 4
  store i8* null, i8** %val_name, align 8
  store i8* null, i8** %val_desc, align 8
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %call = call i8* @g_value_get_string(%struct._GValue* %arrayidx)
  store i8* %call, i8** %procedure_name, align 8
  %2 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %2, i32 0, i32 1
  %3 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %3, i64 1
  %call3 = call i32 @g_value_get_int(%struct._GValue* %arrayidx2)
  store i32 %call3, i32* %val_num, align 4
  %4 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.end.27

if.then:                                          ; preds = %entry
  %5 = load i8*, i8** %procedure_name, align 8
  %call4 = call noalias i8* @gimp_canonicalize_identifier(i8* %5)
  store i8* %call4, i8** %canonical, align 8
  %6 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %pdb = getelementptr inbounds %struct._Gimp, %struct._Gimp* %6, i32 0, i32 44
  %7 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb, align 8
  %8 = load i8*, i8** %canonical, align 8
  %call5 = call %struct._GimpProcedure* @gimp_pdb_lookup_procedure(%struct._GimpPDB* %7, i8* %8)
  store %struct._GimpProcedure* %call5, %struct._GimpProcedure** %proc, align 8
  %9 = load %struct._GimpProcedure*, %struct._GimpProcedure** %proc, align 8
  %tobool6 = icmp ne %struct._GimpProcedure* %9, null
  br i1 %tobool6, label %if.end.14, label %if.then.7

if.then.7:                                        ; preds = %if.then
  %10 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %pdb8 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %10, i32 0, i32 44
  %11 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb8, align 8
  %12 = load i8*, i8** %canonical, align 8
  %call9 = call i8* @gimp_pdb_lookup_compat_proc_name(%struct._GimpPDB* %11, i8* %12)
  store i8* %call9, i8** %compat_name, align 8
  %13 = load i8*, i8** %compat_name, align 8
  %tobool10 = icmp ne i8* %13, null
  br i1 %tobool10, label %if.then.11, label %if.end

if.then.11:                                       ; preds = %if.then.7
  %14 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %pdb12 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %14, i32 0, i32 44
  %15 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb12, align 8
  %16 = load i8*, i8** %compat_name, align 8
  %call13 = call %struct._GimpProcedure* @gimp_pdb_lookup_procedure(%struct._GimpPDB* %15, i8* %16)
  store %struct._GimpProcedure* %call13, %struct._GimpProcedure** %proc, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.11, %if.then.7
  br label %if.end.14

if.end.14:                                        ; preds = %if.end, %if.then
  %17 = load i8*, i8** %canonical, align 8
  call void @g_free(i8* %17)
  %18 = load %struct._GimpProcedure*, %struct._GimpProcedure** %proc, align 8
  %tobool15 = icmp ne %struct._GimpProcedure* %18, null
  br i1 %tobool15, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end.14
  %19 = load i32, i32* %val_num, align 4
  %cmp = icmp sge i32 %19, 0
  br i1 %cmp, label %land.lhs.true.16, label %if.else

land.lhs.true.16:                                 ; preds = %land.lhs.true
  %20 = load i32, i32* %val_num, align 4
  %21 = load %struct._GimpProcedure*, %struct._GimpProcedure** %proc, align 8
  %num_values = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %21, i32 0, i32 12
  %22 = load i32, i32* %num_values, align 4
  %cmp17 = icmp slt i32 %20, %22
  br i1 %cmp17, label %if.then.18, label %if.else

if.then.18:                                       ; preds = %land.lhs.true.16
  %23 = load i32, i32* %val_num, align 4
  %idxprom = sext i32 %23 to i64
  %24 = load %struct._GimpProcedure*, %struct._GimpProcedure** %proc, align 8
  %values19 = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %24, i32 0, i32 13
  %25 = load %struct._GParamSpec**, %struct._GParamSpec*** %values19, align 8
  %arrayidx20 = getelementptr inbounds %struct._GParamSpec*, %struct._GParamSpec** %25, i64 %idxprom
  %26 = load %struct._GParamSpec*, %struct._GParamSpec** %arrayidx20, align 8
  store %struct._GParamSpec* %26, %struct._GParamSpec** %pspec, align 8
  %27 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec, align 8
  %28 = bitcast %struct._GParamSpec* %27 to %struct._GTypeInstance*
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 76)
  %29 = bitcast %struct._GTypeInstance* %call21 to %struct._GParamSpec*
  %value_type = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %29, i32 0, i32 3
  %30 = load i64, i64* %value_type, align 8
  %call22 = call i32 @gimp_pdb_compat_arg_type_from_gtype(i64 %30)
  store i32 %call22, i32* %val_type, align 4
  %31 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec, align 8
  %call23 = call i8* @g_param_spec_get_name(%struct._GParamSpec* %31)
  %call24 = call noalias i8* @g_strdup(i8* %call23)
  store i8* %call24, i8** %val_name, align 8
  %32 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec, align 8
  %call25 = call i8* @gimp_param_spec_get_desc(%struct._GParamSpec* %32)
  store i8* %call25, i8** %val_desc, align 8
  br label %if.end.26

if.else:                                          ; preds = %land.lhs.true.16, %land.lhs.true, %if.end.14
  store i32 0, i32* %success, align 4
  br label %if.end.26

if.end.26:                                        ; preds = %if.else, %if.then.18
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %entry
  %33 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %34 = load i32, i32* %success, align 4
  %35 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool28 = icmp ne %struct._GError** %35, null
  br i1 %tobool28, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.27
  %36 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %37 = load %struct._GError*, %struct._GError** %36, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.27
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %37, %cond.true ], [ null, %cond.false ]
  %call29 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %33, i32 %34, %struct._GError* %cond)
  store %struct._GValueArray* %call29, %struct._GValueArray** %return_vals, align 8
  %38 = load i32, i32* %success, align 4
  %tobool30 = icmp ne i32 %38, 0
  br i1 %tobool30, label %if.then.31, label %if.end.38

if.then.31:                                       ; preds = %cond.end
  %39 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values32 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %39, i32 0, i32 1
  %40 = load %struct._GValue*, %struct._GValue** %values32, align 8
  %arrayidx33 = getelementptr inbounds %struct._GValue, %struct._GValue* %40, i64 1
  %41 = load i32, i32* %val_type, align 4
  call void @g_value_set_enum(%struct._GValue* %arrayidx33, i32 %41)
  %42 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values34 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %42, i32 0, i32 1
  %43 = load %struct._GValue*, %struct._GValue** %values34, align 8
  %arrayidx35 = getelementptr inbounds %struct._GValue, %struct._GValue* %43, i64 2
  %44 = load i8*, i8** %val_name, align 8
  call void @g_value_take_string(%struct._GValue* %arrayidx35, i8* %44)
  %45 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values36 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %45, i32 0, i32 1
  %46 = load %struct._GValue*, %struct._GValue** %values36, align 8
  %arrayidx37 = getelementptr inbounds %struct._GValue, %struct._GValue* %46, i64 3
  %47 = load i8*, i8** %val_desc, align 8
  call void @g_value_take_string(%struct._GValue* %arrayidx37, i8* %47)
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.31, %cond.end
  %48 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %48
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @procedural_db_get_data_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %return_vals = alloca %struct._GValueArray*, align 8
  %identifier = alloca i8*, align 8
  %bytes = alloca i32, align 4
  %data = alloca i8*, align 8
  %canonical = alloca i8*, align 8
  %orig_data = alloca i8*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store i32 0, i32* %bytes, align 4
  store i8* null, i8** %data, align 8
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %call = call i8* @g_value_get_string(%struct._GValue* %arrayidx)
  store i8* %call, i8** %identifier, align 8
  %2 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end.6

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %identifier, align 8
  %call1 = call noalias i8* @gimp_canonicalize_identifier(i8* %3)
  store i8* %call1, i8** %canonical, align 8
  %4 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %plug_in_manager = getelementptr inbounds %struct._Gimp, %struct._Gimp* %4, i32 0, i32 25
  %5 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %plug_in_manager, align 8
  %6 = load i8*, i8** %canonical, align 8
  %call2 = call i8* @gimp_plug_in_manager_get_data(%struct._GimpPlugInManager* %5, i8* %6, i32* %bytes)
  store i8* %call2, i8** %orig_data, align 8
  %7 = load i8*, i8** %canonical, align 8
  call void @g_free(i8* %7)
  %8 = load i8*, i8** %orig_data, align 8
  %tobool3 = icmp ne i8* %8, null
  br i1 %tobool3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.then
  %9 = load i8*, i8** %orig_data, align 8
  %10 = load i32, i32* %bytes, align 4
  %call5 = call noalias i8* @g_memdup(i8* %9, i32 %10)
  store i8* %call5, i8** %data, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.4
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %entry
  %11 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %12 = load i32, i32* %success, align 4
  %13 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool7 = icmp ne %struct._GError** %13, null
  br i1 %tobool7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.6
  %14 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %15 = load %struct._GError*, %struct._GError** %14, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %15, %cond.true ], [ null, %cond.false ]
  %call8 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %11, i32 %12, %struct._GError* %cond)
  store %struct._GValueArray* %call8, %struct._GValueArray** %return_vals, align 8
  %16 = load i32, i32* %success, align 4
  %tobool9 = icmp ne i32 %16, 0
  br i1 %tobool9, label %if.then.10, label %if.end.15

if.then.10:                                       ; preds = %cond.end
  %17 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values11 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %17, i32 0, i32 1
  %18 = load %struct._GValue*, %struct._GValue** %values11, align 8
  %arrayidx12 = getelementptr inbounds %struct._GValue, %struct._GValue* %18, i64 1
  %19 = load i32, i32* %bytes, align 4
  call void @g_value_set_int(%struct._GValue* %arrayidx12, i32 %19)
  %20 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values13 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %20, i32 0, i32 1
  %21 = load %struct._GValue*, %struct._GValue** %values13, align 8
  %arrayidx14 = getelementptr inbounds %struct._GValue, %struct._GValue* %21, i64 2
  %22 = load i8*, i8** %data, align 8
  %23 = load i32, i32* %bytes, align 4
  %conv = sext i32 %23 to i64
  call void @gimp_value_take_int8array(%struct._GValue* %arrayidx14, i8* %22, i64 %conv)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.10, %cond.end
  %24 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %24
}

declare %struct._GParamSpec* @gimp_param_spec_int8_array(i8*, i8*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @procedural_db_get_data_size_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %return_vals = alloca %struct._GValueArray*, align 8
  %identifier = alloca i8*, align 8
  %bytes = alloca i32, align 4
  %canonical = alloca i8*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store i32 0, i32* %bytes, align 4
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %call = call i8* @g_value_get_string(%struct._GValue* %arrayidx)
  store i8* %call, i8** %identifier, align 8
  %2 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end.5

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %identifier, align 8
  %call1 = call noalias i8* @gimp_canonicalize_identifier(i8* %3)
  store i8* %call1, i8** %canonical, align 8
  %4 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %plug_in_manager = getelementptr inbounds %struct._Gimp, %struct._Gimp* %4, i32 0, i32 25
  %5 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %plug_in_manager, align 8
  %6 = load i8*, i8** %canonical, align 8
  %call2 = call i8* @gimp_plug_in_manager_get_data(%struct._GimpPlugInManager* %5, i8* %6, i32* %bytes)
  %tobool3 = icmp ne i8* %call2, null
  br i1 %tobool3, label %if.end, label %if.then.4

if.then.4:                                        ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.then
  %7 = load i8*, i8** %canonical, align 8
  call void @g_free(i8* %7)
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %entry
  %8 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %9 = load i32, i32* %success, align 4
  %10 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool6 = icmp ne %struct._GError** %10, null
  br i1 %tobool6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.5
  %11 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %12 = load %struct._GError*, %struct._GError** %11, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %12, %cond.true ], [ null, %cond.false ]
  %call7 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %8, i32 %9, %struct._GError* %cond)
  store %struct._GValueArray* %call7, %struct._GValueArray** %return_vals, align 8
  %13 = load i32, i32* %success, align 4
  %tobool8 = icmp ne i32 %13, 0
  br i1 %tobool8, label %if.then.9, label %if.end.12

if.then.9:                                        ; preds = %cond.end
  %14 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values10 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %14, i32 0, i32 1
  %15 = load %struct._GValue*, %struct._GValue** %values10, align 8
  %arrayidx11 = getelementptr inbounds %struct._GValue, %struct._GValue* %15, i64 1
  %16 = load i32, i32* %bytes, align 4
  call void @g_value_set_int(%struct._GValue* %arrayidx11, i32 %16)
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.9, %cond.end
  %17 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %17
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @procedural_db_set_data_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %identifier = alloca i8*, align 8
  %bytes = alloca i32, align 4
  %data = alloca i8*, align 8
  %canonical = alloca i8*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %call = call i8* @g_value_get_string(%struct._GValue* %arrayidx)
  store i8* %call, i8** %identifier, align 8
  %2 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %2, i32 0, i32 1
  %3 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %3, i64 1
  %call3 = call i32 @g_value_get_int(%struct._GValue* %arrayidx2)
  store i32 %call3, i32* %bytes, align 4
  %4 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values4 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %4, i32 0, i32 1
  %5 = load %struct._GValue*, %struct._GValue** %values4, align 8
  %arrayidx5 = getelementptr inbounds %struct._GValue, %struct._GValue* %5, i64 2
  %call6 = call i8* @gimp_value_get_int8array(%struct._GValue* %arrayidx5)
  store i8* %call6, i8** %data, align 8
  %6 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i8*, i8** %identifier, align 8
  %call7 = call noalias i8* @gimp_canonicalize_identifier(i8* %7)
  store i8* %call7, i8** %canonical, align 8
  %8 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %plug_in_manager = getelementptr inbounds %struct._Gimp, %struct._Gimp* %8, i32 0, i32 25
  %9 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %plug_in_manager, align 8
  %10 = load i8*, i8** %canonical, align 8
  %11 = load i32, i32* %bytes, align 4
  %12 = load i8*, i8** %data, align 8
  call void @gimp_plug_in_manager_set_data(%struct._GimpPlugInManager* %9, i8* %10, i32 %11, i8* %12)
  %13 = load i8*, i8** %canonical, align 8
  call void @g_free(i8* %13)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %14 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %15 = load i32, i32* %success, align 4
  %16 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool8 = icmp ne %struct._GError** %16, null
  br i1 %tobool8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %17 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %18 = load %struct._GError*, %struct._GError** %17, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %18, %cond.true ], [ null, %cond.false ]
  %call9 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %14, i32 %15, %struct._GError* %cond)
  ret %struct._GValueArray* %call9
}

declare noalias i8* @g_strdup_printf(i8*, ...) #1

declare %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure*, i32, %struct._GError*) #1

declare void @g_value_take_string(%struct._GValue*, i8*) #1

declare i8* @g_value_get_string(%struct._GValue*) #1

declare i32 @gimp_pdb_dump(%struct._GimpPDB*, i8*) #1

declare i32 @gimp_pdb_query(%struct._GimpPDB*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32*, i8***, %struct._GError**) #1

declare void @g_value_set_int(%struct._GValue*, i32) #1

declare void @gimp_value_take_stringarray(%struct._GValue*, i8**, i64) #1

declare noalias i8* @gimp_canonicalize_identifier(i8*) #1

declare %struct._GimpProcedure* @gimp_pdb_lookup_procedure(%struct._GimpPDB*, i8*) #1

declare i8* @gimp_pdb_lookup_compat_proc_name(%struct._GimpPDB*, i8*) #1

declare void @g_free(i8*) #1

declare void @g_value_set_boolean(%struct._GValue*, i32) #1

declare i32 @gimp_pdb_proc_info(%struct._GimpPDB*, i8*, i8**, i8**, i8**, i8**, i8**, i32*, i32*, i32*, %struct._GError**) #1

declare void @g_value_set_enum(%struct._GValue*, i32) #1

declare i32 @g_value_get_int(%struct._GValue*) #1

declare i32 @gimp_pdb_compat_arg_type_from_gtype(i64) #1

declare noalias i8* @g_strdup(i8*) #1

declare i8* @g_param_spec_get_name(%struct._GParamSpec*) #1

declare i8* @gimp_param_spec_get_desc(%struct._GParamSpec*) #1

declare i8* @gimp_plug_in_manager_get_data(%struct._GimpPlugInManager*, i8*, i32*) #1

declare noalias i8* @g_memdup(i8*, i32) #1

declare void @gimp_value_take_int8array(%struct._GValue*, i8*, i64) #1

declare i8* @gimp_value_get_int8array(%struct._GValue*) #1

declare void @gimp_plug_in_manager_set_data(%struct._GimpPlugInManager*, i8*, i32, i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
