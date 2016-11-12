; ModuleID = './app/pdb/palette-cmds.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpRGB = type { double, double, double, double }
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
%struct._GimpBrush = type opaque
%struct._GimpDynamics = type opaque
%struct._GimpPattern = type opaque
%struct._GimpGradient = type opaque
%struct._GimpPalette = type { %struct._GimpData, %struct._GList*, i32, i32 }
%struct._GimpData = type { %struct._GimpViewable }
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
%struct._GimpPaletteEntry = type { %struct._GimpRGB, i8*, i32 }

@.str = private unnamed_addr constant [17 x i8] c"gimp-palette-new\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Creates a new palette\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"This procedure creates a new, uninitialized palette\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"Michael Natterer <mitch@gimp.org>\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"Michael Natterer\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"2004\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"The requested name of the new palette\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"actual-name\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"actual name\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"The actual new palette name\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"gimp-palette-duplicate\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"Duplicates a palette\00", align 1
@.str.13 = private unnamed_addr constant [64 x i8] c"This procedure creates an identical palette by a different name\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"The palette name\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"copy-name\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"copy name\00", align 1
@.str.17 = private unnamed_addr constant [31 x i8] c"The name of the palette's copy\00", align 1
@.str.18 = private unnamed_addr constant [20 x i8] c"gimp-palette-rename\00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"Rename a palette\00", align 1
@.str.20 = private unnamed_addr constant [33 x i8] c"This procedure renames a palette\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"new-name\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"new name\00", align 1
@.str.23 = private unnamed_addr constant [28 x i8] c"The new name of the palette\00", align 1
@.str.24 = private unnamed_addr constant [35 x i8] c"The actual new name of the palette\00", align 1
@.str.25 = private unnamed_addr constant [20 x i8] c"gimp-palette-delete\00", align 1
@.str.26 = private unnamed_addr constant [18 x i8] c"Deletes a palette\00", align 1
@.str.27 = private unnamed_addr constant [33 x i8] c"This procedure deletes a palette\00", align 1
@.str.28 = private unnamed_addr constant [25 x i8] c"gimp-palette-is-editable\00", align 1
@.str.29 = private unnamed_addr constant [31 x i8] c"Tests if palette can be edited\00", align 1
@.str.30 = private unnamed_addr constant [58 x i8] c"Returns TRUE if you have permission to change the palette\00", align 1
@.str.31 = private unnamed_addr constant [43 x i8] c"Bill Skaggs <weskaggs@primate.ucdavis.edu>\00", align 1
@.str.32 = private unnamed_addr constant [12 x i8] c"Bill Skaggs\00", align 1
@.str.33 = private unnamed_addr constant [9 x i8] c"editable\00", align 1
@.str.34 = private unnamed_addr constant [34 x i8] c"TRUE if the palette can be edited\00", align 1
@.str.35 = private unnamed_addr constant [22 x i8] c"gimp-palette-get-info\00", align 1
@.str.36 = private unnamed_addr constant [50 x i8] c"Retrieve information about the specified palette.\00", align 1
@.str.37 = private unnamed_addr constant [116 x i8] c"This procedure retrieves information about the specified palette. This includes the name, and the number of colors.\00", align 1
@.str.38 = private unnamed_addr constant [11 x i8] c"num-colors\00", align 1
@.str.39 = private unnamed_addr constant [11 x i8] c"num colors\00", align 1
@.str.40 = private unnamed_addr constant [36 x i8] c"The number of colors in the palette\00", align 1
@.str.41 = private unnamed_addr constant [24 x i8] c"gimp-palette-get-colors\00", align 1
@.str.42 = private unnamed_addr constant [44 x i8] c"Gets all colors from the specified palette.\00", align 1
@.str.43 = private unnamed_addr constant [69 x i8] c"This procedure retrieves all color entries of the specified palette.\00", align 1
@.str.44 = private unnamed_addr constant [29 x i8] c"Sven Neumann <sven@gimp.org>\00", align 1
@.str.45 = private unnamed_addr constant [13 x i8] c"Sven Neumann\00", align 1
@.str.46 = private unnamed_addr constant [5 x i8] c"2006\00", align 1
@.str.47 = private unnamed_addr constant [27 x i8] c"Length of the colors array\00", align 1
@.str.48 = private unnamed_addr constant [7 x i8] c"colors\00", align 1
@.str.49 = private unnamed_addr constant [26 x i8] c"The colors in the palette\00", align 1
@.str.50 = private unnamed_addr constant [25 x i8] c"gimp-palette-get-columns\00", align 1
@.str.51 = private unnamed_addr constant [63 x i8] c"Retrieves the number of columns to use to display this palette\00", align 1
@.str.52 = private unnamed_addr constant [101 x i8] c"This procedures retrieves the prefered number of columns to use when the palette is being displayed.\00", align 1
@.str.53 = private unnamed_addr constant [5 x i8] c"2005\00", align 1
@.str.54 = private unnamed_addr constant [12 x i8] c"num-columns\00", align 1
@.str.55 = private unnamed_addr constant [12 x i8] c"num columns\00", align 1
@.str.56 = private unnamed_addr constant [51 x i8] c"The number of columns used to display this palette\00", align 1
@.str.57 = private unnamed_addr constant [25 x i8] c"gimp-palette-set-columns\00", align 1
@.str.58 = private unnamed_addr constant [62 x i8] c"Sets the number of columns to use when displaying the palette\00", align 1
@.str.59 = private unnamed_addr constant [197 x i8] c"This procedures allows to control how many colors are shown per row when the palette is being displayed. This value can only be changed if the palette is writable. The maximum allowed value is 64.\00", align 1
@.str.60 = private unnamed_addr constant [8 x i8] c"columns\00", align 1
@.str.61 = private unnamed_addr constant [26 x i8] c"The new number of columns\00", align 1
@.str.62 = private unnamed_addr constant [23 x i8] c"gimp-palette-add-entry\00", align 1
@.str.63 = private unnamed_addr constant [47 x i8] c"Adds a palette entry to the specified palette.\00", align 1
@.str.64 = private unnamed_addr constant [111 x i8] c"This procedure adds an entry to the specifed palette. It returns an error if the entry palette does not exist.\00", align 1
@.str.65 = private unnamed_addr constant [11 x i8] c"entry-name\00", align 1
@.str.66 = private unnamed_addr constant [11 x i8] c"entry name\00", align 1
@.str.67 = private unnamed_addr constant [22 x i8] c"The name of the entry\00", align 1
@.str.68 = private unnamed_addr constant [6 x i8] c"color\00", align 1
@.str.69 = private unnamed_addr constant [28 x i8] c"The new entry's color color\00", align 1
@.str.70 = private unnamed_addr constant [10 x i8] c"entry-num\00", align 1
@.str.71 = private unnamed_addr constant [10 x i8] c"entry num\00", align 1
@.str.72 = private unnamed_addr constant [29 x i8] c"The index of the added entry\00", align 1
@.str.73 = private unnamed_addr constant [26 x i8] c"gimp-palette-delete-entry\00", align 1
@.str.74 = private unnamed_addr constant [52 x i8] c"Deletes a palette entry from the specified palette.\00", align 1
@.str.75 = private unnamed_addr constant [116 x i8] c"This procedure deletes an entry from the specifed palette. It returns an error if the entry palette does not exist.\00", align 1
@.str.76 = private unnamed_addr constant [29 x i8] c"gimp-palette-entry-get-color\00", align 1
@.str.77 = private unnamed_addr constant [61 x i8] c"Gets the specified palette entry from the specified palette.\00", align 1
@.str.78 = private unnamed_addr constant [144 x i8] c"This procedure retrieves the color of the zero-based entry specifed for the specified palette. It returns an error if the entry does not exist.\00", align 1
@.str.79 = private unnamed_addr constant [22 x i8] c"The entry to retrieve\00", align 1
@.str.80 = private unnamed_addr constant [20 x i8] c"The color requested\00", align 1
@.str.81 = private unnamed_addr constant [29 x i8] c"gimp-palette-entry-set-color\00", align 1
@.str.82 = private unnamed_addr constant [59 x i8] c"Sets the specified palette entry in the specified palette.\00", align 1
@.str.83 = private unnamed_addr constant [139 x i8] c"This procedure sets the color of the zero-based entry specifed for the specified palette. It returns an error if the entry does not exist.\00", align 1
@.str.84 = private unnamed_addr constant [14 x i8] c"The new color\00", align 1
@.str.85 = private unnamed_addr constant [28 x i8] c"gimp-palette-entry-get-name\00", align 1
@.str.86 = private unnamed_addr constant [143 x i8] c"This procedure retrieves the name of the zero-based entry specifed for the specified palette. It returns an error if the entry does not exist.\00", align 1
@.str.87 = private unnamed_addr constant [19 x i8] c"The name requested\00", align 1
@.str.88 = private unnamed_addr constant [28 x i8] c"gimp-palette-entry-set-name\00", align 1
@.str.89 = private unnamed_addr constant [138 x i8] c"This procedure sets the name of the zero-based entry specifed for the specified palette. It returns an error if the entry does not exist.\00", align 1
@.str.90 = private unnamed_addr constant [13 x i8] c"The new name\00", align 1
@palette_entry_get_color_invoker.color = private unnamed_addr constant %struct._GimpRGB { double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 1.000000e+00 }, align 8

