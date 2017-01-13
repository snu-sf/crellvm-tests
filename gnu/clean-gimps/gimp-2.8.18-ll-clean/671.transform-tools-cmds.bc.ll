; ModuleID = './app/pdb/transform-tools-cmds.bc'
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
%struct._GimpColorConfig = type opaque
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpGui = type { void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*, %struct._GObject*, i32, i8*, i8*)*, void (%struct._Gimp*, %struct._GimpProgress*, i8*, i8*)*, i8* (%struct._Gimp*)*, i8* (%struct._Gimp*, i32, i32*)*, i32 (%struct._Gimp*)*, i8* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*, i32)*, i32 (%struct._GimpObject*)*, i32 (%struct._GimpObject*)*, %struct._GimpObject* (%struct._Gimp*, %struct._GimpImage*, i32, double)*, void (%struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpImage*, %struct._GimpImage*)*, %struct._GimpProgress* (%struct._Gimp*, %struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpProgress*)*, i32 (%struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GimpContainer*, i8*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*)*, i32 (%struct._Gimp*, i8*, i8*)*, void (%struct._Gimp*)* }
%struct._GimpProgress = type opaque
%struct._GimpImage = type { %struct._GimpViewable, %struct._Gimp* }
%struct._GimpViewable = type { %struct._GimpObject }
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
%struct._GimpDrawable = type { %struct._GimpItem, %struct._GimpDrawablePrivate* }
%struct._GimpItem = type { %struct._GimpViewable }
%struct._GimpDrawablePrivate = type opaque
%struct._GimpChannel = type { %struct._GimpDrawable, %struct._GimpRGB, i32, %struct._GeglNode*, %struct._GeglNode*, %struct._GeglNode*, i32, %struct._BoundSeg*, %struct._BoundSeg*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GeglNode = type opaque
%struct._BoundSeg = type opaque
%struct._GimpMatrix3 = type { [3 x [3 x double]] }

@.str = private unnamed_addr constant [10 x i8] c"gimp-flip\00", align 1
@.str.1 = private unnamed_addr constant [59 x i8] c"Deprecated: Use 'gimp-item-transform-flip-simple' instead.\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"gimp-item-transform-flip-simple\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"drawable\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"The affected drawable\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"flip-type\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"flip type\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"Type of flip\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"The flipped drawable\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"gimp-perspective\00", align 1
@.str.11 = private unnamed_addr constant [59 x i8] c"Deprecated: Use 'gimp-item-transform-perspective' instead.\00", align 1
@.str.12 = private unnamed_addr constant [32 x i8] c"gimp-item-transform-perspective\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"interpolation\00", align 1
@.str.14 = private unnamed_addr constant [29 x i8] c"Whether to use interpolation\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"x0\00", align 1
@.str.16 = private unnamed_addr constant [67 x i8] c"The new x coordinate of upper-left corner of original bounding box\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"y0\00", align 1
@.str.18 = private unnamed_addr constant [67 x i8] c"The new y coordinate of upper-left corner of original bounding box\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"x1\00", align 1
@.str.20 = private unnamed_addr constant [68 x i8] c"The new x coordinate of upper-right corner of original bounding box\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"y1\00", align 1
@.str.22 = private unnamed_addr constant [68 x i8] c"The new y coordinate of upper-right corner of original bounding box\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"x2\00", align 1
@.str.24 = private unnamed_addr constant [67 x i8] c"The new x coordinate of lower-left corner of original bounding box\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"y2\00", align 1
@.str.26 = private unnamed_addr constant [67 x i8] c"The new y coordinate of lower-left corner of original bounding box\00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c"x3\00", align 1
@.str.28 = private unnamed_addr constant [68 x i8] c"The new x coordinate of lower-right corner of original bounding box\00", align 1
@.str.29 = private unnamed_addr constant [3 x i8] c"y3\00", align 1
@.str.30 = private unnamed_addr constant [68 x i8] c"The new y coordinate of lower-right corner of original bounding box\00", align 1
@.str.31 = private unnamed_addr constant [26 x i8] c"The newly mapped drawable\00", align 1
@.str.32 = private unnamed_addr constant [12 x i8] c"gimp-rotate\00", align 1
@.str.33 = private unnamed_addr constant [54 x i8] c"Deprecated: Use 'gimp-item-transform-rotate' instead.\00", align 1
@.str.34 = private unnamed_addr constant [27 x i8] c"gimp-item-transform-rotate\00", align 1
@.str.35 = private unnamed_addr constant [6 x i8] c"angle\00", align 1
@.str.36 = private unnamed_addr constant [32 x i8] c"The angle of rotation (radians)\00", align 1
@.str.37 = private unnamed_addr constant [21 x i8] c"The rotated drawable\00", align 1
@.str.38 = private unnamed_addr constant [11 x i8] c"gimp-scale\00", align 1
@.str.39 = private unnamed_addr constant [53 x i8] c"Deprecated: Use 'gimp-item-transform-scale' instead.\00", align 1
@.str.40 = private unnamed_addr constant [26 x i8] c"gimp-item-transform-scale\00", align 1
@.str.41 = private unnamed_addr constant [67 x i8] c"The new x coordinate of the upper-left corner of the scaled region\00", align 1
@.str.42 = private unnamed_addr constant [67 x i8] c"The new y coordinate of the upper-left corner of the scaled region\00", align 1
@.str.43 = private unnamed_addr constant [68 x i8] c"The new x coordinate of the lower-right corner of the scaled region\00", align 1
@.str.44 = private unnamed_addr constant [68 x i8] c"The new y coordinate of the lower-right corner of the scaled region\00", align 1
@.str.45 = private unnamed_addr constant [20 x i8] c"The scaled drawable\00", align 1
@.str.46 = private unnamed_addr constant [11 x i8] c"gimp-shear\00", align 1
@.str.47 = private unnamed_addr constant [53 x i8] c"Deprecated: Use 'gimp-item-transform-shear' instead.\00", align 1
@.str.48 = private unnamed_addr constant [26 x i8] c"gimp-item-transform-shear\00", align 1
@.str.49 = private unnamed_addr constant [11 x i8] c"shear-type\00", align 1
@.str.50 = private unnamed_addr constant [11 x i8] c"shear type\00", align 1
@.str.51 = private unnamed_addr constant [14 x i8] c"Type of shear\00", align 1
@.str.52 = private unnamed_addr constant [10 x i8] c"magnitude\00", align 1
@.str.53 = private unnamed_addr constant [27 x i8] c"The magnitude of the shear\00", align 1
@.str.54 = private unnamed_addr constant [21 x i8] c"The sheared drawable\00", align 1
@.str.55 = private unnamed_addr constant [18 x i8] c"gimp-transform-2d\00", align 1
@.str.56 = private unnamed_addr constant [50 x i8] c"Deprecated: Use 'gimp-item-transform-2d' instead.\00", align 1
@.str.57 = private unnamed_addr constant [23 x i8] c"gimp-item-transform-2d\00", align 1
@.str.58 = private unnamed_addr constant [9 x i8] c"source-x\00", align 1
@.str.59 = private unnamed_addr constant [9 x i8] c"source x\00", align 1
@.str.60 = private unnamed_addr constant [42 x i8] c"X coordinate of the transformation center\00", align 1
@.str.61 = private unnamed_addr constant [9 x i8] c"source-y\00", align 1
@.str.62 = private unnamed_addr constant [9 x i8] c"source y\00", align 1
@.str.63 = private unnamed_addr constant [42 x i8] c"Y coordinate of the transformation center\00", align 1
@.str.64 = private unnamed_addr constant [8 x i8] c"scale-x\00", align 1
@.str.65 = private unnamed_addr constant [8 x i8] c"scale x\00", align 1
@.str.66 = private unnamed_addr constant [31 x i8] c"Amount to scale in x direction\00", align 1
@.str.67 = private unnamed_addr constant [8 x i8] c"scale-y\00", align 1
@.str.68 = private unnamed_addr constant [8 x i8] c"scale y\00", align 1
@.str.69 = private unnamed_addr constant [31 x i8] c"Amount to scale in y direction\00", align 1
@.str.70 = private unnamed_addr constant [7 x i8] c"dest-x\00", align 1
@.str.71 = private unnamed_addr constant [7 x i8] c"dest x\00", align 1
@.str.72 = private unnamed_addr constant [38 x i8] c"X coordinate of where the centre goes\00", align 1
@.str.73 = private unnamed_addr constant [7 x i8] c"dest-y\00", align 1
@.str.74 = private unnamed_addr constant [7 x i8] c"dest y\00", align 1
@.str.75 = private unnamed_addr constant [38 x i8] c"Y coordinate of where the centre goes\00", align 1
@.str.76 = private unnamed_addr constant [25 x i8] c"The transformed drawable\00", align 1
@.str.77 = private unnamed_addr constant [12 x i8] c"Perspective\00", align 1
@.str.78 = private unnamed_addr constant [9 x i8] c"Rotating\00", align 1
@.str.79 = private unnamed_addr constant [8 x i8] c"Scaling\00", align 1
@.str.80 = private unnamed_addr constant [9 x i8] c"Shearing\00", align 1
@.str.81 = private unnamed_addr constant [13 x i8] c"2D Transform\00", align 1

; Function Attrs: nounwind uwtable
define void @register_transform_tools_procs(%struct._GimpPDB* %pdb) #0 {
entry:
  %pdb.addr = alloca %struct._GimpPDB*, align 8
  %procedure = alloca %struct._GimpProcedure*, align 8
  store %struct._GimpPDB* %pdb, %struct._GimpPDB** %pdb.addr, align 8
  %call = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @flip_invoker)
  store %struct._GimpProcedure* %call, %struct._GimpProcedure** %procedure, align 8
  %0 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %1 = bitcast %struct._GimpProcedure* %0 to %struct._GTypeInstance*
  %call1 = call i64 @gimp_object_get_type() #4
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call1)
  %2 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0))
  %3 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %3, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i32 0, i32 0))
  %4 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %5 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %5, i32 0, i32 1
  %6 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call3 = call %struct._GParamSpec* @gimp_param_spec_drawable_id(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i32 0, i32 0), %struct._Gimp* %6, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %4, %struct._GParamSpec* %call3)
  %7 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call4 = call i64 @gimp_orientation_type_get_type() #4
  %call5 = call %struct._GParamSpec* @gimp_param_spec_enum(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i64 %call4, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %7, %struct._GParamSpec* %call5)
  %8 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %args = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %8, i32 0, i32 11
  %9 = load %struct._GParamSpec**, %struct._GParamSpec*** %args, align 8
  %arrayidx = getelementptr inbounds %struct._GParamSpec*, %struct._GParamSpec** %9, i64 1
  %10 = load %struct._GParamSpec*, %struct._GParamSpec** %arrayidx, align 8
  %11 = bitcast %struct._GParamSpec* %10 to %struct._GTypeInstance*
  %call6 = call i64 @gimp_param_enum_get_type() #4
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call6)
  %12 = bitcast %struct._GTypeInstance* %call7 to %struct._GimpParamSpecEnum*
  call void @gimp_param_spec_enum_exclude_value(%struct._GimpParamSpecEnum* %12, i32 2)
  %13 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %14 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp8 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %14, i32 0, i32 1
  %15 = load %struct._Gimp*, %struct._Gimp** %gimp8, align 8
  %call9 = call %struct._GParamSpec* @gimp_param_spec_drawable_id(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i32 0, i32 0), %struct._Gimp* %15, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %13, %struct._GParamSpec* %call9)
  %16 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %17 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %16, %struct._GimpProcedure* %17)
  %18 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %19 = bitcast %struct._GimpProcedure* %18 to i8*
  call void @g_object_unref(i8* %19)
  %call10 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @perspective_invoker)
  store %struct._GimpProcedure* %call10, %struct._GimpProcedure** %procedure, align 8
  %20 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %21 = bitcast %struct._GimpProcedure* %20 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_object_get_type() #4
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call11)
  %22 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %22, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i32 0, i32 0))
  %23 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %23, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.12, i32 0, i32 0))
  %24 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %25 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp13 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %25, i32 0, i32 1
  %26 = load %struct._Gimp*, %struct._Gimp** %gimp13, align 8
  %call14 = call %struct._GParamSpec* @gimp_param_spec_drawable_id(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i32 0, i32 0), %struct._Gimp* %26, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %24, %struct._GParamSpec* %call14)
  %27 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call15 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i32 0, i32 0), i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %27, %struct._GParamSpec* %call15)
  %28 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call16 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.16, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %28, %struct._GParamSpec* %call16)
  %29 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call17 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.18, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %29, %struct._GParamSpec* %call17)
  %30 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call18 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.20, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %30, %struct._GParamSpec* %call18)
  %31 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call19 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.22, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %31, %struct._GParamSpec* %call19)
  %32 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call20 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.24, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %32, %struct._GParamSpec* %call20)
  %33 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call21 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.26, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %33, %struct._GParamSpec* %call21)
  %34 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call22 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.28, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %34, %struct._GParamSpec* %call22)
  %35 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call23 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.30, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %35, %struct._GParamSpec* %call23)
  %36 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %37 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp24 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %37, i32 0, i32 1
  %38 = load %struct._Gimp*, %struct._Gimp** %gimp24, align 8
  %call25 = call %struct._GParamSpec* @gimp_param_spec_drawable_id(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.31, i32 0, i32 0), %struct._Gimp* %38, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %36, %struct._GParamSpec* %call25)
  %39 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %40 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %39, %struct._GimpProcedure* %40)
  %41 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %42 = bitcast %struct._GimpProcedure* %41 to i8*
  call void @g_object_unref(i8* %42)
  %call26 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @rotate_invoker)
  store %struct._GimpProcedure* %call26, %struct._GimpProcedure** %procedure, align 8
  %43 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %44 = bitcast %struct._GimpProcedure* %43 to %struct._GTypeInstance*
  %call27 = call i64 @gimp_object_get_type() #4
  %call28 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %44, i64 %call27)
  %45 = bitcast %struct._GTypeInstance* %call28 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %45, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i32 0, i32 0))
  %46 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %46, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.34, i32 0, i32 0))
  %47 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %48 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp29 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %48, i32 0, i32 1
  %49 = load %struct._Gimp*, %struct._Gimp** %gimp29, align 8
  %call30 = call %struct._GParamSpec* @gimp_param_spec_drawable_id(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i32 0, i32 0), %struct._Gimp* %49, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %47, %struct._GParamSpec* %call30)
  %50 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call31 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i32 0, i32 0), i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %50, %struct._GParamSpec* %call31)
  %51 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call32 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.36, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %51, %struct._GParamSpec* %call32)
  %52 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %53 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp33 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %53, i32 0, i32 1
  %54 = load %struct._Gimp*, %struct._Gimp** %gimp33, align 8
  %call34 = call %struct._GParamSpec* @gimp_param_spec_drawable_id(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.37, i32 0, i32 0), %struct._Gimp* %54, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %52, %struct._GParamSpec* %call34)
  %55 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %56 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %55, %struct._GimpProcedure* %56)
  %57 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %58 = bitcast %struct._GimpProcedure* %57 to i8*
  call void @g_object_unref(i8* %58)
  %call35 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @scale_invoker)
  store %struct._GimpProcedure* %call35, %struct._GimpProcedure** %procedure, align 8
  %59 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %60 = bitcast %struct._GimpProcedure* %59 to %struct._GTypeInstance*
  %call36 = call i64 @gimp_object_get_type() #4
  %call37 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %60, i64 %call36)
  %61 = bitcast %struct._GTypeInstance* %call37 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %61, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.38, i32 0, i32 0))
  %62 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %62, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.40, i32 0, i32 0))
  %63 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %64 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp38 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %64, i32 0, i32 1
  %65 = load %struct._Gimp*, %struct._Gimp** %gimp38, align 8
  %call39 = call %struct._GParamSpec* @gimp_param_spec_drawable_id(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i32 0, i32 0), %struct._Gimp* %65, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %63, %struct._GParamSpec* %call39)
  %66 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call40 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i32 0, i32 0), i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %66, %struct._GParamSpec* %call40)
  %67 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call41 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.41, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %67, %struct._GParamSpec* %call41)
  %68 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call42 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.42, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %68, %struct._GParamSpec* %call42)
  %69 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call43 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.43, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %69, %struct._GParamSpec* %call43)
  %70 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call44 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.44, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %70, %struct._GParamSpec* %call44)
  %71 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %72 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp45 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %72, i32 0, i32 1
  %73 = load %struct._Gimp*, %struct._Gimp** %gimp45, align 8
  %call46 = call %struct._GParamSpec* @gimp_param_spec_drawable_id(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.45, i32 0, i32 0), %struct._Gimp* %73, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %71, %struct._GParamSpec* %call46)
  %74 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %75 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %74, %struct._GimpProcedure* %75)
  %76 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %77 = bitcast %struct._GimpProcedure* %76 to i8*
  call void @g_object_unref(i8* %77)
  %call47 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @shear_invoker)
  store %struct._GimpProcedure* %call47, %struct._GimpProcedure** %procedure, align 8
  %78 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %79 = bitcast %struct._GimpProcedure* %78 to %struct._GTypeInstance*
  %call48 = call i64 @gimp_object_get_type() #4
  %call49 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %79, i64 %call48)
  %80 = bitcast %struct._GTypeInstance* %call49 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %80, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.46, i32 0, i32 0))
  %81 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %81, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.48, i32 0, i32 0))
  %82 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %83 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp50 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %83, i32 0, i32 1
  %84 = load %struct._Gimp*, %struct._Gimp** %gimp50, align 8
  %call51 = call %struct._GParamSpec* @gimp_param_spec_drawable_id(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i32 0, i32 0), %struct._Gimp* %84, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %82, %struct._GParamSpec* %call51)
  %85 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call52 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i32 0, i32 0), i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %85, %struct._GParamSpec* %call52)
  %86 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call53 = call i64 @gimp_orientation_type_get_type() #4
  %call54 = call %struct._GParamSpec* @gimp_param_spec_enum(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.51, i32 0, i32 0), i64 %call53, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %86, %struct._GParamSpec* %call54)
  %87 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %args55 = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %87, i32 0, i32 11
  %88 = load %struct._GParamSpec**, %struct._GParamSpec*** %args55, align 8
  %arrayidx56 = getelementptr inbounds %struct._GParamSpec*, %struct._GParamSpec** %88, i64 2
  %89 = load %struct._GParamSpec*, %struct._GParamSpec** %arrayidx56, align 8
  %90 = bitcast %struct._GParamSpec* %89 to %struct._GTypeInstance*
  %call57 = call i64 @gimp_param_enum_get_type() #4
  %call58 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %90, i64 %call57)
  %91 = bitcast %struct._GTypeInstance* %call58 to %struct._GimpParamSpecEnum*
  call void @gimp_param_spec_enum_exclude_value(%struct._GimpParamSpecEnum* %91, i32 2)
  %92 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call59 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.53, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %92, %struct._GParamSpec* %call59)
  %93 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %94 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp60 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %94, i32 0, i32 1
  %95 = load %struct._Gimp*, %struct._Gimp** %gimp60, align 8
  %call61 = call %struct._GParamSpec* @gimp_param_spec_drawable_id(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.54, i32 0, i32 0), %struct._Gimp* %95, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %93, %struct._GParamSpec* %call61)
  %96 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %97 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %96, %struct._GimpProcedure* %97)
  %98 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %99 = bitcast %struct._GimpProcedure* %98 to i8*
  call void @g_object_unref(i8* %99)
  %call62 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @transform_2d_invoker)
  store %struct._GimpProcedure* %call62, %struct._GimpProcedure** %procedure, align 8
  %100 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %101 = bitcast %struct._GimpProcedure* %100 to %struct._GTypeInstance*
  %call63 = call i64 @gimp_object_get_type() #4
  %call64 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %101, i64 %call63)
  %102 = bitcast %struct._GTypeInstance* %call64 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %102, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.55, i32 0, i32 0))
  %103 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %103, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.57, i32 0, i32 0))
  %104 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %105 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp65 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %105, i32 0, i32 1
  %106 = load %struct._Gimp*, %struct._Gimp** %gimp65, align 8
  %call66 = call %struct._GParamSpec* @gimp_param_spec_drawable_id(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i32 0, i32 0), %struct._Gimp* %106, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %104, %struct._GParamSpec* %call66)
  %107 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call67 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i32 0, i32 0), i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %107, %struct._GParamSpec* %call67)
  %108 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call68 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.60, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %108, %struct._GParamSpec* %call68)
  %109 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call69 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.63, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %109, %struct._GParamSpec* %call69)
  %110 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call70 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.66, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %110, %struct._GParamSpec* %call70)
  %111 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call71 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.69, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %111, %struct._GParamSpec* %call71)
  %112 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call72 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.36, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %112, %struct._GParamSpec* %call72)
  %113 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call73 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.72, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %113, %struct._GParamSpec* %call73)
  %114 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call74 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.73, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.74, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.75, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %114, %struct._GParamSpec* %call74)
  %115 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %116 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp75 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %116, i32 0, i32 1
  %117 = load %struct._Gimp*, %struct._Gimp** %gimp75, align 8
  %call76 = call %struct._GParamSpec* @gimp_param_spec_drawable_id(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.76, i32 0, i32 0), %struct._Gimp* %117, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %115, %struct._GParamSpec* %call76)
  %118 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %119 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %118, %struct._GimpProcedure* %119)
  %120 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %121 = bitcast %struct._GimpProcedure* %120 to i8*
  call void @g_object_unref(i8* %121)
  ret void
}

