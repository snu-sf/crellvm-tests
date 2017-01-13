; ModuleID = './app/pdb/text-tool-cmds.bc'
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
%struct._GimpDrawable = type { %struct._GimpItem, %struct._GimpDrawablePrivate* }
%struct._GimpItem = type { %struct._GimpViewable }
%struct._GimpDrawablePrivate = type opaque
%struct._GimpLayer = type { %struct._GimpDrawable, double, i32, i32, %struct._GimpLayerMask*, %struct._GeglNode*, %struct.anon }
%struct._GimpLayerMask = type opaque
%struct._GeglNode = type opaque
%struct.anon = type { %struct._GimpDrawable*, i32, %struct._BoundSeg*, i32 }
%struct._BoundSeg = type opaque

@.str = private unnamed_addr constant [19 x i8] c"gimp-text-fontname\00", align 1
@.str.1 = private unnamed_addr constant [75 x i8] c"Add text at the specified location as a floating selection or a new layer.\00", align 1
@.str.2 = private unnamed_addr constant [817 x i8] c"This tool requires a fontname matching an installed PangoFT2 font. You can specify the fontsize in units of pixels or points, and the appropriate metric is specified using the size_type argument. The x and y parameters together control the placement of the new text by specifying the upper left corner of the text bounding box. If the specified drawable parameter is valid, the text will be created as a floating selection attached to the drawable. If the drawable parameter is not valid (-1), the text will appear as a new layer. Finally, a border can be specified around the final rendered text. The border is measured in pixels. Parameter size-type is not used and is currently ignored. If you need to display a font in points, divide the size in points by 72.0 and multiply it by the image's vertical resolution.\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Martin Edlman & Sven Neumann\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"Spencer Kimball & Peter Mattis\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"1998- 2001\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"The image\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"drawable\00", align 1
@.str.9 = private unnamed_addr constant [49 x i8] c"The affected drawable: (-1 for a new text layer)\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.11 = private unnamed_addr constant [55 x i8] c"The x coordinate for the left of the text bounding box\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str.13 = private unnamed_addr constant [54 x i8] c"The y coordinate for the top of the text bounding box\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"text\00", align 1
@.str.15 = private unnamed_addr constant [41 x i8] c"The text to generate (in UTF-8 encoding)\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"border\00", align 1
@.str.17 = private unnamed_addr constant [23 x i8] c"The size of the border\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"antialias\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"Antialiasing\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.21 = private unnamed_addr constant [44 x i8] c"The size of text in either pixels or points\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"size-type\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"size type\00", align 1
@.str.24 = private unnamed_addr constant [28 x i8] c"The units of specified size\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"fontname\00", align 1
@.str.26 = private unnamed_addr constant [21 x i8] c"The name of the font\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"text-layer\00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c"text layer\00", align 1
@.str.29 = private unnamed_addr constant [50 x i8] c"The new text layer or -1 if no layer was created.\00", align 1
@.str.30 = private unnamed_addr constant [31 x i8] c"gimp-text-get-extents-fontname\00", align 1
@.str.31 = private unnamed_addr constant [56 x i8] c"Get extents of the bounding box for the specified text.\00", align 1
@.str.32 = private unnamed_addr constant [406 x i8] c"This tool returns the width and height of a bounding box for the specified text string with the specified font information. Ascent and descent for the specified font are returned as well. Parameter size-type is not used and is currently ignored. If you need to display a font in points, divide the size in points by 72.0 and multiply it by the vertical resolution of the image you are taking into account.\00", align 1
@.str.33 = private unnamed_addr constant [6 x i8] c"width\00", align 1
@.str.34 = private unnamed_addr constant [32 x i8] c"The width of the specified font\00", align 1
@.str.35 = private unnamed_addr constant [7 x i8] c"height\00", align 1
@.str.36 = private unnamed_addr constant [33 x i8] c"The height of the specified font\00", align 1
@.str.37 = private unnamed_addr constant [7 x i8] c"ascent\00", align 1
@.str.38 = private unnamed_addr constant [33 x i8] c"The ascent of the specified font\00", align 1
@.str.39 = private unnamed_addr constant [8 x i8] c"descent\00", align 1
@.str.40 = private unnamed_addr constant [34 x i8] c"The descent of the specified font\00", align 1
@.str.41 = private unnamed_addr constant [10 x i8] c"gimp-text\00", align 1
@.str.42 = private unnamed_addr constant [46 x i8] c"Deprecated: Use 'gimp-text-fontname' instead.\00", align 1
@.str.43 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.44 = private unnamed_addr constant [8 x i8] c"foundry\00", align 1
@.str.45 = private unnamed_addr constant [17 x i8] c"The font foundry\00", align 1
@.str.46 = private unnamed_addr constant [7 x i8] c"family\00", align 1
@.str.47 = private unnamed_addr constant [16 x i8] c"The font family\00", align 1
@.str.48 = private unnamed_addr constant [7 x i8] c"weight\00", align 1
@.str.49 = private unnamed_addr constant [16 x i8] c"The font weight\00", align 1
@.str.50 = private unnamed_addr constant [6 x i8] c"slant\00", align 1
@.str.51 = private unnamed_addr constant [15 x i8] c"The font slant\00", align 1
@.str.52 = private unnamed_addr constant [10 x i8] c"set-width\00", align 1
@.str.53 = private unnamed_addr constant [10 x i8] c"set width\00", align 1
@.str.54 = private unnamed_addr constant [19 x i8] c"The font set-width\00", align 1
@.str.55 = private unnamed_addr constant [8 x i8] c"spacing\00", align 1
@.str.56 = private unnamed_addr constant [17 x i8] c"The font spacing\00", align 1
@.str.57 = private unnamed_addr constant [9 x i8] c"registry\00", align 1
@.str.58 = private unnamed_addr constant [18 x i8] c"The font registry\00", align 1
@.str.59 = private unnamed_addr constant [9 x i8] c"encoding\00", align 1
@.str.60 = private unnamed_addr constant [18 x i8] c"The font encoding\00", align 1
@.str.61 = private unnamed_addr constant [22 x i8] c"gimp-text-get-extents\00", align 1
@.str.62 = private unnamed_addr constant [58 x i8] c"Deprecated: Use 'gimp-text-get-extents-fontname' instead.\00", align 1
@.str.63 = private unnamed_addr constant [6 x i8] c"%s %d\00", align 1

