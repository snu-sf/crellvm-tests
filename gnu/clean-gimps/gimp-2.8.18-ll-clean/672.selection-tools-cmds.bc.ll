; ModuleID = './app/pdb/selection-tools-cmds.bc'
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
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpDrawable = type { %struct._GimpItem, %struct._GimpDrawablePrivate* }
%struct._GimpItem = type { %struct._GimpViewable }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpDrawablePrivate = type opaque
%struct._GimpImage = type { %struct._GimpViewable, %struct._Gimp* }
%struct._GimpChannel = type opaque
%struct._GimpVector2 = type { double, double }

@.str = private unnamed_addr constant [21 x i8] c"gimp-by-color-select\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"Deprecated: Use 'gimp-image-select-color' instead.\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"gimp-image-select-color\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"drawable\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"The affected drawable\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"color\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"The color to select\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"threshold\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"Threshold in intensity levels\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"operation\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"The selection operation\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"antialias\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"Antialiasing\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"feather\00", align 1
@.str.15 = private unnamed_addr constant [30 x i8] c"Feather option for selections\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"feather-radius\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"feather radius\00", align 1
@.str.18 = private unnamed_addr constant [29 x i8] c"Radius for feather operation\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"sample-merged\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"sample merged\00", align 1
@.str.21 = private unnamed_addr constant [42 x i8] c"Use the composite image, not the drawable\00", align 1
@.str.22 = private unnamed_addr constant [26 x i8] c"gimp-by-color-select-full\00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c"David Gowers\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"2006\00", align 1
@.str.25 = private unnamed_addr constant [17 x i8] c"feather-radius-x\00", align 1
@.str.26 = private unnamed_addr constant [17 x i8] c"feather radius x\00", align 1
@.str.27 = private unnamed_addr constant [44 x i8] c"Radius for feather operation in X direction\00", align 1
@.str.28 = private unnamed_addr constant [17 x i8] c"feather-radius-y\00", align 1
@.str.29 = private unnamed_addr constant [17 x i8] c"feather radius y\00", align 1
@.str.30 = private unnamed_addr constant [44 x i8] c"Radius for feather operation in Y direction\00", align 1
@.str.31 = private unnamed_addr constant [19 x i8] c"select-transparent\00", align 1
@.str.32 = private unnamed_addr constant [19 x i8] c"select transparent\00", align 1
@.str.33 = private unnamed_addr constant [120 x i8] c"Whether to consider transparent pixels for selection. If TRUE, transparency is considered as a unique selectable color.\00", align 1
@.str.34 = private unnamed_addr constant [17 x i8] c"select-criterion\00", align 1
@.str.35 = private unnamed_addr constant [17 x i8] c"select criterion\00", align 1
@.str.36 = private unnamed_addr constant [101 x i8] c"The criterion used to determine color similarity. SELECT_CRITERION_COMPOSITE is the standard choice.\00", align 1
@.str.37 = private unnamed_addr constant [20 x i8] c"gimp-ellipse-select\00", align 1
@.str.38 = private unnamed_addr constant [53 x i8] c"Deprecated: Use 'gimp-image-select-ellipse' instead.\00", align 1
@.str.39 = private unnamed_addr constant [26 x i8] c"gimp-image-select-ellipse\00", align 1
@.str.40 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.41 = private unnamed_addr constant [10 x i8] c"The image\00", align 1
@.str.42 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.43 = private unnamed_addr constant [58 x i8] c"x coordinate of upper-left corner of ellipse bounding box\00", align 1
@.str.44 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str.45 = private unnamed_addr constant [58 x i8] c"y coordinate of upper-left corner of ellipse bounding box\00", align 1
@.str.46 = private unnamed_addr constant [6 x i8] c"width\00", align 1
@.str.47 = private unnamed_addr constant [25 x i8] c"The width of the ellipse\00", align 1
@.str.48 = private unnamed_addr constant [7 x i8] c"height\00", align 1
@.str.49 = private unnamed_addr constant [26 x i8] c"The height of the ellipse\00", align 1
@.str.50 = private unnamed_addr constant [17 x i8] c"gimp-free-select\00", align 1
@.str.51 = private unnamed_addr constant [53 x i8] c"Deprecated: Use 'gimp-image-select-polygon' instead.\00", align 1
@.str.52 = private unnamed_addr constant [26 x i8] c"gimp-image-select-polygon\00", align 1
@.str.53 = private unnamed_addr constant [9 x i8] c"num-segs\00", align 1
@.str.54 = private unnamed_addr constant [9 x i8] c"num segs\00", align 1
@.str.55 = private unnamed_addr constant [52 x i8] c"Number of points (count 1 coordinate as two points)\00", align 1
@.str.56 = private unnamed_addr constant [5 x i8] c"segs\00", align 1
@.str.57 = private unnamed_addr constant [60 x i8] c"Array of points: { p1.x, p1.y, p2.x, p2.y, ..., pn.x, pn.y}\00", align 1
@.str.58 = private unnamed_addr constant [18 x i8] c"gimp-fuzzy-select\00", align 1
@.str.59 = private unnamed_addr constant [62 x i8] c"Deprecated: Use 'gimp-image-select-contiguous-color' instead.\00", align 1
@.str.60 = private unnamed_addr constant [35 x i8] c"gimp-image-select-contiguous-color\00", align 1
@.str.61 = private unnamed_addr constant [61 x i8] c"x coordinate of initial seed fill point: (image coordinates)\00", align 1
@.str.62 = private unnamed_addr constant [61 x i8] c"y coordinate of initial seed fill point: (image coordinates)\00", align 1
@.str.63 = private unnamed_addr constant [23 x i8] c"gimp-fuzzy-select-full\00", align 1
@.str.64 = private unnamed_addr constant [17 x i8] c"gimp-rect-select\00", align 1
@.str.65 = private unnamed_addr constant [55 x i8] c"Deprecated: Use 'gimp-image-select-rectangle' instead.\00", align 1
@.str.66 = private unnamed_addr constant [28 x i8] c"gimp-image-select-rectangle\00", align 1
@.str.67 = private unnamed_addr constant [47 x i8] c"x coordinate of upper-left corner of rectangle\00", align 1
@.str.68 = private unnamed_addr constant [47 x i8] c"y coordinate of upper-left corner of rectangle\00", align 1
@.str.69 = private unnamed_addr constant [27 x i8] c"The width of the rectangle\00", align 1
@.str.70 = private unnamed_addr constant [28 x i8] c"The height of the rectangle\00", align 1
@.str.71 = private unnamed_addr constant [23 x i8] c"gimp-round-rect-select\00", align 1
@.str.72 = private unnamed_addr constant [61 x i8] c"Deprecated: Use 'gimp-image-select-round-rectangle' instead.\00", align 1
@.str.73 = private unnamed_addr constant [17 x i8] c"Martin Nordholts\00", align 1
@.str.74 = private unnamed_addr constant [34 x i8] c"gimp-image-select-round-rectangle\00", align 1
@.str.75 = private unnamed_addr constant [16 x i8] c"corner-radius-x\00", align 1
@.str.76 = private unnamed_addr constant [16 x i8] c"corner radius x\00", align 1
@.str.77 = private unnamed_addr constant [33 x i8] c"The corner radius in X direction\00", align 1
@.str.78 = private unnamed_addr constant [16 x i8] c"corner-radius-y\00", align 1
@.str.79 = private unnamed_addr constant [16 x i8] c"corner radius y\00", align 1
@.str.80 = private unnamed_addr constant [33 x i8] c"The corner radius in Y direction\00", align 1
@.str.81 = private unnamed_addr constant [12 x i8] c"Free Select\00", align 1

