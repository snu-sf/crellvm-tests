; ModuleID = './app/pdb/selection-cmds.bc'
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
%struct._GimpChannel = type { %struct._GimpDrawable, %struct._GimpRGB, i32, %struct._GeglNode*, %struct._GeglNode*, %struct._GeglNode*, i32, %struct._BoundSeg*, %struct._BoundSeg*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GimpDrawable = type { %struct._GimpItem, %struct._GimpDrawablePrivate* }
%struct._GimpItem = type { %struct._GimpViewable }
%struct._GimpDrawablePrivate = type opaque
%struct._GimpRGB = type { double, double, double, double }
%struct._GeglNode = type opaque
%struct._BoundSeg = type opaque
%struct._GimpPickable = type opaque
%struct._GimpLayer = type { %struct._GimpDrawable, double, i32, i32, %struct._GimpLayerMask*, %struct._GeglNode*, %struct.anon }
%struct._GimpLayerMask = type opaque
%struct.anon = type { %struct._GimpDrawable*, i32, %struct._BoundSeg*, i32 }
%struct._GimpSelection = type { %struct._GimpChannel, i32 }

@.str = private unnamed_addr constant [22 x i8] c"gimp-selection-bounds\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"Find the bounding box of the current selection.\00", align 1
@.str.2 = private unnamed_addr constant [487 x i8] c"This procedure returns whether there is a selection for the specified image. If there is one, the upper left and lower right corners of the bounding box are returned. These coordinates are relative to the image. Please note that the pixel specified by the lower righthand coordinate of the bounding box is not part of the selection. The selection ends at the upper left corner of this pixel. This means the width of the selection can be calculated as (x2 - x1), its height as (y2 - y1).\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Spencer Kimball & Peter Mattis\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"1995-1996\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"The image\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"non-empty\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"non empty\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"TRUE if there is a selection\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"x1\00", align 1
@.str.11 = private unnamed_addr constant [54 x i8] c"x coordinate of upper left corner of selection bounds\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"y1\00", align 1
@.str.13 = private unnamed_addr constant [54 x i8] c"y coordinate of upper left corner of selection bounds\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"x2\00", align 1
@.str.15 = private unnamed_addr constant [55 x i8] c"x coordinate of lower right corner of selection bounds\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"y2\00", align 1
@.str.17 = private unnamed_addr constant [55 x i8] c"y coordinate of lower right corner of selection bounds\00", align 1
@.str.18 = private unnamed_addr constant [21 x i8] c"gimp-selection-value\00", align 1
@.str.19 = private unnamed_addr constant [62 x i8] c"Find the value of the selection at the specified coordinates.\00", align 1
@.str.20 = private unnamed_addr constant [133 x i8] c"This procedure returns the value of the selection at the specified coordinates. If the coordinates lie out of bounds, 0 is returned.\00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.22 = private unnamed_addr constant [22 x i8] c"x coordinate of value\00", align 1
@.str.23 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str.24 = private unnamed_addr constant [22 x i8] c"y coordinate of value\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"value\00", align 1
@.str.26 = private unnamed_addr constant [23 x i8] c"Value of the selection\00", align 1
@.str.27 = private unnamed_addr constant [24 x i8] c"gimp-selection-is-empty\00", align 1
@.str.28 = private unnamed_addr constant [42 x i8] c"Determine whether the selection is empty.\00", align 1
@.str.29 = private unnamed_addr constant [79 x i8] c"This procedure returns TRUE if the selection for the specified image is empty.\00", align 1
@.str.30 = private unnamed_addr constant [9 x i8] c"is-empty\00", align 1
@.str.31 = private unnamed_addr constant [9 x i8] c"is empty\00", align 1
@.str.32 = private unnamed_addr constant [24 x i8] c"Is the selection empty?\00", align 1
@.str.33 = private unnamed_addr constant [25 x i8] c"gimp-selection-translate\00", align 1
@.str.34 = private unnamed_addr constant [50 x i8] c"Translate the selection by the specified offsets.\00", align 1
@.str.35 = private unnamed_addr constant [295 x i8] c"This procedure actually translates the selection for the specified image by the specified offsets. Regions that are translated from beyond the bounds of the image are set to empty. Valid regions of the selection which are translated beyond the bounds of the image because of this call are lost.\00", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c"offx\00", align 1
@.str.37 = private unnamed_addr constant [25 x i8] c"x offset for translation\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"offy\00", align 1
@.str.39 = private unnamed_addr constant [25 x i8] c"y offset for translation\00", align 1
@.str.40 = private unnamed_addr constant [21 x i8] c"gimp-selection-float\00", align 1
@.str.41 = private unnamed_addr constant [83 x i8] c"Float the selection from the specified drawable with initial offsets as specified.\00", align 1
@.str.42 = private unnamed_addr constant [309 x i8] c"This procedure determines the region of the specified drawable that lies beneath the current selection. The region is then cut from the drawable and the resulting data is made into a new layer which is instantiated as a floating selection. The offsets allow initial positioning of the new floating selection.\00", align 1
@.str.43 = private unnamed_addr constant [9 x i8] c"drawable\00", align 1
@.str.44 = private unnamed_addr constant [43 x i8] c"The drawable from which to float selection\00", align 1
@.str.45 = private unnamed_addr constant [6 x i8] c"layer\00", align 1
@.str.46 = private unnamed_addr constant [18 x i8] c"The floated layer\00", align 1
@.str.47 = private unnamed_addr constant [22 x i8] c"gimp-selection-invert\00", align 1
@.str.48 = private unnamed_addr constant [27 x i8] c"Invert the selection mask.\00", align 1
@.str.49 = private unnamed_addr constant [135 x i8] c"This procedure inverts the selection mask. For every pixel in the selection channel, its new value is calculated as (255 - old-value).\00", align 1
@.str.50 = private unnamed_addr constant [23 x i8] c"gimp-selection-sharpen\00", align 1
@.str.51 = private unnamed_addr constant [28 x i8] c"Sharpen the selection mask.\00", align 1
@.str.52 = private unnamed_addr constant [235 x i8] c"This procedure sharpens the selection mask. For every pixel in the selection channel, if the value is > 127, the new pixel is assigned a value of 255. This removes any \22anti-aliasing\22 that might exist in the selection mask's boundary.\00", align 1
@.str.53 = private unnamed_addr constant [19 x i8] c"gimp-selection-all\00", align 1
@.str.54 = private unnamed_addr constant [25 x i8] c"Select all of the image.\00", align 1
@.str.55 = private unnamed_addr constant [126 x i8] c"This procedure sets the selection mask to completely encompass the image. Every pixel in the selection channel is set to 255.\00", align 1
@.str.56 = private unnamed_addr constant [20 x i8] c"gimp-selection-none\00", align 1
@.str.57 = private unnamed_addr constant [27 x i8] c"Deselect the entire image.\00", align 1
@.str.58 = private unnamed_addr constant [93 x i8] c"This procedure deselects the entire image. Every pixel in the selection channel is set to 0.\00", align 1
@.str.59 = private unnamed_addr constant [23 x i8] c"gimp-selection-feather\00", align 1
@.str.60 = private unnamed_addr constant [30 x i8] c"Feather the image's selection\00", align 1
@.str.61 = private unnamed_addr constant [88 x i8] c"This procedure feathers the selection. Feathering is implemented using a gaussian blur.\00", align 1
@.str.62 = private unnamed_addr constant [7 x i8] c"radius\00", align 1
@.str.63 = private unnamed_addr constant [30 x i8] c"Radius of feather (in pixels)\00", align 1
@.str.64 = private unnamed_addr constant [22 x i8] c"gimp-selection-border\00", align 1
@.str.65 = private unnamed_addr constant [29 x i8] c"Border the image's selection\00", align 1
@.str.66 = private unnamed_addr constant [178 x i8] c"This procedure borders the selection. Bordering creates a new selection which is defined along the boundary of the previous selection at every point within the specified radius.\00", align 1
@.str.67 = private unnamed_addr constant [29 x i8] c"Radius of border (in pixels)\00", align 1
@.str.68 = private unnamed_addr constant [20 x i8] c"gimp-selection-grow\00", align 1
@.str.69 = private unnamed_addr constant [27 x i8] c"Grow the image's selection\00", align 1
@.str.70 = private unnamed_addr constant [125 x i8] c"This procedure grows the selection. Growing involves expanding the boundary in all directions by the specified pixel amount.\00", align 1
@.str.71 = private unnamed_addr constant [6 x i8] c"steps\00", align 1
@.str.72 = private unnamed_addr constant [26 x i8] c"Steps of grow (in pixels)\00", align 1
@.str.73 = private unnamed_addr constant [22 x i8] c"gimp-selection-shrink\00", align 1
@.str.74 = private unnamed_addr constant [29 x i8] c"Shrink the image's selection\00", align 1
@.str.75 = private unnamed_addr constant [146 x i8] c"This procedure shrinks the selection. Shrinking invovles trimming the existing selection boundary on all sides by the specified number of pixels.\00", align 1
@.str.76 = private unnamed_addr constant [28 x i8] c"Steps of shrink (in pixels)\00", align 1
@.str.77 = private unnamed_addr constant [27 x i8] c"gimp-selection-layer-alpha\00", align 1
@.str.78 = private unnamed_addr constant [50 x i8] c"Deprecated: Use 'gimp-image-select-item' instead.\00", align 1
@.str.79 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.80 = private unnamed_addr constant [23 x i8] c"gimp-image-select-item\00", align 1
@.str.81 = private unnamed_addr constant [17 x i8] c"Layer with alpha\00", align 1
@.str.82 = private unnamed_addr constant [20 x i8] c"gimp-selection-load\00", align 1
@.str.83 = private unnamed_addr constant [8 x i8] c"channel\00", align 1
@.str.84 = private unnamed_addr constant [12 x i8] c"The channel\00", align 1
@.str.85 = private unnamed_addr constant [20 x i8] c"gimp-selection-save\00", align 1
@.str.86 = private unnamed_addr constant [42 x i8] c"Copy the selection mask to a new channel.\00", align 1
@.str.87 = private unnamed_addr constant [159 x i8] c"This procedure copies the selection mask and stores the content in a new channel. The new channel is automatically inserted into the image's list of channels.\00", align 1
@.str.88 = private unnamed_addr constant [16 x i8] c"The new channel\00", align 1
@.str.89 = private unnamed_addr constant [23 x i8] c"gimp-selection-combine\00", align 1
@.str.90 = private unnamed_addr constant [10 x i8] c"operation\00", align 1
@.str.91 = private unnamed_addr constant [24 x i8] c"The selection operation\00", align 1

; Function Attrs: nounwind uwtable
define void @register_selection_procs(%struct._GimpPDB* %pdb) #0 {
entry:
  %pdb.addr = alloca %struct._GimpPDB*, align 8
  %procedure = alloca %struct._GimpProcedure*, align 8
  store %struct._GimpPDB* %pdb, %struct._GimpPDB** %pdb.addr, align 8
  %call = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @selection_bounds_invoker)
  store %struct._GimpProcedure* %call, %struct._GimpProcedure** %procedure, align 8
  %0 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %1 = bitcast %struct._GimpProcedure* %0 to %struct._GTypeInstance*
  %call1 = call i64 @gimp_object_get_type() #3
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call1)
  %2 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %2, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0))
  %3 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([487 x i8], [487 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i8* null)
  %4 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %5 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %5, i32 0, i32 1
  %6 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call3 = call %struct._GParamSpec* @gimp_param_spec_image_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), %struct._Gimp* %6, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %4, %struct._GParamSpec* %call3)
  %7 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call4 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i32 0, i32 0), i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %7, %struct._GParamSpec* %call4)
  %8 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call5 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.11, i32 0, i32 0), i32 -2147483648, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %8, %struct._GParamSpec* %call5)
  %9 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call6 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.13, i32 0, i32 0), i32 -2147483648, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %9, %struct._GParamSpec* %call6)
  %10 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call7 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.15, i32 0, i32 0), i32 -2147483648, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %10, %struct._GParamSpec* %call7)
  %11 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call8 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.17, i32 0, i32 0), i32 -2147483648, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %11, %struct._GParamSpec* %call8)
  %12 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %13 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %12, %struct._GimpProcedure* %13)
  %14 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %15 = bitcast %struct._GimpProcedure* %14 to i8*
  call void @g_object_unref(i8* %15)
  %call9 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @selection_value_invoker)
  store %struct._GimpProcedure* %call9, %struct._GimpProcedure** %procedure, align 8
  %16 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %17 = bitcast %struct._GimpProcedure* %16 to %struct._GTypeInstance*
  %call10 = call i64 @gimp_object_get_type() #3
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call10)
  %18 = bitcast %struct._GTypeInstance* %call11 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %18, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.18, i32 0, i32 0))
  %19 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %19, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([133 x i8], [133 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i8* null)
  %20 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %21 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp12 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %21, i32 0, i32 1
  %22 = load %struct._Gimp*, %struct._Gimp** %gimp12, align 8
  %call13 = call %struct._GParamSpec* @gimp_param_spec_image_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), %struct._Gimp* %22, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %20, %struct._GParamSpec* %call13)
  %23 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call14 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.22, i32 0, i32 0), i32 -2147483648, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %23, %struct._GParamSpec* %call14)
  %24 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call15 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.24, i32 0, i32 0), i32 -2147483648, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %24, %struct._GParamSpec* %call15)
  %25 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call16 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.26, i32 0, i32 0), i32 0, i32 255, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %25, %struct._GParamSpec* %call16)
  %26 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %27 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %26, %struct._GimpProcedure* %27)
  %28 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %29 = bitcast %struct._GimpProcedure* %28 to i8*
  call void @g_object_unref(i8* %29)
  %call17 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @selection_is_empty_invoker)
  store %struct._GimpProcedure* %call17, %struct._GimpProcedure** %procedure, align 8
  %30 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %31 = bitcast %struct._GimpProcedure* %30 to %struct._GTypeInstance*
  %call18 = call i64 @gimp_object_get_type() #3
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 %call18)
  %32 = bitcast %struct._GTypeInstance* %call19 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %32, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.27, i32 0, i32 0))
  %33 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %33, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i8* null)
  %34 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %35 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp20 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %35, i32 0, i32 1
  %36 = load %struct._Gimp*, %struct._Gimp** %gimp20, align 8
  %call21 = call %struct._GParamSpec* @gimp_param_spec_image_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), %struct._Gimp* %36, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %34, %struct._GParamSpec* %call21)
  %37 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call22 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.32, i32 0, i32 0), i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %37, %struct._GParamSpec* %call22)
  %38 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %39 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %38, %struct._GimpProcedure* %39)
  %40 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %41 = bitcast %struct._GimpProcedure* %40 to i8*
  call void @g_object_unref(i8* %41)
  %call23 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @selection_translate_invoker)
  store %struct._GimpProcedure* %call23, %struct._GimpProcedure** %procedure, align 8
  %42 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %43 = bitcast %struct._GimpProcedure* %42 to %struct._GTypeInstance*
  %call24 = call i64 @gimp_object_get_type() #3
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %43, i64 %call24)
  %44 = bitcast %struct._GTypeInstance* %call25 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %44, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.33, i32 0, i32 0))
  %45 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %45, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([295 x i8], [295 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i8* null)
  %46 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %47 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp26 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %47, i32 0, i32 1
  %48 = load %struct._Gimp*, %struct._Gimp** %gimp26, align 8
  %call27 = call %struct._GParamSpec* @gimp_param_spec_image_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), %struct._Gimp* %48, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %46, %struct._GParamSpec* %call27)
  %49 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call28 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.37, i32 0, i32 0), i32 -2147483648, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %49, %struct._GParamSpec* %call28)
  %50 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call29 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.39, i32 0, i32 0), i32 -2147483648, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %50, %struct._GParamSpec* %call29)
  %51 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %52 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %51, %struct._GimpProcedure* %52)
  %53 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %54 = bitcast %struct._GimpProcedure* %53 to i8*
  call void @g_object_unref(i8* %54)
  %call30 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @selection_float_invoker)
  store %struct._GimpProcedure* %call30, %struct._GimpProcedure** %procedure, align 8
  %55 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %56 = bitcast %struct._GimpProcedure* %55 to %struct._GTypeInstance*
  %call31 = call i64 @gimp_object_get_type() #3
  %call32 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %56, i64 %call31)
  %57 = bitcast %struct._GTypeInstance* %call32 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %57, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.40, i32 0, i32 0))
  %58 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %58, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([309 x i8], [309 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i8* null)
  %59 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %60 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp33 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %60, i32 0, i32 1
  %61 = load %struct._Gimp*, %struct._Gimp** %gimp33, align 8
  %call34 = call %struct._GParamSpec* @gimp_param_spec_drawable_id(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.44, i32 0, i32 0), %struct._Gimp* %61, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %59, %struct._GParamSpec* %call34)
  %62 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call35 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.37, i32 0, i32 0), i32 -2147483648, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %62, %struct._GParamSpec* %call35)
  %63 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call36 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.39, i32 0, i32 0), i32 -2147483648, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %63, %struct._GParamSpec* %call36)
  %64 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %65 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp37 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %65, i32 0, i32 1
  %66 = load %struct._Gimp*, %struct._Gimp** %gimp37, align 8
  %call38 = call %struct._GParamSpec* @gimp_param_spec_layer_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.46, i32 0, i32 0), %struct._Gimp* %66, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %64, %struct._GParamSpec* %call38)
  %67 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %68 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %67, %struct._GimpProcedure* %68)
  %69 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %70 = bitcast %struct._GimpProcedure* %69 to i8*
  call void @g_object_unref(i8* %70)
  %call39 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @selection_invert_invoker)
  store %struct._GimpProcedure* %call39, %struct._GimpProcedure** %procedure, align 8
  %71 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %72 = bitcast %struct._GimpProcedure* %71 to %struct._GTypeInstance*
  %call40 = call i64 @gimp_object_get_type() #3
  %call41 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %72, i64 %call40)
  %73 = bitcast %struct._GTypeInstance* %call41 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %73, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.47, i32 0, i32 0))
  %74 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %74, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([135 x i8], [135 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i8* null)
  %75 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %76 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp42 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %76, i32 0, i32 1
  %77 = load %struct._Gimp*, %struct._Gimp** %gimp42, align 8
  %call43 = call %struct._GParamSpec* @gimp_param_spec_image_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), %struct._Gimp* %77, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %75, %struct._GParamSpec* %call43)
  %78 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %79 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %78, %struct._GimpProcedure* %79)
  %80 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %81 = bitcast %struct._GimpProcedure* %80 to i8*
  call void @g_object_unref(i8* %81)
  %call44 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @selection_sharpen_invoker)
  store %struct._GimpProcedure* %call44, %struct._GimpProcedure** %procedure, align 8
  %82 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %83 = bitcast %struct._GimpProcedure* %82 to %struct._GTypeInstance*
  %call45 = call i64 @gimp_object_get_type() #3
  %call46 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %83, i64 %call45)
  %84 = bitcast %struct._GTypeInstance* %call46 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %84, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.50, i32 0, i32 0))
  %85 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %85, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([235 x i8], [235 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i8* null)
  %86 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %87 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp47 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %87, i32 0, i32 1
  %88 = load %struct._Gimp*, %struct._Gimp** %gimp47, align 8
  %call48 = call %struct._GParamSpec* @gimp_param_spec_image_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), %struct._Gimp* %88, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %86, %struct._GParamSpec* %call48)
  %89 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %90 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %89, %struct._GimpProcedure* %90)
  %91 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %92 = bitcast %struct._GimpProcedure* %91 to i8*
  call void @g_object_unref(i8* %92)
  %call49 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @selection_all_invoker)
  store %struct._GimpProcedure* %call49, %struct._GimpProcedure** %procedure, align 8
  %93 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %94 = bitcast %struct._GimpProcedure* %93 to %struct._GTypeInstance*
  %call50 = call i64 @gimp_object_get_type() #3
  %call51 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %94, i64 %call50)
  %95 = bitcast %struct._GTypeInstance* %call51 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %95, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.53, i32 0, i32 0))
  %96 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %96, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([126 x i8], [126 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i8* null)
  %97 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %98 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp52 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %98, i32 0, i32 1
  %99 = load %struct._Gimp*, %struct._Gimp** %gimp52, align 8
  %call53 = call %struct._GParamSpec* @gimp_param_spec_image_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), %struct._Gimp* %99, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %97, %struct._GParamSpec* %call53)
  %100 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %101 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %100, %struct._GimpProcedure* %101)
  %102 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %103 = bitcast %struct._GimpProcedure* %102 to i8*
  call void @g_object_unref(i8* %103)
  %call54 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @selection_none_invoker)
  store %struct._GimpProcedure* %call54, %struct._GimpProcedure** %procedure, align 8
  %104 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %105 = bitcast %struct._GimpProcedure* %104 to %struct._GTypeInstance*
  %call55 = call i64 @gimp_object_get_type() #3
  %call56 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %105, i64 %call55)
  %106 = bitcast %struct._GTypeInstance* %call56 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %106, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.56, i32 0, i32 0))
  %107 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %107, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i8* null)
  %108 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %109 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp57 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %109, i32 0, i32 1
  %110 = load %struct._Gimp*, %struct._Gimp** %gimp57, align 8
  %call58 = call %struct._GParamSpec* @gimp_param_spec_image_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), %struct._Gimp* %110, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %108, %struct._GParamSpec* %call58)
  %111 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %112 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %111, %struct._GimpProcedure* %112)
  %113 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %114 = bitcast %struct._GimpProcedure* %113 to i8*
  call void @g_object_unref(i8* %114)
  %call59 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @selection_feather_invoker)
  store %struct._GimpProcedure* %call59, %struct._GimpProcedure** %procedure, align 8
  %115 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %116 = bitcast %struct._GimpProcedure* %115 to %struct._GTypeInstance*
  %call60 = call i64 @gimp_object_get_type() #3
  %call61 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %116, i64 %call60)
  %117 = bitcast %struct._GTypeInstance* %call61 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %117, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.59, i32 0, i32 0))
  %118 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %118, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i8* null)
  %119 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %120 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp62 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %120, i32 0, i32 1
  %121 = load %struct._Gimp*, %struct._Gimp** %gimp62, align 8
  %call63 = call %struct._GParamSpec* @gimp_param_spec_image_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), %struct._Gimp* %121, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %119, %struct._GParamSpec* %call63)
  %122 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call64 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.63, i32 0, i32 0), double 0.000000e+00, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %122, %struct._GParamSpec* %call64)
  %123 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %124 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %123, %struct._GimpProcedure* %124)
  %125 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %126 = bitcast %struct._GimpProcedure* %125 to i8*
  call void @g_object_unref(i8* %126)
  %call65 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @selection_border_invoker)
  store %struct._GimpProcedure* %call65, %struct._GimpProcedure** %procedure, align 8
  %127 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %128 = bitcast %struct._GimpProcedure* %127 to %struct._GTypeInstance*
  %call66 = call i64 @gimp_object_get_type() #3
  %call67 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %128, i64 %call66)
  %129 = bitcast %struct._GTypeInstance* %call67 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %129, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.64, i32 0, i32 0))
  %130 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %130, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([178 x i8], [178 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i8* null)
  %131 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %132 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp68 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %132, i32 0, i32 1
  %133 = load %struct._Gimp*, %struct._Gimp** %gimp68, align 8
  %call69 = call %struct._GParamSpec* @gimp_param_spec_image_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), %struct._Gimp* %133, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %131, %struct._GParamSpec* %call69)
  %134 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call70 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.67, i32 0, i32 0), i32 0, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %134, %struct._GParamSpec* %call70)
  %135 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %136 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %135, %struct._GimpProcedure* %136)
  %137 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %138 = bitcast %struct._GimpProcedure* %137 to i8*
  call void @g_object_unref(i8* %138)
  %call71 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @selection_grow_invoker)
  store %struct._GimpProcedure* %call71, %struct._GimpProcedure** %procedure, align 8
  %139 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %140 = bitcast %struct._GimpProcedure* %139 to %struct._GTypeInstance*
  %call72 = call i64 @gimp_object_get_type() #3
  %call73 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %140, i64 %call72)
  %141 = bitcast %struct._GTypeInstance* %call73 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %141, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.68, i32 0, i32 0))
  %142 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %142, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([125 x i8], [125 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i8* null)
  %143 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %144 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp74 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %144, i32 0, i32 1
  %145 = load %struct._Gimp*, %struct._Gimp** %gimp74, align 8
  %call75 = call %struct._GParamSpec* @gimp_param_spec_image_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), %struct._Gimp* %145, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %143, %struct._GParamSpec* %call75)
  %146 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call76 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.72, i32 0, i32 0), i32 0, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %146, %struct._GParamSpec* %call76)
  %147 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %148 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %147, %struct._GimpProcedure* %148)
  %149 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %150 = bitcast %struct._GimpProcedure* %149 to i8*
  call void @g_object_unref(i8* %150)
  %call77 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @selection_shrink_invoker)
  store %struct._GimpProcedure* %call77, %struct._GimpProcedure** %procedure, align 8
  %151 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %152 = bitcast %struct._GimpProcedure* %151 to %struct._GTypeInstance*
  %call78 = call i64 @gimp_object_get_type() #3
  %call79 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %152, i64 %call78)
  %153 = bitcast %struct._GTypeInstance* %call79 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %153, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.73, i32 0, i32 0))
  %154 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %154, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.73, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.74, i32 0, i32 0), i8* getelementptr inbounds ([146 x i8], [146 x i8]* @.str.75, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i8* null)
  %155 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %156 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp80 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %156, i32 0, i32 1
  %157 = load %struct._Gimp*, %struct._Gimp** %gimp80, align 8
  %call81 = call %struct._GParamSpec* @gimp_param_spec_image_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), %struct._Gimp* %157, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %155, %struct._GParamSpec* %call81)
  %158 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call82 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.76, i32 0, i32 0), i32 0, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %158, %struct._GParamSpec* %call82)
  %159 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %160 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %159, %struct._GimpProcedure* %160)
  %161 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %162 = bitcast %struct._GimpProcedure* %161 to i8*
  call void @g_object_unref(i8* %162)
  %call83 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @selection_layer_alpha_invoker)
  store %struct._GimpProcedure* %call83, %struct._GimpProcedure** %procedure, align 8
  %163 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %164 = bitcast %struct._GimpProcedure* %163 to %struct._GTypeInstance*
  %call84 = call i64 @gimp_object_get_type() #3
  %call85 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %164, i64 %call84)
  %165 = bitcast %struct._GTypeInstance* %call85 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %165, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.77, i32 0, i32 0))
  %166 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %166, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.77, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.79, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.79, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.79, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.80, i32 0, i32 0))
  %167 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %168 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp86 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %168, i32 0, i32 1
  %169 = load %struct._Gimp*, %struct._Gimp** %gimp86, align 8
  %call87 = call %struct._GParamSpec* @gimp_param_spec_layer_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.81, i32 0, i32 0), %struct._Gimp* %169, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %167, %struct._GParamSpec* %call87)
  %170 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %171 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %170, %struct._GimpProcedure* %171)
  %172 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %173 = bitcast %struct._GimpProcedure* %172 to i8*
  call void @g_object_unref(i8* %173)
  %call88 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @selection_load_invoker)
  store %struct._GimpProcedure* %call88, %struct._GimpProcedure** %procedure, align 8
  %174 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %175 = bitcast %struct._GimpProcedure* %174 to %struct._GTypeInstance*
  %call89 = call i64 @gimp_object_get_type() #3
  %call90 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %175, i64 %call89)
  %176 = bitcast %struct._GTypeInstance* %call90 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %176, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.82, i32 0, i32 0))
  %177 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %177, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.82, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.79, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.79, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.79, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.80, i32 0, i32 0))
  %178 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %179 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp91 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %179, i32 0, i32 1
  %180 = load %struct._Gimp*, %struct._Gimp** %gimp91, align 8
  %call92 = call %struct._GParamSpec* @gimp_param_spec_channel_id(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.83, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.83, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.84, i32 0, i32 0), %struct._Gimp* %180, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %178, %struct._GParamSpec* %call92)
  %181 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %182 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %181, %struct._GimpProcedure* %182)
  %183 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %184 = bitcast %struct._GimpProcedure* %183 to i8*
  call void @g_object_unref(i8* %184)
  %call93 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @selection_save_invoker)
  store %struct._GimpProcedure* %call93, %struct._GimpProcedure** %procedure, align 8
  %185 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %186 = bitcast %struct._GimpProcedure* %185 to %struct._GTypeInstance*
  %call94 = call i64 @gimp_object_get_type() #3
  %call95 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %186, i64 %call94)
  %187 = bitcast %struct._GTypeInstance* %call95 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %187, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.85, i32 0, i32 0))
  %188 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %188, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.85, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.86, i32 0, i32 0), i8* getelementptr inbounds ([159 x i8], [159 x i8]* @.str.87, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i8* null)
  %189 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %190 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp96 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %190, i32 0, i32 1
  %191 = load %struct._Gimp*, %struct._Gimp** %gimp96, align 8
  %call97 = call %struct._GParamSpec* @gimp_param_spec_image_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), %struct._Gimp* %191, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %189, %struct._GParamSpec* %call97)
  %192 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %193 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp98 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %193, i32 0, i32 1
  %194 = load %struct._Gimp*, %struct._Gimp** %gimp98, align 8
  %call99 = call %struct._GParamSpec* @gimp_param_spec_channel_id(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.83, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.83, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.88, i32 0, i32 0), %struct._Gimp* %194, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %192, %struct._GParamSpec* %call99)
  %195 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %196 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %195, %struct._GimpProcedure* %196)
  %197 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %198 = bitcast %struct._GimpProcedure* %197 to i8*
  call void @g_object_unref(i8* %198)
  %call100 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @selection_combine_invoker)
  store %struct._GimpProcedure* %call100, %struct._GimpProcedure** %procedure, align 8
  %199 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %200 = bitcast %struct._GimpProcedure* %199 to %struct._GTypeInstance*
  %call101 = call i64 @gimp_object_get_type() #3
  %call102 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %200, i64 %call101)
  %201 = bitcast %struct._GTypeInstance* %call102 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %201, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.89, i32 0, i32 0))
  %202 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %202, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.89, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.79, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.79, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.79, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.80, i32 0, i32 0))
  %203 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %204 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp103 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %204, i32 0, i32 1
  %205 = load %struct._Gimp*, %struct._Gimp** %gimp103, align 8
  %call104 = call %struct._GParamSpec* @gimp_param_spec_channel_id(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.83, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.83, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.84, i32 0, i32 0), %struct._Gimp* %205, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %203, %struct._GParamSpec* %call104)
  %206 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call105 = call i64 @gimp_channel_ops_get_type() #3
  %call106 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.90, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.90, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.91, i32 0, i32 0), i64 %call105, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %206, %struct._GParamSpec* %call106)
  %207 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %208 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %207, %struct._GimpProcedure* %208)
  %209 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %210 = bitcast %struct._GimpProcedure* %209 to i8*
  call void @g_object_unref(i8* %210)
  ret void
}

