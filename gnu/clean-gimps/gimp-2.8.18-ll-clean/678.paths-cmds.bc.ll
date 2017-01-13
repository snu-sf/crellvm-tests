; ModuleID = './app/pdb/paths-cmds.bc'
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
%struct._GimpContext = type { %struct._GimpViewable, %struct._Gimp*, %struct._GimpContext*, i32, i32, %struct._GimpImage*, i8*, %struct._GimpToolInfo*, i8*, %struct._GimpPaintInfo*, i8*, %struct._GimpRGB, %struct._GimpRGB, double, i32, %struct._GimpBrush*, i8*, %struct._GimpDynamics*, i8*, %struct._GimpPattern*, i8*, %struct._GimpGradient*, i8*, %struct._GimpPalette*, i8*, %struct._GimpToolPreset*, i8*, %struct._GimpFont*, i8*, %struct._GimpBuffer*, i8*, %struct._GimpImagefile*, i8*, %struct._GimpTemplate*, i8* }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpImage = type { %struct._GimpViewable, %struct._Gimp* }
%struct._GimpToolInfo = type opaque
%struct._GimpPaintInfo = type opaque
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpBrush = type opaque
%struct._GimpDynamics = type opaque
%struct._GimpPattern = type opaque
%struct._GimpGradient = type opaque
%struct._GimpPalette = type opaque
%struct._GimpToolPreset = type opaque
%struct._GimpFont = type opaque
%struct._GimpBuffer = type opaque
%struct._GimpImagefile = type opaque
%struct._GimpTemplate = type opaque
%struct._GimpProgress = type opaque
%struct._GValueArray = type { i32, %struct._GValue*, i32 }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GError = type { i32, i32, i8* }
%struct._GimpContainer = type { %struct._GimpObject, %struct._GimpContainerPriv* }
%struct._GimpContainerPriv = type opaque
%struct._GimpVectors = type { %struct._GimpItem, %struct._GList*, i32, i32, double, i8**, i32, i32, double, double, double, double }
%struct._GimpItem = type { %struct._GimpViewable }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpVectorsCompatPoint = type { i32, double, double }
%struct._GimpDrawable = type opaque
%struct._GimpStrokeOptions = type { %struct._GimpFillOptions }
%struct._GimpFillOptions = type { %struct._GimpContext }
%struct._GimpPaintOptions = type opaque
%struct._GimpPDBContext = type { %struct._GimpContext, i32, i32, double, double, i32, i32, double, i32, i32, i32, i32, i32, %struct._GimpContainer* }
%struct._GimpConfig = type opaque
%struct._GimpStroke = type { %struct._GimpObject, i32, %struct._GList*, i32 }
%struct._GimpCoords = type { double, double, double, double, double, double, double, double }

@.str = private unnamed_addr constant [15 x i8] c"gimp-path-list\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"Deprecated: Use 'gimp-image-get-vectors' instead.\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"gimp-image-get-vectors\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"The image to list the paths from\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"num-paths\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"num paths\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"The number of paths returned.\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"path-list\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"path list\00", align 1
@.str.11 = private unnamed_addr constant [43 x i8] c"List of the paths belonging to this image.\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"gimp-path-get-current\00", align 1
@.str.13 = private unnamed_addr constant [57 x i8] c"Deprecated: Use 'gimp-image-get-active-vectors' instead.\00", align 1
@.str.14 = private unnamed_addr constant [30 x i8] c"gimp-image-get-active-vectors\00", align 1
@.str.15 = private unnamed_addr constant [39 x i8] c"The image to get the current path from\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.17 = private unnamed_addr constant [30 x i8] c"The name of the current path.\00", align 1
@.str.18 = private unnamed_addr constant [22 x i8] c"gimp-path-set-current\00", align 1
@.str.19 = private unnamed_addr constant [57 x i8] c"Deprecated: Use 'gimp-image-set-active-vectors' instead.\00", align 1
@.str.20 = private unnamed_addr constant [30 x i8] c"gimp-image-set-active-vectors\00", align 1
@.str.21 = private unnamed_addr constant [46 x i8] c"The image in which a path will become current\00", align 1
@.str.22 = private unnamed_addr constant [38 x i8] c"The name of the path to make current.\00", align 1
@.str.23 = private unnamed_addr constant [17 x i8] c"gimp-path-delete\00", align 1
@.str.24 = private unnamed_addr constant [53 x i8] c"Deprecated: Use 'gimp-image-remove-vectors' instead.\00", align 1
@.str.25 = private unnamed_addr constant [26 x i8] c"gimp-image-remove-vectors\00", align 1
@.str.26 = private unnamed_addr constant [34 x i8] c"The image to delete the path from\00", align 1
@.str.27 = private unnamed_addr constant [32 x i8] c"The name of the path to delete.\00", align 1
@.str.28 = private unnamed_addr constant [21 x i8] c"gimp-path-get-points\00", align 1
@.str.29 = private unnamed_addr constant [58 x i8] c"Deprecated: Use 'gimp-vectors-stroke-get-points' instead.\00", align 1
@.str.30 = private unnamed_addr constant [31 x i8] c"gimp-vectors-stroke-get-points\00", align 1
@.str.31 = private unnamed_addr constant [52 x i8] c"The name of the path whose points should be listed.\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"path-type\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"path type\00", align 1
@.str.34 = private unnamed_addr constant [72 x i8] c"The type of the path. Currently only one type (1 = Bezier) is supported\00", align 1
@.str.35 = private unnamed_addr constant [12 x i8] c"path-closed\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c"path closed\00", align 1
@.str.37 = private unnamed_addr constant [63 x i8] c"Return if the path is closed. (0 = path open, 1 = path closed)\00", align 1
@.str.38 = private unnamed_addr constant [23 x i8] c"num-path-point-details\00", align 1
@.str.39 = private unnamed_addr constant [23 x i8] c"num path point details\00", align 1
@.str.40 = private unnamed_addr constant [84 x i8] c"The number of points returned. Each point is made up of (x, y, pnt_type) of floats.\00", align 1
@.str.41 = private unnamed_addr constant [13 x i8] c"points-pairs\00", align 1
@.str.42 = private unnamed_addr constant [13 x i8] c"points pairs\00", align 1
@.str.43 = private unnamed_addr constant [330 x i8] c"The points in the path represented as 3 floats. The first is the x pos, next is the y pos, last is the type of the pnt. The type field is dependant on the path type. For beziers (type 1 paths) the type can either be (1.0 = BEZIER_ANCHOR, 2.0 = BEZIER_CONTROL, 3.0 = BEZIER_MOVE). Note all points are returned in pixel resolution.\00", align 1
@.str.44 = private unnamed_addr constant [21 x i8] c"gimp-path-set-points\00", align 1
@.str.45 = private unnamed_addr constant [63 x i8] c"Deprecated: Use 'gimp-vectors-stroke-new-from-points' instead.\00", align 1
@.str.46 = private unnamed_addr constant [36 x i8] c"gimp-vectors-stroke-new-from-points\00", align 1
@.str.47 = private unnamed_addr constant [30 x i8] c"The image to set the paths in\00", align 1
@.str.48 = private unnamed_addr constant [217 x i8] c"The name of the path to create. If it exists then a unique name will be created - query the list of paths if you want to make sure that the name of the path you create is unique. This will be set as the current path.\00", align 1
@.str.49 = private unnamed_addr constant [6 x i8] c"ptype\00", align 1
@.str.50 = private unnamed_addr constant [73 x i8] c"The type of the path. Currently only one type (1 = Bezier) is supported.\00", align 1
@.str.51 = private unnamed_addr constant [16 x i8] c"num-path-points\00", align 1
@.str.52 = private unnamed_addr constant [16 x i8] c"num path points\00", align 1
@.str.53 = private unnamed_addr constant [663 x i8] c"The number of elements in the array, i.e. the number of points in the path * 3. Each point is made up of (x, y, type) of floats. Currently only the creation of bezier curves is allowed. The type parameter must be set to (1) to indicate a BEZIER type curve. Note that for BEZIER curves, points must be given in the following order: ACCACCAC... If the path is not closed the last control point is missed off. Points consist of three control points (control/anchor/control) so for a curve that is not closed there must be at least two points passed (2 x,y pairs). If (num_path_points/3) % 3 = 0 then the path is assumed to be closed and the points are ACCACCACCACC.\00", align 1
@.str.54 = private unnamed_addr constant [329 x i8] c"The points in the path represented as 3 floats. The first is the x pos, next is the y pos, last is the type of the pnt. The type field is dependant on the path type. For beziers (type 1 paths) the type can either be (1.0 = BEZIER_ANCHOR, 2.0 = BEZIER_CONTROL, 3.0= BEZIER_MOVE). Note all points are returned in pixel resolution.\00", align 1
@.str.55 = private unnamed_addr constant [25 x i8] c"gimp-path-stroke-current\00", align 1
@.str.56 = private unnamed_addr constant [52 x i8] c"Deprecated: Use 'gimp-edit-stroke-vectors' instead.\00", align 1
@.str.57 = private unnamed_addr constant [25 x i8] c"gimp-edit-stroke-vectors\00", align 1
@.str.58 = private unnamed_addr constant [44 x i8] c"The image which contains the path to stroke\00", align 1
@.str.59 = private unnamed_addr constant [28 x i8] c"gimp-path-get-point-at-dist\00", align 1
@.str.60 = private unnamed_addr constant [65 x i8] c"Deprecated: Use 'gimp-vectors-stroke-get-point-at-dist' instead.\00", align 1
@.str.61 = private unnamed_addr constant [38 x i8] c"gimp-vectors-stroke-get-point-at-dist\00", align 1
@.str.62 = private unnamed_addr constant [31 x i8] c"The image the paths belongs to\00", align 1
@.str.63 = private unnamed_addr constant [9 x i8] c"distance\00", align 1
@.str.64 = private unnamed_addr constant [29 x i8] c"The distance along the path.\00", align 1
@.str.65 = private unnamed_addr constant [8 x i8] c"x-point\00", align 1
@.str.66 = private unnamed_addr constant [8 x i8] c"x point\00", align 1
@.str.67 = private unnamed_addr constant [29 x i8] c"The x position of the point.\00", align 1
@.str.68 = private unnamed_addr constant [8 x i8] c"y-point\00", align 1
@.str.69 = private unnamed_addr constant [8 x i8] c"y point\00", align 1
@.str.70 = private unnamed_addr constant [29 x i8] c"The y position of the point.\00", align 1
@.str.71 = private unnamed_addr constant [6 x i8] c"slope\00", align 1
@.str.72 = private unnamed_addr constant [44 x i8] c"The slope (dy / dx) at the specified point.\00", align 1
@.str.73 = private unnamed_addr constant [21 x i8] c"gimp-path-get-tattoo\00", align 1
@.str.74 = private unnamed_addr constant [51 x i8] c"Deprecated: Use 'gimp-vectors-get-tattoo' instead.\00", align 1
@.str.75 = private unnamed_addr constant [24 x i8] c"gimp-vectors-get-tattoo\00", align 1
@.str.76 = private unnamed_addr constant [10 x i8] c"The image\00", align 1
@.str.77 = private unnamed_addr constant [54 x i8] c"The name of the path whose tattoo should be obtained.\00", align 1
@.str.78 = private unnamed_addr constant [7 x i8] c"tattoo\00", align 1
@.str.79 = private unnamed_addr constant [43 x i8] c"The tattoo associated with the named path.\00", align 1
@.str.80 = private unnamed_addr constant [21 x i8] c"gimp-path-set-tattoo\00", align 1
@.str.81 = private unnamed_addr constant [51 x i8] c"Deprecated: Use 'gimp-vectors-set-tattoo' instead.\00", align 1
@.str.82 = private unnamed_addr constant [24 x i8] c"gimp-vectors-set-tattoo\00", align 1
@.str.83 = private unnamed_addr constant [48 x i8] c"the name of the path whose tattoo should be set\00", align 1
@.str.84 = private unnamed_addr constant [11 x i8] c"tattovalue\00", align 1
@.str.85 = private unnamed_addr constant [106 x i8] c"The tattoo associated with the name path. Only values returned from 'path_get_tattoo' should be used here\00", align 1
@.str.86 = private unnamed_addr constant [24 x i8] c"gimp-get-path-by-tattoo\00", align 1
@.str.87 = private unnamed_addr constant [60 x i8] c"Deprecated: Use 'gimp-image-get-vectors-by-tattoo' instead.\00", align 1
@.str.88 = private unnamed_addr constant [33 x i8] c"gimp-image-get-vectors-by-tattoo\00", align 1
@.str.89 = private unnamed_addr constant [33 x i8] c"The tattoo of the required path.\00", align 1
@.str.90 = private unnamed_addr constant [48 x i8] c"The name of the path with the specified tattoo.\00", align 1
@.str.91 = private unnamed_addr constant [21 x i8] c"gimp-path-get-locked\00", align 1
@.str.92 = private unnamed_addr constant [51 x i8] c"Deprecated: Use 'gimp-vectors-get-linked' instead.\00", align 1
@.str.93 = private unnamed_addr constant [24 x i8] c"gimp-vectors-get-linked\00", align 1
@.str.94 = private unnamed_addr constant [61 x i8] c"The name of the path whose locked status should be obtained.\00", align 1
@.str.95 = private unnamed_addr constant [7 x i8] c"locked\00", align 1
@.str.96 = private unnamed_addr constant [44 x i8] c"TRUE if the path is locked, FALSE otherwise\00", align 1
@.str.97 = private unnamed_addr constant [21 x i8] c"gimp-path-set-locked\00", align 1
@.str.98 = private unnamed_addr constant [51 x i8] c"Deprecated: Use 'gimp-vectors-set-linked' instead.\00", align 1
@.str.99 = private unnamed_addr constant [24 x i8] c"gimp-vectors-set-linked\00", align 1
@.str.100 = private unnamed_addr constant [55 x i8] c"the name of the path whose locked status should be set\00", align 1
@.str.101 = private unnamed_addr constant [27 x i8] c"Whether the path is locked\00", align 1
@.str.102 = private unnamed_addr constant [23 x i8] c"gimp-path-to-selection\00", align 1
@.str.103 = private unnamed_addr constant [53 x i8] c"Deprecated: Use 'gimp-vectors-to-selection' instead.\00", align 1
@.str.104 = private unnamed_addr constant [26 x i8] c"gimp-vectors-to-selection\00", align 1
@.str.105 = private unnamed_addr constant [58 x i8] c"The name of the path which should be made into selection.\00", align 1
@.str.106 = private unnamed_addr constant [3 x i8] c"op\00", align 1
@.str.107 = private unnamed_addr constant [45 x i8] c"The desired operation with current selection\00", align 1
@.str.108 = private unnamed_addr constant [10 x i8] c"antialias\00", align 1
@.str.109 = private unnamed_addr constant [21 x i8] c"Antialias selection.\00", align 1
@.str.110 = private unnamed_addr constant [8 x i8] c"feather\00", align 1
@.str.111 = private unnamed_addr constant [19 x i8] c"Feather selection.\00", align 1
@.str.112 = private unnamed_addr constant [17 x i8] c"feather-radius-x\00", align 1
@.str.113 = private unnamed_addr constant [17 x i8] c"feather radius x\00", align 1
@.str.114 = private unnamed_addr constant [18 x i8] c"Feather radius x.\00", align 1
@.str.115 = private unnamed_addr constant [17 x i8] c"feather-radius-y\00", align 1
@.str.116 = private unnamed_addr constant [17 x i8] c"feather radius y\00", align 1
@.str.117 = private unnamed_addr constant [18 x i8] c"Feather radius y.\00", align 1
@.str.118 = private unnamed_addr constant [17 x i8] c"gimp-path-import\00", align 1
@.str.119 = private unnamed_addr constant [57 x i8] c"Deprecated: Use 'gimp-vectors-import-from-file' instead.\00", align 1
@.str.120 = private unnamed_addr constant [30 x i8] c"gimp-vectors-import-from-file\00", align 1
@.str.121 = private unnamed_addr constant [9 x i8] c"filename\00", align 1
@.str.122 = private unnamed_addr constant [36 x i8] c"The name of the SVG file to import.\00", align 1
@.str.123 = private unnamed_addr constant [6 x i8] c"merge\00", align 1
@.str.124 = private unnamed_addr constant [42 x i8] c"Merge paths into a single vectors object.\00", align 1
@.str.125 = private unnamed_addr constant [6 x i8] c"scale\00", align 1
@.str.126 = private unnamed_addr constant [35 x i8] c"Scale the SVG to image dimensions.\00", align 1
@.str.127 = private unnamed_addr constant [7 x i8] c"method\00", align 1

