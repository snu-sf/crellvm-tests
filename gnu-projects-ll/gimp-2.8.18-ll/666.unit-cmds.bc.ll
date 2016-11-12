; ModuleID = './app/pdb/unit-cmds.bc'
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
%struct._GimpProcedure = type { %struct._GimpObject, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, %struct._GParamSpec**, i32, %struct._GParamSpec**, %struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* }
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
%struct._GimpContext = type opaque
%struct._GimpProgress = type opaque
%struct._GValueArray = type { i32, %struct._GValue*, i32 }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GError = type { i32, i32, i8* }

@.str = private unnamed_addr constant [30 x i8] c"gimp-unit-get-number-of-units\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Returns the number of units.\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"This procedure returns the number of defined units.\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"Michael Natterer <mitch@gimp.org>\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"Michael Natterer\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"1999\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"num-units\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"num units\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"The number of units\00", align 1
@.str.9 = private unnamed_addr constant [39 x i8] c"gimp-unit-get-number-of-built-in-units\00", align 1
@.str.10 = private unnamed_addr constant [38 x i8] c"Returns the number of built-in units.\00", align 1
@.str.11 = private unnamed_addr constant [69 x i8] c"This procedure returns the number of defined units built-in to GIMP.\00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"The number of built-in units\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"gimp-unit-new\00", align 1
@.str.14 = private unnamed_addr constant [48 x i8] c"Creates a new unit and returns it's integer ID.\00", align 1
@.str.15 = private unnamed_addr constant [222 x i8] c"This procedure creates a new unit and returns it's integer ID. Note that the new unit will have it's deletion flag set to TRUE, so you will have to set it to FALSE with 'gimp-unit-set-deletion-flag' to make it persistent.\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"identifier\00", align 1
@.str.17 = private unnamed_addr constant [26 x i8] c"The new unit's identifier\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"factor\00", align 1
@.str.19 = private unnamed_addr constant [22 x i8] c"The new unit's factor\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"digits\00", align 1
@.str.21 = private unnamed_addr constant [22 x i8] c"The new unit's digits\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"symbol\00", align 1
@.str.23 = private unnamed_addr constant [22 x i8] c"The new unit's symbol\00", align 1
@.str.24 = private unnamed_addr constant [13 x i8] c"abbreviation\00", align 1
@.str.25 = private unnamed_addr constant [28 x i8] c"The new unit's abbreviation\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"singular\00", align 1
@.str.27 = private unnamed_addr constant [29 x i8] c"The new unit's singular form\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"plural\00", align 1
@.str.29 = private unnamed_addr constant [27 x i8] c"The new unit's plural form\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"unit-id\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"unit id\00", align 1
@.str.32 = private unnamed_addr constant [18 x i8] c"The new unit's ID\00", align 1
@.str.33 = private unnamed_addr constant [28 x i8] c"gimp-unit-get-deletion-flag\00", align 1
@.str.34 = private unnamed_addr constant [39 x i8] c"Returns the deletion flag of the unit.\00", align 1
@.str.35 = private unnamed_addr constant [156 x i8] c"This procedure returns the deletion flag of the unit. If this value is TRUE the unit's definition will not be saved in the user's unitrc file on gimp exit.\00", align 1
@.str.36 = private unnamed_addr constant [22 x i8] c"The unit's integer ID\00", align 1
@.str.37 = private unnamed_addr constant [14 x i8] c"deletion-flag\00", align 1
@.str.38 = private unnamed_addr constant [14 x i8] c"deletion flag\00", align 1
@.str.39 = private unnamed_addr constant [25 x i8] c"The unit's deletion flag\00", align 1
@.str.40 = private unnamed_addr constant [28 x i8] c"gimp-unit-set-deletion-flag\00", align 1
@.str.41 = private unnamed_addr constant [34 x i8] c"Sets the deletion flag of a unit.\00", align 1
@.str.42 = private unnamed_addr constant [162 x i8] c"This procedure sets the unit's deletion flag. If the deletion flag of a unit is TRUE on gimp exit, this unit's definition will not be saved in the user's unitrc.\00", align 1
@.str.43 = private unnamed_addr constant [34 x i8] c"The new deletion flag of the unit\00", align 1
@.str.44 = private unnamed_addr constant [25 x i8] c"gimp-unit-get-identifier\00", align 1
@.str.45 = private unnamed_addr constant [44 x i8] c"Returns the textual identifier of the unit.\00", align 1
@.str.46 = private unnamed_addr constant [198 x i8] c"This procedure returns the textual identifier of the unit. For built-in units it will be the english singular form of the unit's name. For user-defined units this should equal to the singular form.\00", align 1
@.str.47 = private unnamed_addr constant [30 x i8] c"The unit's textual identifier\00", align 1
@.str.48 = private unnamed_addr constant [21 x i8] c"gimp-unit-get-factor\00", align 1
@.str.49 = private unnamed_addr constant [32 x i8] c"Returns the factor of the unit.\00", align 1
@.str.50 = private unnamed_addr constant [156 x i8] c"This procedure returns the unit's factor which indicates how many units make up an inch. Note that asking for the factor of \22pixels\22 will produce an error.\00", align 1
@.str.51 = private unnamed_addr constant [18 x i8] c"The unit's factor\00", align 1
@.str.52 = private unnamed_addr constant [21 x i8] c"gimp-unit-get-digits\00", align 1
@.str.53 = private unnamed_addr constant [42 x i8] c"Returns the number of digits of the unit.\00", align 1
@.str.54 = private unnamed_addr constant [229 x i8] c"This procedure returns the number of digits you should provide in input or output functions to get approximately the same accuracy as with two digits and inches. Note that asking for the digits of \22pixels\22 will produce an error.\00", align 1
@.str.55 = private unnamed_addr constant [28 x i8] c"The unit's number of digits\00", align 1
@.str.56 = private unnamed_addr constant [21 x i8] c"gimp-unit-get-symbol\00", align 1
@.str.57 = private unnamed_addr constant [32 x i8] c"Returns the symbol of the unit.\00", align 1
@.str.58 = private unnamed_addr constant [65 x i8] c"This procedure returns the symbol of the unit (\22''\22 for inches).\00", align 1
@.str.59 = private unnamed_addr constant [18 x i8] c"The unit's symbol\00", align 1
@.str.60 = private unnamed_addr constant [27 x i8] c"gimp-unit-get-abbreviation\00", align 1
@.str.61 = private unnamed_addr constant [38 x i8] c"Returns the abbreviation of the unit.\00", align 1
@.str.62 = private unnamed_addr constant [71 x i8] c"This procedure returns the abbreviation of the unit (\22in\22 for inches).\00", align 1
@.str.63 = private unnamed_addr constant [24 x i8] c"The unit's abbreviation\00", align 1
@.str.64 = private unnamed_addr constant [23 x i8] c"gimp-unit-get-singular\00", align 1
@.str.65 = private unnamed_addr constant [39 x i8] c"Returns the singular form of the unit.\00", align 1
@.str.66 = private unnamed_addr constant [54 x i8] c"This procedure returns the singular form of the unit.\00", align 1
@.str.67 = private unnamed_addr constant [25 x i8] c"The unit's singular form\00", align 1
@.str.68 = private unnamed_addr constant [21 x i8] c"gimp-unit-get-plural\00", align 1
@.str.69 = private unnamed_addr constant [37 x i8] c"Returns the plural form of the unit.\00", align 1
@.str.70 = private unnamed_addr constant [52 x i8] c"This procedure returns the plural form of the unit.\00", align 1
@.str.71 = private unnamed_addr constant [23 x i8] c"The unit's plural form\00", align 1

