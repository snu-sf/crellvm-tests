; ModuleID = './app/pdb/grid-cmds.bc'
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
%struct._GimpImage = type { %struct._GimpViewable, %struct._Gimp* }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpGrid = type { %struct._GimpObject, i32, %struct._GimpRGB, %struct._GimpRGB, double, double, i32, double, double, i32 }

@.str = private unnamed_addr constant [28 x i8] c"gimp-image-grid-get-spacing\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Gets the spacing of an image's grid.\00", align 1
@.str.2 = private unnamed_addr constant [114 x i8] c"This procedure retrieves the horizontal and vertical spacing of an image's grid. It takes the image as parameter.\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"Sylvain Foret\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"2005\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"The image\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"xspacing\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"The image's grid horizontal spacing\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"yspacing\00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"The image's grid vertical spacing\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"gimp-image-grid-set-spacing\00", align 1
@.str.12 = private unnamed_addr constant [37 x i8] c"Sets the spacing of an image's grid.\00", align 1
@.str.13 = private unnamed_addr constant [76 x i8] c"This procedure sets the horizontal and vertical spacing of an image's grid.\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"gimp-image-grid-get-offset\00", align 1
@.str.15 = private unnamed_addr constant [36 x i8] c"Gets the offset of an image's grid.\00", align 1
@.str.16 = private unnamed_addr constant [113 x i8] c"This procedure retrieves the horizontal and vertical offset of an image's grid. It takes the image as parameter.\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"xoffset\00", align 1
@.str.18 = private unnamed_addr constant [35 x i8] c"The image's grid horizontal offset\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"yoffset\00", align 1
@.str.20 = private unnamed_addr constant [33 x i8] c"The image's grid vertical offset\00", align 1
@.str.21 = private unnamed_addr constant [27 x i8] c"gimp-image-grid-set-offset\00", align 1
@.str.22 = private unnamed_addr constant [36 x i8] c"Sets the offset of an image's grid.\00", align 1
@.str.23 = private unnamed_addr constant [75 x i8] c"This procedure sets the horizontal and vertical offset of an image's grid.\00", align 1
@.str.24 = private unnamed_addr constant [37 x i8] c"gimp-image-grid-get-foreground-color\00", align 1
@.str.25 = private unnamed_addr constant [46 x i8] c"Sets the foreground color of an image's grid.\00", align 1
@.str.26 = private unnamed_addr constant [61 x i8] c"This procedure gets the foreground color of an image's grid.\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"fgcolor\00", align 1
@.str.28 = private unnamed_addr constant [34 x i8] c"The image's grid foreground color\00", align 1
@.str.29 = private unnamed_addr constant [37 x i8] c"gimp-image-grid-set-foreground-color\00", align 1
@.str.30 = private unnamed_addr constant [46 x i8] c"Gets the foreground color of an image's grid.\00", align 1
@.str.31 = private unnamed_addr constant [61 x i8] c"This procedure sets the foreground color of an image's grid.\00", align 1
@.str.32 = private unnamed_addr constant [25 x i8] c"The new foreground color\00", align 1
@.str.33 = private unnamed_addr constant [37 x i8] c"gimp-image-grid-get-background-color\00", align 1
@.str.34 = private unnamed_addr constant [46 x i8] c"Sets the background color of an image's grid.\00", align 1
@.str.35 = private unnamed_addr constant [61 x i8] c"This procedure gets the background color of an image's grid.\00", align 1
@.str.36 = private unnamed_addr constant [8 x i8] c"bgcolor\00", align 1
@.str.37 = private unnamed_addr constant [34 x i8] c"The image's grid background color\00", align 1
@.str.38 = private unnamed_addr constant [37 x i8] c"gimp-image-grid-set-background-color\00", align 1
@.str.39 = private unnamed_addr constant [46 x i8] c"Gets the background color of an image's grid.\00", align 1
@.str.40 = private unnamed_addr constant [61 x i8] c"This procedure sets the background color of an image's grid.\00", align 1
@.str.41 = private unnamed_addr constant [25 x i8] c"The new background color\00", align 1
@.str.42 = private unnamed_addr constant [26 x i8] c"gimp-image-grid-get-style\00", align 1
@.str.43 = private unnamed_addr constant [35 x i8] c"Gets the style of an image's grid.\00", align 1
@.str.44 = private unnamed_addr constant [55 x i8] c"This procedure retrieves the style of an image's grid.\00", align 1
@.str.45 = private unnamed_addr constant [6 x i8] c"style\00", align 1
@.str.46 = private unnamed_addr constant [23 x i8] c"The image's grid style\00", align 1
@.str.47 = private unnamed_addr constant [26 x i8] c"gimp-image-grid-set-style\00", align 1
@.str.48 = private unnamed_addr constant [40 x i8] c"Sets the style unit of an image's grid.\00", align 1
@.str.49 = private unnamed_addr constant [102 x i8] c"This procedure sets the style of an image's grid. It takes the image and the new style as parameters.\00", align 1
@image_grid_get_foreground_color_invoker.fgcolor = private unnamed_addr constant %struct._GimpRGB { double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 1.000000e+00 }, align 8
@image_grid_get_background_color_invoker.bgcolor = private unnamed_addr constant %struct._GimpRGB { double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 1.000000e+00 }, align 8

