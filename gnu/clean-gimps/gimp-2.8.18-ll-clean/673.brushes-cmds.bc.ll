; ModuleID = './app/pdb/brushes-cmds.bc'
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
%struct._GimpDataFactory = type { %struct._GimpObject, %struct._GimpDataFactoryPriv* }
%struct._GimpDataFactoryPriv = type opaque
%struct._GimpTagCache = type opaque
%struct._GimpToolInfo = type opaque
%struct._GimpContainer = type opaque
%struct._GimpTemplate = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpContext = type { %struct._GimpViewable, %struct._Gimp*, %struct._GimpContext*, i32, i32, %struct._GimpImage*, i8*, %struct._GimpToolInfo*, i8*, %struct._GimpPaintInfo*, i8*, %struct._GimpRGB, %struct._GimpRGB, double, i32, %struct._GimpBrush*, i8*, %struct._GimpDynamics*, i8*, %struct._GimpPattern*, i8*, %struct._GimpGradient*, i8*, %struct._GimpPalette*, i8*, %struct._GimpToolPreset*, i8*, %struct._GimpFont*, i8*, %struct._GimpBuffer*, i8*, %struct._GimpImagefile*, i8*, %struct._GimpTemplate*, i8* }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpBrush = type { %struct._GimpData, %struct._TempBuf*, %struct._TempBuf*, i32, %struct._GimpVector2, %struct._GimpVector2, i32, %struct._GimpBrushCache*, %struct._GimpBrushCache*, %struct._GimpBrushCache* }
%struct._GimpData = type { %struct._GimpViewable }
%struct._TempBuf = type { i32, i32, i32, i32, i32, i8* }
%struct._GimpVector2 = type { double, double }
%struct._GimpBrushCache = type opaque
%struct._GimpDynamics = type opaque
%struct._GimpPattern = type opaque
%struct._GimpGradient = type opaque
%struct._GimpPalette = type opaque
%struct._GimpToolPreset = type opaque
%struct._GimpFont = type opaque
%struct._GimpImagefile = type opaque
%struct._GHashTable = type opaque
%struct._GimpProcedure = type { %struct._GimpObject, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, %struct._GParamSpec**, i32, %struct._GParamSpec**, %struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* }
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
%struct._GValueArray = type { i32, %struct._GValue*, i32 }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GError = type { i32, i32, i8* }

