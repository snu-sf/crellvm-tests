; ModuleID = './app/pdb/gimprc-cmds.bc'
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
%struct._GimpCoreConfig = type { %struct._GimpBaseConfig, i8*, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, %struct._GimpTemplate*, %struct._GimpGrid*, i32, i64, i32, i32, i8*, i32, i32, i32, i64, %struct._GimpColorConfig*, i32, i32, %struct._GimpRGB, i32 }
%struct._GimpBaseConfig = type { %struct._GObject, i8*, i8*, i32, i64 }
%struct._GimpGrid = type opaque
%struct._GimpColorConfig = type { %struct._GObject, i32, i8*, i8*, i8*, i32, i8*, i32, i32, i8*, i32, %struct._GimpRGB, void ()*, void ()*, void ()*, void ()*, void ()*, void ()*, void ()*, void ()* }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpGui = type { void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*, %struct._GObject*, i32, i8*, i8*)*, void (%struct._Gimp*, %struct._GimpProgress*, i8*, i8*)*, i8* (%struct._Gimp*)*, i8* (%struct._Gimp*, i32, i32*)*, i32 (%struct._Gimp*)*, i8* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*, i32)*, i32 (%struct._GimpObject*)*, i32 (%struct._GimpObject*)*, %struct._GimpObject* (%struct._Gimp*, %struct._GimpImage*, i32, double)*, void (%struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpImage*, %struct._GimpImage*)*, %struct._GimpProgress* (%struct._Gimp*, %struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpProgress*)*, i32 (%struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GimpContainer*, i8*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*)*, i32 (%struct._Gimp*, i8*, i8*)*, void (%struct._Gimp*)* }
%struct._GimpProgress = type opaque
%struct._GimpImage = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GimpParasiteList = type opaque
%struct._GimpPaintInfo = type opaque
%struct._GimpModuleDB = type { %struct._GObject, %struct._GList*, i8*, i32 }
%struct._GimpPlugInManager = type opaque
%struct._GimpIdTable = type opaque
%struct._GimpBuffer = type opaque
%struct._GimpDataFactory = type opaque
%struct._GimpTagCache = type opaque
%struct._GimpToolInfo = type opaque
%struct._GimpContainer = type opaque
%struct._GimpTemplate = type { %struct._GimpViewable }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpContext = type opaque
%struct._GHashTable = type opaque
%struct._GimpProcedure = type { %struct._GimpObject, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, %struct._GParamSpec**, i32, %struct._GParamSpec**, %struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* }
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
%struct._GValueArray = type { i32, %struct._GValue*, i32 }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GError = type { i32, i32, i8* }
%struct._GimpRc = type { %struct._GimpPluginConfig, i8*, i8*, i32, i32, i32 }
%struct._GimpPluginConfig = type { %struct._GimpGuiConfig, i8*, i8*, i8*, i8*, i8* }
%struct._GimpGuiConfig = type { %struct._GimpDisplayConfig, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i8*, i8*, i32, i32, i8*, i32, i8*, i32, i8*, i32, i32, i32, i32, i32, i32 }
%struct._GimpDisplayConfig = type { %struct._GimpCoreConfig, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, double, double, i32, i32, %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GimpDisplayOptions = type opaque
%struct._GimpConfig = type opaque

@.str = private unnamed_addr constant [18 x i8] c"gimp-gimprc-query\00", align 1
@.str.1 = private unnamed_addr constant [69 x i8] c"Queries the gimprc file parser for information on a specified token.\00", align 1
@.str.2 = private unnamed_addr constant [572 x i8] c"This procedure is used to locate additional information contained in the gimprc file considered extraneous to the operation of GIMP. Plug-ins that need configuration information can expect it will be stored in the user gimprc file and can use this procedure to retrieve it. This query procedure will return the value associated with the specified token. This corresponds _only_ to entries with the format: (<token> <value>). The value must be a string. Entries not corresponding to this format will cause warnings to be issued on gimprc parsing and will not be queryable.\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Spencer Kimball & Peter Mattis\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"1997\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"token\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"The token to query for\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"value\00", align 1
@.str.8 = private unnamed_addr constant [44 x i8] c"The value associated with the queried token\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"gimp-gimprc-set\00", align 1
@.str.10 = private unnamed_addr constant [59 x i8] c"Sets a gimprc token to a value and saves it in the gimprc.\00", align 1
@.str.11 = private unnamed_addr constant [315 x i8] c"This procedure is used to add or change additional information in the gimprc file that is considered extraneous to the operation of GIMP. Plug-ins that need configuration information can use this function to store it, and 'gimp-gimprc-query' to retrieve it. This will accept _only_ string values in UTF-8 encoding.\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"Seth Burgess\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"1999\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"The token to add or modify\00", align 1
@.str.15 = private unnamed_addr constant [30 x i8] c"The value to set the token to\00", align 1
@.str.16 = private unnamed_addr constant [25 x i8] c"gimp-get-default-comment\00", align 1
@.str.17 = private unnamed_addr constant [63 x i8] c"Get the default image comment as specified in the Preferences.\00", align 1
@.str.18 = private unnamed_addr constant [45 x i8] c"Returns a copy of the default image comment.\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"1995-1996\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"comment\00", align 1
@.str.21 = private unnamed_addr constant [22 x i8] c"Default image comment\00", align 1
@.str.22 = private unnamed_addr constant [22 x i8] c"gimp-get-default-unit\00", align 1
@.str.23 = private unnamed_addr constant [53 x i8] c"Get the default unit (taken from the user's locale).\00", align 1
@.str.24 = private unnamed_addr constant [39 x i8] c"Returns the default unit's integer ID.\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"unit-id\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"unit id\00", align 1
@.str.27 = private unnamed_addr constant [13 x i8] c"Default unit\00", align 1
@.str.28 = private unnamed_addr constant [28 x i8] c"gimp-get-monitor-resolution\00", align 1
@.str.29 = private unnamed_addr constant [60 x i8] c"Get the monitor resolution as specified in the Preferences.\00", align 1
@.str.30 = private unnamed_addr constant [212 x i8] c"Returns the resolution of the monitor in pixels/inch. This value is taken from the Preferences (or the windowing system if this is set in the Preferences) and there's no guarantee for the value to be reasonable.\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"xres\00", align 1
@.str.32 = private unnamed_addr constant [13 x i8] c"X resolution\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"yres\00", align 1
@.str.34 = private unnamed_addr constant [13 x i8] c"Y resolution\00", align 1
@.str.35 = private unnamed_addr constant [19 x i8] c"gimp-get-theme-dir\00", align 1
@.str.36 = private unnamed_addr constant [44 x i8] c"Get the directory of the current GUI theme.\00", align 1
@.str.37 = private unnamed_addr constant [45 x i8] c"Returns a copy of the current GUI theme dir.\00", align 1
@.str.38 = private unnamed_addr constant [10 x i8] c"theme-dir\00", align 1
@.str.39 = private unnamed_addr constant [10 x i8] c"theme dir\00", align 1
@.str.40 = private unnamed_addr constant [18 x i8] c"The GUI theme dir\00", align 1
@.str.41 = private unnamed_addr constant [29 x i8] c"gimp-get-color-configuration\00", align 1
@.str.42 = private unnamed_addr constant [64 x i8] c"Get a serialized version of the color management configuration.\00", align 1
@.str.43 = private unnamed_addr constant [129 x i8] c"Returns a string that can be deserialized into a GimpColorConfig object representing the current color management configuration.\00", align 1
@.str.44 = private unnamed_addr constant [29 x i8] c"Sven Neumann <sven@gimp.org>\00", align 1
@.str.45 = private unnamed_addr constant [13 x i8] c"Sven Neumann\00", align 1
@.str.46 = private unnamed_addr constant [5 x i8] c"2005\00", align 1
@.str.47 = private unnamed_addr constant [7 x i8] c"config\00", align 1
@.str.48 = private unnamed_addr constant [42 x i8] c"Serialized color management configuration\00", align 1
@.str.49 = private unnamed_addr constant [29 x i8] c"gimp-get-module-load-inhibit\00", align 1
@.str.50 = private unnamed_addr constant [52 x i8] c"Get the list of modules which should not be loaded.\00", align 1
@.str.51 = private unnamed_addr constant [66 x i8] c"Returns a copy of the list of modules which should not be loaded.\00", align 1
@.str.52 = private unnamed_addr constant [13 x i8] c"load-inhibit\00", align 1
@.str.53 = private unnamed_addr constant [13 x i8] c"load inhibit\00", align 1
@.str.54 = private unnamed_addr constant [20 x i8] c"The list of modules\00", align 1

; Function Attrs: nounwind uwtable
define void @register_gimprc_procs(%struct._GimpPDB* %pdb) #0 {
entry:
  %pdb.addr = alloca %struct._GimpPDB*, align 8
  %procedure = alloca %struct._GimpProcedure*, align 8
  store %struct._GimpPDB* %pdb, %struct._GimpPDB** %pdb.addr, align 8
  %call = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @gimprc_query_invoker)
  store %struct._GimpProcedure* %call, %struct._GimpProcedure** %procedure, align 8
  %0 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %1 = bitcast %struct._GimpProcedure* %0 to %struct._GTypeInstance*
  %call1 = call i64 @gimp_object_get_type() #4
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call1)
  %2 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %2, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0))
  %3 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %3, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([572 x i8], [572 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* null)
  %4 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call3 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i32 0, i32 0), i32 0, i32 0, i32 0, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %4, %struct._GParamSpec* %call3)
  %5 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call4 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.8, i32 0, i32 0), i32 0, i32 0, i32 0, i8* null, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %5, %struct._GParamSpec* %call4)
  %6 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %7 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %6, %struct._GimpProcedure* %7)
  %8 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %9 = bitcast %struct._GimpProcedure* %8 to i8*
  call void @g_object_unref(i8* %9)
  %call5 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @gimprc_set_invoker)
  store %struct._GimpProcedure* %call5, %struct._GimpProcedure** %procedure, align 8
  %10 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %11 = bitcast %struct._GimpProcedure* %10 to %struct._GTypeInstance*
  %call6 = call i64 @gimp_object_get_type() #4
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call6)
  %12 = bitcast %struct._GTypeInstance* %call7 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %12, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i32 0, i32 0))
  %13 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %13, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([315 x i8], [315 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), i8* null)
  %14 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call8 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.14, i32 0, i32 0), i32 0, i32 0, i32 0, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %14, %struct._GParamSpec* %call8)
  %15 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call9 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.15, i32 0, i32 0), i32 0, i32 0, i32 0, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %15, %struct._GParamSpec* %call9)
  %16 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %17 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %16, %struct._GimpProcedure* %17)
  %18 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %19 = bitcast %struct._GimpProcedure* %18 to i8*
  call void @g_object_unref(i8* %19)
  %call10 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @get_default_comment_invoker)
  store %struct._GimpProcedure* %call10, %struct._GimpProcedure** %procedure, align 8
  %20 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %21 = bitcast %struct._GimpProcedure* %20 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_object_get_type() #4
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call11)
  %22 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %22, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i32 0, i32 0))
  %23 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %23, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i32 0), i8* null)
  %24 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call13 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.21, i32 0, i32 0), i32 0, i32 0, i32 0, i8* null, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %24, %struct._GParamSpec* %call13)
  %25 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %26 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %25, %struct._GimpProcedure* %26)
  %27 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %28 = bitcast %struct._GimpProcedure* %27 to i8*
  call void @g_object_unref(i8* %28)
  %call14 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @get_default_unit_invoker)
  store %struct._GimpProcedure* %call14, %struct._GimpProcedure** %procedure, align 8
  %29 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %30 = bitcast %struct._GimpProcedure* %29 to %struct._GTypeInstance*
  %call15 = call i64 @gimp_object_get_type() #4
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call15)
  %31 = bitcast %struct._GTypeInstance* %call16 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %31, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.22, i32 0, i32 0))
  %32 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %32, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i32 0), i8* null)
  %33 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call17 = call %struct._GParamSpec* @gimp_param_spec_unit(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.27, i32 0, i32 0), i32 1, i32 0, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %33, %struct._GParamSpec* %call17)
  %34 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %35 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %34, %struct._GimpProcedure* %35)
  %36 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %37 = bitcast %struct._GimpProcedure* %36 to i8*
  call void @g_object_unref(i8* %37)
  %call18 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @get_monitor_resolution_invoker)
  store %struct._GimpProcedure* %call18, %struct._GimpProcedure** %procedure, align 8
  %38 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %39 = bitcast %struct._GimpProcedure* %38 to %struct._GTypeInstance*
  %call19 = call i64 @gimp_object_get_type() #4
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %39, i64 %call19)
  %40 = bitcast %struct._GTypeInstance* %call20 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %40, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.28, i32 0, i32 0))
  %41 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %41, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([212 x i8], [212 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i32 0), i8* null)
  %42 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call21 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.32, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %42, %struct._GParamSpec* %call21)
  %43 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call22 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.34, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %43, %struct._GParamSpec* %call22)
  %44 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %45 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %44, %struct._GimpProcedure* %45)
  %46 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %47 = bitcast %struct._GimpProcedure* %46 to i8*
  call void @g_object_unref(i8* %47)
  %call23 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @get_theme_dir_invoker)
  store %struct._GimpProcedure* %call23, %struct._GimpProcedure** %procedure, align 8
  %48 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %49 = bitcast %struct._GimpProcedure* %48 to %struct._GTypeInstance*
  %call24 = call i64 @gimp_object_get_type() #4
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %49, i64 %call24)
  %50 = bitcast %struct._GTypeInstance* %call25 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %50, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.35, i32 0, i32 0))
  %51 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %51, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i32 0), i8* null)
  %52 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call26 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.40, i32 0, i32 0), i32 0, i32 0, i32 0, i8* null, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %52, %struct._GParamSpec* %call26)
  %53 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %54 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %53, %struct._GimpProcedure* %54)
  %55 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %56 = bitcast %struct._GimpProcedure* %55 to i8*
  call void @g_object_unref(i8* %56)
  %call27 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @get_color_configuration_invoker)
  store %struct._GimpProcedure* %call27, %struct._GimpProcedure** %procedure, align 8
  %57 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %58 = bitcast %struct._GimpProcedure* %57 to %struct._GTypeInstance*
  %call28 = call i64 @gimp_object_get_type() #4
  %call29 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %58, i64 %call28)
  %59 = bitcast %struct._GTypeInstance* %call29 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %59, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.41, i32 0, i32 0))
  %60 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %60, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([129 x i8], [129 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.46, i32 0, i32 0), i8* null)
  %61 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call30 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.48, i32 0, i32 0), i32 0, i32 0, i32 0, i8* null, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %61, %struct._GParamSpec* %call30)
  %62 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %63 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %62, %struct._GimpProcedure* %63)
  %64 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %65 = bitcast %struct._GimpProcedure* %64 to i8*
  call void @g_object_unref(i8* %65)
  %call31 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @get_module_load_inhibit_invoker)
  store %struct._GimpProcedure* %call31, %struct._GimpProcedure** %procedure, align 8
  %66 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %67 = bitcast %struct._GimpProcedure* %66 to %struct._GTypeInstance*
  %call32 = call i64 @gimp_object_get_type() #4
  %call33 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %67, i64 %call32)
  %68 = bitcast %struct._GTypeInstance* %call33 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %68, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.49, i32 0, i32 0))
  %69 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %69, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i32 0), i8* null)
  %70 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call34 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.54, i32 0, i32 0), i32 0, i32 0, i32 0, i8* null, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %70, %struct._GParamSpec* %call34)
  %71 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %72 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %71, %struct._GimpProcedure* %72)
  %73 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %74 = bitcast %struct._GimpProcedure* %73 to i8*
  call void @g_object_unref(i8* %74)
  ret void
}