; Function Attrs: nounwind uwtable
define void @register_grid_procs(%struct._GimpPDB* %pdb) #0 {
entry:
  %pdb.addr = alloca %struct._GimpPDB*, align 8
  %procedure = alloca %struct._GimpProcedure*, align 8
  store %struct._GimpPDB* %pdb, %struct._GimpPDB** %pdb.addr, align 8
  %call = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @image_grid_get_spacing_invoker)
  store %struct._GimpProcedure* %call, %struct._GimpProcedure** %procedure, align 8
  %0 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %1 = bitcast %struct._GimpProcedure* %0 to %struct._GTypeInstance*
  %call1 = call i64 @gimp_object_get_type() #4
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call1)
  %2 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %2, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i32 0, i32 0))
  %3 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %3, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([114 x i8], [114 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* null)
  %4 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %5 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %5, i32 0, i32 1
  %6 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call3 = call %struct._GParamSpec* @gimp_param_spec_image_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), %struct._Gimp* %6, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %4, %struct._GParamSpec* %call3)
  %7 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call4 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %7, %struct._GParamSpec* %call4)
  %8 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call5 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %8, %struct._GParamSpec* %call5)
  %9 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %10 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %9, %struct._GimpProcedure* %10)
  %11 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %12 = bitcast %struct._GimpProcedure* %11 to i8*
  call void @g_object_unref(i8* %12)
  %call6 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @image_grid_set_spacing_invoker)
  store %struct._GimpProcedure* %call6, %struct._GimpProcedure** %procedure, align 8
  %13 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %14 = bitcast %struct._GimpProcedure* %13 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_object_get_type() #4
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call7)
  %15 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %15, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i32 0, i32 0))
  %16 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %16, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* null)
  %17 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %18 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp9 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %18, i32 0, i32 1
  %19 = load %struct._Gimp*, %struct._Gimp** %gimp9, align 8
  %call10 = call %struct._GParamSpec* @gimp_param_spec_image_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), %struct._Gimp* %19, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %17, %struct._GParamSpec* %call10)
  %20 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call11 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %20, %struct._GParamSpec* %call11)
  %21 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call12 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %21, %struct._GParamSpec* %call12)
  %22 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %23 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %22, %struct._GimpProcedure* %23)
  %24 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %25 = bitcast %struct._GimpProcedure* %24 to i8*
  call void @g_object_unref(i8* %25)
  %call13 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @image_grid_get_offset_invoker)
  store %struct._GimpProcedure* %call13, %struct._GimpProcedure** %procedure, align 8
  %26 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %27 = bitcast %struct._GimpProcedure* %26 to %struct._GTypeInstance*
  %call14 = call i64 @gimp_object_get_type() #4
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call14)
  %28 = bitcast %struct._GTypeInstance* %call15 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %28, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.14, i32 0, i32 0))
  %29 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %29, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([113 x i8], [113 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* null)
  %30 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %31 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp16 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %31, i32 0, i32 1
  %32 = load %struct._Gimp*, %struct._Gimp** %gimp16, align 8
  %call17 = call %struct._GParamSpec* @gimp_param_spec_image_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), %struct._Gimp* %32, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %30, %struct._GParamSpec* %call17)
  %33 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call18 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.18, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %33, %struct._GParamSpec* %call18)
  %34 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call19 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.20, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %34, %struct._GParamSpec* %call19)
  %35 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %36 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %35, %struct._GimpProcedure* %36)
  %37 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %38 = bitcast %struct._GimpProcedure* %37 to i8*
  call void @g_object_unref(i8* %38)
  %call20 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @image_grid_set_offset_invoker)
  store %struct._GimpProcedure* %call20, %struct._GimpProcedure** %procedure, align 8
  %39 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %40 = bitcast %struct._GimpProcedure* %39 to %struct._GTypeInstance*
  %call21 = call i64 @gimp_object_get_type() #4
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %40, i64 %call21)
  %41 = bitcast %struct._GTypeInstance* %call22 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %41, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.21, i32 0, i32 0))
  %42 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %42, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* null)
  %43 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %44 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp23 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %44, i32 0, i32 1
  %45 = load %struct._Gimp*, %struct._Gimp** %gimp23, align 8
  %call24 = call %struct._GParamSpec* @gimp_param_spec_image_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), %struct._Gimp* %45, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %43, %struct._GParamSpec* %call24)
  %46 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call25 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.18, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %46, %struct._GParamSpec* %call25)
  %47 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call26 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.20, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %47, %struct._GParamSpec* %call26)
  %48 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %49 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %48, %struct._GimpProcedure* %49)
  %50 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %51 = bitcast %struct._GimpProcedure* %50 to i8*
  call void @g_object_unref(i8* %51)
  %call27 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @image_grid_get_foreground_color_invoker)
  store %struct._GimpProcedure* %call27, %struct._GimpProcedure** %procedure, align 8
  %52 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %53 = bitcast %struct._GimpProcedure* %52 to %struct._GTypeInstance*
  %call28 = call i64 @gimp_object_get_type() #4
  %call29 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %53, i64 %call28)
  %54 = bitcast %struct._GTypeInstance* %call29 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %54, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.24, i32 0, i32 0))
  %55 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %55, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* null)
  %56 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %57 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp30 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %57, i32 0, i32 1
  %58 = load %struct._Gimp*, %struct._Gimp** %gimp30, align 8
  %call31 = call %struct._GParamSpec* @gimp_param_spec_image_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), %struct._Gimp* %58, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %56, %struct._GParamSpec* %call31)
  %59 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call32 = call %struct._GParamSpec* @gimp_param_spec_rgb(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.28, i32 0, i32 0), i32 1, %struct._GimpRGB* null, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %59, %struct._GParamSpec* %call32)
  %60 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %61 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %60, %struct._GimpProcedure* %61)
  %62 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %63 = bitcast %struct._GimpProcedure* %62 to i8*
  call void @g_object_unref(i8* %63)
  %call33 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @image_grid_set_foreground_color_invoker)
  store %struct._GimpProcedure* %call33, %struct._GimpProcedure** %procedure, align 8
  %64 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %65 = bitcast %struct._GimpProcedure* %64 to %struct._GTypeInstance*
  %call34 = call i64 @gimp_object_get_type() #4
  %call35 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %65, i64 %call34)
  %66 = bitcast %struct._GTypeInstance* %call35 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %66, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.29, i32 0, i32 0))
  %67 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %67, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* null)
  %68 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %69 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp36 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %69, i32 0, i32 1
  %70 = load %struct._Gimp*, %struct._Gimp** %gimp36, align 8
  %call37 = call %struct._GParamSpec* @gimp_param_spec_image_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), %struct._Gimp* %70, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %68, %struct._GParamSpec* %call37)
  %71 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call38 = call %struct._GParamSpec* @gimp_param_spec_rgb(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.32, i32 0, i32 0), i32 1, %struct._GimpRGB* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %71, %struct._GParamSpec* %call38)
  %72 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %73 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %72, %struct._GimpProcedure* %73)
  %74 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %75 = bitcast %struct._GimpProcedure* %74 to i8*
  call void @g_object_unref(i8* %75)
  %call39 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @image_grid_get_background_color_invoker)
  store %struct._GimpProcedure* %call39, %struct._GimpProcedure** %procedure, align 8
  %76 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %77 = bitcast %struct._GimpProcedure* %76 to %struct._GTypeInstance*
  %call40 = call i64 @gimp_object_get_type() #4
  %call41 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %77, i64 %call40)
  %78 = bitcast %struct._GTypeInstance* %call41 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %78, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.33, i32 0, i32 0))
  %79 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %79, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* null)
  %80 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %81 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp42 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %81, i32 0, i32 1
  %82 = load %struct._Gimp*, %struct._Gimp** %gimp42, align 8
  %call43 = call %struct._GParamSpec* @gimp_param_spec_image_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), %struct._Gimp* %82, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %80, %struct._GParamSpec* %call43)
  %83 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call44 = call %struct._GParamSpec* @gimp_param_spec_rgb(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.37, i32 0, i32 0), i32 1, %struct._GimpRGB* null, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %83, %struct._GParamSpec* %call44)
  %84 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %85 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %84, %struct._GimpProcedure* %85)
  %86 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %87 = bitcast %struct._GimpProcedure* %86 to i8*
  call void @g_object_unref(i8* %87)
  %call45 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @image_grid_set_background_color_invoker)
  store %struct._GimpProcedure* %call45, %struct._GimpProcedure** %procedure, align 8
  %88 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %89 = bitcast %struct._GimpProcedure* %88 to %struct._GTypeInstance*
  %call46 = call i64 @gimp_object_get_type() #4
  %call47 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %89, i64 %call46)
  %90 = bitcast %struct._GTypeInstance* %call47 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %90, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.38, i32 0, i32 0))
  %91 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %91, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* null)
  %92 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %93 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp48 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %93, i32 0, i32 1
  %94 = load %struct._Gimp*, %struct._Gimp** %gimp48, align 8
  %call49 = call %struct._GParamSpec* @gimp_param_spec_image_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), %struct._Gimp* %94, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %92, %struct._GParamSpec* %call49)
  %95 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call50 = call %struct._GParamSpec* @gimp_param_spec_rgb(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.41, i32 0, i32 0), i32 1, %struct._GimpRGB* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %95, %struct._GParamSpec* %call50)
  %96 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %97 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %96, %struct._GimpProcedure* %97)
  %98 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %99 = bitcast %struct._GimpProcedure* %98 to i8*
  call void @g_object_unref(i8* %99)
  %call51 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @image_grid_get_style_invoker)
  store %struct._GimpProcedure* %call51, %struct._GimpProcedure** %procedure, align 8
  %100 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %101 = bitcast %struct._GimpProcedure* %100 to %struct._GTypeInstance*
  %call52 = call i64 @gimp_object_get_type() #4
  %call53 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %101, i64 %call52)
  %102 = bitcast %struct._GTypeInstance* %call53 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %102, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.42, i32 0, i32 0))
  %103 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %103, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* null)
  %104 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %105 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp54 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %105, i32 0, i32 1
  %106 = load %struct._Gimp*, %struct._Gimp** %gimp54, align 8
  %call55 = call %struct._GParamSpec* @gimp_param_spec_image_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), %struct._Gimp* %106, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %104, %struct._GParamSpec* %call55)
  %107 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call56 = call i64 @gimp_grid_style_get_type() #4
  %call57 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.46, i32 0, i32 0), i64 %call56, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %107, %struct._GParamSpec* %call57)
  %108 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %109 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %108, %struct._GimpProcedure* %109)
  %110 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %111 = bitcast %struct._GimpProcedure* %110 to i8*
  call void @g_object_unref(i8* %111)
  %call58 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @image_grid_set_style_invoker)
  store %struct._GimpProcedure* %call58, %struct._GimpProcedure** %procedure, align 8
  %112 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %113 = bitcast %struct._GimpProcedure* %112 to %struct._GTypeInstance*
  %call59 = call i64 @gimp_object_get_type() #4
  %call60 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %113, i64 %call59)
  %114 = bitcast %struct._GTypeInstance* %call60 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %114, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.47, i32 0, i32 0))
  %115 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %115, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* null)
  %116 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %117 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp61 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %117, i32 0, i32 1
  %118 = load %struct._Gimp*, %struct._Gimp** %gimp61, align 8
  %call62 = call %struct._GParamSpec* @gimp_param_spec_image_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), %struct._Gimp* %118, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %116, %struct._GParamSpec* %call62)
  %119 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call63 = call i64 @gimp_grid_style_get_type() #4
  %call64 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.46, i32 0, i32 0), i64 %call63, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %119, %struct._GParamSpec* %call64)
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
define internal %struct._GValueArray* @image_grid_get_spacing_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %return_vals = alloca %struct._GValueArray*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %xspacing = alloca double, align 8
  %yspacing = alloca double, align 8
  %grid = alloca %struct._GimpGrid*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store double 0.000000e+00, double* %xspacing, align 8
  store double 0.000000e+00, double* %yspacing, align 8
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %2 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call = call %struct._GimpImage* @gimp_value_get_image(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpImage* %call, %struct._GimpImage** %image, align 8
  %3 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end.4

if.then:                                          ; preds = %entry
  %4 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call1 = call %struct._GimpGrid* @gimp_image_get_grid(%struct._GimpImage* %4)
  store %struct._GimpGrid* %call1, %struct._GimpGrid** %grid, align 8
  %5 = load %struct._GimpGrid*, %struct._GimpGrid** %grid, align 8
  %tobool2 = icmp ne %struct._GimpGrid* %5, null
  br i1 %tobool2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  %6 = load %struct._GimpGrid*, %struct._GimpGrid** %grid, align 8
  %7 = bitcast %struct._GimpGrid* %6 to i8*
  call void (i8*, i8*, ...) @g_object_get(i8* %7, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), double* %xspacing, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), double* %yspacing, i8* null)
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %entry
  %8 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %9 = load i32, i32* %success, align 4
  %10 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool5 = icmp ne %struct._GError** %10, null
  br i1 %tobool5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.4
  %11 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %12 = load %struct._GError*, %struct._GError** %11, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %12, %cond.true ], [ null, %cond.false ]
  %call6 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %8, i32 %9, %struct._GError* %cond)
  store %struct._GValueArray* %call6, %struct._GValueArray** %return_vals, align 8
  %13 = load i32, i32* %success, align 4
  %tobool7 = icmp ne i32 %13, 0
  br i1 %tobool7, label %if.then.8, label %if.end.13

