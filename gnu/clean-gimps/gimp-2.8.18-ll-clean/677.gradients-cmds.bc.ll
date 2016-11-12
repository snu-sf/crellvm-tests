; ModuleID = './app/pdb/gradients-cmds.bc'
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
%struct._GimpBrush = type opaque
%struct._GimpDynamics = type opaque
%struct._GimpPattern = type opaque
%struct._GimpGradient = type { %struct._GimpData, %struct._GimpGradientSegment* }
%struct._GimpData = type { %struct._GimpViewable }
%struct._GimpGradientSegment = type { double, double, double, i32, %struct._GimpRGB, i32, %struct._GimpRGB, i32, i32, %struct._GimpGradientSegment*, %struct._GimpGradientSegment* }
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

@.str = private unnamed_addr constant [23 x i8] c"gimp-gradients-refresh\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"Refresh current gradients. This function always succeeds.\00", align 1
@.str.2 = private unnamed_addr constant [123 x i8] c"This procedure retrieves all gradients currently in the user's gradient path and updates the gradient dialogs accordingly.\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"Michael Natterer <mitch@gimp.org>\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"Michael Natterer\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"2002\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"gimp-gradients-get-list\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"Retrieve the list of loaded gradients.\00", align 1
@.str.8 = private unnamed_addr constant [161 x i8] c"This procedure returns a list of the gradients that are currently loaded. You can later use the 'gimp-context-set-gradient' function to set the active gradient.\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"Federico Mena Quintero\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"1997\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"filter\00", align 1
@.str.12 = private unnamed_addr constant [55 x i8] c"An optional regular expression used to filter the list\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"num-gradients\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"num gradients\00", align 1
@.str.15 = private unnamed_addr constant [31 x i8] c"The number of loaded gradients\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"gradient-list\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"gradient list\00", align 1
@.str.18 = private unnamed_addr constant [27 x i8] c"The list of gradient names\00", align 1
@.str.19 = private unnamed_addr constant [30 x i8] c"gimp-gradients-sample-uniform\00", align 1
@.str.20 = private unnamed_addr constant [61 x i8] c"Deprecated: Use 'gimp-gradient-get-uniform-samples' instead.\00", align 1
@.str.21 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.22 = private unnamed_addr constant [34 x i8] c"gimp-gradient-get-uniform-samples\00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"num-samples\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"num samples\00", align 1
@.str.25 = private unnamed_addr constant [30 x i8] c"The number of samples to take\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"reverse\00", align 1
@.str.27 = private unnamed_addr constant [25 x i8] c"Use the reverse gradient\00", align 1
@.str.28 = private unnamed_addr constant [13 x i8] c"array-length\00", align 1
@.str.29 = private unnamed_addr constant [13 x i8] c"array length\00", align 1
@.str.30 = private unnamed_addr constant [52 x i8] c"Length of the color_samples array (4 * num_samples)\00", align 1
@.str.31 = private unnamed_addr constant [14 x i8] c"color-samples\00", align 1
@.str.32 = private unnamed_addr constant [14 x i8] c"color samples\00", align 1
@.str.33 = private unnamed_addr constant [55 x i8] c"Color samples: { R1, G1, B1, A1, ..., Rn, Gn, Bn, An }\00", align 1
@.str.34 = private unnamed_addr constant [29 x i8] c"gimp-gradients-sample-custom\00", align 1
@.str.35 = private unnamed_addr constant [60 x i8] c"Deprecated: Use 'gimp-gradient-get-custom-samples' instead.\00", align 1
@.str.36 = private unnamed_addr constant [33 x i8] c"gimp-gradient-get-custom-samples\00", align 1
@.str.37 = private unnamed_addr constant [10 x i8] c"positions\00", align 1
@.str.38 = private unnamed_addr constant [51 x i8] c"The list of positions to sample along the gradient\00", align 1
@.str.39 = private unnamed_addr constant [33 x i8] c"gimp-gradients-get-gradient-data\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.41 = private unnamed_addr constant [53 x i8] c"The gradient name (\22\22 means current active gradient)\00", align 1
@.str.42 = private unnamed_addr constant [12 x i8] c"sample-size\00", align 1
@.str.43 = private unnamed_addr constant [12 x i8] c"sample size\00", align 1
@.str.44 = private unnamed_addr constant [58 x i8] c"Size of the sample to return when the gradient is changed\00", align 1
@.str.45 = private unnamed_addr constant [12 x i8] c"actual-name\00", align 1
@.str.46 = private unnamed_addr constant [12 x i8] c"actual name\00", align 1
@.str.47 = private unnamed_addr constant [18 x i8] c"The gradient name\00", align 1
@.str.48 = private unnamed_addr constant [6 x i8] c"width\00", align 1
@.str.49 = private unnamed_addr constant [36 x i8] c"The gradient sample width (r,g,b,a)\00", align 1
@.str.50 = private unnamed_addr constant [10 x i8] c"grad-data\00", align 1
@.str.51 = private unnamed_addr constant [10 x i8] c"grad data\00", align 1
@.str.52 = private unnamed_addr constant [25 x i8] c"The gradient sample data\00", align 1