declare %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)*) #1

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @gimprc_query_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %return_vals = alloca %struct._GValueArray*, align 8
  %token = alloca i8*, align 8
  %value = alloca i8*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store i8* null, i8** %value, align 8
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %call = call i8* @g_value_get_string(%struct._GValue* %arrayidx)
  store i8* %call, i8** %token, align 8
  %2 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end.10

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %token, align 8
  %call1 = call i64 @strlen(i8* %3) #5
  %tobool2 = icmp ne i64 %call1, 0
  br i1 %tobool2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  %4 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %edit_config = getelementptr inbounds %struct._Gimp, %struct._Gimp* %4, i32 0, i32 2
  %5 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %edit_config, align 8
  %6 = bitcast %struct._GimpCoreConfig* %5 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_rc_get_type() #4
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call4)
  %7 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpRc*
  %8 = load i8*, i8** %token, align 8
  %call6 = call i8* @gimp_rc_query(%struct._GimpRc* %7, i8* %8)
  store i8* %call6, i8** %value, align 8
  %9 = load i8*, i8** %value, align 8
  %tobool7 = icmp ne i8* %9, null
  br i1 %tobool7, label %if.end, label %if.then.8

if.then.8:                                        ; preds = %if.then.3
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.8, %if.then.3
  br label %if.end.9