; Function Attrs: nounwind uwtable
define void @register_unit_procs(%struct._GimpPDB* %pdb) #0 {
entry:
  %pdb.addr = alloca %struct._GimpPDB*, align 8
  %procedure = alloca %struct._GimpProcedure*, align 8
  store %struct._GimpPDB* %pdb, %struct._GimpPDB** %pdb.addr, align 8
  %call = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @unit_get_number_of_units_invoker)
  store %struct._GimpProcedure* %call, %struct._GimpProcedure** %procedure, align 8
  %0 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %1 = bitcast %struct._GimpProcedure* %0 to %struct._GTypeInstance*
  %call1 = call i64 @gimp_object_get_type() #3
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call1)
  %2 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %2, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i32 0, i32 0))
  %3 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %3, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* null)
  %4 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call3 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i32 0, i32 0), i32 -2147483648, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %4, %struct._GParamSpec* %call3)
  %5 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %6 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %5, %struct._GimpProcedure* %6)
  %7 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %8 = bitcast %struct._GimpProcedure* %7 to i8*
  call void @g_object_unref(i8* %8)
  %call4 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @unit_get_number_of_built_in_units_invoker)
  store %struct._GimpProcedure* %call4, %struct._GimpProcedure** %procedure, align 8
  %9 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %10 = bitcast %struct._GimpProcedure* %9 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_object_get_type() #3
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call5)
  %11 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %11, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.9, i32 0, i32 0))
  %12 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %12, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* null)
  %13 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call7 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i32 0, i32 0), i32 -2147483648, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %13, %struct._GParamSpec* %call7)
  %14 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %15 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %14, %struct._GimpProcedure* %15)
  %16 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %17 = bitcast %struct._GimpProcedure* %16 to i8*
  call void @g_object_unref(i8* %17)
  %call8 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @unit_new_invoker)
  store %struct._GimpProcedure* %call8, %struct._GimpProcedure** %procedure, align 8
  %18 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %19 = bitcast %struct._GimpProcedure* %18 to %struct._GTypeInstance*
  %call9 = call i64 @gimp_object_get_type() #3
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call9)
  %20 = bitcast %struct._GTypeInstance* %call10 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %20, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i32 0, i32 0))
  %21 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %21, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([222 x i8], [222 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* null)
  %22 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call11 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.17, i32 0, i32 0), i32 0, i32 0, i32 1, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %22, %struct._GParamSpec* %call11)
  %23 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call12 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.19, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %23, %struct._GParamSpec* %call12)
  %24 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call13 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.21, i32 0, i32 0), i32 -2147483648, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %24, %struct._GParamSpec* %call13)
  %25 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call14 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.23, i32 0, i32 0), i32 0, i32 0, i32 1, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %25, %struct._GParamSpec* %call14)
  %26 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call15 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.25, i32 0, i32 0), i32 0, i32 0, i32 1, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %26, %struct._GParamSpec* %call15)
  %27 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call16 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.27, i32 0, i32 0), i32 0, i32 0, i32 1, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %27, %struct._GParamSpec* %call16)
  %28 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call17 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.29, i32 0, i32 0), i32 0, i32 0, i32 1, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %28, %struct._GParamSpec* %call17)
  %29 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call18 = call %struct._GParamSpec* @gimp_param_spec_unit(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.32, i32 0, i32 0), i32 1, i32 0, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %29, %struct._GParamSpec* %call18)
  %30 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %31 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %30, %struct._GimpProcedure* %31)
  %32 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %33 = bitcast %struct._GimpProcedure* %32 to i8*
  call void @g_object_unref(i8* %33)
  %call19 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @unit_get_deletion_flag_invoker)
  store %struct._GimpProcedure* %call19, %struct._GimpProcedure** %procedure, align 8
  %34 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %35 = bitcast %struct._GimpProcedure* %34 to %struct._GTypeInstance*
  %call20 = call i64 @gimp_object_get_type() #3
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %35, i64 %call20)
  %36 = bitcast %struct._GTypeInstance* %call21 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %36, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.33, i32 0, i32 0))
  %37 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %37, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([156 x i8], [156 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* null)
  %38 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call22 = call %struct._GParamSpec* @gimp_param_spec_unit(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.36, i32 0, i32 0), i32 1, i32 0, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %38, %struct._GParamSpec* %call22)
  %39 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call23 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.39, i32 0, i32 0), i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %39, %struct._GParamSpec* %call23)
  %40 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %41 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %40, %struct._GimpProcedure* %41)
  %42 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %43 = bitcast %struct._GimpProcedure* %42 to i8*
  call void @g_object_unref(i8* %43)
  %call24 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @unit_set_deletion_flag_invoker)
  store %struct._GimpProcedure* %call24, %struct._GimpProcedure** %procedure, align 8
  %44 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %45 = bitcast %struct._GimpProcedure* %44 to %struct._GTypeInstance*
  %call25 = call i64 @gimp_object_get_type() #3
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %45, i64 %call25)
  %46 = bitcast %struct._GTypeInstance* %call26 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %46, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.40, i32 0, i32 0))
  %47 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %47, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([162 x i8], [162 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* null)
  %48 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call27 = call %struct._GParamSpec* @gimp_param_spec_unit(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.36, i32 0, i32 0), i32 1, i32 0, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %48, %struct._GParamSpec* %call27)
  %49 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call28 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.43, i32 0, i32 0), i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %49, %struct._GParamSpec* %call28)
  %50 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %51 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %50, %struct._GimpProcedure* %51)
  %52 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %53 = bitcast %struct._GimpProcedure* %52 to i8*
  call void @g_object_unref(i8* %53)
  %call29 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @unit_get_identifier_invoker)
  store %struct._GimpProcedure* %call29, %struct._GimpProcedure** %procedure, align 8
  %54 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %55 = bitcast %struct._GimpProcedure* %54 to %struct._GTypeInstance*
  %call30 = call i64 @gimp_object_get_type() #3
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %55, i64 %call30)
  %56 = bitcast %struct._GTypeInstance* %call31 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %56, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.44, i32 0, i32 0))
  %57 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %57, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([198 x i8], [198 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* null)
  %58 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call32 = call %struct._GParamSpec* @gimp_param_spec_unit(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.36, i32 0, i32 0), i32 1, i32 0, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %58, %struct._GParamSpec* %call32)
  %59 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call33 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.47, i32 0, i32 0), i32 0, i32 0, i32 0, i8* null, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %59, %struct._GParamSpec* %call33)
  %60 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %61 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %60, %struct._GimpProcedure* %61)
  %62 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %63 = bitcast %struct._GimpProcedure* %62 to i8*
  call void @g_object_unref(i8* %63)
  %call34 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @unit_get_factor_invoker)
  store %struct._GimpProcedure* %call34, %struct._GimpProcedure** %procedure, align 8
  %64 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %65 = bitcast %struct._GimpProcedure* %64 to %struct._GTypeInstance*
  %call35 = call i64 @gimp_object_get_type() #3
  %call36 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %65, i64 %call35)
  %66 = bitcast %struct._GTypeInstance* %call36 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %66, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.48, i32 0, i32 0))
  %67 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %67, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([156 x i8], [156 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* null)
  %68 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call37 = call %struct._GParamSpec* @gimp_param_spec_unit(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.36, i32 0, i32 0), i32 1, i32 0, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %68, %struct._GParamSpec* %call37)
  %69 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call38 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.51, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %69, %struct._GParamSpec* %call38)
  %70 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %71 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %70, %struct._GimpProcedure* %71)
  %72 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %73 = bitcast %struct._GimpProcedure* %72 to i8*
  call void @g_object_unref(i8* %73)
  %call39 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @unit_get_digits_invoker)
  store %struct._GimpProcedure* %call39, %struct._GimpProcedure** %procedure, align 8
  %74 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %75 = bitcast %struct._GimpProcedure* %74 to %struct._GTypeInstance*
  %call40 = call i64 @gimp_object_get_type() #3
  %call41 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %75, i64 %call40)
  %76 = bitcast %struct._GTypeInstance* %call41 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %76, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.52, i32 0, i32 0))
  %77 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %77, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([229 x i8], [229 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* null)
  %78 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call42 = call %struct._GParamSpec* @gimp_param_spec_unit(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.36, i32 0, i32 0), i32 1, i32 0, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %78, %struct._GParamSpec* %call42)
  %79 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call43 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.55, i32 0, i32 0), i32 -2147483648, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %79, %struct._GParamSpec* %call43)
  %80 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %81 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %80, %struct._GimpProcedure* %81)
  %82 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %83 = bitcast %struct._GimpProcedure* %82 to i8*
  call void @g_object_unref(i8* %83)
  %call44 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @unit_get_symbol_invoker)
  store %struct._GimpProcedure* %call44, %struct._GimpProcedure** %procedure, align 8
  %84 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %85 = bitcast %struct._GimpProcedure* %84 to %struct._GTypeInstance*
  %call45 = call i64 @gimp_object_get_type() #3
  %call46 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %85, i64 %call45)
  %86 = bitcast %struct._GTypeInstance* %call46 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %86, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.56, i32 0, i32 0))
  %87 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %87, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* null)
  %88 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call47 = call %struct._GParamSpec* @gimp_param_spec_unit(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.36, i32 0, i32 0), i32 1, i32 0, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %88, %struct._GParamSpec* %call47)
  %89 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call48 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.59, i32 0, i32 0), i32 0, i32 0, i32 0, i8* null, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %89, %struct._GParamSpec* %call48)
  %90 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %91 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %90, %struct._GimpProcedure* %91)
  %92 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %93 = bitcast %struct._GimpProcedure* %92 to i8*
  call void @g_object_unref(i8* %93)
  %call49 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @unit_get_abbreviation_invoker)
  store %struct._GimpProcedure* %call49, %struct._GimpProcedure** %procedure, align 8
  %94 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %95 = bitcast %struct._GimpProcedure* %94 to %struct._GTypeInstance*
  %call50 = call i64 @gimp_object_get_type() #3
  %call51 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %95, i64 %call50)
  %96 = bitcast %struct._GTypeInstance* %call51 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %96, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.60, i32 0, i32 0))
  %97 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %97, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* null)
  %98 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call52 = call %struct._GParamSpec* @gimp_param_spec_unit(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.36, i32 0, i32 0), i32 1, i32 0, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %98, %struct._GParamSpec* %call52)
  %99 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call53 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.63, i32 0, i32 0), i32 0, i32 0, i32 0, i8* null, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %99, %struct._GParamSpec* %call53)
  %100 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %101 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %100, %struct._GimpProcedure* %101)
  %102 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %103 = bitcast %struct._GimpProcedure* %102 to i8*
  call void @g_object_unref(i8* %103)
  %call54 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @unit_get_singular_invoker)
  store %struct._GimpProcedure* %call54, %struct._GimpProcedure** %procedure, align 8
  %104 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %105 = bitcast %struct._GimpProcedure* %104 to %struct._GTypeInstance*
  %call55 = call i64 @gimp_object_get_type() #3
  %call56 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %105, i64 %call55)
  %106 = bitcast %struct._GTypeInstance* %call56 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %106, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.64, i32 0, i32 0))
  %107 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %107, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* null)
  %108 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call57 = call %struct._GParamSpec* @gimp_param_spec_unit(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.36, i32 0, i32 0), i32 1, i32 0, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %108, %struct._GParamSpec* %call57)
  %109 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call58 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.67, i32 0, i32 0), i32 0, i32 0, i32 0, i8* null, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %109, %struct._GParamSpec* %call58)
  %110 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %111 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %110, %struct._GimpProcedure* %111)
  %112 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %113 = bitcast %struct._GimpProcedure* %112 to i8*
  call void @g_object_unref(i8* %113)
  %call59 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @unit_get_plural_invoker)
  store %struct._GimpProcedure* %call59, %struct._GimpProcedure** %procedure, align 8
  %114 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %115 = bitcast %struct._GimpProcedure* %114 to %struct._GTypeInstance*
  %call60 = call i64 @gimp_object_get_type() #3
  %call61 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %115, i64 %call60)
  %116 = bitcast %struct._GTypeInstance* %call61 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %116, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.68, i32 0, i32 0))
  %117 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %117, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* null)
  %118 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call62 = call %struct._GParamSpec* @gimp_param_spec_unit(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.36, i32 0, i32 0), i32 1, i32 0, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %118, %struct._GParamSpec* %call62)
  %119 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call63 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.71, i32 0, i32 0), i32 0, i32 0, i32 0, i8* null, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %119, %struct._GParamSpec* %call63)
  %120 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %121 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %120, %struct._GimpProcedure* %121)
  %122 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %123 = bitcast %struct._GimpProcedure* %122 to i8*
  call void @g_object_unref(i8* %123)
  ret void
}