; Function Attrs: nounwind uwtable
define void @register_paths_procs(%struct._GimpPDB* %pdb) #0 {
entry:
  %pdb.addr = alloca %struct._GimpPDB*, align 8
  %procedure = alloca %struct._GimpProcedure*, align 8
  store %struct._GimpPDB* %pdb, %struct._GimpPDB** %pdb.addr, align 8
  %call = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @path_list_invoker)
  store %struct._GimpProcedure* %call, %struct._GimpProcedure** %procedure, align 8
  %0 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %1 = bitcast %struct._GimpProcedure* %0 to %struct._GTypeInstance*
  %call1 = call i64 @gimp_object_get_type() #3
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call1)
  %2 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %2, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0))
  %3 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %3, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i32 0, i32 0))
  %4 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %5 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %5, i32 0, i32 1
  %6 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call3 = call %struct._GParamSpec* @gimp_param_spec_image_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i32 0, i32 0), %struct._Gimp* %6, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %4, %struct._GParamSpec* %call3)
  %7 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call4 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i32 0, i32 0), i32 0, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %7, %struct._GParamSpec* %call4)
  %8 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call5 = call %struct._GParamSpec* @gimp_param_spec_string_array(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.11, i32 0, i32 0), i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %8, %struct._GParamSpec* %call5)
  %9 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %10 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %9, %struct._GimpProcedure* %10)
  %11 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %12 = bitcast %struct._GimpProcedure* %11 to i8*
  call void @g_object_unref(i8* %12)
  %call6 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @path_get_current_invoker)
  store %struct._GimpProcedure* %call6, %struct._GimpProcedure** %procedure, align 8
  %13 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %14 = bitcast %struct._GimpProcedure* %13 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_object_get_type() #3
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call7)
  %15 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %15, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i32 0, i32 0))
  %16 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %16, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i32 0, i32 0))
  %17 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %18 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp9 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %18, i32 0, i32 1
  %19 = load %struct._Gimp*, %struct._Gimp** %gimp9, align 8
  %call10 = call %struct._GParamSpec* @gimp_param_spec_image_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.15, i32 0, i32 0), %struct._Gimp* %19, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %17, %struct._GParamSpec* %call10)
  %20 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call11 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.17, i32 0, i32 0), i32 0, i32 0, i32 0, i8* null, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %20, %struct._GParamSpec* %call11)
  %21 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %22 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %21, %struct._GimpProcedure* %22)
  %23 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %24 = bitcast %struct._GimpProcedure* %23 to i8*
  call void @g_object_unref(i8* %24)
  %call12 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @path_set_current_invoker)
  store %struct._GimpProcedure* %call12, %struct._GimpProcedure** %procedure, align 8
  %25 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %26 = bitcast %struct._GimpProcedure* %25 to %struct._GTypeInstance*
  %call13 = call i64 @gimp_object_get_type() #3
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %26, i64 %call13)
  %27 = bitcast %struct._GTypeInstance* %call14 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %27, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18, i32 0, i32 0))
  %28 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %28, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.20, i32 0, i32 0))
  %29 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %30 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp15 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %30, i32 0, i32 1
  %31 = load %struct._Gimp*, %struct._Gimp** %gimp15, align 8
  %call16 = call %struct._GParamSpec* @gimp_param_spec_image_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.21, i32 0, i32 0), %struct._Gimp* %31, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %29, %struct._GParamSpec* %call16)
  %32 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call17 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.22, i32 0, i32 0), i32 0, i32 0, i32 0, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %32, %struct._GParamSpec* %call17)
  %33 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %34 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %33, %struct._GimpProcedure* %34)
  %35 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %36 = bitcast %struct._GimpProcedure* %35 to i8*
  call void @g_object_unref(i8* %36)
  %call18 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @path_delete_invoker)
  store %struct._GimpProcedure* %call18, %struct._GimpProcedure** %procedure, align 8
  %37 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %38 = bitcast %struct._GimpProcedure* %37 to %struct._GTypeInstance*
  %call19 = call i64 @gimp_object_get_type() #3
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %38, i64 %call19)
  %39 = bitcast %struct._GTypeInstance* %call20 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %39, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.23, i32 0, i32 0))
  %40 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %40, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.25, i32 0, i32 0))
  %41 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %42 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp21 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %42, i32 0, i32 1
  %43 = load %struct._Gimp*, %struct._Gimp** %gimp21, align 8
  %call22 = call %struct._GParamSpec* @gimp_param_spec_image_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i32 0, i32 0), %struct._Gimp* %43, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %41, %struct._GParamSpec* %call22)
  %44 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call23 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.27, i32 0, i32 0), i32 0, i32 0, i32 0, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %44, %struct._GParamSpec* %call23)
  %45 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %46 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %45, %struct._GimpProcedure* %46)
  %47 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %48 = bitcast %struct._GimpProcedure* %47 to i8*
  call void @g_object_unref(i8* %48)
  %call24 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @path_get_points_invoker)
  store %struct._GimpProcedure* %call24, %struct._GimpProcedure** %procedure, align 8
  %49 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %50 = bitcast %struct._GimpProcedure* %49 to %struct._GTypeInstance*
  %call25 = call i64 @gimp_object_get_type() #3
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %50, i64 %call25)
  %51 = bitcast %struct._GTypeInstance* %call26 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %51, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.28, i32 0, i32 0))
  %52 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %52, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.30, i32 0, i32 0))
  %53 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %54 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp27 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %54, i32 0, i32 1
  %55 = load %struct._Gimp*, %struct._Gimp** %gimp27, align 8
  %call28 = call %struct._GParamSpec* @gimp_param_spec_image_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i32 0, i32 0), %struct._Gimp* %55, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %53, %struct._GParamSpec* %call28)
  %56 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call29 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.31, i32 0, i32 0), i32 0, i32 0, i32 0, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %56, %struct._GParamSpec* %call29)
  %57 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call30 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.34, i32 0, i32 0), i32 -2147483648, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %57, %struct._GParamSpec* %call30)
  %58 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call31 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.37, i32 0, i32 0), i32 -2147483648, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %58, %struct._GParamSpec* %call31)
  %59 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call32 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.40, i32 0, i32 0), i32 0, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %59, %struct._GParamSpec* %call32)
  %60 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call33 = call %struct._GParamSpec* @gimp_param_spec_float_array(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([330 x i8], [330 x i8]* @.str.43, i32 0, i32 0), i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %60, %struct._GParamSpec* %call33)
  %61 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %62 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %61, %struct._GimpProcedure* %62)
  %63 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %64 = bitcast %struct._GimpProcedure* %63 to i8*
  call void @g_object_unref(i8* %64)
  %call34 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @path_set_points_invoker)
  store %struct._GimpProcedure* %call34, %struct._GimpProcedure** %procedure, align 8
  %65 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %66 = bitcast %struct._GimpProcedure* %65 to %struct._GTypeInstance*
  %call35 = call i64 @gimp_object_get_type() #3
  %call36 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %66, i64 %call35)
  %67 = bitcast %struct._GTypeInstance* %call36 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %67, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.44, i32 0, i32 0))
  %68 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %68, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.46, i32 0, i32 0))
  %69 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %70 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp37 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %70, i32 0, i32 1
  %71 = load %struct._Gimp*, %struct._Gimp** %gimp37, align 8
  %call38 = call %struct._GParamSpec* @gimp_param_spec_image_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.47, i32 0, i32 0), %struct._Gimp* %71, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %69, %struct._GParamSpec* %call38)
  %72 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call39 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([217 x i8], [217 x i8]* @.str.48, i32 0, i32 0), i32 0, i32 0, i32 0, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %72, %struct._GParamSpec* %call39)
  %73 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call40 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.50, i32 0, i32 0), i32 -2147483648, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %73, %struct._GParamSpec* %call40)
  %74 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call41 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([663 x i8], [663 x i8]* @.str.53, i32 0, i32 0), i32 0, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %74, %struct._GParamSpec* %call41)
  %75 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call42 = call %struct._GParamSpec* @gimp_param_spec_float_array(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([329 x i8], [329 x i8]* @.str.54, i32 0, i32 0), i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %75, %struct._GParamSpec* %call42)
  %76 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %77 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %76, %struct._GimpProcedure* %77)
  %78 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %79 = bitcast %struct._GimpProcedure* %78 to i8*
  call void @g_object_unref(i8* %79)
  %call43 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @path_stroke_current_invoker)
  store %struct._GimpProcedure* %call43, %struct._GimpProcedure** %procedure, align 8
  %80 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %81 = bitcast %struct._GimpProcedure* %80 to %struct._GTypeInstance*
  %call44 = call i64 @gimp_object_get_type() #3
  %call45 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %81, i64 %call44)
  %82 = bitcast %struct._GTypeInstance* %call45 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %82, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.55, i32 0, i32 0))
  %83 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %83, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.57, i32 0, i32 0))
  %84 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %85 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp46 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %85, i32 0, i32 1
  %86 = load %struct._Gimp*, %struct._Gimp** %gimp46, align 8
  %call47 = call %struct._GParamSpec* @gimp_param_spec_image_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.58, i32 0, i32 0), %struct._Gimp* %86, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %84, %struct._GParamSpec* %call47)
  %87 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %88 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %87, %struct._GimpProcedure* %88)
  %89 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %90 = bitcast %struct._GimpProcedure* %89 to i8*
  call void @g_object_unref(i8* %90)
  %call48 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @path_get_point_at_dist_invoker)
  store %struct._GimpProcedure* %call48, %struct._GimpProcedure** %procedure, align 8
  %91 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %92 = bitcast %struct._GimpProcedure* %91 to %struct._GTypeInstance*
  %call49 = call i64 @gimp_object_get_type() #3
  %call50 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %92, i64 %call49)
  %93 = bitcast %struct._GTypeInstance* %call50 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %93, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.59, i32 0, i32 0))
  %94 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %94, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.61, i32 0, i32 0))
  %95 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %96 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp51 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %96, i32 0, i32 1
  %97 = load %struct._Gimp*, %struct._Gimp** %gimp51, align 8
  %call52 = call %struct._GParamSpec* @gimp_param_spec_image_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.62, i32 0, i32 0), %struct._Gimp* %97, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %95, %struct._GParamSpec* %call52)
  %98 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call53 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.64, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %98, %struct._GParamSpec* %call53)
  %99 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call54 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.67, i32 0, i32 0), i32 -2147483648, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %99, %struct._GParamSpec* %call54)
  %100 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call55 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.70, i32 0, i32 0), i32 -2147483648, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %100, %struct._GParamSpec* %call55)
  %101 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call56 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.72, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %101, %struct._GParamSpec* %call56)
  %102 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %103 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %102, %struct._GimpProcedure* %103)
  %104 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %105 = bitcast %struct._GimpProcedure* %104 to i8*
  call void @g_object_unref(i8* %105)
  %call57 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @path_get_tattoo_invoker)
  store %struct._GimpProcedure* %call57, %struct._GimpProcedure** %procedure, align 8
  %106 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %107 = bitcast %struct._GimpProcedure* %106 to %struct._GTypeInstance*
  %call58 = call i64 @gimp_object_get_type() #3
  %call59 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %107, i64 %call58)
  %108 = bitcast %struct._GTypeInstance* %call59 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %108, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.73, i32 0, i32 0))
  %109 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %109, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.73, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.74, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.74, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.75, i32 0, i32 0))
  %110 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %111 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp60 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %111, i32 0, i32 1
  %112 = load %struct._Gimp*, %struct._Gimp** %gimp60, align 8
  %call61 = call %struct._GParamSpec* @gimp_param_spec_image_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.76, i32 0, i32 0), %struct._Gimp* %112, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %110, %struct._GParamSpec* %call61)
  %113 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call62 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.77, i32 0, i32 0), i32 0, i32 0, i32 0, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %113, %struct._GParamSpec* %call62)
  %114 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call63 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.79, i32 0, i32 0), i32 -2147483648, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %114, %struct._GParamSpec* %call63)
  %115 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %116 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %115, %struct._GimpProcedure* %116)
  %117 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %118 = bitcast %struct._GimpProcedure* %117 to i8*
  call void @g_object_unref(i8* %118)
  %call64 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @path_set_tattoo_invoker)
  store %struct._GimpProcedure* %call64, %struct._GimpProcedure** %procedure, align 8
  %119 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %120 = bitcast %struct._GimpProcedure* %119 to %struct._GTypeInstance*
  %call65 = call i64 @gimp_object_get_type() #3
  %call66 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %120, i64 %call65)
  %121 = bitcast %struct._GTypeInstance* %call66 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %121, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.80, i32 0, i32 0))
  %122 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %122, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.80, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.81, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.81, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.82, i32 0, i32 0))
  %123 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %124 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp67 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %124, i32 0, i32 1
  %125 = load %struct._Gimp*, %struct._Gimp** %gimp67, align 8
  %call68 = call %struct._GParamSpec* @gimp_param_spec_image_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.76, i32 0, i32 0), %struct._Gimp* %125, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %123, %struct._GParamSpec* %call68)
  %126 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call69 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.83, i32 0, i32 0), i32 0, i32 0, i32 0, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %126, %struct._GParamSpec* %call69)
  %127 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call70 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.84, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.84, i32 0, i32 0), i8* getelementptr inbounds ([106 x i8], [106 x i8]* @.str.85, i32 0, i32 0), i32 -2147483648, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %127, %struct._GParamSpec* %call70)
  %128 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %129 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %128, %struct._GimpProcedure* %129)
  %130 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %131 = bitcast %struct._GimpProcedure* %130 to i8*
  call void @g_object_unref(i8* %131)
  %call71 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @get_path_by_tattoo_invoker)
  store %struct._GimpProcedure* %call71, %struct._GimpProcedure** %procedure, align 8
  %132 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %133 = bitcast %struct._GimpProcedure* %132 to %struct._GTypeInstance*
  %call72 = call i64 @gimp_object_get_type() #3
  %call73 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %133, i64 %call72)
  %134 = bitcast %struct._GTypeInstance* %call73 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %134, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.86, i32 0, i32 0))
  %135 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %135, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.86, i32 0, i32 0), i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.87, i32 0, i32 0), i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.87, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.88, i32 0, i32 0))
  %136 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %137 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp74 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %137, i32 0, i32 1
  %138 = load %struct._Gimp*, %struct._Gimp** %gimp74, align 8
  %call75 = call %struct._GParamSpec* @gimp_param_spec_image_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.76, i32 0, i32 0), %struct._Gimp* %138, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %136, %struct._GParamSpec* %call75)
  %139 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call76 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.89, i32 0, i32 0), i32 -2147483648, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %139, %struct._GParamSpec* %call76)
  %140 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call77 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.90, i32 0, i32 0), i32 0, i32 0, i32 0, i8* null, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %140, %struct._GParamSpec* %call77)
  %141 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %142 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %141, %struct._GimpProcedure* %142)
  %143 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %144 = bitcast %struct._GimpProcedure* %143 to i8*
  call void @g_object_unref(i8* %144)
  %call78 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @path_get_locked_invoker)
  store %struct._GimpProcedure* %call78, %struct._GimpProcedure** %procedure, align 8
  %145 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %146 = bitcast %struct._GimpProcedure* %145 to %struct._GTypeInstance*
  %call79 = call i64 @gimp_object_get_type() #3
  %call80 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %146, i64 %call79)
  %147 = bitcast %struct._GTypeInstance* %call80 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %147, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.91, i32 0, i32 0))
  %148 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %148, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.91, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.92, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.92, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.93, i32 0, i32 0))
  %149 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %150 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp81 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %150, i32 0, i32 1
  %151 = load %struct._Gimp*, %struct._Gimp** %gimp81, align 8
  %call82 = call %struct._GParamSpec* @gimp_param_spec_image_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.76, i32 0, i32 0), %struct._Gimp* %151, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %149, %struct._GParamSpec* %call82)
  %152 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call83 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.94, i32 0, i32 0), i32 0, i32 0, i32 0, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %152, %struct._GParamSpec* %call83)
  %153 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call84 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.95, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.95, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.96, i32 0, i32 0), i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %153, %struct._GParamSpec* %call84)
  %154 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %155 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %154, %struct._GimpProcedure* %155)
  %156 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %157 = bitcast %struct._GimpProcedure* %156 to i8*
  call void @g_object_unref(i8* %157)
  %call85 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @path_set_locked_invoker)
  store %struct._GimpProcedure* %call85, %struct._GimpProcedure** %procedure, align 8
  %158 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %159 = bitcast %struct._GimpProcedure* %158 to %struct._GTypeInstance*
  %call86 = call i64 @gimp_object_get_type() #3
  %call87 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %159, i64 %call86)
  %160 = bitcast %struct._GTypeInstance* %call87 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %160, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.97, i32 0, i32 0))
  %161 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %161, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.97, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.98, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.98, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.99, i32 0, i32 0))
  %162 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %163 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp88 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %163, i32 0, i32 1
  %164 = load %struct._Gimp*, %struct._Gimp** %gimp88, align 8
  %call89 = call %struct._GParamSpec* @gimp_param_spec_image_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.76, i32 0, i32 0), %struct._Gimp* %164, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %162, %struct._GParamSpec* %call89)
  %165 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call90 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.100, i32 0, i32 0), i32 0, i32 0, i32 0, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %165, %struct._GParamSpec* %call90)
  %166 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call91 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.95, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.95, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.101, i32 0, i32 0), i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %166, %struct._GParamSpec* %call91)
  %167 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %168 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %167, %struct._GimpProcedure* %168)
  %169 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %170 = bitcast %struct._GimpProcedure* %169 to i8*
  call void @g_object_unref(i8* %170)
  %call92 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @path_to_selection_invoker)
  store %struct._GimpProcedure* %call92, %struct._GimpProcedure** %procedure, align 8
  %171 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %172 = bitcast %struct._GimpProcedure* %171 to %struct._GTypeInstance*
  %call93 = call i64 @gimp_object_get_type() #3
  %call94 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %172, i64 %call93)
  %173 = bitcast %struct._GTypeInstance* %call94 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %173, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.102, i32 0, i32 0))
  %174 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %174, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.102, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.103, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.103, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.104, i32 0, i32 0))
  %175 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %176 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp95 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %176, i32 0, i32 1
  %177 = load %struct._Gimp*, %struct._Gimp** %gimp95, align 8
  %call96 = call %struct._GParamSpec* @gimp_param_spec_image_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.76, i32 0, i32 0), %struct._Gimp* %177, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %175, %struct._GParamSpec* %call96)
  %178 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call97 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.105, i32 0, i32 0), i32 0, i32 0, i32 0, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %178, %struct._GParamSpec* %call97)
  %179 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call98 = call i64 @gimp_channel_ops_get_type() #3
  %call99 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.106, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.106, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.107, i32 0, i32 0), i64 %call98, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %179, %struct._GParamSpec* %call99)
  %180 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call100 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.108, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.108, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.109, i32 0, i32 0), i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %180, %struct._GParamSpec* %call100)
  %181 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call101 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.110, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.110, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.111, i32 0, i32 0), i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %181, %struct._GParamSpec* %call101)
  %182 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call102 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.112, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.113, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.114, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %182, %struct._GParamSpec* %call102)
  %183 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call103 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.115, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.116, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.117, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %183, %struct._GParamSpec* %call103)
  %184 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %185 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %184, %struct._GimpProcedure* %185)
  %186 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %187 = bitcast %struct._GimpProcedure* %186 to i8*
  call void @g_object_unref(i8* %187)
  %call104 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @path_import_invoker)
  store %struct._GimpProcedure* %call104, %struct._GimpProcedure** %procedure, align 8
  %188 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %189 = bitcast %struct._GimpProcedure* %188 to %struct._GTypeInstance*
  %call105 = call i64 @gimp_object_get_type() #3
  %call106 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %189, i64 %call105)
  %190 = bitcast %struct._GTypeInstance* %call106 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %190, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.118, i32 0, i32 0))
  %191 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %191, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.118, i32 0, i32 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.119, i32 0, i32 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.119, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.120, i32 0, i32 0))
  %192 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %193 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp107 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %193, i32 0, i32 1
  %194 = load %struct._Gimp*, %struct._Gimp** %gimp107, align 8
  %call108 = call %struct._GParamSpec* @gimp_param_spec_image_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.76, i32 0, i32 0), %struct._Gimp* %194, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %192, %struct._GParamSpec* %call108)
  %195 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call109 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.121, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.121, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.122, i32 0, i32 0), i32 1, i32 0, i32 0, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %195, %struct._GParamSpec* %call109)
  %196 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call110 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.123, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.123, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.124, i32 0, i32 0), i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %196, %struct._GParamSpec* %call110)
  %197 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call111 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.125, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.125, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.126, i32 0, i32 0), i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %197, %struct._GParamSpec* %call111)
  %198 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %199 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %198, %struct._GimpProcedure* %199)
  %200 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %201 = bitcast %struct._GimpProcedure* %200 to i8*
  call void @g_object_unref(i8* %201)
  ret void
}