if.then.8:                                        ; preds = %cond.end
  %14 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values9 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %14, i32 0, i32 1
  %15 = load %struct._GValue*, %struct._GValue** %values9, align 8
  %arrayidx10 = getelementptr inbounds %struct._GValue, %struct._GValue* %15, i64 1
  %16 = load double, double* %xspacing, align 8
  call void @g_value_set_double(%struct._GValue* %arrayidx10, double %16)
  %17 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values11 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %17, i32 0, i32 1
  %18 = load %struct._GValue*, %struct._GValue** %values11, align 8
  %arrayidx12 = getelementptr inbounds %struct._GValue, %struct._GValue* %18, i64 2
  %19 = load double, double* %yspacing, align 8
  call void @g_value_set_double(%struct._GValue* %arrayidx12, double %19)
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.8, %cond.end
  %20 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %20
}

declare void @gimp_object_set_static_name(%struct._GimpObject*, i8*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #2

declare void @gimp_procedure_set_static_strings(%struct._GimpProcedure*, i8*, i8*, i8*, i8*, i8*, i8*, i8*) #1

declare void @gimp_procedure_add_argument(%struct._GimpProcedure*, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @gimp_param_spec_image_id(i8*, i8*, i8*, %struct._Gimp*, i32, i32) #1

declare void @gimp_procedure_add_return_value(%struct._GimpProcedure*, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_double(i8*, i8*, i8*, double, double, double, i32) #1

declare void @gimp_pdb_register_procedure(%struct._GimpPDB*, %struct._GimpProcedure*) #1

declare void @g_object_unref(i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @image_grid_set_spacing_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %image = alloca %struct._GimpImage*, align 8
  %xspacing = alloca double, align 8
  %yspacing = alloca double, align 8
  %grid = alloca %struct._GimpGrid*, align 8
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
  %2 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call = call %struct._GimpImage* @gimp_value_get_image(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpImage* %call, %struct._GimpImage** %image, align 8
  %3 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %3, i32 0, i32 1
  %4 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %4, i64 1
  %call3 = call double @g_value_get_double(%struct._GValue* %arrayidx2)
  store double %call3, double* %xspacing, align 8
  %5 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values4 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %5, i32 0, i32 1
  %6 = load %struct._GValue*, %struct._GValue** %values4, align 8
  %arrayidx5 = getelementptr inbounds %struct._GValue, %struct._GValue* %6, i64 2
  %call6 = call double @g_value_get_double(%struct._GValue* %arrayidx5)
  store double %call6, double* %yspacing, align 8
  %7 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then, label %if.end.10

if.then:                                          ; preds = %entry
  %8 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call7 = call %struct._GimpGrid* @gimp_image_get_grid(%struct._GimpImage* %8)
  store %struct._GimpGrid* %call7, %struct._GimpGrid** %grid, align 8
  %9 = load %struct._GimpGrid*, %struct._GimpGrid** %grid, align 8
  %tobool8 = icmp ne %struct._GimpGrid* %9, null
  br i1 %tobool8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.then
  %10 = load %struct._GimpGrid*, %struct._GimpGrid** %grid, align 8
  %11 = bitcast %struct._GimpGrid* %10 to i8*
  %12 = load double, double* %xspacing, align 8
  %13 = load double, double* %yspacing, align 8
  call void (i8*, i8*, ...) @g_object_set(i8* %11, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), double %12, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), double %13, i8* null)
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.9
  br label %if.end.10

if.end.10:                                        ; preds = %if.end, %entry
  %14 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %15 = load i32, i32* %success, align 4
  %16 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool11 = icmp ne %struct._GError** %16, null
  br i1 %tobool11, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.10
  %17 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %18 = load %struct._GError*, %struct._GError** %17, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.10
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %18, %cond.true ], [ null, %cond.false ]
  %call12 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %14, i32 %15, %struct._GError* %cond)
  ret %struct._GValueArray* %call12
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @image_grid_get_offset_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %return_vals = alloca %struct._GValueArray*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %xoffset = alloca double, align 8
  %yoffset = alloca double, align 8
  %grid = alloca %struct._GimpGrid*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store double 0.000000e+00, double* %xoffset, align 8
  store double 0.000000e+00, double* %yoffset, align 8
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %2 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call = call %struct._GimpImage* @gimp_value_get_image(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpImage* %call, %struct._GimpImage** %image, align 8
  %3 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end.4

if.then:                                          ; preds = %entry
  %4 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call1 = call %struct._GimpGrid* @gimp_image_get_grid(%struct._GimpImage* %4)
  store %struct._GimpGrid* %call1, %struct._GimpGrid** %grid, align 8
  %5 = load %struct._GimpGrid*, %struct._GimpGrid** %grid, align 8
  %tobool2 = icmp ne %struct._GimpGrid* %5, null
  br i1 %tobool2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  %6 = load %struct._GimpGrid*, %struct._GimpGrid** %grid, align 8
  %7 = bitcast %struct._GimpGrid* %6 to i8*
  call void (i8*, i8*, ...) @g_object_get(i8* %7, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0), double* %xoffset, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i32 0, i32 0), double* %yoffset, i8* null)
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %entry
  %8 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %9 = load i32, i32* %success, align 4
  %10 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool5 = icmp ne %struct._GError** %10, null
  br i1 %tobool5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.4
  %11 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %12 = load %struct._GError*, %struct._GError** %11, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %12, %cond.true ], [ null, %cond.false ]
  %call6 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %8, i32 %9, %struct._GError* %cond)
  store %struct._GValueArray* %call6, %struct._GValueArray** %return_vals, align 8
  %13 = load i32, i32* %success, align 4
  %tobool7 = icmp ne i32 %13, 0
  br i1 %tobool7, label %if.then.8, label %if.end.13