declare %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)*) #1

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @unit_get_number_of_units_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %return_vals = alloca %struct._GValueArray*, align 8
  %num_units = alloca i32, align 4
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 0, i32* %num_units, align 4
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call = call i32 @_gimp_unit_get_number_of_units(%struct._Gimp* %0)
  store i32 %call, i32* %num_units, align 4
  %1 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %call1 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %1, i32 1, %struct._GError* null)
  store %struct._GValueArray* %call1, %struct._GValueArray** %return_vals, align 8
  %2 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %2, i32 0, i32 1
  %3 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %3, i64 1
  %4 = load i32, i32* %num_units, align 4
  call void @g_value_set_int(%struct._GValue* %arrayidx, i32 %4)
  %5 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %5
}

declare void @gimp_object_set_static_name(%struct._GimpObject*, i8*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #2

declare void @gimp_procedure_set_static_strings(%struct._GimpProcedure*, i8*, i8*, i8*, i8*, i8*, i8*, i8*) #1

declare void @gimp_procedure_add_return_value(%struct._GimpProcedure*, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @gimp_param_spec_int32(i8*, i8*, i8*, i32, i32, i32, i32) #1

declare void @gimp_pdb_register_procedure(%struct._GimpPDB*, %struct._GimpProcedure*) #1

declare void @g_object_unref(i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @unit_get_number_of_built_in_units_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %return_vals = alloca %struct._GValueArray*, align 8
  %num_units = alloca i32, align 4
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 0, i32* %num_units, align 4
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call = call i32 @_gimp_unit_get_number_of_built_in_units(%struct._Gimp* %0) #3
  store i32 %call, i32* %num_units, align 4
  %1 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %call1 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %1, i32 1, %struct._GError* null)
  store %struct._GValueArray* %call1, %struct._GValueArray** %return_vals, align 8
  %2 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %2, i32 0, i32 1
  %3 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %3, i64 1
  %4 = load i32, i32* %num_units, align 4
  call void @g_value_set_int(%struct._GValue* %arrayidx, i32 %4)
  %5 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %5
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @unit_new_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  %factor = alloca double, align 8
  %digits = alloca i32, align 4
  %symbol = alloca i8*, align 8
  %abbreviation = alloca i8*, align 8
  %singular = alloca i8*, align 8
  %plural = alloca i8*, align 8
  %unit_id = alloca i32, align 4
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store i32 0, i32* %unit_id, align 4
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
  %call3 = call double @g_value_get_double(%struct._GValue* %arrayidx2)
  store double %call3, double* %factor, align 8
  %4 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values4 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %4, i32 0, i32 1
  %5 = load %struct._GValue*, %struct._GValue** %values4, align 8
  %arrayidx5 = getelementptr inbounds %struct._GValue, %struct._GValue* %5, i64 2
  %call6 = call i32 @g_value_get_int(%struct._GValue* %arrayidx5)
  store i32 %call6, i32* %digits, align 4
  %6 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values7 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %6, i32 0, i32 1
  %7 = load %struct._GValue*, %struct._GValue** %values7, align 8
  %arrayidx8 = getelementptr inbounds %struct._GValue, %struct._GValue* %7, i64 3
  %call9 = call i8* @g_value_get_string(%struct._GValue* %arrayidx8)
  store i8* %call9, i8** %symbol, align 8
  %8 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values10 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %8, i32 0, i32 1
  %9 = load %struct._GValue*, %struct._GValue** %values10, align 8
  %arrayidx11 = getelementptr inbounds %struct._GValue, %struct._GValue* %9, i64 4
  %call12 = call i8* @g_value_get_string(%struct._GValue* %arrayidx11)
  store i8* %call12, i8** %abbreviation, align 8
  %10 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values13 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %10, i32 0, i32 1
  %11 = load %struct._GValue*, %struct._GValue** %values13, align 8
  %arrayidx14 = getelementptr inbounds %struct._GValue, %struct._GValue* %11, i64 5
  %call15 = call i8* @g_value_get_string(%struct._GValue* %arrayidx14)
  store i8* %call15, i8** %singular, align 8
  %12 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values16 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %12, i32 0, i32 1
  %13 = load %struct._GValue*, %struct._GValue** %values16, align 8
  %arrayidx17 = getelementptr inbounds %struct._GValue, %struct._GValue* %13, i64 6
  %call18 = call i8* @g_value_get_string(%struct._GValue* %arrayidx17)
  store i8* %call18, i8** %plural, align 8
  %14 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %14, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %15 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %16 = load i8*, i8** %identifier, align 8
  %17 = load double, double* %factor, align 8
  %18 = load i32, i32* %digits, align 4
  %19 = load i8*, i8** %symbol, align 8
  %20 = load i8*, i8** %abbreviation, align 8
  %21 = load i8*, i8** %singular, align 8
  %22 = load i8*, i8** %plural, align 8
  %call19 = call i32 @_gimp_unit_new(%struct._Gimp* %15, i8* %16, double %17, i32 %18, i8* %19, i8* %20, i8* %21, i8* %22)
  store i32 %call19, i32* %unit_id, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %23 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %24 = load i32, i32* %success, align 4
  %25 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool20 = icmp ne %struct._GError** %25, null
  br i1 %tobool20, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %26 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %27 = load %struct._GError*, %struct._GError** %26, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %27, %cond.true ], [ null, %cond.false ]
  %call21 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %23, i32 %24, %struct._GError* %cond)
  store %struct._GValueArray* %call21, %struct._GValueArray** %return_vals, align 8
  %28 = load i32, i32* %success, align 4
  %tobool22 = icmp ne i32 %28, 0
  br i1 %tobool22, label %if.then.23, label %if.end.26