if.else:                                          ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end.9

if.end.9:                                         ; preds = %if.else, %if.end
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.9, %entry
  %10 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %11 = load i32, i32* %success, align 4
  %12 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool11 = icmp ne %struct._GError** %12, null
  br i1 %tobool11, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.10
  %13 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %14 = load %struct._GError*, %struct._GError** %13, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.10
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %14, %cond.true ], [ null, %cond.false ]
  %call12 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %10, i32 %11, %struct._GError* %cond)
  store %struct._GValueArray* %call12, %struct._GValueArray** %return_vals, align 8
  %15 = load i32, i32* %success, align 4
  %tobool13 = icmp ne i32 %15, 0
  br i1 %tobool13, label %if.then.14, label %if.end.17

if.then.14:                                       ; preds = %cond.end
  %16 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values15 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %16, i32 0, i32 1
  %17 = load %struct._GValue*, %struct._GValue** %values15, align 8
  %arrayidx16 = getelementptr inbounds %struct._GValue, %struct._GValue* %17, i64 1
  %18 = load i8*, i8** %value, align 8
  call void @g_value_take_string(%struct._GValue* %arrayidx16, i8* %18)
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.14, %cond.end
  %19 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %19
}

declare void @gimp_object_set_static_name(%struct._GimpObject*, i8*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #2

declare void @gimp_procedure_set_static_strings(%struct._GimpProcedure*, i8*, i8*, i8*, i8*, i8*, i8*, i8*) #1

declare void @gimp_procedure_add_argument(%struct._GimpProcedure*, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @gimp_param_spec_string(i8*, i8*, i8*, i32, i32, i32, i8*, i32) #1

declare void @gimp_procedure_add_return_value(%struct._GimpProcedure*, %struct._GParamSpec*) #1

declare void @gimp_pdb_register_procedure(%struct._GimpPDB*, %struct._GimpProcedure*) #1

declare void @g_object_unref(i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @gimprc_set_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %token = alloca i8*, align 8
  %value = alloca i8*, align 8
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
  store i8* %call, i8** %token, align 8
  %2 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %2, i32 0, i32 1
  %3 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %3, i64 1
  %call3 = call i8* @g_value_get_string(%struct._GValue* %arrayidx2)
  store i8* %call3, i8** %value, align 8
  %4 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.end.9

if.then:                                          ; preds = %entry
  %5 = load i8*, i8** %token, align 8
  %call4 = call i64 @strlen(i8* %5) #5
  %tobool5 = icmp ne i64 %call4, 0
  br i1 %tobool5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.then
  %6 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %edit_config = getelementptr inbounds %struct._Gimp, %struct._Gimp* %6, i32 0, i32 2
  %7 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %edit_config, align 8
  %8 = bitcast %struct._GimpCoreConfig* %7 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_rc_get_type() #4
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call7)
  %9 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpRc*
  %10 = load i8*, i8** %token, align 8
  %11 = load i8*, i8** %value, align 8
  call void @gimp_rc_set_unknown_token(%struct._GimpRc* %9, i8* %10, i8* %11)
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.6
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %entry
  %12 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %13 = load i32, i32* %success, align 4
  %14 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool10 = icmp ne %struct._GError** %14, null
  br i1 %tobool10, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.9
  %15 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %16 = load %struct._GError*, %struct._GError** %15, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.9
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %16, %cond.true ], [ null, %cond.false ]
  %call11 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %12, i32 %13, %struct._GError* %cond)
  ret %struct._GValueArray* %call11
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @get_default_comment_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %return_vals = alloca %struct._GValueArray*, align 8
  %comment = alloca i8*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i8* null, i8** %comment, align 8
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %config = getelementptr inbounds %struct._Gimp, %struct._Gimp* %0, i32 0, i32 1
  %1 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config, align 8
  %default_image = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %1, i32 0, i32 35
  %2 = load %struct._GimpTemplate*, %struct._GimpTemplate** %default_image, align 8
  %call = call i8* @gimp_template_get_comment(%struct._GimpTemplate* %2)
  %call1 = call noalias i8* @g_strdup(i8* %call)
  store i8* %call1, i8** %comment, align 8
  %3 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %call2 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %3, i32 1, %struct._GError* null)
  store %struct._GValueArray* %call2, %struct._GValueArray** %return_vals, align 8
  %4 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %4, i32 0, i32 1
  %5 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %5, i64 1
  %6 = load i8*, i8** %comment, align 8
  call void @g_value_take_string(%struct._GValue* %arrayidx, i8* %6)
  %7 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %7
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @get_default_unit_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %return_vals = alloca %struct._GValueArray*, align 8
  %unit_id = alloca i32, align 4
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 0, i32* %unit_id, align 4
  %call = call i32 @gimp_get_default_unit()
  store i32 %call, i32* %unit_id, align 4
  %0 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %call1 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %0, i32 1, %struct._GError* null)
  store %struct._GValueArray* %call1, %struct._GValueArray** %return_vals, align 8
  %1 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %1, i32 0, i32 1
  %2 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %2, i64 1
  %3 = load i32, i32* %unit_id, align 4
  call void @g_value_set_int(%struct._GValue* %arrayidx, i32 %3)
  %4 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %4
}