if.then.8:                                        ; preds = %cond.end
  %14 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values9 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %14, i32 0, i32 1
  %15 = load %struct._GValue*, %struct._GValue** %values9, align 8
  %arrayidx10 = getelementptr inbounds %struct._GValue, %struct._GValue* %15, i64 1
  %16 = load double, double* %xoffset, align 8
  call void @g_value_set_double(%struct._GValue* %arrayidx10, double %16)
  %17 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values11 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %17, i32 0, i32 1
  %18 = load %struct._GValue*, %struct._GValue** %values11, align 8
  %arrayidx12 = getelementptr inbounds %struct._GValue, %struct._GValue* %18, i64 2
  %19 = load double, double* %yoffset, align 8
  call void @g_value_set_double(%struct._GValue* %arrayidx12, double %19)
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.8, %cond.end
  %20 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %20
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @image_grid_set_offset_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %image = alloca %struct._GimpImage*, align 8
  %xoffset = alloca double, align 8
  %yoffset = alloca double, align 8
  %grid = alloca %struct._GimpGrid*, align 8
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
  %2 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call = call %struct._GimpImage* @gimp_value_get_image(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpImage* %call, %struct._GimpImage** %image, align 8
  %3 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %3, i32 0, i32 1
  %4 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %4, i64 1
  %call3 = call double @g_value_get_double(%struct._GValue* %arrayidx2)
  store double %call3, double* %xoffset, align 8
  %5 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values4 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %5, i32 0, i32 1
  %6 = load %struct._GValue*, %struct._GValue** %values4, align 8
  %arrayidx5 = getelementptr inbounds %struct._GValue, %struct._GValue* %6, i64 2
  %call6 = call double @g_value_get_double(%struct._GValue* %arrayidx5)
  store double %call6, double* %yoffset, align 8
  %7 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then, label %if.end.10

if.then:                                          ; preds = %entry
  %8 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call7 = call %struct._GimpGrid* @gimp_image_get_grid(%struct._GimpImage* %8)
  store %struct._GimpGrid* %call7, %struct._GimpGrid** %grid, align 8
  %9 = load %struct._GimpGrid*, %struct._GimpGrid** %grid, align 8
  %tobool8 = icmp ne %struct._GimpGrid* %9, null
  br i1 %tobool8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.then
  %10 = load %struct._GimpGrid*, %struct._GimpGrid** %grid, align 8
  %11 = bitcast %struct._GimpGrid* %10 to i8*
  %12 = load double, double* %xoffset, align 8
  %13 = load double, double* %yoffset, align 8
  call void (i8*, i8*, ...) @g_object_set(i8* %11, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0), double %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i32 0, i32 0), double %13, i8* null)
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.9
  br label %if.end.10