@.str = private unnamed_addr constant [21 x i8] c"gimp-brushes-refresh\00", align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"Refresh current brushes. This function always succeeds.\00", align 1
@.str.2 = private unnamed_addr constant [115 x i8] c"This procedure retrieves all brushes currently in the user's brush path and updates the brush dialogs accordingly.\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"Seth Burgess\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"1997\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"gimp-brushes-get-list\00", align 1
@.str.6 = private unnamed_addr constant [54 x i8] c"Retrieve a complete listing of the available brushes.\00", align 1
@.str.7 = private unnamed_addr constant [152 x i8] c"This procedure returns a complete listing of available GIMP brushes. Each name returned can be used as input to the 'gimp-context-set-brush' procedure.\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"Spencer Kimball & Peter Mattis\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"1995-1996\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"filter\00", align 1
@.str.11 = private unnamed_addr constant [55 x i8] c"An optional regular expression used to filter the list\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"num-brushes\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"num brushes\00", align 1
@.str.14 = private unnamed_addr constant [40 x i8] c"The number of brushes in the brush list\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"brush-list\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"brush list\00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c"The list of brush names\00", align 1
@.str.18 = private unnamed_addr constant [23 x i8] c"gimp-brushes-get-brush\00", align 1
@.str.19 = private unnamed_addr constant [50 x i8] c"Deprecated: Use 'gimp-context-get-brush' instead.\00", align 1
@.str.20 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.21 = private unnamed_addr constant [23 x i8] c"gimp-context-get-brush\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c"The brush name\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"width\00", align 1
@.str.25 = private unnamed_addr constant [16 x i8] c"The brush width\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"height\00", align 1
@.str.27 = private unnamed_addr constant [17 x i8] c"The brush height\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"spacing\00", align 1
@.str.29 = private unnamed_addr constant [18 x i8] c"The brush spacing\00", align 1
@.str.30 = private unnamed_addr constant [25 x i8] c"gimp-brushes-get-spacing\00", align 1
@.str.31 = private unnamed_addr constant [50 x i8] c"Deprecated: Use 'gimp-brush-get-spacing' instead.\00", align 1
@.str.32 = private unnamed_addr constant [23 x i8] c"gimp-brush-get-spacing\00", align 1
@.str.33 = private unnamed_addr constant [25 x i8] c"gimp-brushes-set-spacing\00", align 1
@.str.34 = private unnamed_addr constant [50 x i8] c"Deprecated: Use 'gimp-brush-set-spacing' instead.\00", align 1
@.str.35 = private unnamed_addr constant [23 x i8] c"gimp-brush-set-spacing\00", align 1
@.str.36 = private unnamed_addr constant [28 x i8] c"gimp-brushes-get-brush-data\00", align 1
@.str.37 = private unnamed_addr constant [49 x i8] c"Deprecated: Use 'gimp-brush-get-pixels' instead.\00", align 1
@.str.38 = private unnamed_addr constant [22 x i8] c"gimp-brush-get-pixels\00", align 1
@.str.39 = private unnamed_addr constant [47 x i8] c"The brush name (\22\22 means current active brush)\00", align 1
@.str.40 = private unnamed_addr constant [12 x i8] c"actual-name\00", align 1
@.str.41 = private unnamed_addr constant [12 x i8] c"actual name\00", align 1
@.str.42 = private unnamed_addr constant [8 x i8] c"opacity\00", align 1
@.str.43 = private unnamed_addr constant [18 x i8] c"The brush opacity\00", align 1
@.str.44 = private unnamed_addr constant [11 x i8] c"paint-mode\00", align 1
@.str.45 = private unnamed_addr constant [11 x i8] c"paint mode\00", align 1
@.str.46 = private unnamed_addr constant [15 x i8] c"The paint mode\00", align 1
@.str.47 = private unnamed_addr constant [7 x i8] c"length\00", align 1
@.str.48 = private unnamed_addr constant [26 x i8] c"Length of brush mask data\00", align 1
@.str.49 = private unnamed_addr constant [10 x i8] c"mask-data\00", align 1
@.str.50 = private unnamed_addr constant [10 x i8] c"mask data\00", align 1
@.str.51 = private unnamed_addr constant [20 x i8] c"The brush mask data\00", align 1

