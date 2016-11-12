; ModuleID = './app/pdb/convert-cmds.bc'
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
%struct._GimpImage = type { %struct._GimpViewable, %struct._Gimp* }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpPalette = type { %struct._GimpData, %struct._GList*, i32, i32 }
%struct._GimpData = type { %struct._GimpViewable }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpContainer = type { %struct._GimpObject, %struct._GimpContainerPriv* }
%struct._GimpContainerPriv = type opaque
%struct._GimpItemStack = type { %struct._GimpList }
%struct._GimpList = type { %struct._GimpContainer, %struct._GList*, i32, i32 (i8*, i8*)*, i32 }

@.str = private unnamed_addr constant [23 x i8] c"gimp-image-convert-rgb\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Convert specified image to RGB color\00", align 1
@.str.2 = private unnamed_addr constant [212 x i8] c"This procedure converts the specified image to RGB color. This process requires an image in Grayscale or Indexed color mode. No image content is lost in this process aside from the colormap for an indexed image.\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Spencer Kimball & Peter Mattis\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"1995-1996\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"The image\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"gimp-image-convert-grayscale\00", align 1
@.str.8 = private unnamed_addr constant [60 x i8] c"Convert specified image to grayscale (256 intensity levels)\00", align 1
@.str.9 = private unnamed_addr constant [164 x i8] c"This procedure converts the specified image to grayscale with 8 bits per pixel (256 intensity levels). This process requires an image in RGB or Indexed color mode.\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"gimp-image-convert-indexed\00", align 1
@.str.11 = private unnamed_addr constant [45 x i8] c"Convert specified image to and Indexed image\00", align 1
@.str.12 = private unnamed_addr constant [812 x i8] c"This procedure converts the specified image to 'indexed' color. This process requires an image in RGB or Grayscale mode. The 'palette_type' specifies what kind of palette to use, A type of '0' means to use an optimal palette of 'num_cols' generated from the colors in the image. A type of '1' means to re-use the previous palette (not currently implemented). A type of '2' means to use the so-called WWW-optimized palette. Type '3' means to use only black and white colors. A type of '4' means to use a palette from the gimp palettes directories. The 'dither type' specifies what kind of dithering to use. '0' means no dithering, '1' means standard Floyd-Steinberg error diffusion, '2' means Floyd-Steinberg error diffusion with reduced bleeding, '3' means dithering based on pixel location ('Fixed' dithering).\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"dither-type\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"dither type\00", align 1
@.str.15 = private unnamed_addr constant [23 x i8] c"The dither type to use\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"palette-type\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"palette type\00", align 1
@.str.18 = private unnamed_addr constant [27 x i8] c"The type of palette to use\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"num-cols\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"num cols\00", align 1
@.str.21 = private unnamed_addr constant [88 x i8] c"The number of colors to quantize to, ignored unless (palette_type == GIMP_MAKE_PALETTE)\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"alpha-dither\00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c"alpha dither\00", align 1
@.str.24 = private unnamed_addr constant [44 x i8] c"Dither transparency to fake partial opacity\00", align 1
@.str.25 = private unnamed_addr constant [14 x i8] c"remove-unused\00", align 1
@.str.26 = private unnamed_addr constant [14 x i8] c"remove unused\00", align 1
@.str.27 = private unnamed_addr constant [108 x i8] c"Remove unused or duplicate color entries from final palette, ignored if (palette_type == GIMP_MAKE_PALETTE)\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"palette\00", align 1
@.str.29 = private unnamed_addr constant [92 x i8] c"The name of the custom palette to use, ignored unless (palette_type == GIMP_CUSTOM_PALETTE)\00", align 1
@.str.30 = private unnamed_addr constant [37 x i8] c"gimp-image-convert-set-dither-matrix\00", align 1
@.str.31 = private unnamed_addr constant [44 x i8] c"Set dither matrix for conversion to indexed\00", align 1
@.str.32 = private unnamed_addr constant [109 x i8] c"This procedure sets the dither matrix used when converting images to INDEXED mode with positional dithering.\00", align 1
@.str.33 = private unnamed_addr constant [13 x i8] c"David Gowers\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"2006\00", align 1
@.str.35 = private unnamed_addr constant [6 x i8] c"width\00", align 1
@.str.36 = private unnamed_addr constant [51 x i8] c"Width of the matrix (0 to reset to default matrix)\00", align 1
@.str.37 = private unnamed_addr constant [7 x i8] c"height\00", align 1
@.str.38 = private unnamed_addr constant [52 x i8] c"Height of the matrix (0 to reset to default matrix)\00", align 1
@.str.39 = private unnamed_addr constant [14 x i8] c"matrix-length\00", align 1
@.str.40 = private unnamed_addr constant [14 x i8] c"matrix length\00", align 1
@.str.41 = private unnamed_addr constant [23 x i8] c"The length of 'matrix'\00", align 1
@.str.42 = private unnamed_addr constant [7 x i8] c"matrix\00", align 1
@.str.43 = private unnamed_addr constant [38 x i8] c"The matrix -- all values must be >= 1\00", align 1
@.str.44 = private unnamed_addr constant [55 x i8] c"Cannot convert to a palette with more than 256 colors.\00", align 1
@.str.45 = private unnamed_addr constant [44 x i8] c"Dither matrix length must be width * height\00", align 1