; Function Attrs: nounwind uwtable
define void @register_palette_procs(%struct._GimpPDB* %pdb) #0 {
entry:
  %pdb.addr = alloca %struct._GimpPDB*, align 8
  %procedure = alloca %struct._GimpProcedure*, align 8
  store %struct._GimpPDB* %pdb, %struct._GimpPDB** %pdb.addr, align 8
  %call = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @palette_new_invoker)
  store %struct._GimpProcedure* %call, %struct._GimpProcedure** %procedure, align 8
  %0 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %1 = bitcast %struct._GimpProcedure* %0 to %struct._GTypeInstance*
  %call1 = call i64 @gimp_object_get_type() #4
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call1)
  %2 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %2, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0))
  %3 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %3, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* null)
  %4 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call3 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i32 0, i32 0), i32 0, i32 0, i32 1, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %4, %struct._GParamSpec* %call3)
  %5 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call4 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i32 0, i32 0), i32 0, i32 0, i32 0, i8* null, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %5, %struct._GParamSpec* %call4)
  %6 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %7 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %6, %struct._GimpProcedure* %7)
  %8 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %9 = bitcast %struct._GimpProcedure* %8 to i8*
  call void @g_object_unref(i8* %9)
  %call5 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @palette_duplicate_invoker)
  store %struct._GimpProcedure* %call5, %struct._GimpProcedure** %procedure, align 8
  %10 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %11 = bitcast %struct._GimpProcedure* %10 to %struct._GTypeInstance*
  %call6 = call i64 @gimp_object_get_type() #4
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call6)
  %12 = bitcast %struct._GTypeInstance* %call7 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %12, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i32 0, i32 0))
  %13 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %13, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* null)
  %14 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call8 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0), i32 0, i32 0, i32 1, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %14, %struct._GParamSpec* %call8)
  %15 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call9 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.17, i32 0, i32 0), i32 0, i32 0, i32 1, i8* null, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %15, %struct._GParamSpec* %call9)
  %16 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %17 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %16, %struct._GimpProcedure* %17)
  %18 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %19 = bitcast %struct._GimpProcedure* %18 to i8*
  call void @g_object_unref(i8* %19)
  %call10 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @palette_rename_invoker)
  store %struct._GimpProcedure* %call10, %struct._GimpProcedure** %procedure, align 8
  %20 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %21 = bitcast %struct._GimpProcedure* %20 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_object_get_type() #4
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call11)
  %22 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %22, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i32 0, i32 0))
  %23 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %23, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* null)
  %24 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call13 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0), i32 0, i32 0, i32 1, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %24, %struct._GParamSpec* %call13)
  %25 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call14 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.23, i32 0, i32 0), i32 0, i32 0, i32 1, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %25, %struct._GParamSpec* %call14)
  %26 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call15 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.24, i32 0, i32 0), i32 0, i32 0, i32 0, i8* null, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %26, %struct._GParamSpec* %call15)
  %27 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %28 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %27, %struct._GimpProcedure* %28)
  %29 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %30 = bitcast %struct._GimpProcedure* %29 to i8*
  call void @g_object_unref(i8* %30)
  %call16 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @palette_delete_invoker)
  store %struct._GimpProcedure* %call16, %struct._GimpProcedure** %procedure, align 8
  %31 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %32 = bitcast %struct._GimpProcedure* %31 to %struct._GTypeInstance*
  %call17 = call i64 @gimp_object_get_type() #4
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %32, i64 %call17)
  %33 = bitcast %struct._GTypeInstance* %call18 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %33, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.25, i32 0, i32 0))
  %34 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %34, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* null)
  %35 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call19 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0), i32 0, i32 0, i32 1, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %35, %struct._GParamSpec* %call19)
  %36 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %37 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %36, %struct._GimpProcedure* %37)
  %38 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %39 = bitcast %struct._GimpProcedure* %38 to i8*
  call void @g_object_unref(i8* %39)
  %call20 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @palette_is_editable_invoker)
  store %struct._GimpProcedure* %call20, %struct._GimpProcedure** %procedure, align 8
  %40 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %41 = bitcast %struct._GimpProcedure* %40 to %struct._GTypeInstance*
  %call21 = call i64 @gimp_object_get_type() #4
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %41, i64 %call21)
  %42 = bitcast %struct._GTypeInstance* %call22 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %42, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.28, i32 0, i32 0))
  %43 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %43, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* null)
  %44 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call23 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0), i32 0, i32 0, i32 1, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %44, %struct._GParamSpec* %call23)
  %45 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call24 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.34, i32 0, i32 0), i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %45, %struct._GParamSpec* %call24)
  %46 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %47 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %46, %struct._GimpProcedure* %47)
  %48 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %49 = bitcast %struct._GimpProcedure* %48 to i8*
  call void @g_object_unref(i8* %49)
  %call25 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @palette_get_info_invoker)
  store %struct._GimpProcedure* %call25, %struct._GimpProcedure** %procedure, align 8
  %50 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %51 = bitcast %struct._GimpProcedure* %50 to %struct._GTypeInstance*
  %call26 = call i64 @gimp_object_get_type() #4
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %51, i64 %call26)
  %52 = bitcast %struct._GTypeInstance* %call27 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %52, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.35, i32 0, i32 0))
  %53 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %53, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([116 x i8], [116 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* null)
  %54 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call28 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0), i32 0, i32 0, i32 1, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %54, %struct._GParamSpec* %call28)
  %55 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call29 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.40, i32 0, i32 0), i32 -2147483648, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %55, %struct._GParamSpec* %call29)
  %56 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %57 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %56, %struct._GimpProcedure* %57)
  %58 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %59 = bitcast %struct._GimpProcedure* %58 to i8*
  call void @g_object_unref(i8* %59)
  %call30 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @palette_get_colors_invoker)
  store %struct._GimpProcedure* %call30, %struct._GimpProcedure** %procedure, align 8
  %60 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %61 = bitcast %struct._GimpProcedure* %60 to %struct._GTypeInstance*
  %call31 = call i64 @gimp_object_get_type() #4
  %call32 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %61, i64 %call31)
  %62 = bitcast %struct._GTypeInstance* %call32 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %62, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.41, i32 0, i32 0))
  %63 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %63, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.46, i32 0, i32 0), i8* null)
  %64 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call33 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0), i32 0, i32 0, i32 1, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %64, %struct._GParamSpec* %call33)
  %65 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call34 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.47, i32 0, i32 0), i32 0, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %65, %struct._GParamSpec* %call34)
  %66 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call35 = call %struct._GParamSpec* @gimp_param_spec_color_array(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.49, i32 0, i32 0), i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %66, %struct._GParamSpec* %call35)
  %67 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %68 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %67, %struct._GimpProcedure* %68)
  %69 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %70 = bitcast %struct._GimpProcedure* %69 to i8*
  call void @g_object_unref(i8* %70)
  %call36 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @palette_get_columns_invoker)
  store %struct._GimpProcedure* %call36, %struct._GimpProcedure** %procedure, align 8
  %71 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %72 = bitcast %struct._GimpProcedure* %71 to %struct._GTypeInstance*
  %call37 = call i64 @gimp_object_get_type() #4
  %call38 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %72, i64 %call37)
  %73 = bitcast %struct._GTypeInstance* %call38 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %73, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.50, i32 0, i32 0))
  %74 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %74, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([101 x i8], [101 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.53, i32 0, i32 0), i8* null)
  %75 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call39 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0), i32 0, i32 0, i32 1, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %75, %struct._GParamSpec* %call39)
  %76 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call40 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.56, i32 0, i32 0), i32 -2147483648, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %76, %struct._GParamSpec* %call40)
  %77 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %78 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %77, %struct._GimpProcedure* %78)
  %79 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %80 = bitcast %struct._GimpProcedure* %79 to i8*
  call void @g_object_unref(i8* %80)
  %call41 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @palette_set_columns_invoker)
  store %struct._GimpProcedure* %call41, %struct._GimpProcedure** %procedure, align 8
  %81 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %82 = bitcast %struct._GimpProcedure* %81 to %struct._GTypeInstance*
  %call42 = call i64 @gimp_object_get_type() #4
  %call43 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %82, i64 %call42)
  %83 = bitcast %struct._GTypeInstance* %call43 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %83, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.57, i32 0, i32 0))
  %84 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %84, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([197 x i8], [197 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.53, i32 0, i32 0), i8* null)
  %85 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call44 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0), i32 0, i32 0, i32 1, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %85, %struct._GParamSpec* %call44)
  %86 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call45 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.61, i32 0, i32 0), i32 0, i32 64, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %86, %struct._GParamSpec* %call45)
  %87 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %88 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %87, %struct._GimpProcedure* %88)
  %89 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %90 = bitcast %struct._GimpProcedure* %89 to i8*
  call void @g_object_unref(i8* %90)
  %call46 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @palette_add_entry_invoker)
  store %struct._GimpProcedure* %call46, %struct._GimpProcedure** %procedure, align 8
  %91 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %92 = bitcast %struct._GimpProcedure* %91 to %struct._GTypeInstance*
  %call47 = call i64 @gimp_object_get_type() #4
  %call48 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %92, i64 %call47)
  %93 = bitcast %struct._GTypeInstance* %call48 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %93, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.62, i32 0, i32 0))
  %94 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %94, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([111 x i8], [111 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* null)
  %95 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call49 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0), i32 0, i32 0, i32 1, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %95, %struct._GParamSpec* %call49)
  %96 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call50 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.67, i32 0, i32 0), i32 0, i32 1, i32 0, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %96, %struct._GParamSpec* %call50)
  %97 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call51 = call %struct._GParamSpec* @gimp_param_spec_rgb(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.69, i32 0, i32 0), i32 0, %struct._GimpRGB* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %97, %struct._GParamSpec* %call51)
  %98 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call52 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.72, i32 0, i32 0), i32 -2147483648, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %98, %struct._GParamSpec* %call52)
  %99 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %100 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %99, %struct._GimpProcedure* %100)
  %101 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %102 = bitcast %struct._GimpProcedure* %101 to i8*
  call void @g_object_unref(i8* %102)
  %call53 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @palette_delete_entry_invoker)
  store %struct._GimpProcedure* %call53, %struct._GimpProcedure** %procedure, align 8
  %103 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %104 = bitcast %struct._GimpProcedure* %103 to %struct._GTypeInstance*
  %call54 = call i64 @gimp_object_get_type() #4
  %call55 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %104, i64 %call54)
  %105 = bitcast %struct._GTypeInstance* %call55 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %105, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.73, i32 0, i32 0))
  %106 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %106, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.73, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.74, i32 0, i32 0), i8* getelementptr inbounds ([116 x i8], [116 x i8]* @.str.75, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* null)
  %107 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call56 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0), i32 0, i32 0, i32 1, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %107, %struct._GParamSpec* %call56)
  %108 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call57 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.72, i32 0, i32 0), i32 -2147483648, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %108, %struct._GParamSpec* %call57)
  %109 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %110 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %109, %struct._GimpProcedure* %110)
  %111 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %112 = bitcast %struct._GimpProcedure* %111 to i8*
  call void @g_object_unref(i8* %112)
  %call58 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @palette_entry_get_color_invoker)
  store %struct._GimpProcedure* %call58, %struct._GimpProcedure** %procedure, align 8
  %113 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %114 = bitcast %struct._GimpProcedure* %113 to %struct._GTypeInstance*
  %call59 = call i64 @gimp_object_get_type() #4
  %call60 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %114, i64 %call59)
  %115 = bitcast %struct._GTypeInstance* %call60 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %115, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.76, i32 0, i32 0))
  %116 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %116, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.76, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.77, i32 0, i32 0), i8* getelementptr inbounds ([144 x i8], [144 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* null)
  %117 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call61 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0), i32 0, i32 0, i32 1, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %117, %struct._GParamSpec* %call61)
  %118 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call62 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.79, i32 0, i32 0), i32 -2147483648, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %118, %struct._GParamSpec* %call62)
  %119 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call63 = call %struct._GParamSpec* @gimp_param_spec_rgb(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.80, i32 0, i32 0), i32 0, %struct._GimpRGB* null, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %119, %struct._GParamSpec* %call63)
  %120 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %121 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %120, %struct._GimpProcedure* %121)
  %122 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %123 = bitcast %struct._GimpProcedure* %122 to i8*
  call void @g_object_unref(i8* %123)
  %call64 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @palette_entry_set_color_invoker)
  store %struct._GimpProcedure* %call64, %struct._GimpProcedure** %procedure, align 8
  %124 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %125 = bitcast %struct._GimpProcedure* %124 to %struct._GTypeInstance*
  %call65 = call i64 @gimp_object_get_type() #4
  %call66 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %125, i64 %call65)
  %126 = bitcast %struct._GTypeInstance* %call66 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %126, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.81, i32 0, i32 0))
  %127 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %127, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.81, i32 0, i32 0), i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.82, i32 0, i32 0), i8* getelementptr inbounds ([139 x i8], [139 x i8]* @.str.83, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* null)
  %128 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call67 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0), i32 0, i32 0, i32 1, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %128, %struct._GParamSpec* %call67)
  %129 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call68 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.79, i32 0, i32 0), i32 -2147483648, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %129, %struct._GParamSpec* %call68)
  %130 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call69 = call %struct._GParamSpec* @gimp_param_spec_rgb(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.84, i32 0, i32 0), i32 0, %struct._GimpRGB* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %130, %struct._GParamSpec* %call69)
  %131 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %132 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %131, %struct._GimpProcedure* %132)
  %133 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %134 = bitcast %struct._GimpProcedure* %133 to i8*
  call void @g_object_unref(i8* %134)
  %call70 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @palette_entry_get_name_invoker)
  store %struct._GimpProcedure* %call70, %struct._GimpProcedure** %procedure, align 8
  %135 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %136 = bitcast %struct._GimpProcedure* %135 to %struct._GTypeInstance*
  %call71 = call i64 @gimp_object_get_type() #4
  %call72 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %136, i64 %call71)
  %137 = bitcast %struct._GTypeInstance* %call72 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %137, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.85, i32 0, i32 0))
  %138 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %138, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.85, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.77, i32 0, i32 0), i8* getelementptr inbounds ([143 x i8], [143 x i8]* @.str.86, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* null)
  %139 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call73 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0), i32 0, i32 0, i32 1, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %139, %struct._GParamSpec* %call73)
  %140 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call74 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.79, i32 0, i32 0), i32 -2147483648, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %140, %struct._GParamSpec* %call74)
  %141 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call75 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.87, i32 0, i32 0), i32 0, i32 0, i32 0, i8* null, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %141, %struct._GParamSpec* %call75)
  %142 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %143 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %142, %struct._GimpProcedure* %143)
  %144 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %145 = bitcast %struct._GimpProcedure* %144 to i8*
  call void @g_object_unref(i8* %145)
  %call76 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @palette_entry_set_name_invoker)
  store %struct._GimpProcedure* %call76, %struct._GimpProcedure** %procedure, align 8
  %146 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %147 = bitcast %struct._GimpProcedure* %146 to %struct._GTypeInstance*
  %call77 = call i64 @gimp_object_get_type() #4
  %call78 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %147, i64 %call77)
  %148 = bitcast %struct._GTypeInstance* %call78 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %148, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.88, i32 0, i32 0))
  %149 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %149, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.82, i32 0, i32 0), i8* getelementptr inbounds ([138 x i8], [138 x i8]* @.str.89, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* null)
  %150 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call79 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0), i32 0, i32 0, i32 1, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %150, %struct._GParamSpec* %call79)
  %151 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call80 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.79, i32 0, i32 0), i32 -2147483648, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %151, %struct._GParamSpec* %call80)
  %152 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call81 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.90, i32 0, i32 0), i32 0, i32 1, i32 0, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %152, %struct._GParamSpec* %call81)
  %153 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %154 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %153, %struct._GimpProcedure* %154)
  %155 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %156 = bitcast %struct._GimpProcedure* %155 to i8*
  call void @g_object_unref(i8* %156)
  ret void
}