declare %struct._GParamSpec* @gimp_param_spec_unit(i8*, i8*, i8*, i32, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @get_monitor_resolution_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %return_vals = alloca %struct._GValueArray*, align 8
  %xres = alloca double, align 8
  %yres = alloca double, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store double 0.000000e+00, double* %xres, align 8
  store double 0.000000e+00, double* %yres, align 8
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %config = getelementptr inbounds %struct._Gimp, %struct._Gimp* %0, i32 0, i32 1
  %1 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config, align 8
  %2 = bitcast %struct._GimpCoreConfig* %1 to %struct._GTypeInstance*
  %call = call i64 @gimp_display_config_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDisplayConfig*
  %monitor_xres = getelementptr inbounds %struct._GimpDisplayConfig, %struct._GimpDisplayConfig* %3, i32 0, i32 16
  %4 = load double, double* %monitor_xres, align 8
  store double %4, double* %xres, align 8
  %5 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %config2 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %5, i32 0, i32 1
  %6 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config2, align 8
  %7 = bitcast %struct._GimpCoreConfig* %6 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_display_config_get_type() #4
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call3)
  %8 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpDisplayConfig*
  %monitor_yres = getelementptr inbounds %struct._GimpDisplayConfig, %struct._GimpDisplayConfig* %8, i32 0, i32 17
  %9 = load double, double* %monitor_yres, align 8
  store double %9, double* %yres, align 8
  %10 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %call5 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %10, i32 1, %struct._GError* null)
  store %struct._GValueArray* %call5, %struct._GValueArray** %return_vals, align 8
  %11 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %11, i32 0, i32 1
  %12 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %12, i64 1
  %13 = load double, double* %xres, align 8
  call void @g_value_set_double(%struct._GValue* %arrayidx, double %13)
  %14 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values6 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %14, i32 0, i32 1
  %15 = load %struct._GValue*, %struct._GValue** %values6, align 8
  %arrayidx7 = getelementptr inbounds %struct._GValue, %struct._GValue* %15, i64 2
  %16 = load double, double* %yres, align 8
  call void @g_value_set_double(%struct._GValue* %arrayidx7, double %16)
  %17 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %17
}