declare %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)*) #1

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @selection_bounds_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  %non_empty = alloca i32, align 4
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store i32 0, i32* %non_empty, align 4
  store i32 0, i32* %x1, align 4
  store i32 0, i32* %y1, align 4
  store i32 0, i32* %x2, align 4
  store i32 0, i32* %y2, align 4
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
  %call1 = call %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage* %4)
  %call2 = call i32 @gimp_channel_bounds(%struct._GimpChannel* %call1, i32* %x1, i32* %y1, i32* %x2, i32* %y2)
  store i32 %call2, i32* %non_empty, align 4
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
  br i1 %tobool5, label %if.then.6, label %if.end.17

if.then.6:                                        ; preds = %cond.end
  %11 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values7 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %11, i32 0, i32 1
  %12 = load %struct._GValue*, %struct._GValue** %values7, align 8
  %arrayidx8 = getelementptr inbounds %struct._GValue, %struct._GValue* %12, i64 1
  %13 = load i32, i32* %non_empty, align 4
  call void @g_value_set_boolean(%struct._GValue* %arrayidx8, i32 %13)
  %14 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values9 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %14, i32 0, i32 1
  %15 = load %struct._GValue*, %struct._GValue** %values9, align 8
  %arrayidx10 = getelementptr inbounds %struct._GValue, %struct._GValue* %15, i64 2
  %16 = load i32, i32* %x1, align 4
  call void @g_value_set_int(%struct._GValue* %arrayidx10, i32 %16)
  %17 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values11 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %17, i32 0, i32 1
  %18 = load %struct._GValue*, %struct._GValue** %values11, align 8
  %arrayidx12 = getelementptr inbounds %struct._GValue, %struct._GValue* %18, i64 3
  %19 = load i32, i32* %y1, align 4
  call void @g_value_set_int(%struct._GValue* %arrayidx12, i32 %19)
  %20 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values13 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %20, i32 0, i32 1
  %21 = load %struct._GValue*, %struct._GValue** %values13, align 8
  %arrayidx14 = getelementptr inbounds %struct._GValue, %struct._GValue* %21, i64 4
  %22 = load i32, i32* %x2, align 4
  call void @g_value_set_int(%struct._GValue* %arrayidx14, i32 %22)
  %23 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values15 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %23, i32 0, i32 1
  %24 = load %struct._GValue*, %struct._GValue** %values15, align 8
  %arrayidx16 = getelementptr inbounds %struct._GValue, %struct._GValue* %24, i64 5
  %25 = load i32, i32* %y2, align 4
  call void @g_value_set_int(%struct._GValue* %arrayidx16, i32 %25)
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.6, %cond.end
  %26 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %26
}