; Function Attrs: nounwind uwtable
define void @register_gradients_procs(%struct._GimpPDB* %pdb) #0 {
entry:
  %pdb.addr = alloca %struct._GimpPDB*, align 8
  %procedure = alloca %struct._GimpProcedure*, align 8
  store %struct._GimpPDB* %pdb, %struct._GimpPDB** %pdb.addr, align 8
  %call = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @gradients_refresh_invoker)
  store %struct._GimpProcedure* %call, %struct._GimpProcedure** %procedure, align 8
  %0 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %1 = bitcast %struct._GimpProcedure* %0 to %struct._GTypeInstance*
  %call1 = call i64 @gimp_object_get_type() #4
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call1)
  %2 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %2, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0))
  %3 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %3, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([123 x i8], [123 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* null)
  %4 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %5 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %4, %struct._GimpProcedure* %5)
  %6 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %7 = bitcast %struct._GimpProcedure* %6 to i8*
  call void @g_object_unref(i8* %7)
  %call3 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @gradients_get_list_invoker)
  store %struct._GimpProcedure* %call3, %struct._GimpProcedure** %procedure, align 8
  %8 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %9 = bitcast %struct._GimpProcedure* %8 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_object_get_type() #4
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call4)
  %10 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %10, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i32 0, i32 0))
  %11 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %11, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([161 x i8], [161 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i8* null)
  %12 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call6 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.12, i32 0, i32 0), i32 0, i32 1, i32 0, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %12, %struct._GParamSpec* %call6)
  %13 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call7 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.15, i32 0, i32 0), i32 0, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %13, %struct._GParamSpec* %call7)
  %14 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call8 = call %struct._GParamSpec* @gimp_param_spec_string_array(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.18, i32 0, i32 0), i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %14, %struct._GParamSpec* %call8)
  %15 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %16 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %15, %struct._GimpProcedure* %16)
  %17 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %18 = bitcast %struct._GimpProcedure* %17 to i8*
  call void @g_object_unref(i8* %18)
  %call9 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @gradients_sample_uniform_invoker)
  store %struct._GimpProcedure* %call9, %struct._GimpProcedure** %procedure, align 8
  %19 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %20 = bitcast %struct._GimpProcedure* %19 to %struct._GTypeInstance*
  %call10 = call i64 @gimp_object_get_type() #4
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call10)
  %21 = bitcast %struct._GTypeInstance* %call11 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %21, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.19, i32 0, i32 0))
  %22 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %22, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.22, i32 0, i32 0))
  %23 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call12 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.25, i32 0, i32 0), i32 2, i32 2147483647, i32 2, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %23, %struct._GParamSpec* %call12)
  %24 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call13 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.27, i32 0, i32 0), i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %24, %struct._GParamSpec* %call13)
  %25 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call14 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.30, i32 0, i32 0), i32 0, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %25, %struct._GParamSpec* %call14)
  %26 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call15 = call %struct._GParamSpec* @gimp_param_spec_float_array(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.33, i32 0, i32 0), i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %26, %struct._GParamSpec* %call15)
  %27 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %28 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %27, %struct._GimpProcedure* %28)
  %29 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %30 = bitcast %struct._GimpProcedure* %29 to i8*
  call void @g_object_unref(i8* %30)
  %call16 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @gradients_sample_custom_invoker)
  store %struct._GimpProcedure* %call16, %struct._GimpProcedure** %procedure, align 8
  %31 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %32 = bitcast %struct._GimpProcedure* %31 to %struct._GTypeInstance*
  %call17 = call i64 @gimp_object_get_type() #4
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %32, i64 %call17)
  %33 = bitcast %struct._GTypeInstance* %call18 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %33, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.34, i32 0, i32 0))
  %34 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %34, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.36, i32 0, i32 0))
  %35 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call19 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.25, i32 0, i32 0), i32 0, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %35, %struct._GParamSpec* %call19)
  %36 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call20 = call %struct._GParamSpec* @gimp_param_spec_float_array(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.38, i32 0, i32 0), i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %36, %struct._GParamSpec* %call20)
  %37 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call21 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.27, i32 0, i32 0), i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %37, %struct._GParamSpec* %call21)
  %38 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call22 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.30, i32 0, i32 0), i32 0, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %38, %struct._GParamSpec* %call22)
  %39 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call23 = call %struct._GParamSpec* @gimp_param_spec_float_array(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.33, i32 0, i32 0), i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %39, %struct._GParamSpec* %call23)
  %40 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %41 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %40, %struct._GimpProcedure* %41)
  %42 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %43 = bitcast %struct._GimpProcedure* %42 to i8*
  call void @g_object_unref(i8* %43)
  %call24 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @gradients_get_gradient_data_invoker)
  store %struct._GimpProcedure* %call24, %struct._GimpProcedure** %procedure, align 8
  %44 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %45 = bitcast %struct._GimpProcedure* %44 to %struct._GTypeInstance*
  %call25 = call i64 @gimp_object_get_type() #4
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %45, i64 %call25)
  %46 = bitcast %struct._GTypeInstance* %call26 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %46, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.39, i32 0, i32 0))
  %47 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %47, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.22, i32 0, i32 0))
  %48 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call27 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.41, i32 0, i32 0), i32 0, i32 1, i32 0, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %48, %struct._GParamSpec* %call27)
  %49 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call28 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.44, i32 0, i32 0), i32 1, i32 10000, i32 1, i32 16611)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %49, %struct._GParamSpec* %call28)
  %50 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call29 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.27, i32 0, i32 0), i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %50, %struct._GParamSpec* %call29)
  %51 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call30 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.47, i32 0, i32 0), i32 0, i32 0, i32 0, i8* null, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %51, %struct._GParamSpec* %call30)
  %52 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call31 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.49, i32 0, i32 0), i32 0, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %52, %struct._GParamSpec* %call31)
  %53 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call32 = call %struct._GParamSpec* @gimp_param_spec_float_array(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.52, i32 0, i32 0), i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %53, %struct._GParamSpec* %call32)
  %54 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %55 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %54, %struct._GimpProcedure* %55)
  %56 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %57 = bitcast %struct._GimpProcedure* %56 to i8*
  call void @g_object_unref(i8* %57)
  ret void
}