; Function Attrs: nounwind uwtable
define void @register_text_tool_procs(%struct._GimpPDB* %pdb) #0 {
entry:
  %pdb.addr = alloca %struct._GimpPDB*, align 8
  %procedure = alloca %struct._GimpProcedure*, align 8
  store %struct._GimpPDB* %pdb, %struct._GimpPDB** %pdb.addr, align 8
  %call = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @text_fontname_invoker)
  store %struct._GimpProcedure* %call, %struct._GimpProcedure** %procedure, align 8
  %0 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %1 = bitcast %struct._GimpProcedure* %0 to %struct._GTypeInstance*
  %call1 = call i64 @gimp_object_get_type() #3
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call1)
  %2 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %2, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0))
  %3 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %3, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([817 x i8], [817 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), i8* null)
  %4 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %5 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %5, i32 0, i32 1
  %6 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call3 = call %struct._GParamSpec* @gimp_param_spec_image_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), %struct._Gimp* %6, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %4, %struct._GParamSpec* %call3)
  %7 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %8 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp4 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %8, i32 0, i32 1
  %9 = load %struct._Gimp*, %struct._Gimp** %gimp4, align 8
  %call5 = call %struct._GParamSpec* @gimp_param_spec_drawable_id(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.9, i32 0, i32 0), %struct._Gimp* %9, i32 1, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %7, %struct._GParamSpec* %call5)
  %10 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call6 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.11, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %10, %struct._GParamSpec* %call6)
  %11 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call7 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.13, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %11, %struct._GParamSpec* %call7)
  %12 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call8 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.15, i32 0, i32 0), i32 0, i32 0, i32 0, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %12, %struct._GParamSpec* %call8)
  %13 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call9 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.17, i32 0, i32 0), i32 -1, i32 2147483647, i32 -1, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %13, %struct._GParamSpec* %call9)
  %14 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call10 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i32 0, i32 0), i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %14, %struct._GParamSpec* %call10)
  %15 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call11 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.21, i32 0, i32 0), double 0.000000e+00, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %15, %struct._GParamSpec* %call11)
  %16 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call12 = call i64 @gimp_size_type_get_type() #3
  %call13 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.24, i32 0, i32 0), i64 %call12, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %16, %struct._GParamSpec* %call13)
  %17 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call14 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.26, i32 0, i32 0), i32 0, i32 0, i32 0, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %17, %struct._GParamSpec* %call14)
  %18 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %19 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp15 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %19, i32 0, i32 1
  %20 = load %struct._Gimp*, %struct._Gimp** %gimp15, align 8
  %call16 = call %struct._GParamSpec* @gimp_param_spec_layer_id(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.29, i32 0, i32 0), %struct._Gimp* %20, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %18, %struct._GParamSpec* %call16)
  %21 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %22 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %21, %struct._GimpProcedure* %22)
  %23 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %24 = bitcast %struct._GimpProcedure* %23 to i8*
  call void @g_object_unref(i8* %24)
  %call17 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @text_get_extents_fontname_invoker)
  store %struct._GimpProcedure* %call17, %struct._GimpProcedure** %procedure, align 8
  %25 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %26 = bitcast %struct._GimpProcedure* %25 to %struct._GTypeInstance*
  %call18 = call i64 @gimp_object_get_type() #3
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %26, i64 %call18)
  %27 = bitcast %struct._GTypeInstance* %call19 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %27, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.30, i32 0, i32 0))
  %28 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %28, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([406 x i8], [406 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), i8* null)
  %29 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call20 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.15, i32 0, i32 0), i32 0, i32 0, i32 0, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %29, %struct._GParamSpec* %call20)
  %30 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call21 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.21, i32 0, i32 0), double 0.000000e+00, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %30, %struct._GParamSpec* %call21)
  %31 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call22 = call i64 @gimp_size_type_get_type() #3
  %call23 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.24, i32 0, i32 0), i64 %call22, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %31, %struct._GParamSpec* %call23)
  %32 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call24 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.26, i32 0, i32 0), i32 0, i32 0, i32 0, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %32, %struct._GParamSpec* %call24)
  %33 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call25 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.34, i32 0, i32 0), i32 -2147483648, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %33, %struct._GParamSpec* %call25)
  %34 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call26 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.36, i32 0, i32 0), i32 -2147483648, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %34, %struct._GParamSpec* %call26)
  %35 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call27 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.38, i32 0, i32 0), i32 -2147483648, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %35, %struct._GParamSpec* %call27)
  %36 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call28 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.40, i32 0, i32 0), i32 -2147483648, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %36, %struct._GParamSpec* %call28)
  %37 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %38 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %37, %struct._GimpProcedure* %38)
  %39 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %40 = bitcast %struct._GimpProcedure* %39 to i8*
  call void @g_object_unref(i8* %40)
  %call29 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @text_invoker)
  store %struct._GimpProcedure* %call29, %struct._GimpProcedure** %procedure, align 8
  %41 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %42 = bitcast %struct._GimpProcedure* %41 to %struct._GTypeInstance*
  %call30 = call i64 @gimp_object_get_type() #3
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %42, i64 %call30)
  %43 = bitcast %struct._GTypeInstance* %call31 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %43, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.41, i32 0, i32 0))
  %44 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %44, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0))
  %45 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %46 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp32 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %46, i32 0, i32 1
  %47 = load %struct._Gimp*, %struct._Gimp** %gimp32, align 8
  %call33 = call %struct._GParamSpec* @gimp_param_spec_image_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), %struct._Gimp* %47, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %45, %struct._GParamSpec* %call33)
  %48 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %49 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp34 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %49, i32 0, i32 1
  %50 = load %struct._Gimp*, %struct._Gimp** %gimp34, align 8
  %call35 = call %struct._GParamSpec* @gimp_param_spec_drawable_id(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.9, i32 0, i32 0), %struct._Gimp* %50, i32 1, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %48, %struct._GParamSpec* %call35)
  %51 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call36 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.11, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %51, %struct._GParamSpec* %call36)
  %52 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call37 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.13, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %52, %struct._GParamSpec* %call37)
  %53 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call38 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.15, i32 0, i32 0), i32 0, i32 0, i32 0, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %53, %struct._GParamSpec* %call38)
  %54 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call39 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.17, i32 0, i32 0), i32 -1, i32 2147483647, i32 -1, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %54, %struct._GParamSpec* %call39)
  %55 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call40 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i32 0, i32 0), i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %55, %struct._GParamSpec* %call40)
  %56 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call41 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.21, i32 0, i32 0), double 0.000000e+00, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %56, %struct._GParamSpec* %call41)
  %57 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call42 = call i64 @gimp_size_type_get_type() #3
  %call43 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.24, i32 0, i32 0), i64 %call42, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %57, %struct._GParamSpec* %call43)
  %58 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call44 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.45, i32 0, i32 0), i32 1, i32 0, i32 0, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %58, %struct._GParamSpec* %call44)
  %59 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call45 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.47, i32 0, i32 0), i32 1, i32 0, i32 0, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %59, %struct._GParamSpec* %call45)
  %60 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call46 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.49, i32 0, i32 0), i32 1, i32 0, i32 0, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %60, %struct._GParamSpec* %call46)
  %61 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call47 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.51, i32 0, i32 0), i32 1, i32 0, i32 0, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %61, %struct._GParamSpec* %call47)
  %62 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call48 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.54, i32 0, i32 0), i32 1, i32 0, i32 0, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %62, %struct._GParamSpec* %call48)
  %63 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call49 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.56, i32 0, i32 0), i32 1, i32 0, i32 0, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %63, %struct._GParamSpec* %call49)
  %64 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call50 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.58, i32 0, i32 0), i32 1, i32 0, i32 0, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %64, %struct._GParamSpec* %call50)
  %65 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call51 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.60, i32 0, i32 0), i32 1, i32 0, i32 0, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %65, %struct._GParamSpec* %call51)
  %66 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %67 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp52 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %67, i32 0, i32 1
  %68 = load %struct._Gimp*, %struct._Gimp** %gimp52, align 8
  %call53 = call %struct._GParamSpec* @gimp_param_spec_layer_id(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.29, i32 0, i32 0), %struct._Gimp* %68, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %66, %struct._GParamSpec* %call53)
  %69 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %70 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %69, %struct._GimpProcedure* %70)
  %71 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %72 = bitcast %struct._GimpProcedure* %71 to i8*
  call void @g_object_unref(i8* %72)
  %call54 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @text_get_extents_invoker)
  store %struct._GimpProcedure* %call54, %struct._GimpProcedure** %procedure, align 8
  %73 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %74 = bitcast %struct._GimpProcedure* %73 to %struct._GTypeInstance*
  %call55 = call i64 @gimp_object_get_type() #3
  %call56 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %74, i64 %call55)
  %75 = bitcast %struct._GTypeInstance* %call56 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %75, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.61, i32 0, i32 0))
  %76 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %76, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.30, i32 0, i32 0))
  %77 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call57 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.15, i32 0, i32 0), i32 0, i32 0, i32 0, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %77, %struct._GParamSpec* %call57)
  %78 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call58 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.21, i32 0, i32 0), double 0.000000e+00, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %78, %struct._GParamSpec* %call58)
  %79 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call59 = call i64 @gimp_size_type_get_type() #3
  %call60 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.24, i32 0, i32 0), i64 %call59, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %79, %struct._GParamSpec* %call60)
  %80 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call61 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.45, i32 0, i32 0), i32 1, i32 0, i32 0, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %80, %struct._GParamSpec* %call61)
  %81 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call62 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.47, i32 0, i32 0), i32 1, i32 0, i32 0, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %81, %struct._GParamSpec* %call62)
  %82 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call63 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.49, i32 0, i32 0), i32 1, i32 0, i32 0, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %82, %struct._GParamSpec* %call63)
  %83 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call64 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.51, i32 0, i32 0), i32 1, i32 0, i32 0, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %83, %struct._GParamSpec* %call64)
  %84 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call65 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.54, i32 0, i32 0), i32 1, i32 0, i32 0, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %84, %struct._GParamSpec* %call65)
  %85 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call66 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.56, i32 0, i32 0), i32 1, i32 0, i32 0, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %85, %struct._GParamSpec* %call66)
  %86 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call67 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.58, i32 0, i32 0), i32 1, i32 0, i32 0, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %86, %struct._GParamSpec* %call67)
  %87 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call68 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.60, i32 0, i32 0), i32 1, i32 0, i32 0, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %87, %struct._GParamSpec* %call68)
  %88 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call69 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.34, i32 0, i32 0), i32 -2147483648, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %88, %struct._GParamSpec* %call69)
  %89 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call70 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.36, i32 0, i32 0), i32 -2147483648, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %89, %struct._GParamSpec* %call70)
  %90 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call71 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.38, i32 0, i32 0), i32 -2147483648, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %90, %struct._GParamSpec* %call71)
  %91 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call72 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.40, i32 0, i32 0), i32 -2147483648, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %91, %struct._GParamSpec* %call72)
  %92 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %93 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %92, %struct._GimpProcedure* %93)
  %94 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %95 = bitcast %struct._GimpProcedure* %94 to i8*
  call void @g_object_unref(i8* %95)
  ret void
}