; Function Attrs: nounwind uwtable
define void @register_selection_tools_procs(%struct._GimpPDB* %pdb) #0 {
entry:
  %pdb.addr = alloca %struct._GimpPDB*, align 8
  %procedure = alloca %struct._GimpProcedure*, align 8
  store %struct._GimpPDB* %pdb, %struct._GimpPDB** %pdb.addr, align 8
  %call = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @by_color_select_invoker)
  store %struct._GimpProcedure* %call, %struct._GimpProcedure** %procedure, align 8
  %0 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %1 = bitcast %struct._GimpProcedure* %0 to %struct._GTypeInstance*
  %call1 = call i64 @gimp_object_get_type() #4
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call1)
  %2 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %2, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i32 0, i32 0))
  %3 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %3, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i32 0, i32 0))
  %4 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %5 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %5, i32 0, i32 1
  %6 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call3 = call %struct._GParamSpec* @gimp_param_spec_drawable_id(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i32 0, i32 0), %struct._Gimp* %6, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %4, %struct._GParamSpec* %call3)
  %7 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call4 = call %struct._GParamSpec* @gimp_param_spec_rgb(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i32 0, i32 0), i32 0, %struct._GimpRGB* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %7, %struct._GParamSpec* %call4)
  %8 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call5 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i32 0, i32 0), i32 0, i32 255, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %8, %struct._GParamSpec* %call5)
  %9 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call6 = call i64 @gimp_channel_ops_get_type() #4
  %call7 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i32 0, i32 0), i64 %call6, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %9, %struct._GParamSpec* %call7)
  %10 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call8 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0), i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %10, %struct._GParamSpec* %call8)
  %11 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call9 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.15, i32 0, i32 0), i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %11, %struct._GParamSpec* %call9)
  %12 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call10 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.18, i32 0, i32 0), double 0.000000e+00, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %12, %struct._GParamSpec* %call10)
  %13 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call11 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.21, i32 0, i32 0), i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %13, %struct._GParamSpec* %call11)
  %14 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %15 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %14, %struct._GimpProcedure* %15)
  %16 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %17 = bitcast %struct._GimpProcedure* %16 to i8*
  call void @g_object_unref(i8* %17)
  %call12 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @by_color_select_full_invoker)
  store %struct._GimpProcedure* %call12, %struct._GimpProcedure** %procedure, align 8
  %18 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %19 = bitcast %struct._GimpProcedure* %18 to %struct._GTypeInstance*
  %call13 = call i64 @gimp_object_get_type() #4
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call13)
  %20 = bitcast %struct._GTypeInstance* %call14 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %20, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.22, i32 0, i32 0))
  %21 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %21, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i32 0, i32 0))
  %22 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %23 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp15 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %23, i32 0, i32 1
  %24 = load %struct._Gimp*, %struct._Gimp** %gimp15, align 8
  %call16 = call %struct._GParamSpec* @gimp_param_spec_drawable_id(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i32 0, i32 0), %struct._Gimp* %24, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %22, %struct._GParamSpec* %call16)
  %25 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call17 = call %struct._GParamSpec* @gimp_param_spec_rgb(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i32 0, i32 0), i32 0, %struct._GimpRGB* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %25, %struct._GParamSpec* %call17)
  %26 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call18 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i32 0, i32 0), i32 0, i32 255, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %26, %struct._GParamSpec* %call18)
  %27 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call19 = call i64 @gimp_channel_ops_get_type() #4
  %call20 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i32 0, i32 0), i64 %call19, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %27, %struct._GParamSpec* %call20)
  %28 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call21 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0), i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %28, %struct._GParamSpec* %call21)
  %29 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call22 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.15, i32 0, i32 0), i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %29, %struct._GParamSpec* %call22)
  %30 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call23 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.27, i32 0, i32 0), double 0.000000e+00, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %30, %struct._GParamSpec* %call23)
  %31 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call24 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.30, i32 0, i32 0), double 0.000000e+00, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %31, %struct._GParamSpec* %call24)
  %32 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call25 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.21, i32 0, i32 0), i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %32, %struct._GParamSpec* %call25)
  %33 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call26 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([120 x i8], [120 x i8]* @.str.33, i32 0, i32 0), i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %33, %struct._GParamSpec* %call26)
  %34 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call27 = call i64 @gimp_select_criterion_get_type() #4
  %call28 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([101 x i8], [101 x i8]* @.str.36, i32 0, i32 0), i64 %call27, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %34, %struct._GParamSpec* %call28)
  %35 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %36 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %35, %struct._GimpProcedure* %36)
  %37 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %38 = bitcast %struct._GimpProcedure* %37 to i8*
  call void @g_object_unref(i8* %38)
  %call29 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @ellipse_select_invoker)
  store %struct._GimpProcedure* %call29, %struct._GimpProcedure** %procedure, align 8
  %39 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %40 = bitcast %struct._GimpProcedure* %39 to %struct._GTypeInstance*
  %call30 = call i64 @gimp_object_get_type() #4
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %40, i64 %call30)
  %41 = bitcast %struct._GTypeInstance* %call31 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %41, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.37, i32 0, i32 0))
  %42 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %42, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.39, i32 0, i32 0))
  %43 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %44 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp32 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %44, i32 0, i32 1
  %45 = load %struct._Gimp*, %struct._Gimp** %gimp32, align 8
  %call33 = call %struct._GParamSpec* @gimp_param_spec_image_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.41, i32 0, i32 0), %struct._Gimp* %45, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %43, %struct._GParamSpec* %call33)
  %46 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call34 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.43, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %46, %struct._GParamSpec* %call34)
  %47 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call35 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.45, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %47, %struct._GParamSpec* %call35)
  %48 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call36 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.47, i32 0, i32 0), double 0.000000e+00, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %48, %struct._GParamSpec* %call36)
  %49 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call37 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.49, i32 0, i32 0), double 0.000000e+00, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %49, %struct._GParamSpec* %call37)
  %50 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call38 = call i64 @gimp_channel_ops_get_type() #4
  %call39 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i32 0, i32 0), i64 %call38, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %50, %struct._GParamSpec* %call39)
  %51 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call40 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0), i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %51, %struct._GParamSpec* %call40)
  %52 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call41 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.15, i32 0, i32 0), i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %52, %struct._GParamSpec* %call41)
  %53 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call42 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.18, i32 0, i32 0), double 0.000000e+00, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %53, %struct._GParamSpec* %call42)
  %54 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %55 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %54, %struct._GimpProcedure* %55)
  %56 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %57 = bitcast %struct._GimpProcedure* %56 to i8*
  call void @g_object_unref(i8* %57)
  %call43 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @free_select_invoker)
  store %struct._GimpProcedure* %call43, %struct._GimpProcedure** %procedure, align 8
  %58 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %59 = bitcast %struct._GimpProcedure* %58 to %struct._GTypeInstance*
  %call44 = call i64 @gimp_object_get_type() #4
  %call45 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %59, i64 %call44)
  %60 = bitcast %struct._GTypeInstance* %call45 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %60, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.50, i32 0, i32 0))
  %61 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %61, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.52, i32 0, i32 0))
  %62 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %63 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp46 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %63, i32 0, i32 1
  %64 = load %struct._Gimp*, %struct._Gimp** %gimp46, align 8
  %call47 = call %struct._GParamSpec* @gimp_param_spec_image_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.41, i32 0, i32 0), %struct._Gimp* %64, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %62, %struct._GParamSpec* %call47)
  %65 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call48 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.55, i32 0, i32 0), i32 2, i32 2147483647, i32 2, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %65, %struct._GParamSpec* %call48)
  %66 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call49 = call %struct._GParamSpec* @gimp_param_spec_float_array(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.57, i32 0, i32 0), i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %66, %struct._GParamSpec* %call49)
  %67 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call50 = call i64 @gimp_channel_ops_get_type() #4
  %call51 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i32 0, i32 0), i64 %call50, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %67, %struct._GParamSpec* %call51)
  %68 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call52 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0), i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %68, %struct._GParamSpec* %call52)
  %69 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call53 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.15, i32 0, i32 0), i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %69, %struct._GParamSpec* %call53)
  %70 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call54 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.18, i32 0, i32 0), double 0.000000e+00, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %70, %struct._GParamSpec* %call54)
  %71 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %72 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %71, %struct._GimpProcedure* %72)
  %73 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %74 = bitcast %struct._GimpProcedure* %73 to i8*
  call void @g_object_unref(i8* %74)
  %call55 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @fuzzy_select_invoker)
  store %struct._GimpProcedure* %call55, %struct._GimpProcedure** %procedure, align 8
  %75 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %76 = bitcast %struct._GimpProcedure* %75 to %struct._GTypeInstance*
  %call56 = call i64 @gimp_object_get_type() #4
  %call57 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %76, i64 %call56)
  %77 = bitcast %struct._GTypeInstance* %call57 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %77, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.58, i32 0, i32 0))
  %78 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %78, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.60, i32 0, i32 0))
  %79 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %80 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp58 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %80, i32 0, i32 1
  %81 = load %struct._Gimp*, %struct._Gimp** %gimp58, align 8
  %call59 = call %struct._GParamSpec* @gimp_param_spec_drawable_id(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i32 0, i32 0), %struct._Gimp* %81, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %79, %struct._GParamSpec* %call59)
  %82 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call60 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.61, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %82, %struct._GParamSpec* %call60)
  %83 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call61 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.62, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %83, %struct._GParamSpec* %call61)
  %84 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call62 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i32 0, i32 0), i32 0, i32 255, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %84, %struct._GParamSpec* %call62)
  %85 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call63 = call i64 @gimp_channel_ops_get_type() #4
  %call64 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i32 0, i32 0), i64 %call63, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %85, %struct._GParamSpec* %call64)
  %86 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call65 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0), i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %86, %struct._GParamSpec* %call65)
  %87 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call66 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.15, i32 0, i32 0), i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %87, %struct._GParamSpec* %call66)
  %88 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call67 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.18, i32 0, i32 0), double 0.000000e+00, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %88, %struct._GParamSpec* %call67)
  %89 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call68 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.21, i32 0, i32 0), i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %89, %struct._GParamSpec* %call68)
  %90 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %91 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %90, %struct._GimpProcedure* %91)
  %92 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %93 = bitcast %struct._GimpProcedure* %92 to i8*
  call void @g_object_unref(i8* %93)
  %call69 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @fuzzy_select_full_invoker)
  store %struct._GimpProcedure* %call69, %struct._GimpProcedure** %procedure, align 8
  %94 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %95 = bitcast %struct._GimpProcedure* %94 to %struct._GTypeInstance*
  %call70 = call i64 @gimp_object_get_type() #4
  %call71 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %95, i64 %call70)
  %96 = bitcast %struct._GTypeInstance* %call71 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %96, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.63, i32 0, i32 0))
  %97 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %97, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.60, i32 0, i32 0))
  %98 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %99 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp72 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %99, i32 0, i32 1
  %100 = load %struct._Gimp*, %struct._Gimp** %gimp72, align 8
  %call73 = call %struct._GParamSpec* @gimp_param_spec_drawable_id(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i32 0, i32 0), %struct._Gimp* %100, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %98, %struct._GParamSpec* %call73)
  %101 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call74 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.61, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %101, %struct._GParamSpec* %call74)
  %102 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call75 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.62, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %102, %struct._GParamSpec* %call75)
  %103 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call76 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i32 0, i32 0), i32 0, i32 255, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %103, %struct._GParamSpec* %call76)
  %104 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call77 = call i64 @gimp_channel_ops_get_type() #4
  %call78 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i32 0, i32 0), i64 %call77, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %104, %struct._GParamSpec* %call78)
  %105 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call79 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0), i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %105, %struct._GParamSpec* %call79)
  %106 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call80 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.15, i32 0, i32 0), i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %106, %struct._GParamSpec* %call80)
  %107 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call81 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.27, i32 0, i32 0), double 0.000000e+00, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %107, %struct._GParamSpec* %call81)
  %108 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call82 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.30, i32 0, i32 0), double 0.000000e+00, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %108, %struct._GParamSpec* %call82)
  %109 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call83 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.21, i32 0, i32 0), i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %109, %struct._GParamSpec* %call83)
  %110 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call84 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([120 x i8], [120 x i8]* @.str.33, i32 0, i32 0), i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %110, %struct._GParamSpec* %call84)
  %111 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call85 = call i64 @gimp_select_criterion_get_type() #4
  %call86 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([101 x i8], [101 x i8]* @.str.36, i32 0, i32 0), i64 %call85, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %111, %struct._GParamSpec* %call86)
  %112 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %113 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %112, %struct._GimpProcedure* %113)
  %114 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %115 = bitcast %struct._GimpProcedure* %114 to i8*
  call void @g_object_unref(i8* %115)
  %call87 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @rect_select_invoker)
  store %struct._GimpProcedure* %call87, %struct._GimpProcedure** %procedure, align 8
  %116 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %117 = bitcast %struct._GimpProcedure* %116 to %struct._GTypeInstance*
  %call88 = call i64 @gimp_object_get_type() #4
  %call89 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %117, i64 %call88)
  %118 = bitcast %struct._GTypeInstance* %call89 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %118, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.64, i32 0, i32 0))
  %119 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %119, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.66, i32 0, i32 0))
  %120 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %121 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp90 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %121, i32 0, i32 1
  %122 = load %struct._Gimp*, %struct._Gimp** %gimp90, align 8
  %call91 = call %struct._GParamSpec* @gimp_param_spec_image_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.41, i32 0, i32 0), %struct._Gimp* %122, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %120, %struct._GParamSpec* %call91)
  %123 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call92 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.67, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %123, %struct._GParamSpec* %call92)
  %124 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call93 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.68, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %124, %struct._GParamSpec* %call93)
  %125 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call94 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.69, i32 0, i32 0), double 0.000000e+00, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %125, %struct._GParamSpec* %call94)
  %126 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call95 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.70, i32 0, i32 0), double 0.000000e+00, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %126, %struct._GParamSpec* %call95)
  %127 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call96 = call i64 @gimp_channel_ops_get_type() #4
  %call97 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i32 0, i32 0), i64 %call96, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %127, %struct._GParamSpec* %call97)
  %128 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call98 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.15, i32 0, i32 0), i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %128, %struct._GParamSpec* %call98)
  %129 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call99 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.18, i32 0, i32 0), double 0.000000e+00, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %129, %struct._GParamSpec* %call99)
  %130 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %131 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %130, %struct._GimpProcedure* %131)
  %132 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %133 = bitcast %struct._GimpProcedure* %132 to i8*
  call void @g_object_unref(i8* %133)
  %call100 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @round_rect_select_invoker)
  store %struct._GimpProcedure* %call100, %struct._GimpProcedure** %procedure, align 8
  %134 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %135 = bitcast %struct._GimpProcedure* %134 to %struct._GTypeInstance*
  %call101 = call i64 @gimp_object_get_type() #4
  %call102 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %135, i64 %call101)
  %136 = bitcast %struct._GTypeInstance* %call102 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %136, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.71, i32 0, i32 0))
  %137 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %137, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.72, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.72, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.73, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.73, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.74, i32 0, i32 0))
  %138 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %139 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp103 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %139, i32 0, i32 1
  %140 = load %struct._Gimp*, %struct._Gimp** %gimp103, align 8
  %call104 = call %struct._GParamSpec* @gimp_param_spec_image_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.41, i32 0, i32 0), %struct._Gimp* %140, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %138, %struct._GParamSpec* %call104)
  %141 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call105 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.67, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %141, %struct._GParamSpec* %call105)
  %142 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call106 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.68, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %142, %struct._GParamSpec* %call106)
  %143 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call107 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.69, i32 0, i32 0), double 0.000000e+00, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %143, %struct._GParamSpec* %call107)
  %144 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call108 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.70, i32 0, i32 0), double 0.000000e+00, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %144, %struct._GParamSpec* %call108)
  %145 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call109 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.75, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.76, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.77, i32 0, i32 0), double 0.000000e+00, double 2.621440e+05, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %145, %struct._GParamSpec* %call109)
  %146 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call110 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.79, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.80, i32 0, i32 0), double 0.000000e+00, double 2.621440e+05, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %146, %struct._GParamSpec* %call110)
  %147 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call111 = call i64 @gimp_channel_ops_get_type() #4
  %call112 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i32 0, i32 0), i64 %call111, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %147, %struct._GParamSpec* %call112)
  %148 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call113 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0), i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %148, %struct._GParamSpec* %call113)
  %149 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call114 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.15, i32 0, i32 0), i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %149, %struct._GParamSpec* %call114)
  %150 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call115 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.27, i32 0, i32 0), double 0.000000e+00, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %150, %struct._GParamSpec* %call115)
  %151 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call116 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.30, i32 0, i32 0), double 0.000000e+00, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %151, %struct._GParamSpec* %call116)
  %152 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %153 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %152, %struct._GimpProcedure* %153)
  %154 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %155 = bitcast %struct._GimpProcedure* %154 to i8*
  call void @g_object_unref(i8* %155)
  ret void
}