declare %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)*) #1

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @path_list_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  %num_paths = alloca i32, align 4
  %path_list = alloca i8**, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store i32 0, i32* %num_paths, align 4
  store i8** null, i8*** %path_list, align 8
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %2 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call = call %struct._GimpImage* @gimp_value_get_image(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpImage* %call, %struct._GimpImage** %image, align 8
  %3 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call1 = call %struct._GimpContainer* @gimp_image_get_vectors(%struct._GimpImage* %4)
  %call2 = call i8** @gimp_container_get_name_array(%struct._GimpContainer* %call1, i32* %num_paths)
  store i8** %call2, i8*** %path_list, align 8
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
  br i1 %tobool5, label %if.then.6, label %if.end.11

if.then.6:                                        ; preds = %cond.end
  %11 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values7 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %11, i32 0, i32 1
  %12 = load %struct._GValue*, %struct._GValue** %values7, align 8
  %arrayidx8 = getelementptr inbounds %struct._GValue, %struct._GValue* %12, i64 1
  %13 = load i32, i32* %num_paths, align 4
  call void @g_value_set_int(%struct._GValue* %arrayidx8, i32 %13)
  %14 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values9 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %14, i32 0, i32 1
  %15 = load %struct._GValue*, %struct._GValue** %values9, align 8
  %arrayidx10 = getelementptr inbounds %struct._GValue, %struct._GValue* %15, i64 2
  %16 = load i8**, i8*** %path_list, align 8
  %17 = load i32, i32* %num_paths, align 4
  %conv = sext i32 %17 to i64
  call void @gimp_value_take_stringarray(%struct._GValue* %arrayidx10, i8** %16, i64 %conv)
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.6, %cond.end
  %18 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %18
}