declare %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)*) #1

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @text_fontname_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  %drawable = alloca %struct._GimpDrawable*, align 8
  %x = alloca double, align 8
  %y = alloca double, align 8
  %text = alloca i8*, align 8
  %border = alloca i32, align 4
  %antialias = alloca i32, align 4
  %size = alloca double, align 8
  %fontname = alloca i8*, align 8
  %text_layer = alloca %struct._GimpLayer*, align 8
  %real_fontname = alloca i8*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store %struct._GimpLayer* null, %struct._GimpLayer** %text_layer, align 8
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
  %5 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call3 = call %struct._GimpDrawable* @gimp_value_get_drawable(%struct._GValue* %arrayidx2, %struct._Gimp* %5)
  store %struct._GimpDrawable* %call3, %struct._GimpDrawable** %drawable, align 8
  %6 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values4 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %6, i32 0, i32 1
  %7 = load %struct._GValue*, %struct._GValue** %values4, align 8
  %arrayidx5 = getelementptr inbounds %struct._GValue, %struct._GValue* %7, i64 2
  %call6 = call double @g_value_get_double(%struct._GValue* %arrayidx5)
  store double %call6, double* %x, align 8
  %8 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values7 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %8, i32 0, i32 1
  %9 = load %struct._GValue*, %struct._GValue** %values7, align 8
  %arrayidx8 = getelementptr inbounds %struct._GValue, %struct._GValue* %9, i64 3
  %call9 = call double @g_value_get_double(%struct._GValue* %arrayidx8)
  store double %call9, double* %y, align 8
  %10 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values10 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %10, i32 0, i32 1
  %11 = load %struct._GValue*, %struct._GValue** %values10, align 8
  %arrayidx11 = getelementptr inbounds %struct._GValue, %struct._GValue* %11, i64 4
  %call12 = call i8* @g_value_get_string(%struct._GValue* %arrayidx11)
  store i8* %call12, i8** %text, align 8
  %12 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values13 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %12, i32 0, i32 1
  %13 = load %struct._GValue*, %struct._GValue** %values13, align 8
  %arrayidx14 = getelementptr inbounds %struct._GValue, %struct._GValue* %13, i64 5
  %call15 = call i32 @g_value_get_int(%struct._GValue* %arrayidx14)
  store i32 %call15, i32* %border, align 4
  %14 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values16 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %14, i32 0, i32 1
  %15 = load %struct._GValue*, %struct._GValue** %values16, align 8
  %arrayidx17 = getelementptr inbounds %struct._GValue, %struct._GValue* %15, i64 6
  %call18 = call i32 @g_value_get_boolean(%struct._GValue* %arrayidx17)
  store i32 %call18, i32* %antialias, align 4
  %16 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values19 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %16, i32 0, i32 1
  %17 = load %struct._GValue*, %struct._GValue** %values19, align 8
  %arrayidx20 = getelementptr inbounds %struct._GValue, %struct._GValue* %17, i64 7
  %call21 = call double @g_value_get_double(%struct._GValue* %arrayidx20)
  store double %call21, double* %size, align 8
  %18 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values22 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %18, i32 0, i32 1
  %19 = load %struct._GValue*, %struct._GValue** %values22, align 8
  %arrayidx23 = getelementptr inbounds %struct._GValue, %struct._GValue* %19, i64 9
  %call24 = call i8* @g_value_get_string(%struct._GValue* %arrayidx23)
  store i8* %call24, i8** %fontname, align 8
  %20 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %20, 0
  br i1 %tobool, label %if.then, label %if.end.42