declare %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)*) #1

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @by_color_select_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %drawable = alloca %struct._GimpDrawable*, align 8
  %color = alloca %struct._GimpRGB, align 8
  %threshold = alloca i32, align 4
  %operation = alloca i32, align 4
  %antialias = alloca i32, align 4
  %feather = alloca i32, align 4
  %feather_radius = alloca double, align 8
  %sample_merged = alloca i32, align 4
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
  %call = call %struct._GimpDrawable* @gimp_value_get_drawable(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpDrawable* %call, %struct._GimpDrawable** %drawable, align 8
  %3 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %3, i32 0, i32 1
  %4 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %4, i64 1
  call void @gimp_value_get_rgb(%struct._GValue* %arrayidx2, %struct._GimpRGB* %color)
  %5 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values3 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %5, i32 0, i32 1
  %6 = load %struct._GValue*, %struct._GValue** %values3, align 8
  %arrayidx4 = getelementptr inbounds %struct._GValue, %struct._GValue* %6, i64 2
  %call5 = call i32 @g_value_get_int(%struct._GValue* %arrayidx4)
  store i32 %call5, i32* %threshold, align 4
  %7 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values6 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %7, i32 0, i32 1
  %8 = load %struct._GValue*, %struct._GValue** %values6, align 8
  %arrayidx7 = getelementptr inbounds %struct._GValue, %struct._GValue* %8, i64 3
  %call8 = call i32 @g_value_get_enum(%struct._GValue* %arrayidx7)
  store i32 %call8, i32* %operation, align 4
  %9 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values9 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %9, i32 0, i32 1
  %10 = load %struct._GValue*, %struct._GValue** %values9, align 8
  %arrayidx10 = getelementptr inbounds %struct._GValue, %struct._GValue* %10, i64 4
  %call11 = call i32 @g_value_get_boolean(%struct._GValue* %arrayidx10)
  store i32 %call11, i32* %antialias, align 4
  %11 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values12 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %11, i32 0, i32 1
  %12 = load %struct._GValue*, %struct._GValue** %values12, align 8
  %arrayidx13 = getelementptr inbounds %struct._GValue, %struct._GValue* %12, i64 5
  %call14 = call i32 @g_value_get_boolean(%struct._GValue* %arrayidx13)
  store i32 %call14, i32* %feather, align 4
  %13 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values15 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %13, i32 0, i32 1
  %14 = load %struct._GValue*, %struct._GValue** %values15, align 8
  %arrayidx16 = getelementptr inbounds %struct._GValue, %struct._GValue* %14, i64 6
  %call17 = call double @g_value_get_double(%struct._GValue* %arrayidx16)
  store double %call17, double* %feather_radius, align 8
  %15 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values18 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %15, i32 0, i32 1
  %16 = load %struct._GValue*, %struct._GValue** %values18, align 8
  %arrayidx19 = getelementptr inbounds %struct._GValue, %struct._GValue* %16, i64 7
  %call20 = call i32 @g_value_get_boolean(%struct._GValue* %arrayidx19)
  store i32 %call20, i32* %sample_merged, align 4
  %17 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %17, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %18 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %19 = bitcast %struct._GimpDrawable* %18 to %struct._GTypeInstance*
  %call21 = call i64 @gimp_item_get_type() #4
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call21)
  %20 = bitcast %struct._GTypeInstance* %call22 to %struct._GimpItem*
  %call23 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %20)
  store %struct._GimpImage* %call23, %struct._GimpImage** %image, align 8
  %21 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call24 = call %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage* %21)
  %22 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %23 = load i32, i32* %sample_merged, align 4
  %24 = load i32, i32* %threshold, align 4
  %25 = load i32, i32* %operation, align 4
  %26 = load i32, i32* %antialias, align 4
  %27 = load i32, i32* %feather, align 4
  %28 = load double, double* %feather_radius, align 8
  %29 = load double, double* %feather_radius, align 8
  call void @gimp_channel_select_by_color(%struct._GimpChannel* %call24, %struct._GimpDrawable* %22, i32 %23, %struct._GimpRGB* %color, i32 %24, i32 0, i32 0, i32 %25, i32 %26, i32 %27, double %28, double %29)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %30 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %31 = load i32, i32* %success, align 4
  %32 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool25 = icmp ne %struct._GError** %32, null
  br i1 %tobool25, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %33 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %34 = load %struct._GError*, %struct._GError** %33, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %34, %cond.true ], [ null, %cond.false ]
  %call26 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %30, i32 %31, %struct._GError* %cond)
  ret %struct._GValueArray* %call26
}