; Function Attrs: nounwind uwtable
define void @register_brushes_procs(%struct._GimpPDB* %pdb) #0 {
entry:
  %pdb.addr = alloca %struct._GimpPDB*, align 8
  %procedure = alloca %struct._GimpProcedure*, align 8
  store %struct._GimpPDB* %pdb, %struct._GimpPDB** %pdb.addr, align 8
  %call = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @brushes_refresh_invoker)
  store %struct._GimpProcedure* %call, %struct._GimpProcedure** %procedure, align 8
  %0 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %1 = bitcast %struct._GimpProcedure* %0 to %struct._GTypeInstance*
  %call1 = call i64 @gimp_object_get_type() #4
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call1)
  %2 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %2, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i32 0, i32 0))
  %3 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %3, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([115 x i8], [115 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* null)
  %4 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %5 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %4, %struct._GimpProcedure* %5)
  %6 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %7 = bitcast %struct._GimpProcedure* %6 to i8*
  call void @g_object_unref(i8* %7)
  %call3 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @brushes_get_list_invoker)
  store %struct._GimpProcedure* %call3, %struct._GimpProcedure** %procedure, align 8
  %8 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %9 = bitcast %struct._GimpProcedure* %8 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_object_get_type() #4
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call4)
  %10 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %10, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i32 0, i32 0))
  %11 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %11, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([152 x i8], [152 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), i8* null)
  %12 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call6 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.11, i32 0, i32 0), i32 0, i32 1, i32 0, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %12, %struct._GParamSpec* %call6)
  %13 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call7 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.14, i32 0, i32 0), i32 0, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %13, %struct._GParamSpec* %call7)
  %14 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call8 = call %struct._GParamSpec* @gimp_param_spec_string_array(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.17, i32 0, i32 0), i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %14, %struct._GParamSpec* %call8)
  %15 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %16 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %15, %struct._GimpProcedure* %16)
  %17 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %18 = bitcast %struct._GimpProcedure* %17 to i8*
  call void @g_object_unref(i8* %18)
  %call9 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @brushes_get_brush_invoker)
  store %struct._GimpProcedure* %call9, %struct._GimpProcedure** %procedure, align 8
  %19 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %20 = bitcast %struct._GimpProcedure* %19 to %struct._GTypeInstance*
  %call10 = call i64 @gimp_object_get_type() #4
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call10)
  %21 = bitcast %struct._GTypeInstance* %call11 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %21, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.18, i32 0, i32 0))
  %22 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %22, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.21, i32 0, i32 0))
  %23 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call12 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i32 0, i32 0), i32 0, i32 0, i32 0, i8* null, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %23, %struct._GParamSpec* %call12)
  %24 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call13 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.25, i32 0, i32 0), i32 -2147483648, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %24, %struct._GParamSpec* %call13)
  %25 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call14 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.27, i32 0, i32 0), i32 -2147483648, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %25, %struct._GParamSpec* %call14)
  %26 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call15 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.29, i32 0, i32 0), i32 0, i32 1000, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %26, %struct._GParamSpec* %call15)
  %27 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %28 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %27, %struct._GimpProcedure* %28)
  %29 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %30 = bitcast %struct._GimpProcedure* %29 to i8*
  call void @g_object_unref(i8* %30)
  %call16 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @brushes_get_spacing_invoker)
  store %struct._GimpProcedure* %call16, %struct._GimpProcedure** %procedure, align 8
  %31 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %32 = bitcast %struct._GimpProcedure* %31 to %struct._GTypeInstance*
  %call17 = call i64 @gimp_object_get_type() #4
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %32, i64 %call17)
  %33 = bitcast %struct._GTypeInstance* %call18 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %33, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.30, i32 0, i32 0))
  %34 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %34, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.32, i32 0, i32 0))
  %35 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call19 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.29, i32 0, i32 0), i32 0, i32 1000, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %35, %struct._GParamSpec* %call19)
  %36 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %37 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %36, %struct._GimpProcedure* %37)
  %38 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %39 = bitcast %struct._GimpProcedure* %38 to i8*
  call void @g_object_unref(i8* %39)
  %call20 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @brushes_set_spacing_invoker)
  store %struct._GimpProcedure* %call20, %struct._GimpProcedure** %procedure, align 8
  %40 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %41 = bitcast %struct._GimpProcedure* %40 to %struct._GTypeInstance*
  %call21 = call i64 @gimp_object_get_type() #4
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %41, i64 %call21)
  %42 = bitcast %struct._GTypeInstance* %call22 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %42, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.33, i32 0, i32 0))
  %43 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %43, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.35, i32 0, i32 0))
  %44 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call23 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.29, i32 0, i32 0), i32 0, i32 1000, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %44, %struct._GParamSpec* %call23)
  %45 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %46 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %45, %struct._GimpProcedure* %46)
  %47 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %48 = bitcast %struct._GimpProcedure* %47 to i8*
  call void @g_object_unref(i8* %48)
  %call24 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @brushes_get_brush_data_invoker)
  store %struct._GimpProcedure* %call24, %struct._GimpProcedure** %procedure, align 8
  %49 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %50 = bitcast %struct._GimpProcedure* %49 to %struct._GTypeInstance*
  %call25 = call i64 @gimp_object_get_type() #4
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %50, i64 %call25)
  %51 = bitcast %struct._GTypeInstance* %call26 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %51, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.36, i32 0, i32 0))
  %52 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %52, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.38, i32 0, i32 0))
  %53 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call27 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.39, i32 0, i32 0), i32 0, i32 1, i32 0, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %53, %struct._GParamSpec* %call27)
  %54 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call28 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i32 0, i32 0), i32 0, i32 0, i32 0, i8* null, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %54, %struct._GParamSpec* %call28)
  %55 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call29 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.43, i32 0, i32 0), double 0.000000e+00, double 1.000000e+02, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %55, %struct._GParamSpec* %call29)
  %56 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call30 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.29, i32 0, i32 0), i32 0, i32 1000, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %56, %struct._GParamSpec* %call30)
  %57 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call31 = call i64 @gimp_layer_mode_effects_get_type() #4
  %call32 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.46, i32 0, i32 0), i64 %call31, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %57, %struct._GParamSpec* %call32)
  %58 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call33 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.25, i32 0, i32 0), i32 -2147483648, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %58, %struct._GParamSpec* %call33)
  %59 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call34 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.27, i32 0, i32 0), i32 -2147483648, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %59, %struct._GParamSpec* %call34)
  %60 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call35 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.48, i32 0, i32 0), i32 0, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %60, %struct._GParamSpec* %call35)
  %61 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call36 = call %struct._GParamSpec* @gimp_param_spec_int8_array(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.51, i32 0, i32 0), i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %61, %struct._GParamSpec* %call36)
  %62 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %63 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %62, %struct._GimpProcedure* %63)
  %64 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %65 = bitcast %struct._GimpProcedure* %64 to i8*
  call void @g_object_unref(i8* %65)
  ret void
}