if.then:                                          ; preds = %entry
  %21 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %tobool25 = icmp ne %struct._GimpDrawable* %21, null
  br i1 %tobool25, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %22 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %23 = bitcast %struct._GimpDrawable* %22 to %struct._GTypeInstance*
  %call26 = call i64 @gimp_item_get_type() #3
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call26)
  %24 = bitcast %struct._GTypeInstance* %call27 to %struct._GimpItem*
  %25 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %26 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call28 = call i32 @gimp_pdb_item_is_attached(%struct._GimpItem* %24, %struct._GimpImage* %25, i32 1, %struct._GError** %26)
  %tobool29 = icmp ne i32 %call28, 0
  br i1 %tobool29, label %lor.lhs.false, label %if.then.34

lor.lhs.false:                                    ; preds = %land.lhs.true
  %27 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %28 = bitcast %struct._GimpDrawable* %27 to %struct._GTypeInstance*
  %call30 = call i64 @gimp_item_get_type() #3
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call30)
  %29 = bitcast %struct._GTypeInstance* %call31 to %struct._GimpItem*
  %30 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call32 = call i32 @gimp_pdb_item_is_not_group(%struct._GimpItem* %29, %struct._GError** %30)
  %tobool33 = icmp ne i32 %call32, 0
  br i1 %tobool33, label %if.end, label %if.then.34