declare void @gimp_object_set_static_name(%struct._GimpObject*, i8*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #2

declare void @gimp_procedure_set_static_strings(%struct._GimpProcedure*, i8*, i8*, i8*, i8*, i8*, i8*, i8*) #1

declare void @gimp_procedure_add_argument(%struct._GimpProcedure*, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @gimp_param_spec_image_id(i8*, i8*, i8*, %struct._Gimp*, i32, i32) #1

declare void @gimp_procedure_add_return_value(%struct._GimpProcedure*, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_boolean(i8*, i8*, i8*, i32, i32) #1

declare %struct._GParamSpec* @gimp_param_spec_int32(i8*, i8*, i8*, i32, i32, i32, i32) #1

declare void @gimp_pdb_register_procedure(%struct._GimpPDB*, %struct._GimpProcedure*) #1

declare void @g_object_unref(i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @selection_value_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %value = alloca i32, align 4
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store i32 0, i32* %value, align 4
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
  store i32 %call3, i32* %x, align 4
  %5 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values4 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %5, i32 0, i32 1
  %6 = load %struct._GValue*, %struct._GValue** %values4, align 8
  %arrayidx5 = getelementptr inbounds %struct._GValue, %struct._GValue* %6, i64 2
  %call6 = call i32 @g_value_get_int(%struct._GValue* %arrayidx5)
  store i32 %call6, i32* %y, align 4
  %7 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call7 = call %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage* %8)
  %9 = bitcast %struct._GimpChannel* %call7 to %struct._GTypeInstance*
  %call8 = call i64 @gimp_pickable_interface_get_type() #3
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call8)
  %10 = bitcast %struct._GTypeInstance* %call9 to %struct._GimpPickable*
  %11 = load i32, i32* %x, align 4
  %12 = load i32, i32* %y, align 4
  %call10 = call i32 @gimp_pickable_get_opacity_at(%struct._GimpPickable* %10, i32 %11, i32 %12)
  store i32 %call10, i32* %value, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %13 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %14 = load i32, i32* %success, align 4
  %15 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool11 = icmp ne %struct._GError** %15, null
  br i1 %tobool11, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %16 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %17 = load %struct._GError*, %struct._GError** %16, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %17, %cond.true ], [ null, %cond.false ]
  %call12 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %13, i32 %14, %struct._GError* %cond)
  store %struct._GValueArray* %call12, %struct._GValueArray** %return_vals, align 8
  %18 = load i32, i32* %success, align 4
  %tobool13 = icmp ne i32 %18, 0
  br i1 %tobool13, label %if.then.14, label %if.end.17