declare void @gimp_object_set_static_name(%struct._GimpObject*, i8*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #2

declare void @gimp_procedure_set_static_strings(%struct._GimpProcedure*, i8*, i8*, i8*, i8*, i8*, i8*, i8*) #1

declare void @gimp_procedure_add_argument(%struct._GimpProcedure*, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @gimp_param_spec_image_id(i8*, i8*, i8*, %struct._Gimp*, i32, i32) #1

declare void @gimp_procedure_add_return_value(%struct._GimpProcedure*, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @gimp_param_spec_int32(i8*, i8*, i8*, i32, i32, i32, i32) #1

declare %struct._GParamSpec* @gimp_param_spec_string_array(i8*, i8*, i8*, i32) #1

declare void @gimp_pdb_register_procedure(%struct._GimpPDB*, %struct._GimpProcedure*) #1

declare void @g_object_unref(i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @path_get_current_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  %name = alloca i8*, align 8
  %vectors = alloca %struct._GimpVectors*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store i8* null, i8** %name, align 8
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %2 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call = call %struct._GimpImage* @gimp_value_get_image(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpImage* %call, %struct._GimpImage** %image, align 8
  %3 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end.6

if.then:                                          ; preds = %entry
  %4 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call1 = call %struct._GimpVectors* @gimp_image_get_active_vectors(%struct._GimpImage* %4)
  store %struct._GimpVectors* %call1, %struct._GimpVectors** %vectors, align 8
  %5 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %tobool2 = icmp ne %struct._GimpVectors* %5, null
  br i1 %tobool2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  %6 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %7 = bitcast %struct._GimpVectors* %6 to i8*
  %call4 = call i8* @gimp_object_get_name(i8* %7)
  %call5 = call noalias i8* @g_strdup(i8* %call4)
  store i8* %call5, i8** %name, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %entry
  %8 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %9 = load i32, i32* %success, align 4
  %10 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool7 = icmp ne %struct._GError** %10, null
  br i1 %tobool7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.6
  %11 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %12 = load %struct._GError*, %struct._GError** %11, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %12, %cond.true ], [ null, %cond.false ]
  %call8 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %8, i32 %9, %struct._GError* %cond)
  store %struct._GValueArray* %call8, %struct._GValueArray** %return_vals, align 8
  %13 = load i32, i32* %success, align 4
  %tobool9 = icmp ne i32 %13, 0
  br i1 %tobool9, label %if.then.10, label %if.end.13

if.then.10:                                       ; preds = %cond.end
  %14 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values11 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %14, i32 0, i32 1
  %15 = load %struct._GValue*, %struct._GValue** %values11, align 8
  %arrayidx12 = getelementptr inbounds %struct._GValue, %struct._GValue* %15, i64 1
  %16 = load i8*, i8** %name, align 8
  call void @g_value_take_string(%struct._GValue* %arrayidx12, i8* %16)
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.10, %cond.end
  %17 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %17
}

declare %struct._GParamSpec* @gimp_param_spec_string(i8*, i8*, i8*, i32, i32, i32, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @path_set_current_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %image = alloca %struct._GimpImage*, align 8
  %name = alloca i8*, align 8
  %vectors = alloca %struct._GimpVectors*, align 8
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
  %call3 = call i8* @g_value_get_string(%struct._GValue* %arrayidx2)
  store i8* %call3, i8** %name, align 8
  %5 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end.8

if.then:                                          ; preds = %entry
  %6 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %7 = load i8*, i8** %name, align 8
  %call4 = call %struct._GimpVectors* @gimp_image_get_vectors_by_name(%struct._GimpImage* %6, i8* %7)
  store %struct._GimpVectors* %call4, %struct._GimpVectors** %vectors, align 8
  %8 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %tobool5 = icmp ne %struct._GimpVectors* %8, null
  br i1 %tobool5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.then
  %9 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %10 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %call7 = call %struct._GimpVectors* @gimp_image_set_active_vectors(%struct._GimpImage* %9, %struct._GimpVectors* %10)
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.6
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %entry
  %11 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %12 = load i32, i32* %success, align 4
  %13 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool9 = icmp ne %struct._GError** %13, null
  br i1 %tobool9, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.8
  %14 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %15 = load %struct._GError*, %struct._GError** %14, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %15, %cond.true ], [ null, %cond.false ]
  %call10 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %11, i32 %12, %struct._GError* %cond)
  ret %struct._GValueArray* %call10
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @path_delete_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %image = alloca %struct._GimpImage*, align 8
  %name = alloca i8*, align 8
  %vectors = alloca %struct._GimpVectors*, align 8
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
  %call3 = call i8* @g_value_get_string(%struct._GValue* %arrayidx2)
  store i8* %call3, i8** %name, align 8
  %5 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end.7

if.then:                                          ; preds = %entry
  %6 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %7 = load i8*, i8** %name, align 8
  %call4 = call %struct._GimpVectors* @gimp_image_get_vectors_by_name(%struct._GimpImage* %6, i8* %7)
  store %struct._GimpVectors* %call4, %struct._GimpVectors** %vectors, align 8
  %8 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %tobool5 = icmp ne %struct._GimpVectors* %8, null
  br i1 %tobool5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.then
  %9 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %10 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  call void @gimp_image_remove_vectors(%struct._GimpImage* %9, %struct._GimpVectors* %10, i32 1, %struct._GimpVectors* null)
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
define internal %struct._GValueArray* @path_get_points_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  %name = alloca i8*, align 8
  %path_type = alloca i32, align 4
  %path_closed = alloca i32, align 4
  %num_path_point_details = alloca i32, align 4
  %points_pairs = alloca double*, align 8
  %vectors = alloca %struct._GimpVectors*, align 8
  %points = alloca %struct._GimpVectorsCompatPoint*, align 8
  %num_points = alloca i32, align 4
  %curr_point = alloca double*, align 8
  %i = alloca i32, align 4
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store i32 0, i32* %path_type, align 4
  store i32 0, i32* %path_closed, align 4
  store i32 0, i32* %num_path_point_details, align 4
  store double* null, double** %points_pairs, align 8
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
  %call3 = call i8* @g_value_get_string(%struct._GValue* %arrayidx2)
  store i8* %call3, i8** %name, align 8
  %5 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end.23

if.then:                                          ; preds = %entry
  %6 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %7 = load i8*, i8** %name, align 8
  %call4 = call %struct._GimpVectors* @gimp_image_get_vectors_by_name(%struct._GimpImage* %6, i8* %7)
  store %struct._GimpVectors* %call4, %struct._GimpVectors** %vectors, align 8
  %8 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %tobool5 = icmp ne %struct._GimpVectors* %8, null
  br i1 %tobool5, label %if.then.6, label %if.else.21

if.then.6:                                        ; preds = %if.then
  store i32 1, i32* %path_type, align 4
  %9 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %call7 = call %struct._GimpVectorsCompatPoint* @gimp_vectors_compat_get_points(%struct._GimpVectors* %9, i32* %num_points, i32* %path_closed)
  store %struct._GimpVectorsCompatPoint* %call7, %struct._GimpVectorsCompatPoint** %points, align 8
  %10 = load i32, i32* %num_points, align 4
  %mul = mul nsw i32 %10, 3
  store i32 %mul, i32* %num_path_point_details, align 4
  %11 = load %struct._GimpVectorsCompatPoint*, %struct._GimpVectorsCompatPoint** %points, align 8
  %tobool8 = icmp ne %struct._GimpVectorsCompatPoint* %11, null
  br i1 %tobool8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.then.6
  %12 = load i32, i32* %num_path_point_details, align 4
  %conv = sext i32 %12 to i64
  %call10 = call noalias i8* @g_malloc0_n(i64 %conv, i64 8)
  %13 = bitcast i8* %call10 to double*
  store double* %13, double** %points_pairs, align 8
  store i32 0, i32* %i, align 4
  %14 = load double*, double** %points_pairs, align 8
  store double* %14, double** %curr_point, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.9
  %15 = load i32, i32* %i, align 4
  %16 = load i32, i32* %num_points, align 4
  %cmp = icmp slt i32 %15, %16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load i32, i32* %i, align 4
  %idxprom = sext i32 %17 to i64
  %18 = load %struct._GimpVectorsCompatPoint*, %struct._GimpVectorsCompatPoint** %points, align 8
  %arrayidx12 = getelementptr inbounds %struct._GimpVectorsCompatPoint, %struct._GimpVectorsCompatPoint* %18, i64 %idxprom
  %x = getelementptr inbounds %struct._GimpVectorsCompatPoint, %struct._GimpVectorsCompatPoint* %arrayidx12, i32 0, i32 1
  %19 = load double, double* %x, align 8
  %20 = load double*, double** %curr_point, align 8
  %arrayidx13 = getelementptr inbounds double, double* %20, i64 0
  store double %19, double* %arrayidx13, align 8
  %21 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %21 to i64
  %22 = load %struct._GimpVectorsCompatPoint*, %struct._GimpVectorsCompatPoint** %points, align 8
  %arrayidx15 = getelementptr inbounds %struct._GimpVectorsCompatPoint, %struct._GimpVectorsCompatPoint* %22, i64 %idxprom14
  %y = getelementptr inbounds %struct._GimpVectorsCompatPoint, %struct._GimpVectorsCompatPoint* %arrayidx15, i32 0, i32 2
  %23 = load double, double* %y, align 8
  %24 = load double*, double** %curr_point, align 8
  %arrayidx16 = getelementptr inbounds double, double* %24, i64 1
  store double %23, double* %arrayidx16, align 8
  %25 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %25 to i64
  %26 = load %struct._GimpVectorsCompatPoint*, %struct._GimpVectorsCompatPoint** %points, align 8
  %arrayidx18 = getelementptr inbounds %struct._GimpVectorsCompatPoint, %struct._GimpVectorsCompatPoint* %26, i64 %idxprom17
  %type = getelementptr inbounds %struct._GimpVectorsCompatPoint, %struct._GimpVectorsCompatPoint* %arrayidx18, i32 0, i32 0
  %27 = load i32, i32* %type, align 4
  %conv19 = uitofp i32 %27 to double
  %28 = load double*, double** %curr_point, align 8
  %arrayidx20 = getelementptr inbounds double, double* %28, i64 2
  store double %conv19, double* %arrayidx20, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %29 = load i32, i32* %i, align 4
  %inc = add nsw i32 %29, 1
  store i32 %inc, i32* %i, align 4
  %30 = load double*, double** %curr_point, align 8
  %add.ptr = getelementptr inbounds double, double* %30, i64 3
  store double* %add.ptr, double** %curr_point, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %31 = load %struct._GimpVectorsCompatPoint*, %struct._GimpVectorsCompatPoint** %points, align 8
  %32 = bitcast %struct._GimpVectorsCompatPoint* %31 to i8*
  call void @g_free(i8* %32)
  br label %if.end

if.else:                                          ; preds = %if.then.6
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  br label %if.end.22

if.else.21:                                       ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end.22

if.end.22:                                        ; preds = %if.else.21, %if.end
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %entry
  %33 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %34 = load i32, i32* %success, align 4
  %35 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool24 = icmp ne %struct._GError** %35, null
  br i1 %tobool24, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.23
  %36 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %37 = load %struct._GError*, %struct._GError** %36, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.23
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %37, %cond.true ], [ null, %cond.false ]
  %call25 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %33, i32 %34, %struct._GError* %cond)
  store %struct._GValueArray* %call25, %struct._GValueArray** %return_vals, align 8
  %38 = load i32, i32* %success, align 4
  %tobool26 = icmp ne i32 %38, 0
  br i1 %tobool26, label %if.then.27, label %if.end.37