if.then.23:                                       ; preds = %cond.end
  %29 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values24 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %29, i32 0, i32 1
  %30 = load %struct._GValue*, %struct._GValue** %values24, align 8
  %arrayidx25 = getelementptr inbounds %struct._GValue, %struct._GValue* %30, i64 1
  %31 = load i32, i32* %unit_id, align 4
  call void @g_value_set_int(%struct._GValue* %arrayidx25, i32 %31)
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.23, %cond.end
  %32 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %32
}

declare void @gimp_procedure_add_argument(%struct._GimpProcedure*, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @gimp_param_spec_string(i8*, i8*, i8*, i32, i32, i32, i8*, i32) #1

declare %struct._GParamSpec* @g_param_spec_double(i8*, i8*, i8*, double, double, double, i32) #1

declare %struct._GParamSpec* @gimp_param_spec_unit(i8*, i8*, i8*, i32, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @unit_get_deletion_flag_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %return_vals = alloca %struct._GValueArray*, align 8
  %unit_id = alloca i32, align 4
  %deletion_flag = alloca i32, align 4
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store i32 0, i32* %deletion_flag, align 4
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %call = call i32 @g_value_get_int(%struct._GValue* %arrayidx)
  store i32 %call, i32* %unit_id, align 4
  %2 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %4 = load i32, i32* %unit_id, align 4
  %call1 = call i32 @_gimp_unit_get_deletion_flag(%struct._Gimp* %3, i32 %4)
  store i32 %call1, i32* %deletion_flag, align 4
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
  store %struct._GValueArray* %call3, %struct._GValueArray** %return_vals, align 8
  %10 = load i32, i32* %success, align 4
  %tobool4 = icmp ne i32 %10, 0
  br i1 %tobool4, label %if.then.5, label %if.end.8

if.then.5:                                        ; preds = %cond.end
  %11 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values6 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %11, i32 0, i32 1
  %12 = load %struct._GValue*, %struct._GValue** %values6, align 8
  %arrayidx7 = getelementptr inbounds %struct._GValue, %struct._GValue* %12, i64 1
  %13 = load i32, i32* %deletion_flag, align 4
  call void @g_value_set_boolean(%struct._GValue* %arrayidx7, i32 %13)
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.5, %cond.end
  %14 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %14
}

declare %struct._GParamSpec* @g_param_spec_boolean(i8*, i8*, i8*, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @unit_set_deletion_flag_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %unit_id = alloca i32, align 4
  %deletion_flag = alloca i32, align 4
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
  store i32 %call, i32* %unit_id, align 4
  %2 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %2, i32 0, i32 1
  %3 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %3, i64 1
  %call3 = call i32 @g_value_get_boolean(%struct._GValue* %arrayidx2)
  store i32 %call3, i32* %deletion_flag, align 4
  %4 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %6 = load i32, i32* %unit_id, align 4
  %7 = load i32, i32* %deletion_flag, align 4
  call void @_gimp_unit_set_deletion_flag(%struct._Gimp* %5, i32 %6, i32 %7)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %9 = load i32, i32* %success, align 4
  %10 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool4 = icmp ne %struct._GError** %10, null
  br i1 %tobool4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %11 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %12 = load %struct._GError*, %struct._GError** %11, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %12, %cond.true ], [ null, %cond.false ]
  %call5 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %8, i32 %9, %struct._GError* %cond)
  ret %struct._GValueArray* %call5
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @unit_get_identifier_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %return_vals = alloca %struct._GValueArray*, align 8
  %unit_id = alloca i32, align 4
  %identifier = alloca i8*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store i8* null, i8** %identifier, align 8
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %call = call i32 @g_value_get_int(%struct._GValue* %arrayidx)
  store i32 %call, i32* %unit_id, align 4
  %2 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %4 = load i32, i32* %unit_id, align 4
  %call1 = call i8* @_gimp_unit_get_identifier(%struct._Gimp* %3, i32 %4)
  %call2 = call noalias i8* @g_strdup(i8* %call1)
  store i8* %call2, i8** %identifier, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %6 = load i32, i32* %success, align 4
  %7 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool3 = icmp ne %struct._GError** %7, null
  br i1 %tobool3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %8 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %9 = load %struct._GError*, %struct._GError** %8, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %9, %cond.true ], [ null, %cond.false ]
  %call4 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %5, i32 %6, %struct._GError* %cond)
  store %struct._GValueArray* %call4, %struct._GValueArray** %return_vals, align 8
  %10 = load i32, i32* %success, align 4
  %tobool5 = icmp ne i32 %10, 0
  br i1 %tobool5, label %if.then.6, label %if.end.9