declare void @gimp_object_set_static_name(%struct._GimpObject*, i8*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #2

declare void @gimp_procedure_set_static_strings(%struct._GimpProcedure*, i8*, i8*, i8*, i8*, i8*, i8*, i8*) #1

declare void @gimp_procedure_add_argument(%struct._GimpProcedure*, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @gimp_param_spec_drawable_id(i8*, i8*, i8*, %struct._Gimp*, i32, i32) #1

declare %struct._GParamSpec* @gimp_param_spec_rgb(i8*, i8*, i8*, i32, %struct._GimpRGB*, i32) #1

declare %struct._GParamSpec* @gimp_param_spec_int32(i8*, i8*, i8*, i32, i32, i32, i32) #1

declare %struct._GParamSpec* @g_param_spec_enum(i8*, i8*, i8*, i64, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_channel_ops_get_type() #2

declare %struct._GParamSpec* @g_param_spec_boolean(i8*, i8*, i8*, i32, i32) #1

declare %struct._GParamSpec* @g_param_spec_double(i8*, i8*, i8*, double, double, double, i32) #1

declare void @gimp_pdb_register_procedure(%struct._GimpPDB*, %struct._GimpProcedure*) #1

declare void @g_object_unref(i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @by_color_select_full_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %drawable = alloca %struct._GimpDrawable*, align 8
  %color = alloca %struct._GimpRGB, align 8
  %threshold = alloca i32, align 4
  %operation = alloca i32, align 4
  %antialias = alloca i32, align 4
  %feather = alloca i32, align 4
  %feather_radius_x = alloca double, align 8
  %feather_radius_y = alloca double, align 8
  %sample_merged = alloca i32, align 4
  %select_transparent = alloca i32, align 4
  %select_criterion = alloca i32, align 4
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
  %call = call %struct._GimpDrawable* @gimp_value_get_drawable(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpDrawable* %call, %struct._GimpDrawable** %drawable, align 8
  %3 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %3, i32 0, i32 1
  %4 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %4, i64 1
  call void @gimp_value_get_rgb(%struct._GValue* %arrayidx2, %struct._GimpRGB* %color)
  %5 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values3 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %5, i32 0, i32 1
  %6 = load %struct._GValue*, %struct._GValue** %values3, align 8
  %arrayidx4 = getelementptr inbounds %struct._GValue, %struct._GValue* %6, i64 2
  %call5 = call i32 @g_value_get_int(%struct._GValue* %arrayidx4)
  store i32 %call5, i32* %threshold, align 4
  %7 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values6 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %7, i32 0, i32 1
  %8 = load %struct._GValue*, %struct._GValue** %values6, align 8
  %arrayidx7 = getelementptr inbounds %struct._GValue, %struct._GValue* %8, i64 3
  %call8 = call i32 @g_value_get_enum(%struct._GValue* %arrayidx7)
  store i32 %call8, i32* %operation, align 4
  %9 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values9 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %9, i32 0, i32 1
  %10 = load %struct._GValue*, %struct._GValue** %values9, align 8
  %arrayidx10 = getelementptr inbounds %struct._GValue, %struct._GValue* %10, i64 4
  %call11 = call i32 @g_value_get_boolean(%struct._GValue* %arrayidx10)
  store i32 %call11, i32* %antialias, align 4
  %11 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values12 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %11, i32 0, i32 1
  %12 = load %struct._GValue*, %struct._GValue** %values12, align 8
  %arrayidx13 = getelementptr inbounds %struct._GValue, %struct._GValue* %12, i64 5
  %call14 = call i32 @g_value_get_boolean(%struct._GValue* %arrayidx13)
  store i32 %call14, i32* %feather, align 4
  %13 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values15 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %13, i32 0, i32 1
  %14 = load %struct._GValue*, %struct._GValue** %values15, align 8
  %arrayidx16 = getelementptr inbounds %struct._GValue, %struct._GValue* %14, i64 6
  %call17 = call double @g_value_get_double(%struct._GValue* %arrayidx16)
  store double %call17, double* %feather_radius_x, align 8
  %15 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values18 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %15, i32 0, i32 1
  %16 = load %struct._GValue*, %struct._GValue** %values18, align 8
  %arrayidx19 = getelementptr inbounds %struct._GValue, %struct._GValue* %16, i64 7
  %call20 = call double @g_value_get_double(%struct._GValue* %arrayidx19)
  store double %call20, double* %feather_radius_y, align 8
  %17 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values21 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %17, i32 0, i32 1
  %18 = load %struct._GValue*, %struct._GValue** %values21, align 8
  %arrayidx22 = getelementptr inbounds %struct._GValue, %struct._GValue* %18, i64 8
  %call23 = call i32 @g_value_get_boolean(%struct._GValue* %arrayidx22)
  store i32 %call23, i32* %sample_merged, align 4
  %19 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values24 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %19, i32 0, i32 1
  %20 = load %struct._GValue*, %struct._GValue** %values24, align 8
  %arrayidx25 = getelementptr inbounds %struct._GValue, %struct._GValue* %20, i64 9
  %call26 = call i32 @g_value_get_boolean(%struct._GValue* %arrayidx25)
  store i32 %call26, i32* %select_transparent, align 4
  %21 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values27 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %21, i32 0, i32 1
  %22 = load %struct._GValue*, %struct._GValue** %values27, align 8
  %arrayidx28 = getelementptr inbounds %struct._GValue, %struct._GValue* %22, i64 10
  %call29 = call i32 @g_value_get_enum(%struct._GValue* %arrayidx28)
  store i32 %call29, i32* %select_criterion, align 4
  %23 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %23, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %24 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %25 = bitcast %struct._GimpDrawable* %24 to %struct._GTypeInstance*
  %call30 = call i64 @gimp_item_get_type() #4
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call30)
  %26 = bitcast %struct._GTypeInstance* %call31 to %struct._GimpItem*
  %call32 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %26)
  store %struct._GimpImage* %call32, %struct._GimpImage** %image, align 8
  %27 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call33 = call %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage* %27)
  %28 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %29 = load i32, i32* %sample_merged, align 4
  %30 = load i32, i32* %threshold, align 4
  %31 = load i32, i32* %select_transparent, align 4
  %32 = load i32, i32* %select_criterion, align 4
  %33 = load i32, i32* %operation, align 4
  %34 = load i32, i32* %antialias, align 4
  %35 = load i32, i32* %feather, align 4
  %36 = load double, double* %feather_radius_x, align 8
  %37 = load double, double* %feather_radius_y, align 8
  call void @gimp_channel_select_by_color(%struct._GimpChannel* %call33, %struct._GimpDrawable* %28, i32 %29, %struct._GimpRGB* %color, i32 %30, i32 %31, i32 %32, i32 %33, i32 %34, i32 %35, double %36, double %37)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %38 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %39 = load i32, i32* %success, align 4
  %40 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool34 = icmp ne %struct._GError** %40, null
  br i1 %tobool34, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %41 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %42 = load %struct._GError*, %struct._GError** %41, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %42, %cond.true ], [ null, %cond.false ]
  %call35 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %38, i32 %39, %struct._GError* %cond)
  ret %struct._GValueArray* %call35
}