declare %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)*) #1

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @palette_new_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  %data = alloca %struct._GimpData*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store i8* null, i8** %actual_name, align 8
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %call = call i8* @g_value_get_string(%struct._GValue* %arrayidx)
  store i8* %call, i8** %name, align 8
  %2 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end.6

if.then:                                          ; preds = %entry
  %3 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %palette_factory = getelementptr inbounds %struct._Gimp, %struct._Gimp* %3, i32 0, i32 41
  %4 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %palette_factory, align 8
  %5 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %6 = load i8*, i8** %name, align 8
  %call1 = call %struct._GimpData* @gimp_data_factory_data_new(%struct._GimpDataFactory* %4, %struct._GimpContext* %5, i8* %6)
  store %struct._GimpData* %call1, %struct._GimpData** %data, align 8
  %7 = load %struct._GimpData*, %struct._GimpData** %data, align 8
  %tobool2 = icmp ne %struct._GimpData* %7, null
  br i1 %tobool2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  %8 = load %struct._GimpData*, %struct._GimpData** %data, align 8
  %9 = bitcast %struct._GimpData* %8 to i8*
  %call4 = call i8* @gimp_object_get_name(i8* %9)
  %call5 = call noalias i8* @g_strdup(i8* %call4)
  store i8* %call5, i8** %actual_name, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %entry
  %10 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %11 = load i32, i32* %success, align 4
  %12 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool7 = icmp ne %struct._GError** %12, null
  br i1 %tobool7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.6
  %13 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %14 = load %struct._GError*, %struct._GError** %13, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %14, %cond.true ], [ null, %cond.false ]
  %call8 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %10, i32 %11, %struct._GError* %cond)
  store %struct._GValueArray* %call8, %struct._GValueArray** %return_vals, align 8
  %15 = load i32, i32* %success, align 4
  %tobool9 = icmp ne i32 %15, 0
  br i1 %tobool9, label %if.then.10, label %if.end.13