declare %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)*) #1

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @flip_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %return_vals = alloca %struct._GValueArray*, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  %flip_type = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %axis = alloca double, align 8
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
  %call = call %struct._GimpDrawable* @gimp_value_get_drawable(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpDrawable* %call, %struct._GimpDrawable** %drawable, align 8
  %3 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %3, i32 0, i32 1
  %4 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %4, i64 1
  %call3 = call i32 @g_value_get_enum(%struct._GValue* %arrayidx2)
  store i32 %call3, i32* %flip_type, align 4
  %5 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end.32

if.then:                                          ; preds = %entry
  %6 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %7 = bitcast %struct._GimpDrawable* %6 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_item_get_type() #4
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call4)
  %8 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpItem*
  %9 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call6 = call i32 @gimp_pdb_item_is_attached(%struct._GimpItem* %8, %struct._GimpImage* null, i32 1, %struct._GError** %9)
  store i32 %call6, i32* %success, align 4
  %10 = load i32, i32* %success, align 4
  %tobool7 = icmp ne i32 %10, 0
  br i1 %tobool7, label %land.lhs.true, label %if.end.31

land.lhs.true:                                    ; preds = %if.then
  %11 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %12 = bitcast %struct._GimpDrawable* %11 to %struct._GTypeInstance*
  %call8 = call i64 @gimp_item_get_type() #4
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call8)
  %13 = bitcast %struct._GTypeInstance* %call9 to %struct._GimpItem*
  %call10 = call i32 @gimp_item_mask_intersect(%struct._GimpItem* %13, i32* %x, i32* %y, i32* %width, i32* %height)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.then.12, label %if.end.31