if.then.34:                                       ; preds = %lor.lhs.false, %land.lhs.true
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.34, %lor.lhs.false, %if.then
  %31 = load i32, i32* %success, align 4
  %tobool35 = icmp ne i32 %31, 0
  br i1 %tobool35, label %if.then.36, label %if.end.41

if.then.36:                                       ; preds = %if.end
  %32 = load i8*, i8** %fontname, align 8
  %33 = load double, double* %size, align 8
  %conv = fptosi double %33 to i32
  %call37 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.63, i32 0, i32 0), i8* %32, i32 %conv)
  store i8* %call37, i8** %real_fontname, align 8
  %34 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %35 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %36 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %37 = load double, double* %x, align 8
  %conv38 = fptosi double %37 to i32
  %38 = load double, double* %y, align 8
  %conv39 = fptosi double %38 to i32
  %39 = load i8*, i8** %real_fontname, align 8
  %40 = load i8*, i8** %text, align 8
  %41 = load i32, i32* %border, align 4
  %42 = load i32, i32* %antialias, align 4
  %call40 = call %struct._GimpLayer* @text_render(%struct._GimpImage* %34, %struct._GimpDrawable* %35, %struct._GimpContext* %36, i32 %conv38, i32 %conv39, i8* %39, i8* %40, i32 %41, i32 %42)
  store %struct._GimpLayer* %call40, %struct._GimpLayer** %text_layer, align 8
  %43 = load i8*, i8** %real_fontname, align 8
  call void @g_free(i8* %43)
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.36, %if.end
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.41, %entry
  %44 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %45 = load i32, i32* %success, align 4
  %46 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool43 = icmp ne %struct._GError** %46, null
  br i1 %tobool43, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.42
  %47 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %48 = load %struct._GError*, %struct._GError** %47, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.42
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %48, %cond.true ], [ null, %cond.false ]
  %call44 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %44, i32 %45, %struct._GError* %cond)
  store %struct._GValueArray* %call44, %struct._GValueArray** %return_vals, align 8
  %49 = load i32, i32* %success, align 4
  %tobool45 = icmp ne i32 %49, 0
  br i1 %tobool45, label %if.then.46, label %if.end.49

if.then.46:                                       ; preds = %cond.end
  %50 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values47 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %50, i32 0, i32 1
  %51 = load %struct._GValue*, %struct._GValue** %values47, align 8
  %arrayidx48 = getelementptr inbounds %struct._GValue, %struct._GValue* %51, i64 1
  %52 = load %struct._GimpLayer*, %struct._GimpLayer** %text_layer, align 8
  call void @gimp_value_set_layer(%struct._GValue* %arrayidx48, %struct._GimpLayer* %52)
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.46, %cond.end
  %53 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %53
}