if.then.10:                                       ; preds = %cond.end
  %16 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values11 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %16, i32 0, i32 1
  %17 = load %struct._GValue*, %struct._GValue** %values11, align 8
  %arrayidx12 = getelementptr inbounds %struct._GValue, %struct._GValue* %17, i64 1
  %18 = load i8*, i8** %actual_name, align 8
  call void @g_value_take_string(%struct._GValue* %arrayidx12, i8* %18)
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.10, %cond.end
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
define internal %struct._GValueArray* @palette_duplicate_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  %copy_name = alloca i8*, align 8
  %palette = alloca %struct._GimpPalette*, align 8
  %palette_copy = alloca %struct._GimpPalette*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store i8* null, i8** %copy_name, align 8
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %call = call i8* @g_value_get_string(%struct._GValue* %arrayidx)
  store i8* %call, i8** %name, align 8
  %2 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end.13

if.then:                                          ; preds = %entry
  %3 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %4 = load i8*, i8** %name, align 8
  %5 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call1 = call %struct._GimpPalette* @gimp_pdb_get_palette(%struct._Gimp* %3, i8* %4, i32 0, %struct._GError** %5)
  store %struct._GimpPalette* %call1, %struct._GimpPalette** %palette, align 8
  %6 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %tobool2 = icmp ne %struct._GimpPalette* %6, null
  br i1 %tobool2, label %if.then.3, label %if.else.11

if.then.3:                                        ; preds = %if.then
  %7 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %palette_factory = getelementptr inbounds %struct._Gimp, %struct._Gimp* %7, i32 0, i32 41
  %8 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %palette_factory, align 8
  %9 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %10 = bitcast %struct._GimpPalette* %9 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_data_get_type() #4
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call4)
  %11 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpData*
  %call6 = call %struct._GimpData* @gimp_data_factory_data_duplicate(%struct._GimpDataFactory* %8, %struct._GimpData* %11)
  %12 = bitcast %struct._GimpData* %call6 to %struct._GimpPalette*
  store %struct._GimpPalette* %12, %struct._GimpPalette** %palette_copy, align 8
  %13 = load %struct._GimpPalette*, %struct._GimpPalette** %palette_copy, align 8
  %tobool7 = icmp ne %struct._GimpPalette* %13, null
  br i1 %tobool7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.then.3
  %14 = load %struct._GimpPalette*, %struct._GimpPalette** %palette_copy, align 8
  %15 = bitcast %struct._GimpPalette* %14 to i8*
  %call9 = call i8* @gimp_object_get_name(i8* %15)
  %call10 = call noalias i8* @g_strdup(i8* %call9)
  store i8* %call10, i8** %copy_name, align 8
  br label %if.end

if.else:                                          ; preds = %if.then.3
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.8
  br label %if.end.12

if.else.11:                                       ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end.12

if.end.12:                                        ; preds = %if.else.11, %if.end
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %entry
  %16 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %17 = load i32, i32* %success, align 4
  %18 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool14 = icmp ne %struct._GError** %18, null
  br i1 %tobool14, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.13
  %19 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %20 = load %struct._GError*, %struct._GError** %19, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.13
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %20, %cond.true ], [ null, %cond.false ]
  %call15 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %16, i32 %17, %struct._GError* %cond)
  store %struct._GValueArray* %call15, %struct._GValueArray** %return_vals, align 8
  %21 = load i32, i32* %success, align 4
  %tobool16 = icmp ne i32 %21, 0
  br i1 %tobool16, label %if.then.17, label %if.end.20

if.then.17:                                       ; preds = %cond.end
  %22 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values18 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %22, i32 0, i32 1
  %23 = load %struct._GValue*, %struct._GValue** %values18, align 8
  %arrayidx19 = getelementptr inbounds %struct._GValue, %struct._GValue* %23, i64 1
  %24 = load i8*, i8** %copy_name, align 8
  call void @g_value_take_string(%struct._GValue* %arrayidx19, i8* %24)
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.17, %cond.end
  %25 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %25
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @palette_rename_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  %new_name = alloca i8*, align 8
  %actual_name = alloca i8*, align 8
  %palette = alloca %struct._GimpPalette*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store i8* null, i8** %actual_name, align 8
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
  store i8* %call3, i8** %new_name, align 8
  %4 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.end.11

if.then:                                          ; preds = %entry
  %5 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %6 = load i8*, i8** %name, align 8
  %7 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call4 = call %struct._GimpPalette* @gimp_pdb_get_palette(%struct._Gimp* %5, i8* %6, i32 1, %struct._GError** %7)
  store %struct._GimpPalette* %call4, %struct._GimpPalette** %palette, align 8
  %8 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %tobool5 = icmp ne %struct._GimpPalette* %8, null
  br i1 %tobool5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.then
  %9 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %10 = bitcast %struct._GimpPalette* %9 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_object_get_type() #4
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call7)
  %11 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpObject*
  %12 = load i8*, i8** %new_name, align 8
  call void @gimp_object_set_name(%struct._GimpObject* %11, i8* %12)
  %13 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %14 = bitcast %struct._GimpPalette* %13 to i8*
  %call9 = call i8* @gimp_object_get_name(i8* %14)
  %call10 = call noalias i8* @g_strdup(i8* %call9)
  store i8* %call10, i8** %actual_name, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.6
  br label %if.end.11

if.end.11:                                        ; preds = %if.end, %entry
  %15 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %16 = load i32, i32* %success, align 4
  %17 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool12 = icmp ne %struct._GError** %17, null
  br i1 %tobool12, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.11
  %18 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %19 = load %struct._GError*, %struct._GError** %18, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.11
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %19, %cond.true ], [ null, %cond.false ]
  %call13 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %15, i32 %16, %struct._GError* %cond)
  store %struct._GValueArray* %call13, %struct._GValueArray** %return_vals, align 8
  %20 = load i32, i32* %success, align 4
  %tobool14 = icmp ne i32 %20, 0
  br i1 %tobool14, label %if.then.15, label %if.end.18