declare %struct._GParamSpec* @g_param_spec_double(i8*, i8*, i8*, double, double, double, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @get_theme_dir_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %return_vals = alloca %struct._GValueArray*, align 8
  %theme_dir = alloca i8*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i8* null, i8** %theme_dir, align 8
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call = call i8* @gimp_get_theme_dir(%struct._Gimp* %0)
  %call1 = call noalias i8* @g_strdup(i8* %call)
  store i8* %call1, i8** %theme_dir, align 8
  %1 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %call2 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %1, i32 1, %struct._GError* null)
  store %struct._GValueArray* %call2, %struct._GValueArray** %return_vals, align 8
  %2 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %2, i32 0, i32 1
  %3 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %3, i64 1
  %4 = load i8*, i8** %theme_dir, align 8
  call void @g_value_take_string(%struct._GValue* %arrayidx, i8* %4)
  %5 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %5
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @get_color_configuration_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %return_vals = alloca %struct._GValueArray*, align 8
  %config = alloca i8*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i8* null, i8** %config, align 8
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %config1 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %0, i32 0, i32 1
  %1 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config1, align 8
  %color_management = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %1, i32 0, i32 46
  %2 = load %struct._GimpColorConfig*, %struct._GimpColorConfig** %color_management, align 8
  %3 = bitcast %struct._GimpColorConfig* %2 to %struct._GTypeInstance*
  %call = call i64 @gimp_config_interface_get_type() #4
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call)
  %4 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpConfig*
  %call3 = call i8* @gimp_config_serialize_to_string(%struct._GimpConfig* %4, i8* null)
  store i8* %call3, i8** %config, align 8
  %5 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %call4 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %5, i32 1, %struct._GError* null)
  store %struct._GValueArray* %call4, %struct._GValueArray** %return_vals, align 8
  %6 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %6, i32 0, i32 1
  %7 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %7, i64 1
  %8 = load i8*, i8** %config, align 8
  call void @g_value_take_string(%struct._GValue* %arrayidx, i8* %8)
  %9 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %9
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @get_module_load_inhibit_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %return_vals = alloca %struct._GValueArray*, align 8
  %load_inhibit = alloca i8*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i8* null, i8** %load_inhibit, align 8
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %module_db = getelementptr inbounds %struct._Gimp, %struct._Gimp* %0, i32 0, i32 23
  %1 = load %struct._GimpModuleDB*, %struct._GimpModuleDB** %module_db, align 8
  %call = call i8* @gimp_module_db_get_load_inhibit(%struct._GimpModuleDB* %1)
  %call1 = call noalias i8* @g_strdup(i8* %call)
  store i8* %call1, i8** %load_inhibit, align 8
  %2 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %call2 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %2, i32 1, %struct._GError* null)
  store %struct._GValueArray* %call2, %struct._GValueArray** %return_vals, align 8
  %3 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %3, i32 0, i32 1
  %4 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %4, i64 1
  %5 = load i8*, i8** %load_inhibit, align 8
  call void @g_value_take_string(%struct._GValue* %arrayidx, i8* %5)
  %6 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %6
}

declare i8* @g_value_get_string(%struct._GValue*) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

declare i8* @gimp_rc_query(%struct._GimpRc*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_rc_get_type() #2

declare %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure*, i32, %struct._GError*) #1

declare void @g_value_take_string(%struct._GValue*, i8*) #1

declare void @gimp_rc_set_unknown_token(%struct._GimpRc*, i8*, i8*) #1

declare noalias i8* @g_strdup(i8*) #1

declare i8* @gimp_template_get_comment(%struct._GimpTemplate*) #1

declare i32 @gimp_get_default_unit() #1

declare void @g_value_set_int(%struct._GValue*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_display_config_get_type() #2

declare void @g_value_set_double(%struct._GValue*, double) #1

declare i8* @gimp_get_theme_dir(%struct._Gimp*) #1

declare i8* @gimp_config_serialize_to_string(%struct._GimpConfig*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_config_interface_get_type() #2

declare i8* @gimp_module_db_get_load_inhibit(%struct._GimpModuleDB*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
