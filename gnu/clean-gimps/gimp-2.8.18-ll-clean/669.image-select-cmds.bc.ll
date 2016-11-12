; ModuleID = './app/pdb/image-select-cmds.bc'
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
%struct._GimpDrawable = type { %struct._GimpItem, %struct._GimpDrawablePrivate* }
%struct._GimpItem = type { %struct._GimpViewable }
%struct._GimpDrawablePrivate = type opaque
%struct._GimpPDBContext = type { %struct._GimpContext, i32, i32, double, double, i32, i32, double, i32, i32, i32, i32, i32, %struct._GimpContainer* }
%struct._GimpContainer = type opaque
%struct._GimpChannel = type opaque
%struct._GimpVector2 = type { double, double }

@.str = private unnamed_addr constant [24 x i8] c"gimp-image-select-color\00", align 1
@.str.1 = private unnamed_addr constant [123 x i8] c"Create a selection by selecting all pixels (in the specified drawable) with the same (or similar) color to that specified.\00", align 1
@.str.2 = private unnamed_addr constant [811 x i8] c"This tool creates a selection over the specified image. A by-color selection is determined by the supplied color under the constraints of the current context settings. Essentially, all pixels (in the drawable) that have color sufficiently close to the specified color (as determined by the threshold and criterion context values) are included in the selection. To select transparent regions, the color specified must also have minimum alpha. This procedure is affected by the following context setters: 'gimp-context-set-antialias', 'gimp-context-set-feather', 'gimp-context-set-feather-radius', 'gimp-context-set-sample-merged', 'gimp-context-set-sample-criterion', 'gimp-context-set-sample-threshold', 'gimp-context-set-sample-transparent'. In the case of a merged sampling, the supplied drawable is ignored.\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"David Gowers\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"2010\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"The affected image\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"operation\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"The selection operation\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"drawable\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"The affected drawable\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"color\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"The color to select\00", align 1
@.str.13 = private unnamed_addr constant [35 x i8] c"gimp-image-select-contiguous-color\00", align 1
@.str.14 = private unnamed_addr constant [133 x i8] c"Create a selection by selecting all pixels around specified coordinates with the same (or similar) color to that at the coordinates.\00", align 1
@.str.15 = private unnamed_addr constant [1178 x i8] c"This tool creates a contiguous selection over the specified image. A contiguous color selection is determined by a seed fill under the constraints of the current context settings. Essentially, the color at the specified coordinates (in the drawable) is measured and the selection expands outwards from that point to any adjacent pixels which are not significantly different (as determined by the threshold and criterion context settings). This process continues until no more expansion is possible. If antialiasing is turned on, the final selection mask will contain intermediate values based on close misses to the threshold bar at pixels along the seed fill boundary. This procedure is affected by the following context setters: 'gimp-context-set-antialias', 'gimp-context-set-feather', 'gimp-context-set-feather-radius', 'gimp-context-set-sample-merged', 'gimp-context-set-sample-criterion', 'gimp-context-set-sample-threshold', 'gimp-context-set-sample-transparent'. In the case of a mergedsampling, the supplied drawable is ignored. If the sample is merged, the specified coordinates are relative to the image origin; otherwise, they are relative to the drawable's origin.\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.17 = private unnamed_addr constant [61 x i8] c"x coordinate of initial seed fill point: (image coordinates)\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str.19 = private unnamed_addr constant [61 x i8] c"y coordinate of initial seed fill point: (image coordinates)\00", align 1
@.str.20 = private unnamed_addr constant [28 x i8] c"gimp-image-select-rectangle\00", align 1
@.str.21 = private unnamed_addr constant [57 x i8] c"Create a rectangular selection over the specified image;\00", align 1
@.str.22 = private unnamed_addr constant [312 x i8] c"This tool creates a rectangular selection over the specified image. The rectangular region can be either added to, subtracted from, or replace the contents of the previous selection mask. This procedure is affected by the following context setters: 'gimp-context-set-feather', 'gimp-context-set-feather-radius'.\00", align 1
@.str.23 = private unnamed_addr constant [34 x i8] c"Michael Natterer <mitch@gimp.org>\00", align 1
@.str.24 = private unnamed_addr constant [17 x i8] c"Michael Natterer\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"The image\00", align 1
@.str.26 = private unnamed_addr constant [47 x i8] c"x coordinate of upper-left corner of rectangle\00", align 1
@.str.27 = private unnamed_addr constant [47 x i8] c"y coordinate of upper-left corner of rectangle\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"width\00", align 1
@.str.29 = private unnamed_addr constant [27 x i8] c"The width of the rectangle\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"height\00", align 1
@.str.31 = private unnamed_addr constant [28 x i8] c"The height of the rectangle\00", align 1
@.str.32 = private unnamed_addr constant [34 x i8] c"gimp-image-select-round-rectangle\00", align 1
@.str.33 = private unnamed_addr constant [76 x i8] c"Create a rectangular selection with round corners over the specified image;\00", align 1
@.str.34 = private unnamed_addr constant [361 x i8] c"This tool creates a rectangular selection with round corners over the specified image. The rectangular region can be either added to, subtracted from, or replace the contents of the previous selection mask. This procedure is affected by the following context setters: 'gimp-context-set-antialias', 'gimp-context-set-feather', 'gimp-context-set-feather-radius'.\00", align 1
@.str.35 = private unnamed_addr constant [17 x i8] c"Martin Nordholts\00", align 1
@.str.36 = private unnamed_addr constant [16 x i8] c"corner-radius-x\00", align 1
@.str.37 = private unnamed_addr constant [16 x i8] c"corner radius x\00", align 1
@.str.38 = private unnamed_addr constant [33 x i8] c"The corner radius in X direction\00", align 1
@.str.39 = private unnamed_addr constant [16 x i8] c"corner-radius-y\00", align 1
@.str.40 = private unnamed_addr constant [16 x i8] c"corner radius y\00", align 1
@.str.41 = private unnamed_addr constant [33 x i8] c"The corner radius in Y direction\00", align 1
@.str.42 = private unnamed_addr constant [26 x i8] c"gimp-image-select-ellipse\00", align 1
@.str.43 = private unnamed_addr constant [57 x i8] c"Create an elliptical selection over the specified image.\00", align 1
@.str.44 = private unnamed_addr constant [341 x i8] c"This tool creates an elliptical selection over the specified image. The elliptical region can be either added to, subtracted from, or replace the contents of the previous selection mask. This procedure is affected by the following context setters: 'gimp-context-set-antialias', 'gimp-context-set-feather', 'gimp-context-set-feather-radius'.\00", align 1
@.str.45 = private unnamed_addr constant [58 x i8] c"x coordinate of upper-left corner of ellipse bounding box\00", align 1
@.str.46 = private unnamed_addr constant [58 x i8] c"y coordinate of upper-left corner of ellipse bounding box\00", align 1
@.str.47 = private unnamed_addr constant [25 x i8] c"The width of the ellipse\00", align 1
@.str.48 = private unnamed_addr constant [26 x i8] c"The height of the ellipse\00", align 1
@.str.49 = private unnamed_addr constant [26 x i8] c"gimp-image-select-polygon\00", align 1
@.str.50 = private unnamed_addr constant [55 x i8] c"Create a polygonal selection over the specified image.\00", align 1
@.str.51 = private unnamed_addr constant [685 x i8] c"This tool creates a polygonal selection over the specified image. The polygonal region can be either added to, subtracted from, or replace the contents of the previous selection mask. The polygon is specified through an array of floating point numbers and its length. The length of array must be 2n, where n is the number of points. Each point is defined by 2 floating point values which correspond to the x and y coordinates. If the final point does not connect to the starting point, a connecting segment is automatically added. This procedure is affected by the following context setters: 'gimp-context-set-antialias', 'gimp-context-set-feather', 'gimp-context-set-feather-radius'.\00", align 1
@.str.52 = private unnamed_addr constant [9 x i8] c"num-segs\00", align 1
@.str.53 = private unnamed_addr constant [9 x i8] c"num segs\00", align 1
@.str.54 = private unnamed_addr constant [52 x i8] c"Number of points (count 1 coordinate as two points)\00", align 1
@.str.55 = private unnamed_addr constant [5 x i8] c"segs\00", align 1
@.str.56 = private unnamed_addr constant [60 x i8] c"Array of points: { p1.x, p1.y, p2.x, p2.y, ..., pn.x, pn.y}\00", align 1
@.str.57 = private unnamed_addr constant [23 x i8] c"gimp-image-select-item\00", align 1
@.str.58 = private unnamed_addr constant [47 x i8] c"Transforms the specified item into a selection\00", align 1
@.str.59 = private unnamed_addr constant [394 x i8] c"This procedure renders the item's outline into the current selection of the image the item belongs to. What exactly the item's outline is depends on the item type: for layers, it's the layer's alpha channel, for vectors the vector's shape. This procedure is affected by the following context setters: 'gimp-context-set-antialias', 'gimp-context-set-feather', 'gimp-context-set-feather-radius'.\00", align 1
@.str.60 = private unnamed_addr constant [45 x i8] c"The desired operation with current selection\00", align 1
@.str.61 = private unnamed_addr constant [5 x i8] c"item\00", align 1
@.str.62 = private unnamed_addr constant [36 x i8] c"The item to render to the selection\00", align 1
@.str.63 = private unnamed_addr constant [12 x i8] c"Free Select\00", align 1