; Function Attrs: nounwind uwtable
define void @register_convert_procs(%struct._GimpPDB* %pdb) #0 {
entry:
  %pdb.addr = alloca %struct._GimpPDB*, align 8
  %procedure = alloca %struct._GimpProcedure*, align 8
  store %struct._GimpPDB* %pdb, %struct._GimpPDB** %pdb.addr, align 8
  %call = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @image_convert_rgb_invoker)
  store %struct._GimpProcedure* %call, %struct._GimpProcedure** %procedure, align 8
  %0 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %1 = bitcast %struct._GimpProcedure* %0 to %struct._GTypeInstance*
  %call1 = call i64 @gimp_object_get_type() #4
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call1)
  %2 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %2, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0))
  %3 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %3, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([212 x i8], [212 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i8* null)
  %4 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %5 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %5, i32 0, i32 1
  %6 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call3 = call %struct._GParamSpec* @gimp_param_spec_image_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), %struct._Gimp* %6, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %4, %struct._GParamSpec* %call3)
  %7 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %8 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %7, %struct._GimpProcedure* %8)
  %9 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %10 = bitcast %struct._GimpProcedure* %9 to i8*
  call void @g_object_unref(i8* %10)
  %call4 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @image_convert_grayscale_invoker)
  store %struct._GimpProcedure* %call4, %struct._GimpProcedure** %procedure, align 8
  %11 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %12 = bitcast %struct._GimpProcedure* %11 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_object_get_type() #4
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call5)
  %13 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %13, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i32 0, i32 0))
  %14 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %14, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([164 x i8], [164 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i8* null)
  %15 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %16 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp7 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %16, i32 0, i32 1
  %17 = load %struct._Gimp*, %struct._Gimp** %gimp7, align 8
  %call8 = call %struct._GParamSpec* @gimp_param_spec_image_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), %struct._Gimp* %17, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %15, %struct._GParamSpec* %call8)
  %18 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %19 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %18, %struct._GimpProcedure* %19)
  %20 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %21 = bitcast %struct._GimpProcedure* %20 to i8*
  call void @g_object_unref(i8* %21)
  %call9 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @image_convert_indexed_invoker)
  store %struct._GimpProcedure* %call9, %struct._GimpProcedure** %procedure, align 8
  %22 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %23 = bitcast %struct._GimpProcedure* %22 to %struct._GTypeInstance*
  %call10 = call i64 @gimp_object_get_type() #4
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call10)
  %24 = bitcast %struct._GTypeInstance* %call11 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %24, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i32 0, i32 0))
  %25 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %25, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([812 x i8], [812 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i8* null)
  %26 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %27 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp12 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %27, i32 0, i32 1
  %28 = load %struct._Gimp*, %struct._Gimp** %gimp12, align 8
  %call13 = call %struct._GParamSpec* @gimp_param_spec_image_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), %struct._Gimp* %28, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %26, %struct._GParamSpec* %call13)
  %29 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call14 = call i64 @gimp_convert_dither_type_get_type() #4
  %call15 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i32 0, i32 0), i64 %call14, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %29, %struct._GParamSpec* %call15)
  %30 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call16 = call i64 @gimp_convert_palette_type_get_type() #4
  %call17 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.18, i32 0, i32 0), i64 %call16, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %30, %struct._GParamSpec* %call17)
  %31 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call18 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.21, i32 0, i32 0), i32 -2147483648, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %31, %struct._GParamSpec* %call18)
  %32 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call19 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.24, i32 0, i32 0), i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %32, %struct._GParamSpec* %call19)
  %33 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call20 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([108 x i8], [108 x i8]* @.str.27, i32 0, i32 0), i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %33, %struct._GParamSpec* %call20)
  %34 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call21 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.29, i32 0, i32 0), i32 0, i32 0, i32 0, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %34, %struct._GParamSpec* %call21)
  %35 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %36 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %35, %struct._GimpProcedure* %36)
  %37 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %38 = bitcast %struct._GimpProcedure* %37 to i8*
  call void @g_object_unref(i8* %38)
  %call22 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @image_convert_set_dither_matrix_invoker)
  store %struct._GimpProcedure* %call22, %struct._GimpProcedure** %procedure, align 8
  %39 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %40 = bitcast %struct._GimpProcedure* %39 to %struct._GTypeInstance*
  %call23 = call i64 @gimp_object_get_type() #4
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %40, i64 %call23)
  %41 = bitcast %struct._GTypeInstance* %call24 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %41, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.30, i32 0, i32 0))
  %42 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %42, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i32 0, i32 0), i8* null)
  %43 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call25 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.36, i32 0, i32 0), i32 -2147483648, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %43, %struct._GParamSpec* %call25)
  %44 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call26 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.38, i32 0, i32 0), i32 -2147483648, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %44, %struct._GParamSpec* %call26)
  %45 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call27 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.41, i32 0, i32 0), i32 1, i32 1024, i32 1, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %45, %struct._GParamSpec* %call27)
  %46 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call28 = call %struct._GParamSpec* @gimp_param_spec_int8_array(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.43, i32 0, i32 0), i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %46, %struct._GParamSpec* %call28)
  %47 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %48 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %47, %struct._GimpProcedure* %48)
  %49 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %50 = bitcast %struct._GimpProcedure* %49 to i8*
  call void @g_object_unref(i8* %50)
  ret void
}