if.then.14:                                       ; preds = %cond.end
  %19 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values15 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %19, i32 0, i32 1
  %20 = load %struct._GValue*, %struct._GValue** %values15, align 8
  %arrayidx16 = getelementptr inbounds %struct._GValue, %struct._GValue* %20, i64 1
  %21 = load i32, i32* %value, align 4
  call void @g_value_set_int(%struct._GValue* %arrayidx16, i32 %21)
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.14, %cond.end
  %22 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %22
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @selection_is_empty_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  %is_empty = alloca i32, align 4
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store i32 0, i32* %is_empty, align 4
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
  %call1 = call %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage* %4)
  %call2 = call i32 @gimp_channel_is_empty(%struct._GimpChannel* %call1)
  store i32 %call2, i32* %is_empty, align 4
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
  %13 = load i32, i32* %is_empty, align 4
  call void @g_value_set_boolean(%struct._GValue* %arrayidx8, i32 %13)
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.6, %cond.end
  %14 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %14
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @selection_translate_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %image = alloca %struct._GimpImage*, align 8
  %offx = alloca i32, align 4
  %offy = alloca i32, align 4
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
  store i32 %call3, i32* %offx, align 4
  %5 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values4 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %5, i32 0, i32 1
  %6 = load %struct._GValue*, %struct._GValue** %values4, align 8
  %arrayidx5 = getelementptr inbounds %struct._GValue, %struct._GValue* %6, i64 2
  %call6 = call i32 @g_value_get_int(%struct._GValue* %arrayidx5)
  store i32 %call6, i32* %offy, align 4
  %7 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call7 = call %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage* %8)
  %9 = bitcast %struct._GimpChannel* %call7 to %struct._GTypeInstance*
  %call8 = call i64 @gimp_item_get_type() #3
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call8)
  %10 = bitcast %struct._GTypeInstance* %call9 to %struct._GimpItem*
  %11 = load i32, i32* %offx, align 4
  %12 = load i32, i32* %offy, align 4
  call void @gimp_item_translate(%struct._GimpItem* %10, i32 %11, i32 %12, i32 1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %13 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %14 = load i32, i32* %success, align 4
  %15 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool10 = icmp ne %struct._GError** %15, null
  br i1 %tobool10, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %16 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %17 = load %struct._GError*, %struct._GError** %16, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %17, %cond.true ], [ null, %cond.false ]
  %call11 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %13, i32 %14, %struct._GError* %cond)
  ret %struct._GValueArray* %call11
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @selection_float_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  %offx = alloca i32, align 4
  %offy = alloca i32, align 4
  %layer = alloca %struct._GimpLayer*, align 8
  %image = alloca %struct._GimpImage*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store %struct._GimpLayer* null, %struct._GimpLayer** %layer, align 8
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
  %call3 = call i32 @g_value_get_int(%struct._GValue* %arrayidx2)
  store i32 %call3, i32* %offx, align 4
  %5 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values4 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %5, i32 0, i32 1
  %6 = load %struct._GValue*, %struct._GValue** %values4, align 8
  %arrayidx5 = getelementptr inbounds %struct._GValue, %struct._GValue* %6, i64 2
  %call6 = call i32 @g_value_get_int(%struct._GValue* %arrayidx5)
  store i32 %call6, i32* %offy, align 4
  %7 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then, label %if.end.26