if.then.12:                                       ; preds = %land.lhs.true
  %14 = load i32, i32* %x, align 4
  %15 = load i32, i32* %y, align 4
  %16 = load i32, i32* %width, align 4
  %17 = load i32, i32* %height, align 4
  %18 = load i32, i32* %flip_type, align 4
  call void @gimp_transform_get_flip_axis(i32 %14, i32 %15, i32 %16, i32 %17, i32 %18, i32 1, double* %axis)
  %19 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %20 = bitcast %struct._GimpDrawable* %19 to %struct._GTypeInstance*
  %call13 = call i64 @gimp_viewable_get_type() #4
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call13)
  %21 = bitcast %struct._GTypeInstance* %call14 to %struct._GimpViewable*
  %call15 = call %struct._GimpContainer* @gimp_viewable_get_children(%struct._GimpViewable* %21)
  %tobool16 = icmp ne %struct._GimpContainer* %call15, null
  br i1 %tobool16, label %if.else, label %land.lhs.true.17

land.lhs.true.17:                                 ; preds = %if.then.12
  %22 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %23 = bitcast %struct._GimpDrawable* %22 to %struct._GTypeInstance*
  %call18 = call i64 @gimp_item_get_type() #4
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call18)
  %24 = bitcast %struct._GTypeInstance* %call19 to %struct._GimpItem*
  %call20 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %24)
  %call21 = call %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage* %call20)
  %call22 = call i32 @gimp_channel_is_empty(%struct._GimpChannel* %call21)
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %if.else, label %if.then.24

if.then.24:                                       ; preds = %land.lhs.true.17
  %25 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %26 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %27 = load i32, i32* %flip_type, align 4
  %28 = load double, double* %axis, align 8
  %call25 = call %struct._GimpDrawable* @gimp_drawable_transform_flip(%struct._GimpDrawable* %25, %struct._GimpContext* %26, i32 %27, double %28, i32 0)
  %tobool26 = icmp ne %struct._GimpDrawable* %call25, null
  br i1 %tobool26, label %if.end, label %if.then.27

if.then.27:                                       ; preds = %if.then.24
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.27, %if.then.24
  br label %if.end.30

if.else:                                          ; preds = %land.lhs.true.17, %if.then.12
  %29 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %30 = bitcast %struct._GimpDrawable* %29 to %struct._GTypeInstance*
  %call28 = call i64 @gimp_item_get_type() #4
  %call29 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call28)
  %31 = bitcast %struct._GTypeInstance* %call29 to %struct._GimpItem*
  %32 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %33 = load i32, i32* %flip_type, align 4
  %34 = load double, double* %axis, align 8
  call void @gimp_item_flip(%struct._GimpItem* %31, %struct._GimpContext* %32, i32 %33, double %34, i32 0)
  br label %if.end.30

if.end.30:                                        ; preds = %if.else, %if.end
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30, %land.lhs.true, %if.then
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %entry
  %35 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %36 = load i32, i32* %success, align 4
  %37 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool33 = icmp ne %struct._GError** %37, null
  br i1 %tobool33, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.32
  %38 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %39 = load %struct._GError*, %struct._GError** %38, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %39, %cond.true ], [ null, %cond.false ]
  %call34 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %35, i32 %36, %struct._GError* %cond)
  store %struct._GValueArray* %call34, %struct._GValueArray** %return_vals, align 8
  %40 = load i32, i32* %success, align 4
  %tobool35 = icmp ne i32 %40, 0
  br i1 %tobool35, label %if.then.36, label %if.end.39

if.then.36:                                       ; preds = %cond.end
  %41 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values37 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %41, i32 0, i32 1
  %42 = load %struct._GValue*, %struct._GValue** %values37, align 8
  %arrayidx38 = getelementptr inbounds %struct._GValue, %struct._GValue* %42, i64 1
  %43 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_value_set_drawable(%struct._GValue* %arrayidx38, %struct._GimpDrawable* %43)
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.36, %cond.end
  %44 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %44
}