if.then.27:                                       ; preds = %cond.end
  %39 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values28 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %39, i32 0, i32 1
  %40 = load %struct._GValue*, %struct._GValue** %values28, align 8
  %arrayidx29 = getelementptr inbounds %struct._GValue, %struct._GValue* %40, i64 1
  %41 = load i32, i32* %path_type, align 4
  call void @g_value_set_int(%struct._GValue* %arrayidx29, i32 %41)
  %42 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values30 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %42, i32 0, i32 1
  %43 = load %struct._GValue*, %struct._GValue** %values30, align 8
  %arrayidx31 = getelementptr inbounds %struct._GValue, %struct._GValue* %43, i64 2
  %44 = load i32, i32* %path_closed, align 4
  call void @g_value_set_int(%struct._GValue* %arrayidx31, i32 %44)
  %45 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values32 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %45, i32 0, i32 1
  %46 = load %struct._GValue*, %struct._GValue** %values32, align 8
  %arrayidx33 = getelementptr inbounds %struct._GValue, %struct._GValue* %46, i64 3
  %47 = load i32, i32* %num_path_point_details, align 4
  call void @g_value_set_int(%struct._GValue* %arrayidx33, i32 %47)
  %48 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values34 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %48, i32 0, i32 1
  %49 = load %struct._GValue*, %struct._GValue** %values34, align 8
  %arrayidx35 = getelementptr inbounds %struct._GValue, %struct._GValue* %49, i64 4
  %50 = load double*, double** %points_pairs, align 8
  %51 = load i32, i32* %num_path_point_details, align 4
  %conv36 = sext i32 %51 to i64
  call void @gimp_value_take_floatarray(%struct._GValue* %arrayidx35, double* %50, i64 %conv36)
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.27, %cond.end
  %52 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %52
}

declare %struct._GParamSpec* @gimp_param_spec_float_array(i8*, i8*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @path_set_points_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %image = alloca %struct._GimpImage*, align 8
  %name = alloca i8*, align 8
  %num_path_points = alloca i32, align 4
  %points_pairs = alloca double*, align 8
  %closed = alloca i32, align 4
  %vectors = alloca %struct._GimpVectors*, align 8
  %curr_point_pair = alloca double*, align 8
  %points = alloca %struct._GimpVectorsCompatPoint*, align 8
  %n_points = alloca i32, align 4
  %i = alloca i32, align 4
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
  %call3 = call i8* @g_value_get_string(%struct._GValue* %arrayidx2)
  store i8* %call3, i8** %name, align 8
  %5 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values4 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %5, i32 0, i32 1
  %6 = load %struct._GValue*, %struct._GValue** %values4, align 8
  %arrayidx5 = getelementptr inbounds %struct._GValue, %struct._GValue* %6, i64 3
  %call6 = call i32 @g_value_get_int(%struct._GValue* %arrayidx5)
  store i32 %call6, i32* %num_path_points, align 4
  %7 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values7 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %7, i32 0, i32 1
  %8 = load %struct._GValue*, %struct._GValue** %values7, align 8
  %arrayidx8 = getelementptr inbounds %struct._GValue, %struct._GValue* %8, i64 4
  %call9 = call double* @gimp_value_get_floatarray(%struct._GValue* %arrayidx8)
  store double* %call9, double** %points_pairs, align 8
  %9 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %if.then, label %if.end.38

if.then:                                          ; preds = %entry
  store i32 0, i32* %closed, align 4
  %10 = load i32, i32* %num_path_points, align 4
  %div = sdiv i32 %10, 3
  %rem = srem i32 %div, 3
  %cmp = icmp eq i32 %rem, 0
  br i1 %cmp, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %if.then
  store i32 1, i32* %closed, align 4
  br label %if.end.15

if.else:                                          ; preds = %if.then
  %11 = load i32, i32* %num_path_points, align 4
  %div11 = sdiv i32 %11, 3
  %rem12 = srem i32 %div11, 3
  %cmp13 = icmp ne i32 %rem12, 2
  br i1 %cmp13, label %if.then.14, label %if.end

if.then.14:                                       ; preds = %if.else
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.14, %if.else
  br label %if.end.15

if.end.15:                                        ; preds = %if.end, %if.then.10
  %12 = load i32, i32* %success, align 4
  %tobool16 = icmp ne i32 %12, 0
  br i1 %tobool16, label %if.then.17, label %if.end.37

if.then.17:                                       ; preds = %if.end.15
  %13 = load i32, i32* %num_path_points, align 4
  %div18 = sdiv i32 %13, 3
  store i32 %div18, i32* %n_points, align 4
  %14 = load i32, i32* %n_points, align 4
  %conv = sext i32 %14 to i64
  %call19 = call noalias i8* @g_malloc0_n(i64 %conv, i64 24)
  %15 = bitcast i8* %call19 to %struct._GimpVectorsCompatPoint*
  store %struct._GimpVectorsCompatPoint* %15, %struct._GimpVectorsCompatPoint** %points, align 8
  store i32 0, i32* %i, align 4
  %16 = load double*, double** %points_pairs, align 8
  store double* %16, double** %curr_point_pair, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.17
  %17 = load i32, i32* %i, align 4
  %18 = load i32, i32* %n_points, align 4
  %cmp20 = icmp slt i32 %17, %18
  br i1 %cmp20, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load double*, double** %curr_point_pair, align 8
  %arrayidx22 = getelementptr inbounds double, double* %19, i64 0
  %20 = load double, double* %arrayidx22, align 8
  %21 = load i32, i32* %i, align 4
  %idxprom = sext i32 %21 to i64
  %22 = load %struct._GimpVectorsCompatPoint*, %struct._GimpVectorsCompatPoint** %points, align 8
  %arrayidx23 = getelementptr inbounds %struct._GimpVectorsCompatPoint, %struct._GimpVectorsCompatPoint* %22, i64 %idxprom
  %x = getelementptr inbounds %struct._GimpVectorsCompatPoint, %struct._GimpVectorsCompatPoint* %arrayidx23, i32 0, i32 1
  store double %20, double* %x, align 8
  %23 = load double*, double** %curr_point_pair, align 8
  %arrayidx24 = getelementptr inbounds double, double* %23, i64 1
  %24 = load double, double* %arrayidx24, align 8
  %25 = load i32, i32* %i, align 4
  %idxprom25 = sext i32 %25 to i64
  %26 = load %struct._GimpVectorsCompatPoint*, %struct._GimpVectorsCompatPoint** %points, align 8
  %arrayidx26 = getelementptr inbounds %struct._GimpVectorsCompatPoint, %struct._GimpVectorsCompatPoint* %26, i64 %idxprom25
  %y = getelementptr inbounds %struct._GimpVectorsCompatPoint, %struct._GimpVectorsCompatPoint* %arrayidx26, i32 0, i32 2
  store double %24, double* %y, align 8
  %27 = load double*, double** %curr_point_pair, align 8
  %arrayidx27 = getelementptr inbounds double, double* %27, i64 2
  %28 = load double, double* %arrayidx27, align 8
  %conv28 = fptoui double %28 to i32
  %29 = load i32, i32* %i, align 4
  %idxprom29 = sext i32 %29 to i64
  %30 = load %struct._GimpVectorsCompatPoint*, %struct._GimpVectorsCompatPoint** %points, align 8
  %arrayidx30 = getelementptr inbounds %struct._GimpVectorsCompatPoint, %struct._GimpVectorsCompatPoint* %30, i64 %idxprom29
  %type = getelementptr inbounds %struct._GimpVectorsCompatPoint, %struct._GimpVectorsCompatPoint* %arrayidx30, i32 0, i32 0
  store i32 %conv28, i32* %type, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %31 = load i32, i32* %i, align 4
  %inc = add nsw i32 %31, 1
  store i32 %inc, i32* %i, align 4
  %32 = load double*, double** %curr_point_pair, align 8
  %add.ptr = getelementptr inbounds double, double* %32, i64 3
  store double* %add.ptr, double** %curr_point_pair, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %33 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %34 = load i8*, i8** %name, align 8
  %35 = load %struct._GimpVectorsCompatPoint*, %struct._GimpVectorsCompatPoint** %points, align 8
  %36 = load i32, i32* %n_points, align 4
  %37 = load i32, i32* %closed, align 4
  %call31 = call %struct._GimpVectors* @gimp_vectors_compat_new(%struct._GimpImage* %33, i8* %34, %struct._GimpVectorsCompatPoint* %35, i32 %36, i32 %37)
  store %struct._GimpVectors* %call31, %struct._GimpVectors** %vectors, align 8
  %38 = load %struct._GimpVectorsCompatPoint*, %struct._GimpVectorsCompatPoint** %points, align 8
  %39 = bitcast %struct._GimpVectorsCompatPoint* %38 to i8*
  call void @g_free(i8* %39)
  %40 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %tobool32 = icmp ne %struct._GimpVectors* %40, null
  br i1 %tobool32, label %if.then.33, label %if.else.35

if.then.33:                                       ; preds = %for.end
  %41 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %42 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %call34 = call i32 @gimp_image_add_vectors(%struct._GimpImage* %41, %struct._GimpVectors* %42, %struct._GimpVectors* null, i32 0, i32 1)
  store i32 %call34, i32* %success, align 4
  br label %if.end.36

if.else.35:                                       ; preds = %for.end
  store i32 0, i32* %success, align 4
  br label %if.end.36

if.end.36:                                        ; preds = %if.else.35, %if.then.33
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %if.end.15
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %entry
  %43 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %44 = load i32, i32* %success, align 4
  %45 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool39 = icmp ne %struct._GError** %45, null
  br i1 %tobool39, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.38
  %46 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %47 = load %struct._GError*, %struct._GError** %46, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.38
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %47, %cond.true ], [ null, %cond.false ]
  %call40 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %43, i32 %44, %struct._GError* %cond)
  ret %struct._GValueArray* %call40
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @path_stroke_current_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %image = alloca %struct._GimpImage*, align 8
  %vectors = alloca %struct._GimpVectors*, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  %options = alloca %struct._GimpStrokeOptions*, align 8
  %paint_options = alloca %struct._GimpPaintOptions*, align 8
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
  br i1 %tobool, label %if.then, label %if.end.26