if.then.6:                                        ; preds = %cond.end
  %11 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values7 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %11, i32 0, i32 1
  %12 = load %struct._GValue*, %struct._GValue** %values7, align 8
  %arrayidx8 = getelementptr inbounds %struct._GValue, %struct._GValue* %12, i64 1
  %13 = load i8*, i8** %identifier, align 8
  call void @g_value_take_string(%struct._GValue* %arrayidx8, i8* %13)
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.6, %cond.end
  %14 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %14
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @unit_get_factor_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %return_vals = alloca %struct._GValueArray*, align 8
  %unit_id = alloca i32, align 4
  %factor = alloca double, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store double 0.000000e+00, double* %factor, align 8
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %call = call i32 @g_value_get_int(%struct._GValue* %arrayidx)
  store i32 %call, i32* %unit_id, align 4
  %2 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %4 = load i32, i32* %unit_id, align 4
  %call1 = call double @_gimp_unit_get_factor(%struct._Gimp* %3, i32 %4)
  store double %call1, double* %factor, align 8
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
  store %struct._GValueArray* %call3, %struct._GValueArray** %return_vals, align 8
  %10 = load i32, i32* %success, align 4
  %tobool4 = icmp ne i32 %10, 0
  br i1 %tobool4, label %if.then.5, label %if.end.8