if.end.10:                                        ; preds = %if.end, %entry
  %14 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %15 = load i32, i32* %success, align 4
  %16 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool11 = icmp ne %struct._GError** %16, null
  br i1 %tobool11, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.10
  %17 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %18 = load %struct._GError*, %struct._GError** %17, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.10
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %18, %cond.true ], [ null, %cond.false ]
  %call12 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %14, i32 %15, %struct._GError* %cond)
  ret %struct._GValueArray* %call12
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @image_grid_get_foreground_color_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %return_vals = alloca %struct._GValueArray*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %fgcolor = alloca %struct._GimpRGB, align 8
  %grid = alloca %struct._GimpGrid*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = bitcast %struct._GimpRGB* %fgcolor to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* bitcast (%struct._GimpRGB* @image_grid_get_foreground_color_invoker.fgcolor to i8*), i64 32, i32 8, i1 false)
  %1 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %1, i32 0, i32 1
  %2 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %2, i64 0
  %3 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call = call %struct._GimpImage* @gimp_value_get_image(%struct._GValue* %arrayidx, %struct._Gimp* %3)
  store %struct._GimpImage* %call, %struct._GimpImage** %image, align 8
  %4 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.end.5

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call1 = call %struct._GimpGrid* @gimp_image_get_grid(%struct._GimpImage* %5)
  store %struct._GimpGrid* %call1, %struct._GimpGrid** %grid, align 8
  %6 = load %struct._GimpGrid*, %struct._GimpGrid** %grid, align 8
  %tobool2 = icmp ne %struct._GimpGrid* %6, null
  br i1 %tobool2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  %7 = load %struct._GimpGrid*, %struct._GimpGrid** %grid, align 8
  %fgcolor4 = getelementptr inbounds %struct._GimpGrid, %struct._GimpGrid* %7, i32 0, i32 2
  %8 = bitcast %struct._GimpRGB* %fgcolor to i8*
  %9 = bitcast %struct._GimpRGB* %fgcolor4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 32, i32 8, i1 false)
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %entry
  %10 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %11 = load i32, i32* %success, align 4
  %12 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool6 = icmp ne %struct._GError** %12, null
  br i1 %tobool6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.5
  %13 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %14 = load %struct._GError*, %struct._GError** %13, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %14, %cond.true ], [ null, %cond.false ]
  %call7 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %10, i32 %11, %struct._GError* %cond)
  store %struct._GValueArray* %call7, %struct._GValueArray** %return_vals, align 8
  %15 = load i32, i32* %success, align 4
  %tobool8 = icmp ne i32 %15, 0
  br i1 %tobool8, label %if.then.9, label %if.end.12