if.then.15:                                       ; preds = %cond.end
  %21 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values16 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %21, i32 0, i32 1
  %22 = load %struct._GValue*, %struct._GValue** %values16, align 8
  %arrayidx17 = getelementptr inbounds %struct._GValue, %struct._GValue* %22, i64 1
  %23 = load i8*, i8** %actual_name, align 8
  call void @g_value_take_string(%struct._GValue* %arrayidx17, i8* %23)
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.15, %cond.end
  %24 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %24
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @palette_delete_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %name = alloca i8*, align 8
  %palette = alloca %struct._GimpPalette*, align 8
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
  store i8* %call, i8** %name, align 8
  %2 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end.11

if.then:                                          ; preds = %entry
  %3 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %4 = load i8*, i8** %name, align 8
  %5 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call1 = call %struct._GimpPalette* @gimp_pdb_get_palette(%struct._Gimp* %3, i8* %4, i32 0, %struct._GError** %5)
  store %struct._GimpPalette* %call1, %struct._GimpPalette** %palette, align 8
  %6 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %tobool2 = icmp ne %struct._GimpPalette* %6, null
  br i1 %tobool2, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %7 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %8 = bitcast %struct._GimpPalette* %7 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_data_get_type() #4
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call3)
  %9 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpData*
  %call5 = call i32 @gimp_data_is_deletable(%struct._GimpData* %9)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %land.lhs.true
  %10 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %palette_factory = getelementptr inbounds %struct._Gimp, %struct._Gimp* %10, i32 0, i32 41
  %11 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %palette_factory, align 8
  %12 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %13 = bitcast %struct._GimpPalette* %12 to %struct._GTypeInstance*
  %call8 = call i64 @gimp_data_get_type() #4
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call8)
  %14 = bitcast %struct._GTypeInstance* %call9 to %struct._GimpData*
  %15 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call10 = call i32 @gimp_data_factory_data_delete(%struct._GimpDataFactory* %11, %struct._GimpData* %14, i32 1, %struct._GError** %15)
  store i32 %call10, i32* %success, align 4
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.7
  br label %if.end.11

if.end.11:                                        ; preds = %if.end, %entry
  %16 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %17 = load i32, i32* %success, align 4
  %18 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool12 = icmp ne %struct._GError** %18, null
  br i1 %tobool12, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.11
  %19 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %20 = load %struct._GError*, %struct._GError** %19, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.11
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %20, %cond.true ], [ null, %cond.false ]
  %call13 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %16, i32 %17, %struct._GError* %cond)
  ret %struct._GValueArray* %call13
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @palette_is_editable_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  %editable = alloca i32, align 4
  %palette = alloca %struct._GimpPalette*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store i32 0, i32* %editable, align 4
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %call = call i8* @g_value_get_string(%struct._GValue* %arrayidx)
  store i8* %call, i8** %name, align 8
  %2 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end.7

if.then:                                          ; preds = %entry
  %3 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %4 = load i8*, i8** %name, align 8
  %5 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call1 = call %struct._GimpPalette* @gimp_pdb_get_palette(%struct._Gimp* %3, i8* %4, i32 0, %struct._GError** %5)
  store %struct._GimpPalette* %call1, %struct._GimpPalette** %palette, align 8
  %6 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %tobool2 = icmp ne %struct._GimpPalette* %6, null
  br i1 %tobool2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  %7 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %8 = bitcast %struct._GimpPalette* %7 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_data_get_type() #4
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call4)
  %9 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpData*
  %call6 = call i32 @gimp_data_is_writable(%struct._GimpData* %9)
  store i32 %call6, i32* %editable, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %entry
  %10 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %11 = load i32, i32* %success, align 4
  %12 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool8 = icmp ne %struct._GError** %12, null
  br i1 %tobool8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.7
  %13 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %14 = load %struct._GError*, %struct._GError** %13, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %14, %cond.true ], [ null, %cond.false ]
  %call9 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %10, i32 %11, %struct._GError* %cond)
  store %struct._GValueArray* %call9, %struct._GValueArray** %return_vals, align 8
  %15 = load i32, i32* %success, align 4
  %tobool10 = icmp ne i32 %15, 0
  br i1 %tobool10, label %if.then.11, label %if.end.14

if.then.11:                                       ; preds = %cond.end
  %16 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values12 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %16, i32 0, i32 1
  %17 = load %struct._GValue*, %struct._GValue** %values12, align 8
  %arrayidx13 = getelementptr inbounds %struct._GValue, %struct._GValue* %17, i64 1
  %18 = load i32, i32* %editable, align 4
  call void @g_value_set_boolean(%struct._GValue* %arrayidx13, i32 %18)
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.11, %cond.end
  %19 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %19
}

declare %struct._GParamSpec* @g_param_spec_boolean(i8*, i8*, i8*, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @palette_get_info_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  %num_colors = alloca i32, align 4
  %palette = alloca %struct._GimpPalette*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store i32 0, i32* %num_colors, align 4
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %call = call i8* @g_value_get_string(%struct._GValue* %arrayidx)
  store i8* %call, i8** %name, align 8
  %2 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end.5

if.then:                                          ; preds = %entry
  %3 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %4 = load i8*, i8** %name, align 8
  %5 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call1 = call %struct._GimpPalette* @gimp_pdb_get_palette(%struct._Gimp* %3, i8* %4, i32 0, %struct._GError** %5)
  store %struct._GimpPalette* %call1, %struct._GimpPalette** %palette, align 8
  %6 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %tobool2 = icmp ne %struct._GimpPalette* %6, null
  br i1 %tobool2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  %7 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %call4 = call i32 @gimp_palette_get_n_colors(%struct._GimpPalette* %7)
  store i32 %call4, i32* %num_colors, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
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
  %16 = load i32, i32* %num_colors, align 4
  call void @g_value_set_int(%struct._GValue* %arrayidx11, i32 %16)
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.9, %cond.end
  %17 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %17
}

declare %struct._GParamSpec* @gimp_param_spec_int32(i8*, i8*, i8*, i32, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @palette_get_colors_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  %num_colors = alloca i32, align 4
  %colors = alloca %struct._GimpRGB*, align 8
  %palette = alloca %struct._GimpPalette*, align 8
  %list = alloca %struct._GList*, align 8
  %i = alloca i32, align 4
  %entry8 = alloca %struct._GimpPaletteEntry*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store i32 0, i32* %num_colors, align 4
  store %struct._GimpRGB* null, %struct._GimpRGB** %colors, align 8
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %call = call i8* @g_value_get_string(%struct._GValue* %arrayidx)
  store i8* %call, i8** %name, align 8
  %2 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end.11

if.then:                                          ; preds = %entry
  %3 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %4 = load i8*, i8** %name, align 8
  %5 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call1 = call %struct._GimpPalette* @gimp_pdb_get_palette(%struct._Gimp* %3, i8* %4, i32 0, %struct._GError** %5)
  store %struct._GimpPalette* %call1, %struct._GimpPalette** %palette, align 8
  %6 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %tobool2 = icmp ne %struct._GimpPalette* %6, null
  br i1 %tobool2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  %7 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %call4 = call %struct._GList* @gimp_palette_get_colors(%struct._GimpPalette* %7)
  store %struct._GList* %call4, %struct._GList** %list, align 8
  %8 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %call5 = call i32 @gimp_palette_get_n_colors(%struct._GimpPalette* %8)
  store i32 %call5, i32* %num_colors, align 4
  %9 = load i32, i32* %num_colors, align 4
  %conv = sext i32 %9 to i64
  %call6 = call noalias i8* @g_malloc_n(i64 %conv, i64 32)
  %10 = bitcast i8* %call6 to %struct._GimpRGB*
  store %struct._GimpRGB* %10, %struct._GimpRGB** %colors, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %if.then.3
  %11 = load i32, i32* %i, align 4
  %12 = load i32, i32* %num_colors, align 4
  %cmp = icmp slt i32 %11, %12
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %13, i32 0, i32 0
  %14 = load i8*, i8** %data, align 8
  %15 = bitcast i8* %14 to %struct._GimpPaletteEntry*
  store %struct._GimpPaletteEntry* %15, %struct._GimpPaletteEntry** %entry8, align 8
  %16 = load i32, i32* %i, align 4
  %idxprom = sext i32 %16 to i64
  %17 = load %struct._GimpRGB*, %struct._GimpRGB** %colors, align 8
  %arrayidx9 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %17, i64 %idxprom
  %18 = load %struct._GimpPaletteEntry*, %struct._GimpPaletteEntry** %entry8, align 8
  %color = getelementptr inbounds %struct._GimpPaletteEntry, %struct._GimpPaletteEntry* %18, i32 0, i32 0
  %19 = bitcast %struct._GimpRGB* %arrayidx9 to i8*
  %20 = bitcast %struct._GimpRGB* %color to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* %20, i64 32, i32 8, i1 false)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %21 = load i32, i32* %i, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %i, align 4
  %22 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool10 = icmp ne %struct._GList* %22, null
  br i1 %tobool10, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %23 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %23, i32 0, i32 1
  %24 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %24, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  br label %if.end.11