declare void @gimp_object_set_static_name(%struct._GimpObject*, i8*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #2

declare void @gimp_procedure_set_static_strings(%struct._GimpProcedure*, i8*, i8*, i8*, i8*, i8*, i8*, i8*) #1

declare void @gimp_procedure_add_argument(%struct._GimpProcedure*, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @gimp_param_spec_drawable_id(i8*, i8*, i8*, %struct._Gimp*, i32, i32) #1

declare %struct._GParamSpec* @gimp_param_spec_enum(i8*, i8*, i8*, i64, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_orientation_type_get_type() #2

declare void @gimp_param_spec_enum_exclude_value(%struct._GimpParamSpecEnum*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_param_enum_get_type() #2

declare void @gimp_procedure_add_return_value(%struct._GimpProcedure*, %struct._GParamSpec*) #1

declare void @gimp_pdb_register_procedure(%struct._GimpPDB*, %struct._GimpProcedure*) #1

declare void @g_object_unref(i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @perspective_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %return_vals = alloca %struct._GValueArray*, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  %interpolation = alloca i32, align 4
  %x0 = alloca double, align 8
  %y0 = alloca double, align 8
  %x1 = alloca double, align 8
  %y1 = alloca double, align 8
  %x2 = alloca double, align 8
  %y2 = alloca double, align 8
  %x3 = alloca double, align 8
  %y3 = alloca double, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %matrix = alloca %struct._GimpMatrix3, align 8
  %interpolation_type = alloca i32, align 4
  %off_x = alloca i32, align 4
  %off_y = alloca i32, align 4
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
  %call = call %struct._GimpDrawable* @gimp_value_get_drawable(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpDrawable* %call, %struct._GimpDrawable** %drawable, align 8
  %3 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %3, i32 0, i32 1
  %4 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %4, i64 1
  %call3 = call i32 @g_value_get_boolean(%struct._GValue* %arrayidx2)
  store i32 %call3, i32* %interpolation, align 4
  %5 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values4 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %5, i32 0, i32 1
  %6 = load %struct._GValue*, %struct._GValue** %values4, align 8
  %arrayidx5 = getelementptr inbounds %struct._GValue, %struct._GValue* %6, i64 2
  %call6 = call double @g_value_get_double(%struct._GValue* %arrayidx5)
  store double %call6, double* %x0, align 8
  %7 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values7 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %7, i32 0, i32 1
  %8 = load %struct._GValue*, %struct._GValue** %values7, align 8
  %arrayidx8 = getelementptr inbounds %struct._GValue, %struct._GValue* %8, i64 3
  %call9 = call double @g_value_get_double(%struct._GValue* %arrayidx8)
  store double %call9, double* %y0, align 8
  %9 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values10 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %9, i32 0, i32 1
  %10 = load %struct._GValue*, %struct._GValue** %values10, align 8
  %arrayidx11 = getelementptr inbounds %struct._GValue, %struct._GValue* %10, i64 4
  %call12 = call double @g_value_get_double(%struct._GValue* %arrayidx11)
  store double %call12, double* %x1, align 8
  %11 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values13 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %11, i32 0, i32 1
  %12 = load %struct._GValue*, %struct._GValue** %values13, align 8
  %arrayidx14 = getelementptr inbounds %struct._GValue, %struct._GValue* %12, i64 5
  %call15 = call double @g_value_get_double(%struct._GValue* %arrayidx14)
  store double %call15, double* %y1, align 8
  %13 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values16 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %13, i32 0, i32 1
  %14 = load %struct._GValue*, %struct._GValue** %values16, align 8
  %arrayidx17 = getelementptr inbounds %struct._GValue, %struct._GValue* %14, i64 6
  %call18 = call double @g_value_get_double(%struct._GValue* %arrayidx17)
  store double %call18, double* %x2, align 8
  %15 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values19 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %15, i32 0, i32 1
  %16 = load %struct._GValue*, %struct._GValue** %values19, align 8
  %arrayidx20 = getelementptr inbounds %struct._GValue, %struct._GValue* %16, i64 7
  %call21 = call double @g_value_get_double(%struct._GValue* %arrayidx20)
  store double %call21, double* %y2, align 8
  %17 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values22 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %17, i32 0, i32 1
  %18 = load %struct._GValue*, %struct._GValue** %values22, align 8
  %arrayidx23 = getelementptr inbounds %struct._GValue, %struct._GValue* %18, i64 8
  %call24 = call double @g_value_get_double(%struct._GValue* %arrayidx23)
  store double %call24, double* %x3, align 8
  %19 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values25 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %19, i32 0, i32 1
  %20 = load %struct._GValue*, %struct._GValue** %values25, align 8
  %arrayidx26 = getelementptr inbounds %struct._GValue, %struct._GValue* %20, i64 9
  %call27 = call double @g_value_get_double(%struct._GValue* %arrayidx26)
  store double %call27, double* %y3, align 8
  %21 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %21, 0
  br i1 %tobool, label %if.then, label %if.end.71

if.then:                                          ; preds = %entry
  %22 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %23 = bitcast %struct._GimpDrawable* %22 to %struct._GTypeInstance*
  %call28 = call i64 @gimp_item_get_type() #4
  %call29 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call28)
  %24 = bitcast %struct._GTypeInstance* %call29 to %struct._GimpItem*
  %25 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call30 = call i32 @gimp_pdb_item_is_attached(%struct._GimpItem* %24, %struct._GimpImage* null, i32 1, %struct._GError** %25)
  store i32 %call30, i32* %success, align 4
  %26 = load i32, i32* %success, align 4
  %tobool31 = icmp ne i32 %26, 0
  br i1 %tobool31, label %land.lhs.true, label %if.end.70

land.lhs.true:                                    ; preds = %if.then
  %27 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %28 = bitcast %struct._GimpDrawable* %27 to %struct._GTypeInstance*
  %call32 = call i64 @gimp_item_get_type() #4
  %call33 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call32)
  %29 = bitcast %struct._GTypeInstance* %call33 to %struct._GimpItem*
  %call34 = call i32 @gimp_item_mask_intersect(%struct._GimpItem* %29, i32* %x, i32* %y, i32* %width, i32* %height)
  %tobool35 = icmp ne i32 %call34, 0
  br i1 %tobool35, label %if.then.36, label %if.end.70

if.then.36:                                       ; preds = %land.lhs.true
  store i32 0, i32* %interpolation_type, align 4
  %30 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %31 = bitcast %struct._GimpDrawable* %30 to %struct._GTypeInstance*
  %call37 = call i64 @gimp_item_get_type() #4
  %call38 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 %call37)
  %32 = bitcast %struct._GTypeInstance* %call38 to %struct._GimpItem*
  call void @gimp_item_get_offset(%struct._GimpItem* %32, i32* %off_x, i32* %off_y)
  %33 = load i32, i32* %off_x, align 4
  %34 = load i32, i32* %x, align 4
  %add = add nsw i32 %34, %33
  store i32 %add, i32* %x, align 4
  %35 = load i32, i32* %off_y, align 4
  %36 = load i32, i32* %y, align 4
  %add39 = add nsw i32 %36, %35
  store i32 %add39, i32* %y, align 4
  call void @gimp_matrix3_identity(%struct._GimpMatrix3* %matrix)
  %37 = load i32, i32* %x, align 4
  %38 = load i32, i32* %y, align 4
  %39 = load i32, i32* %width, align 4
  %40 = load i32, i32* %height, align 4
  %41 = load double, double* %x0, align 8
  %42 = load double, double* %y0, align 8
  %43 = load double, double* %x1, align 8
  %44 = load double, double* %y1, align 8
  %45 = load double, double* %x2, align 8
  %46 = load double, double* %y2, align 8
  %47 = load double, double* %x3, align 8
  %48 = load double, double* %y3, align 8
  call void @gimp_transform_matrix_perspective(%struct._GimpMatrix3* %matrix, i32 %37, i32 %38, i32 %39, i32 %40, double %41, double %42, double %43, double %44, double %45, double %46, double %47, double %48)
  %49 = load i32, i32* %interpolation, align 4
  %tobool40 = icmp ne i32 %49, 0
  br i1 %tobool40, label %if.then.41, label %if.end

if.then.41:                                       ; preds = %if.then.36
  %50 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %config = getelementptr inbounds %struct._Gimp, %struct._Gimp* %50, i32 0, i32 1
  %51 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config, align 8
  %interpolation_type42 = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %51, i32 0, i32 2
  %52 = load i32, i32* %interpolation_type42, align 4
  store i32 %52, i32* %interpolation_type, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.41, %if.then.36
  %53 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %tobool43 = icmp ne %struct._GimpProgress* %53, null
  br i1 %tobool43, label %if.then.44, label %if.end.47

if.then.44:                                       ; preds = %if.end
  %54 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %call45 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.77, i32 0, i32 0)) #5
  %call46 = call %struct._GimpProgress* @gimp_progress_start(%struct._GimpProgress* %54, i8* %call45, i32 0)
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.44, %if.end
  %55 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %56 = bitcast %struct._GimpDrawable* %55 to %struct._GTypeInstance*
  %call48 = call i64 @gimp_viewable_get_type() #4
  %call49 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %56, i64 %call48)
  %57 = bitcast %struct._GTypeInstance* %call49 to %struct._GimpViewable*
  %call50 = call %struct._GimpContainer* @gimp_viewable_get_children(%struct._GimpViewable* %57)
  %tobool51 = icmp ne %struct._GimpContainer* %call50, null
  br i1 %tobool51, label %if.else, label %land.lhs.true.52

land.lhs.true.52:                                 ; preds = %if.end.47
  %58 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %59 = bitcast %struct._GimpDrawable* %58 to %struct._GTypeInstance*
  %call53 = call i64 @gimp_item_get_type() #4
  %call54 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %59, i64 %call53)
  %60 = bitcast %struct._GTypeInstance* %call54 to %struct._GimpItem*
  %call55 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %60)
  %call56 = call %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage* %call55)
  %call57 = call i32 @gimp_channel_is_empty(%struct._GimpChannel* %call56)
  %tobool58 = icmp ne i32 %call57, 0
  br i1 %tobool58, label %if.else, label %if.then.59

if.then.59:                                       ; preds = %land.lhs.true.52
  %61 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %62 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %63 = load i32, i32* %interpolation_type, align 4
  %64 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %call60 = call %struct._GimpDrawable* @gimp_drawable_transform_affine(%struct._GimpDrawable* %61, %struct._GimpContext* %62, %struct._GimpMatrix3* %matrix, i32 0, i32 %63, i32 3, i32 0, %struct._GimpProgress* %64)
  %tobool61 = icmp ne %struct._GimpDrawable* %call60, null
  br i1 %tobool61, label %if.end.63, label %if.then.62

if.then.62:                                       ; preds = %if.then.59
  store i32 0, i32* %success, align 4
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.62, %if.then.59
  br label %if.end.66

if.else:                                          ; preds = %land.lhs.true.52, %if.end.47
  %65 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %66 = bitcast %struct._GimpDrawable* %65 to %struct._GTypeInstance*
  %call64 = call i64 @gimp_item_get_type() #4
  %call65 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %66, i64 %call64)
  %67 = bitcast %struct._GTypeInstance* %call65 to %struct._GimpItem*
  %68 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %69 = load i32, i32* %interpolation, align 4
  %70 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  call void @gimp_item_transform(%struct._GimpItem* %67, %struct._GimpContext* %68, %struct._GimpMatrix3* %matrix, i32 0, i32 %69, i32 3, i32 0, %struct._GimpProgress* %70)
  br label %if.end.66

if.end.66:                                        ; preds = %if.else, %if.end.63
  %71 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %tobool67 = icmp ne %struct._GimpProgress* %71, null
  br i1 %tobool67, label %if.then.68, label %if.end.69

if.then.68:                                       ; preds = %if.end.66
  %72 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  call void @gimp_progress_end(%struct._GimpProgress* %72)
  br label %if.end.69

if.end.69:                                        ; preds = %if.then.68, %if.end.66
  br label %if.end.70

if.end.70:                                        ; preds = %if.end.69, %land.lhs.true, %if.then
  br label %if.end.71

if.end.71:                                        ; preds = %if.end.70, %entry
  %73 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %74 = load i32, i32* %success, align 4
  %75 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool72 = icmp ne %struct._GError** %75, null
  br i1 %tobool72, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.71
  %76 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %77 = load %struct._GError*, %struct._GError** %76, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.71
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %77, %cond.true ], [ null, %cond.false ]
  %call73 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %73, i32 %74, %struct._GError* %cond)
  store %struct._GValueArray* %call73, %struct._GValueArray** %return_vals, align 8
  %78 = load i32, i32* %success, align 4
  %tobool74 = icmp ne i32 %78, 0
  br i1 %tobool74, label %if.then.75, label %if.end.78

if.then.75:                                       ; preds = %cond.end
  %79 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values76 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %79, i32 0, i32 1
  %80 = load %struct._GValue*, %struct._GValue** %values76, align 8
  %arrayidx77 = getelementptr inbounds %struct._GValue, %struct._GValue* %80, i64 1
  %81 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_value_set_drawable(%struct._GValue* %arrayidx77, %struct._GimpDrawable* %81)
  br label %if.end.78

if.end.78:                                        ; preds = %if.then.75, %cond.end
  %82 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %82
}

declare %struct._GParamSpec* @g_param_spec_boolean(i8*, i8*, i8*, i32, i32) #1