; Function Attrs: nounwind uwtable
define void @register_image_select_procs(%struct._GimpPDB* %pdb) #0 {
entry:
  %pdb.addr = alloca %struct._GimpPDB*, align 8
  %procedure = alloca %struct._GimpProcedure*, align 8
  store %struct._GimpPDB* %pdb, %struct._GimpPDB** %pdb.addr, align 8
  %call = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @image_select_color_invoker)
  store %struct._GimpProcedure* %call, %struct._GimpProcedure** %procedure, align 8
  %0 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %1 = bitcast %struct._GimpProcedure* %0 to %struct._GTypeInstance*
  %call1 = call i64 @gimp_object_get_type() #4
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call1)
  %2 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %2, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i32 0, i32 0))
  %3 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %3, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([123 x i8], [123 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([811 x i8], [811 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* null)
  %4 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %5 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %5, i32 0, i32 1
  %6 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call3 = call %struct._GParamSpec* @gimp_param_spec_image_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i32 0, i32 0), %struct._Gimp* %6, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %4, %struct._GParamSpec* %call3)
  %7 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call4 = call i64 @gimp_channel_ops_get_type() #4
  %call5 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i32 0, i32 0), i64 %call4, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %7, %struct._GParamSpec* %call5)
  %8 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %9 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp6 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %9, i32 0, i32 1
  %10 = load %struct._Gimp*, %struct._Gimp** %gimp6, align 8
  %call7 = call %struct._GParamSpec* @gimp_param_spec_drawable_id(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i32 0, i32 0), %struct._Gimp* %10, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %8, %struct._GParamSpec* %call7)
  %11 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call8 = call %struct._GParamSpec* @gimp_param_spec_rgb(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i32 0, i32 0), i32 0, %struct._GimpRGB* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %11, %struct._GParamSpec* %call8)
  %12 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %13 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %12, %struct._GimpProcedure* %13)
  %14 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %15 = bitcast %struct._GimpProcedure* %14 to i8*
  call void @g_object_unref(i8* %15)
  %call9 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @image_select_contiguous_color_invoker)
  store %struct._GimpProcedure* %call9, %struct._GimpProcedure** %procedure, align 8
  %16 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %17 = bitcast %struct._GimpProcedure* %16 to %struct._GTypeInstance*
  %call10 = call i64 @gimp_object_get_type() #4
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call10)
  %18 = bitcast %struct._GTypeInstance* %call11 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %18, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.13, i32 0, i32 0))
  %19 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %19, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([133 x i8], [133 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([1178 x i8], [1178 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* null)
  %20 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %21 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp12 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %21, i32 0, i32 1
  %22 = load %struct._Gimp*, %struct._Gimp** %gimp12, align 8
  %call13 = call %struct._GParamSpec* @gimp_param_spec_image_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i32 0, i32 0), %struct._Gimp* %22, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %20, %struct._GParamSpec* %call13)
  %23 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call14 = call i64 @gimp_channel_ops_get_type() #4
  %call15 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i32 0, i32 0), i64 %call14, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %23, %struct._GParamSpec* %call15)
  %24 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %25 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp16 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %25, i32 0, i32 1
  %26 = load %struct._Gimp*, %struct._Gimp** %gimp16, align 8
  %call17 = call %struct._GParamSpec* @gimp_param_spec_drawable_id(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i32 0, i32 0), %struct._Gimp* %26, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %24, %struct._GParamSpec* %call17)
  %27 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call18 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.17, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %27, %struct._GParamSpec* %call18)
  %28 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call19 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.19, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %28, %struct._GParamSpec* %call19)
  %29 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %30 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %29, %struct._GimpProcedure* %30)
  %31 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %32 = bitcast %struct._GimpProcedure* %31 to i8*
  call void @g_object_unref(i8* %32)
  %call20 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @image_select_rectangle_invoker)
  store %struct._GimpProcedure* %call20, %struct._GimpProcedure** %procedure, align 8
  %33 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %34 = bitcast %struct._GimpProcedure* %33 to %struct._GTypeInstance*
  %call21 = call i64 @gimp_object_get_type() #4
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 %call21)
  %35 = bitcast %struct._GTypeInstance* %call22 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %35, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.20, i32 0, i32 0))
  %36 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %36, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([312 x i8], [312 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* null)
  %37 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %38 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp23 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %38, i32 0, i32 1
  %39 = load %struct._Gimp*, %struct._Gimp** %gimp23, align 8
  %call24 = call %struct._GParamSpec* @gimp_param_spec_image_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i32 0, i32 0), %struct._Gimp* %39, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %37, %struct._GParamSpec* %call24)
  %40 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call25 = call i64 @gimp_channel_ops_get_type() #4
  %call26 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i32 0, i32 0), i64 %call25, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %40, %struct._GParamSpec* %call26)
  %41 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call27 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.26, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %41, %struct._GParamSpec* %call27)
  %42 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call28 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.27, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %42, %struct._GParamSpec* %call28)
  %43 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call29 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.29, i32 0, i32 0), double 0.000000e+00, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %43, %struct._GParamSpec* %call29)
  %44 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call30 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.31, i32 0, i32 0), double 0.000000e+00, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %44, %struct._GParamSpec* %call30)
  %45 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %46 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %45, %struct._GimpProcedure* %46)
  %47 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %48 = bitcast %struct._GimpProcedure* %47 to i8*
  call void @g_object_unref(i8* %48)
  %call31 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @image_select_round_rectangle_invoker)
  store %struct._GimpProcedure* %call31, %struct._GimpProcedure** %procedure, align 8
  %49 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %50 = bitcast %struct._GimpProcedure* %49 to %struct._GTypeInstance*
  %call32 = call i64 @gimp_object_get_type() #4
  %call33 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %50, i64 %call32)
  %51 = bitcast %struct._GTypeInstance* %call33 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %51, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.32, i32 0, i32 0))
  %52 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %52, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([361 x i8], [361 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* null)
  %53 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %54 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp34 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %54, i32 0, i32 1
  %55 = load %struct._Gimp*, %struct._Gimp** %gimp34, align 8
  %call35 = call %struct._GParamSpec* @gimp_param_spec_image_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i32 0, i32 0), %struct._Gimp* %55, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %53, %struct._GParamSpec* %call35)
  %56 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call36 = call i64 @gimp_channel_ops_get_type() #4
  %call37 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i32 0, i32 0), i64 %call36, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %56, %struct._GParamSpec* %call37)
  %57 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call38 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.26, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %57, %struct._GParamSpec* %call38)
  %58 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call39 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.27, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %58, %struct._GParamSpec* %call39)
  %59 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call40 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.29, i32 0, i32 0), double 0.000000e+00, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %59, %struct._GParamSpec* %call40)
  %60 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call41 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.31, i32 0, i32 0), double 0.000000e+00, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %60, %struct._GParamSpec* %call41)
  %61 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call42 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.38, i32 0, i32 0), double 0.000000e+00, double 2.621440e+05, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %61, %struct._GParamSpec* %call42)
  %62 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call43 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.41, i32 0, i32 0), double 0.000000e+00, double 2.621440e+05, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %62, %struct._GParamSpec* %call43)
  %63 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %64 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %63, %struct._GimpProcedure* %64)
  %65 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %66 = bitcast %struct._GimpProcedure* %65 to i8*
  call void @g_object_unref(i8* %66)
  %call44 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @image_select_ellipse_invoker)
  store %struct._GimpProcedure* %call44, %struct._GimpProcedure** %procedure, align 8
  %67 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %68 = bitcast %struct._GimpProcedure* %67 to %struct._GTypeInstance*
  %call45 = call i64 @gimp_object_get_type() #4
  %call46 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %68, i64 %call45)
  %69 = bitcast %struct._GTypeInstance* %call46 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %69, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.42, i32 0, i32 0))
  %70 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %70, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([341 x i8], [341 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* null)
  %71 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %72 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp47 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %72, i32 0, i32 1
  %73 = load %struct._Gimp*, %struct._Gimp** %gimp47, align 8
  %call48 = call %struct._GParamSpec* @gimp_param_spec_image_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i32 0, i32 0), %struct._Gimp* %73, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %71, %struct._GParamSpec* %call48)
  %74 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call49 = call i64 @gimp_channel_ops_get_type() #4
  %call50 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i32 0, i32 0), i64 %call49, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %74, %struct._GParamSpec* %call50)
  %75 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call51 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.45, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %75, %struct._GParamSpec* %call51)
  %76 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call52 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.46, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %76, %struct._GParamSpec* %call52)
  %77 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call53 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.47, i32 0, i32 0), double 0.000000e+00, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %77, %struct._GParamSpec* %call53)
  %78 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call54 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.48, i32 0, i32 0), double 0.000000e+00, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %78, %struct._GParamSpec* %call54)
  %79 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %80 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %79, %struct._GimpProcedure* %80)
  %81 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %82 = bitcast %struct._GimpProcedure* %81 to i8*
  call void @g_object_unref(i8* %82)
  %call55 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @image_select_polygon_invoker)
  store %struct._GimpProcedure* %call55, %struct._GimpProcedure** %procedure, align 8
  %83 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %84 = bitcast %struct._GimpProcedure* %83 to %struct._GTypeInstance*
  %call56 = call i64 @gimp_object_get_type() #4
  %call57 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %84, i64 %call56)
  %85 = bitcast %struct._GTypeInstance* %call57 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %85, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.49, i32 0, i32 0))
  %86 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %86, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([685 x i8], [685 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* null)
  %87 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %88 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp58 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %88, i32 0, i32 1
  %89 = load %struct._Gimp*, %struct._Gimp** %gimp58, align 8
  %call59 = call %struct._GParamSpec* @gimp_param_spec_image_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i32 0, i32 0), %struct._Gimp* %89, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %87, %struct._GParamSpec* %call59)
  %90 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call60 = call i64 @gimp_channel_ops_get_type() #4
  %call61 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i32 0, i32 0), i64 %call60, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %90, %struct._GParamSpec* %call61)
  %91 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call62 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.54, i32 0, i32 0), i32 2, i32 2147483647, i32 2, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %91, %struct._GParamSpec* %call62)
  %92 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call63 = call %struct._GParamSpec* @gimp_param_spec_float_array(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.56, i32 0, i32 0), i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %92, %struct._GParamSpec* %call63)
  %93 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %94 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %93, %struct._GimpProcedure* %94)
  %95 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %96 = bitcast %struct._GimpProcedure* %95 to i8*
  call void @g_object_unref(i8* %96)
  %call64 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @image_select_item_invoker)
  store %struct._GimpProcedure* %call64, %struct._GimpProcedure** %procedure, align 8
  %97 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %98 = bitcast %struct._GimpProcedure* %97 to %struct._GTypeInstance*
  %call65 = call i64 @gimp_object_get_type() #4
  %call66 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %98, i64 %call65)
  %99 = bitcast %struct._GTypeInstance* %call66 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %99, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.57, i32 0, i32 0))
  %100 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %100, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([394 x i8], [394 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* null)
  %101 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %102 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp67 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %102, i32 0, i32 1
  %103 = load %struct._Gimp*, %struct._Gimp** %gimp67, align 8
  %call68 = call %struct._GParamSpec* @gimp_param_spec_image_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i32 0, i32 0), %struct._Gimp* %103, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %101, %struct._GParamSpec* %call68)
  %104 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call69 = call i64 @gimp_channel_ops_get_type() #4
  %call70 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.60, i32 0, i32 0), i64 %call69, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %104, %struct._GParamSpec* %call70)
  %105 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %106 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp71 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %106, i32 0, i32 1
  %107 = load %struct._Gimp*, %struct._Gimp** %gimp71, align 8
  %call72 = call %struct._GParamSpec* @gimp_param_spec_item_id(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.62, i32 0, i32 0), %struct._Gimp* %107, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %105, %struct._GParamSpec* %call72)
  %108 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %109 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %108, %struct._GimpProcedure* %109)
  %110 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %111 = bitcast %struct._GimpProcedure* %110 to i8*
  call void @g_object_unref(i8* %111)
  ret void
}