declare void @gimp_object_set_static_name(%struct._GimpObject*, i8*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #2

declare void @gimp_procedure_set_static_strings(%struct._GimpProcedure*, i8*, i8*, i8*, i8*, i8*, i8*, i8*) #1

declare void @gimp_procedure_add_argument(%struct._GimpProcedure*, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @gimp_param_spec_image_id(i8*, i8*, i8*, %struct._Gimp*, i32, i32) #1

declare %struct._GParamSpec* @gimp_param_spec_drawable_id(i8*, i8*, i8*, %struct._Gimp*, i32, i32) #1

declare %struct._GParamSpec* @g_param_spec_double(i8*, i8*, i8*, double, double, double, i32) #1

declare %struct._GParamSpec* @gimp_param_spec_string(i8*, i8*, i8*, i32, i32, i32, i8*, i32) #1

declare %struct._GParamSpec* @gimp_param_spec_int32(i8*, i8*, i8*, i32, i32, i32, i32) #1

declare %struct._GParamSpec* @g_param_spec_boolean(i8*, i8*, i8*, i32, i32) #1

declare %struct._GParamSpec* @g_param_spec_enum(i8*, i8*, i8*, i64, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_size_type_get_type() #2

declare void @gimp_procedure_add_return_value(%struct._GimpProcedure*, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @gimp_param_spec_layer_id(i8*, i8*, i8*, %struct._Gimp*, i32, i32) #1

declare void @gimp_pdb_register_procedure(%struct._GimpPDB*, %struct._GimpProcedure*) #1

declare void @g_object_unref(i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @text_get_extents_fontname_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %return_vals = alloca %struct._GValueArray*, align 8
  %text = alloca i8*, align 8
  %size = alloca double, align 8
  %fontname = alloca i8*, align 8
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %ascent = alloca i32, align 4
  %descent = alloca i32, align 4
  %real_fontname = alloca i8*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store i32 0, i32* %width, align 4
  store i32 0, i32* %height, align 4
  store i32 0, i32* %ascent, align 4
  store i32 0, i32* %descent, align 4
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %call = call i8* @g_value_get_string(%struct._GValue* %arrayidx)
  store i8* %call, i8** %text, align 8
  %2 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %2, i32 0, i32 1
  %3 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %3, i64 1
  %call3 = call double @g_value_get_double(%struct._GValue* %arrayidx2)
  store double %call3, double* %size, align 8
  %4 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values4 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %4, i32 0, i32 1
  %5 = load %struct._GValue*, %struct._GValue** %values4, align 8
  %arrayidx5 = getelementptr inbounds %struct._GValue, %struct._GValue* %5, i64 3
  %call6 = call i8* @g_value_get_string(%struct._GValue* %arrayidx5)
  store i8* %call6, i8** %fontname, align 8
  %6 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i8*, i8** %fontname, align 8
  %8 = load double, double* %size, align 8
  %conv = fptosi double %8 to i32
  %call7 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.63, i32 0, i32 0), i8* %7, i32 %conv)
  store i8* %call7, i8** %real_fontname, align 8
  %9 = load i8*, i8** %real_fontname, align 8
  %10 = load i8*, i8** %text, align 8
  %call8 = call i32 @text_get_extents(i8* %9, i8* %10, i32* %width, i32* %height, i32* %ascent, i32* %descent)
  store i32 %call8, i32* %success, align 4
  %11 = load i8*, i8** %real_fontname, align 8
  call void @g_free(i8* %11)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %13 = load i32, i32* %success, align 4
  %14 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool9 = icmp ne %struct._GError** %14, null
  br i1 %tobool9, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %15 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %16 = load %struct._GError*, %struct._GError** %15, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %16, %cond.true ], [ null, %cond.false ]
  %call10 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %12, i32 %13, %struct._GError* %cond)
  store %struct._GValueArray* %call10, %struct._GValueArray** %return_vals, align 8
  %17 = load i32, i32* %success, align 4
  %tobool11 = icmp ne i32 %17, 0
  br i1 %tobool11, label %if.then.12, label %if.end.21

if.then.12:                                       ; preds = %cond.end
  %18 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values13 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %18, i32 0, i32 1
  %19 = load %struct._GValue*, %struct._GValue** %values13, align 8
  %arrayidx14 = getelementptr inbounds %struct._GValue, %struct._GValue* %19, i64 1
  %20 = load i32, i32* %width, align 4
  call void @g_value_set_int(%struct._GValue* %arrayidx14, i32 %20)
  %21 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values15 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %21, i32 0, i32 1
  %22 = load %struct._GValue*, %struct._GValue** %values15, align 8
  %arrayidx16 = getelementptr inbounds %struct._GValue, %struct._GValue* %22, i64 2
  %23 = load i32, i32* %height, align 4
  call void @g_value_set_int(%struct._GValue* %arrayidx16, i32 %23)
  %24 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values17 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %24, i32 0, i32 1
  %25 = load %struct._GValue*, %struct._GValue** %values17, align 8
  %arrayidx18 = getelementptr inbounds %struct._GValue, %struct._GValue* %25, i64 3
  %26 = load i32, i32* %ascent, align 4
  call void @g_value_set_int(%struct._GValue* %arrayidx18, i32 %26)
  %27 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values19 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %27, i32 0, i32 1
  %28 = load %struct._GValue*, %struct._GValue** %values19, align 8
  %arrayidx20 = getelementptr inbounds %struct._GValue, %struct._GValue* %28, i64 4
  %29 = load i32, i32* %descent, align 4
  call void @g_value_set_int(%struct._GValue* %arrayidx20, i32 %29)
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.12, %cond.end
  %30 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %30
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @text_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  %drawable = alloca %struct._GimpDrawable*, align 8
  %x = alloca double, align 8
  %y = alloca double, align 8
  %text = alloca i8*, align 8
  %border = alloca i32, align 4
  %antialias = alloca i32, align 4
  %size = alloca double, align 8
  %family = alloca i8*, align 8
  %text_layer = alloca %struct._GimpLayer*, align 8
  %real_fontname = alloca i8*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store %struct._GimpLayer* null, %struct._GimpLayer** %text_layer, align 8
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
  %5 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call3 = call %struct._GimpDrawable* @gimp_value_get_drawable(%struct._GValue* %arrayidx2, %struct._Gimp* %5)
  store %struct._GimpDrawable* %call3, %struct._GimpDrawable** %drawable, align 8
  %6 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values4 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %6, i32 0, i32 1
  %7 = load %struct._GValue*, %struct._GValue** %values4, align 8
  %arrayidx5 = getelementptr inbounds %struct._GValue, %struct._GValue* %7, i64 2
  %call6 = call double @g_value_get_double(%struct._GValue* %arrayidx5)
  store double %call6, double* %x, align 8
  %8 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values7 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %8, i32 0, i32 1
  %9 = load %struct._GValue*, %struct._GValue** %values7, align 8
  %arrayidx8 = getelementptr inbounds %struct._GValue, %struct._GValue* %9, i64 3
  %call9 = call double @g_value_get_double(%struct._GValue* %arrayidx8)
  store double %call9, double* %y, align 8
  %10 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values10 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %10, i32 0, i32 1
  %11 = load %struct._GValue*, %struct._GValue** %values10, align 8
  %arrayidx11 = getelementptr inbounds %struct._GValue, %struct._GValue* %11, i64 4
  %call12 = call i8* @g_value_get_string(%struct._GValue* %arrayidx11)
  store i8* %call12, i8** %text, align 8
  %12 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values13 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %12, i32 0, i32 1
  %13 = load %struct._GValue*, %struct._GValue** %values13, align 8
  %arrayidx14 = getelementptr inbounds %struct._GValue, %struct._GValue* %13, i64 5
  %call15 = call i32 @g_value_get_int(%struct._GValue* %arrayidx14)
  store i32 %call15, i32* %border, align 4
  %14 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values16 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %14, i32 0, i32 1
  %15 = load %struct._GValue*, %struct._GValue** %values16, align 8
  %arrayidx17 = getelementptr inbounds %struct._GValue, %struct._GValue* %15, i64 6
  %call18 = call i32 @g_value_get_boolean(%struct._GValue* %arrayidx17)
  store i32 %call18, i32* %antialias, align 4
  %16 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values19 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %16, i32 0, i32 1
  %17 = load %struct._GValue*, %struct._GValue** %values19, align 8
  %arrayidx20 = getelementptr inbounds %struct._GValue, %struct._GValue* %17, i64 7
  %call21 = call double @g_value_get_double(%struct._GValue* %arrayidx20)
  store double %call21, double* %size, align 8
  %18 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values22 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %18, i32 0, i32 1
  %19 = load %struct._GValue*, %struct._GValue** %values22, align 8
  %arrayidx23 = getelementptr inbounds %struct._GValue, %struct._GValue* %19, i64 10
  %call24 = call i8* @g_value_get_string(%struct._GValue* %arrayidx23)
  store i8* %call24, i8** %family, align 8
  %20 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %20, 0
  br i1 %tobool, label %if.then, label %if.end.42

if.then:                                          ; preds = %entry
  %21 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %tobool25 = icmp ne %struct._GimpDrawable* %21, null
  br i1 %tobool25, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %22 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %23 = bitcast %struct._GimpDrawable* %22 to %struct._GTypeInstance*
  %call26 = call i64 @gimp_item_get_type() #3
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call26)
  %24 = bitcast %struct._GTypeInstance* %call27 to %struct._GimpItem*
  %25 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %26 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call28 = call i32 @gimp_pdb_item_is_attached(%struct._GimpItem* %24, %struct._GimpImage* %25, i32 1, %struct._GError** %26)
  %tobool29 = icmp ne i32 %call28, 0
  br i1 %tobool29, label %lor.lhs.false, label %if.then.34