if.then:                                          ; preds = %entry
  %8 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %9 = bitcast %struct._GimpDrawable* %8 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_item_get_type() #3
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call7)
  %10 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpItem*
  %11 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call9 = call i32 @gimp_pdb_item_is_attached(%struct._GimpItem* %10, %struct._GimpImage* null, i32 1, %struct._GError** %11)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %12 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %13 = bitcast %struct._GimpDrawable* %12 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_item_get_type() #3
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call11)
  %14 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpItem*
  %15 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call13 = call i32 @gimp_pdb_item_is_not_group(%struct._GimpItem* %14, %struct._GError** %15)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %land.lhs.true
  %16 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %17 = bitcast %struct._GimpDrawable* %16 to %struct._GTypeInstance*
  %call16 = call i64 @gimp_item_get_type() #3
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call16)
  %18 = bitcast %struct._GTypeInstance* %call17 to %struct._GimpItem*
  %call18 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %18)
  store %struct._GimpImage* %call18, %struct._GimpImage** %image, align 8
  %19 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call19 = call %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage* %19)
  %20 = bitcast %struct._GimpChannel* %call19 to %struct._GTypeInstance*
  %call20 = call i64 @gimp_selection_get_type() #3
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call20)
  %21 = bitcast %struct._GTypeInstance* %call21 to %struct._GimpSelection*
  %22 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %23 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %24 = load i32, i32* %offx, align 4
  %25 = load i32, i32* %offy, align 4
  %26 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call22 = call %struct._GimpLayer* @gimp_selection_float(%struct._GimpSelection* %21, %struct._GimpDrawable* %22, %struct._GimpContext* %23, i32 1, i32 %24, i32 %25, %struct._GError** %26)
  store %struct._GimpLayer* %call22, %struct._GimpLayer** %layer, align 8
  %27 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %tobool23 = icmp ne %struct._GimpLayer* %27, null
  br i1 %tobool23, label %if.end, label %if.then.24