declare %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)*) #1

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @image_select_color_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %image = alloca %struct._GimpImage*, align 8
  %operation = alloca i32, align 4
  %drawable = alloca %struct._GimpDrawable*, align 8
  %color = alloca %struct._GimpRGB, align 8
  %pdb_context = alloca %struct._GimpPDBContext*, align 8
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
  store i32 %call3, i32* %operation, align 4
  %5 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values4 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %5, i32 0, i32 1
  %6 = load %struct._GValue*, %struct._GValue** %values4, align 8
  %arrayidx5 = getelementptr inbounds %struct._GValue, %struct._GValue* %6, i64 2
  %7 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call6 = call %struct._GimpDrawable* @gimp_value_get_drawable(%struct._GValue* %arrayidx5, %struct._Gimp* %7)
  store %struct._GimpDrawable* %call6, %struct._GimpDrawable** %drawable, align 8
  %8 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values7 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %8, i32 0, i32 1
  %9 = load %struct._GValue*, %struct._GValue** %values7, align 8
  %arrayidx8 = getelementptr inbounds %struct._GValue, %struct._GValue* %9, i64 3
  call void @gimp_value_get_rgb(%struct._GValue* %arrayidx8, %struct._GimpRGB* %color)
  %10 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %if.then, label %if.end.19