declare %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)*) #1

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @image_convert_rgb_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %image = alloca %struct._GimpImage*, align 8
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
  %3 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end.5

if.then:                                          ; preds = %entry
  %4 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %5 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call1 = call i32 @gimp_pdb_image_is_not_base_type(%struct._GimpImage* %4, i32 0, %struct._GError** %5)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  %6 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %7 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call4 = call i32 @gimp_image_convert(%struct._GimpImage* %6, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, %struct._GimpPalette* null, %struct._GimpProgress* null, %struct._GError** %7)
  store i32 %call4, i32* %success, align 4
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
  ret %struct._GValueArray* %call7
}

declare void @gimp_object_set_static_name(%struct._GimpObject*, i8*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #2

declare void @gimp_procedure_set_static_strings(%struct._GimpProcedure*, i8*, i8*, i8*, i8*, i8*, i8*, i8*) #1

declare void @gimp_procedure_add_argument(%struct._GimpProcedure*, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @gimp_param_spec_image_id(i8*, i8*, i8*, %struct._Gimp*, i32, i32) #1

declare void @gimp_pdb_register_procedure(%struct._GimpPDB*, %struct._GimpProcedure*) #1

declare void @g_object_unref(i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @image_convert_grayscale_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %image = alloca %struct._GimpImage*, align 8
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
  %3 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end.5

if.then:                                          ; preds = %entry
  %4 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %5 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call1 = call i32 @gimp_pdb_image_is_not_base_type(%struct._GimpImage* %4, i32 1, %struct._GError** %5)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  %6 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %7 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call4 = call i32 @gimp_image_convert(%struct._GimpImage* %6, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, %struct._GimpPalette* null, %struct._GimpProgress* null, %struct._GError** %7)
  store i32 %call4, i32* %success, align 4
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
  ret %struct._GValueArray* %call7
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @image_convert_indexed_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %image = alloca %struct._GimpImage*, align 8
  %dither_type = alloca i32, align 4
  %palette_type = alloca i32, align 4
  %num_cols = alloca i32, align 4
  %alpha_dither = alloca i32, align 4
  %remove_unused = alloca i32, align 4
  %palette = alloca i8*, align 8
  %pal = alloca %struct._GimpPalette*, align 8
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
  store i32 %call3, i32* %dither_type, align 4
  %5 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values4 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %5, i32 0, i32 1
  %6 = load %struct._GValue*, %struct._GValue** %values4, align 8
  %arrayidx5 = getelementptr inbounds %struct._GValue, %struct._GValue* %6, i64 2
  %call6 = call i32 @g_value_get_enum(%struct._GValue* %arrayidx5)
  store i32 %call6, i32* %palette_type, align 4
  %7 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values7 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %7, i32 0, i32 1
  %8 = load %struct._GValue*, %struct._GValue** %values7, align 8
  %arrayidx8 = getelementptr inbounds %struct._GValue, %struct._GValue* %8, i64 3
  %call9 = call i32 @g_value_get_int(%struct._GValue* %arrayidx8)
  store i32 %call9, i32* %num_cols, align 4
  %9 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values10 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %9, i32 0, i32 1
  %10 = load %struct._GValue*, %struct._GValue** %values10, align 8
  %arrayidx11 = getelementptr inbounds %struct._GValue, %struct._GValue* %10, i64 4
  %call12 = call i32 @g_value_get_boolean(%struct._GValue* %arrayidx11)
  store i32 %call12, i32* %alpha_dither, align 4
  %11 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values13 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %11, i32 0, i32 1
  %12 = load %struct._GValue*, %struct._GValue** %values13, align 8
  %arrayidx14 = getelementptr inbounds %struct._GValue, %struct._GValue* %12, i64 5
  %call15 = call i32 @g_value_get_boolean(%struct._GValue* %arrayidx14)
  store i32 %call15, i32* %remove_unused, align 4
  %13 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values16 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %13, i32 0, i32 1
  %14 = load %struct._GValue*, %struct._GValue** %values16, align 8
  %arrayidx17 = getelementptr inbounds %struct._GValue, %struct._GValue* %14, i64 6
  %call18 = call i8* @g_value_get_string(%struct._GValue* %arrayidx17)
  store i8* %call18, i8** %palette, align 8
  %15 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %15, 0
  br i1 %tobool, label %if.then, label %if.end.45

if.then:                                          ; preds = %entry
  store %struct._GimpPalette* null, %struct._GimpPalette** %pal, align 8
  %16 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %17 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call19 = call i32 @gimp_pdb_image_is_not_base_type(%struct._GimpImage* %16, i32 2, %struct._GError** %17)
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %land.lhs.true, label %if.else.39

land.lhs.true:                                    ; preds = %if.then
  %18 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call21 = call %struct._GimpContainer* @gimp_image_get_layers(%struct._GimpImage* %18)
  %19 = bitcast %struct._GimpContainer* %call21 to %struct._GTypeInstance*
  %call22 = call i64 @gimp_item_stack_get_type() #4
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call22)
  %20 = bitcast %struct._GTypeInstance* %call23 to %struct._GimpItemStack*
  %call24 = call i32 @gimp_item_stack_is_flat(%struct._GimpItemStack* %20)
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %if.then.26, label %if.else.39

if.then.26:                                       ; preds = %land.lhs.true
  %21 = load i32, i32* %palette_type, align 4
  switch i32 %21, label %sw.default [
    i32 0, label %sw.bb
    i32 4, label %sw.bb.29
  ]

sw.bb:                                            ; preds = %if.then.26
  %22 = load i32, i32* %num_cols, align 4
  %cmp = icmp slt i32 %22, 1
  br i1 %cmp, label %if.then.28, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb
  %23 = load i32, i32* %num_cols, align 4
  %cmp27 = icmp sgt i32 %23, 256
  br i1 %cmp27, label %if.then.28, label %if.end

if.then.28:                                       ; preds = %lor.lhs.false, %sw.bb
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.28, %lor.lhs.false
  br label %sw.epilog

sw.bb.29:                                         ; preds = %if.then.26
  %24 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %25 = load i8*, i8** %palette, align 8
  %26 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call30 = call %struct._GimpPalette* @gimp_pdb_get_palette(%struct._Gimp* %24, i8* %25, i32 0, %struct._GError** %26)
  store %struct._GimpPalette* %call30, %struct._GimpPalette** %pal, align 8
  %27 = load %struct._GimpPalette*, %struct._GimpPalette** %pal, align 8
  %tobool31 = icmp ne %struct._GimpPalette* %27, null
  br i1 %tobool31, label %if.else, label %if.then.32

if.then.32:                                       ; preds = %sw.bb.29
  store i32 0, i32* %success, align 4
  br label %if.end.38

if.else:                                          ; preds = %sw.bb.29
  %28 = load %struct._GimpPalette*, %struct._GimpPalette** %pal, align 8
  %n_colors = getelementptr inbounds %struct._GimpPalette, %struct._GimpPalette* %28, i32 0, i32 2
  %29 = load i32, i32* %n_colors, align 4
  %cmp33 = icmp sgt i32 %29, 256
  br i1 %cmp33, label %if.then.34, label %if.end.37

if.then.34:                                       ; preds = %if.else
  %30 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call35 = call i32 @gimp_pdb_error_quark() #4
  %call36 = call i8* @gettext(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.44, i32 0, i32 0)) #5
  call void @g_set_error_literal(%struct._GError** %30, i32 %call35, i32 3, i8* %call36)
  store i32 0, i32* %success, align 4
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.34, %if.else
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %if.then.32
  br label %sw.epilog

sw.default:                                       ; preds = %if.then.26
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.38, %if.end
  br label %if.end.40

if.else.39:                                       ; preds = %land.lhs.true, %if.then
  store i32 0, i32* %success, align 4
  br label %if.end.40

if.end.40:                                        ; preds = %if.else.39, %sw.epilog
  %31 = load i32, i32* %success, align 4
  %tobool41 = icmp ne i32 %31, 0
  br i1 %tobool41, label %if.then.42, label %if.end.44

if.then.42:                                       ; preds = %if.end.40
  %32 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %33 = load i32, i32* %num_cols, align 4
  %34 = load i32, i32* %dither_type, align 4
  %35 = load i32, i32* %alpha_dither, align 4
  %36 = load i32, i32* %remove_unused, align 4
  %37 = load i32, i32* %palette_type, align 4
  %38 = load %struct._GimpPalette*, %struct._GimpPalette** %pal, align 8
  %39 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call43 = call i32 @gimp_image_convert(%struct._GimpImage* %32, i32 2, i32 %33, i32 %34, i32 %35, i32 %36, i32 %37, %struct._GimpPalette* %38, %struct._GimpProgress* null, %struct._GError** %39)
  store i32 %call43, i32* %success, align 4
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.42, %if.end.40
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %entry
  %40 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %41 = load i32, i32* %success, align 4
  %42 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool46 = icmp ne %struct._GError** %42, null
  br i1 %tobool46, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.45
  %43 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %44 = load %struct._GError*, %struct._GError** %43, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.45
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %44, %cond.true ], [ null, %cond.false ]
  %call47 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %40, i32 %41, %struct._GError* %cond)
  ret %struct._GValueArray* %call47
}