if.then:                                          ; preds = %entry
  %4 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call1 = call %struct._GimpVectors* @gimp_image_get_active_vectors(%struct._GimpImage* %4)
  store %struct._GimpVectors* %call1, %struct._GimpVectors** %vectors, align 8
  %5 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call2 = call %struct._GimpDrawable* @gimp_image_get_active_drawable(%struct._GimpImage* %5)
  store %struct._GimpDrawable* %call2, %struct._GimpDrawable** %drawable, align 8
  %6 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %tobool3 = icmp ne %struct._GimpVectors* %6, null
  br i1 %tobool3, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %7 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %tobool4 = icmp ne %struct._GimpDrawable* %7, null
  br i1 %tobool4, label %land.lhs.true.5, label %if.else

land.lhs.true.5:                                  ; preds = %land.lhs.true
  %8 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %9 = bitcast %struct._GimpDrawable* %8 to %struct._GTypeInstance*
  %call6 = call i64 @gimp_item_get_type() #3
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call6)
  %10 = bitcast %struct._GTypeInstance* %call7 to %struct._GimpItem*
  %11 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call8 = call i32 @gimp_pdb_item_is_writable(%struct._GimpItem* %10, %struct._GError** %11)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %land.lhs.true.10, label %if.else

land.lhs.true.10:                                 ; preds = %land.lhs.true.5
  %12 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %13 = bitcast %struct._GimpDrawable* %12 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_item_get_type() #3
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call11)
  %14 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpItem*
  %15 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call13 = call i32 @gimp_pdb_item_is_not_group(%struct._GimpItem* %14, %struct._GError** %15)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %land.lhs.true.10
  %16 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %17 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %call16 = call %struct._GimpStrokeOptions* @gimp_stroke_options_new(%struct._Gimp* %16, %struct._GimpContext* %17, i32 1)
  store %struct._GimpStrokeOptions* %call16, %struct._GimpStrokeOptions** %options, align 8
  %18 = load %struct._GimpStrokeOptions*, %struct._GimpStrokeOptions** %options, align 8
  %19 = bitcast %struct._GimpStrokeOptions* %18 to i8*
  call void (i8*, i8*, ...) @g_object_set(i8* %19, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.127, i32 0, i32 0), i32 1, i8* null)
  %20 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %21 = bitcast %struct._GimpContext* %20 to %struct._GTypeInstance*
  %call17 = call i64 @gimp_pdb_context_get_type() #3
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call17)
  %22 = bitcast %struct._GTypeInstance* %call18 to %struct._GimpPDBContext*
  %call19 = call %struct._GimpPaintOptions* @gimp_pdb_context_get_paint_options(%struct._GimpPDBContext* %22, i8* null)
  store %struct._GimpPaintOptions* %call19, %struct._GimpPaintOptions** %paint_options, align 8
  %23 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options, align 8
  %24 = bitcast %struct._GimpPaintOptions* %23 to %struct._GTypeInstance*
  %call20 = call i64 @gimp_config_interface_get_type() #3
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call20)
  %25 = bitcast %struct._GTypeInstance* %call21 to %struct._GimpConfig*
  %call22 = call i8* @gimp_config_duplicate(%struct._GimpConfig* %25)
  %26 = bitcast i8* %call22 to %struct._GimpPaintOptions*
  store %struct._GimpPaintOptions* %26, %struct._GimpPaintOptions** %paint_options, align 8
  %27 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %28 = bitcast %struct._GimpVectors* %27 to %struct._GTypeInstance*
  %call23 = call i64 @gimp_item_get_type() #3
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call23)
  %29 = bitcast %struct._GTypeInstance* %call24 to %struct._GimpItem*
  %30 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %31 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %32 = load %struct._GimpStrokeOptions*, %struct._GimpStrokeOptions** %options, align 8
  %33 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options, align 8
  %34 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %35 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call25 = call i32 @gimp_item_stroke(%struct._GimpItem* %29, %struct._GimpDrawable* %30, %struct._GimpContext* %31, %struct._GimpStrokeOptions* %32, %struct._GimpPaintOptions* %33, i32 1, %struct._GimpProgress* %34, %struct._GError** %35)
  store i32 %call25, i32* %success, align 4
  %36 = load %struct._GimpStrokeOptions*, %struct._GimpStrokeOptions** %options, align 8
  %37 = bitcast %struct._GimpStrokeOptions* %36 to i8*
  call void @g_object_unref(i8* %37)
  %38 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options, align 8
  %39 = bitcast %struct._GimpPaintOptions* %38 to i8*
  call void @g_object_unref(i8* %39)
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.10, %land.lhs.true.5, %land.lhs.true, %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.15
  br label %if.end.26

if.end.26:                                        ; preds = %if.end, %entry
  %40 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %41 = load i32, i32* %success, align 4
  %42 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool27 = icmp ne %struct._GError** %42, null
  br i1 %tobool27, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.26
  %43 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %44 = load %struct._GError*, %struct._GError** %43, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.26
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %44, %cond.true ], [ null, %cond.false ]
  %call28 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %40, i32 %41, %struct._GError* %cond)
  ret %struct._GValueArray* %call28
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @path_get_point_at_dist_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  %distance = alloca double, align 8
  %x_point = alloca i32, align 4
  %y_point = alloca i32, align 4
  %slope = alloca double, align 8
  %vectors = alloca %struct._GimpVectors*, align 8
  %stroke = alloca %struct._GimpStroke*, align 8
  %distance_along = alloca double, align 8
  %stroke_length = alloca double, align 8
  %stroke_distance = alloca double, align 8
  %position = alloca %struct._GimpCoords, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store i32 0, i32* %x_point, align 4
  store i32 0, i32* %y_point, align 4
  store double 0.000000e+00, double* %slope, align 8
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
  store double %call3, double* %distance, align 8
  %5 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end.23

if.then:                                          ; preds = %entry
  %6 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call4 = call %struct._GimpVectors* @gimp_image_get_active_vectors(%struct._GimpImage* %6)
  store %struct._GimpVectors* %call4, %struct._GimpVectors** %vectors, align 8
  %7 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %tobool5 = icmp ne %struct._GimpVectors* %7, null
  br i1 %tobool5, label %if.then.6, label %if.else.21

if.then.6:                                        ; preds = %if.then
  store double 0.000000e+00, double* %distance_along, align 8
  %8 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %call7 = call %struct._GimpStroke* @gimp_vectors_stroke_get_next(%struct._GimpVectors* %8, %struct._GimpStroke* null)
  store %struct._GimpStroke* %call7, %struct._GimpStroke** %stroke, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %if.then.6
  %9 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke, align 8
  %cmp = icmp ne %struct._GimpStroke* %9, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke, align 8
  %call8 = call double @gimp_stroke_get_length(%struct._GimpStroke* %10, double 5.000000e-01)
  store double %call8, double* %stroke_length, align 8
  %11 = load double, double* %distance_along, align 8
  %12 = load double, double* %stroke_length, align 8
  %add = fadd double %11, %12
  %13 = load double, double* %distance, align 8
  %cmp9 = fcmp olt double %add, %13
  br i1 %cmp9, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %while.body
  %14 = load double, double* %stroke_length, align 8
  %15 = load double, double* %distance_along, align 8
  %add11 = fadd double %15, %14
  store double %add11, double* %distance_along, align 8
  br label %if.end

if.else:                                          ; preds = %while.body
  %16 = load double, double* %distance, align 8
  %17 = load double, double* %distance_along, align 8
  %sub = fsub double %16, %17
  store double %sub, double* %stroke_distance, align 8
  %18 = load double, double* %stroke_distance, align 8
  %cmp12 = fcmp olt double %18, 0.000000e+00
  br i1 %cmp12, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  br label %cond.end

cond.false:                                       ; preds = %if.else
  %19 = load double, double* %stroke_distance, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ 0.000000e+00, %cond.true ], [ %19, %cond.false ]
  store double %cond, double* %stroke_distance, align 8
  %20 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke, align 8
  %21 = load double, double* %stroke_distance, align 8
  %call13 = call i32 @gimp_stroke_get_point_at_dist(%struct._GimpStroke* %20, double %21, double 5.000000e-01, %struct._GimpCoords* %position, double* %slope)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.else.16, label %if.then.15

if.then.15:                                       ; preds = %cond.end
  store i32 0, i32* %success, align 4
  br label %while.end

if.else.16:                                       ; preds = %cond.end
  store i32 1, i32* %success, align 4
  %x = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %position, i32 0, i32 0
  %22 = load double, double* %x, align 8
  %add17 = fadd double %22, 5.000000e-01
  %conv = fptosi double %add17 to i32
  store i32 %conv, i32* %x_point, align 4
  %y = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %position, i32 0, i32 1
  %23 = load double, double* %y, align 8
  %add18 = fadd double %23, 5.000000e-01
  %conv19 = fptosi double %add18 to i32
  store i32 %conv19, i32* %y_point, align 4
  br label %while.end

if.end:                                           ; preds = %if.then.10
  %24 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %25 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke, align 8
  %call20 = call %struct._GimpStroke* @gimp_vectors_stroke_get_next(%struct._GimpVectors* %24, %struct._GimpStroke* %25)
  store %struct._GimpStroke* %call20, %struct._GimpStroke** %stroke, align 8
  br label %while.cond

while.end:                                        ; preds = %if.else.16, %if.then.15, %while.cond
  br label %if.end.22

if.else.21:                                       ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end.22

if.end.22:                                        ; preds = %if.else.21, %while.end
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %entry
  %26 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %27 = load i32, i32* %success, align 4
  %28 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool24 = icmp ne %struct._GError** %28, null
  br i1 %tobool24, label %cond.true.25, label %cond.false.26