if.then.24:                                       ; preds = %if.then.15
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.24, %if.then.15
  br label %if.end.25

if.else:                                          ; preds = %land.lhs.true, %if.then
  store i32 0, i32* %success, align 4
  br label %if.end.25

if.end.25:                                        ; preds = %if.else, %if.end
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %entry
  %28 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %29 = load i32, i32* %success, align 4
  %30 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool27 = icmp ne %struct._GError** %30, null
  br i1 %tobool27, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.26
  %31 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %32 = load %struct._GError*, %struct._GError** %31, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.26
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %32, %cond.true ], [ null, %cond.false ]
  %call28 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %28, i32 %29, %struct._GError* %cond)
  store %struct._GValueArray* %call28, %struct._GValueArray** %return_vals, align 8
  %33 = load i32, i32* %success, align 4
  %tobool29 = icmp ne i32 %33, 0
  br i1 %tobool29, label %if.then.30, label %if.end.33

if.then.30:                                       ; preds = %cond.end
  %34 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values31 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %34, i32 0, i32 1
  %35 = load %struct._GValue*, %struct._GValue** %values31, align 8
  %arrayidx32 = getelementptr inbounds %struct._GValue, %struct._GValue* %35, i64 1
  %36 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  call void @gimp_value_set_layer(%struct._GValue* %arrayidx32, %struct._GimpLayer* %36)
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.30, %cond.end
  %37 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %37
}