declare %struct._GParamSpec* @g_param_spec_enum(i8*, i8*, i8*, i64, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_convert_dither_type_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_convert_palette_type_get_type() #2

declare %struct._GParamSpec* @gimp_param_spec_int32(i8*, i8*, i8*, i32, i32, i32, i32) #1

declare %struct._GParamSpec* @g_param_spec_boolean(i8*, i8*, i8*, i32, i32) #1

declare %struct._GParamSpec* @gimp_param_spec_string(i8*, i8*, i8*, i32, i32, i32, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @image_convert_set_dither_matrix_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %matrix_length = alloca i32, align 4
  %matrix = alloca i8*, align 8
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
  store i32 %call, i32* %width, align 4
  %2 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %2, i32 0, i32 1
  %3 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %3, i64 1
  %call3 = call i32 @g_value_get_int(%struct._GValue* %arrayidx2)
  store i32 %call3, i32* %height, align 4
  %4 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values4 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %4, i32 0, i32 1
  %5 = load %struct._GValue*, %struct._GValue** %values4, align 8
  %arrayidx5 = getelementptr inbounds %struct._GValue, %struct._GValue* %5, i64 2
  %call6 = call i32 @g_value_get_int(%struct._GValue* %arrayidx5)
  store i32 %call6, i32* %matrix_length, align 4
  %6 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values7 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %6, i32 0, i32 1
  %7 = load %struct._GValue*, %struct._GValue** %values7, align 8
  %arrayidx8 = getelementptr inbounds %struct._GValue, %struct._GValue* %7, i64 3
  %call9 = call i8* @gimp_value_get_int8array(%struct._GValue* %arrayidx8)
  store i8* %call9, i8** %matrix, align 8
  %8 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then, label %if.end.15

if.then:                                          ; preds = %entry
  %9 = load i32, i32* %width, align 4
  %cmp = icmp eq i32 %9, 0
  br i1 %cmp, label %if.then.13, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %10 = load i32, i32* %height, align 4
  %cmp10 = icmp eq i32 %10, 0
  br i1 %cmp10, label %if.then.13, label %lor.lhs.false.11

lor.lhs.false.11:                                 ; preds = %lor.lhs.false
  %11 = load i32, i32* %matrix_length, align 4
  %12 = load i32, i32* %width, align 4
  %13 = load i32, i32* %height, align 4
  %mul = mul nsw i32 %12, %13
  %cmp12 = icmp eq i32 %11, %mul
  br i1 %cmp12, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %lor.lhs.false.11, %lor.lhs.false, %if.then
  %14 = load i8*, i8** %matrix, align 8
  %15 = load i32, i32* %width, align 4
  %16 = load i32, i32* %height, align 4
  call void @gimp_image_convert_set_dither_matrix(i8* %14, i32 %15, i32 %16)
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false.11
  %17 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call14 = call i32 @gimp_pdb_error_quark() #4
  call void @g_set_error_literal(%struct._GError** %17, i32 %call14, i32 3, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.45, i32 0, i32 0))
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.13
  br label %if.end.15

if.end.15:                                        ; preds = %if.end, %entry
  %18 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %19 = load i32, i32* %success, align 4
  %20 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool16 = icmp ne %struct._GError** %20, null
  br i1 %tobool16, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.15
  %21 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %22 = load %struct._GError*, %struct._GError** %21, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.15
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %22, %cond.true ], [ null, %cond.false ]
  %call17 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %18, i32 %19, %struct._GError* %cond)
  ret %struct._GValueArray* %call17
}