declare %struct._GParamSpec* @g_param_spec_double(i8*, i8*, i8*, double, double, double, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @rotate_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %return_vals = alloca %struct._GValueArray*, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  %interpolation = alloca i32, align 4
  %angle = alloca double, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %matrix = alloca %struct._GimpMatrix3, align 8
  %interpolation_type = alloca i32, align 4
  %off_x = alloca i32, align 4
  %off_y = alloca i32, align 4
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
  %call = call %struct._GimpDrawable* @gimp_value_get_drawable(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpDrawable* %call, %struct._GimpDrawable** %drawable, align 8
  %3 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %3, i32 0, i32 1
  %4 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %4, i64 1
  %call3 = call i32 @g_value_get_boolean(%struct._GValue* %arrayidx2)
  store i32 %call3, i32* %interpolation, align 4
  %5 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values4 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %5, i32 0, i32 1
  %6 = load %struct._GValue*, %struct._GValue** %values4, align 8
  %arrayidx5 = getelementptr inbounds %struct._GValue, %struct._GValue* %6, i64 2
  %call6 = call double @g_value_get_double(%struct._GValue* %arrayidx5)
  store double %call6, double* %angle, align 8
  %7 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then, label %if.end.50

if.then:                                          ; preds = %entry
  %8 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %9 = bitcast %struct._GimpDrawable* %8 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_item_get_type() #4
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call7)
  %10 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpItem*
  %11 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call9 = call i32 @gimp_pdb_item_is_attached(%struct._GimpItem* %10, %struct._GimpImage* null, i32 1, %struct._GError** %11)
  store i32 %call9, i32* %success, align 4
  %12 = load i32, i32* %success, align 4
  %tobool10 = icmp ne i32 %12, 0
  br i1 %tobool10, label %land.lhs.true, label %if.end.49

land.lhs.true:                                    ; preds = %if.then
  %13 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %14 = bitcast %struct._GimpDrawable* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_item_get_type() #4
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpItem*
  %call13 = call i32 @gimp_item_mask_intersect(%struct._GimpItem* %15, i32* %x, i32* %y, i32* %width, i32* %height)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then.15, label %if.end.49

if.then.15:                                       ; preds = %land.lhs.true
  store i32 0, i32* %interpolation_type, align 4
  %16 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %17 = bitcast %struct._GimpDrawable* %16 to %struct._GTypeInstance*
  %call16 = call i64 @gimp_item_get_type() #4
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call16)
  %18 = bitcast %struct._GTypeInstance* %call17 to %struct._GimpItem*
  call void @gimp_item_get_offset(%struct._GimpItem* %18, i32* %off_x, i32* %off_y)
  %19 = load i32, i32* %off_x, align 4
  %20 = load i32, i32* %x, align 4
  %add = add nsw i32 %20, %19
  store i32 %add, i32* %x, align 4
  %21 = load i32, i32* %off_y, align 4
  %22 = load i32, i32* %y, align 4
  %add18 = add nsw i32 %22, %21
  store i32 %add18, i32* %y, align 4
  call void @gimp_matrix3_identity(%struct._GimpMatrix3* %matrix)
  %23 = load i32, i32* %x, align 4
  %24 = load i32, i32* %y, align 4
  %25 = load i32, i32* %width, align 4
  %26 = load i32, i32* %height, align 4
  %27 = load double, double* %angle, align 8
  call void @gimp_transform_matrix_rotate_rect(%struct._GimpMatrix3* %matrix, i32 %23, i32 %24, i32 %25, i32 %26, double %27)
  %28 = load i32, i32* %interpolation, align 4
  %tobool19 = icmp ne i32 %28, 0
  br i1 %tobool19, label %if.then.20, label %if.end

if.then.20:                                       ; preds = %if.then.15
  %29 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %config = getelementptr inbounds %struct._Gimp, %struct._Gimp* %29, i32 0, i32 1
  %30 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config, align 8
  %interpolation_type21 = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %30, i32 0, i32 2
  %31 = load i32, i32* %interpolation_type21, align 4
  store i32 %31, i32* %interpolation_type, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.20, %if.then.15
  %32 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %tobool22 = icmp ne %struct._GimpProgress* %32, null
  br i1 %tobool22, label %if.then.23, label %if.end.26

if.then.23:                                       ; preds = %if.end
  %33 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %call24 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.78, i32 0, i32 0)) #5
  %call25 = call %struct._GimpProgress* @gimp_progress_start(%struct._GimpProgress* %33, i8* %call24, i32 0)
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.23, %if.end
  %34 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %35 = bitcast %struct._GimpDrawable* %34 to %struct._GTypeInstance*
  %call27 = call i64 @gimp_viewable_get_type() #4
  %call28 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %35, i64 %call27)
  %36 = bitcast %struct._GTypeInstance* %call28 to %struct._GimpViewable*
  %call29 = call %struct._GimpContainer* @gimp_viewable_get_children(%struct._GimpViewable* %36)
  %tobool30 = icmp ne %struct._GimpContainer* %call29, null
  br i1 %tobool30, label %if.else, label %land.lhs.true.31

land.lhs.true.31:                                 ; preds = %if.end.26
  %37 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %38 = bitcast %struct._GimpDrawable* %37 to %struct._GTypeInstance*
  %call32 = call i64 @gimp_item_get_type() #4
  %call33 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %38, i64 %call32)
  %39 = bitcast %struct._GTypeInstance* %call33 to %struct._GimpItem*
  %call34 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %39)
  %call35 = call %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage* %call34)
  %call36 = call i32 @gimp_channel_is_empty(%struct._GimpChannel* %call35)
  %tobool37 = icmp ne i32 %call36, 0
  br i1 %tobool37, label %if.else, label %if.then.38

if.then.38:                                       ; preds = %land.lhs.true.31
  %40 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %41 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %42 = load i32, i32* %interpolation_type, align 4
  %43 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %call39 = call %struct._GimpDrawable* @gimp_drawable_transform_affine(%struct._GimpDrawable* %40, %struct._GimpContext* %41, %struct._GimpMatrix3* %matrix, i32 0, i32 %42, i32 3, i32 0, %struct._GimpProgress* %43)
  %tobool40 = icmp ne %struct._GimpDrawable* %call39, null
  br i1 %tobool40, label %if.end.42, label %if.then.41

if.then.41:                                       ; preds = %if.then.38
  store i32 0, i32* %success, align 4
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.41, %if.then.38
  br label %if.end.45

if.else:                                          ; preds = %land.lhs.true.31, %if.end.26
  %44 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %45 = bitcast %struct._GimpDrawable* %44 to %struct._GTypeInstance*
  %call43 = call i64 @gimp_item_get_type() #4
  %call44 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %45, i64 %call43)
  %46 = bitcast %struct._GTypeInstance* %call44 to %struct._GimpItem*
  %47 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %48 = load i32, i32* %interpolation, align 4
  %49 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  call void @gimp_item_transform(%struct._GimpItem* %46, %struct._GimpContext* %47, %struct._GimpMatrix3* %matrix, i32 0, i32 %48, i32 3, i32 0, %struct._GimpProgress* %49)
  br label %if.end.45

if.end.45:                                        ; preds = %if.else, %if.end.42
  %50 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %tobool46 = icmp ne %struct._GimpProgress* %50, null
  br i1 %tobool46, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %if.end.45
  %51 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  call void @gimp_progress_end(%struct._GimpProgress* %51)
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.47, %if.end.45
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.48, %land.lhs.true, %if.then
  br label %if.end.50

if.end.50:                                        ; preds = %if.end.49, %entry
  %52 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %53 = load i32, i32* %success, align 4
  %54 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool51 = icmp ne %struct._GError** %54, null
  br i1 %tobool51, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.50
  %55 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %56 = load %struct._GError*, %struct._GError** %55, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.50
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %56, %cond.true ], [ null, %cond.false ]
  %call52 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %52, i32 %53, %struct._GError* %cond)
  store %struct._GValueArray* %call52, %struct._GValueArray** %return_vals, align 8
  %57 = load i32, i32* %success, align 4
  %tobool53 = icmp ne i32 %57, 0
  br i1 %tobool53, label %if.then.54, label %if.end.57

if.then.54:                                       ; preds = %cond.end
  %58 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values55 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %58, i32 0, i32 1
  %59 = load %struct._GValue*, %struct._GValue** %values55, align 8
  %arrayidx56 = getelementptr inbounds %struct._GValue, %struct._GValue* %59, i64 1
  %60 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_value_set_drawable(%struct._GValue* %arrayidx56, %struct._GimpDrawable* %60)
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.54, %cond.end
  %61 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %61
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @scale_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %return_vals = alloca %struct._GValueArray*, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  %interpolation = alloca i32, align 4
  %x0 = alloca double, align 8
  %y0 = alloca double, align 8
  %x1 = alloca double, align 8
  %y1 = alloca double, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %matrix = alloca %struct._GimpMatrix3, align 8
  %interpolation_type = alloca i32, align 4
  %off_x = alloca i32, align 4
  %off_y = alloca i32, align 4
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
  %call = call %struct._GimpDrawable* @gimp_value_get_drawable(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpDrawable* %call, %struct._GimpDrawable** %drawable, align 8
  %3 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %3, i32 0, i32 1
  %4 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %4, i64 1
  %call3 = call i32 @g_value_get_boolean(%struct._GValue* %arrayidx2)
  store i32 %call3, i32* %interpolation, align 4
  %5 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values4 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %5, i32 0, i32 1
  %6 = load %struct._GValue*, %struct._GValue** %values4, align 8
  %arrayidx5 = getelementptr inbounds %struct._GValue, %struct._GValue* %6, i64 2
  %call6 = call double @g_value_get_double(%struct._GValue* %arrayidx5)
  store double %call6, double* %x0, align 8
  %7 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values7 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %7, i32 0, i32 1
  %8 = load %struct._GValue*, %struct._GValue** %values7, align 8
  %arrayidx8 = getelementptr inbounds %struct._GValue, %struct._GValue* %8, i64 3
  %call9 = call double @g_value_get_double(%struct._GValue* %arrayidx8)
  store double %call9, double* %y0, align 8
  %9 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values10 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %9, i32 0, i32 1
  %10 = load %struct._GValue*, %struct._GValue** %values10, align 8
  %arrayidx11 = getelementptr inbounds %struct._GValue, %struct._GValue* %10, i64 4
  %call12 = call double @g_value_get_double(%struct._GValue* %arrayidx11)
  store double %call12, double* %x1, align 8
  %11 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values13 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %11, i32 0, i32 1
  %12 = load %struct._GValue*, %struct._GValue** %values13, align 8
  %arrayidx14 = getelementptr inbounds %struct._GValue, %struct._GValue* %12, i64 5
  %call15 = call double @g_value_get_double(%struct._GValue* %arrayidx14)
  store double %call15, double* %y1, align 8
  %13 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %13, 0
  br i1 %tobool, label %if.then, label %if.end.63

if.then:                                          ; preds = %entry
  %14 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %15 = bitcast %struct._GimpDrawable* %14 to %struct._GTypeInstance*
  %call16 = call i64 @gimp_item_get_type() #4
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call16)
  %16 = bitcast %struct._GTypeInstance* %call17 to %struct._GimpItem*
  %17 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call18 = call i32 @gimp_pdb_item_is_attached(%struct._GimpItem* %16, %struct._GimpImage* null, i32 1, %struct._GError** %17)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %if.then
  %18 = load double, double* %x0, align 8
  %19 = load double, double* %x1, align 8
  %cmp = fcmp olt double %18, %19
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %20 = load double, double* %y0, align 8
  %21 = load double, double* %y1, align 8
  %cmp20 = fcmp olt double %20, %21
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %if.then
  %22 = phi i1 [ false, %land.lhs.true ], [ false, %if.then ], [ %cmp20, %land.rhs ]
  %land.ext = zext i1 %22 to i32
  store i32 %land.ext, i32* %success, align 4
  %23 = load i32, i32* %success, align 4
  %tobool21 = icmp ne i32 %23, 0
  br i1 %tobool21, label %land.lhs.true.22, label %if.end.62