declare %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)*) #1

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @gradients_refresh_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  %gradient_factory = getelementptr inbounds %struct._Gimp, %struct._Gimp* %0, i32 0, i32 40
  %1 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %gradient_factory, align 8
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
define internal %struct._GValueArray* @gradients_get_list_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  %num_gradients = alloca i32, align 4
  %gradient_list = alloca i8**, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store i32 0, i32* %num_gradients, align 4
  store i8** null, i8*** %gradient_list, align 8
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
  %gradient_factory = getelementptr inbounds %struct._Gimp, %struct._Gimp* %3, i32 0, i32 40
  %4 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %gradient_factory, align 8
  %call1 = call %struct._GimpContainer* @gimp_data_factory_get_container(%struct._GimpDataFactory* %4)
  %5 = load i8*, i8** %filter, align 8
  %call2 = call i8** @gimp_container_get_filtered_name_array(%struct._GimpContainer* %call1, i8* %5, i32* %num_gradients)
  store i8** %call2, i8*** %gradient_list, align 8
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
  %14 = load i32, i32* %num_gradients, align 4
  call void @g_value_set_int(%struct._GValue* %arrayidx8, i32 %14)
  %15 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values9 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %15, i32 0, i32 1
  %16 = load %struct._GValue*, %struct._GValue** %values9, align 8
  %arrayidx10 = getelementptr inbounds %struct._GValue, %struct._GValue* %16, i64 2
  %17 = load i8**, i8*** %gradient_list, align 8
  %18 = load i32, i32* %num_gradients, align 4
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
define internal %struct._GValueArray* @gradients_sample_uniform_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %return_vals = alloca %struct._GValueArray*, align 8
  %num_samples = alloca i32, align 4
  %reverse = alloca i32, align 4
  %array_length = alloca i32, align 4
  %color_samples = alloca double*, align 8
  %gradient = alloca %struct._GimpGradient*, align 8
  %seg = alloca %struct._GimpGradientSegment*, align 8
  %pos = alloca double, align 8
  %delta = alloca double, align 8
  %color = alloca %struct._GimpRGB, align 8
  %pv = alloca double*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store i32 0, i32* %array_length, align 4
  store double* null, double** %color_samples, align 8
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %call = call i32 @g_value_get_int(%struct._GValue* %arrayidx)
  store i32 %call, i32* %num_samples, align 4
  %2 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %2, i32 0, i32 1
  %3 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %3, i64 1
  %call3 = call i32 @g_value_get_boolean(%struct._GValue* %arrayidx2)
  store i32 %call3, i32* %reverse, align 4
  %4 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._GimpGradientSegment* null, %struct._GimpGradientSegment** %seg, align 8
  store double 0.000000e+00, double* %pos, align 8
  %5 = load i32, i32* %num_samples, align 4
  %sub = sub nsw i32 %5, 1
  %conv = sitofp i32 %sub to double
  %div = fdiv double 1.000000e+00, %conv
  store double %div, double* %delta, align 8
  %6 = load i32, i32* %num_samples, align 4
  %mul = mul nsw i32 %6, 4
  store i32 %mul, i32* %array_length, align 4
  %7 = load i32, i32* %array_length, align 4
  %conv4 = sext i32 %7 to i64
  %call5 = call noalias i8* @g_malloc_n(i64 %conv4, i64 8)
  %8 = bitcast i8* %call5 to double*
  store double* %8, double** %color_samples, align 8
  store double* %8, double** %pv, align 8
  %9 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %call6 = call %struct._GimpGradient* @gimp_context_get_gradient(%struct._GimpContext* %9)
  store %struct._GimpGradient* %call6, %struct._GimpGradient** %gradient, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %10 = load i32, i32* %num_samples, align 4
  %dec = add nsw i32 %10, -1
  store i32 %dec, i32* %num_samples, align 4
  %tobool7 = icmp ne i32 %10, 0
  br i1 %tobool7, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %11 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %12 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %13 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %14 = load double, double* %pos, align 8
  %15 = load i32, i32* %reverse, align 4
  %call8 = call %struct._GimpGradientSegment* @gimp_gradient_get_color_at(%struct._GimpGradient* %11, %struct._GimpContext* %12, %struct._GimpGradientSegment* %13, double %14, i32 %15, %struct._GimpRGB* %color)
  store %struct._GimpGradientSegment* %call8, %struct._GimpGradientSegment** %seg, align 8
  %r = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color, i32 0, i32 0
  %16 = load double, double* %r, align 8
  %17 = load double*, double** %pv, align 8
  %incdec.ptr = getelementptr inbounds double, double* %17, i32 1
  store double* %incdec.ptr, double** %pv, align 8
  store double %16, double* %17, align 8
  %g = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color, i32 0, i32 1
  %18 = load double, double* %g, align 8
  %19 = load double*, double** %pv, align 8
  %incdec.ptr9 = getelementptr inbounds double, double* %19, i32 1
  store double* %incdec.ptr9, double** %pv, align 8
  store double %18, double* %19, align 8
  %b = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color, i32 0, i32 2
  %20 = load double, double* %b, align 8
  %21 = load double*, double** %pv, align 8
  %incdec.ptr10 = getelementptr inbounds double, double* %21, i32 1
  store double* %incdec.ptr10, double** %pv, align 8
  store double %20, double* %21, align 8
  %a = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color, i32 0, i32 3
  %22 = load double, double* %a, align 8
  %23 = load double*, double** %pv, align 8
  %incdec.ptr11 = getelementptr inbounds double, double* %23, i32 1
  store double* %incdec.ptr11, double** %pv, align 8
  store double %22, double* %23, align 8
  %24 = load double, double* %delta, align 8
  %25 = load double, double* %pos, align 8
  %add = fadd double %25, %24
  store double %add, double* %pos, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end