cond.true.25:                                     ; preds = %if.end.23
  %29 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %30 = load %struct._GError*, %struct._GError** %29, align 8
  br label %cond.end.27

cond.false.26:                                    ; preds = %if.end.23
  br label %cond.end.27

cond.end.27:                                      ; preds = %cond.false.26, %cond.true.25
  %cond28 = phi %struct._GError* [ %30, %cond.true.25 ], [ null, %cond.false.26 ]
  %call29 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %26, i32 %27, %struct._GError* %cond28)
  store %struct._GValueArray* %call29, %struct._GValueArray** %return_vals, align 8
  %31 = load i32, i32* %success, align 4
  %tobool30 = icmp ne i32 %31, 0
  br i1 %tobool30, label %if.then.31, label %if.end.38

if.then.31:                                       ; preds = %cond.end.27
  %32 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values32 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %32, i32 0, i32 1
  %33 = load %struct._GValue*, %struct._GValue** %values32, align 8
  %arrayidx33 = getelementptr inbounds %struct._GValue, %struct._GValue* %33, i64 1
  %34 = load i32, i32* %x_point, align 4
  call void @g_value_set_int(%struct._GValue* %arrayidx33, i32 %34)
  %35 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values34 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %35, i32 0, i32 1
  %36 = load %struct._GValue*, %struct._GValue** %values34, align 8
  %arrayidx35 = getelementptr inbounds %struct._GValue, %struct._GValue* %36, i64 2
  %37 = load i32, i32* %y_point, align 4
  call void @g_value_set_int(%struct._GValue* %arrayidx35, i32 %37)
  %38 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values36 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %38, i32 0, i32 1
  %39 = load %struct._GValue*, %struct._GValue** %values36, align 8
  %arrayidx37 = getelementptr inbounds %struct._GValue, %struct._GValue* %39, i64 3
  %40 = load double, double* %slope, align 8
  call void @g_value_set_double(%struct._GValue* %arrayidx37, double %40)
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.31, %cond.end.27
  %41 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %41
}

declare %struct._GParamSpec* @g_param_spec_double(i8*, i8*, i8*, double, double, double, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @path_get_tattoo_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  %name = alloca i8*, align 8
  %tattoo = alloca i32, align 4
  %vectors = alloca %struct._GimpVectors*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store i32 0, i32* %tattoo, align 4
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
  %call3 = call i8* @g_value_get_string(%struct._GValue* %arrayidx2)
  store i8* %call3, i8** %name, align 8
  %5 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end.10

if.then:                                          ; preds = %entry
  %6 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %7 = load i8*, i8** %name, align 8
  %call4 = call %struct._GimpVectors* @gimp_image_get_vectors_by_name(%struct._GimpImage* %6, i8* %7)
  store %struct._GimpVectors* %call4, %struct._GimpVectors** %vectors, align 8
  %8 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %tobool5 = icmp ne %struct._GimpVectors* %8, null
  br i1 %tobool5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.then
  %9 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %10 = bitcast %struct._GimpVectors* %9 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_item_get_type() #3
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call7)
  %11 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpItem*
  %call9 = call i32 @gimp_item_get_tattoo(%struct._GimpItem* %11)
  store i32 %call9, i32* %tattoo, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.6
  br label %if.end.10

if.end.10:                                        ; preds = %if.end, %entry
  %12 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %13 = load i32, i32* %success, align 4
  %14 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool11 = icmp ne %struct._GError** %14, null
  br i1 %tobool11, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.10
  %15 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %16 = load %struct._GError*, %struct._GError** %15, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.10
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %16, %cond.true ], [ null, %cond.false ]
  %call12 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %12, i32 %13, %struct._GError* %cond)
  store %struct._GValueArray* %call12, %struct._GValueArray** %return_vals, align 8
  %17 = load i32, i32* %success, align 4
  %tobool13 = icmp ne i32 %17, 0
  br i1 %tobool13, label %if.then.14, label %if.end.17

if.then.14:                                       ; preds = %cond.end
  %18 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values15 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %18, i32 0, i32 1
  %19 = load %struct._GValue*, %struct._GValue** %values15, align 8
  %arrayidx16 = getelementptr inbounds %struct._GValue, %struct._GValue* %19, i64 1
  %20 = load i32, i32* %tattoo, align 4
  call void @g_value_set_int(%struct._GValue* %arrayidx16, i32 %20)
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.14, %cond.end
  %21 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %21
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @path_set_tattoo_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %image = alloca %struct._GimpImage*, align 8
  %name = alloca i8*, align 8
  %tattovalue = alloca i32, align 4
  %vectors = alloca %struct._GimpVectors*, align 8
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
  %call3 = call i8* @g_value_get_string(%struct._GValue* %arrayidx2)
  store i8* %call3, i8** %name, align 8
  %5 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values4 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %5, i32 0, i32 1
  %6 = load %struct._GValue*, %struct._GValue** %values4, align 8
  %arrayidx5 = getelementptr inbounds %struct._GValue, %struct._GValue* %6, i64 2
  %call6 = call i32 @g_value_get_int(%struct._GValue* %arrayidx5)
  store i32 %call6, i32* %tattovalue, align 4
  %7 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then, label %if.end.12

if.then:                                          ; preds = %entry
  %8 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %9 = load i8*, i8** %name, align 8
  %call7 = call %struct._GimpVectors* @gimp_image_get_vectors_by_name(%struct._GimpImage* %8, i8* %9)
  store %struct._GimpVectors* %call7, %struct._GimpVectors** %vectors, align 8
  %10 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %tobool8 = icmp ne %struct._GimpVectors* %10, null
  br i1 %tobool8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.then
  %11 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %12 = bitcast %struct._GimpVectors* %11 to %struct._GTypeInstance*
  %call10 = call i64 @gimp_item_get_type() #3
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call10)
  %13 = bitcast %struct._GTypeInstance* %call11 to %struct._GimpItem*
  %14 = load i32, i32* %tattovalue, align 4
  call void @gimp_item_set_tattoo(%struct._GimpItem* %13, i32 %14)
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.9
  br label %if.end.12

if.end.12:                                        ; preds = %if.end, %entry
  %15 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %16 = load i32, i32* %success, align 4
  %17 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool13 = icmp ne %struct._GError** %17, null
  br i1 %tobool13, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.12
  %18 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %19 = load %struct._GError*, %struct._GError** %18, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.12
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %19, %cond.true ], [ null, %cond.false ]
  %call14 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %15, i32 %16, %struct._GError* %cond)
  ret %struct._GValueArray* %call14
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @get_path_by_tattoo_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  %tattoo = alloca i32, align 4
  %name = alloca i8*, align 8
  %vectors = alloca %struct._GimpVectors*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store i8* null, i8** %name, align 8
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
  store i32 %call3, i32* %tattoo, align 4
  %5 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end.9

if.then:                                          ; preds = %entry
  %6 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %7 = load i32, i32* %tattoo, align 4
  %call4 = call %struct._GimpVectors* @gimp_image_get_vectors_by_tattoo(%struct._GimpImage* %6, i32 %7)
  store %struct._GimpVectors* %call4, %struct._GimpVectors** %vectors, align 8
  %8 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %tobool5 = icmp ne %struct._GimpVectors* %8, null
  br i1 %tobool5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.then
  %9 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %10 = bitcast %struct._GimpVectors* %9 to i8*
  %call7 = call i8* @gimp_object_get_name(i8* %10)
  %call8 = call noalias i8* @g_strdup(i8* %call7)
  store i8* %call8, i8** %name, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.6
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %entry
  %11 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %12 = load i32, i32* %success, align 4
  %13 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool10 = icmp ne %struct._GError** %13, null
  br i1 %tobool10, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.9
  %14 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %15 = load %struct._GError*, %struct._GError** %14, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.9
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %15, %cond.true ], [ null, %cond.false ]
  %call11 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %11, i32 %12, %struct._GError* %cond)
  store %struct._GValueArray* %call11, %struct._GValueArray** %return_vals, align 8
  %16 = load i32, i32* %success, align 4
  %tobool12 = icmp ne i32 %16, 0
  br i1 %tobool12, label %if.then.13, label %if.end.16

if.then.13:                                       ; preds = %cond.end
  %17 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values14 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %17, i32 0, i32 1
  %18 = load %struct._GValue*, %struct._GValue** %values14, align 8
  %arrayidx15 = getelementptr inbounds %struct._GValue, %struct._GValue* %18, i64 1
  %19 = load i8*, i8** %name, align 8
  call void @g_value_take_string(%struct._GValue* %arrayidx15, i8* %19)
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.13, %cond.end
  %20 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %20
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @path_get_locked_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  %name = alloca i8*, align 8
  %locked = alloca i32, align 4
  %vectors = alloca %struct._GimpVectors*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store i32 0, i32* %locked, align 4
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
  %call3 = call i8* @g_value_get_string(%struct._GValue* %arrayidx2)
  store i8* %call3, i8** %name, align 8
  %5 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end.10

if.then:                                          ; preds = %entry
  %6 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %7 = load i8*, i8** %name, align 8
  %call4 = call %struct._GimpVectors* @gimp_image_get_vectors_by_name(%struct._GimpImage* %6, i8* %7)
  store %struct._GimpVectors* %call4, %struct._GimpVectors** %vectors, align 8
  %8 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %tobool5 = icmp ne %struct._GimpVectors* %8, null
  br i1 %tobool5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.then
  %9 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %10 = bitcast %struct._GimpVectors* %9 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_item_get_type() #3
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call7)
  %11 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpItem*
  %call9 = call i32 @gimp_item_get_linked(%struct._GimpItem* %11)
  store i32 %call9, i32* %locked, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.6
  br label %if.end.10

if.end.10:                                        ; preds = %if.end, %entry
  %12 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %13 = load i32, i32* %success, align 4
  %14 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool11 = icmp ne %struct._GError** %14, null
  br i1 %tobool11, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.10
  %15 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %16 = load %struct._GError*, %struct._GError** %15, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.10
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %16, %cond.true ], [ null, %cond.false ]
  %call12 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %12, i32 %13, %struct._GError* %cond)
  store %struct._GValueArray* %call12, %struct._GValueArray** %return_vals, align 8
  %17 = load i32, i32* %success, align 4
  %tobool13 = icmp ne i32 %17, 0
  br i1 %tobool13, label %if.then.14, label %if.end.17

if.then.14:                                       ; preds = %cond.end
  %18 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values15 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %18, i32 0, i32 1
  %19 = load %struct._GValue*, %struct._GValue** %values15, align 8
  %arrayidx16 = getelementptr inbounds %struct._GValue, %struct._GValue* %19, i64 1
  %20 = load i32, i32* %locked, align 4
  call void @g_value_set_boolean(%struct._GValue* %arrayidx16, i32 %20)
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.14, %cond.end
  %21 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %21
}

declare %struct._GParamSpec* @g_param_spec_boolean(i8*, i8*, i8*, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @path_set_locked_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %image = alloca %struct._GimpImage*, align 8
  %name = alloca i8*, align 8
  %locked = alloca i32, align 4
  %vectors = alloca %struct._GimpVectors*, align 8
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
  %call3 = call i8* @g_value_get_string(%struct._GValue* %arrayidx2)
  store i8* %call3, i8** %name, align 8
  %5 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values4 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %5, i32 0, i32 1
  %6 = load %struct._GValue*, %struct._GValue** %values4, align 8
  %arrayidx5 = getelementptr inbounds %struct._GValue, %struct._GValue* %6, i64 2
  %call6 = call i32 @g_value_get_boolean(%struct._GValue* %arrayidx5)
  store i32 %call6, i32* %locked, align 4
  %7 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then, label %if.end.12

if.then:                                          ; preds = %entry
  %8 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %9 = load i8*, i8** %name, align 8
  %call7 = call %struct._GimpVectors* @gimp_image_get_vectors_by_name(%struct._GimpImage* %8, i8* %9)
  store %struct._GimpVectors* %call7, %struct._GimpVectors** %vectors, align 8
  %10 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %tobool8 = icmp ne %struct._GimpVectors* %10, null
  br i1 %tobool8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.then
  %11 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %12 = bitcast %struct._GimpVectors* %11 to %struct._GTypeInstance*
  %call10 = call i64 @gimp_item_get_type() #3
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call10)
  %13 = bitcast %struct._GTypeInstance* %call11 to %struct._GimpItem*
  %14 = load i32, i32* %locked, align 4
  call void @gimp_item_set_linked(%struct._GimpItem* %13, i32 %14, i32 1)
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.9
  br label %if.end.12