declare %struct._GParamSpec* @gimp_param_spec_int8_array(i8*, i8*, i8*, i32) #1

declare %struct._GimpImage* @gimp_value_get_image(%struct._GValue*, %struct._Gimp*) #1

declare i32 @gimp_pdb_image_is_not_base_type(%struct._GimpImage*, i32, %struct._GError**) #1

declare i32 @gimp_image_convert(%struct._GimpImage*, i32, i32, i32, i32, i32, i32, %struct._GimpPalette*, %struct._GimpProgress*, %struct._GError**) #1

declare %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure*, i32, %struct._GError*) #1

declare i32 @g_value_get_enum(%struct._GValue*) #1

declare i32 @g_value_get_int(%struct._GValue*) #1

declare i32 @g_value_get_boolean(%struct._GValue*) #1

declare i8* @g_value_get_string(%struct._GValue*) #1

declare i32 @gimp_item_stack_is_flat(%struct._GimpItemStack*) #1

declare %struct._GimpContainer* @gimp_image_get_layers(%struct._GimpImage*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_item_stack_get_type() #2

declare %struct._GimpPalette* @gimp_pdb_get_palette(%struct._Gimp*, i8*, i32, %struct._GError**) #1

declare void @g_set_error_literal(%struct._GError**, i32, i32, i8*) #1

; Function Attrs: nounwind readnone
declare i32 @gimp_pdb_error_quark() #2

; Function Attrs: nounwind
declare i8* @gettext(i8*) #3

declare i8* @gimp_value_get_int8array(%struct._GValue*) #1

declare void @gimp_image_convert_set_dither_matrix(i8*, i32, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