lor.lhs.false:                                    ; preds = %land.lhs.true
  %27 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %28 = bitcast %struct._GimpDrawable* %27 to %struct._GTypeInstance*
  %call30 = call i64 @gimp_item_get_type() #3
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call30)
  %29 = bitcast %struct._GTypeInstance* %call31 to %struct._GimpItem*
  %30 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call32 = call i32 @gimp_pdb_item_is_not_group(%struct._GimpItem* %29, %struct._GError** %30)
  %tobool33 = icmp ne i32 %call32, 0
  br i1 %tobool33, label %if.end, label %if.then.34

if.then.34:                                       ; preds = %lor.lhs.false, %land.lhs.true
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.34, %lor.lhs.false, %if.then
  %31 = load i32, i32* %success, align 4
  %tobool35 = icmp ne i32 %31, 0
  br i1 %tobool35, label %if.then.36, label %if.end.41

if.then.36:                                       ; preds = %if.end
  %32 = load i8*, i8** %family, align 8
  %33 = load double, double* %size, align 8
  %conv = fptosi double %33 to i32
  %call37 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.63, i32 0, i32 0), i8* %32, i32 %conv)
  store i8* %call37, i8** %real_fontname, align 8
  %34 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %35 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %36 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %37 = load double, double* %x, align 8
  %conv38 = fptosi double %37 to i32
  %38 = load double, double* %y, align 8
  %conv39 = fptosi double %38 to i32
  %39 = load i8*, i8** %real_fontname, align 8
  %40 = load i8*, i8** %text, align 8
  %41 = load i32, i32* %border, align 4
  %42 = load i32, i32* %antialias, align 4
  %call40 = call %struct._GimpLayer* @text_render(%struct._GimpImage* %34, %struct._GimpDrawable* %35, %struct._GimpContext* %36, i32 %conv38, i32 %conv39, i8* %39, i8* %40, i32 %41, i32 %42)
  store %struct._GimpLayer* %call40, %struct._GimpLayer** %text_layer, align 8
  %43 = load i8*, i8** %real_fontname, align 8
  call void @g_free(i8* %43)
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.36, %if.end
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.41, %entry
  %44 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %45 = load i32, i32* %success, align 4
  %46 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool43 = icmp ne %struct._GError** %46, null
  br i1 %tobool43, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.42
  %47 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %48 = load %struct._GError*, %struct._GError** %47, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.42
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %48, %cond.true ], [ null, %cond.false ]
  %call44 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %44, i32 %45, %struct._GError* %cond)
  store %struct._GValueArray* %call44, %struct._GValueArray** %return_vals, align 8
  %49 = load i32, i32* %success, align 4
  %tobool45 = icmp ne i32 %49, 0
  br i1 %tobool45, label %if.then.46, label %if.end.49