land.lhs.true.22:                                 ; preds = %land.end
  %24 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %25 = bitcast %struct._GimpDrawable* %24 to %struct._GTypeInstance*
  %call23 = call i64 @gimp_item_get_type() #4
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call23)
  %26 = bitcast %struct._GTypeInstance* %call24 to %struct._GimpItem*
  %call25 = call i32 @gimp_item_mask_intersect(%struct._GimpItem* %26, i32* %x, i32* %y, i32* %width, i32* %height)
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %if.then.27, label %if.end.62

if.then.27:                                       ; preds = %land.lhs.true.22
  store i32 0, i32* %interpolation_type, align 4
  %27 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %28 = bitcast %struct._GimpDrawable* %27 to %struct._GTypeInstance*
  %call28 = call i64 @gimp_item_get_type() #4
  %call29 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call28)
  %29 = bitcast %struct._GTypeInstance* %call29 to %struct._GimpItem*
  call void @gimp_item_get_offset(%struct._GimpItem* %29, i32* %off_x, i32* %off_y)
  %30 = load i32, i32* %off_x, align 4
  %31 = load i32, i32* %x, align 4
  %add = add nsw i32 %31, %30
  store i32 %add, i32* %x, align 4
  %32 = load i32, i32* %off_y, align 4
  %33 = load i32, i32* %y, align 4
  %add30 = add nsw i32 %33, %32
  store i32 %add30, i32* %y, align 4
  call void @gimp_matrix3_identity(%struct._GimpMatrix3* %matrix)
  %34 = load i32, i32* %x, align 4
  %35 = load i32, i32* %y, align 4
  %36 = load i32, i32* %width, align 4
  %37 = load i32, i32* %height, align 4
  %38 = load double, double* %x0, align 8
  %39 = load double, double* %y0, align 8
  %40 = load double, double* %x1, align 8
  %41 = load double, double* %x0, align 8
  %sub = fsub double %40, %41
  %42 = load double, double* %y1, align 8
  %43 = load double, double* %y0, align 8
  %sub31 = fsub double %42, %43
  call void @gimp_transform_matrix_scale(%struct._GimpMatrix3* %matrix, i32 %34, i32 %35, i32 %36, i32 %37, double %38, double %39, double %sub, double %sub31)
  %44 = load i32, i32* %interpolation, align 4
  %tobool32 = icmp ne i32 %44, 0
  br i1 %tobool32, label %if.then.33, label %if.end

if.then.33:                                       ; preds = %if.then.27
  %45 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %config = getelementptr inbounds %struct._Gimp, %struct._Gimp* %45, i32 0, i32 1
  %46 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config, align 8
  %interpolation_type34 = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %46, i32 0, i32 2
  %47 = load i32, i32* %interpolation_type34, align 4
  store i32 %47, i32* %interpolation_type, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.33, %if.then.27
  %48 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %tobool35 = icmp ne %struct._GimpProgress* %48, null
  br i1 %tobool35, label %if.then.36, label %if.end.39

if.then.36:                                       ; preds = %if.end
  %49 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %call37 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.79, i32 0, i32 0)) #5
  %call38 = call %struct._GimpProgress* @gimp_progress_start(%struct._GimpProgress* %49, i8* %call37, i32 0)
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.36, %if.end
  %50 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %51 = bitcast %struct._GimpDrawable* %50 to %struct._GTypeInstance*
  %call40 = call i64 @gimp_viewable_get_type() #4
  %call41 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %51, i64 %call40)
  %52 = bitcast %struct._GTypeInstance* %call41 to %struct._GimpViewable*
  %call42 = call %struct._GimpContainer* @gimp_viewable_get_children(%struct._GimpViewable* %52)
  %tobool43 = icmp ne %struct._GimpContainer* %call42, null
  br i1 %tobool43, label %if.else, label %land.lhs.true.44

land.lhs.true.44:                                 ; preds = %if.end.39
  %53 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %54 = bitcast %struct._GimpDrawable* %53 to %struct._GTypeInstance*
  %call45 = call i64 @gimp_item_get_type() #4
  %call46 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %54, i64 %call45)
  %55 = bitcast %struct._GTypeInstance* %call46 to %struct._GimpItem*
  %call47 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %55)
  %call48 = call %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage* %call47)
  %call49 = call i32 @gimp_channel_is_empty(%struct._GimpChannel* %call48)
  %tobool50 = icmp ne i32 %call49, 0
  br i1 %tobool50, label %if.else, label %if.then.51

if.then.51:                                       ; preds = %land.lhs.true.44
  %56 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %57 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %58 = load i32, i32* %interpolation_type, align 4
  %59 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %call52 = call %struct._GimpDrawable* @gimp_drawable_transform_affine(%struct._GimpDrawable* %56, %struct._GimpContext* %57, %struct._GimpMatrix3* %matrix, i32 0, i32 %58, i32 3, i32 0, %struct._GimpProgress* %59)
  %tobool53 = icmp ne %struct._GimpDrawable* %call52, null
  br i1 %tobool53, label %if.end.55, label %if.then.54

if.then.54:                                       ; preds = %if.then.51
  store i32 0, i32* %success, align 4
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.54, %if.then.51
  br label %if.end.58

if.else:                                          ; preds = %land.lhs.true.44, %if.end.39
  %60 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %61 = bitcast %struct._GimpDrawable* %60 to %struct._GTypeInstance*
  %call56 = call i64 @gimp_item_get_type() #4
  %call57 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %61, i64 %call56)
  %62 = bitcast %struct._GTypeInstance* %call57 to %struct._GimpItem*
  %63 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %64 = load i32, i32* %interpolation, align 4
  %65 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  call void @gimp_item_transform(%struct._GimpItem* %62, %struct._GimpContext* %63, %struct._GimpMatrix3* %matrix, i32 0, i32 %64, i32 3, i32 0, %struct._GimpProgress* %65)
  br label %if.end.58

if.end.58:                                        ; preds = %if.else, %if.end.55
  %66 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %tobool59 = icmp ne %struct._GimpProgress* %66, null
  br i1 %tobool59, label %if.then.60, label %if.end.61

if.then.60:                                       ; preds = %if.end.58
  %67 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  call void @gimp_progress_end(%struct._GimpProgress* %67)
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.60, %if.end.58
  br label %if.end.62

if.end.62:                                        ; preds = %if.end.61, %land.lhs.true.22, %land.end
  br label %if.end.63

if.end.63:                                        ; preds = %if.end.62, %entry
  %68 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %69 = load i32, i32* %success, align 4
  %70 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool64 = icmp ne %struct._GError** %70, null
  br i1 %tobool64, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.63
  %71 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %72 = load %struct._GError*, %struct._GError** %71, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.63
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %72, %cond.true ], [ null, %cond.false ]
  %call65 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %68, i32 %69, %struct._GError* %cond)
  store %struct._GValueArray* %call65, %struct._GValueArray** %return_vals, align 8
  %73 = load i32, i32* %success, align 4
  %tobool66 = icmp ne i32 %73, 0
  br i1 %tobool66, label %if.then.67, label %if.end.70

if.then.67:                                       ; preds = %cond.end
  %74 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values68 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %74, i32 0, i32 1
  %75 = load %struct._GValue*, %struct._GValue** %values68, align 8
  %arrayidx69 = getelementptr inbounds %struct._GValue, %struct._GValue* %75, i64 1
  %76 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_value_set_drawable(%struct._GValue* %arrayidx69, %struct._GimpDrawable* %76)
  br label %if.end.70

if.end.70:                                        ; preds = %if.then.67, %cond.end
  %77 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %77
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @shear_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %return_vals = alloca %struct._GValueArray*, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  %interpolation = alloca i32, align 4
  %shear_type = alloca i32, align 4
  %magnitude = alloca double, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %matrix = alloca %struct._GimpMatrix3, align 8
  %interpolation_type = alloca i32, align 4
  %off_x = alloca i32, align 4
  %off_y = alloca i32, align 4
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
  %call = call %struct._GimpDrawable* @gimp_value_get_drawable(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpDrawable* %call, %struct._GimpDrawable** %drawable, align 8
  %3 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %3, i32 0, i32 1
  %4 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %4, i64 1
  %call3 = call i32 @g_value_get_boolean(%struct._GValue* %arrayidx2)
  store i32 %call3, i32* %interpolation, align 4
  %5 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values4 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %5, i32 0, i32 1
  %6 = load %struct._GValue*, %struct._GValue** %values4, align 8
  %arrayidx5 = getelementptr inbounds %struct._GValue, %struct._GValue* %6, i64 2
  %call6 = call i32 @g_value_get_enum(%struct._GValue* %arrayidx5)
  store i32 %call6, i32* %shear_type, align 4
  %7 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values7 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %7, i32 0, i32 1
  %8 = load %struct._GValue*, %struct._GValue** %values7, align 8
  %arrayidx8 = getelementptr inbounds %struct._GValue, %struct._GValue* %8, i64 3
  %call9 = call double @g_value_get_double(%struct._GValue* %arrayidx8)
  store double %call9, double* %magnitude, align 8
  %9 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %if.then, label %if.end.53

if.then:                                          ; preds = %entry
  %10 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %11 = bitcast %struct._GimpDrawable* %10 to %struct._GTypeInstance*
  %call10 = call i64 @gimp_item_get_type() #4
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call10)
  %12 = bitcast %struct._GTypeInstance* %call11 to %struct._GimpItem*
  %13 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call12 = call i32 @gimp_pdb_item_is_attached(%struct._GimpItem* %12, %struct._GimpImage* null, i32 1, %struct._GError** %13)
  store i32 %call12, i32* %success, align 4
  %14 = load i32, i32* %success, align 4
  %tobool13 = icmp ne i32 %14, 0
  br i1 %tobool13, label %land.lhs.true, label %if.end.52

land.lhs.true:                                    ; preds = %if.then
  %15 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %16 = bitcast %struct._GimpDrawable* %15 to %struct._GTypeInstance*
  %call14 = call i64 @gimp_item_get_type() #4
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call14)
  %17 = bitcast %struct._GTypeInstance* %call15 to %struct._GimpItem*
  %call16 = call i32 @gimp_item_mask_intersect(%struct._GimpItem* %17, i32* %x, i32* %y, i32* %width, i32* %height)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.then.18, label %if.end.52