declare %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)*) #1

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @brushes_refresh_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %brush_factory = getelementptr inbounds %struct._Gimp, %struct._Gimp* %0, i32 0, i32 37
  %1 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %brush_factory, align 8
  %2 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  call void @gimp_data_factory_data_refresh(%struct._GimpDataFactory* %1, %struct._GimpContext* %2)
  %3 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %call = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %3, i32 1, %struct._GError* null)
  ret %struct._GValueArray* %call
}

declare void @gimp_object_set_static_name(%struct._GimpObject*, i8*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #2

declare void @gimp_procedure_set_static_strings(%struct._GimpProcedure*, i8*, i8*, i8*, i8*, i8*, i8*, i8*) #1

declare void @gimp_pdb_register_procedure(%struct._GimpPDB*, %struct._GimpProcedure*) #1

declare void @g_object_unref(i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @brushes_get_list_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %return_vals = alloca %struct._GValueArray*, align 8
  %filter = alloca i8*, align 8
  %num_brushes = alloca i32, align 4
  %brush_list = alloca i8**, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store i32 0, i32* %num_brushes, align 4
  store i8** null, i8*** %brush_list, align 8
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %call = call i8* @g_value_get_string(%struct._GValue* %arrayidx)
  store i8* %call, i8** %filter, align 8
  %2 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %brush_factory = getelementptr inbounds %struct._Gimp, %struct._Gimp* %3, i32 0, i32 37
  %4 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %brush_factory, align 8
  %call1 = call %struct._GimpContainer* @gimp_data_factory_get_container(%struct._GimpDataFactory* %4)
  %5 = load i8*, i8** %filter, align 8
  %call2 = call i8** @gimp_container_get_filtered_name_array(%struct._GimpContainer* %call1, i8* %5, i32* %num_brushes)
  store i8** %call2, i8*** %brush_list, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %7 = load i32, i32* %success, align 4
  %8 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool3 = icmp ne %struct._GError** %8, null
  br i1 %tobool3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %9 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %10 = load %struct._GError*, %struct._GError** %9, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %10, %cond.true ], [ null, %cond.false ]
  %call4 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %6, i32 %7, %struct._GError* %cond)
  store %struct._GValueArray* %call4, %struct._GValueArray** %return_vals, align 8
  %11 = load i32, i32* %success, align 4
  %tobool5 = icmp ne i32 %11, 0
  br i1 %tobool5, label %if.then.6, label %if.end.11

if.then.6:                                        ; preds = %cond.end
  %12 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values7 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %12, i32 0, i32 1
  %13 = load %struct._GValue*, %struct._GValue** %values7, align 8
  %arrayidx8 = getelementptr inbounds %struct._GValue, %struct._GValue* %13, i64 1
  %14 = load i32, i32* %num_brushes, align 4
  call void @g_value_set_int(%struct._GValue* %arrayidx8, i32 %14)
  %15 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values9 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %15, i32 0, i32 1
  %16 = load %struct._GValue*, %struct._GValue** %values9, align 8
  %arrayidx10 = getelementptr inbounds %struct._GValue, %struct._GValue* %16, i64 2
  %17 = load i8**, i8*** %brush_list, align 8
  %18 = load i32, i32* %num_brushes, align 4
  %conv = sext i32 %18 to i64
  call void @gimp_value_take_stringarray(%struct._GValue* %arrayidx10, i8** %17, i64 %conv)
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.6, %cond.end
  %19 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %19
}