if.end.12:                                        ; preds = %if.end, %entry
  %15 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %16 = load i32, i32* %success, align 4
  %17 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool13 = icmp ne %struct._GError** %17, null
  br i1 %tobool13, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.12
  %18 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %19 = load %struct._GError*, %struct._GError** %18, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.12
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %19, %cond.true ], [ null, %cond.false ]
  %call14 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %15, i32 %16, %struct._GError* %cond)
  ret %struct._GValueArray* %call14
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @path_to_selection_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %image = alloca %struct._GimpImage*, align 8
  %name = alloca i8*, align 8
  %op = alloca i32, align 4
  %antialias = alloca i32, align 4
  %feather = alloca i32, align 4
  %feather_radius_x = alloca double, align 8
  %feather_radius_y = alloca double, align 8
  %vectors = alloca %struct._GimpVectors*, align 8
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
  %call3 = call i8* @g_value_get_string(%struct._GValue* %arrayidx2)
  store i8* %call3, i8** %name, align 8
  %5 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values4 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %5, i32 0, i32 1
  %6 = load %struct._GValue*, %struct._GValue** %values4, align 8
  %arrayidx5 = getelementptr inbounds %struct._GValue, %struct._GValue* %6, i64 2
  %call6 = call i32 @g_value_get_enum(%struct._GValue* %arrayidx5)
  store i32 %call6, i32* %op, align 4
  %7 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values7 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %7, i32 0, i32 1
  %8 = load %struct._GValue*, %struct._GValue** %values7, align 8
  %arrayidx8 = getelementptr inbounds %struct._GValue, %struct._GValue* %8, i64 3
  %call9 = call i32 @g_value_get_boolean(%struct._GValue* %arrayidx8)
  store i32 %call9, i32* %antialias, align 4
  %9 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values10 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %9, i32 0, i32 1
  %10 = load %struct._GValue*, %struct._GValue** %values10, align 8
  %arrayidx11 = getelementptr inbounds %struct._GValue, %struct._GValue* %10, i64 4
  %call12 = call i32 @g_value_get_boolean(%struct._GValue* %arrayidx11)
  store i32 %call12, i32* %feather, align 4
  %11 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values13 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %11, i32 0, i32 1
  %12 = load %struct._GValue*, %struct._GValue** %values13, align 8
  %arrayidx14 = getelementptr inbounds %struct._GValue, %struct._GValue* %12, i64 5
  %call15 = call double @g_value_get_double(%struct._GValue* %arrayidx14)
  store double %call15, double* %feather_radius_x, align 8
  %13 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values16 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %13, i32 0, i32 1
  %14 = load %struct._GValue*, %struct._GValue** %values16, align 8
  %arrayidx17 = getelementptr inbounds %struct._GValue, %struct._GValue* %14, i64 6
  %call18 = call double @g_value_get_double(%struct._GValue* %arrayidx17)
  store double %call18, double* %feather_radius_y, align 8
  %15 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %15, 0
  br i1 %tobool, label %if.then, label %if.end.24

if.then:                                          ; preds = %entry
  %16 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %17 = load i8*, i8** %name, align 8
  %call19 = call %struct._GimpVectors* @gimp_image_get_vectors_by_name(%struct._GimpImage* %16, i8* %17)
  store %struct._GimpVectors* %call19, %struct._GimpVectors** %vectors, align 8
  %18 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %tobool20 = icmp ne %struct._GimpVectors* %18, null
  br i1 %tobool20, label %if.then.21, label %if.else

if.then.21:                                       ; preds = %if.then
  %19 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %20 = bitcast %struct._GimpVectors* %19 to %struct._GTypeInstance*
  %call22 = call i64 @gimp_item_get_type() #3
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call22)
  %21 = bitcast %struct._GTypeInstance* %call23 to %struct._GimpItem*
  %22 = load i32, i32* %op, align 4
  %23 = load i32, i32* %antialias, align 4
  %24 = load i32, i32* %feather, align 4
  %25 = load double, double* %feather_radius_x, align 8
  %26 = load double, double* %feather_radius_y, align 8
  call void @gimp_item_to_selection(%struct._GimpItem* %21, i32 %22, i32 %23, i32 %24, double %25, double %26)
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.21
  br label %if.end.24

if.end.24:                                        ; preds = %if.end, %entry
  %27 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %28 = load i32, i32* %success, align 4
  %29 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool25 = icmp ne %struct._GError** %29, null
  br i1 %tobool25, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.24
  %30 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %31 = load %struct._GError*, %struct._GError** %30, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.24
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %31, %cond.true ], [ null, %cond.false ]
  %call26 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %27, i32 %28, %struct._GError* %cond)
  ret %struct._GValueArray* %call26
}

declare %struct._GParamSpec* @g_param_spec_enum(i8*, i8*, i8*, i64, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_channel_ops_get_type() #2

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @path_import_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %image = alloca %struct._GimpImage*, align 8
  %filename = alloca i8*, align 8
  %merge = alloca i32, align 4
  %scale = alloca i32, align 4
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
  %call3 = call i8* @g_value_get_string(%struct._GValue* %arrayidx2)
  store i8* %call3, i8** %filename, align 8
  %5 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values4 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %5, i32 0, i32 1
  %6 = load %struct._GValue*, %struct._GValue** %values4, align 8
  %arrayidx5 = getelementptr inbounds %struct._GValue, %struct._GValue* %6, i64 2
  %call6 = call i32 @g_value_get_boolean(%struct._GValue* %arrayidx5)
  store i32 %call6, i32* %merge, align 4
  %7 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values7 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %7, i32 0, i32 1
  %8 = load %struct._GValue*, %struct._GValue** %values7, align 8
  %arrayidx8 = getelementptr inbounds %struct._GValue, %struct._GValue* %8, i64 3
  %call9 = call i32 @g_value_get_boolean(%struct._GValue* %arrayidx8)
  store i32 %call9, i32* %scale, align 4
  %9 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %11 = load i8*, i8** %filename, align 8
  %12 = load i32, i32* %merge, align 4
  %13 = load i32, i32* %scale, align 4
  %call10 = call i32 @gimp_vectors_import_file(%struct._GimpImage* %10, i8* %11, i32 %12, i32 %13, %struct._GimpVectors* null, i32 -1, %struct._GList** null, %struct._GError** null)
  store i32 %call10, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %14 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %15 = load i32, i32* %success, align 4
  %16 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool11 = icmp ne %struct._GError** %16, null
  br i1 %tobool11, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %17 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %18 = load %struct._GError*, %struct._GError** %17, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %18, %cond.true ], [ null, %cond.false ]
  %call12 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %14, i32 %15, %struct._GError* %cond)
  ret %struct._GValueArray* %call12
}

declare %struct._GimpImage* @gimp_value_get_image(%struct._GValue*, %struct._Gimp*) #1

declare i8** @gimp_container_get_name_array(%struct._GimpContainer*, i32*) #1

declare %struct._GimpContainer* @gimp_image_get_vectors(%struct._GimpImage*) #1

declare %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure*, i32, %struct._GError*) #1

declare void @g_value_set_int(%struct._GValue*, i32) #1

declare void @gimp_value_take_stringarray(%struct._GValue*, i8**, i64) #1

declare %struct._GimpVectors* @gimp_image_get_active_vectors(%struct._GimpImage*) #1

declare noalias i8* @g_strdup(i8*) #1

declare i8* @gimp_object_get_name(i8*) #1

declare void @g_value_take_string(%struct._GValue*, i8*) #1

declare i8* @g_value_get_string(%struct._GValue*) #1

declare %struct._GimpVectors* @gimp_image_get_vectors_by_name(%struct._GimpImage*, i8*) #1

declare %struct._GimpVectors* @gimp_image_set_active_vectors(%struct._GimpImage*, %struct._GimpVectors*) #1

declare void @gimp_image_remove_vectors(%struct._GimpImage*, %struct._GimpVectors*, i32, %struct._GimpVectors*) #1

declare %struct._GimpVectorsCompatPoint* @gimp_vectors_compat_get_points(%struct._GimpVectors*, i32*, i32*) #1

declare noalias i8* @g_malloc0_n(i64, i64) #1

declare void @g_free(i8*) #1

declare void @gimp_value_take_floatarray(%struct._GValue*, double*, i64) #1

declare i32 @g_value_get_int(%struct._GValue*) #1

declare double* @gimp_value_get_floatarray(%struct._GValue*) #1

declare %struct._GimpVectors* @gimp_vectors_compat_new(%struct._GimpImage*, i8*, %struct._GimpVectorsCompatPoint*, i32, i32) #1

declare i32 @gimp_image_add_vectors(%struct._GimpImage*, %struct._GimpVectors*, %struct._GimpVectors*, i32, i32) #1

declare %struct._GimpDrawable* @gimp_image_get_active_drawable(%struct._GimpImage*) #1

declare i32 @gimp_pdb_item_is_writable(%struct._GimpItem*, %struct._GError**) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_item_get_type() #2

declare i32 @gimp_pdb_item_is_not_group(%struct._GimpItem*, %struct._GError**) #1

declare %struct._GimpStrokeOptions* @gimp_stroke_options_new(%struct._Gimp*, %struct._GimpContext*, i32) #1

declare void @g_object_set(i8*, i8*, ...) #1

declare %struct._GimpPaintOptions* @gimp_pdb_context_get_paint_options(%struct._GimpPDBContext*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_pdb_context_get_type() #2

declare i8* @gimp_config_duplicate(%struct._GimpConfig*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_config_interface_get_type() #2

declare i32 @gimp_item_stroke(%struct._GimpItem*, %struct._GimpDrawable*, %struct._GimpContext*, %struct._GimpStrokeOptions*, %struct._GimpPaintOptions*, i32, %struct._GimpProgress*, %struct._GError**) #1

declare double @g_value_get_double(%struct._GValue*) #1

declare %struct._GimpStroke* @gimp_vectors_stroke_get_next(%struct._GimpVectors*, %struct._GimpStroke*) #1

declare double @gimp_stroke_get_length(%struct._GimpStroke*, double) #1

declare i32 @gimp_stroke_get_point_at_dist(%struct._GimpStroke*, double, double, %struct._GimpCoords*, double*) #1

declare void @g_value_set_double(%struct._GValue*, double) #1

declare i32 @gimp_item_get_tattoo(%struct._GimpItem*) #1

declare void @gimp_item_set_tattoo(%struct._GimpItem*, i32) #1

declare %struct._GimpVectors* @gimp_image_get_vectors_by_tattoo(%struct._GimpImage*, i32) #1

declare i32 @gimp_item_get_linked(%struct._GimpItem*) #1

declare void @g_value_set_boolean(%struct._GValue*, i32) #1

declare i32 @g_value_get_boolean(%struct._GValue*) #1

declare void @gimp_item_set_linked(%struct._GimpItem*, i32, i32) #1

declare i32 @g_value_get_enum(%struct._GValue*) #1

declare void @gimp_item_to_selection(%struct._GimpItem*, i32, i32, i32, double, double) #1

declare i32 @gimp_vectors_import_file(%struct._GimpImage*, i8*, i32, i32, %struct._GimpVectors*, i32, %struct._GList**, %struct._GError**) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