if.then.9:                                        ; preds = %cond.end
  %16 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values10 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %16, i32 0, i32 1
  %17 = load %struct._GValue*, %struct._GValue** %values10, align 8
  %arrayidx11 = getelementptr inbounds %struct._GValue, %struct._GValue* %17, i64 1
  call void @gimp_value_set_rgb(%struct._GValue* %arrayidx11, %struct._GimpRGB* %fgcolor)
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.9, %cond.end
  %18 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %18
}

declare %struct._GParamSpec* @gimp_param_spec_rgb(i8*, i8*, i8*, i32, %struct._GimpRGB*, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @image_grid_set_foreground_color_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %image = alloca %struct._GimpImage*, align 8
  %fgcolor = alloca %struct._GimpRGB, align 8
  %grid = alloca %struct._GimpGrid*, align 8
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
  %2 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call = call %struct._GimpImage* @gimp_value_get_image(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpImage* %call, %struct._GimpImage** %image, align 8
  %3 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %3, i32 0, i32 1
  %4 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %4, i64 1
  call void @gimp_value_get_rgb(%struct._GValue* %arrayidx2, %struct._GimpRGB* %fgcolor)
  %5 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end.6

if.then:                                          ; preds = %entry
  %6 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call3 = call %struct._GimpGrid* @gimp_image_get_grid(%struct._GimpImage* %6)
  store %struct._GimpGrid* %call3, %struct._GimpGrid** %grid, align 8
  %7 = load %struct._GimpGrid*, %struct._GimpGrid** %grid, align 8
  %tobool4 = icmp ne %struct._GimpGrid* %7, null
  br i1 %tobool4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.then
  %8 = load %struct._GimpGrid*, %struct._GimpGrid** %grid, align 8
  %9 = bitcast %struct._GimpGrid* %8 to i8*
  call void (i8*, i8*, ...) @g_object_set(i8* %9, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i32 0, i32 0), %struct._GimpRGB* %fgcolor, i8* null)
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.5
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
  ret %struct._GValueArray* %call8
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @image_grid_get_background_color_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %return_vals = alloca %struct._GValueArray*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %bgcolor = alloca %struct._GimpRGB, align 8
  %grid = alloca %struct._GimpGrid*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = bitcast %struct._GimpRGB* %bgcolor to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* bitcast (%struct._GimpRGB* @image_grid_get_background_color_invoker.bgcolor to i8*), i64 32, i32 8, i1 false)
  %1 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %1, i32 0, i32 1
  %2 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %2, i64 0
  %3 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call = call %struct._GimpImage* @gimp_value_get_image(%struct._GValue* %arrayidx, %struct._Gimp* %3)
  store %struct._GimpImage* %call, %struct._GimpImage** %image, align 8
  %4 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.end.5

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call1 = call %struct._GimpGrid* @gimp_image_get_grid(%struct._GimpImage* %5)
  store %struct._GimpGrid* %call1, %struct._GimpGrid** %grid, align 8
  %6 = load %struct._GimpGrid*, %struct._GimpGrid** %grid, align 8
  %tobool2 = icmp ne %struct._GimpGrid* %6, null
  br i1 %tobool2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  %7 = load %struct._GimpGrid*, %struct._GimpGrid** %grid, align 8
  %bgcolor4 = getelementptr inbounds %struct._GimpGrid, %struct._GimpGrid* %7, i32 0, i32 3
  %8 = bitcast %struct._GimpRGB* %bgcolor to i8*
  %9 = bitcast %struct._GimpRGB* %bgcolor4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 32, i32 8, i1 false)
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %entry
  %10 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %11 = load i32, i32* %success, align 4
  %12 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool6 = icmp ne %struct._GError** %12, null
  br i1 %tobool6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.5
  %13 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %14 = load %struct._GError*, %struct._GError** %13, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %14, %cond.true ], [ null, %cond.false ]
  %call7 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %10, i32 %11, %struct._GError* %cond)
  store %struct._GValueArray* %call7, %struct._GValueArray** %return_vals, align 8
  %15 = load i32, i32* %success, align 4
  %tobool8 = icmp ne i32 %15, 0
  br i1 %tobool8, label %if.then.9, label %if.end.12