if.then:                                          ; preds = %entry
  %11 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %12 = bitcast %struct._GimpContext* %11 to %struct._GTypeInstance*
  %call9 = call i64 @gimp_pdb_context_get_type() #4
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call9)
  %13 = bitcast %struct._GTypeInstance* %call10 to %struct._GimpPDBContext*
  store %struct._GimpPDBContext* %13, %struct._GimpPDBContext** %pdb_context, align 8
  %14 = load %struct._GimpPDBContext*, %struct._GimpPDBContext** %pdb_context, align 8
  %sample_merged = getelementptr inbounds %struct._GimpPDBContext, %struct._GimpPDBContext* %14, i32 0, i32 5
  %15 = load i32, i32* %sample_merged, align 4
  %tobool11 = icmp ne i32 %15, 0
  br i1 %tobool11, label %if.then.16, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %16 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %17 = bitcast %struct._GimpDrawable* %16 to %struct._GTypeInstance*
  %call12 = call i64 @gimp_item_get_type() #4
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call12)
  %18 = bitcast %struct._GTypeInstance* %call13 to %struct._GimpItem*
  %19 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %20 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call14 = call i32 @gimp_pdb_item_is_attached(%struct._GimpItem* %18, %struct._GimpImage* %19, i32 0, %struct._GError** %20)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.then.16, label %if.else

if.then.16:                                       ; preds = %lor.lhs.false, %if.then
  %21 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call17 = call %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage* %21)
  %22 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %23 = load %struct._GimpPDBContext*, %struct._GimpPDBContext** %pdb_context, align 8
  %sample_merged18 = getelementptr inbounds %struct._GimpPDBContext, %struct._GimpPDBContext* %23, i32 0, i32 5
  %24 = load i32, i32* %sample_merged18, align 4
  %25 = load %struct._GimpPDBContext*, %struct._GimpPDBContext** %pdb_context, align 8
  %sample_threshold = getelementptr inbounds %struct._GimpPDBContext, %struct._GimpPDBContext* %25, i32 0, i32 7
  %26 = load double, double* %sample_threshold, align 8
  %mul = fmul double %26, 2.559900e+02
  %conv = fptosi double %mul to i32
  %27 = load %struct._GimpPDBContext*, %struct._GimpPDBContext** %pdb_context, align 8
  %sample_transparent = getelementptr inbounds %struct._GimpPDBContext, %struct._GimpPDBContext* %27, i32 0, i32 8
  %28 = load i32, i32* %sample_transparent, align 4
  %29 = load %struct._GimpPDBContext*, %struct._GimpPDBContext** %pdb_context, align 8
  %sample_criterion = getelementptr inbounds %struct._GimpPDBContext, %struct._GimpPDBContext* %29, i32 0, i32 6
  %30 = load i32, i32* %sample_criterion, align 4
  %31 = load i32, i32* %operation, align 4
  %32 = load %struct._GimpPDBContext*, %struct._GimpPDBContext** %pdb_context, align 8
  %antialias = getelementptr inbounds %struct._GimpPDBContext, %struct._GimpPDBContext* %32, i32 0, i32 1
  %33 = load i32, i32* %antialias, align 4
  %34 = load %struct._GimpPDBContext*, %struct._GimpPDBContext** %pdb_context, align 8
  %feather = getelementptr inbounds %struct._GimpPDBContext, %struct._GimpPDBContext* %34, i32 0, i32 2
  %35 = load i32, i32* %feather, align 4
  %36 = load %struct._GimpPDBContext*, %struct._GimpPDBContext** %pdb_context, align 8
  %feather_radius_x = getelementptr inbounds %struct._GimpPDBContext, %struct._GimpPDBContext* %36, i32 0, i32 3
  %37 = load double, double* %feather_radius_x, align 8
  %38 = load %struct._GimpPDBContext*, %struct._GimpPDBContext** %pdb_context, align 8
  %feather_radius_y = getelementptr inbounds %struct._GimpPDBContext, %struct._GimpPDBContext* %38, i32 0, i32 4
  %39 = load double, double* %feather_radius_y, align 8
  call void @gimp_channel_select_by_color(%struct._GimpChannel* %call17, %struct._GimpDrawable* %22, i32 %24, %struct._GimpRGB* %color, i32 %conv, i32 %28, i32 %30, i32 %31, i32 %33, i32 %35, double %37, double %39)
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.16
  br label %if.end.19

if.end.19:                                        ; preds = %if.end, %entry
  %40 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %41 = load i32, i32* %success, align 4
  %42 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool20 = icmp ne %struct._GError** %42, null
  br i1 %tobool20, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.19
  %43 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %44 = load %struct._GError*, %struct._GError** %43, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.19
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %44, %cond.true ], [ null, %cond.false ]
  %call21 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %40, i32 %41, %struct._GError* %cond)
  ret %struct._GValueArray* %call21
}