if.then.5:                                        ; preds = %cond.end
  %11 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values6 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %11, i32 0, i32 1
  %12 = load %struct._GValue*, %struct._GValue** %values6, align 8
  %arrayidx7 = getelementptr inbounds %struct._GValue, %struct._GValue* %12, i64 1
  %13 = load double, double* %factor, align 8
  call void @g_value_set_double(%struct._GValue* %arrayidx7, double %13)
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.5, %cond.end
  %14 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %14
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @unit_get_digits_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %return_vals = alloca %struct._GValueArray*, align 8
  %unit_id = alloca i32, align 4
  %digits = alloca i32, align 4
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store i32 0, i32* %digits, align 4
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %call = call i32 @g_value_get_int(%struct._GValue* %arrayidx)
  store i32 %call, i32* %unit_id, align 4
  %2 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %4 = load i32, i32* %unit_id, align 4
  %call1 = call i32 @_gimp_unit_get_digits(%struct._Gimp* %3, i32 %4)
  store i32 %call1, i32* %digits, align 4
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
  store %struct._GValueArray* %call3, %struct._GValueArray** %return_vals, align 8
  %10 = load i32, i32* %success, align 4
  %tobool4 = icmp ne i32 %10, 0
  br i1 %tobool4, label %if.then.5, label %if.end.8