if.end:                                           ; preds = %while.end, %entry
  %26 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %27 = load i32, i32* %success, align 4
  %28 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool12 = icmp ne %struct._GError** %28, null
  br i1 %tobool12, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %29 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %30 = load %struct._GError*, %struct._GError** %29, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %30, %cond.true ], [ null, %cond.false ]
  %call13 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %26, i32 %27, %struct._GError* %cond)
  store %struct._GValueArray* %call13, %struct._GValueArray** %return_vals, align 8
  %31 = load i32, i32* %success, align 4
  %tobool14 = icmp ne i32 %31, 0
  br i1 %tobool14, label %if.then.15, label %if.end.21

if.then.15:                                       ; preds = %cond.end
  %32 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values16 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %32, i32 0, i32 1
  %33 = load %struct._GValue*, %struct._GValue** %values16, align 8
  %arrayidx17 = getelementptr inbounds %struct._GValue, %struct._GValue* %33, i64 1
  %34 = load i32, i32* %array_length, align 4
  call void @g_value_set_int(%struct._GValue* %arrayidx17, i32 %34)
  %35 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values18 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %35, i32 0, i32 1
  %36 = load %struct._GValue*, %struct._GValue** %values18, align 8
  %arrayidx19 = getelementptr inbounds %struct._GValue, %struct._GValue* %36, i64 2
  %37 = load double*, double** %color_samples, align 8
  %38 = load i32, i32* %array_length, align 4
  %conv20 = sext i32 %38 to i64
  call void @gimp_value_take_floatarray(%struct._GValue* %arrayidx19, double* %37, i64 %conv20)
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.15, %cond.end
  %39 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %39
}