declare void @gimp_procedure_add_argument(%struct._GimpProcedure*, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @gimp_param_spec_string(i8*, i8*, i8*, i32, i32, i32, i8*, i32) #1

declare void @gimp_procedure_add_return_value(%struct._GimpProcedure*, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @gimp_param_spec_int32(i8*, i8*, i8*, i32, i32, i32, i32) #1

declare %struct._GParamSpec* @gimp_param_spec_string_array(i8*, i8*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @brushes_get_brush_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %spacing = alloca i32, align 4
  %brush = alloca %struct._GimpBrush*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store i8* null, i8** %name, align 8
  store i32 0, i32* %width, align 4
  store i32 0, i32* %height, align 4
  store i32 0, i32* %spacing, align 4
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %call = call %struct._GimpBrush* @gimp_context_get_brush(%struct._GimpContext* %0)
  store %struct._GimpBrush* %call, %struct._GimpBrush** %brush, align 8
  %1 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %tobool = icmp ne %struct._GimpBrush* %1, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %3 = bitcast %struct._GimpBrush* %2 to i8*
  %call1 = call i8* @gimp_object_get_name(i8* %3)
  %call2 = call noalias i8* @g_strdup(i8* %call1)
  store i8* %call2, i8** %name, align 8
  %4 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %mask = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %4, i32 0, i32 1
  %5 = load %struct._TempBuf*, %struct._TempBuf** %mask, align 8
  %width3 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %5, i32 0, i32 1
  %6 = load i32, i32* %width3, align 4
  store i32 %6, i32* %width, align 4
  %7 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %mask4 = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %7, i32 0, i32 1
  %8 = load %struct._TempBuf*, %struct._TempBuf** %mask4, align 8
  %height5 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %8, i32 0, i32 2
  %9 = load i32, i32* %height5, align 4
  store i32 %9, i32* %height, align 4
  %10 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %call6 = call i32 @gimp_brush_get_spacing(%struct._GimpBrush* %10)
  store i32 %call6, i32* %spacing, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %11 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %12 = load i32, i32* %success, align 4
  %13 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool7 = icmp ne %struct._GError** %13, null
  br i1 %tobool7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %14 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %15 = load %struct._GError*, %struct._GError** %14, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %15, %cond.true ], [ null, %cond.false ]
  %call8 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %11, i32 %12, %struct._GError* %cond)
  store %struct._GValueArray* %call8, %struct._GValueArray** %return_vals, align 8
  %16 = load i32, i32* %success, align 4
  %tobool9 = icmp ne i32 %16, 0
  br i1 %tobool9, label %if.then.10, label %if.end.17

if.then.10:                                       ; preds = %cond.end
  %17 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %17, i32 0, i32 1
  %18 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %18, i64 1
  %19 = load i8*, i8** %name, align 8
  call void @g_value_take_string(%struct._GValue* %arrayidx, i8* %19)
  %20 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values11 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %20, i32 0, i32 1
  %21 = load %struct._GValue*, %struct._GValue** %values11, align 8
  %arrayidx12 = getelementptr inbounds %struct._GValue, %struct._GValue* %21, i64 2
  %22 = load i32, i32* %width, align 4
  call void @g_value_set_int(%struct._GValue* %arrayidx12, i32 %22)
  %23 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values13 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %23, i32 0, i32 1
  %24 = load %struct._GValue*, %struct._GValue** %values13, align 8
  %arrayidx14 = getelementptr inbounds %struct._GValue, %struct._GValue* %24, i64 3
  %25 = load i32, i32* %height, align 4
  call void @g_value_set_int(%struct._GValue* %arrayidx14, i32 %25)
  %26 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values15 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %26, i32 0, i32 1
  %27 = load %struct._GValue*, %struct._GValue** %values15, align 8
  %arrayidx16 = getelementptr inbounds %struct._GValue, %struct._GValue* %27, i64 4
  %28 = load i32, i32* %spacing, align 4
  call void @g_value_set_int(%struct._GValue* %arrayidx16, i32 %28)
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.10, %cond.end
  %29 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %29
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @brushes_get_spacing_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %return_vals = alloca %struct._GValueArray*, align 8
  %spacing = alloca i32, align 4
  %brush = alloca %struct._GimpBrush*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store i32 0, i32* %spacing, align 4
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %call = call %struct._GimpBrush* @gimp_context_get_brush(%struct._GimpContext* %0)
  store %struct._GimpBrush* %call, %struct._GimpBrush** %brush, align 8
  %1 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %tobool = icmp ne %struct._GimpBrush* %1, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %call1 = call i32 @gimp_brush_get_spacing(%struct._GimpBrush* %2)
  store i32 %call1, i32* %spacing, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %4 = load i32, i32* %success, align 4
  %5 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool2 = icmp ne %struct._GError** %5, null
  br i1 %tobool2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %6 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %7 = load %struct._GError*, %struct._GError** %6, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %7, %cond.true ], [ null, %cond.false ]
  %call3 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %3, i32 %4, %struct._GError* %cond)
  store %struct._GValueArray* %call3, %struct._GValueArray** %return_vals, align 8
  %8 = load i32, i32* %success, align 4
  %tobool4 = icmp ne i32 %8, 0
  br i1 %tobool4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %cond.end
  %9 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %9, i32 0, i32 1
  %10 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %10, i64 1
  %11 = load i32, i32* %spacing, align 4
  call void @g_value_set_int(%struct._GValue* %arrayidx, i32 %11)
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %cond.end
  %12 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %12
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @brushes_set_spacing_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %spacing = alloca i32, align 4
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
  %call = call i32 @g_value_get_int(%struct._GValue* %arrayidx)
  store i32 %call, i32* %spacing, align 4
  %2 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %call1 = call %struct._GimpBrush* @gimp_context_get_brush(%struct._GimpContext* %3)
  %4 = load i32, i32* %spacing, align 4
  call void @gimp_brush_set_spacing(%struct._GimpBrush* %call1, i32 %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %6 = load i32, i32* %success, align 4
  %7 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool2 = icmp ne %struct._GError** %7, null
  br i1 %tobool2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %8 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %9 = load %struct._GError*, %struct._GError** %8, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %9, %cond.true ], [ null, %cond.false ]
  %call3 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %5, i32 %6, %struct._GError* %cond)
  ret %struct._GValueArray* %call3
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @brushes_get_brush_data_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  %actual_name = alloca i8*, align 8
  %opacity = alloca double, align 8
  %spacing = alloca i32, align 4
  %paint_mode = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %length = alloca i32, align 4
  %mask_data = alloca i8*, align 8
  %brush = alloca %struct._GimpBrush*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store i8* null, i8** %actual_name, align 8
  store double 0.000000e+00, double* %opacity, align 8
  store i32 0, i32* %spacing, align 4
  store i32 0, i32* %paint_mode, align 4
  store i32 0, i32* %width, align 4
  store i32 0, i32* %height, align 4
  store i32 0, i32* %length, align 4
  store i8* null, i8** %mask_data, align 8
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %call = call i8* @g_value_get_string(%struct._GValue* %arrayidx)
  store i8* %call, i8** %name, align 8
  %2 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end.24

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %name, align 8
  %tobool1 = icmp ne i8* %3, null
  br i1 %tobool1, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %4 = load i8*, i8** %name, align 8
  %call2 = call i64 @strlen(i8* %4) #5
  %tobool3 = icmp ne i64 %call2, 0
  br i1 %tobool3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %land.lhs.true
  %5 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %6 = load i8*, i8** %name, align 8
  %7 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call5 = call %struct._GimpBrush* @gimp_pdb_get_brush(%struct._Gimp* %5, i8* %6, i32 0, %struct._GError** %7)
  store %struct._GimpBrush* %call5, %struct._GimpBrush** %brush, align 8
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %if.then
  %8 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %call6 = call %struct._GimpBrush* @gimp_context_get_brush(%struct._GimpContext* %8)
  store %struct._GimpBrush* %call6, %struct._GimpBrush** %brush, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.4
  %9 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %tobool7 = icmp ne %struct._GimpBrush* %9, null
  br i1 %tobool7, label %if.then.8, label %if.else.22