if.then.9:                                        ; preds = %cond.end
  %16 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values10 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %16, i32 0, i32 1
  %17 = load %struct._GValue*, %struct._GValue** %values10, align 8
  %arrayidx11 = getelementptr inbounds %struct._GValue, %struct._GValue* %17, i64 1
  call void @gimp_value_set_rgb(%struct._GValue* %arrayidx11, %struct._GimpRGB* %bgcolor)
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.9, %cond.end
  %18 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %18
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @image_grid_set_background_color_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %image = alloca %struct._GimpImage*, align 8
  %bgcolor = alloca %struct._GimpRGB, align 8
  %grid = alloca %struct._GimpGrid*, align 8
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
  %2 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call = call %struct._GimpImage* @gimp_value_get_image(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpImage* %call, %struct._GimpImage** %image, align 8
  %3 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %3, i32 0, i32 1
  %4 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %4, i64 1
  call void @gimp_value_get_rgb(%struct._GValue* %arrayidx2, %struct._GimpRGB* %bgcolor)
  %5 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end.6

if.then:                                          ; preds = %entry
  %6 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call3 = call %struct._GimpGrid* @gimp_image_get_grid(%struct._GimpImage* %6)
  store %struct._GimpGrid* %call3, %struct._GimpGrid** %grid, align 8
  %7 = load %struct._GimpGrid*, %struct._GimpGrid** %grid, align 8
  %tobool4 = icmp ne %struct._GimpGrid* %7, null
  br i1 %tobool4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.then
  %8 = load %struct._GimpGrid*, %struct._GimpGrid** %grid, align 8
  %9 = bitcast %struct._GimpGrid* %8 to i8*
  call void (i8*, i8*, ...) @g_object_set(i8* %9, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.36, i32 0, i32 0), %struct._GimpRGB* %bgcolor, i8* null)
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.5
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
  ret %struct._GValueArray* %call8
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @image_grid_get_style_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %return_vals = alloca %struct._GValueArray*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %style = alloca i32, align 4
  %grid = alloca %struct._GimpGrid*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store i32 0, i32* %style, align 4
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %2 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call = call %struct._GimpImage* @gimp_value_get_image(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpImage* %call, %struct._GimpImage** %image, align 8
  %3 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end.4

if.then:                                          ; preds = %entry
  %4 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call1 = call %struct._GimpGrid* @gimp_image_get_grid(%struct._GimpImage* %4)
  store %struct._GimpGrid* %call1, %struct._GimpGrid** %grid, align 8
  %5 = load %struct._GimpGrid*, %struct._GimpGrid** %grid, align 8
  %tobool2 = icmp ne %struct._GimpGrid* %5, null
  br i1 %tobool2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  %6 = load %struct._GimpGrid*, %struct._GimpGrid** %grid, align 8
  %7 = bitcast %struct._GimpGrid* %6 to i8*
  call void (i8*, i8*, ...) @g_object_get(i8* %7, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.45, i32 0, i32 0), i32* %style, i8* null)
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %entry
  %8 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %9 = load i32, i32* %success, align 4
  %10 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool5 = icmp ne %struct._GError** %10, null
  br i1 %tobool5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.4
  %11 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %12 = load %struct._GError*, %struct._GError** %11, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %12, %cond.true ], [ null, %cond.false ]
  %call6 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %8, i32 %9, %struct._GError* %cond)
  store %struct._GValueArray* %call6, %struct._GValueArray** %return_vals, align 8
  %13 = load i32, i32* %success, align 4
  %tobool7 = icmp ne i32 %13, 0
  br i1 %tobool7, label %if.then.8, label %if.end.11