declare %struct._GParamSpec* @g_param_spec_boolean(i8*, i8*, i8*, i32, i32) #1

declare %struct._GParamSpec* @gimp_param_spec_float_array(i8*, i8*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @gradients_sample_custom_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %return_vals = alloca %struct._GValueArray*, align 8
  %num_samples = alloca i32, align 4
  %positions = alloca double*, align 8
  %reverse = alloca i32, align 4
  %array_length = alloca i32, align 4
  %color_samples = alloca double*, align 8
  %gradient = alloca %struct._GimpGradient*, align 8
  %seg = alloca %struct._GimpGradientSegment*, align 8
  %color = alloca %struct._GimpRGB, align 8
  %pv = alloca double*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store i32 0, i32* %array_length, align 4
  store double* null, double** %color_samples, align 8
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %call = call i32 @g_value_get_int(%struct._GValue* %arrayidx)
  store i32 %call, i32* %num_samples, align 4
  %2 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %2, i32 0, i32 1
  %3 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %3, i64 1
  %call3 = call double* @gimp_value_get_floatarray(%struct._GValue* %arrayidx2)
  store double* %call3, double** %positions, align 8
  %4 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values4 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %4, i32 0, i32 1
  %5 = load %struct._GValue*, %struct._GValue** %values4, align 8
  %arrayidx5 = getelementptr inbounds %struct._GValue, %struct._GValue* %5, i64 2
  %call6 = call i32 @g_value_get_boolean(%struct._GValue* %arrayidx5)
  store i32 %call6, i32* %reverse, align 4
  %6 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._GimpGradientSegment* null, %struct._GimpGradientSegment** %seg, align 8
  %7 = load i32, i32* %num_samples, align 4
  %mul = mul nsw i32 %7, 4
  store i32 %mul, i32* %array_length, align 4
  %8 = load i32, i32* %array_length, align 4
  %conv = sext i32 %8 to i64
  %call7 = call noalias i8* @g_malloc_n(i64 %conv, i64 8)
  %9 = bitcast i8* %call7 to double*
  store double* %9, double** %color_samples, align 8
  store double* %9, double** %pv, align 8
  %10 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %call8 = call %struct._GimpGradient* @gimp_context_get_gradient(%struct._GimpContext* %10)
  store %struct._GimpGradient* %call8, %struct._GimpGradient** %gradient, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %11 = load i32, i32* %num_samples, align 4
  %dec = add nsw i32 %11, -1
  store i32 %dec, i32* %num_samples, align 4
  %tobool9 = icmp ne i32 %11, 0
  br i1 %tobool9, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %12 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %13 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %14 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %15 = load double*, double** %positions, align 8
  %16 = load double, double* %15, align 8
  %17 = load i32, i32* %reverse, align 4
  %call10 = call %struct._GimpGradientSegment* @gimp_gradient_get_color_at(%struct._GimpGradient* %12, %struct._GimpContext* %13, %struct._GimpGradientSegment* %14, double %16, i32 %17, %struct._GimpRGB* %color)
  store %struct._GimpGradientSegment* %call10, %struct._GimpGradientSegment** %seg, align 8
  %r = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color, i32 0, i32 0
  %18 = load double, double* %r, align 8
  %19 = load double*, double** %pv, align 8
  %incdec.ptr = getelementptr inbounds double, double* %19, i32 1
  store double* %incdec.ptr, double** %pv, align 8
  store double %18, double* %19, align 8
  %g = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color, i32 0, i32 1
  %20 = load double, double* %g, align 8
  %21 = load double*, double** %pv, align 8
  %incdec.ptr11 = getelementptr inbounds double, double* %21, i32 1
  store double* %incdec.ptr11, double** %pv, align 8
  store double %20, double* %21, align 8
  %b = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color, i32 0, i32 2
  %22 = load double, double* %b, align 8
  %23 = load double*, double** %pv, align 8
  %incdec.ptr12 = getelementptr inbounds double, double* %23, i32 1
  store double* %incdec.ptr12, double** %pv, align 8
  store double %22, double* %23, align 8
  %a = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color, i32 0, i32 3
  %24 = load double, double* %a, align 8
  %25 = load double*, double** %pv, align 8
  %incdec.ptr13 = getelementptr inbounds double, double* %25, i32 1
  store double* %incdec.ptr13, double** %pv, align 8
  store double %24, double* %25, align 8
  %26 = load double*, double** %positions, align 8
  %incdec.ptr14 = getelementptr inbounds double, double* %26, i32 1
  store double* %incdec.ptr14, double** %positions, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end

if.end:                                           ; preds = %while.end, %entry
  %27 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %28 = load i32, i32* %success, align 4
  %29 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool15 = icmp ne %struct._GError** %29, null
  br i1 %tobool15, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %30 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %31 = load %struct._GError*, %struct._GError** %30, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %31, %cond.true ], [ null, %cond.false ]
  %call16 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %27, i32 %28, %struct._GError* %cond)
  store %struct._GValueArray* %call16, %struct._GValueArray** %return_vals, align 8
  %32 = load i32, i32* %success, align 4
  %tobool17 = icmp ne i32 %32, 0
  br i1 %tobool17, label %if.then.18, label %if.end.24