if.then.8:                                        ; preds = %if.end
  %10 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %11 = bitcast %struct._GimpBrush* %10 to i8*
  %call9 = call i8* @gimp_object_get_name(i8* %11)
  %call10 = call noalias i8* @g_strdup(i8* %call9)
  store i8* %call10, i8** %actual_name, align 8
  store double 1.000000e+00, double* %opacity, align 8
  %12 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %call11 = call i32 @gimp_brush_get_spacing(%struct._GimpBrush* %12)
  store i32 %call11, i32* %spacing, align 4
  store i32 0, i32* %paint_mode, align 4
  %13 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %mask = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %13, i32 0, i32 1
  %14 = load %struct._TempBuf*, %struct._TempBuf** %mask, align 8
  %width12 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %14, i32 0, i32 1
  %15 = load i32, i32* %width12, align 4
  store i32 %15, i32* %width, align 4
  %16 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %mask13 = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %16, i32 0, i32 1
  %17 = load %struct._TempBuf*, %struct._TempBuf** %mask13, align 8
  %height14 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %17, i32 0, i32 2
  %18 = load i32, i32* %height14, align 4
  store i32 %18, i32* %height, align 4
  %19 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %mask15 = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %19, i32 0, i32 1
  %20 = load %struct._TempBuf*, %struct._TempBuf** %mask15, align 8
  %height16 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %20, i32 0, i32 2
  %21 = load i32, i32* %height16, align 4
  %22 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %mask17 = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %22, i32 0, i32 1
  %23 = load %struct._TempBuf*, %struct._TempBuf** %mask17, align 8
  %width18 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %23, i32 0, i32 1
  %24 = load i32, i32* %width18, align 4
  %mul = mul nsw i32 %21, %24
  store i32 %mul, i32* %length, align 4
  %25 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %mask19 = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %25, i32 0, i32 1
  %26 = load %struct._TempBuf*, %struct._TempBuf** %mask19, align 8
  %call20 = call i8* @temp_buf_get_data(%struct._TempBuf* %26)
  %27 = load i32, i32* %length, align 4
  %call21 = call noalias i8* @g_memdup(i8* %call20, i32 %27)
  store i8* %call21, i8** %mask_data, align 8
  br label %if.end.23