if.then.5:                                        ; preds = %cond.end
  %11 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values6 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %11, i32 0, i32 1
  %12 = load %struct._GValue*, %struct._GValue** %values6, align 8
  %arrayidx7 = getelementptr inbounds %struct._GValue, %struct._GValue* %12, i64 1
  %13 = load i32, i32* %digits, align 4
  call void @g_value_set_int(%struct._GValue* %arrayidx7, i32 %13)
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.5, %cond.end
  %14 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %14
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @unit_get_symbol_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %return_vals = alloca %struct._GValueArray*, align 8
  %unit_id = alloca i32, align 4
  %symbol = alloca i8*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store i8* null, i8** %symbol, align 8
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %call = call i32 @g_value_get_int(%struct._GValue* %arrayidx)
  store i32 %call, i32* %unit_id, align 4
  %2 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %4 = load i32, i32* %unit_id, align 4
  %call1 = call i8* @_gimp_unit_get_symbol(%struct._Gimp* %3, i32 %4)
  %call2 = call noalias i8* @g_strdup(i8* %call1)
  store i8* %call2, i8** %symbol, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %6 = load i32, i32* %success, align 4
  %7 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool3 = icmp ne %struct._GError** %7, null
  br i1 %tobool3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %8 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %9 = load %struct._GError*, %struct._GError** %8, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %9, %cond.true ], [ null, %cond.false ]
  %call4 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %5, i32 %6, %struct._GError* %cond)
  store %struct._GValueArray* %call4, %struct._GValueArray** %return_vals, align 8
  %10 = load i32, i32* %success, align 4
  %tobool5 = icmp ne i32 %10, 0
  br i1 %tobool5, label %if.then.6, label %if.end.9

if.then.6:                                        ; preds = %cond.end
  %11 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values7 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %11, i32 0, i32 1
  %12 = load %struct._GValue*, %struct._GValue** %values7, align 8
  %arrayidx8 = getelementptr inbounds %struct._GValue, %struct._GValue* %12, i64 1
  %13 = load i8*, i8** %symbol, align 8
  call void @g_value_take_string(%struct._GValue* %arrayidx8, i8* %13)
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.6, %cond.end
  %14 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %14
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @unit_get_abbreviation_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %return_vals = alloca %struct._GValueArray*, align 8
  %unit_id = alloca i32, align 4
  %abbreviation = alloca i8*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store i8* null, i8** %abbreviation, align 8
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %call = call i32 @g_value_get_int(%struct._GValue* %arrayidx)
  store i32 %call, i32* %unit_id, align 4
  %2 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %4 = load i32, i32* %unit_id, align 4
  %call1 = call i8* @_gimp_unit_get_abbreviation(%struct._Gimp* %3, i32 %4)
  %call2 = call noalias i8* @g_strdup(i8* %call1)
  store i8* %call2, i8** %abbreviation, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %6 = load i32, i32* %success, align 4
  %7 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool3 = icmp ne %struct._GError** %7, null
  br i1 %tobool3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %8 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %9 = load %struct._GError*, %struct._GError** %8, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %9, %cond.true ], [ null, %cond.false ]
  %call4 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %5, i32 %6, %struct._GError* %cond)
  store %struct._GValueArray* %call4, %struct._GValueArray** %return_vals, align 8
  %10 = load i32, i32* %success, align 4
  %tobool5 = icmp ne i32 %10, 0
  br i1 %tobool5, label %if.then.6, label %if.end.9