declare void @gimp_object_set_static_name(%struct._GimpObject*, i8*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #2

declare void @gimp_procedure_set_static_strings(%struct._GimpProcedure*, i8*, i8*, i8*, i8*, i8*, i8*, i8*) #1

declare void @gimp_procedure_add_argument(%struct._GimpProcedure*, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @gimp_param_spec_image_id(i8*, i8*, i8*, %struct._Gimp*, i32, i32) #1

declare %struct._GParamSpec* @g_param_spec_enum(i8*, i8*, i8*, i64, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_channel_ops_get_type() #2

declare %struct._GParamSpec* @gimp_param_spec_drawable_id(i8*, i8*, i8*, %struct._Gimp*, i32, i32) #1

declare %struct._GParamSpec* @gimp_param_spec_rgb(i8*, i8*, i8*, i32, %struct._GimpRGB*, i32) #1

declare void @gimp_pdb_register_procedure(%struct._GimpPDB*, %struct._GimpProcedure*) #1

declare void @g_object_unref(i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @image_select_contiguous_color_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %image = alloca %struct._GimpImage*, align 8
  %operation = alloca i32, align 4
  %drawable = alloca %struct._GimpDrawable*, align 8
  %x = alloca double, align 8
  %y = alloca double, align 8
  %pdb_context = alloca %struct._GimpPDBContext*, align 8
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
  store i32 %call3, i32* %operation, align 4
  %5 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values4 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %5, i32 0, i32 1
  %6 = load %struct._GValue*, %struct._GValue** %values4, align 8
  %arrayidx5 = getelementptr inbounds %struct._GValue, %struct._GValue* %6, i64 2
  %7 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call6 = call %struct._GimpDrawable* @gimp_value_get_drawable(%struct._GValue* %arrayidx5, %struct._Gimp* %7)
  store %struct._GimpDrawable* %call6, %struct._GimpDrawable** %drawable, align 8
  %8 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values7 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %8, i32 0, i32 1
  %9 = load %struct._GValue*, %struct._GValue** %values7, align 8
  %arrayidx8 = getelementptr inbounds %struct._GValue, %struct._GValue* %9, i64 3
  %call9 = call double @g_value_get_double(%struct._GValue* %arrayidx8)
  store double %call9, double* %x, align 8
  %10 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values10 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %10, i32 0, i32 1
  %11 = load %struct._GValue*, %struct._GValue** %values10, align 8
  %arrayidx11 = getelementptr inbounds %struct._GValue, %struct._GValue* %11, i64 4
  %call12 = call double @g_value_get_double(%struct._GValue* %arrayidx11)
  store double %call12, double* %y, align 8
  %12 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %12, 0
  br i1 %tobool, label %if.then, label %if.end.25

if.then:                                          ; preds = %entry
  %13 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %14 = bitcast %struct._GimpContext* %13 to %struct._GTypeInstance*
  %call13 = call i64 @gimp_pdb_context_get_type() #4
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call13)
  %15 = bitcast %struct._GTypeInstance* %call14 to %struct._GimpPDBContext*
  store %struct._GimpPDBContext* %15, %struct._GimpPDBContext** %pdb_context, align 8
  %16 = load %struct._GimpPDBContext*, %struct._GimpPDBContext** %pdb_context, align 8
  %sample_merged = getelementptr inbounds %struct._GimpPDBContext, %struct._GimpPDBContext* %16, i32 0, i32 5
  %17 = load i32, i32* %sample_merged, align 4
  %tobool15 = icmp ne i32 %17, 0
  br i1 %tobool15, label %if.then.20, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %18 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %19 = bitcast %struct._GimpDrawable* %18 to %struct._GTypeInstance*
  %call16 = call i64 @gimp_item_get_type() #4
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call16)
  %20 = bitcast %struct._GTypeInstance* %call17 to %struct._GimpItem*
  %21 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %22 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call18 = call i32 @gimp_pdb_item_is_attached(%struct._GimpItem* %20, %struct._GimpImage* %21, i32 0, %struct._GError** %22)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.then.20, label %if.else

if.then.20:                                       ; preds = %lor.lhs.false, %if.then
  %23 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call21 = call %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage* %23)
  %24 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %25 = load %struct._GimpPDBContext*, %struct._GimpPDBContext** %pdb_context, align 8
  %sample_merged22 = getelementptr inbounds %struct._GimpPDBContext, %struct._GimpPDBContext* %25, i32 0, i32 5
  %26 = load i32, i32* %sample_merged22, align 4
  %27 = load double, double* %x, align 8
  %conv = fptosi double %27 to i32
  %28 = load double, double* %y, align 8
  %conv23 = fptosi double %28 to i32
  %29 = load %struct._GimpPDBContext*, %struct._GimpPDBContext** %pdb_context, align 8
  %sample_threshold = getelementptr inbounds %struct._GimpPDBContext, %struct._GimpPDBContext* %29, i32 0, i32 7
  %30 = load double, double* %sample_threshold, align 8
  %mul = fmul double %30, 2.559900e+02
  %conv24 = fptosi double %mul to i32
  %31 = load %struct._GimpPDBContext*, %struct._GimpPDBContext** %pdb_context, align 8
  %sample_transparent = getelementptr inbounds %struct._GimpPDBContext, %struct._GimpPDBContext* %31, i32 0, i32 8
  %32 = load i32, i32* %sample_transparent, align 4
  %33 = load %struct._GimpPDBContext*, %struct._GimpPDBContext** %pdb_context, align 8
  %sample_criterion = getelementptr inbounds %struct._GimpPDBContext, %struct._GimpPDBContext* %33, i32 0, i32 6
  %34 = load i32, i32* %sample_criterion, align 4
  %35 = load i32, i32* %operation, align 4
  %36 = load %struct._GimpPDBContext*, %struct._GimpPDBContext** %pdb_context, align 8
  %antialias = getelementptr inbounds %struct._GimpPDBContext, %struct._GimpPDBContext* %36, i32 0, i32 1
  %37 = load i32, i32* %antialias, align 4
  %38 = load %struct._GimpPDBContext*, %struct._GimpPDBContext** %pdb_context, align 8
  %feather = getelementptr inbounds %struct._GimpPDBContext, %struct._GimpPDBContext* %38, i32 0, i32 2
  %39 = load i32, i32* %feather, align 4
  %40 = load %struct._GimpPDBContext*, %struct._GimpPDBContext** %pdb_context, align 8
  %feather_radius_x = getelementptr inbounds %struct._GimpPDBContext, %struct._GimpPDBContext* %40, i32 0, i32 3
  %41 = load double, double* %feather_radius_x, align 8
  %42 = load %struct._GimpPDBContext*, %struct._GimpPDBContext** %pdb_context, align 8
  %feather_radius_y = getelementptr inbounds %struct._GimpPDBContext, %struct._GimpPDBContext* %42, i32 0, i32 4
  %43 = load double, double* %feather_radius_y, align 8
  call void @gimp_channel_select_fuzzy(%struct._GimpChannel* %call21, %struct._GimpDrawable* %24, i32 %26, i32 %conv, i32 %conv23, i32 %conv24, i32 %32, i32 %34, i32 %35, i32 %37, i32 %39, double %41, double %43)
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.20
  br label %if.end.25

if.end.25:                                        ; preds = %if.end, %entry
  %44 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %45 = load i32, i32* %success, align 4
  %46 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool26 = icmp ne %struct._GError** %46, null
  br i1 %tobool26, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.25
  %47 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %48 = load %struct._GError*, %struct._GError** %47, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.25
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %48, %cond.true ], [ null, %cond.false ]
  %call27 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %44, i32 %45, %struct._GError* %cond)
  ret %struct._GValueArray* %call27
}