if.then.8:                                        ; preds = %cond.end
  %14 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values9 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %14, i32 0, i32 1
  %15 = load %struct._GValue*, %struct._GValue** %values9, align 8
  %arrayidx10 = getelementptr inbounds %struct._GValue, %struct._GValue* %15, i64 1
  %16 = load i32, i32* %style, align 4
  call void @g_value_set_enum(%struct._GValue* %arrayidx10, i32 %16)
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.8, %cond.end
  %17 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %17
}

declare %struct._GParamSpec* @g_param_spec_enum(i8*, i8*, i8*, i64, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_grid_style_get_type() #2

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @image_grid_set_style_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %image = alloca %struct._GimpImage*, align 8
  %style = alloca i32, align 4
  %grid = alloca %struct._GimpGrid*, align 8
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
  %2 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call = call %struct._GimpImage* @gimp_value_get_image(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpImage* %call, %struct._GimpImage** %image, align 8
  %3 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %3, i32 0, i32 1
  %4 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %4, i64 1
  %call3 = call i32 @g_value_get_enum(%struct._GValue* %arrayidx2)
  store i32 %call3, i32* %style, align 4
  %5 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end.7

if.then:                                          ; preds = %entry
  %6 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call4 = call %struct._GimpGrid* @gimp_image_get_grid(%struct._GimpImage* %6)
  store %struct._GimpGrid* %call4, %struct._GimpGrid** %grid, align 8
  %7 = load %struct._GimpGrid*, %struct._GimpGrid** %grid, align 8
  %tobool5 = icmp ne %struct._GimpGrid* %7, null
  br i1 %tobool5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.then
  %8 = load %struct._GimpGrid*, %struct._GimpGrid** %grid, align 8
  %9 = bitcast %struct._GimpGrid* %8 to i8*
  %10 = load i32, i32* %style, align 4
  call void (i8*, i8*, ...) @g_object_set(i8* %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.45, i32 0, i32 0), i32 %10, i8* null)
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

declare %struct._GimpImage* @gimp_value_get_image(%struct._GValue*, %struct._Gimp*) #1

declare %struct._GimpGrid* @gimp_image_get_grid(%struct._GimpImage*) #1

declare void @g_object_get(i8*, i8*, ...) #1

declare %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure*, i32, %struct._GError*) #1

declare void @g_value_set_double(%struct._GValue*, double) #1

declare double @g_value_get_double(%struct._GValue*) #1

declare void @g_object_set(i8*, i8*, ...) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

declare void @gimp_value_set_rgb(%struct._GValue*, %struct._GimpRGB*) #1

declare void @gimp_value_get_rgb(%struct._GValue*, %struct._GimpRGB*) #1

declare void @g_value_set_enum(%struct._GValue*, i32) #1

declare i32 @g_value_get_enum(%struct._GValue*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