if.then.6:                                        ; preds = %cond.end
  %11 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values7 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %11, i32 0, i32 1
  %12 = load %struct._GValue*, %struct._GValue** %values7, align 8
  %arrayidx8 = getelementptr inbounds %struct._GValue, %struct._GValue* %12, i64 1
  %13 = load i8*, i8** %abbreviation, align 8
  call void @g_value_take_string(%struct._GValue* %arrayidx8, i8* %13)
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.6, %cond.end
  %14 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %14
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @unit_get_singular_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %return_vals = alloca %struct._GValueArray*, align 8
  %unit_id = alloca i32, align 4
  %singular = alloca i8*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store i8* null, i8** %singular, align 8
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %call = call i32 @g_value_get_int(%struct._GValue* %arrayidx)
  store i32 %call, i32* %unit_id, align 4
  %2 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %4 = load i32, i32* %unit_id, align 4
  %call1 = call i8* @_gimp_unit_get_singular(%struct._Gimp* %3, i32 %4)
  %call2 = call noalias i8* @g_strdup(i8* %call1)
  store i8* %call2, i8** %singular, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %6 = load i32, i32* %success, align 4
  %7 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool3 = icmp ne %struct._GError** %7, null
  br i1 %tobool3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %8 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %9 = load %struct._GError*, %struct._GError** %8, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %9, %cond.true ], [ null, %cond.false ]
  %call4 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %5, i32 %6, %struct._GError* %cond)
  store %struct._GValueArray* %call4, %struct._GValueArray** %return_vals, align 8
  %10 = load i32, i32* %success, align 4
  %tobool5 = icmp ne i32 %10, 0
  br i1 %tobool5, label %if.then.6, label %if.end.9

if.then.6:                                        ; preds = %cond.end
  %11 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values7 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %11, i32 0, i32 1
  %12 = load %struct._GValue*, %struct._GValue** %values7, align 8
  %arrayidx8 = getelementptr inbounds %struct._GValue, %struct._GValue* %12, i64 1
  %13 = load i8*, i8** %singular, align 8
  call void @g_value_take_string(%struct._GValue* %arrayidx8, i8* %13)
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.6, %cond.end
  %14 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %14
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @unit_get_plural_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %return_vals = alloca %struct._GValueArray*, align 8
  %unit_id = alloca i32, align 4
  %plural = alloca i8*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store i8* null, i8** %plural, align 8
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %call = call i32 @g_value_get_int(%struct._GValue* %arrayidx)
  store i32 %call, i32* %unit_id, align 4
  %2 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %4 = load i32, i32* %unit_id, align 4
  %call1 = call i8* @_gimp_unit_get_plural(%struct._Gimp* %3, i32 %4)
  %call2 = call noalias i8* @g_strdup(i8* %call1)
  store i8* %call2, i8** %plural, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %6 = load i32, i32* %success, align 4
  %7 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool3 = icmp ne %struct._GError** %7, null
  br i1 %tobool3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %8 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %9 = load %struct._GError*, %struct._GError** %8, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %9, %cond.true ], [ null, %cond.false ]
  %call4 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %5, i32 %6, %struct._GError* %cond)
  store %struct._GValueArray* %call4, %struct._GValueArray** %return_vals, align 8
  %10 = load i32, i32* %success, align 4
  %tobool5 = icmp ne i32 %10, 0
  br i1 %tobool5, label %if.then.6, label %if.end.9

if.then.6:                                        ; preds = %cond.end
  %11 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values7 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %11, i32 0, i32 1
  %12 = load %struct._GValue*, %struct._GValue** %values7, align 8
  %arrayidx8 = getelementptr inbounds %struct._GValue, %struct._GValue* %12, i64 1
  %13 = load i8*, i8** %plural, align 8
  call void @g_value_take_string(%struct._GValue* %arrayidx8, i8* %13)
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.6, %cond.end
  %14 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %14
}

declare i32 @_gimp_unit_get_number_of_units(%struct._Gimp*) #1

declare %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure*, i32, %struct._GError*) #1

declare void @g_value_set_int(%struct._GValue*, i32) #1

; Function Attrs: nounwind readnone
declare i32 @_gimp_unit_get_number_of_built_in_units(%struct._Gimp*) #2

declare i8* @g_value_get_string(%struct._GValue*) #1

declare double @g_value_get_double(%struct._GValue*) #1

declare i32 @g_value_get_int(%struct._GValue*) #1

declare i32 @_gimp_unit_new(%struct._Gimp*, i8*, double, i32, i8*, i8*, i8*, i8*) #1

declare i32 @_gimp_unit_get_deletion_flag(%struct._Gimp*, i32) #1

declare void @g_value_set_boolean(%struct._GValue*, i32) #1

declare i32 @g_value_get_boolean(%struct._GValue*) #1

declare void @_gimp_unit_set_deletion_flag(%struct._Gimp*, i32, i32) #1

declare noalias i8* @g_strdup(i8*) #1

declare i8* @_gimp_unit_get_identifier(%struct._Gimp*, i32) #1

declare void @g_value_take_string(%struct._GValue*, i8*) #1

declare double @_gimp_unit_get_factor(%struct._Gimp*, i32) #1

declare void @g_value_set_double(%struct._GValue*, double) #1

declare i32 @_gimp_unit_get_digits(%struct._Gimp*, i32) #1

declare i8* @_gimp_unit_get_symbol(%struct._Gimp*, i32) #1

declare i8* @_gimp_unit_get_abbreviation(%struct._Gimp*, i32) #1

declare i8* @_gimp_unit_get_singular(%struct._Gimp*, i32) #1

declare i8* @_gimp_unit_get_plural(%struct._Gimp*, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