declare %struct._GParamSpec* @gimp_param_spec_drawable_id(i8*, i8*, i8*, %struct._Gimp*, i32, i32) #1

declare %struct._GParamSpec* @gimp_param_spec_layer_id(i8*, i8*, i8*, %struct._Gimp*, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @selection_invert_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call1 = call %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage* %4)
  call void @gimp_channel_invert(%struct._GimpChannel* %call1, i32 1)
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
  ret %struct._GValueArray* %call3
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @selection_sharpen_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call1 = call %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage* %4)
  call void @gimp_channel_sharpen(%struct._GimpChannel* %call1, i32 1)
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
  ret %struct._GValueArray* %call3
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @selection_all_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call1 = call %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage* %4)
  call void @gimp_channel_all(%struct._GimpChannel* %call1, i32 1)
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
  ret %struct._GValueArray* %call3
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @selection_none_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call1 = call %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage* %4)
  call void @gimp_channel_clear(%struct._GimpChannel* %call1, i8* null, i32 1)
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
  ret %struct._GValueArray* %call3
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @selection_feather_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %image = alloca %struct._GimpImage*, align 8
  %radius = alloca double, align 8
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
  store double %call3, double* %radius, align 8
  %5 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call4 = call %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage* %6)
  %7 = load double, double* %radius, align 8
  %8 = load double, double* %radius, align 8
  call void @gimp_channel_feather(%struct._GimpChannel* %call4, double %7, double %8, i32 1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %10 = load i32, i32* %success, align 4
  %11 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool5 = icmp ne %struct._GError** %11, null
  br i1 %tobool5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %12 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %13 = load %struct._GError*, %struct._GError** %12, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %13, %cond.true ], [ null, %cond.false ]
  %call6 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %9, i32 %10, %struct._GError* %cond)
  ret %struct._GValueArray* %call6
}

declare %struct._GParamSpec* @g_param_spec_double(i8*, i8*, i8*, double, double, double, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @selection_border_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %image = alloca %struct._GimpImage*, align 8
  %radius = alloca i32, align 4
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
  store i32 %call3, i32* %radius, align 4
  %5 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call4 = call %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage* %6)
  %7 = load i32, i32* %radius, align 4
  %8 = load i32, i32* %radius, align 4
  call void @gimp_channel_border(%struct._GimpChannel* %call4, i32 %7, i32 %8, i32 1, i32 1, i32 1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %10 = load i32, i32* %success, align 4
  %11 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool5 = icmp ne %struct._GError** %11, null
  br i1 %tobool5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %12 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %13 = load %struct._GError*, %struct._GError** %12, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %13, %cond.true ], [ null, %cond.false ]
  %call6 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %9, i32 %10, %struct._GError* %cond)
  ret %struct._GValueArray* %call6
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @selection_grow_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %image = alloca %struct._GimpImage*, align 8
  %steps = alloca i32, align 4
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
  store i32 %call3, i32* %steps, align 4
  %5 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call4 = call %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage* %6)
  %7 = load i32, i32* %steps, align 4
  %8 = load i32, i32* %steps, align 4
  call void @gimp_channel_grow(%struct._GimpChannel* %call4, i32 %7, i32 %8, i32 1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %10 = load i32, i32* %success, align 4
  %11 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool5 = icmp ne %struct._GError** %11, null
  br i1 %tobool5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %12 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %13 = load %struct._GError*, %struct._GError** %12, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %13, %cond.true ], [ null, %cond.false ]
  %call6 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %9, i32 %10, %struct._GError* %cond)
  ret %struct._GValueArray* %call6
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @selection_shrink_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %image = alloca %struct._GimpImage*, align 8
  %steps = alloca i32, align 4
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
  store i32 %call3, i32* %steps, align 4
  %5 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call4 = call %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage* %6)
  %7 = load i32, i32* %steps, align 4
  %8 = load i32, i32* %steps, align 4
  call void @gimp_channel_shrink(%struct._GimpChannel* %call4, i32 %7, i32 %8, i32 0, i32 1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %10 = load i32, i32* %success, align 4
  %11 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool5 = icmp ne %struct._GError** %11, null
  br i1 %tobool5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %12 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %13 = load %struct._GError*, %struct._GError** %12, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %13, %cond.true ], [ null, %cond.false ]
  %call6 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %9, i32 %10, %struct._GError* %cond)
  ret %struct._GValueArray* %call6
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @selection_layer_alpha_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %layer = alloca %struct._GimpLayer*, align 8
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
  %call = call %struct._GimpLayer* @gimp_value_get_layer(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpLayer* %call, %struct._GimpLayer** %layer, align 8
  %3 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end.8

if.then:                                          ; preds = %entry
  %4 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %5 = bitcast %struct._GimpLayer* %4 to %struct._GTypeInstance*
  %call1 = call i64 @gimp_item_get_type() #3
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call1)
  %6 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpItem*
  %7 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call3 = call i32 @gimp_pdb_item_is_attached(%struct._GimpItem* %6, %struct._GimpImage* null, i32 0, %struct._GError** %7)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.then
  %8 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %9 = bitcast %struct._GimpLayer* %8 to %struct._GTypeInstance*
  %call6 = call i64 @gimp_item_get_type() #3
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call6)
  %10 = bitcast %struct._GTypeInstance* %call7 to %struct._GimpItem*
  call void @gimp_item_to_selection(%struct._GimpItem* %10, i32 2, i32 1, i32 0, double 0.000000e+00, double 0.000000e+00)
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.5
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
define internal %struct._GValueArray* @selection_load_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %channel = alloca %struct._GimpChannel*, align 8
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
  %call = call %struct._GimpChannel* @gimp_value_get_channel(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpChannel* %call, %struct._GimpChannel** %channel, align 8
  %3 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end.8

if.then:                                          ; preds = %entry
  %4 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %5 = bitcast %struct._GimpChannel* %4 to %struct._GTypeInstance*
  %call1 = call i64 @gimp_item_get_type() #3
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call1)
  %6 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpItem*
  %7 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call3 = call i32 @gimp_pdb_item_is_attached(%struct._GimpItem* %6, %struct._GimpImage* null, i32 0, %struct._GError** %7)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.then
  %8 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %9 = bitcast %struct._GimpChannel* %8 to %struct._GTypeInstance*
  %call6 = call i64 @gimp_item_get_type() #3
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call6)
  %10 = bitcast %struct._GTypeInstance* %call7 to %struct._GimpItem*
  call void @gimp_item_to_selection(%struct._GimpItem* %10, i32 2, i32 1, i32 0, double 0.000000e+00, double 0.000000e+00)
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.5
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