; Function Attrs: nounwind readnone
declare i64 @gimp_select_criterion_get_type() #2

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @ellipse_select_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %image = alloca %struct._GimpImage*, align 8
  %x = alloca double, align 8
  %y = alloca double, align 8
  %width = alloca double, align 8
  %height = alloca double, align 8
  %operation = alloca i32, align 4
  %antialias = alloca i32, align 4
  %feather = alloca i32, align 4
  %feather_radius = alloca double, align 8
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
  store double %call3, double* %x, align 8
  %5 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values4 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %5, i32 0, i32 1
  %6 = load %struct._GValue*, %struct._GValue** %values4, align 8
  %arrayidx5 = getelementptr inbounds %struct._GValue, %struct._GValue* %6, i64 2
  %call6 = call double @g_value_get_double(%struct._GValue* %arrayidx5)
  store double %call6, double* %y, align 8
  %7 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values7 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %7, i32 0, i32 1
  %8 = load %struct._GValue*, %struct._GValue** %values7, align 8
  %arrayidx8 = getelementptr inbounds %struct._GValue, %struct._GValue* %8, i64 3
  %call9 = call double @g_value_get_double(%struct._GValue* %arrayidx8)
  store double %call9, double* %width, align 8
  %9 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values10 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %9, i32 0, i32 1
  %10 = load %struct._GValue*, %struct._GValue** %values10, align 8
  %arrayidx11 = getelementptr inbounds %struct._GValue, %struct._GValue* %10, i64 4
  %call12 = call double @g_value_get_double(%struct._GValue* %arrayidx11)
  store double %call12, double* %height, align 8
  %11 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values13 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %11, i32 0, i32 1
  %12 = load %struct._GValue*, %struct._GValue** %values13, align 8
  %arrayidx14 = getelementptr inbounds %struct._GValue, %struct._GValue* %12, i64 5
  %call15 = call i32 @g_value_get_enum(%struct._GValue* %arrayidx14)
  store i32 %call15, i32* %operation, align 4
  %13 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values16 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %13, i32 0, i32 1
  %14 = load %struct._GValue*, %struct._GValue** %values16, align 8
  %arrayidx17 = getelementptr inbounds %struct._GValue, %struct._GValue* %14, i64 6
  %call18 = call i32 @g_value_get_boolean(%struct._GValue* %arrayidx17)
  store i32 %call18, i32* %antialias, align 4
  %15 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values19 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %15, i32 0, i32 1
  %16 = load %struct._GValue*, %struct._GValue** %values19, align 8
  %arrayidx20 = getelementptr inbounds %struct._GValue, %struct._GValue* %16, i64 7
  %call21 = call i32 @g_value_get_boolean(%struct._GValue* %arrayidx20)
  store i32 %call21, i32* %feather, align 4
  %17 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values22 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %17, i32 0, i32 1
  %18 = load %struct._GValue*, %struct._GValue** %values22, align 8
  %arrayidx23 = getelementptr inbounds %struct._GValue, %struct._GValue* %18, i64 8
  %call24 = call double @g_value_get_double(%struct._GValue* %arrayidx23)
  store double %call24, double* %feather_radius, align 8
  %19 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %19, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %20 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call25 = call %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage* %20)
  %21 = load double, double* %x, align 8
  %conv = fptosi double %21 to i32
  %22 = load double, double* %y, align 8
  %conv26 = fptosi double %22 to i32
  %23 = load double, double* %width, align 8
  %conv27 = fptosi double %23 to i32
  %24 = load double, double* %height, align 8
  %conv28 = fptosi double %24 to i32
  %25 = load i32, i32* %operation, align 4
  %26 = load i32, i32* %antialias, align 4
  %27 = load i32, i32* %feather, align 4
  %28 = load double, double* %feather_radius, align 8
  %29 = load double, double* %feather_radius, align 8
  call void @gimp_channel_select_ellipse(%struct._GimpChannel* %call25, i32 %conv, i32 %conv26, i32 %conv27, i32 %conv28, i32 %25, i32 %26, i32 %27, double %28, double %29, i32 1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %30 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %31 = load i32, i32* %success, align 4
  %32 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool29 = icmp ne %struct._GError** %32, null
  br i1 %tobool29, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %33 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %34 = load %struct._GError*, %struct._GError** %33, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %34, %cond.true ], [ null, %cond.false ]
  %call30 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %30, i32 %31, %struct._GError* %cond)
  ret %struct._GValueArray* %call30
}