if.else.22:                                       ; preds = %if.end
  store i32 0, i32* %success, align 4
  br label %if.end.23

if.end.23:                                        ; preds = %if.else.22, %if.then.8
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %entry
  %28 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %29 = load i32, i32* %success, align 4
  %30 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool25 = icmp ne %struct._GError** %30, null
  br i1 %tobool25, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.24
  %31 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %32 = load %struct._GError*, %struct._GError** %31, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.24
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %32, %cond.true ], [ null, %cond.false ]
  %call26 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %28, i32 %29, %struct._GError* %cond)
  store %struct._GValueArray* %call26, %struct._GValueArray** %return_vals, align 8
  %33 = load i32, i32* %success, align 4
  %tobool27 = icmp ne i32 %33, 0
  br i1 %tobool27, label %if.then.28, label %if.end.45

if.then.28:                                       ; preds = %cond.end
  %34 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values29 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %34, i32 0, i32 1
  %35 = load %struct._GValue*, %struct._GValue** %values29, align 8
  %arrayidx30 = getelementptr inbounds %struct._GValue, %struct._GValue* %35, i64 1
  %36 = load i8*, i8** %actual_name, align 8
  call void @g_value_take_string(%struct._GValue* %arrayidx30, i8* %36)
  %37 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values31 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %37, i32 0, i32 1
  %38 = load %struct._GValue*, %struct._GValue** %values31, align 8
  %arrayidx32 = getelementptr inbounds %struct._GValue, %struct._GValue* %38, i64 2
  %39 = load double, double* %opacity, align 8
  call void @g_value_set_double(%struct._GValue* %arrayidx32, double %39)
  %40 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values33 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %40, i32 0, i32 1
  %41 = load %struct._GValue*, %struct._GValue** %values33, align 8
  %arrayidx34 = getelementptr inbounds %struct._GValue, %struct._GValue* %41, i64 3
  %42 = load i32, i32* %spacing, align 4
  call void @g_value_set_int(%struct._GValue* %arrayidx34, i32 %42)
  %43 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values35 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %43, i32 0, i32 1
  %44 = load %struct._GValue*, %struct._GValue** %values35, align 8
  %arrayidx36 = getelementptr inbounds %struct._GValue, %struct._GValue* %44, i64 4
  %45 = load i32, i32* %paint_mode, align 4
  call void @g_value_set_enum(%struct._GValue* %arrayidx36, i32 %45)
  %46 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values37 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %46, i32 0, i32 1
  %47 = load %struct._GValue*, %struct._GValue** %values37, align 8
  %arrayidx38 = getelementptr inbounds %struct._GValue, %struct._GValue* %47, i64 5
  %48 = load i32, i32* %width, align 4
  call void @g_value_set_int(%struct._GValue* %arrayidx38, i32 %48)
  %49 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values39 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %49, i32 0, i32 1
  %50 = load %struct._GValue*, %struct._GValue** %values39, align 8
  %arrayidx40 = getelementptr inbounds %struct._GValue, %struct._GValue* %50, i64 6
  %51 = load i32, i32* %height, align 4
  call void @g_value_set_int(%struct._GValue* %arrayidx40, i32 %51)
  %52 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values41 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %52, i32 0, i32 1
  %53 = load %struct._GValue*, %struct._GValue** %values41, align 8
  %arrayidx42 = getelementptr inbounds %struct._GValue, %struct._GValue* %53, i64 7
  %54 = load i32, i32* %length, align 4
  call void @g_value_set_int(%struct._GValue* %arrayidx42, i32 %54)
  %55 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values43 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %55, i32 0, i32 1
  %56 = load %struct._GValue*, %struct._GValue** %values43, align 8
  %arrayidx44 = getelementptr inbounds %struct._GValue, %struct._GValue* %56, i64 8
  %57 = load i8*, i8** %mask_data, align 8
  %58 = load i32, i32* %length, align 4
  %conv = sext i32 %58 to i64
  call void @gimp_value_take_int8array(%struct._GValue* %arrayidx44, i8* %57, i64 %conv)
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.28, %cond.end
  %59 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %59
}