declare %struct._GParamSpec* @gimp_param_spec_channel_id(i8*, i8*, i8*, %struct._Gimp*, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @selection_save_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  %channel = alloca %struct._GimpChannel*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store %struct._GimpChannel* null, %struct._GimpChannel** %channel, align 8
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %2 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call = call %struct._GimpImage* @gimp_value_get_image(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpImage* %call, %struct._GimpImage** %image, align 8
  %3 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end.7

if.then:                                          ; preds = %entry
  %4 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call1 = call %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage* %4)
  %5 = bitcast %struct._GimpChannel* %call1 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_selection_get_type() #3
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call2)
  %6 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpSelection*
  %call4 = call %struct._GimpChannel* @gimp_selection_save(%struct._GimpSelection* %6)
  store %struct._GimpChannel* %call4, %struct._GimpChannel** %channel, align 8
  %7 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %tobool5 = icmp ne %struct._GimpChannel* %7, null
  br i1 %tobool5, label %if.end, label %if.then.6

if.then.6:                                        ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.6, %if.then
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %entry
  %8 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %9 = load i32, i32* %success, align 4
  %10 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool8 = icmp ne %struct._GError** %10, null
  br i1 %tobool8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.7
  %11 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %12 = load %struct._GError*, %struct._GError** %11, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %12, %cond.true ], [ null, %cond.false ]
  %call9 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %8, i32 %9, %struct._GError* %cond)
  store %struct._GValueArray* %call9, %struct._GValueArray** %return_vals, align 8
  %13 = load i32, i32* %success, align 4
  %tobool10 = icmp ne i32 %13, 0
  br i1 %tobool10, label %if.then.11, label %if.end.14

if.then.11:                                       ; preds = %cond.end
  %14 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values12 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %14, i32 0, i32 1
  %15 = load %struct._GValue*, %struct._GValue** %values12, align 8
  %arrayidx13 = getelementptr inbounds %struct._GValue, %struct._GValue* %15, i64 1
  %16 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  call void @gimp_value_set_channel(%struct._GValue* %arrayidx13, %struct._GimpChannel* %16)
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.11, %cond.end
  %17 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %17
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @selection_combine_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %channel = alloca %struct._GimpChannel*, align 8
  %operation = alloca i32, align 4
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
  %call = call %struct._GimpChannel* @gimp_value_get_channel(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpChannel* %call, %struct._GimpChannel** %channel, align 8
  %3 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %3, i32 0, i32 1
  %4 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %4, i64 1
  %call3 = call i32 @g_value_get_enum(%struct._GValue* %arrayidx2)
  store i32 %call3, i32* %operation, align 4
  %5 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end.11

if.then:                                          ; preds = %entry
  %6 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %7 = bitcast %struct._GimpChannel* %6 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_item_get_type() #3
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call4)
  %8 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpItem*
  %9 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call6 = call i32 @gimp_pdb_item_is_attached(%struct._GimpItem* %8, %struct._GimpImage* null, i32 0, %struct._GError** %9)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.then
  %10 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %11 = bitcast %struct._GimpChannel* %10 to %struct._GTypeInstance*
  %call9 = call i64 @gimp_item_get_type() #3
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call9)
  %12 = bitcast %struct._GTypeInstance* %call10 to %struct._GimpItem*
  %13 = load i32, i32* %operation, align 4
  call void @gimp_item_to_selection(%struct._GimpItem* %12, i32 %13, i32 1, i32 0, double 0.000000e+00, double 0.000000e+00)
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.8
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

declare %struct._GParamSpec* @g_param_spec_enum(i8*, i8*, i8*, i64, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_channel_ops_get_type() #2

declare %struct._GimpImage* @gimp_value_get_image(%struct._GValue*, %struct._Gimp*) #1

declare i32 @gimp_channel_bounds(%struct._GimpChannel*, i32*, i32*, i32*, i32*) #1

declare %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage*) #1

declare %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure*, i32, %struct._GError*) #1

declare void @g_value_set_boolean(%struct._GValue*, i32) #1

declare void @g_value_set_int(%struct._GValue*, i32) #1

declare i32 @g_value_get_int(%struct._GValue*) #1

declare i32 @gimp_pickable_get_opacity_at(%struct._GimpPickable*, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_pickable_interface_get_type() #2

declare i32 @gimp_channel_is_empty(%struct._GimpChannel*) #1

declare void @gimp_item_translate(%struct._GimpItem*, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_item_get_type() #2

declare %struct._GimpDrawable* @gimp_value_get_drawable(%struct._GValue*, %struct._Gimp*) #1

declare i32 @gimp_pdb_item_is_attached(%struct._GimpItem*, %struct._GimpImage*, i32, %struct._GError**) #1

declare i32 @gimp_pdb_item_is_not_group(%struct._GimpItem*, %struct._GError**) #1

declare %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem*) #1

declare %struct._GimpLayer* @gimp_selection_float(%struct._GimpSelection*, %struct._GimpDrawable*, %struct._GimpContext*, i32, i32, i32, %struct._GError**) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_selection_get_type() #2

declare void @gimp_value_set_layer(%struct._GValue*, %struct._GimpLayer*) #1

declare void @gimp_channel_invert(%struct._GimpChannel*, i32) #1

declare void @gimp_channel_sharpen(%struct._GimpChannel*, i32) #1

declare void @gimp_channel_all(%struct._GimpChannel*, i32) #1

declare void @gimp_channel_clear(%struct._GimpChannel*, i8*, i32) #1

declare double @g_value_get_double(%struct._GValue*) #1

declare void @gimp_channel_feather(%struct._GimpChannel*, double, double, i32) #1

declare void @gimp_channel_border(%struct._GimpChannel*, i32, i32, i32, i32, i32) #1

declare void @gimp_channel_grow(%struct._GimpChannel*, i32, i32, i32) #1

declare void @gimp_channel_shrink(%struct._GimpChannel*, i32, i32, i32, i32) #1

declare %struct._GimpLayer* @gimp_value_get_layer(%struct._GValue*, %struct._Gimp*) #1

declare void @gimp_item_to_selection(%struct._GimpItem*, i32, i32, i32, double, double) #1

declare %struct._GimpChannel* @gimp_value_get_channel(%struct._GValue*, %struct._Gimp*) #1

declare %struct._GimpChannel* @gimp_selection_save(%struct._GimpSelection*) #1

declare void @gimp_value_set_channel(%struct._GValue*, %struct._GimpChannel*) #1

declare i32 @g_value_get_enum(%struct._GValue*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