declare %struct._GParamSpec* @gimp_param_spec_image_id(i8*, i8*, i8*, %struct._Gimp*, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @free_select_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %image = alloca %struct._GimpImage*, align 8
  %num_segs = alloca i32, align 4
  %segs = alloca double*, align 8
  %operation = alloca i32, align 4
  %antialias = alloca i32, align 4
  %feather = alloca i32, align 4
  %feather_radius = alloca double, align 8
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
  %call3 = call i32 @g_value_get_int(%struct._GValue* %arrayidx2)
  store i32 %call3, i32* %num_segs, align 4
  %5 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values4 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %5, i32 0, i32 1
  %6 = load %struct._GValue*, %struct._GValue** %values4, align 8
  %arrayidx5 = getelementptr inbounds %struct._GValue, %struct._GValue* %6, i64 2
  %call6 = call double* @gimp_value_get_floatarray(%struct._GValue* %arrayidx5)
  store double* %call6, double** %segs, align 8
  %7 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values7 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %7, i32 0, i32 1
  %8 = load %struct._GValue*, %struct._GValue** %values7, align 8
  %arrayidx8 = getelementptr inbounds %struct._GValue, %struct._GValue* %8, i64 3
  %call9 = call i32 @g_value_get_enum(%struct._GValue* %arrayidx8)
  store i32 %call9, i32* %operation, align 4
  %9 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values10 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %9, i32 0, i32 1
  %10 = load %struct._GValue*, %struct._GValue** %values10, align 8
  %arrayidx11 = getelementptr inbounds %struct._GValue, %struct._GValue* %10, i64 4
  %call12 = call i32 @g_value_get_boolean(%struct._GValue* %arrayidx11)
  store i32 %call12, i32* %antialias, align 4
  %11 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values13 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %11, i32 0, i32 1
  %12 = load %struct._GValue*, %struct._GValue** %values13, align 8
  %arrayidx14 = getelementptr inbounds %struct._GValue, %struct._GValue* %12, i64 5
  %call15 = call i32 @g_value_get_boolean(%struct._GValue* %arrayidx14)
  store i32 %call15, i32* %feather, align 4
  %13 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values16 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %13, i32 0, i32 1
  %14 = load %struct._GValue*, %struct._GValue** %values16, align 8
  %arrayidx17 = getelementptr inbounds %struct._GValue, %struct._GValue* %14, i64 6
  %call18 = call double @g_value_get_double(%struct._GValue* %arrayidx17)
  store double %call18, double* %feather_radius, align 8
  %15 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %15, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %16 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call19 = call %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage* %16)
  %call20 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.81, i32 0, i32 0)) #5
  %17 = load i32, i32* %num_segs, align 4
  %div = sdiv i32 %17, 2
  %18 = load double*, double** %segs, align 8
  %19 = bitcast double* %18 to %struct._GimpVector2*
  %20 = load i32, i32* %operation, align 4
  %21 = load i32, i32* %antialias, align 4
  %22 = load i32, i32* %feather, align 4
  %23 = load double, double* %feather_radius, align 8
  %24 = load double, double* %feather_radius, align 8
  call void @gimp_channel_select_polygon(%struct._GimpChannel* %call19, i8* %call20, i32 %div, %struct._GimpVector2* %19, i32 %20, i32 %21, i32 %22, double %23, double %24, i32 1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %25 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %26 = load i32, i32* %success, align 4
  %27 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool21 = icmp ne %struct._GError** %27, null
  br i1 %tobool21, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %28 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %29 = load %struct._GError*, %struct._GError** %28, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %29, %cond.true ], [ null, %cond.false ]
  %call22 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %25, i32 %26, %struct._GError* %cond)
  ret %struct._GValueArray* %call22
}