declare %struct._GParamSpec* @g_param_spec_double(i8*, i8*, i8*, double, double, double, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @image_select_rectangle_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %image = alloca %struct._GimpImage*, align 8
  %operation = alloca i32, align 4
  %x = alloca double, align 8
  %y = alloca double, align 8
  %width = alloca double, align 8
  %height = alloca double, align 8
  %pdb_context = alloca %struct._GimpPDBContext*, align 8
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
  store i32 %call3, i32* %operation, align 4
  %5 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values4 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %5, i32 0, i32 1
  %6 = load %struct._GValue*, %struct._GValue** %values4, align 8
  %arrayidx5 = getelementptr inbounds %struct._GValue, %struct._GValue* %6, i64 2
  %call6 = call double @g_value_get_double(%struct._GValue* %arrayidx5)
  store double %call6, double* %x, align 8
  %7 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values7 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %7, i32 0, i32 1
  %8 = load %struct._GValue*, %struct._GValue** %values7, align 8
  %arrayidx8 = getelementptr inbounds %struct._GValue, %struct._GValue* %8, i64 3
  %call9 = call double @g_value_get_double(%struct._GValue* %arrayidx8)
  store double %call9, double* %y, align 8
  %9 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values10 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %9, i32 0, i32 1
  %10 = load %struct._GValue*, %struct._GValue** %values10, align 8
  %arrayidx11 = getelementptr inbounds %struct._GValue, %struct._GValue* %10, i64 4
  %call12 = call double @g_value_get_double(%struct._GValue* %arrayidx11)
  store double %call12, double* %width, align 8
  %11 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values13 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %11, i32 0, i32 1
  %12 = load %struct._GValue*, %struct._GValue** %values13, align 8
  %arrayidx14 = getelementptr inbounds %struct._GValue, %struct._GValue* %12, i64 5
  %call15 = call double @g_value_get_double(%struct._GValue* %arrayidx14)
  store double %call15, double* %height, align 8
  %13 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %13, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %14 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %15 = bitcast %struct._GimpContext* %14 to %struct._GTypeInstance*
  %call16 = call i64 @gimp_pdb_context_get_type() #4
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call16)
  %16 = bitcast %struct._GTypeInstance* %call17 to %struct._GimpPDBContext*
  store %struct._GimpPDBContext* %16, %struct._GimpPDBContext** %pdb_context, align 8
  %17 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call18 = call %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage* %17)
  %18 = load double, double* %x, align 8
  %conv = fptosi double %18 to i32
  %19 = load double, double* %y, align 8
  %conv19 = fptosi double %19 to i32
  %20 = load double, double* %width, align 8
  %conv20 = fptosi double %20 to i32
  %21 = load double, double* %height, align 8
  %conv21 = fptosi double %21 to i32
  %22 = load i32, i32* %operation, align 4
  %23 = load %struct._GimpPDBContext*, %struct._GimpPDBContext** %pdb_context, align 8
  %feather = getelementptr inbounds %struct._GimpPDBContext, %struct._GimpPDBContext* %23, i32 0, i32 2
  %24 = load i32, i32* %feather, align 4
  %25 = load %struct._GimpPDBContext*, %struct._GimpPDBContext** %pdb_context, align 8
  %feather_radius_x = getelementptr inbounds %struct._GimpPDBContext, %struct._GimpPDBContext* %25, i32 0, i32 3
  %26 = load double, double* %feather_radius_x, align 8
  %27 = load %struct._GimpPDBContext*, %struct._GimpPDBContext** %pdb_context, align 8
  %feather_radius_y = getelementptr inbounds %struct._GimpPDBContext, %struct._GimpPDBContext* %27, i32 0, i32 4
  %28 = load double, double* %feather_radius_y, align 8
  call void @gimp_channel_select_rectangle(%struct._GimpChannel* %call18, i32 %conv, i32 %conv19, i32 %conv20, i32 %conv21, i32 %22, i32 %24, double %26, double %28, i32 1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %29 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %30 = load i32, i32* %success, align 4
  %31 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool22 = icmp ne %struct._GError** %31, null
  br i1 %tobool22, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %32 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %33 = load %struct._GError*, %struct._GError** %32, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %33, %cond.true ], [ null, %cond.false ]
  %call23 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %29, i32 %30, %struct._GError* %cond)
  ret %struct._GValueArray* %call23
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @image_select_round_rectangle_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %image = alloca %struct._GimpImage*, align 8
  %operation = alloca i32, align 4
  %x = alloca double, align 8
  %y = alloca double, align 8
  %width = alloca double, align 8
  %height = alloca double, align 8
  %corner_radius_x = alloca double, align 8
  %corner_radius_y = alloca double, align 8
  %pdb_context = alloca %struct._GimpPDBContext*, align 8
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
  store i32 %call3, i32* %operation, align 4
  %5 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values4 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %5, i32 0, i32 1
  %6 = load %struct._GValue*, %struct._GValue** %values4, align 8
  %arrayidx5 = getelementptr inbounds %struct._GValue, %struct._GValue* %6, i64 2
  %call6 = call double @g_value_get_double(%struct._GValue* %arrayidx5)
  store double %call6, double* %x, align 8
  %7 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values7 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %7, i32 0, i32 1
  %8 = load %struct._GValue*, %struct._GValue** %values7, align 8
  %arrayidx8 = getelementptr inbounds %struct._GValue, %struct._GValue* %8, i64 3
  %call9 = call double @g_value_get_double(%struct._GValue* %arrayidx8)
  store double %call9, double* %y, align 8
  %9 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values10 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %9, i32 0, i32 1
  %10 = load %struct._GValue*, %struct._GValue** %values10, align 8
  %arrayidx11 = getelementptr inbounds %struct._GValue, %struct._GValue* %10, i64 4
  %call12 = call double @g_value_get_double(%struct._GValue* %arrayidx11)
  store double %call12, double* %width, align 8
  %11 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values13 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %11, i32 0, i32 1
  %12 = load %struct._GValue*, %struct._GValue** %values13, align 8
  %arrayidx14 = getelementptr inbounds %struct._GValue, %struct._GValue* %12, i64 5
  %call15 = call double @g_value_get_double(%struct._GValue* %arrayidx14)
  store double %call15, double* %height, align 8
  %13 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values16 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %13, i32 0, i32 1
  %14 = load %struct._GValue*, %struct._GValue** %values16, align 8
  %arrayidx17 = getelementptr inbounds %struct._GValue, %struct._GValue* %14, i64 6
  %call18 = call double @g_value_get_double(%struct._GValue* %arrayidx17)
  store double %call18, double* %corner_radius_x, align 8
  %15 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values19 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %15, i32 0, i32 1
  %16 = load %struct._GValue*, %struct._GValue** %values19, align 8
  %arrayidx20 = getelementptr inbounds %struct._GValue, %struct._GValue* %16, i64 7
  %call21 = call double @g_value_get_double(%struct._GValue* %arrayidx20)
  store double %call21, double* %corner_radius_y, align 8
  %17 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %17, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %18 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %19 = bitcast %struct._GimpContext* %18 to %struct._GTypeInstance*
  %call22 = call i64 @gimp_pdb_context_get_type() #4
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call22)
  %20 = bitcast %struct._GTypeInstance* %call23 to %struct._GimpPDBContext*
  store %struct._GimpPDBContext* %20, %struct._GimpPDBContext** %pdb_context, align 8
  %21 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call24 = call %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage* %21)
  %22 = load double, double* %x, align 8
  %conv = fptosi double %22 to i32
  %23 = load double, double* %y, align 8
  %conv25 = fptosi double %23 to i32
  %24 = load double, double* %width, align 8
  %conv26 = fptosi double %24 to i32
  %25 = load double, double* %height, align 8
  %conv27 = fptosi double %25 to i32
  %26 = load double, double* %corner_radius_x, align 8
  %27 = load double, double* %corner_radius_y, align 8
  %28 = load i32, i32* %operation, align 4
  %29 = load %struct._GimpPDBContext*, %struct._GimpPDBContext** %pdb_context, align 8
  %antialias = getelementptr inbounds %struct._GimpPDBContext, %struct._GimpPDBContext* %29, i32 0, i32 1
  %30 = load i32, i32* %antialias, align 4
  %31 = load %struct._GimpPDBContext*, %struct._GimpPDBContext** %pdb_context, align 8
  %feather = getelementptr inbounds %struct._GimpPDBContext, %struct._GimpPDBContext* %31, i32 0, i32 2
  %32 = load i32, i32* %feather, align 4
  %33 = load %struct._GimpPDBContext*, %struct._GimpPDBContext** %pdb_context, align 8
  %feather_radius_x = getelementptr inbounds %struct._GimpPDBContext, %struct._GimpPDBContext* %33, i32 0, i32 3
  %34 = load double, double* %feather_radius_x, align 8
  %35 = load %struct._GimpPDBContext*, %struct._GimpPDBContext** %pdb_context, align 8
  %feather_radius_y = getelementptr inbounds %struct._GimpPDBContext, %struct._GimpPDBContext* %35, i32 0, i32 4
  %36 = load double, double* %feather_radius_y, align 8
  call void @gimp_channel_select_round_rect(%struct._GimpChannel* %call24, i32 %conv, i32 %conv25, i32 %conv26, i32 %conv27, double %26, double %27, i32 %28, i32 %30, i32 %32, double %34, double %36, i32 1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %37 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %38 = load i32, i32* %success, align 4
  %39 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool28 = icmp ne %struct._GError** %39, null
  br i1 %tobool28, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %40 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %41 = load %struct._GError*, %struct._GError** %40, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %41, %cond.true ], [ null, %cond.false ]
  %call29 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %37, i32 %38, %struct._GError* %cond)
  ret %struct._GValueArray* %call29
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @image_select_ellipse_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %image = alloca %struct._GimpImage*, align 8
  %operation = alloca i32, align 4
  %x = alloca double, align 8
  %y = alloca double, align 8
  %width = alloca double, align 8
  %height = alloca double, align 8
  %pdb_context = alloca %struct._GimpPDBContext*, align 8
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
  store i32 %call3, i32* %operation, align 4
  %5 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values4 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %5, i32 0, i32 1
  %6 = load %struct._GValue*, %struct._GValue** %values4, align 8
  %arrayidx5 = getelementptr inbounds %struct._GValue, %struct._GValue* %6, i64 2
  %call6 = call double @g_value_get_double(%struct._GValue* %arrayidx5)
  store double %call6, double* %x, align 8
  %7 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values7 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %7, i32 0, i32 1
  %8 = load %struct._GValue*, %struct._GValue** %values7, align 8
  %arrayidx8 = getelementptr inbounds %struct._GValue, %struct._GValue* %8, i64 3
  %call9 = call double @g_value_get_double(%struct._GValue* %arrayidx8)
  store double %call9, double* %y, align 8
  %9 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values10 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %9, i32 0, i32 1
  %10 = load %struct._GValue*, %struct._GValue** %values10, align 8
  %arrayidx11 = getelementptr inbounds %struct._GValue, %struct._GValue* %10, i64 4
  %call12 = call double @g_value_get_double(%struct._GValue* %arrayidx11)
  store double %call12, double* %width, align 8
  %11 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values13 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %11, i32 0, i32 1
  %12 = load %struct._GValue*, %struct._GValue** %values13, align 8
  %arrayidx14 = getelementptr inbounds %struct._GValue, %struct._GValue* %12, i64 5
  %call15 = call double @g_value_get_double(%struct._GValue* %arrayidx14)
  store double %call15, double* %height, align 8
  %13 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %13, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %14 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %15 = bitcast %struct._GimpContext* %14 to %struct._GTypeInstance*
  %call16 = call i64 @gimp_pdb_context_get_type() #4
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call16)
  %16 = bitcast %struct._GTypeInstance* %call17 to %struct._GimpPDBContext*
  store %struct._GimpPDBContext* %16, %struct._GimpPDBContext** %pdb_context, align 8
  %17 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call18 = call %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage* %17)
  %18 = load double, double* %x, align 8
  %conv = fptosi double %18 to i32
  %19 = load double, double* %y, align 8
  %conv19 = fptosi double %19 to i32
  %20 = load double, double* %width, align 8
  %conv20 = fptosi double %20 to i32
  %21 = load double, double* %height, align 8
  %conv21 = fptosi double %21 to i32
  %22 = load i32, i32* %operation, align 4
  %23 = load %struct._GimpPDBContext*, %struct._GimpPDBContext** %pdb_context, align 8
  %antialias = getelementptr inbounds %struct._GimpPDBContext, %struct._GimpPDBContext* %23, i32 0, i32 1
  %24 = load i32, i32* %antialias, align 4
  %25 = load %struct._GimpPDBContext*, %struct._GimpPDBContext** %pdb_context, align 8
  %feather = getelementptr inbounds %struct._GimpPDBContext, %struct._GimpPDBContext* %25, i32 0, i32 2
  %26 = load i32, i32* %feather, align 4
  %27 = load %struct._GimpPDBContext*, %struct._GimpPDBContext** %pdb_context, align 8
  %feather_radius_x = getelementptr inbounds %struct._GimpPDBContext, %struct._GimpPDBContext* %27, i32 0, i32 3
  %28 = load double, double* %feather_radius_x, align 8
  %29 = load %struct._GimpPDBContext*, %struct._GimpPDBContext** %pdb_context, align 8
  %feather_radius_y = getelementptr inbounds %struct._GimpPDBContext, %struct._GimpPDBContext* %29, i32 0, i32 4
  %30 = load double, double* %feather_radius_y, align 8
  call void @gimp_channel_select_ellipse(%struct._GimpChannel* %call18, i32 %conv, i32 %conv19, i32 %conv20, i32 %conv21, i32 %22, i32 %24, i32 %26, double %28, double %30, i32 1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %31 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %32 = load i32, i32* %success, align 4
  %33 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool22 = icmp ne %struct._GError** %33, null
  br i1 %tobool22, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %34 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %35 = load %struct._GError*, %struct._GError** %34, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %35, %cond.true ], [ null, %cond.false ]
  %call23 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %31, i32 %32, %struct._GError* %cond)
  ret %struct._GValueArray* %call23
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @image_select_polygon_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %image = alloca %struct._GimpImage*, align 8
  %operation = alloca i32, align 4
  %num_segs = alloca i32, align 4
  %segs = alloca double*, align 8
  %pdb_context = alloca %struct._GimpPDBContext*, align 8
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
  store i32 %call3, i32* %operation, align 4
  %5 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values4 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %5, i32 0, i32 1
  %6 = load %struct._GValue*, %struct._GValue** %values4, align 8
  %arrayidx5 = getelementptr inbounds %struct._GValue, %struct._GValue* %6, i64 2
  %call6 = call i32 @g_value_get_int(%struct._GValue* %arrayidx5)
  store i32 %call6, i32* %num_segs, align 4
  %7 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values7 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %7, i32 0, i32 1
  %8 = load %struct._GValue*, %struct._GValue** %values7, align 8
  %arrayidx8 = getelementptr inbounds %struct._GValue, %struct._GValue* %8, i64 3
  %call9 = call double* @gimp_value_get_floatarray(%struct._GValue* %arrayidx8)
  store double* %call9, double** %segs, align 8
  %9 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %11 = bitcast %struct._GimpContext* %10 to %struct._GTypeInstance*
  %call10 = call i64 @gimp_pdb_context_get_type() #4
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call10)
  %12 = bitcast %struct._GTypeInstance* %call11 to %struct._GimpPDBContext*
  store %struct._GimpPDBContext* %12, %struct._GimpPDBContext** %pdb_context, align 8
  %13 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call12 = call %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage* %13)
  %call13 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.63, i32 0, i32 0)) #5
  %14 = load i32, i32* %num_segs, align 4
  %div = sdiv i32 %14, 2
  %15 = load double*, double** %segs, align 8
  %16 = bitcast double* %15 to %struct._GimpVector2*
  %17 = load i32, i32* %operation, align 4
  %18 = load %struct._GimpPDBContext*, %struct._GimpPDBContext** %pdb_context, align 8
  %antialias = getelementptr inbounds %struct._GimpPDBContext, %struct._GimpPDBContext* %18, i32 0, i32 1
  %19 = load i32, i32* %antialias, align 4
  %20 = load %struct._GimpPDBContext*, %struct._GimpPDBContext** %pdb_context, align 8
  %feather = getelementptr inbounds %struct._GimpPDBContext, %struct._GimpPDBContext* %20, i32 0, i32 2
  %21 = load i32, i32* %feather, align 4
  %22 = load %struct._GimpPDBContext*, %struct._GimpPDBContext** %pdb_context, align 8
  %feather_radius_x = getelementptr inbounds %struct._GimpPDBContext, %struct._GimpPDBContext* %22, i32 0, i32 3
  %23 = load double, double* %feather_radius_x, align 8
  %24 = load %struct._GimpPDBContext*, %struct._GimpPDBContext** %pdb_context, align 8
  %feather_radius_y = getelementptr inbounds %struct._GimpPDBContext, %struct._GimpPDBContext* %24, i32 0, i32 4
  %25 = load double, double* %feather_radius_y, align 8
  call void @gimp_channel_select_polygon(%struct._GimpChannel* %call12, i8* %call13, i32 %div, %struct._GimpVector2* %16, i32 %17, i32 %19, i32 %21, double %23, double %25, i32 1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %26 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %27 = load i32, i32* %success, align 4
  %28 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool14 = icmp ne %struct._GError** %28, null
  br i1 %tobool14, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %29 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %30 = load %struct._GError*, %struct._GError** %29, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %30, %cond.true ], [ null, %cond.false ]
  %call15 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %26, i32 %27, %struct._GError* %cond)
  ret %struct._GValueArray* %call15
}