if.then.18:                                       ; preds = %cond.end
  %33 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values19 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %33, i32 0, i32 1
  %34 = load %struct._GValue*, %struct._GValue** %values19, align 8
  %arrayidx20 = getelementptr inbounds %struct._GValue, %struct._GValue* %34, i64 1
  %35 = load i32, i32* %array_length, align 4
  call void @g_value_set_int(%struct._GValue* %arrayidx20, i32 %35)
  %36 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values21 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %36, i32 0, i32 1
  %37 = load %struct._GValue*, %struct._GValue** %values21, align 8
  %arrayidx22 = getelementptr inbounds %struct._GValue, %struct._GValue* %37, i64 2
  %38 = load double*, double** %color_samples, align 8
  %39 = load i32, i32* %array_length, align 4
  %conv23 = sext i32 %39 to i64
  call void @gimp_value_take_floatarray(%struct._GValue* %arrayidx22, double* %38, i64 %conv23)
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.18, %cond.end
  %40 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %40
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @gradients_get_gradient_data_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  %sample_size = alloca i32, align 4
  %reverse = alloca i32, align 4
  %actual_name = alloca i8*, align 8
  %width = alloca i32, align 4
  %grad_data = alloca double*, align 8
  %gradient = alloca %struct._GimpGradient*, align 8
  %seg = alloca %struct._GimpGradientSegment*, align 8
  %pv = alloca double*, align 8
  %pos = alloca double, align 8
  %delta = alloca double, align 8
  %color = alloca %struct._GimpRGB, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store i8* null, i8** %actual_name, align 8
  store i32 0, i32* %width, align 4
  store double* null, double** %grad_data, align 8
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
  %call3 = call i32 @g_value_get_int(%struct._GValue* %arrayidx2)
  store i32 %call3, i32* %sample_size, align 4
  %4 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values4 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %4, i32 0, i32 1
  %5 = load %struct._GValue*, %struct._GValue** %values4, align 8
  %arrayidx5 = getelementptr inbounds %struct._GValue, %struct._GValue* %5, i64 2
  %call6 = call i32 @g_value_get_boolean(%struct._GValue* %arrayidx5)
  store i32 %call6, i32* %reverse, align 4
  %6 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then, label %if.end.30