declare %struct._GParamSpec* @gimp_param_spec_float_array(i8*, i8*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @fuzzy_select_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %drawable = alloca %struct._GimpDrawable*, align 8
  %x = alloca double, align 8
  %y = alloca double, align 8
  %threshold = alloca i32, align 4
  %operation = alloca i32, align 4
  %antialias = alloca i32, align 4
  %feather = alloca i32, align 4
  %feather_radius = alloca double, align 8
  %sample_merged = alloca i32, align 4
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
  %call = call %struct._GimpDrawable* @gimp_value_get_drawable(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpDrawable* %call, %struct._GimpDrawable** %drawable, align 8
  %3 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %3, i32 0, i32 1
  %4 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %4, i64 1
  %call3 = call double @g_value_get_double(%struct._GValue* %arrayidx2)
  store double %call3, double* %x, align 8
  %5 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values4 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %5, i32 0, i32 1
  %6 = load %struct._GValue*, %struct._GValue** %values4, align 8
  %arrayidx5 = getelementptr inbounds %struct._GValue, %struct._GValue* %6, i64 2
  %call6 = call double @g_value_get_double(%struct._GValue* %arrayidx5)
  store double %call6, double* %y, align 8
  %7 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values7 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %7, i32 0, i32 1
  %8 = load %struct._GValue*, %struct._GValue** %values7, align 8
  %arrayidx8 = getelementptr inbounds %struct._GValue, %struct._GValue* %8, i64 3
  %call9 = call i32 @g_value_get_int(%struct._GValue* %arrayidx8)
  store i32 %call9, i32* %threshold, align 4
  %9 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values10 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %9, i32 0, i32 1
  %10 = load %struct._GValue*, %struct._GValue** %values10, align 8
  %arrayidx11 = getelementptr inbounds %struct._GValue, %struct._GValue* %10, i64 4
  %call12 = call i32 @g_value_get_enum(%struct._GValue* %arrayidx11)
  store i32 %call12, i32* %operation, align 4
  %11 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values13 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %11, i32 0, i32 1
  %12 = load %struct._GValue*, %struct._GValue** %values13, align 8
  %arrayidx14 = getelementptr inbounds %struct._GValue, %struct._GValue* %12, i64 5
  %call15 = call i32 @g_value_get_boolean(%struct._GValue* %arrayidx14)
  store i32 %call15, i32* %antialias, align 4
  %13 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values16 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %13, i32 0, i32 1
  %14 = load %struct._GValue*, %struct._GValue** %values16, align 8
  %arrayidx17 = getelementptr inbounds %struct._GValue, %struct._GValue* %14, i64 6
  %call18 = call i32 @g_value_get_boolean(%struct._GValue* %arrayidx17)
  store i32 %call18, i32* %feather, align 4
  %15 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values19 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %15, i32 0, i32 1
  %16 = load %struct._GValue*, %struct._GValue** %values19, align 8
  %arrayidx20 = getelementptr inbounds %struct._GValue, %struct._GValue* %16, i64 7
  %call21 = call double @g_value_get_double(%struct._GValue* %arrayidx20)
  store double %call21, double* %feather_radius, align 8
  %17 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values22 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %17, i32 0, i32 1
  %18 = load %struct._GValue*, %struct._GValue** %values22, align 8
  %arrayidx23 = getelementptr inbounds %struct._GValue, %struct._GValue* %18, i64 8
  %call24 = call i32 @g_value_get_boolean(%struct._GValue* %arrayidx23)
  store i32 %call24, i32* %sample_merged, align 4
  %19 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %19, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %20 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %21 = bitcast %struct._GimpDrawable* %20 to %struct._GTypeInstance*
  %call25 = call i64 @gimp_item_get_type() #4
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call25)
  %22 = bitcast %struct._GTypeInstance* %call26 to %struct._GimpItem*
  %call27 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %22)
  store %struct._GimpImage* %call27, %struct._GimpImage** %image, align 8
  %23 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call28 = call %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage* %23)
  %24 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %25 = load i32, i32* %sample_merged, align 4
  %26 = load double, double* %x, align 8
  %conv = fptosi double %26 to i32
  %27 = load double, double* %y, align 8
  %conv29 = fptosi double %27 to i32
  %28 = load i32, i32* %threshold, align 4
  %29 = load i32, i32* %operation, align 4
  %30 = load i32, i32* %antialias, align 4
  %31 = load i32, i32* %feather, align 4
  %32 = load double, double* %feather_radius, align 8
  %33 = load double, double* %feather_radius, align 8
  call void @gimp_channel_select_fuzzy(%struct._GimpChannel* %call28, %struct._GimpDrawable* %24, i32 %25, i32 %conv, i32 %conv29, i32 %28, i32 0, i32 0, i32 %29, i32 %30, i32 %31, double %32, double %33)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %34 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %35 = load i32, i32* %success, align 4
  %36 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool30 = icmp ne %struct._GError** %36, null
  br i1 %tobool30, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %37 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %38 = load %struct._GError*, %struct._GError** %37, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %38, %cond.true ], [ null, %cond.false ]
  %call31 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %34, i32 %35, %struct._GError* %cond)
  ret %struct._GValueArray* %call31
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @fuzzy_select_full_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %drawable = alloca %struct._GimpDrawable*, align 8
  %x = alloca double, align 8
  %y = alloca double, align 8
  %threshold = alloca i32, align 4
  %operation = alloca i32, align 4
  %antialias = alloca i32, align 4
  %feather = alloca i32, align 4
  %feather_radius_x = alloca double, align 8
  %feather_radius_y = alloca double, align 8
  %sample_merged = alloca i32, align 4
  %select_transparent = alloca i32, align 4
  %select_criterion = alloca i32, align 4
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
  %call = call %struct._GimpDrawable* @gimp_value_get_drawable(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpDrawable* %call, %struct._GimpDrawable** %drawable, align 8
  %3 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %3, i32 0, i32 1
  %4 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %4, i64 1
  %call3 = call double @g_value_get_double(%struct._GValue* %arrayidx2)
  store double %call3, double* %x, align 8
  %5 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values4 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %5, i32 0, i32 1
  %6 = load %struct._GValue*, %struct._GValue** %values4, align 8
  %arrayidx5 = getelementptr inbounds %struct._GValue, %struct._GValue* %6, i64 2
  %call6 = call double @g_value_get_double(%struct._GValue* %arrayidx5)
  store double %call6, double* %y, align 8
  %7 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values7 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %7, i32 0, i32 1
  %8 = load %struct._GValue*, %struct._GValue** %values7, align 8
  %arrayidx8 = getelementptr inbounds %struct._GValue, %struct._GValue* %8, i64 3
  %call9 = call i32 @g_value_get_int(%struct._GValue* %arrayidx8)
  store i32 %call9, i32* %threshold, align 4
  %9 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values10 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %9, i32 0, i32 1
  %10 = load %struct._GValue*, %struct._GValue** %values10, align 8
  %arrayidx11 = getelementptr inbounds %struct._GValue, %struct._GValue* %10, i64 4
  %call12 = call i32 @g_value_get_enum(%struct._GValue* %arrayidx11)
  store i32 %call12, i32* %operation, align 4
  %11 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values13 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %11, i32 0, i32 1
  %12 = load %struct._GValue*, %struct._GValue** %values13, align 8
  %arrayidx14 = getelementptr inbounds %struct._GValue, %struct._GValue* %12, i64 5
  %call15 = call i32 @g_value_get_boolean(%struct._GValue* %arrayidx14)
  store i32 %call15, i32* %antialias, align 4
  %13 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values16 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %13, i32 0, i32 1
  %14 = load %struct._GValue*, %struct._GValue** %values16, align 8
  %arrayidx17 = getelementptr inbounds %struct._GValue, %struct._GValue* %14, i64 6
  %call18 = call i32 @g_value_get_boolean(%struct._GValue* %arrayidx17)
  store i32 %call18, i32* %feather, align 4
  %15 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values19 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %15, i32 0, i32 1
  %16 = load %struct._GValue*, %struct._GValue** %values19, align 8
  %arrayidx20 = getelementptr inbounds %struct._GValue, %struct._GValue* %16, i64 7
  %call21 = call double @g_value_get_double(%struct._GValue* %arrayidx20)
  store double %call21, double* %feather_radius_x, align 8
  %17 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values22 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %17, i32 0, i32 1
  %18 = load %struct._GValue*, %struct._GValue** %values22, align 8
  %arrayidx23 = getelementptr inbounds %struct._GValue, %struct._GValue* %18, i64 8
  %call24 = call double @g_value_get_double(%struct._GValue* %arrayidx23)
  store double %call24, double* %feather_radius_y, align 8
  %19 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values25 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %19, i32 0, i32 1
  %20 = load %struct._GValue*, %struct._GValue** %values25, align 8
  %arrayidx26 = getelementptr inbounds %struct._GValue, %struct._GValue* %20, i64 9
  %call27 = call i32 @g_value_get_boolean(%struct._GValue* %arrayidx26)
  store i32 %call27, i32* %sample_merged, align 4
  %21 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values28 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %21, i32 0, i32 1
  %22 = load %struct._GValue*, %struct._GValue** %values28, align 8
  %arrayidx29 = getelementptr inbounds %struct._GValue, %struct._GValue* %22, i64 10
  %call30 = call i32 @g_value_get_boolean(%struct._GValue* %arrayidx29)
  store i32 %call30, i32* %select_transparent, align 4
  %23 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values31 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %23, i32 0, i32 1
  %24 = load %struct._GValue*, %struct._GValue** %values31, align 8
  %arrayidx32 = getelementptr inbounds %struct._GValue, %struct._GValue* %24, i64 11
  %call33 = call i32 @g_value_get_enum(%struct._GValue* %arrayidx32)
  store i32 %call33, i32* %select_criterion, align 4
  %25 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %25, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %26 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %27 = bitcast %struct._GimpDrawable* %26 to %struct._GTypeInstance*
  %call34 = call i64 @gimp_item_get_type() #4
  %call35 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call34)
  %28 = bitcast %struct._GTypeInstance* %call35 to %struct._GimpItem*
  %call36 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %28)
  store %struct._GimpImage* %call36, %struct._GimpImage** %image, align 8
  %29 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call37 = call %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage* %29)
  %30 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %31 = load i32, i32* %sample_merged, align 4
  %32 = load double, double* %x, align 8
  %conv = fptosi double %32 to i32
  %33 = load double, double* %y, align 8
  %conv38 = fptosi double %33 to i32
  %34 = load i32, i32* %threshold, align 4
  %35 = load i32, i32* %select_transparent, align 4
  %36 = load i32, i32* %select_criterion, align 4
  %37 = load i32, i32* %operation, align 4
  %38 = load i32, i32* %antialias, align 4
  %39 = load i32, i32* %feather, align 4
  %40 = load double, double* %feather_radius_x, align 8
  %41 = load double, double* %feather_radius_y, align 8
  call void @gimp_channel_select_fuzzy(%struct._GimpChannel* %call37, %struct._GimpDrawable* %30, i32 %31, i32 %conv, i32 %conv38, i32 %34, i32 %35, i32 %36, i32 %37, i32 %38, i32 %39, double %40, double %41)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %42 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %43 = load i32, i32* %success, align 4
  %44 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool39 = icmp ne %struct._GError** %44, null
  br i1 %tobool39, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %45 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %46 = load %struct._GError*, %struct._GError** %45, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %46, %cond.true ], [ null, %cond.false ]
  %call40 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %42, i32 %43, %struct._GError* %cond)
  ret %struct._GValueArray* %call40
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @rect_select_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %image = alloca %struct._GimpImage*, align 8
  %x = alloca double, align 8
  %y = alloca double, align 8
  %width = alloca double, align 8
  %height = alloca double, align 8
  %operation = alloca i32, align 4
  %feather = alloca i32, align 4
  %feather_radius = alloca double, align 8
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
  store double %call3, double* %x, align 8
  %5 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values4 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %5, i32 0, i32 1
  %6 = load %struct._GValue*, %struct._GValue** %values4, align 8
  %arrayidx5 = getelementptr inbounds %struct._GValue, %struct._GValue* %6, i64 2
  %call6 = call double @g_value_get_double(%struct._GValue* %arrayidx5)
  store double %call6, double* %y, align 8
  %7 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values7 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %7, i32 0, i32 1
  %8 = load %struct._GValue*, %struct._GValue** %values7, align 8
  %arrayidx8 = getelementptr inbounds %struct._GValue, %struct._GValue* %8, i64 3
  %call9 = call double @g_value_get_double(%struct._GValue* %arrayidx8)
  store double %call9, double* %width, align 8
  %9 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values10 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %9, i32 0, i32 1
  %10 = load %struct._GValue*, %struct._GValue** %values10, align 8
  %arrayidx11 = getelementptr inbounds %struct._GValue, %struct._GValue* %10, i64 4
  %call12 = call double @g_value_get_double(%struct._GValue* %arrayidx11)
  store double %call12, double* %height, align 8
  %11 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values13 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %11, i32 0, i32 1
  %12 = load %struct._GValue*, %struct._GValue** %values13, align 8
  %arrayidx14 = getelementptr inbounds %struct._GValue, %struct._GValue* %12, i64 5
  %call15 = call i32 @g_value_get_enum(%struct._GValue* %arrayidx14)
  store i32 %call15, i32* %operation, align 4
  %13 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values16 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %13, i32 0, i32 1
  %14 = load %struct._GValue*, %struct._GValue** %values16, align 8
  %arrayidx17 = getelementptr inbounds %struct._GValue, %struct._GValue* %14, i64 6
  %call18 = call i32 @g_value_get_boolean(%struct._GValue* %arrayidx17)
  store i32 %call18, i32* %feather, align 4
  %15 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values19 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %15, i32 0, i32 1
  %16 = load %struct._GValue*, %struct._GValue** %values19, align 8
  %arrayidx20 = getelementptr inbounds %struct._GValue, %struct._GValue* %16, i64 7
  %call21 = call double @g_value_get_double(%struct._GValue* %arrayidx20)
  store double %call21, double* %feather_radius, align 8
  %17 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %17, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %18 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call22 = call %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage* %18)
  %19 = load double, double* %x, align 8
  %conv = fptosi double %19 to i32
  %20 = load double, double* %y, align 8
  %conv23 = fptosi double %20 to i32
  %21 = load double, double* %width, align 8
  %conv24 = fptosi double %21 to i32
  %22 = load double, double* %height, align 8
  %conv25 = fptosi double %22 to i32
  %23 = load i32, i32* %operation, align 4
  %24 = load i32, i32* %feather, align 4
  %25 = load double, double* %feather_radius, align 8
  %26 = load double, double* %feather_radius, align 8
  call void @gimp_channel_select_rectangle(%struct._GimpChannel* %call22, i32 %conv, i32 %conv23, i32 %conv24, i32 %conv25, i32 %23, i32 %24, double %25, double %26, i32 1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %27 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %28 = load i32, i32* %success, align 4
  %29 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool26 = icmp ne %struct._GError** %29, null
  br i1 %tobool26, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %30 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %31 = load %struct._GError*, %struct._GError** %30, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %31, %cond.true ], [ null, %cond.false ]
  %call27 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %27, i32 %28, %struct._GError* %cond)
  ret %struct._GValueArray* %call27
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @round_rect_select_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %image = alloca %struct._GimpImage*, align 8
  %x = alloca double, align 8
  %y = alloca double, align 8
  %width = alloca double, align 8
  %height = alloca double, align 8
  %corner_radius_x = alloca double, align 8
  %corner_radius_y = alloca double, align 8
  %operation = alloca i32, align 4
  %antialias = alloca i32, align 4
  %feather = alloca i32, align 4
  %feather_radius_x = alloca double, align 8
  %feather_radius_y = alloca double, align 8
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
  store double %call3, double* %x, align 8
  %5 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values4 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %5, i32 0, i32 1
  %6 = load %struct._GValue*, %struct._GValue** %values4, align 8
  %arrayidx5 = getelementptr inbounds %struct._GValue, %struct._GValue* %6, i64 2
  %call6 = call double @g_value_get_double(%struct._GValue* %arrayidx5)
  store double %call6, double* %y, align 8
  %7 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values7 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %7, i32 0, i32 1
  %8 = load %struct._GValue*, %struct._GValue** %values7, align 8
  %arrayidx8 = getelementptr inbounds %struct._GValue, %struct._GValue* %8, i64 3
  %call9 = call double @g_value_get_double(%struct._GValue* %arrayidx8)
  store double %call9, double* %width, align 8
  %9 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values10 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %9, i32 0, i32 1
  %10 = load %struct._GValue*, %struct._GValue** %values10, align 8
  %arrayidx11 = getelementptr inbounds %struct._GValue, %struct._GValue* %10, i64 4
  %call12 = call double @g_value_get_double(%struct._GValue* %arrayidx11)
  store double %call12, double* %height, align 8
  %11 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values13 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %11, i32 0, i32 1
  %12 = load %struct._GValue*, %struct._GValue** %values13, align 8
  %arrayidx14 = getelementptr inbounds %struct._GValue, %struct._GValue* %12, i64 5
  %call15 = call double @g_value_get_double(%struct._GValue* %arrayidx14)
  store double %call15, double* %corner_radius_x, align 8
  %13 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values16 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %13, i32 0, i32 1
  %14 = load %struct._GValue*, %struct._GValue** %values16, align 8
  %arrayidx17 = getelementptr inbounds %struct._GValue, %struct._GValue* %14, i64 6
  %call18 = call double @g_value_get_double(%struct._GValue* %arrayidx17)
  store double %call18, double* %corner_radius_y, align 8
  %15 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values19 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %15, i32 0, i32 1
  %16 = load %struct._GValue*, %struct._GValue** %values19, align 8
  %arrayidx20 = getelementptr inbounds %struct._GValue, %struct._GValue* %16, i64 7
  %call21 = call i32 @g_value_get_enum(%struct._GValue* %arrayidx20)
  store i32 %call21, i32* %operation, align 4
  %17 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values22 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %17, i32 0, i32 1
  %18 = load %struct._GValue*, %struct._GValue** %values22, align 8
  %arrayidx23 = getelementptr inbounds %struct._GValue, %struct._GValue* %18, i64 8
  %call24 = call i32 @g_value_get_boolean(%struct._GValue* %arrayidx23)
  store i32 %call24, i32* %antialias, align 4
  %19 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values25 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %19, i32 0, i32 1
  %20 = load %struct._GValue*, %struct._GValue** %values25, align 8
  %arrayidx26 = getelementptr inbounds %struct._GValue, %struct._GValue* %20, i64 9
  %call27 = call i32 @g_value_get_boolean(%struct._GValue* %arrayidx26)
  store i32 %call27, i32* %feather, align 4
  %21 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values28 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %21, i32 0, i32 1
  %22 = load %struct._GValue*, %struct._GValue** %values28, align 8
  %arrayidx29 = getelementptr inbounds %struct._GValue, %struct._GValue* %22, i64 10
  %call30 = call double @g_value_get_double(%struct._GValue* %arrayidx29)
  store double %call30, double* %feather_radius_x, align 8
  %23 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values31 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %23, i32 0, i32 1
  %24 = load %struct._GValue*, %struct._GValue** %values31, align 8
  %arrayidx32 = getelementptr inbounds %struct._GValue, %struct._GValue* %24, i64 11
  %call33 = call double @g_value_get_double(%struct._GValue* %arrayidx32)
  store double %call33, double* %feather_radius_y, align 8
  %25 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %25, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %26 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call34 = call %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage* %26)
  %27 = load double, double* %x, align 8
  %conv = fptosi double %27 to i32
  %28 = load double, double* %y, align 8
  %conv35 = fptosi double %28 to i32
  %29 = load double, double* %width, align 8
  %conv36 = fptosi double %29 to i32
  %30 = load double, double* %height, align 8
  %conv37 = fptosi double %30 to i32
  %31 = load double, double* %corner_radius_x, align 8
  %32 = load double, double* %corner_radius_y, align 8
  %33 = load i32, i32* %operation, align 4
  %34 = load i32, i32* %antialias, align 4
  %35 = load i32, i32* %feather, align 4
  %36 = load double, double* %feather_radius_x, align 8
  %37 = load double, double* %feather_radius_y, align 8
  call void @gimp_channel_select_round_rect(%struct._GimpChannel* %call34, i32 %conv, i32 %conv35, i32 %conv36, i32 %conv37, double %31, double %32, i32 %33, i32 %34, i32 %35, double %36, double %37, i32 1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %38 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %39 = load i32, i32* %success, align 4
  %40 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool38 = icmp ne %struct._GError** %40, null
  br i1 %tobool38, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %41 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %42 = load %struct._GError*, %struct._GError** %41, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %42, %cond.true ], [ null, %cond.false ]
  %call39 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %38, i32 %39, %struct._GError* %cond)
  ret %struct._GValueArray* %call39
}