if.then.46:                                       ; preds = %cond.end
  %50 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values47 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %50, i32 0, i32 1
  %51 = load %struct._GValue*, %struct._GValue** %values47, align 8
  %arrayidx48 = getelementptr inbounds %struct._GValue, %struct._GValue* %51, i64 1
  %52 = load %struct._GimpLayer*, %struct._GimpLayer** %text_layer, align 8
  call void @gimp_value_set_layer(%struct._GValue* %arrayidx48, %struct._GimpLayer* %52)
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.46, %cond.end
  %53 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %53
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @text_get_extents_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %return_vals = alloca %struct._GValueArray*, align 8
  %text = alloca i8*, align 8
  %size = alloca double, align 8
  %family = alloca i8*, align 8
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %ascent = alloca i32, align 4
  %descent = alloca i32, align 4
  %real_fontname = alloca i8*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store i32 0, i32* %width, align 4
  store i32 0, i32* %height, align 4
  store i32 0, i32* %ascent, align 4
  store i32 0, i32* %descent, align 4
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %call = call i8* @g_value_get_string(%struct._GValue* %arrayidx)
  store i8* %call, i8** %text, align 8
  %2 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %2, i32 0, i32 1
  %3 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %3, i64 1
  %call3 = call double @g_value_get_double(%struct._GValue* %arrayidx2)
  store double %call3, double* %size, align 8
  %4 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values4 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %4, i32 0, i32 1
  %5 = load %struct._GValue*, %struct._GValue** %values4, align 8
  %arrayidx5 = getelementptr inbounds %struct._GValue, %struct._GValue* %5, i64 4
  %call6 = call i8* @g_value_get_string(%struct._GValue* %arrayidx5)
  store i8* %call6, i8** %family, align 8
  %6 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i8*, i8** %family, align 8
  %8 = load double, double* %size, align 8
  %conv = fptosi double %8 to i32
  %call7 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.63, i32 0, i32 0), i8* %7, i32 %conv)
  store i8* %call7, i8** %real_fontname, align 8
  %9 = load i8*, i8** %real_fontname, align 8
  %10 = load i8*, i8** %text, align 8
  %call8 = call i32 @text_get_extents(i8* %9, i8* %10, i32* %width, i32* %height, i32* %ascent, i32* %descent)
  store i32 %call8, i32* %success, align 4
  %11 = load i8*, i8** %real_fontname, align 8
  call void @g_free(i8* %11)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %13 = load i32, i32* %success, align 4
  %14 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool9 = icmp ne %struct._GError** %14, null
  br i1 %tobool9, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %15 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %16 = load %struct._GError*, %struct._GError** %15, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %16, %cond.true ], [ null, %cond.false ]
  %call10 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %12, i32 %13, %struct._GError* %cond)
  store %struct._GValueArray* %call10, %struct._GValueArray** %return_vals, align 8
  %17 = load i32, i32* %success, align 4
  %tobool11 = icmp ne i32 %17, 0
  br i1 %tobool11, label %if.then.12, label %if.end.21

if.then.12:                                       ; preds = %cond.end
  %18 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values13 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %18, i32 0, i32 1
  %19 = load %struct._GValue*, %struct._GValue** %values13, align 8
  %arrayidx14 = getelementptr inbounds %struct._GValue, %struct._GValue* %19, i64 1
  %20 = load i32, i32* %width, align 4
  call void @g_value_set_int(%struct._GValue* %arrayidx14, i32 %20)
  %21 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values15 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %21, i32 0, i32 1
  %22 = load %struct._GValue*, %struct._GValue** %values15, align 8
  %arrayidx16 = getelementptr inbounds %struct._GValue, %struct._GValue* %22, i64 2
  %23 = load i32, i32* %height, align 4
  call void @g_value_set_int(%struct._GValue* %arrayidx16, i32 %23)
  %24 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values17 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %24, i32 0, i32 1
  %25 = load %struct._GValue*, %struct._GValue** %values17, align 8
  %arrayidx18 = getelementptr inbounds %struct._GValue, %struct._GValue* %25, i64 3
  %26 = load i32, i32* %ascent, align 4
  call void @g_value_set_int(%struct._GValue* %arrayidx18, i32 %26)
  %27 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values19 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %27, i32 0, i32 1
  %28 = load %struct._GValue*, %struct._GValue** %values19, align 8
  %arrayidx20 = getelementptr inbounds %struct._GValue, %struct._GValue* %28, i64 4
  %29 = load i32, i32* %descent, align 4
  call void @g_value_set_int(%struct._GValue* %arrayidx20, i32 %29)
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.12, %cond.end
  %30 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %30
}

declare %struct._GimpImage* @gimp_value_get_image(%struct._GValue*, %struct._Gimp*) #1

declare %struct._GimpDrawable* @gimp_value_get_drawable(%struct._GValue*, %struct._Gimp*) #1

declare double @g_value_get_double(%struct._GValue*) #1

declare i8* @g_value_get_string(%struct._GValue*) #1

declare i32 @g_value_get_int(%struct._GValue*) #1

declare i32 @g_value_get_boolean(%struct._GValue*) #1

declare i32 @gimp_pdb_item_is_attached(%struct._GimpItem*, %struct._GimpImage*, i32, %struct._GError**) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_item_get_type() #2

declare i32 @gimp_pdb_item_is_not_group(%struct._GimpItem*, %struct._GError**) #1

declare noalias i8* @g_strdup_printf(i8*, ...) #1

declare %struct._GimpLayer* @text_render(%struct._GimpImage*, %struct._GimpDrawable*, %struct._GimpContext*, i32, i32, i8*, i8*, i32, i32) #1

declare void @g_free(i8*) #1

declare %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure*, i32, %struct._GError*) #1

declare void @gimp_value_set_layer(%struct._GValue*, %struct._GimpLayer*) #1

declare i32 @text_get_extents(i8*, i8*, i32*, i32*, i32*, i32*) #1

declare void @g_value_set_int(%struct._GValue*, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