if.end.11:                                        ; preds = %if.end, %entry
  %25 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %26 = load i32, i32* %success, align 4
  %27 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool12 = icmp ne %struct._GError** %27, null
  br i1 %tobool12, label %cond.true.13, label %cond.false.14

cond.true.13:                                     ; preds = %if.end.11
  %28 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %29 = load %struct._GError*, %struct._GError** %28, align 8
  br label %cond.end.15

cond.false.14:                                    ; preds = %if.end.11
  br label %cond.end.15

cond.end.15:                                      ; preds = %cond.false.14, %cond.true.13
  %cond16 = phi %struct._GError* [ %29, %cond.true.13 ], [ null, %cond.false.14 ]
  %call17 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %25, i32 %26, %struct._GError* %cond16)
  store %struct._GValueArray* %call17, %struct._GValueArray** %return_vals, align 8
  %30 = load i32, i32* %success, align 4
  %tobool18 = icmp ne i32 %30, 0
  br i1 %tobool18, label %if.then.19, label %if.end.25

if.then.19:                                       ; preds = %cond.end.15
  %31 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values20 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %31, i32 0, i32 1
  %32 = load %struct._GValue*, %struct._GValue** %values20, align 8
  %arrayidx21 = getelementptr inbounds %struct._GValue, %struct._GValue* %32, i64 1
  %33 = load i32, i32* %num_colors, align 4
  call void @g_value_set_int(%struct._GValue* %arrayidx21, i32 %33)
  %34 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values22 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %34, i32 0, i32 1
  %35 = load %struct._GValue*, %struct._GValue** %values22, align 8
  %arrayidx23 = getelementptr inbounds %struct._GValue, %struct._GValue* %35, i64 2
  %36 = load %struct._GimpRGB*, %struct._GimpRGB** %colors, align 8
  %37 = load i32, i32* %num_colors, align 4
  %conv24 = sext i32 %37 to i64
  call void @gimp_value_take_colorarray(%struct._GValue* %arrayidx23, %struct._GimpRGB* %36, i64 %conv24)
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.19, %cond.end.15
  %38 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %38
}

declare %struct._GParamSpec* @gimp_param_spec_color_array(i8*, i8*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @palette_get_columns_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  %num_columns = alloca i32, align 4
  %palette = alloca %struct._GimpPalette*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store i32 0, i32* %num_columns, align 4
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %call = call i8* @g_value_get_string(%struct._GValue* %arrayidx)
  store i8* %call, i8** %name, align 8
  %2 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end.5

if.then:                                          ; preds = %entry
  %3 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %4 = load i8*, i8** %name, align 8
  %5 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call1 = call %struct._GimpPalette* @gimp_pdb_get_palette(%struct._Gimp* %3, i8* %4, i32 0, %struct._GError** %5)
  store %struct._GimpPalette* %call1, %struct._GimpPalette** %palette, align 8
  %6 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %tobool2 = icmp ne %struct._GimpPalette* %6, null
  br i1 %tobool2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  %7 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %call4 = call i32 @gimp_palette_get_columns(%struct._GimpPalette* %7)
  store i32 %call4, i32* %num_columns, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
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
  %16 = load i32, i32* %num_columns, align 4
  call void @g_value_set_int(%struct._GValue* %arrayidx11, i32 %16)
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.9, %cond.end
  %17 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %17
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @palette_set_columns_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %name = alloca i8*, align 8
  %columns = alloca i32, align 4
  %palette = alloca %struct._GimpPalette*, align 8
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
  store i8* %call, i8** %name, align 8
  %2 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %2, i32 0, i32 1
  %3 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %3, i64 1
  %call3 = call i32 @g_value_get_int(%struct._GValue* %arrayidx2)
  store i32 %call3, i32* %columns, align 4
  %4 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.end.7

if.then:                                          ; preds = %entry
  %5 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %6 = load i8*, i8** %name, align 8
  %7 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call4 = call %struct._GimpPalette* @gimp_pdb_get_palette(%struct._Gimp* %5, i8* %6, i32 1, %struct._GError** %7)
  store %struct._GimpPalette* %call4, %struct._GimpPalette** %palette, align 8
  %8 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %tobool5 = icmp ne %struct._GimpPalette* %8, null
  br i1 %tobool5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.then
  %9 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %10 = load i32, i32* %columns, align 4
  call void @gimp_palette_set_columns(%struct._GimpPalette* %9, i32 %10)
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.6
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %entry
  %11 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %12 = load i32, i32* %success, align 4
  %13 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool8 = icmp ne %struct._GError** %13, null
  br i1 %tobool8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.7
  %14 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %15 = load %struct._GError*, %struct._GError** %14, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %15, %cond.true ], [ null, %cond.false ]
  %call9 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %11, i32 %12, %struct._GError* %cond)
  ret %struct._GValueArray* %call9
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @palette_add_entry_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  %entry_name = alloca i8*, align 8
  %color = alloca %struct._GimpRGB, align 8
  %entry_num = alloca i32, align 4
  %palette = alloca %struct._GimpPalette*, align 8
  %entry9 = alloca %struct._GimpPaletteEntry*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store i32 0, i32* %entry_num, align 4
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
  store i8* %call3, i8** %entry_name, align 8
  %4 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values4 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %4, i32 0, i32 1
  %5 = load %struct._GValue*, %struct._GValue** %values4, align 8
  %arrayidx5 = getelementptr inbounds %struct._GValue, %struct._GValue* %5, i64 2
  call void @gimp_value_get_rgb(%struct._GValue* %arrayidx5, %struct._GimpRGB* %color)
  %6 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then, label %if.end.11

if.then:                                          ; preds = %entry
  %7 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %8 = load i8*, i8** %name, align 8
  %9 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call6 = call %struct._GimpPalette* @gimp_pdb_get_palette(%struct._Gimp* %7, i8* %8, i32 1, %struct._GError** %9)
  store %struct._GimpPalette* %call6, %struct._GimpPalette** %palette, align 8
  %10 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %tobool7 = icmp ne %struct._GimpPalette* %10, null
  br i1 %tobool7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.then
  %11 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %12 = load i8*, i8** %entry_name, align 8
  %call10 = call %struct._GimpPaletteEntry* @gimp_palette_add_entry(%struct._GimpPalette* %11, i32 -1, i8* %12, %struct._GimpRGB* %color)
  store %struct._GimpPaletteEntry* %call10, %struct._GimpPaletteEntry** %entry9, align 8
  %13 = load %struct._GimpPaletteEntry*, %struct._GimpPaletteEntry** %entry9, align 8
  %position = getelementptr inbounds %struct._GimpPaletteEntry, %struct._GimpPaletteEntry* %13, i32 0, i32 2
  %14 = load i32, i32* %position, align 4
  store i32 %14, i32* %entry_num, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.8
  br label %if.end.11

if.end.11:                                        ; preds = %if.end, %entry
  %15 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %16 = load i32, i32* %success, align 4
  %17 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool12 = icmp ne %struct._GError** %17, null
  br i1 %tobool12, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.11
  %18 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %19 = load %struct._GError*, %struct._GError** %18, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.11
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %19, %cond.true ], [ null, %cond.false ]
  %call13 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %15, i32 %16, %struct._GError* %cond)
  store %struct._GValueArray* %call13, %struct._GValueArray** %return_vals, align 8
  %20 = load i32, i32* %success, align 4
  %tobool14 = icmp ne i32 %20, 0
  br i1 %tobool14, label %if.then.15, label %if.end.18

if.then.15:                                       ; preds = %cond.end
  %21 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values16 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %21, i32 0, i32 1
  %22 = load %struct._GValue*, %struct._GValue** %values16, align 8
  %arrayidx17 = getelementptr inbounds %struct._GValue, %struct._GValue* %22, i64 1
  %23 = load i32, i32* %entry_num, align 4
  call void @g_value_set_int(%struct._GValue* %arrayidx17, i32 %23)
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.15, %cond.end
  %24 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %24
}