declare %struct._GParamSpec* @gimp_param_spec_int32(i8*, i8*, i8*, i32, i32, i32, i32) #1

declare %struct._GParamSpec* @gimp_param_spec_float_array(i8*, i8*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @image_select_item_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %image = alloca %struct._GimpImage*, align 8
  %operation = alloca i32, align 4
  %item = alloca %struct._GimpItem*, align 8
  %pdb_context = alloca %struct._GimpPDBContext*, align 8
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
  store i32 %call3, i32* %operation, align 4
  %5 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values4 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %5, i32 0, i32 1
  %6 = load %struct._GValue*, %struct._GValue** %values4, align 8
  %arrayidx5 = getelementptr inbounds %struct._GValue, %struct._GValue* %6, i64 2
  %7 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call6 = call %struct._GimpItem* @gimp_value_get_item(%struct._GValue* %arrayidx5, %struct._Gimp* %7)
  store %struct._GimpItem* %call6, %struct._GimpItem** %item, align 8
  %8 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then, label %if.end.12

if.then:                                          ; preds = %entry
  %9 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %10 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %11 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call7 = call i32 @gimp_pdb_item_is_attached(%struct._GimpItem* %9, %struct._GimpImage* %10, i32 0, %struct._GError** %11)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.then
  %12 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %13 = bitcast %struct._GimpContext* %12 to %struct._GTypeInstance*
  %call10 = call i64 @gimp_pdb_context_get_type() #4
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call10)
  %14 = bitcast %struct._GTypeInstance* %call11 to %struct._GimpPDBContext*
  store %struct._GimpPDBContext* %14, %struct._GimpPDBContext** %pdb_context, align 8
  %15 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %16 = load i32, i32* %operation, align 4
  %17 = load %struct._GimpPDBContext*, %struct._GimpPDBContext** %pdb_context, align 8
  %antialias = getelementptr inbounds %struct._GimpPDBContext, %struct._GimpPDBContext* %17, i32 0, i32 1
  %18 = load i32, i32* %antialias, align 4
  %19 = load %struct._GimpPDBContext*, %struct._GimpPDBContext** %pdb_context, align 8
  %feather = getelementptr inbounds %struct._GimpPDBContext, %struct._GimpPDBContext* %19, i32 0, i32 2
  %20 = load i32, i32* %feather, align 4
  %21 = load %struct._GimpPDBContext*, %struct._GimpPDBContext** %pdb_context, align 8
  %feather_radius_x = getelementptr inbounds %struct._GimpPDBContext, %struct._GimpPDBContext* %21, i32 0, i32 3
  %22 = load double, double* %feather_radius_x, align 8
  %23 = load %struct._GimpPDBContext*, %struct._GimpPDBContext** %pdb_context, align 8
  %feather_radius_y = getelementptr inbounds %struct._GimpPDBContext, %struct._GimpPDBContext* %23, i32 0, i32 4
  %24 = load double, double* %feather_radius_y, align 8
  call void @gimp_item_to_selection(%struct._GimpItem* %15, i32 %16, i32 %18, i32 %20, double %22, double %24)
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.9
  br label %if.end.12