if.then:                                          ; preds = %entry
  %7 = load i32, i32* %sample_size, align 4
  %cmp = icmp slt i32 %7, 1
  br i1 %cmp, label %if.then.8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %8 = load i32, i32* %sample_size, align 4
  %cmp7 = icmp sgt i32 %8, 10000
  br i1 %cmp7, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %lor.lhs.false, %if.then
  store i32 40, i32* %sample_size, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.8, %lor.lhs.false
  %9 = load i8*, i8** %name, align 8
  %tobool9 = icmp ne i8* %9, null
  br i1 %tobool9, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %10 = load i8*, i8** %name, align 8
  %call10 = call i64 @strlen(i8* %10) #5
  %tobool11 = icmp ne i64 %call10, 0
  br i1 %tobool11, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %land.lhs.true
  %11 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %12 = load i8*, i8** %name, align 8
  %13 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call13 = call %struct._GimpGradient* @gimp_pdb_get_gradient(%struct._Gimp* %11, i8* %12, i32 0, %struct._GError** %13)
  store %struct._GimpGradient* %call13, %struct._GimpGradient** %gradient, align 8
  br label %if.end.15

if.else:                                          ; preds = %land.lhs.true, %if.end
  %14 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %call14 = call %struct._GimpGradient* @gimp_context_get_gradient(%struct._GimpContext* %14)
  store %struct._GimpGradient* %call14, %struct._GimpGradient** %gradient, align 8
  br label %if.end.15

if.end.15:                                        ; preds = %if.else, %if.then.12
  %15 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %tobool16 = icmp ne %struct._GimpGradient* %15, null
  br i1 %tobool16, label %if.then.17, label %if.else.28

if.then.17:                                       ; preds = %if.end.15
  store %struct._GimpGradientSegment* null, %struct._GimpGradientSegment** %seg, align 8
  store double 0.000000e+00, double* %pos, align 8
  %16 = load i32, i32* %sample_size, align 4
  %sub = sub nsw i32 %16, 1
  %conv = sitofp i32 %sub to double
  %div = fdiv double 1.000000e+00, %conv
  store double %div, double* %delta, align 8
  %17 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %18 = bitcast %struct._GimpGradient* %17 to i8*
  %call18 = call i8* @gimp_object_get_name(i8* %18)
  %call19 = call noalias i8* @g_strdup(i8* %call18)
  store i8* %call19, i8** %actual_name, align 8
  %19 = load i32, i32* %sample_size, align 4
  %mul = mul nsw i32 %19, 4
  %conv20 = sext i32 %mul to i64
  %call21 = call noalias i8* @g_malloc_n(i64 %conv20, i64 8)
  %20 = bitcast i8* %call21 to double*
  store double* %20, double** %grad_data, align 8
  %21 = load i32, i32* %sample_size, align 4
  %mul22 = mul nsw i32 %21, 4
  store i32 %mul22, i32* %width, align 4
  %22 = load double*, double** %grad_data, align 8
  store double* %22, double** %pv, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.17
  %23 = load i32, i32* %sample_size, align 4
  %dec = add nsw i32 %23, -1
  store i32 %dec, i32* %sample_size, align 4
  %tobool23 = icmp ne i32 %23, 0
  br i1 %tobool23, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %24 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %25 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %26 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %27 = load double, double* %pos, align 8
  %28 = load i32, i32* %reverse, align 4
  %call24 = call %struct._GimpGradientSegment* @gimp_gradient_get_color_at(%struct._GimpGradient* %24, %struct._GimpContext* %25, %struct._GimpGradientSegment* %26, double %27, i32 %28, %struct._GimpRGB* %color)
  store %struct._GimpGradientSegment* %call24, %struct._GimpGradientSegment** %seg, align 8
  %r = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color, i32 0, i32 0
  %29 = load double, double* %r, align 8
  %30 = load double*, double** %pv, align 8
  %incdec.ptr = getelementptr inbounds double, double* %30, i32 1
  store double* %incdec.ptr, double** %pv, align 8
  store double %29, double* %30, align 8
  %g = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color, i32 0, i32 1
  %31 = load double, double* %g, align 8
  %32 = load double*, double** %pv, align 8
  %incdec.ptr25 = getelementptr inbounds double, double* %32, i32 1
  store double* %incdec.ptr25, double** %pv, align 8
  store double %31, double* %32, align 8
  %b = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color, i32 0, i32 2
  %33 = load double, double* %b, align 8
  %34 = load double*, double** %pv, align 8
  %incdec.ptr26 = getelementptr inbounds double, double* %34, i32 1
  store double* %incdec.ptr26, double** %pv, align 8
  store double %33, double* %34, align 8
  %a = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color, i32 0, i32 3
  %35 = load double, double* %a, align 8
  %36 = load double*, double** %pv, align 8
  %incdec.ptr27 = getelementptr inbounds double, double* %36, i32 1
  store double* %incdec.ptr27, double** %pv, align 8
  store double %35, double* %36, align 8
  %37 = load double, double* %delta, align 8
  %38 = load double, double* %pos, align 8
  %add = fadd double %38, %37
  store double %add, double* %pos, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.29