if.then.18:                                       ; preds = %land.lhs.true
  store i32 0, i32* %interpolation_type, align 4
  %18 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %19 = bitcast %struct._GimpDrawable* %18 to %struct._GTypeInstance*
  %call19 = call i64 @gimp_item_get_type() #4
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call19)
  %20 = bitcast %struct._GTypeInstance* %call20 to %struct._GimpItem*
  call void @gimp_item_get_offset(%struct._GimpItem* %20, i32* %off_x, i32* %off_y)
  %21 = load i32, i32* %off_x, align 4
  %22 = load i32, i32* %x, align 4
  %add = add nsw i32 %22, %21
  store i32 %add, i32* %x, align 4
  %23 = load i32, i32* %off_y, align 4
  %24 = load i32, i32* %y, align 4
  %add21 = add nsw i32 %24, %23
  store i32 %add21, i32* %y, align 4
  call void @gimp_matrix3_identity(%struct._GimpMatrix3* %matrix)
  %25 = load i32, i32* %x, align 4
  %26 = load i32, i32* %y, align 4
  %27 = load i32, i32* %width, align 4
  %28 = load i32, i32* %height, align 4
  %29 = load i32, i32* %shear_type, align 4
  %30 = load double, double* %magnitude, align 8
  call void @gimp_transform_matrix_shear(%struct._GimpMatrix3* %matrix, i32 %25, i32 %26, i32 %27, i32 %28, i32 %29, double %30)
  %31 = load i32, i32* %interpolation, align 4
  %tobool22 = icmp ne i32 %31, 0
  br i1 %tobool22, label %if.then.23, label %if.end

if.then.23:                                       ; preds = %if.then.18
  %32 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %config = getelementptr inbounds %struct._Gimp, %struct._Gimp* %32, i32 0, i32 1
  %33 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config, align 8
  %interpolation_type24 = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %33, i32 0, i32 2
  %34 = load i32, i32* %interpolation_type24, align 4
  store i32 %34, i32* %interpolation_type, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.23, %if.then.18
  %35 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %tobool25 = icmp ne %struct._GimpProgress* %35, null
  br i1 %tobool25, label %if.then.26, label %if.end.29

if.then.26:                                       ; preds = %if.end
  %36 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %call27 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.80, i32 0, i32 0)) #5
  %call28 = call %struct._GimpProgress* @gimp_progress_start(%struct._GimpProgress* %36, i8* %call27, i32 0)
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.26, %if.end
  %37 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %38 = bitcast %struct._GimpDrawable* %37 to %struct._GTypeInstance*
  %call30 = call i64 @gimp_viewable_get_type() #4
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %38, i64 %call30)
  %39 = bitcast %struct._GTypeInstance* %call31 to %struct._GimpViewable*
  %call32 = call %struct._GimpContainer* @gimp_viewable_get_children(%struct._GimpViewable* %39)
  %tobool33 = icmp ne %struct._GimpContainer* %call32, null
  br i1 %tobool33, label %if.else, label %land.lhs.true.34

land.lhs.true.34:                                 ; preds = %if.end.29
  %40 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %41 = bitcast %struct._GimpDrawable* %40 to %struct._GTypeInstance*
  %call35 = call i64 @gimp_item_get_type() #4
  %call36 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %41, i64 %call35)
  %42 = bitcast %struct._GTypeInstance* %call36 to %struct._GimpItem*
  %call37 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %42)
  %call38 = call %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage* %call37)
  %call39 = call i32 @gimp_channel_is_empty(%struct._GimpChannel* %call38)
  %tobool40 = icmp ne i32 %call39, 0
  br i1 %tobool40, label %if.else, label %if.then.41

if.then.41:                                       ; preds = %land.lhs.true.34
  %43 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %44 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %45 = load i32, i32* %interpolation_type, align 4
  %46 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %call42 = call %struct._GimpDrawable* @gimp_drawable_transform_affine(%struct._GimpDrawable* %43, %struct._GimpContext* %44, %struct._GimpMatrix3* %matrix, i32 0, i32 %45, i32 3, i32 0, %struct._GimpProgress* %46)
  %tobool43 = icmp ne %struct._GimpDrawable* %call42, null
  br i1 %tobool43, label %if.end.45, label %if.then.44

if.then.44:                                       ; preds = %if.then.41
  store i32 0, i32* %success, align 4
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.44, %if.then.41
  br label %if.end.48

if.else:                                          ; preds = %land.lhs.true.34, %if.end.29
  %47 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %48 = bitcast %struct._GimpDrawable* %47 to %struct._GTypeInstance*
  %call46 = call i64 @gimp_item_get_type() #4
  %call47 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %48, i64 %call46)
  %49 = bitcast %struct._GTypeInstance* %call47 to %struct._GimpItem*
  %50 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %51 = load i32, i32* %interpolation, align 4
  %52 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  call void @gimp_item_transform(%struct._GimpItem* %49, %struct._GimpContext* %50, %struct._GimpMatrix3* %matrix, i32 0, i32 %51, i32 3, i32 0, %struct._GimpProgress* %52)
  br label %if.end.48

if.end.48:                                        ; preds = %if.else, %if.end.45
  %53 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %tobool49 = icmp ne %struct._GimpProgress* %53, null
  br i1 %tobool49, label %if.then.50, label %if.end.51

if.then.50:                                       ; preds = %if.end.48
  %54 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  call void @gimp_progress_end(%struct._GimpProgress* %54)
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.50, %if.end.48
  br label %if.end.52

if.end.52:                                        ; preds = %if.end.51, %land.lhs.true, %if.then
  br label %if.end.53

if.end.53:                                        ; preds = %if.end.52, %entry
  %55 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %56 = load i32, i32* %success, align 4
  %57 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool54 = icmp ne %struct._GError** %57, null
  br i1 %tobool54, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.53
  %58 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %59 = load %struct._GError*, %struct._GError** %58, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.53
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %59, %cond.true ], [ null, %cond.false ]
  %call55 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %55, i32 %56, %struct._GError* %cond)
  store %struct._GValueArray* %call55, %struct._GValueArray** %return_vals, align 8
  %60 = load i32, i32* %success, align 4
  %tobool56 = icmp ne i32 %60, 0
  br i1 %tobool56, label %if.then.57, label %if.end.60

if.then.57:                                       ; preds = %cond.end
  %61 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values58 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %61, i32 0, i32 1
  %62 = load %struct._GValue*, %struct._GValue** %values58, align 8
  %arrayidx59 = getelementptr inbounds %struct._GValue, %struct._GValue* %62, i64 1
  %63 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_value_set_drawable(%struct._GValue* %arrayidx59, %struct._GimpDrawable* %63)
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.57, %cond.end
  %64 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %64
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @transform_2d_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %return_vals = alloca %struct._GValueArray*, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  %interpolation = alloca i32, align 4
  %source_x = alloca double, align 8
  %source_y = alloca double, align 8
  %scale_x = alloca double, align 8
  %scale_y = alloca double, align 8
  %angle = alloca double, align 8
  %dest_x = alloca double, align 8
  %dest_y = alloca double, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %matrix = alloca %struct._GimpMatrix3, align 8
  %interpolation_type = alloca i32, align 4
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
  %call = call %struct._GimpDrawable* @gimp_value_get_drawable(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpDrawable* %call, %struct._GimpDrawable** %drawable, align 8
  %3 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %3, i32 0, i32 1
  %4 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %4, i64 1
  %call3 = call i32 @g_value_get_boolean(%struct._GValue* %arrayidx2)
  store i32 %call3, i32* %interpolation, align 4
  %5 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values4 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %5, i32 0, i32 1
  %6 = load %struct._GValue*, %struct._GValue** %values4, align 8
  %arrayidx5 = getelementptr inbounds %struct._GValue, %struct._GValue* %6, i64 2
  %call6 = call double @g_value_get_double(%struct._GValue* %arrayidx5)
  store double %call6, double* %source_x, align 8
  %7 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values7 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %7, i32 0, i32 1
  %8 = load %struct._GValue*, %struct._GValue** %values7, align 8
  %arrayidx8 = getelementptr inbounds %struct._GValue, %struct._GValue* %8, i64 3
  %call9 = call double @g_value_get_double(%struct._GValue* %arrayidx8)
  store double %call9, double* %source_y, align 8
  %9 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values10 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %9, i32 0, i32 1
  %10 = load %struct._GValue*, %struct._GValue** %values10, align 8
  %arrayidx11 = getelementptr inbounds %struct._GValue, %struct._GValue* %10, i64 4
  %call12 = call double @g_value_get_double(%struct._GValue* %arrayidx11)
  store double %call12, double* %scale_x, align 8
  %11 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values13 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %11, i32 0, i32 1
  %12 = load %struct._GValue*, %struct._GValue** %values13, align 8
  %arrayidx14 = getelementptr inbounds %struct._GValue, %struct._GValue* %12, i64 5
  %call15 = call double @g_value_get_double(%struct._GValue* %arrayidx14)
  store double %call15, double* %scale_y, align 8
  %13 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values16 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %13, i32 0, i32 1
  %14 = load %struct._GValue*, %struct._GValue** %values16, align 8
  %arrayidx17 = getelementptr inbounds %struct._GValue, %struct._GValue* %14, i64 6
  %call18 = call double @g_value_get_double(%struct._GValue* %arrayidx17)
  store double %call18, double* %angle, align 8
  %15 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values19 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %15, i32 0, i32 1
  %16 = load %struct._GValue*, %struct._GValue** %values19, align 8
  %arrayidx20 = getelementptr inbounds %struct._GValue, %struct._GValue* %16, i64 7
  %call21 = call double @g_value_get_double(%struct._GValue* %arrayidx20)
  store double %call21, double* %dest_x, align 8
  %17 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values22 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %17, i32 0, i32 1
  %18 = load %struct._GValue*, %struct._GValue** %values22, align 8
  %arrayidx23 = getelementptr inbounds %struct._GValue, %struct._GValue* %18, i64 8
  %call24 = call double @g_value_get_double(%struct._GValue* %arrayidx23)
  store double %call24, double* %dest_y, align 8
  %19 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %19, 0
  br i1 %tobool, label %if.then, label %if.end.66

if.then:                                          ; preds = %entry
  %20 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %21 = bitcast %struct._GimpDrawable* %20 to %struct._GTypeInstance*
  %call25 = call i64 @gimp_item_get_type() #4
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call25)
  %22 = bitcast %struct._GTypeInstance* %call26 to %struct._GimpItem*
  %23 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call27 = call i32 @gimp_pdb_item_is_attached(%struct._GimpItem* %22, %struct._GimpImage* null, i32 1, %struct._GError** %23)
  store i32 %call27, i32* %success, align 4
  %24 = load i32, i32* %success, align 4
  %tobool28 = icmp ne i32 %24, 0
  br i1 %tobool28, label %land.lhs.true, label %if.end.65