declare %struct._GParamSpec* @gimp_param_spec_rgb(i8*, i8*, i8*, i32, %struct._GimpRGB*, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @palette_delete_entry_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %name = alloca i8*, align 8
  %entry_num = alloca i32, align 4
  %palette = alloca %struct._GimpPalette*, align 8
  %entry7 = alloca %struct._GimpPaletteEntry*, align 8
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
  store i8* %call, i8** %name, align 8
  %2 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %2, i32 0, i32 1
  %3 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %3, i64 1
  %call3 = call i32 @g_value_get_int(%struct._GValue* %arrayidx2)
  store i32 %call3, i32* %entry_num, align 4
  %4 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.end.13

if.then:                                          ; preds = %entry
  %5 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %6 = load i8*, i8** %name, align 8
  %7 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call4 = call %struct._GimpPalette* @gimp_pdb_get_palette(%struct._Gimp* %5, i8* %6, i32 1, %struct._GError** %7)
  store %struct._GimpPalette* %call4, %struct._GimpPalette** %palette, align 8
  %8 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %tobool5 = icmp ne %struct._GimpPalette* %8, null
  br i1 %tobool5, label %if.then.6, label %if.else.11

if.then.6:                                        ; preds = %if.then
  %9 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %10 = load i32, i32* %entry_num, align 4
  %call8 = call %struct._GimpPaletteEntry* @gimp_palette_get_entry(%struct._GimpPalette* %9, i32 %10)
  store %struct._GimpPaletteEntry* %call8, %struct._GimpPaletteEntry** %entry7, align 8
  %11 = load %struct._GimpPaletteEntry*, %struct._GimpPaletteEntry** %entry7, align 8
  %tobool9 = icmp ne %struct._GimpPaletteEntry* %11, null
  br i1 %tobool9, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %if.then.6
  %12 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %13 = load %struct._GimpPaletteEntry*, %struct._GimpPaletteEntry** %entry7, align 8
  call void @gimp_palette_delete_entry(%struct._GimpPalette* %12, %struct._GimpPaletteEntry* %13)
  br label %if.end

if.else:                                          ; preds = %if.then.6
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.10
  br label %if.end.12

if.else.11:                                       ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end.12

if.end.12:                                        ; preds = %if.else.11, %if.end
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %entry
  %14 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %15 = load i32, i32* %success, align 4
  %16 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool14 = icmp ne %struct._GError** %16, null
  br i1 %tobool14, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.13
  %17 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %18 = load %struct._GError*, %struct._GError** %17, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.13
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %18, %cond.true ], [ null, %cond.false ]
  %call15 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %14, i32 %15, %struct._GError* %cond)
  ret %struct._GValueArray* %call15
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @palette_entry_get_color_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  %entry_num = alloca i32, align 4
  %color = alloca %struct._GimpRGB, align 8
  %palette = alloca %struct._GimpPalette*, align 8
  %entry7 = alloca %struct._GimpPaletteEntry*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = bitcast %struct._GimpRGB* %color to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* bitcast (%struct._GimpRGB* @palette_entry_get_color_invoker.color to i8*), i64 32, i32 8, i1 false)
  %1 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %1, i32 0, i32 1
  %2 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %2, i64 0
  %call = call i8* @g_value_get_string(%struct._GValue* %arrayidx)
  store i8* %call, i8** %name, align 8
  %3 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %3, i32 0, i32 1
  %4 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %4, i64 1
  %call3 = call i32 @g_value_get_int(%struct._GValue* %arrayidx2)
  store i32 %call3, i32* %entry_num, align 4
  %5 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end.14

if.then:                                          ; preds = %entry
  %6 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %7 = load i8*, i8** %name, align 8
  %8 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call4 = call %struct._GimpPalette* @gimp_pdb_get_palette(%struct._Gimp* %6, i8* %7, i32 0, %struct._GError** %8)
  store %struct._GimpPalette* %call4, %struct._GimpPalette** %palette, align 8
  %9 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %tobool5 = icmp ne %struct._GimpPalette* %9, null
  br i1 %tobool5, label %if.then.6, label %if.else.12

if.then.6:                                        ; preds = %if.then
  %10 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %11 = load i32, i32* %entry_num, align 4
  %call8 = call %struct._GimpPaletteEntry* @gimp_palette_get_entry(%struct._GimpPalette* %10, i32 %11)
  store %struct._GimpPaletteEntry* %call8, %struct._GimpPaletteEntry** %entry7, align 8
  %12 = load %struct._GimpPaletteEntry*, %struct._GimpPaletteEntry** %entry7, align 8
  %tobool9 = icmp ne %struct._GimpPaletteEntry* %12, null
  br i1 %tobool9, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %if.then.6
  %13 = load %struct._GimpPaletteEntry*, %struct._GimpPaletteEntry** %entry7, align 8
  %color11 = getelementptr inbounds %struct._GimpPaletteEntry, %struct._GimpPaletteEntry* %13, i32 0, i32 0
  %14 = bitcast %struct._GimpRGB* %color to i8*
  %15 = bitcast %struct._GimpRGB* %color11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %15, i64 32, i32 8, i1 false)
  br label %if.end

if.else:                                          ; preds = %if.then.6
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.10
  br label %if.end.13

if.else.12:                                       ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end.13

if.end.13:                                        ; preds = %if.else.12, %if.end
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %entry
  %16 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %17 = load i32, i32* %success, align 4
  %18 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool15 = icmp ne %struct._GError** %18, null
  br i1 %tobool15, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.14
  %19 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %20 = load %struct._GError*, %struct._GError** %19, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.14
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %20, %cond.true ], [ null, %cond.false ]
  %call16 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %16, i32 %17, %struct._GError* %cond)
  store %struct._GValueArray* %call16, %struct._GValueArray** %return_vals, align 8
  %21 = load i32, i32* %success, align 4
  %tobool17 = icmp ne i32 %21, 0
  br i1 %tobool17, label %if.then.18, label %if.end.21

if.then.18:                                       ; preds = %cond.end
  %22 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values19 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %22, i32 0, i32 1
  %23 = load %struct._GValue*, %struct._GValue** %values19, align 8
  %arrayidx20 = getelementptr inbounds %struct._GValue, %struct._GValue* %23, i64 1
  call void @gimp_value_set_rgb(%struct._GValue* %arrayidx20, %struct._GimpRGB* %color)
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.18, %cond.end
  %24 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %24
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @palette_entry_set_color_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %name = alloca i8*, align 8
  %entry_num = alloca i32, align 4
  %color = alloca %struct._GimpRGB, align 8
  %palette = alloca %struct._GimpPalette*, align 8
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
  store i8* %call, i8** %name, align 8
  %2 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %2, i32 0, i32 1
  %3 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %3, i64 1
  %call3 = call i32 @g_value_get_int(%struct._GValue* %arrayidx2)
  store i32 %call3, i32* %entry_num, align 4
  %4 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values4 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %4, i32 0, i32 1
  %5 = load %struct._GValue*, %struct._GValue** %values4, align 8
  %arrayidx5 = getelementptr inbounds %struct._GValue, %struct._GValue* %5, i64 2
  call void @gimp_value_get_rgb(%struct._GValue* %arrayidx5, %struct._GimpRGB* %color)
  %6 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then, label %if.end.10

if.then:                                          ; preds = %entry
  %7 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %8 = load i8*, i8** %name, align 8
  %9 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call6 = call %struct._GimpPalette* @gimp_pdb_get_palette(%struct._Gimp* %7, i8* %8, i32 1, %struct._GError** %9)
  store %struct._GimpPalette* %call6, %struct._GimpPalette** %palette, align 8
  %10 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %tobool7 = icmp ne %struct._GimpPalette* %10, null
  br i1 %tobool7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.then
  %11 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %12 = load i32, i32* %entry_num, align 4
  %call9 = call i32 @gimp_palette_set_entry_color(%struct._GimpPalette* %11, i32 %12, %struct._GimpRGB* %color)
  store i32 %call9, i32* %success, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.8
  br label %if.end.10