declare %struct._GimpDrawable* @gimp_value_get_drawable(%struct._GValue*, %struct._Gimp*) #1

declare void @gimp_value_get_rgb(%struct._GValue*, %struct._GimpRGB*) #1

declare i32 @g_value_get_int(%struct._GValue*) #1

declare i32 @g_value_get_enum(%struct._GValue*) #1

declare i32 @g_value_get_boolean(%struct._GValue*) #1

declare double @g_value_get_double(%struct._GValue*) #1

declare %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_item_get_type() #2

declare void @gimp_channel_select_by_color(%struct._GimpChannel*, %struct._GimpDrawable*, i32, %struct._GimpRGB*, i32, i32, i32, i32, i32, i32, double, double) #1

declare %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage*) #1

declare %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure*, i32, %struct._GError*) #1

declare %struct._GimpImage* @gimp_value_get_image(%struct._GValue*, %struct._Gimp*) #1

declare void @gimp_channel_select_ellipse(%struct._GimpChannel*, i32, i32, i32, i32, i32, i32, i32, double, double, i32) #1

declare double* @gimp_value_get_floatarray(%struct._GValue*) #1

declare void @gimp_channel_select_polygon(%struct._GimpChannel*, i8*, i32, %struct._GimpVector2*, i32, i32, i32, double, double, i32) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #3

declare void @gimp_channel_select_fuzzy(%struct._GimpChannel*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, double) #1

declare void @gimp_channel_select_rectangle(%struct._GimpChannel*, i32, i32, i32, i32, i32, i32, double, double, i32) #1

declare void @gimp_channel_select_round_rect(%struct._GimpChannel*, i32, i32, i32, i32, double, double, i32, i32, i32, double, double, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