if.else.28:                                       ; preds = %if.end.15
  store i32 0, i32* %success, align 4
  br label %if.end.29

if.end.29:                                        ; preds = %if.else.28, %while.end
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.29, %entry
  %39 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %40 = load i32, i32* %success, align 4
  %41 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool31 = icmp ne %struct._GError** %41, null
  br i1 %tobool31, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.30
  %42 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %43 = load %struct._GError*, %struct._GError** %42, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.30
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %43, %cond.true ], [ null, %cond.false ]
  %call32 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %39, i32 %40, %struct._GError* %cond)
  store %struct._GValueArray* %call32, %struct._GValueArray** %return_vals, align 8
  %44 = load i32, i32* %success, align 4
  %tobool33 = icmp ne i32 %44, 0
  br i1 %tobool33, label %if.then.34, label %if.end.42

if.then.34:                                       ; preds = %cond.end
  %45 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values35 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %45, i32 0, i32 1
  %46 = load %struct._GValue*, %struct._GValue** %values35, align 8
  %arrayidx36 = getelementptr inbounds %struct._GValue, %struct._GValue* %46, i64 1
  %47 = load i8*, i8** %actual_name, align 8
  call void @g_value_take_string(%struct._GValue* %arrayidx36, i8* %47)
  %48 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values37 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %48, i32 0, i32 1
  %49 = load %struct._GValue*, %struct._GValue** %values37, align 8
  %arrayidx38 = getelementptr inbounds %struct._GValue, %struct._GValue* %49, i64 2
  %50 = load i32, i32* %width, align 4
  call void @g_value_set_int(%struct._GValue* %arrayidx38, i32 %50)
  %51 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values39 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %51, i32 0, i32 1
  %52 = load %struct._GValue*, %struct._GValue** %values39, align 8
  %arrayidx40 = getelementptr inbounds %struct._GValue, %struct._GValue* %52, i64 3
  %53 = load double*, double** %grad_data, align 8
  %54 = load i32, i32* %width, align 4
  %conv41 = sext i32 %54 to i64
  call void @gimp_value_take_floatarray(%struct._GValue* %arrayidx40, double* %53, i64 %conv41)
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.34, %cond.end
  %55 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %55
}

declare void @gimp_data_factory_data_refresh(%struct._GimpDataFactory*, %struct._GimpContext*) #1

declare %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure*, i32, %struct._GError*) #1

declare i8* @g_value_get_string(%struct._GValue*) #1

declare i8** @gimp_container_get_filtered_name_array(%struct._GimpContainer*, i8*, i32*) #1

declare %struct._GimpContainer* @gimp_data_factory_get_container(%struct._GimpDataFactory*) #1

declare void @g_value_set_int(%struct._GValue*, i32) #1

declare void @gimp_value_take_stringarray(%struct._GValue*, i8**, i64) #1

declare i32 @g_value_get_int(%struct._GValue*) #1

declare i32 @g_value_get_boolean(%struct._GValue*) #1

declare noalias i8* @g_malloc_n(i64, i64) #1

declare %struct._GimpGradient* @gimp_context_get_gradient(%struct._GimpContext*) #1

declare %struct._GimpGradientSegment* @gimp_gradient_get_color_at(%struct._GimpGradient*, %struct._GimpContext*, %struct._GimpGradientSegment*, double, i32, %struct._GimpRGB*) #1

declare void @gimp_value_take_floatarray(%struct._GValue*, double*, i64) #1

declare double* @gimp_value_get_floatarray(%struct._GValue*) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

declare %struct._GimpGradient* @gimp_pdb_get_gradient(%struct._Gimp*, i8*, i32, %struct._GError**) #1

declare noalias i8* @g_strdup(i8*) #1

declare i8* @gimp_object_get_name(i8*) #1

declare void @g_value_take_string(%struct._GValue*, i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