declare %struct._GParamSpec* @g_param_spec_double(i8*, i8*, i8*, double, double, double, i32) #1

declare %struct._GParamSpec* @g_param_spec_enum(i8*, i8*, i8*, i64, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_layer_mode_effects_get_type() #2

declare %struct._GParamSpec* @gimp_param_spec_int8_array(i8*, i8*, i8*, i32) #1

declare void @gimp_data_factory_data_refresh(%struct._GimpDataFactory*, %struct._GimpContext*) #1

declare %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure*, i32, %struct._GError*) #1

declare i8* @g_value_get_string(%struct._GValue*) #1

declare i8** @gimp_container_get_filtered_name_array(%struct._GimpContainer*, i8*, i32*) #1

declare %struct._GimpContainer* @gimp_data_factory_get_container(%struct._GimpDataFactory*) #1

declare void @g_value_set_int(%struct._GValue*, i32) #1

declare void @gimp_value_take_stringarray(%struct._GValue*, i8**, i64) #1

declare %struct._GimpBrush* @gimp_context_get_brush(%struct._GimpContext*) #1

declare noalias i8* @g_strdup(i8*) #1

declare i8* @gimp_object_get_name(i8*) #1

declare i32 @gimp_brush_get_spacing(%struct._GimpBrush*) #1

declare void @g_value_take_string(%struct._GValue*, i8*) #1

declare i32 @g_value_get_int(%struct._GValue*) #1

declare void @gimp_brush_set_spacing(%struct._GimpBrush*, i32) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

declare %struct._GimpBrush* @gimp_pdb_get_brush(%struct._Gimp*, i8*, i32, %struct._GError**) #1

declare noalias i8* @g_memdup(i8*, i32) #1

declare i8* @temp_buf_get_data(%struct._TempBuf*) #1

declare void @g_value_set_double(%struct._GValue*, double) #1

declare void @g_value_set_enum(%struct._GValue*, i32) #1

declare void @gimp_value_take_int8array(%struct._GValue*, i8*, i64) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