if.end.10:                                        ; preds = %if.end, %entry
  %13 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %14 = load i32, i32* %success, align 4
  %15 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool11 = icmp ne %struct._GError** %15, null
  br i1 %tobool11, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.10
  %16 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %17 = load %struct._GError*, %struct._GError** %16, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.10
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %17, %cond.true ], [ null, %cond.false ]
  %call12 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %13, i32 %14, %struct._GError* %cond)
  ret %struct._GValueArray* %call12
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @palette_entry_get_name_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  %entry_num = alloca i32, align 4
  %entry_name = alloca i8*, align 8
  %palette = alloca %struct._GimpPalette*, align 8
  %entry7 = alloca %struct._GimpPaletteEntry*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store i8* null, i8** %entry_name, align 8
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
  store i32 %call3, i32* %entry_num, align 4
  %4 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.end.15

if.then:                                          ; preds = %entry
  %5 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %6 = load i8*, i8** %name, align 8
  %7 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call4 = call %struct._GimpPalette* @gimp_pdb_get_palette(%struct._Gimp* %5, i8* %6, i32 0, %struct._GError** %7)
  store %struct._GimpPalette* %call4, %struct._GimpPalette** %palette, align 8
  %8 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %tobool5 = icmp ne %struct._GimpPalette* %8, null
  br i1 %tobool5, label %if.then.6, label %if.else.13

if.then.6:                                        ; preds = %if.then
  %9 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %10 = load i32, i32* %entry_num, align 4
  %call8 = call %struct._GimpPaletteEntry* @gimp_palette_get_entry(%struct._GimpPalette* %9, i32 %10)
  store %struct._GimpPaletteEntry* %call8, %struct._GimpPaletteEntry** %entry7, align 8
  %11 = load %struct._GimpPaletteEntry*, %struct._GimpPaletteEntry** %entry7, align 8
  %tobool9 = icmp ne %struct._GimpPaletteEntry* %11, null
  br i1 %tobool9, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %if.then.6
  %12 = load %struct._GimpPaletteEntry*, %struct._GimpPaletteEntry** %entry7, align 8
  %name11 = getelementptr inbounds %struct._GimpPaletteEntry, %struct._GimpPaletteEntry* %12, i32 0, i32 1
  %13 = load i8*, i8** %name11, align 8
  %call12 = call noalias i8* @g_strdup(i8* %13)
  store i8* %call12, i8** %entry_name, align 8
  br label %if.end

if.else:                                          ; preds = %if.then.6
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.10
  br label %if.end.14

if.else.13:                                       ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end.14

if.end.14:                                        ; preds = %if.else.13, %if.end
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %entry
  %14 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %15 = load i32, i32* %success, align 4
  %16 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool16 = icmp ne %struct._GError** %16, null
  br i1 %tobool16, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.15
  %17 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %18 = load %struct._GError*, %struct._GError** %17, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.15
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %18, %cond.true ], [ null, %cond.false ]
  %call17 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %14, i32 %15, %struct._GError* %cond)
  store %struct._GValueArray* %call17, %struct._GValueArray** %return_vals, align 8
  %19 = load i32, i32* %success, align 4
  %tobool18 = icmp ne i32 %19, 0
  br i1 %tobool18, label %if.then.19, label %if.end.22

if.then.19:                                       ; preds = %cond.end
  %20 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values20 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %20, i32 0, i32 1
  %21 = load %struct._GValue*, %struct._GValue** %values20, align 8
  %arrayidx21 = getelementptr inbounds %struct._GValue, %struct._GValue* %21, i64 1
  %22 = load i8*, i8** %entry_name, align 8
  call void @g_value_take_string(%struct._GValue* %arrayidx21, i8* %22)
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.19, %cond.end
  %23 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %23
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @palette_entry_set_name_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %name = alloca i8*, align 8
  %entry_num = alloca i32, align 4
  %entry_name = alloca i8*, align 8
  %palette = alloca %struct._GimpPalette*, align 8
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
  store i8* %call, i8** %name, align 8
  %2 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %2, i32 0, i32 1
  %3 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %3, i64 1
  %call3 = call i32 @g_value_get_int(%struct._GValue* %arrayidx2)
  store i32 %call3, i32* %entry_num, align 4
  %4 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values4 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %4, i32 0, i32 1
  %5 = load %struct._GValue*, %struct._GValue** %values4, align 8
  %arrayidx5 = getelementptr inbounds %struct._GValue, %struct._GValue* %5, i64 2
  %call6 = call i8* @g_value_get_string(%struct._GValue* %arrayidx5)
  store i8* %call6, i8** %entry_name, align 8
  %6 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then, label %if.end.11

if.then:                                          ; preds = %entry
  %7 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %8 = load i8*, i8** %name, align 8
  %9 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call7 = call %struct._GimpPalette* @gimp_pdb_get_palette(%struct._Gimp* %7, i8* %8, i32 1, %struct._GError** %9)
  store %struct._GimpPalette* %call7, %struct._GimpPalette** %palette, align 8
  %10 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %tobool8 = icmp ne %struct._GimpPalette* %10, null
  br i1 %tobool8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.then
  %11 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %12 = load i32, i32* %entry_num, align 4
  %13 = load i8*, i8** %entry_name, align 8
  %call10 = call i32 @gimp_palette_set_entry_name(%struct._GimpPalette* %11, i32 %12, i8* %13)
  store i32 %call10, i32* %success, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.9
  br label %if.end.11

if.end.11:                                        ; preds = %if.end, %entry
  %14 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %15 = load i32, i32* %success, align 4
  %16 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool12 = icmp ne %struct._GError** %16, null
  br i1 %tobool12, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.11
  %17 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %18 = load %struct._GError*, %struct._GError** %17, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.11
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %18, %cond.true ], [ null, %cond.false ]
  %call13 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %14, i32 %15, %struct._GError* %cond)
  ret %struct._GValueArray* %call13
}

declare i8* @g_value_get_string(%struct._GValue*) #1

declare %struct._GimpData* @gimp_data_factory_data_new(%struct._GimpDataFactory*, %struct._GimpContext*, i8*) #1

declare noalias i8* @g_strdup(i8*) #1

declare i8* @gimp_object_get_name(i8*) #1

declare %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure*, i32, %struct._GError*) #1

declare void @g_value_take_string(%struct._GValue*, i8*) #1

declare %struct._GimpPalette* @gimp_pdb_get_palette(%struct._Gimp*, i8*, i32, %struct._GError**) #1

declare %struct._GimpData* @gimp_data_factory_data_duplicate(%struct._GimpDataFactory*, %struct._GimpData*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_data_get_type() #2

declare void @gimp_object_set_name(%struct._GimpObject*, i8*) #1

declare i32 @gimp_data_is_deletable(%struct._GimpData*) #1

declare i32 @gimp_data_factory_data_delete(%struct._GimpDataFactory*, %struct._GimpData*, i32, %struct._GError**) #1

declare i32 @gimp_data_is_writable(%struct._GimpData*) #1

declare void @g_value_set_boolean(%struct._GValue*, i32) #1

declare i32 @gimp_palette_get_n_colors(%struct._GimpPalette*) #1

declare void @g_value_set_int(%struct._GValue*, i32) #1

declare %struct._GList* @gimp_palette_get_colors(%struct._GimpPalette*) #1

declare noalias i8* @g_malloc_n(i64, i64) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

declare void @gimp_value_take_colorarray(%struct._GValue*, %struct._GimpRGB*, i64) #1

declare i32 @gimp_palette_get_columns(%struct._GimpPalette*) #1

declare i32 @g_value_get_int(%struct._GValue*) #1

declare void @gimp_palette_set_columns(%struct._GimpPalette*, i32) #1

declare void @gimp_value_get_rgb(%struct._GValue*, %struct._GimpRGB*) #1

declare %struct._GimpPaletteEntry* @gimp_palette_add_entry(%struct._GimpPalette*, i32, i8*, %struct._GimpRGB*) #1

declare %struct._GimpPaletteEntry* @gimp_palette_get_entry(%struct._GimpPalette*, i32) #1

declare void @gimp_palette_delete_entry(%struct._GimpPalette*, %struct._GimpPaletteEntry*) #1

declare void @gimp_value_set_rgb(%struct._GValue*, %struct._GimpRGB*) #1

declare i32 @gimp_palette_set_entry_color(%struct._GimpPalette*, i32, %struct._GimpRGB*) #1

declare i32 @gimp_palette_set_entry_name(%struct._GimpPalette*, i32, i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