if.end.12:                                        ; preds = %if.end, %entry
  %25 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %26 = load i32, i32* %success, align 4
  %27 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool13 = icmp ne %struct._GError** %27, null
  br i1 %tobool13, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.12
  %28 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %29 = load %struct._GError*, %struct._GError** %28, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.12
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %29, %cond.true ], [ null, %cond.false ]
  %call14 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %25, i32 %26, %struct._GError* %cond)
  ret %struct._GValueArray* %call14
}

declare %struct._GParamSpec* @gimp_param_spec_item_id(i8*, i8*, i8*, %struct._Gimp*, i32, i32) #1

declare %struct._GimpImage* @gimp_value_get_image(%struct._GValue*, %struct._Gimp*) #1

declare i32 @g_value_get_enum(%struct._GValue*) #1

declare %struct._GimpDrawable* @gimp_value_get_drawable(%struct._GValue*, %struct._Gimp*) #1

declare void @gimp_value_get_rgb(%struct._GValue*, %struct._GimpRGB*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_pdb_context_get_type() #2

declare i32 @gimp_pdb_item_is_attached(%struct._GimpItem*, %struct._GimpImage*, i32, %struct._GError**) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_item_get_type() #2

declare void @gimp_channel_select_by_color(%struct._GimpChannel*, %struct._GimpDrawable*, i32, %struct._GimpRGB*, i32, i32, i32, i32, i32, i32, double, double) #1

declare %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage*) #1

declare %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure*, i32, %struct._GError*) #1

declare double @g_value_get_double(%struct._GValue*) #1

declare void @gimp_channel_select_fuzzy(%struct._GimpChannel*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, double) #1

declare void @gimp_channel_select_rectangle(%struct._GimpChannel*, i32, i32, i32, i32, i32, i32, double, double, i32) #1

declare void @gimp_channel_select_round_rect(%struct._GimpChannel*, i32, i32, i32, i32, double, double, i32, i32, i32, double, double, i32) #1

declare void @gimp_channel_select_ellipse(%struct._GimpChannel*, i32, i32, i32, i32, i32, i32, i32, double, double, i32) #1

declare i32 @g_value_get_int(%struct._GValue*) #1

declare double* @gimp_value_get_floatarray(%struct._GValue*) #1

declare void @gimp_channel_select_polygon(%struct._GimpChannel*, i8*, i32, %struct._GimpVector2*, i32, i32, i32, double, double, i32) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #3

declare %struct._GimpItem* @gimp_value_get_item(%struct._GValue*, %struct._Gimp*) #1

declare void @gimp_item_to_selection(%struct._GimpItem*, i32, i32, i32, double, double) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