land.lhs.true:                                    ; preds = %if.then
  %25 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %26 = bitcast %struct._GimpDrawable* %25 to %struct._GTypeInstance*
  %call29 = call i64 @gimp_item_get_type() #4
  %call30 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %26, i64 %call29)
  %27 = bitcast %struct._GTypeInstance* %call30 to %struct._GimpItem*
  %call31 = call i32 @gimp_item_mask_intersect(%struct._GimpItem* %27, i32* %x, i32* %y, i32* %width, i32* %height)
  %tobool32 = icmp ne i32 %call31, 0
  br i1 %tobool32, label %if.then.33, label %if.end.65

if.then.33:                                       ; preds = %land.lhs.true
  store i32 0, i32* %interpolation_type, align 4
  call void @gimp_matrix3_identity(%struct._GimpMatrix3* %matrix)
  %28 = load double, double* %source_x, align 8
  %sub = fsub double -0.000000e+00, %28
  %29 = load double, double* %source_y, align 8
  %sub34 = fsub double -0.000000e+00, %29
  call void @gimp_matrix3_translate(%struct._GimpMatrix3* %matrix, double %sub, double %sub34)
  %30 = load double, double* %scale_x, align 8
  %31 = load double, double* %scale_y, align 8
  call void @gimp_matrix3_scale(%struct._GimpMatrix3* %matrix, double %30, double %31)
  %32 = load double, double* %angle, align 8
  call void @gimp_matrix3_rotate(%struct._GimpMatrix3* %matrix, double %32)
  %33 = load double, double* %dest_x, align 8
  %34 = load double, double* %dest_y, align 8
  call void @gimp_matrix3_translate(%struct._GimpMatrix3* %matrix, double %33, double %34)
  %35 = load i32, i32* %interpolation, align 4
  %tobool35 = icmp ne i32 %35, 0
  br i1 %tobool35, label %if.then.36, label %if.end

if.then.36:                                       ; preds = %if.then.33
  %36 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %config = getelementptr inbounds %struct._Gimp, %struct._Gimp* %36, i32 0, i32 1
  %37 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config, align 8
  %interpolation_type37 = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %37, i32 0, i32 2
  %38 = load i32, i32* %interpolation_type37, align 4
  store i32 %38, i32* %interpolation_type, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.36, %if.then.33
  %39 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %tobool38 = icmp ne %struct._GimpProgress* %39, null
  br i1 %tobool38, label %if.then.39, label %if.end.42

if.then.39:                                       ; preds = %if.end
  %40 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %call40 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.81, i32 0, i32 0)) #5
  %call41 = call %struct._GimpProgress* @gimp_progress_start(%struct._GimpProgress* %40, i8* %call40, i32 0)
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.39, %if.end
  %41 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %42 = bitcast %struct._GimpDrawable* %41 to %struct._GTypeInstance*
  %call43 = call i64 @gimp_viewable_get_type() #4
  %call44 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %42, i64 %call43)
  %43 = bitcast %struct._GTypeInstance* %call44 to %struct._GimpViewable*
  %call45 = call %struct._GimpContainer* @gimp_viewable_get_children(%struct._GimpViewable* %43)
  %tobool46 = icmp ne %struct._GimpContainer* %call45, null
  br i1 %tobool46, label %if.else, label %land.lhs.true.47

land.lhs.true.47:                                 ; preds = %if.end.42
  %44 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %45 = bitcast %struct._GimpDrawable* %44 to %struct._GTypeInstance*
  %call48 = call i64 @gimp_item_get_type() #4
  %call49 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %45, i64 %call48)
  %46 = bitcast %struct._GTypeInstance* %call49 to %struct._GimpItem*
  %call50 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %46)
  %call51 = call %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage* %call50)
  %call52 = call i32 @gimp_channel_is_empty(%struct._GimpChannel* %call51)
  %tobool53 = icmp ne i32 %call52, 0
  br i1 %tobool53, label %if.else, label %if.then.54

if.then.54:                                       ; preds = %land.lhs.true.47
  %47 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %48 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %49 = load i32, i32* %interpolation_type, align 4
  %50 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %call55 = call %struct._GimpDrawable* @gimp_drawable_transform_affine(%struct._GimpDrawable* %47, %struct._GimpContext* %48, %struct._GimpMatrix3* %matrix, i32 0, i32 %49, i32 3, i32 0, %struct._GimpProgress* %50)
  %tobool56 = icmp ne %struct._GimpDrawable* %call55, null
  br i1 %tobool56, label %if.end.58, label %if.then.57

if.then.57:                                       ; preds = %if.then.54
  store i32 0, i32* %success, align 4
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.57, %if.then.54
  br label %if.end.61

if.else:                                          ; preds = %land.lhs.true.47, %if.end.42
  %51 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %52 = bitcast %struct._GimpDrawable* %51 to %struct._GTypeInstance*
  %call59 = call i64 @gimp_item_get_type() #4
  %call60 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %52, i64 %call59)
  %53 = bitcast %struct._GTypeInstance* %call60 to %struct._GimpItem*
  %54 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %55 = load i32, i32* %interpolation, align 4
  %56 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  call void @gimp_item_transform(%struct._GimpItem* %53, %struct._GimpContext* %54, %struct._GimpMatrix3* %matrix, i32 0, i32 %55, i32 3, i32 0, %struct._GimpProgress* %56)
  br label %if.end.61

if.end.61:                                        ; preds = %if.else, %if.end.58
  %57 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %tobool62 = icmp ne %struct._GimpProgress* %57, null
  br i1 %tobool62, label %if.then.63, label %if.end.64

if.then.63:                                       ; preds = %if.end.61
  %58 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  call void @gimp_progress_end(%struct._GimpProgress* %58)
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.63, %if.end.61
  br label %if.end.65

if.end.65:                                        ; preds = %if.end.64, %land.lhs.true, %if.then
  br label %if.end.66

if.end.66:                                        ; preds = %if.end.65, %entry
  %59 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %60 = load i32, i32* %success, align 4
  %61 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool67 = icmp ne %struct._GError** %61, null
  br i1 %tobool67, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.66
  %62 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %63 = load %struct._GError*, %struct._GError** %62, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.66
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %63, %cond.true ], [ null, %cond.false ]
  %call68 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %59, i32 %60, %struct._GError* %cond)
  store %struct._GValueArray* %call68, %struct._GValueArray** %return_vals, align 8
  %64 = load i32, i32* %success, align 4
  %tobool69 = icmp ne i32 %64, 0
  br i1 %tobool69, label %if.then.70, label %if.end.73

if.then.70:                                       ; preds = %cond.end
  %65 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values71 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %65, i32 0, i32 1
  %66 = load %struct._GValue*, %struct._GValue** %values71, align 8
  %arrayidx72 = getelementptr inbounds %struct._GValue, %struct._GValue* %66, i64 1
  %67 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_value_set_drawable(%struct._GValue* %arrayidx72, %struct._GimpDrawable* %67)
  br label %if.end.73

if.end.73:                                        ; preds = %if.then.70, %cond.end
  %68 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %68
}

declare %struct._GimpDrawable* @gimp_value_get_drawable(%struct._GValue*, %struct._Gimp*) #1

declare i32 @g_value_get_enum(%struct._GValue*) #1

declare i32 @gimp_pdb_item_is_attached(%struct._GimpItem*, %struct._GimpImage*, i32, %struct._GError**) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_item_get_type() #2

declare i32 @gimp_item_mask_intersect(%struct._GimpItem*, i32*, i32*, i32*, i32*) #1

declare void @gimp_transform_get_flip_axis(i32, i32, i32, i32, i32, i32, double*) #1

declare %struct._GimpContainer* @gimp_viewable_get_children(%struct._GimpViewable*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_viewable_get_type() #2

declare i32 @gimp_channel_is_empty(%struct._GimpChannel*) #1

declare %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage*) #1

declare %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem*) #1

declare %struct._GimpDrawable* @gimp_drawable_transform_flip(%struct._GimpDrawable*, %struct._GimpContext*, i32, double, i32) #1

declare void @gimp_item_flip(%struct._GimpItem*, %struct._GimpContext*, i32, double, i32) #1

declare %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure*, i32, %struct._GError*) #1

declare void @gimp_value_set_drawable(%struct._GValue*, %struct._GimpDrawable*) #1

declare i32 @g_value_get_boolean(%struct._GValue*) #1

declare double @g_value_get_double(%struct._GValue*) #1

declare void @gimp_item_get_offset(%struct._GimpItem*, i32*, i32*) #1

declare void @gimp_matrix3_identity(%struct._GimpMatrix3*) #1

declare void @gimp_transform_matrix_perspective(%struct._GimpMatrix3*, i32, i32, i32, i32, double, double, double, double, double, double, double, double) #1

declare %struct._GimpProgress* @gimp_progress_start(%struct._GimpProgress*, i8*, i32) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #3

declare %struct._GimpDrawable* @gimp_drawable_transform_affine(%struct._GimpDrawable*, %struct._GimpContext*, %struct._GimpMatrix3*, i32, i32, i32, i32, %struct._GimpProgress*) #1

declare void @gimp_item_transform(%struct._GimpItem*, %struct._GimpContext*, %struct._GimpMatrix3*, i32, i32, i32, i32, %struct._GimpProgress*) #1

declare void @gimp_progress_end(%struct._GimpProgress*) #1

declare void @gimp_transform_matrix_rotate_rect(%struct._GimpMatrix3*, i32, i32, i32, i32, double) #1

declare void @gimp_transform_matrix_scale(%struct._GimpMatrix3*, i32, i32, i32, i32, double, double, double, double) #1

declare void @gimp_transform_matrix_shear(%struct._GimpMatrix3*, i32, i32, i32, i32, i32, double) #1

declare void @gimp_matrix3_translate(%struct._GimpMatrix3*, double, double) #1

declare void @gimp_matrix3_scale(%struct._GimpMatrix3*, double, double) #1

declare void @gimp_matrix3_rotate(%struct._GimpMatrix3*, double) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
