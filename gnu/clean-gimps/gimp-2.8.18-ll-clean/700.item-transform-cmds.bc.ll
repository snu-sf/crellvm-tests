; ModuleID = './app/pdb/item-transform-cmds.bc'
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
%struct._GimpParamSpecEnum = type { %struct._GParamSpecEnum, %struct._GSList* }
%struct._GParamSpecEnum = type { %struct._GParamSpec, %struct._GEnumClass*, i32 }
%struct._GEnumClass = type { %struct._GTypeClass, i32, i32, i32, %struct._GEnumValue* }
%struct._GEnumValue = type { i32, i8*, i8* }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GimpItem = type { %struct._GimpViewable }
%struct._GimpPDBContext = type { %struct._GimpContext, i32, i32, double, double, i32, i32, double, i32, i32, i32, i32, i32, %struct._GimpContainer* }
%struct._GimpContainer = type opaque
%struct._GimpDrawable = type { %struct._GimpItem, %struct._GimpDrawablePrivate* }
%struct._GimpDrawablePrivate = type opaque
%struct._GimpChannel = type { %struct._GimpDrawable, %struct._GimpRGB, i32, %struct._GeglNode*, %struct._GeglNode*, %struct._GeglNode*, i32, %struct._BoundSeg*, %struct._BoundSeg*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GeglNode = type opaque
%struct._BoundSeg = type opaque
%struct._GimpMatrix3 = type { [3 x [3 x double]] }

@.str = private unnamed_addr constant [32 x i8] c"gimp-item-transform-flip-simple\00", align 1
@.str.1 = private unnamed_addr constant [59 x i8] c"Flip the specified item either vertically or horizontally.\00", align 1
@.str.2 = private unnamed_addr constant [688 x i8] c"This procedure flips the specified item. If a selection exists and the item is a drawable, the portion of the drawable which lies under the selection is cut from the drawable and made into a floating selection which is then flipped. If auto_center is set to TRUE, the flip is around the selection's center. Otherwise, the coordinate of the axis needs to be specified. The return value is the ID of the flipped item. If there was no selection or the item is not a drawable, this will be equal to the item ID supplied as input. Otherwise, this will be the newly created and flipped drawable. This procedure is affected by the following context setters: 'gimp-context-set-transform-resize'.\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"Michael Natterer <mitch@gimp.org>\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"Michael Natterer\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"2004\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"item\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"The affected item\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"flip-type\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"flip type\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"Type of flip\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"auto-center\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"auto center\00", align 1
@.str.13 = private unnamed_addr constant [67 x i8] c"Whether to automatically position the axis in the selection center\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"axis\00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c"coord. of flip axis\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"The flipped item\00", align 1
@.str.17 = private unnamed_addr constant [25 x i8] c"gimp-item-transform-flip\00", align 1
@.str.18 = private unnamed_addr constant [45 x i8] c"Flip the specified item around a given line.\00", align 1
@.str.19 = private unnamed_addr constant [746 x i8] c"This procedure flips the specified item. If a selection exists and the item is a drawable , the portion of the drawable which lies under the selection is cut from the drawable and made into a floating selection which is then flipped. The axis to flip around is specified by specifying two points from that line. The return value is the ID of the flipped item. If there was no selection or the item is not a drawable, this will be equal to the item ID supplied as input. Otherwise, this will be the newly created and flipped drawable. This procedure is affected by the following context setters: 'gimp-context-set-interpolation', 'gimp-context-set-transform-direction', 'gimp-context-set-transform-resize', 'gimp-context-set-transform-recursion'.\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"2010\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"x0\00", align 1
@.str.22 = private unnamed_addr constant [32 x i8] c"horz. coord. of one end of axis\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"y0\00", align 1
@.str.24 = private unnamed_addr constant [32 x i8] c"vert. coord. of one end of axis\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"x1\00", align 1
@.str.26 = private unnamed_addr constant [34 x i8] c"horz. coord. of other end of axis\00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c"y1\00", align 1
@.str.28 = private unnamed_addr constant [34 x i8] c"vert. coord. of other end of axis\00", align 1
@.str.29 = private unnamed_addr constant [32 x i8] c"gimp-item-transform-perspective\00", align 1
@.str.30 = private unnamed_addr constant [68 x i8] c"Perform a possibly non-affine transformation on the specified item.\00", align 1
@.str.31 = private unnamed_addr constant [1249 x i8] c"This procedure performs a possibly non-affine transformation on the specified item by allowing the corners of the original bounding box to be arbitrarily remapped to any values. The specified item is remapped if no selection exists or it is not a drawable. However, if a selection exists and the item is a drawable, the portion of the drawable which lies under the selection is cut from the drawable and made into a floating selection which is then remapped as specified. The return value is the ID of the remapped item. If there was no selection or the item is not a drawable, this will be equal to the item ID supplied as input. Otherwise, this will be the newly created and remapped drawable. The 4 coordinates specify the new locations of each corner of the original bounding box. By specifying these values, any affine transformation (rotation, scaling, translation) can be affected. Additionally, these values can be specified such that the resulting transformed item will appear to havebeen projected via a perspective transform. This procedure is affected by the following context setters: 'gimp-context-set-interpolation', 'gimp-context-set-transform-direction', 'gimp-context-set-transform-resize', 'gimp-context-set-transform-recursion'.\00", align 1
@.str.32 = private unnamed_addr constant [67 x i8] c"The new x coordinate of upper-left corner of original bounding box\00", align 1
@.str.33 = private unnamed_addr constant [67 x i8] c"The new y coordinate of upper-left corner of original bounding box\00", align 1
@.str.34 = private unnamed_addr constant [68 x i8] c"The new x coordinate of upper-right corner of original bounding box\00", align 1
@.str.35 = private unnamed_addr constant [68 x i8] c"The new y coordinate of upper-right corner of original bounding box\00", align 1
@.str.36 = private unnamed_addr constant [3 x i8] c"x2\00", align 1
@.str.37 = private unnamed_addr constant [67 x i8] c"The new x coordinate of lower-left corner of original bounding box\00", align 1
@.str.38 = private unnamed_addr constant [3 x i8] c"y2\00", align 1
@.str.39 = private unnamed_addr constant [67 x i8] c"The new y coordinate of lower-left corner of original bounding box\00", align 1
@.str.40 = private unnamed_addr constant [3 x i8] c"x3\00", align 1
@.str.41 = private unnamed_addr constant [68 x i8] c"The new x coordinate of lower-right corner of original bounding box\00", align 1
@.str.42 = private unnamed_addr constant [3 x i8] c"y3\00", align 1
@.str.43 = private unnamed_addr constant [68 x i8] c"The new y coordinate of lower-right corner of original bounding box\00", align 1
@.str.44 = private unnamed_addr constant [22 x i8] c"The newly mapped item\00", align 1
@.str.45 = private unnamed_addr constant [34 x i8] c"gimp-item-transform-rotate-simple\00", align 1
@.str.46 = private unnamed_addr constant [79 x i8] c"Rotate the specified item about given coordinates through the specified angle.\00", align 1
@.str.47 = private unnamed_addr constant [578 x i8] c"This function rotates the specified item. If a selection exists and the item is a drawable, the portion of the drawable which lies under the selection is cut from the drawable and made into a floating selection which is then rotated by the specified amount. The return value is the ID of the rotated item. If there was no selection or the item is not a drawable, this will be equal to the item ID supplied as input. Otherwise, this will be the newly created and rotated drawable. This procedure is affected by the following context setters: 'gimp-context-set-transform-resize'.\00", align 1
@.str.48 = private unnamed_addr constant [12 x i8] c"rotate-type\00", align 1
@.str.49 = private unnamed_addr constant [12 x i8] c"rotate type\00", align 1
@.str.50 = private unnamed_addr constant [17 x i8] c"Type of rotation\00", align 1
@.str.51 = private unnamed_addr constant [60 x i8] c"Whether to automatically rotate around the selection center\00", align 1
@.str.52 = private unnamed_addr constant [9 x i8] c"center-x\00", align 1
@.str.53 = private unnamed_addr constant [9 x i8] c"center x\00", align 1
@.str.54 = private unnamed_addr constant [46 x i8] c"The hor. coordinate of the center of rotation\00", align 1
@.str.55 = private unnamed_addr constant [9 x i8] c"center-y\00", align 1
@.str.56 = private unnamed_addr constant [9 x i8] c"center y\00", align 1
@.str.57 = private unnamed_addr constant [47 x i8] c"The vert. coordinate of the center of rotation\00", align 1
@.str.58 = private unnamed_addr constant [17 x i8] c"The rotated item\00", align 1
@.str.59 = private unnamed_addr constant [27 x i8] c"gimp-item-transform-rotate\00", align 1
@.str.60 = private unnamed_addr constant [692 x i8] c"This function rotates the specified item. If a selection exists and the item is a drawable, the portion of the drawable which lies under the selection is cut from the drawable and made into a floating selection which is then rotated by the specified amount. The return value is the ID of the rotated item. If there was no selection or the item is not a drawable, this will be equal to the item ID supplied as input. Otherwise, this will be the newly created and rotated drawable. This procedure is affected by the following context setters: 'gimp-context-set-interpolation', 'gimp-context-set-transform-direction', 'gimp-context-set-transform-resize', 'gimp-context-set-transform-recursion'.\00", align 1
@.str.61 = private unnamed_addr constant [6 x i8] c"angle\00", align 1
@.str.62 = private unnamed_addr constant [32 x i8] c"The angle of rotation (radians)\00", align 1
@.str.63 = private unnamed_addr constant [26 x i8] c"gimp-item-transform-scale\00", align 1
@.str.64 = private unnamed_addr constant [26 x i8] c"Scale the specified item.\00", align 1
@.str.65 = private unnamed_addr constant [689 x i8] c"This procedure scales the specified item. If a selection exists and the item is a drawable, the portion of the drawable which lies under the selection is cut from the drawable and made into a floating selection which is then scaled by the specified amount. The return value is the ID of the scaled item. If there was no selection or the item is not a drawable, this will be equal to the item ID supplied as input. Otherwise, this will be the newly created and scaled drawable. This procedure is affected by the following context setters: 'gimp-context-set-interpolation', 'gimp-context-set-transform-direction', 'gimp-context-set-transform-resize', 'gimp-context-set-transform-recursion'.\00", align 1
@.str.66 = private unnamed_addr constant [67 x i8] c"The new x coordinate of the upper-left corner of the scaled region\00", align 1
@.str.67 = private unnamed_addr constant [67 x i8] c"The new y coordinate of the upper-left corner of the scaled region\00", align 1
@.str.68 = private unnamed_addr constant [68 x i8] c"The new x coordinate of the lower-right corner of the scaled region\00", align 1
@.str.69 = private unnamed_addr constant [68 x i8] c"The new y coordinate of the lower-right corner of the scaled region\00", align 1
@.str.70 = private unnamed_addr constant [16 x i8] c"The scaled item\00", align 1
@.str.71 = private unnamed_addr constant [26 x i8] c"gimp-item-transform-shear\00", align 1
@.str.72 = private unnamed_addr constant [70 x i8] c"Shear the specified item about its center by the specified magnitude.\00", align 1
@.str.73 = private unnamed_addr constant [885 x i8] c"This procedure shears the specified item. If a selection exists and the item is a drawable, the portion of the drawable which lies under the selection is cut from the drawable and made into a floating selection which is then sheard by the specified amount. The return value is the ID of the sheard item. If there was no selection or the item is not a drawable, this will be equal to the item ID supplied as input. Otherwise, this will be the newly created and sheard drawable. The shear type parameter indicates whether the shear will be applied horizontally or vertically. The magnitude can be either positive or negative and indicates the extent (in pixels) to shear by. This procedure is affected by the following context setters: 'gimp-context-set-interpolation', 'gimp-context-set-transform-direction', 'gimp-context-set-transform-resize', 'gimp-context-set-transform-recursion'.\00", align 1
@.str.74 = private unnamed_addr constant [11 x i8] c"shear-type\00", align 1
@.str.75 = private unnamed_addr constant [11 x i8] c"shear type\00", align 1
@.str.76 = private unnamed_addr constant [14 x i8] c"Type of shear\00", align 1
@.str.77 = private unnamed_addr constant [10 x i8] c"magnitude\00", align 1
@.str.78 = private unnamed_addr constant [27 x i8] c"The magnitude of the shear\00", align 1
@.str.79 = private unnamed_addr constant [17 x i8] c"The sheared item\00", align 1
@.str.80 = private unnamed_addr constant [23 x i8] c"gimp-item-transform-2d\00", align 1
@.str.81 = private unnamed_addr constant [36 x i8] c"Transform the specified item in 2d.\00", align 1
@.str.82 = private unnamed_addr constant [902 x i8] c"This procedure transforms the specified item. If a selection exists and the item is a drawable, the portion of the drawable which lies under the selection is cut from the drawable and made into a floating selection which is then transformed. The transformation is done by scaling the image by the x and y scale factors about the point (source_x, source_y), then rotating around the same point, then translating that point to the new position (dest_x, dest_y). The return value is the ID of the rotated drawable. If there was no selection or the item is not a drawable, this will be equal to the item ID supplied as input. Otherwise, this will be the newly created and transformed drawable. This procedure is affected by the following context setters: 'gimp-context-set-interpolation', 'gimp-context-set-transform-direction', 'gimp-context-set-transform-resize', 'gimp-context-set-transform-recursion'.\00", align 1
@.str.83 = private unnamed_addr constant [9 x i8] c"source-x\00", align 1
@.str.84 = private unnamed_addr constant [9 x i8] c"source x\00", align 1
@.str.85 = private unnamed_addr constant [42 x i8] c"X coordinate of the transformation center\00", align 1
@.str.86 = private unnamed_addr constant [9 x i8] c"source-y\00", align 1
@.str.87 = private unnamed_addr constant [9 x i8] c"source y\00", align 1
@.str.88 = private unnamed_addr constant [42 x i8] c"Y coordinate of the transformation center\00", align 1
@.str.89 = private unnamed_addr constant [8 x i8] c"scale-x\00", align 1
@.str.90 = private unnamed_addr constant [8 x i8] c"scale x\00", align 1
@.str.91 = private unnamed_addr constant [31 x i8] c"Amount to scale in x direction\00", align 1
@.str.92 = private unnamed_addr constant [8 x i8] c"scale-y\00", align 1
@.str.93 = private unnamed_addr constant [8 x i8] c"scale y\00", align 1
@.str.94 = private unnamed_addr constant [31 x i8] c"Amount to scale in y direction\00", align 1
@.str.95 = private unnamed_addr constant [7 x i8] c"dest-x\00", align 1
@.str.96 = private unnamed_addr constant [7 x i8] c"dest x\00", align 1
@.str.97 = private unnamed_addr constant [38 x i8] c"X coordinate of where the center goes\00", align 1
@.str.98 = private unnamed_addr constant [7 x i8] c"dest-y\00", align 1
@.str.99 = private unnamed_addr constant [7 x i8] c"dest y\00", align 1
@.str.100 = private unnamed_addr constant [38 x i8] c"Y coordinate of where the center goes\00", align 1
@.str.101 = private unnamed_addr constant [21 x i8] c"The transformed item\00", align 1
@.str.102 = private unnamed_addr constant [27 x i8] c"gimp-item-transform-matrix\00", align 1
@.str.103 = private unnamed_addr constant [768 x i8] c"This procedure transforms the specified item. If a selection exists and the item is a drawable, the portion of the drawable which lies under the selection is cut from the drawable and made into a floating selection which is then transformed. The transformation is done by assembling a 3x3 matrix from the coefficients passed. The return value is the ID of the transformed item. If there was no selection or the item is not a drawable, this will be equal to the item ID supplied as input. Otherwise, this will be the newly created and transformed drawable. This procedure is affected by the following context setters: 'gimp-context-set-interpolation', 'gimp-context-set-transform-direction', 'gimp-context-set-transform-resize', 'gimp-context-set-transform-recursion'.\00", align 1
@.str.104 = private unnamed_addr constant [10 x i8] c"coeff-0-0\00", align 1
@.str.105 = private unnamed_addr constant [10 x i8] c"coeff 0 0\00", align 1
@.str.106 = private unnamed_addr constant [47 x i8] c"coefficient (0,0) of the transformation matrix\00", align 1
@.str.107 = private unnamed_addr constant [10 x i8] c"coeff-0-1\00", align 1
@.str.108 = private unnamed_addr constant [10 x i8] c"coeff 0 1\00", align 1
@.str.109 = private unnamed_addr constant [47 x i8] c"coefficient (0,1) of the transformation matrix\00", align 1
@.str.110 = private unnamed_addr constant [10 x i8] c"coeff-0-2\00", align 1
@.str.111 = private unnamed_addr constant [10 x i8] c"coeff 0 2\00", align 1
@.str.112 = private unnamed_addr constant [47 x i8] c"coefficient (0,2) of the transformation matrix\00", align 1
@.str.113 = private unnamed_addr constant [10 x i8] c"coeff-1-0\00", align 1
@.str.114 = private unnamed_addr constant [10 x i8] c"coeff 1 0\00", align 1
@.str.115 = private unnamed_addr constant [47 x i8] c"coefficient (1,0) of the transformation matrix\00", align 1
@.str.116 = private unnamed_addr constant [10 x i8] c"coeff-1-1\00", align 1
@.str.117 = private unnamed_addr constant [10 x i8] c"coeff 1 1\00", align 1
@.str.118 = private unnamed_addr constant [47 x i8] c"coefficient (1,1) of the transformation matrix\00", align 1
@.str.119 = private unnamed_addr constant [10 x i8] c"coeff-1-2\00", align 1
@.str.120 = private unnamed_addr constant [10 x i8] c"coeff 1 2\00", align 1
@.str.121 = private unnamed_addr constant [47 x i8] c"coefficient (1,2) of the transformation matrix\00", align 1
@.str.122 = private unnamed_addr constant [10 x i8] c"coeff-2-0\00", align 1
@.str.123 = private unnamed_addr constant [10 x i8] c"coeff 2 0\00", align 1
@.str.124 = private unnamed_addr constant [47 x i8] c"coefficient (2,0) of the transformation matrix\00", align 1
@.str.125 = private unnamed_addr constant [10 x i8] c"coeff-2-1\00", align 1
@.str.126 = private unnamed_addr constant [10 x i8] c"coeff 2 1\00", align 1
@.str.127 = private unnamed_addr constant [47 x i8] c"coefficient (2,1) of the transformation matrix\00", align 1
@.str.128 = private unnamed_addr constant [10 x i8] c"coeff-2-2\00", align 1
@.str.129 = private unnamed_addr constant [10 x i8] c"coeff 2 2\00", align 1
@.str.130 = private unnamed_addr constant [47 x i8] c"coefficient (2,2) of the transformation matrix\00", align 1
@.str.131 = private unnamed_addr constant [9 x i8] c"Flipping\00", align 1
@.str.132 = private unnamed_addr constant [12 x i8] c"Perspective\00", align 1
@.str.133 = private unnamed_addr constant [9 x i8] c"Rotating\00", align 1
@.str.134 = private unnamed_addr constant [8 x i8] c"Scaling\00", align 1
@.str.135 = private unnamed_addr constant [9 x i8] c"Shearing\00", align 1
@.str.136 = private unnamed_addr constant [13 x i8] c"2D Transform\00", align 1
@.str.137 = private unnamed_addr constant [16 x i8] c"2D Transforming\00", align 1

; Function Attrs: nounwind uwtable
define void @register_item_transform_procs(%struct._GimpPDB* %pdb) #0 {
entry:
  %pdb.addr = alloca %struct._GimpPDB*, align 8
  %procedure = alloca %struct._GimpProcedure*, align 8
  store %struct._GimpPDB* %pdb, %struct._GimpPDB** %pdb.addr, align 8
  %call = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @item_transform_flip_simple_invoker)
  store %struct._GimpProcedure* %call, %struct._GimpProcedure** %procedure, align 8
  %0 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %1 = bitcast %struct._GimpProcedure* %0 to %struct._GTypeInstance*
  %call1 = call i64 @gimp_object_get_type() #5
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call1)
  %2 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %2, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i32 0, i32 0))
  %3 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %3, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([688 x i8], [688 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* null)
  %4 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %5 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %5, i32 0, i32 1
  %6 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call3 = call %struct._GParamSpec* @gimp_param_spec_item_id(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i32 0, i32 0), %struct._Gimp* %6, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %4, %struct._GParamSpec* %call3)
  %7 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call4 = call i64 @gimp_orientation_type_get_type() #5
  %call5 = call %struct._GParamSpec* @gimp_param_spec_enum(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i32 0, i32 0), i64 %call4, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %7, %struct._GParamSpec* %call5)
  %8 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %args = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %8, i32 0, i32 11
  %9 = load %struct._GParamSpec**, %struct._GParamSpec*** %args, align 8
  %arrayidx = getelementptr inbounds %struct._GParamSpec*, %struct._GParamSpec** %9, i64 1
  %10 = load %struct._GParamSpec*, %struct._GParamSpec** %arrayidx, align 8
  %11 = bitcast %struct._GParamSpec* %10 to %struct._GTypeInstance*
  %call6 = call i64 @gimp_param_enum_get_type() #5
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call6)
  %12 = bitcast %struct._GTypeInstance* %call7 to %struct._GimpParamSpecEnum*
  call void @gimp_param_spec_enum_exclude_value(%struct._GimpParamSpecEnum* %12, i32 2)
  %13 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call8 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.13, i32 0, i32 0), i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %13, %struct._GParamSpec* %call8)
  %14 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call9 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %14, %struct._GParamSpec* %call9)
  %15 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %16 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp10 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %16, i32 0, i32 1
  %17 = load %struct._Gimp*, %struct._Gimp** %gimp10, align 8
  %call11 = call %struct._GParamSpec* @gimp_param_spec_item_id(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i32 0, i32 0), %struct._Gimp* %17, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %15, %struct._GParamSpec* %call11)
  %18 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %19 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %18, %struct._GimpProcedure* %19)
  %20 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %21 = bitcast %struct._GimpProcedure* %20 to i8*
  call void @g_object_unref(i8* %21)
  %call12 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @item_transform_flip_invoker)
  store %struct._GimpProcedure* %call12, %struct._GimpProcedure** %procedure, align 8
  %22 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %23 = bitcast %struct._GimpProcedure* %22 to %struct._GTypeInstance*
  %call13 = call i64 @gimp_object_get_type() #5
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call13)
  %24 = bitcast %struct._GTypeInstance* %call14 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %24, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.17, i32 0, i32 0))
  %25 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %25, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([746 x i8], [746 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i32 0, i32 0), i8* null)
  %26 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %27 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp15 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %27, i32 0, i32 1
  %28 = load %struct._Gimp*, %struct._Gimp** %gimp15, align 8
  %call16 = call %struct._GParamSpec* @gimp_param_spec_item_id(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i32 0, i32 0), %struct._Gimp* %28, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %26, %struct._GParamSpec* %call16)
  %29 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call17 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.22, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %29, %struct._GParamSpec* %call17)
  %30 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call18 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.24, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %30, %struct._GParamSpec* %call18)
  %31 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call19 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %31, %struct._GParamSpec* %call19)
  %32 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call20 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.28, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %32, %struct._GParamSpec* %call20)
  %33 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %34 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp21 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %34, i32 0, i32 1
  %35 = load %struct._Gimp*, %struct._Gimp** %gimp21, align 8
  %call22 = call %struct._GParamSpec* @gimp_param_spec_item_id(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i32 0, i32 0), %struct._Gimp* %35, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %33, %struct._GParamSpec* %call22)
  %36 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %37 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %36, %struct._GimpProcedure* %37)
  %38 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %39 = bitcast %struct._GimpProcedure* %38 to i8*
  call void @g_object_unref(i8* %39)
  %call23 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @item_transform_perspective_invoker)
  store %struct._GimpProcedure* %call23, %struct._GimpProcedure** %procedure, align 8
  %40 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %41 = bitcast %struct._GimpProcedure* %40 to %struct._GTypeInstance*
  %call24 = call i64 @gimp_object_get_type() #5
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %41, i64 %call24)
  %42 = bitcast %struct._GTypeInstance* %call25 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %42, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.29, i32 0, i32 0))
  %43 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %43, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([1249 x i8], [1249 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i32 0, i32 0), i8* null)
  %44 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %45 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp26 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %45, i32 0, i32 1
  %46 = load %struct._Gimp*, %struct._Gimp** %gimp26, align 8
  %call27 = call %struct._GParamSpec* @gimp_param_spec_item_id(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i32 0, i32 0), %struct._Gimp* %46, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %44, %struct._GParamSpec* %call27)
  %47 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call28 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.32, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %47, %struct._GParamSpec* %call28)
  %48 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call29 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.33, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %48, %struct._GParamSpec* %call29)
  %49 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call30 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.34, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %49, %struct._GParamSpec* %call30)
  %50 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call31 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.35, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %50, %struct._GParamSpec* %call31)
  %51 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call32 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.37, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %51, %struct._GParamSpec* %call32)
  %52 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call33 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.39, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %52, %struct._GParamSpec* %call33)
  %53 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call34 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.41, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %53, %struct._GParamSpec* %call34)
  %54 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call35 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.43, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %54, %struct._GParamSpec* %call35)
  %55 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %56 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp36 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %56, i32 0, i32 1
  %57 = load %struct._Gimp*, %struct._Gimp** %gimp36, align 8
  %call37 = call %struct._GParamSpec* @gimp_param_spec_item_id(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.44, i32 0, i32 0), %struct._Gimp* %57, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %55, %struct._GParamSpec* %call37)
  %58 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %59 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %58, %struct._GimpProcedure* %59)
  %60 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %61 = bitcast %struct._GimpProcedure* %60 to i8*
  call void @g_object_unref(i8* %61)
  %call38 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @item_transform_rotate_simple_invoker)
  store %struct._GimpProcedure* %call38, %struct._GimpProcedure** %procedure, align 8
  %62 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %63 = bitcast %struct._GimpProcedure* %62 to %struct._GTypeInstance*
  %call39 = call i64 @gimp_object_get_type() #5
  %call40 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %63, i64 %call39)
  %64 = bitcast %struct._GTypeInstance* %call40 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %64, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.45, i32 0, i32 0))
  %65 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %65, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([578 x i8], [578 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i32 0, i32 0), i8* null)
  %66 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %67 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp41 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %67, i32 0, i32 1
  %68 = load %struct._Gimp*, %struct._Gimp** %gimp41, align 8
  %call42 = call %struct._GParamSpec* @gimp_param_spec_item_id(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i32 0, i32 0), %struct._Gimp* %68, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %66, %struct._GParamSpec* %call42)
  %69 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call43 = call i64 @gimp_rotation_type_get_type() #5
  %call44 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.50, i32 0, i32 0), i64 %call43, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %69, %struct._GParamSpec* %call44)
  %70 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call45 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.51, i32 0, i32 0), i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %70, %struct._GParamSpec* %call45)
  %71 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call46 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.54, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %71, %struct._GParamSpec* %call46)
  %72 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call47 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.57, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %72, %struct._GParamSpec* %call47)
  %73 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %74 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp48 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %74, i32 0, i32 1
  %75 = load %struct._Gimp*, %struct._Gimp** %gimp48, align 8
  %call49 = call %struct._GParamSpec* @gimp_param_spec_item_id(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.58, i32 0, i32 0), %struct._Gimp* %75, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %73, %struct._GParamSpec* %call49)
  %76 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %77 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %76, %struct._GimpProcedure* %77)
  %78 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %79 = bitcast %struct._GimpProcedure* %78 to i8*
  call void @g_object_unref(i8* %79)
  %call50 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @item_transform_rotate_invoker)
  store %struct._GimpProcedure* %call50, %struct._GimpProcedure** %procedure, align 8
  %80 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %81 = bitcast %struct._GimpProcedure* %80 to %struct._GTypeInstance*
  %call51 = call i64 @gimp_object_get_type() #5
  %call52 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %81, i64 %call51)
  %82 = bitcast %struct._GTypeInstance* %call52 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %82, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.59, i32 0, i32 0))
  %83 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %83, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([692 x i8], [692 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i32 0, i32 0), i8* null)
  %84 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %85 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp53 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %85, i32 0, i32 1
  %86 = load %struct._Gimp*, %struct._Gimp** %gimp53, align 8
  %call54 = call %struct._GParamSpec* @gimp_param_spec_item_id(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i32 0, i32 0), %struct._Gimp* %86, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %84, %struct._GParamSpec* %call54)
  %87 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call55 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.62, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %87, %struct._GParamSpec* %call55)
  %88 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call56 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.51, i32 0, i32 0), i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %88, %struct._GParamSpec* %call56)
  %89 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call57 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.54, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %89, %struct._GParamSpec* %call57)
  %90 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call58 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.57, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %90, %struct._GParamSpec* %call58)
  %91 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %92 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp59 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %92, i32 0, i32 1
  %93 = load %struct._Gimp*, %struct._Gimp** %gimp59, align 8
  %call60 = call %struct._GParamSpec* @gimp_param_spec_item_id(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.58, i32 0, i32 0), %struct._Gimp* %93, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %91, %struct._GParamSpec* %call60)
  %94 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %95 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %94, %struct._GimpProcedure* %95)
  %96 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %97 = bitcast %struct._GimpProcedure* %96 to i8*
  call void @g_object_unref(i8* %97)
  %call61 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @item_transform_scale_invoker)
  store %struct._GimpProcedure* %call61, %struct._GimpProcedure** %procedure, align 8
  %98 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %99 = bitcast %struct._GimpProcedure* %98 to %struct._GTypeInstance*
  %call62 = call i64 @gimp_object_get_type() #5
  %call63 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %99, i64 %call62)
  %100 = bitcast %struct._GTypeInstance* %call63 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %100, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.63, i32 0, i32 0))
  %101 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %101, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([689 x i8], [689 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i32 0, i32 0), i8* null)
  %102 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %103 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp64 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %103, i32 0, i32 1
  %104 = load %struct._Gimp*, %struct._Gimp** %gimp64, align 8
  %call65 = call %struct._GParamSpec* @gimp_param_spec_item_id(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i32 0, i32 0), %struct._Gimp* %104, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %102, %struct._GParamSpec* %call65)
  %105 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call66 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.66, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %105, %struct._GParamSpec* %call66)
  %106 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call67 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.67, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %106, %struct._GParamSpec* %call67)
  %107 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call68 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.68, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %107, %struct._GParamSpec* %call68)
  %108 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call69 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.69, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %108, %struct._GParamSpec* %call69)
  %109 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %110 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp70 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %110, i32 0, i32 1
  %111 = load %struct._Gimp*, %struct._Gimp** %gimp70, align 8
  %call71 = call %struct._GParamSpec* @gimp_param_spec_item_id(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.70, i32 0, i32 0), %struct._Gimp* %111, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %109, %struct._GParamSpec* %call71)
  %112 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %113 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %112, %struct._GimpProcedure* %113)
  %114 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %115 = bitcast %struct._GimpProcedure* %114 to i8*
  call void @g_object_unref(i8* %115)
  %call72 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @item_transform_shear_invoker)
  store %struct._GimpProcedure* %call72, %struct._GimpProcedure** %procedure, align 8
  %116 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %117 = bitcast %struct._GimpProcedure* %116 to %struct._GTypeInstance*
  %call73 = call i64 @gimp_object_get_type() #5
  %call74 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %117, i64 %call73)
  %118 = bitcast %struct._GTypeInstance* %call74 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %118, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.71, i32 0, i32 0))
  %119 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %119, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.72, i32 0, i32 0), i8* getelementptr inbounds ([885 x i8], [885 x i8]* @.str.73, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i32 0, i32 0), i8* null)
  %120 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %121 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp75 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %121, i32 0, i32 1
  %122 = load %struct._Gimp*, %struct._Gimp** %gimp75, align 8
  %call76 = call %struct._GParamSpec* @gimp_param_spec_item_id(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i32 0, i32 0), %struct._Gimp* %122, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %120, %struct._GParamSpec* %call76)
  %123 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call77 = call i64 @gimp_orientation_type_get_type() #5
  %call78 = call %struct._GParamSpec* @gimp_param_spec_enum(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.74, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.75, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.76, i32 0, i32 0), i64 %call77, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %123, %struct._GParamSpec* %call78)
  %124 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %args79 = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %124, i32 0, i32 11
  %125 = load %struct._GParamSpec**, %struct._GParamSpec*** %args79, align 8
  %arrayidx80 = getelementptr inbounds %struct._GParamSpec*, %struct._GParamSpec** %125, i64 1
  %126 = load %struct._GParamSpec*, %struct._GParamSpec** %arrayidx80, align 8
  %127 = bitcast %struct._GParamSpec* %126 to %struct._GTypeInstance*
  %call81 = call i64 @gimp_param_enum_get_type() #5
  %call82 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %127, i64 %call81)
  %128 = bitcast %struct._GTypeInstance* %call82 to %struct._GimpParamSpecEnum*
  call void @gimp_param_spec_enum_exclude_value(%struct._GimpParamSpecEnum* %128, i32 2)
  %129 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call83 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.77, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.77, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.78, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %129, %struct._GParamSpec* %call83)
  %130 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %131 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp84 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %131, i32 0, i32 1
  %132 = load %struct._Gimp*, %struct._Gimp** %gimp84, align 8
  %call85 = call %struct._GParamSpec* @gimp_param_spec_item_id(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.79, i32 0, i32 0), %struct._Gimp* %132, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %130, %struct._GParamSpec* %call85)
  %133 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %134 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %133, %struct._GimpProcedure* %134)
  %135 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %136 = bitcast %struct._GimpProcedure* %135 to i8*
  call void @g_object_unref(i8* %136)
  %call86 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @item_transform_2d_invoker)
  store %struct._GimpProcedure* %call86, %struct._GimpProcedure** %procedure, align 8
  %137 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %138 = bitcast %struct._GimpProcedure* %137 to %struct._GTypeInstance*
  %call87 = call i64 @gimp_object_get_type() #5
  %call88 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %138, i64 %call87)
  %139 = bitcast %struct._GTypeInstance* %call88 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %139, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.80, i32 0, i32 0))
  %140 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %140, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.80, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.81, i32 0, i32 0), i8* getelementptr inbounds ([902 x i8], [902 x i8]* @.str.82, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i32 0, i32 0), i8* null)
  %141 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %142 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp89 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %142, i32 0, i32 1
  %143 = load %struct._Gimp*, %struct._Gimp** %gimp89, align 8
  %call90 = call %struct._GParamSpec* @gimp_param_spec_item_id(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i32 0, i32 0), %struct._Gimp* %143, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %141, %struct._GParamSpec* %call90)
  %144 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call91 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.83, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.84, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.85, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %144, %struct._GParamSpec* %call91)
  %145 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call92 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.86, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.87, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.88, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %145, %struct._GParamSpec* %call92)
  %146 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call93 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.89, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.90, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.91, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %146, %struct._GParamSpec* %call93)
  %147 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call94 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.92, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.93, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.94, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %147, %struct._GParamSpec* %call94)
  %148 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call95 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.62, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %148, %struct._GParamSpec* %call95)
  %149 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call96 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.95, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.96, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.97, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %149, %struct._GParamSpec* %call96)
  %150 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call97 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.98, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.99, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.100, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %150, %struct._GParamSpec* %call97)
  %151 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %152 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp98 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %152, i32 0, i32 1
  %153 = load %struct._Gimp*, %struct._Gimp** %gimp98, align 8
  %call99 = call %struct._GParamSpec* @gimp_param_spec_item_id(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.101, i32 0, i32 0), %struct._Gimp* %153, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %151, %struct._GParamSpec* %call99)
  %154 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %155 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %154, %struct._GimpProcedure* %155)
  %156 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %157 = bitcast %struct._GimpProcedure* %156 to i8*
  call void @g_object_unref(i8* %157)
  %call100 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @item_transform_matrix_invoker)
  store %struct._GimpProcedure* %call100, %struct._GimpProcedure** %procedure, align 8
  %158 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %159 = bitcast %struct._GimpProcedure* %158 to %struct._GTypeInstance*
  %call101 = call i64 @gimp_object_get_type() #5
  %call102 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %159, i64 %call101)
  %160 = bitcast %struct._GTypeInstance* %call102 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %160, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.102, i32 0, i32 0))
  %161 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %161, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.102, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.81, i32 0, i32 0), i8* getelementptr inbounds ([768 x i8], [768 x i8]* @.str.103, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i32 0, i32 0), i8* null)
  %162 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %163 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp103 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %163, i32 0, i32 1
  %164 = load %struct._Gimp*, %struct._Gimp** %gimp103, align 8
  %call104 = call %struct._GParamSpec* @gimp_param_spec_item_id(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i32 0, i32 0), %struct._Gimp* %164, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %162, %struct._GParamSpec* %call104)
  %165 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call105 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.104, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.105, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.106, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %165, %struct._GParamSpec* %call105)
  %166 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call106 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.107, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.108, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.109, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %166, %struct._GParamSpec* %call106)
  %167 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call107 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.110, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.111, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.112, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %167, %struct._GParamSpec* %call107)
  %168 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call108 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.113, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.114, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.115, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %168, %struct._GParamSpec* %call108)
  %169 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call109 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.116, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.117, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.118, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %169, %struct._GParamSpec* %call109)
  %170 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call110 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.119, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.120, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.121, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %170, %struct._GParamSpec* %call110)
  %171 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call111 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.122, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.123, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.124, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %171, %struct._GParamSpec* %call111)
  %172 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call112 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.125, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.126, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.127, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %172, %struct._GParamSpec* %call112)
  %173 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call113 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.128, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.129, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.130, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %173, %struct._GParamSpec* %call113)
  %174 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %175 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp114 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %175, i32 0, i32 1
  %176 = load %struct._Gimp*, %struct._Gimp** %gimp114, align 8
  %call115 = call %struct._GParamSpec* @gimp_param_spec_item_id(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.101, i32 0, i32 0), %struct._Gimp* %176, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %174, %struct._GParamSpec* %call115)
  %177 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %178 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %177, %struct._GimpProcedure* %178)
  %179 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %180 = bitcast %struct._GimpProcedure* %179 to i8*
  call void @g_object_unref(i8* %180)
  ret void
}

declare %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)*) #1

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @item_transform_flip_simple_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %return_vals = alloca %struct._GValueArray*, align 8
  %item = alloca %struct._GimpItem*, align 8
  %flip_type = alloca i32, align 4
  %auto_center = alloca i32, align 4
  %axis = alloca double, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %pdb_context = alloca %struct._GimpPDBContext*, align 8
  %off_x = alloca i32, align 4
  %off_y = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %drawable = alloca %struct._GimpDrawable*, align 8
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
  %call = call %struct._GimpItem* @gimp_value_get_item(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpItem* %call, %struct._GimpItem** %item, align 8
  %3 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %3, i32 0, i32 1
  %4 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %4, i64 1
  %call3 = call i32 @g_value_get_enum(%struct._GValue* %arrayidx2)
  store i32 %call3, i32* %flip_type, align 4
  %5 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values4 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %5, i32 0, i32 1
  %6 = load %struct._GValue*, %struct._GValue** %values4, align 8
  %arrayidx5 = getelementptr inbounds %struct._GValue, %struct._GValue* %6, i64 2
  %call6 = call i32 @g_value_get_boolean(%struct._GValue* %arrayidx5)
  store i32 %call6, i32* %auto_center, align 4
  %7 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values7 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %7, i32 0, i32 1
  %8 = load %struct._GValue*, %struct._GValue** %values7, align 8
  %arrayidx8 = getelementptr inbounds %struct._GValue, %struct._GValue* %8, i64 3
  %call9 = call double @g_value_get_double(%struct._GValue* %arrayidx8)
  store double %call9, double* %axis, align 8
  %9 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %if.then, label %if.end.54

if.then:                                          ; preds = %entry
  %10 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %11 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call10 = call i32 @gimp_pdb_item_is_attached(%struct._GimpItem* %10, %struct._GimpImage* null, i32 1, %struct._GError** %11)
  store i32 %call10, i32* %success, align 4
  %12 = load i32, i32* %success, align 4
  %tobool11 = icmp ne i32 %12, 0
  br i1 %tobool11, label %land.lhs.true, label %if.end.53

land.lhs.true:                                    ; preds = %if.then
  %13 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call12 = call i32 @gimp_item_mask_intersect(%struct._GimpItem* %13, i32* %x, i32* %y, i32* %width, i32* %height)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.then.14, label %if.end.53

if.then.14:                                       ; preds = %land.lhs.true
  %14 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %15 = bitcast %struct._GimpContext* %14 to %struct._GTypeInstance*
  %call15 = call i64 @gimp_pdb_context_get_type() #5
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call15)
  %16 = bitcast %struct._GTypeInstance* %call16 to %struct._GimpPDBContext*
  store %struct._GimpPDBContext* %16, %struct._GimpPDBContext** %pdb_context, align 8
  %17 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  call void @gimp_item_get_offset(%struct._GimpItem* %17, i32* %off_x, i32* %off_y)
  %18 = load i32, i32* %off_x, align 4
  %19 = load i32, i32* %x, align 4
  %add = add nsw i32 %19, %18
  store i32 %add, i32* %x, align 4
  %20 = load i32, i32* %off_y, align 4
  %21 = load i32, i32* %y, align 4
  %add17 = add nsw i32 %21, %20
  store i32 %add17, i32* %y, align 4
  %22 = load i32, i32* %x, align 4
  %23 = load i32, i32* %y, align 4
  %24 = load i32, i32* %width, align 4
  %25 = load i32, i32* %height, align 4
  %26 = load i32, i32* %flip_type, align 4
  %27 = load i32, i32* %auto_center, align 4
  call void @gimp_transform_get_flip_axis(i32 %22, i32 %23, i32 %24, i32 %25, i32 %26, i32 %27, double* %axis)
  %28 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %29 = bitcast %struct._GimpItem* %28 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %29, %struct._GTypeInstance** %__inst, align 8
  %call18 = call i64 @gimp_drawable_get_type() #5
  store i64 %call18, i64* %__t, align 8
  %30 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool19 = icmp ne %struct._GTypeInstance* %30, null
  br i1 %tobool19, label %if.else, label %if.then.20

if.then.20:                                       ; preds = %if.then.14
  store i32 0, i32* %__r, align 4
  br label %if.end.27

if.else:                                          ; preds = %if.then.14
  %31 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %31, i32 0, i32 0
  %32 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool21 = icmp ne %struct._GTypeClass* %32, null
  br i1 %tobool21, label %land.lhs.true.22, label %if.else.25

land.lhs.true.22:                                 ; preds = %if.else
  %33 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class23 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %33, i32 0, i32 0
  %34 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class23, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %34, i32 0, i32 0
  %35 = load i64, i64* %g_type, align 8
  %36 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %35, %36
  br i1 %cmp, label %if.then.24, label %if.else.25

if.then.24:                                       ; preds = %land.lhs.true.22
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.25:                                       ; preds = %land.lhs.true.22, %if.else
  %37 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %38 = load i64, i64* %__t, align 8
  %call26 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %37, i64 %38) #6
  store i32 %call26, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.25, %if.then.24
  br label %if.end.27

if.end.27:                                        ; preds = %if.end, %if.then.20
  %39 = load i32, i32* %__r, align 4
  store i32 %39, i32* %tmp
  %40 = load i32, i32* %tmp
  %tobool28 = icmp ne i32 %40, 0
  br i1 %tobool28, label %land.lhs.true.29, label %if.else.50

land.lhs.true.29:                                 ; preds = %if.end.27
  %41 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %42 = bitcast %struct._GimpItem* %41 to %struct._GTypeInstance*
  %call30 = call i64 @gimp_viewable_get_type() #5
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %42, i64 %call30)
  %43 = bitcast %struct._GTypeInstance* %call31 to %struct._GimpViewable*
  %call32 = call %struct._GimpContainer* @gimp_viewable_get_children(%struct._GimpViewable* %43)
  %tobool33 = icmp ne %struct._GimpContainer* %call32, null
  br i1 %tobool33, label %if.else.50, label %land.lhs.true.34

land.lhs.true.34:                                 ; preds = %land.lhs.true.29
  %44 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call35 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %44)
  %call36 = call %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage* %call35)
  %call37 = call i32 @gimp_channel_is_empty(%struct._GimpChannel* %call36)
  %tobool38 = icmp ne i32 %call37, 0
  br i1 %tobool38, label %if.else.50, label %if.then.39

if.then.39:                                       ; preds = %land.lhs.true.34
  %45 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %46 = bitcast %struct._GimpItem* %45 to %struct._GTypeInstance*
  %call41 = call i64 @gimp_drawable_get_type() #5
  %call42 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %46, i64 %call41)
  %47 = bitcast %struct._GTypeInstance* %call42 to %struct._GimpDrawable*
  %48 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %49 = load i32, i32* %flip_type, align 4
  %50 = load double, double* %axis, align 8
  %51 = load %struct._GimpPDBContext*, %struct._GimpPDBContext** %pdb_context, align 8
  %transform_resize = getelementptr inbounds %struct._GimpPDBContext, %struct._GimpPDBContext* %51, i32 0, i32 11
  %52 = load i32, i32* %transform_resize, align 4
  %call43 = call %struct._GimpDrawable* @gimp_drawable_transform_flip(%struct._GimpDrawable* %47, %struct._GimpContext* %48, i32 %49, double %50, i32 %52)
  store %struct._GimpDrawable* %call43, %struct._GimpDrawable** %drawable, align 8
  %53 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %tobool44 = icmp ne %struct._GimpDrawable* %53, null
  br i1 %tobool44, label %if.then.45, label %if.else.48

if.then.45:                                       ; preds = %if.then.39
  %54 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %55 = bitcast %struct._GimpDrawable* %54 to %struct._GTypeInstance*
  %call46 = call i64 @gimp_item_get_type() #5
  %call47 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %55, i64 %call46)
  %56 = bitcast %struct._GTypeInstance* %call47 to %struct._GimpItem*
  store %struct._GimpItem* %56, %struct._GimpItem** %item, align 8
  br label %if.end.49

if.else.48:                                       ; preds = %if.then.39
  store i32 0, i32* %success, align 4
  br label %if.end.49

if.end.49:                                        ; preds = %if.else.48, %if.then.45
  br label %if.end.52

if.else.50:                                       ; preds = %land.lhs.true.34, %land.lhs.true.29, %if.end.27
  %57 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %58 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %59 = load i32, i32* %flip_type, align 4
  %60 = load double, double* %axis, align 8
  %61 = load %struct._GimpPDBContext*, %struct._GimpPDBContext** %pdb_context, align 8
  %transform_resize51 = getelementptr inbounds %struct._GimpPDBContext, %struct._GimpPDBContext* %61, i32 0, i32 11
  %62 = load i32, i32* %transform_resize51, align 4
  call void @gimp_item_flip(%struct._GimpItem* %57, %struct._GimpContext* %58, i32 %59, double %60, i32 %62)
  br label %if.end.52

if.end.52:                                        ; preds = %if.else.50, %if.end.49
  br label %if.end.53

if.end.53:                                        ; preds = %if.end.52, %land.lhs.true, %if.then
  br label %if.end.54

if.end.54:                                        ; preds = %if.end.53, %entry
  %63 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %64 = load i32, i32* %success, align 4
  %65 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool55 = icmp ne %struct._GError** %65, null
  br i1 %tobool55, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.54
  %66 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %67 = load %struct._GError*, %struct._GError** %66, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.54
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %67, %cond.true ], [ null, %cond.false ]
  %call56 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %63, i32 %64, %struct._GError* %cond)
  store %struct._GValueArray* %call56, %struct._GValueArray** %return_vals, align 8
  %68 = load i32, i32* %success, align 4
  %tobool57 = icmp ne i32 %68, 0
  br i1 %tobool57, label %if.then.58, label %if.end.61

if.then.58:                                       ; preds = %cond.end
  %69 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values59 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %69, i32 0, i32 1
  %70 = load %struct._GValue*, %struct._GValue** %values59, align 8
  %arrayidx60 = getelementptr inbounds %struct._GValue, %struct._GValue* %70, i64 1
  %71 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  call void @gimp_value_set_item(%struct._GValue* %arrayidx60, %struct._GimpItem* %71)
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.58, %cond.end
  %72 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %72
}

declare void @gimp_object_set_static_name(%struct._GimpObject*, i8*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #2

declare void @gimp_procedure_set_static_strings(%struct._GimpProcedure*, i8*, i8*, i8*, i8*, i8*, i8*, i8*) #1

declare void @gimp_procedure_add_argument(%struct._GimpProcedure*, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @gimp_param_spec_item_id(i8*, i8*, i8*, %struct._Gimp*, i32, i32) #1

declare %struct._GParamSpec* @gimp_param_spec_enum(i8*, i8*, i8*, i64, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_orientation_type_get_type() #2

declare void @gimp_param_spec_enum_exclude_value(%struct._GimpParamSpecEnum*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_param_enum_get_type() #2

declare %struct._GParamSpec* @g_param_spec_boolean(i8*, i8*, i8*, i32, i32) #1

declare %struct._GParamSpec* @g_param_spec_double(i8*, i8*, i8*, double, double, double, i32) #1

declare void @gimp_procedure_add_return_value(%struct._GimpProcedure*, %struct._GParamSpec*) #1

declare void @gimp_pdb_register_procedure(%struct._GimpPDB*, %struct._GimpProcedure*) #1

declare void @g_object_unref(i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @item_transform_flip_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %return_vals = alloca %struct._GValueArray*, align 8
  %item = alloca %struct._GimpItem*, align 8
  %x0 = alloca double, align 8
  %y0 = alloca double, align 8
  %x1 = alloca double, align 8
  %y1 = alloca double, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %pdb_context = alloca %struct._GimpPDBContext*, align 8
  %matrix = alloca %struct._GimpMatrix3, align 8
  %off_x = alloca i32, align 4
  %off_y = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %drawable = alloca %struct._GimpDrawable*, align 8
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
  %call = call %struct._GimpItem* @gimp_value_get_item(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpItem* %call, %struct._GimpItem** %item, align 8
  %3 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %3, i32 0, i32 1
  %4 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %4, i64 1
  %call3 = call double @g_value_get_double(%struct._GValue* %arrayidx2)
  store double %call3, double* %x0, align 8
  %5 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values4 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %5, i32 0, i32 1
  %6 = load %struct._GValue*, %struct._GValue** %values4, align 8
  %arrayidx5 = getelementptr inbounds %struct._GValue, %struct._GValue* %6, i64 2
  %call6 = call double @g_value_get_double(%struct._GValue* %arrayidx5)
  store double %call6, double* %y0, align 8
  %7 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values7 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %7, i32 0, i32 1
  %8 = load %struct._GValue*, %struct._GValue** %values7, align 8
  %arrayidx8 = getelementptr inbounds %struct._GValue, %struct._GValue* %8, i64 3
  %call9 = call double @g_value_get_double(%struct._GValue* %arrayidx8)
  store double %call9, double* %x1, align 8
  %9 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values10 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %9, i32 0, i32 1
  %10 = load %struct._GValue*, %struct._GValue** %values10, align 8
  %arrayidx11 = getelementptr inbounds %struct._GValue, %struct._GValue* %10, i64 4
  %call12 = call double @g_value_get_double(%struct._GValue* %arrayidx11)
  store double %call12, double* %y1, align 8
  %11 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %if.then, label %if.end.68

if.then:                                          ; preds = %entry
  %12 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %13 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call13 = call i32 @gimp_pdb_item_is_attached(%struct._GimpItem* %12, %struct._GimpImage* null, i32 1, %struct._GError** %13)
  store i32 %call13, i32* %success, align 4
  %14 = load i32, i32* %success, align 4
  %tobool14 = icmp ne i32 %14, 0
  br i1 %tobool14, label %land.lhs.true, label %if.end.67

land.lhs.true:                                    ; preds = %if.then
  %15 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call15 = call i32 @gimp_item_mask_intersect(%struct._GimpItem* %15, i32* %x, i32* %y, i32* %width, i32* %height)
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.then.17, label %if.end.67

if.then.17:                                       ; preds = %land.lhs.true
  %16 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %17 = bitcast %struct._GimpContext* %16 to %struct._GTypeInstance*
  %call18 = call i64 @gimp_pdb_context_get_type() #5
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call18)
  %18 = bitcast %struct._GTypeInstance* %call19 to %struct._GimpPDBContext*
  store %struct._GimpPDBContext* %18, %struct._GimpPDBContext** %pdb_context, align 8
  %19 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  call void @gimp_item_get_offset(%struct._GimpItem* %19, i32* %off_x, i32* %off_y)
  %20 = load i32, i32* %off_x, align 4
  %21 = load i32, i32* %x, align 4
  %add = add nsw i32 %21, %20
  store i32 %add, i32* %x, align 4
  %22 = load i32, i32* %off_y, align 4
  %23 = load i32, i32* %y, align 4
  %add20 = add nsw i32 %23, %22
  store i32 %add20, i32* %y, align 4
  call void @gimp_matrix3_identity(%struct._GimpMatrix3* %matrix)
  %24 = load double, double* %x0, align 8
  %25 = load double, double* %y0, align 8
  %26 = load double, double* %x1, align 8
  %27 = load double, double* %y1, align 8
  call void @gimp_transform_matrix_flip_free(%struct._GimpMatrix3* %matrix, double %24, double %25, double %26, double %27)
  %28 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %tobool21 = icmp ne %struct._GimpProgress* %28, null
  br i1 %tobool21, label %if.then.22, label %if.end

if.then.22:                                       ; preds = %if.then.17
  %29 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %call23 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.131, i32 0, i32 0)) #7
  %call24 = call %struct._GimpProgress* @gimp_progress_start(%struct._GimpProgress* %29, i8* %call23, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then.22, %if.then.17
  %30 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %31 = bitcast %struct._GimpItem* %30 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %31, %struct._GTypeInstance** %__inst, align 8
  %call25 = call i64 @gimp_drawable_get_type() #5
  store i64 %call25, i64* %__t, align 8
  %32 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool26 = icmp ne %struct._GTypeInstance* %32, null
  br i1 %tobool26, label %if.else, label %if.then.27

if.then.27:                                       ; preds = %if.end
  store i32 0, i32* %__r, align 4
  br label %if.end.35

if.else:                                          ; preds = %if.end
  %33 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %33, i32 0, i32 0
  %34 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool28 = icmp ne %struct._GTypeClass* %34, null
  br i1 %tobool28, label %land.lhs.true.29, label %if.else.32

land.lhs.true.29:                                 ; preds = %if.else
  %35 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class30 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %35, i32 0, i32 0
  %36 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class30, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %36, i32 0, i32 0
  %37 = load i64, i64* %g_type, align 8
  %38 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %37, %38
  br i1 %cmp, label %if.then.31, label %if.else.32

if.then.31:                                       ; preds = %land.lhs.true.29
  store i32 1, i32* %__r, align 4
  br label %if.end.34

if.else.32:                                       ; preds = %land.lhs.true.29, %if.else
  %39 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %40 = load i64, i64* %__t, align 8
  %call33 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %39, i64 %40) #6
  store i32 %call33, i32* %__r, align 4
  br label %if.end.34

if.end.34:                                        ; preds = %if.else.32, %if.then.31
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %if.then.27
  %41 = load i32, i32* %__r, align 4
  store i32 %41, i32* %tmp
  %42 = load i32, i32* %tmp
  %tobool36 = icmp ne i32 %42, 0
  br i1 %tobool36, label %land.lhs.true.37, label %if.else.58

land.lhs.true.37:                                 ; preds = %if.end.35
  %43 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %44 = bitcast %struct._GimpItem* %43 to %struct._GTypeInstance*
  %call38 = call i64 @gimp_viewable_get_type() #5
  %call39 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %44, i64 %call38)
  %45 = bitcast %struct._GTypeInstance* %call39 to %struct._GimpViewable*
  %call40 = call %struct._GimpContainer* @gimp_viewable_get_children(%struct._GimpViewable* %45)
  %tobool41 = icmp ne %struct._GimpContainer* %call40, null
  br i1 %tobool41, label %if.else.58, label %land.lhs.true.42

land.lhs.true.42:                                 ; preds = %land.lhs.true.37
  %46 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call43 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %46)
  %call44 = call %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage* %call43)
  %call45 = call i32 @gimp_channel_is_empty(%struct._GimpChannel* %call44)
  %tobool46 = icmp ne i32 %call45, 0
  br i1 %tobool46, label %if.else.58, label %if.then.47

if.then.47:                                       ; preds = %land.lhs.true.42
  %47 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %48 = bitcast %struct._GimpItem* %47 to %struct._GTypeInstance*
  %call49 = call i64 @gimp_drawable_get_type() #5
  %call50 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %48, i64 %call49)
  %49 = bitcast %struct._GTypeInstance* %call50 to %struct._GimpDrawable*
  %50 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %51 = load %struct._GimpPDBContext*, %struct._GimpPDBContext** %pdb_context, align 8
  %transform_direction = getelementptr inbounds %struct._GimpPDBContext, %struct._GimpPDBContext* %51, i32 0, i32 10
  %52 = load i32, i32* %transform_direction, align 4
  %53 = load %struct._GimpPDBContext*, %struct._GimpPDBContext** %pdb_context, align 8
  %interpolation = getelementptr inbounds %struct._GimpPDBContext, %struct._GimpPDBContext* %53, i32 0, i32 9
  %54 = load i32, i32* %interpolation, align 4
  %55 = load %struct._GimpPDBContext*, %struct._GimpPDBContext** %pdb_context, align 8
  %transform_recursion = getelementptr inbounds %struct._GimpPDBContext, %struct._GimpPDBContext* %55, i32 0, i32 12
  %56 = load i32, i32* %transform_recursion, align 4
  %57 = load %struct._GimpPDBContext*, %struct._GimpPDBContext** %pdb_context, align 8
  %transform_resize = getelementptr inbounds %struct._GimpPDBContext, %struct._GimpPDBContext* %57, i32 0, i32 11
  %58 = load i32, i32* %transform_resize, align 4
  %59 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %call51 = call %struct._GimpDrawable* @gimp_drawable_transform_affine(%struct._GimpDrawable* %49, %struct._GimpContext* %50, %struct._GimpMatrix3* %matrix, i32 %52, i32 %54, i32 %56, i32 %58, %struct._GimpProgress* %59)
  store %struct._GimpDrawable* %call51, %struct._GimpDrawable** %drawable, align 8
  %60 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %tobool52 = icmp ne %struct._GimpDrawable* %60, null
  br i1 %tobool52, label %if.then.53, label %if.else.56

if.then.53:                                       ; preds = %if.then.47
  %61 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %62 = bitcast %struct._GimpDrawable* %61 to %struct._GTypeInstance*
  %call54 = call i64 @gimp_item_get_type() #5
  %call55 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %62, i64 %call54)
  %63 = bitcast %struct._GTypeInstance* %call55 to %struct._GimpItem*
  store %struct._GimpItem* %63, %struct._GimpItem** %item, align 8
  br label %if.end.57

if.else.56:                                       ; preds = %if.then.47
  store i32 0, i32* %success, align 4
  br label %if.end.57

if.end.57:                                        ; preds = %if.else.56, %if.then.53
  br label %if.end.63

if.else.58:                                       ; preds = %land.lhs.true.42, %land.lhs.true.37, %if.end.35
  %64 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %65 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %66 = load %struct._GimpPDBContext*, %struct._GimpPDBContext** %pdb_context, align 8
  %transform_direction59 = getelementptr inbounds %struct._GimpPDBContext, %struct._GimpPDBContext* %66, i32 0, i32 10
  %67 = load i32, i32* %transform_direction59, align 4
  %68 = load %struct._GimpPDBContext*, %struct._GimpPDBContext** %pdb_context, align 8
  %interpolation60 = getelementptr inbounds %struct._GimpPDBContext, %struct._GimpPDBContext* %68, i32 0, i32 9
  %69 = load i32, i32* %interpolation60, align 4
  %70 = load %struct._GimpPDBContext*, %struct._GimpPDBContext** %pdb_context, align 8
  %transform_recursion61 = getelementptr inbounds %struct._GimpPDBContext, %struct._GimpPDBContext* %70, i32 0, i32 12
  %71 = load i32, i32* %transform_recursion61, align 4
  %72 = load %struct._GimpPDBContext*, %struct._GimpPDBContext** %pdb_context, align 8
  %transform_resize62 = getelementptr inbounds %struct._GimpPDBContext, %struct._GimpPDBContext* %72, i32 0, i32 11
  %73 = load i32, i32* %transform_resize62, align 4
  %74 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  call void @gimp_item_transform(%struct._GimpItem* %64, %struct._GimpContext* %65, %struct._GimpMatrix3* %matrix, i32 %67, i32 %69, i32 %71, i32 %73, %struct._GimpProgress* %74)
  br label %if.end.63

if.end.63:                                        ; preds = %if.else.58, %if.end.57
  %75 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %tobool64 = icmp ne %struct._GimpProgress* %75, null
  br i1 %tobool64, label %if.then.65, label %if.end.66

if.then.65:                                       ; preds = %if.end.63
  %76 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  call void @gimp_progress_end(%struct._GimpProgress* %76)
  br label %if.end.66

if.end.66:                                        ; preds = %if.then.65, %if.end.63
  br label %if.end.67

if.end.67:                                        ; preds = %if.end.66, %land.lhs.true, %if.then
  br label %if.end.68

if.end.68:                                        ; preds = %if.end.67, %entry
  %77 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %78 = load i32, i32* %success, align 4
  %79 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool69 = icmp ne %struct._GError** %79, null
  br i1 %tobool69, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.68
  %80 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %81 = load %struct._GError*, %struct._GError** %80, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.68
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %81, %cond.true ], [ null, %cond.false ]
  %call70 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %77, i32 %78, %struct._GError* %cond)
  store %struct._GValueArray* %call70, %struct._GValueArray** %return_vals, align 8
  %82 = load i32, i32* %success, align 4
  %tobool71 = icmp ne i32 %82, 0
  br i1 %tobool71, label %if.then.72, label %if.end.75

if.then.72:                                       ; preds = %cond.end
  %83 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values73 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %83, i32 0, i32 1
  %84 = load %struct._GValue*, %struct._GValue** %values73, align 8
  %arrayidx74 = getelementptr inbounds %struct._GValue, %struct._GValue* %84, i64 1
  %85 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  call void @gimp_value_set_item(%struct._GValue* %arrayidx74, %struct._GimpItem* %85)
  br label %if.end.75

if.end.75:                                        ; preds = %if.then.72, %cond.end
  %86 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %86
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @item_transform_perspective_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %return_vals = alloca %struct._GValueArray*, align 8
  %item = alloca %struct._GimpItem*, align 8
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
  %pdb_context = alloca %struct._GimpPDBContext*, align 8
  %matrix = alloca %struct._GimpMatrix3, align 8
  %off_x = alloca i32, align 4
  %off_y = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %drawable = alloca %struct._GimpDrawable*, align 8
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
  %call = call %struct._GimpItem* @gimp_value_get_item(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpItem* %call, %struct._GimpItem** %item, align 8
  %3 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %3, i32 0, i32 1
  %4 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %4, i64 1
  %call3 = call double @g_value_get_double(%struct._GValue* %arrayidx2)
  store double %call3, double* %x0, align 8
  %5 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values4 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %5, i32 0, i32 1
  %6 = load %struct._GValue*, %struct._GValue** %values4, align 8
  %arrayidx5 = getelementptr inbounds %struct._GValue, %struct._GValue* %6, i64 2
  %call6 = call double @g_value_get_double(%struct._GValue* %arrayidx5)
  store double %call6, double* %y0, align 8
  %7 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values7 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %7, i32 0, i32 1
  %8 = load %struct._GValue*, %struct._GValue** %values7, align 8
  %arrayidx8 = getelementptr inbounds %struct._GValue, %struct._GValue* %8, i64 3
  %call9 = call double @g_value_get_double(%struct._GValue* %arrayidx8)
  store double %call9, double* %x1, align 8
  %9 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values10 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %9, i32 0, i32 1
  %10 = load %struct._GValue*, %struct._GValue** %values10, align 8
  %arrayidx11 = getelementptr inbounds %struct._GValue, %struct._GValue* %10, i64 4
  %call12 = call double @g_value_get_double(%struct._GValue* %arrayidx11)
  store double %call12, double* %y1, align 8
  %11 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values13 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %11, i32 0, i32 1
  %12 = load %struct._GValue*, %struct._GValue** %values13, align 8
  %arrayidx14 = getelementptr inbounds %struct._GValue, %struct._GValue* %12, i64 5
  %call15 = call double @g_value_get_double(%struct._GValue* %arrayidx14)
  store double %call15, double* %x2, align 8
  %13 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values16 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %13, i32 0, i32 1
  %14 = load %struct._GValue*, %struct._GValue** %values16, align 8
  %arrayidx17 = getelementptr inbounds %struct._GValue, %struct._GValue* %14, i64 6
  %call18 = call double @g_value_get_double(%struct._GValue* %arrayidx17)
  store double %call18, double* %y2, align 8
  %15 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values19 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %15, i32 0, i32 1
  %16 = load %struct._GValue*, %struct._GValue** %values19, align 8
  %arrayidx20 = getelementptr inbounds %struct._GValue, %struct._GValue* %16, i64 7
  %call21 = call double @g_value_get_double(%struct._GValue* %arrayidx20)
  store double %call21, double* %x3, align 8
  %17 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values22 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %17, i32 0, i32 1
  %18 = load %struct._GValue*, %struct._GValue** %values22, align 8
  %arrayidx23 = getelementptr inbounds %struct._GValue, %struct._GValue* %18, i64 8
  %call24 = call double @g_value_get_double(%struct._GValue* %arrayidx23)
  store double %call24, double* %y3, align 8
  %19 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %19, 0
  br i1 %tobool, label %if.then, label %if.end.80

if.then:                                          ; preds = %entry
  %20 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %21 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call25 = call i32 @gimp_pdb_item_is_attached(%struct._GimpItem* %20, %struct._GimpImage* null, i32 1, %struct._GError** %21)
  store i32 %call25, i32* %success, align 4
  %22 = load i32, i32* %success, align 4
  %tobool26 = icmp ne i32 %22, 0
  br i1 %tobool26, label %land.lhs.true, label %if.end.79

land.lhs.true:                                    ; preds = %if.then
  %23 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call27 = call i32 @gimp_item_mask_intersect(%struct._GimpItem* %23, i32* %x, i32* %y, i32* %width, i32* %height)
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %if.then.29, label %if.end.79

if.then.29:                                       ; preds = %land.lhs.true
  %24 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %25 = bitcast %struct._GimpContext* %24 to %struct._GTypeInstance*
  %call30 = call i64 @gimp_pdb_context_get_type() #5
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call30)
  %26 = bitcast %struct._GTypeInstance* %call31 to %struct._GimpPDBContext*
  store %struct._GimpPDBContext* %26, %struct._GimpPDBContext** %pdb_context, align 8
  %27 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  call void @gimp_item_get_offset(%struct._GimpItem* %27, i32* %off_x, i32* %off_y)
  %28 = load i32, i32* %off_x, align 4
  %29 = load i32, i32* %x, align 4
  %add = add nsw i32 %29, %28
  store i32 %add, i32* %x, align 4
  %30 = load i32, i32* %off_y, align 4
  %31 = load i32, i32* %y, align 4
  %add32 = add nsw i32 %31, %30
  store i32 %add32, i32* %y, align 4
  call void @gimp_matrix3_identity(%struct._GimpMatrix3* %matrix)
  %32 = load i32, i32* %x, align 4
  %33 = load i32, i32* %y, align 4
  %34 = load i32, i32* %width, align 4
  %35 = load i32, i32* %height, align 4
  %36 = load double, double* %x0, align 8
  %37 = load double, double* %y0, align 8
  %38 = load double, double* %x1, align 8
  %39 = load double, double* %y1, align 8
  %40 = load double, double* %x2, align 8
  %41 = load double, double* %y2, align 8
  %42 = load double, double* %x3, align 8
  %43 = load double, double* %y3, align 8
  call void @gimp_transform_matrix_perspective(%struct._GimpMatrix3* %matrix, i32 %32, i32 %33, i32 %34, i32 %35, double %36, double %37, double %38, double %39, double %40, double %41, double %42, double %43)
  %44 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %tobool33 = icmp ne %struct._GimpProgress* %44, null
  br i1 %tobool33, label %if.then.34, label %if.end

if.then.34:                                       ; preds = %if.then.29
  %45 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %call35 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.132, i32 0, i32 0)) #7
  %call36 = call %struct._GimpProgress* @gimp_progress_start(%struct._GimpProgress* %45, i8* %call35, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then.34, %if.then.29
  %46 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %47 = bitcast %struct._GimpItem* %46 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %47, %struct._GTypeInstance** %__inst, align 8
  %call37 = call i64 @gimp_drawable_get_type() #5
  store i64 %call37, i64* %__t, align 8
  %48 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool38 = icmp ne %struct._GTypeInstance* %48, null
  br i1 %tobool38, label %if.else, label %if.then.39

if.then.39:                                       ; preds = %if.end
  store i32 0, i32* %__r, align 4
  br label %if.end.47

if.else:                                          ; preds = %if.end
  %49 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %49, i32 0, i32 0
  %50 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool40 = icmp ne %struct._GTypeClass* %50, null
  br i1 %tobool40, label %land.lhs.true.41, label %if.else.44

land.lhs.true.41:                                 ; preds = %if.else
  %51 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class42 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %51, i32 0, i32 0
  %52 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class42, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %52, i32 0, i32 0
  %53 = load i64, i64* %g_type, align 8
  %54 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %53, %54
  br i1 %cmp, label %if.then.43, label %if.else.44

if.then.43:                                       ; preds = %land.lhs.true.41
  store i32 1, i32* %__r, align 4
  br label %if.end.46

if.else.44:                                       ; preds = %land.lhs.true.41, %if.else
  %55 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %56 = load i64, i64* %__t, align 8
  %call45 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %55, i64 %56) #6
  store i32 %call45, i32* %__r, align 4
  br label %if.end.46

if.end.46:                                        ; preds = %if.else.44, %if.then.43
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46, %if.then.39
  %57 = load i32, i32* %__r, align 4
  store i32 %57, i32* %tmp
  %58 = load i32, i32* %tmp
  %tobool48 = icmp ne i32 %58, 0
  br i1 %tobool48, label %land.lhs.true.49, label %if.else.70

land.lhs.true.49:                                 ; preds = %if.end.47
  %59 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %60 = bitcast %struct._GimpItem* %59 to %struct._GTypeInstance*
  %call50 = call i64 @gimp_viewable_get_type() #5
  %call51 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %60, i64 %call50)
  %61 = bitcast %struct._GTypeInstance* %call51 to %struct._GimpViewable*
  %call52 = call %struct._GimpContainer* @gimp_viewable_get_children(%struct._GimpViewable* %61)
  %tobool53 = icmp ne %struct._GimpContainer* %call52, null
  br i1 %tobool53, label %if.else.70, label %land.lhs.true.54

land.lhs.true.54:                                 ; preds = %land.lhs.true.49
  %62 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call55 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %62)
  %call56 = call %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage* %call55)
  %call57 = call i32 @gimp_channel_is_empty(%struct._GimpChannel* %call56)
  %tobool58 = icmp ne i32 %call57, 0
  br i1 %tobool58, label %if.else.70, label %if.then.59

if.then.59:                                       ; preds = %land.lhs.true.54
  %63 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %64 = bitcast %struct._GimpItem* %63 to %struct._GTypeInstance*
  %call61 = call i64 @gimp_drawable_get_type() #5
  %call62 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %64, i64 %call61)
  %65 = bitcast %struct._GTypeInstance* %call62 to %struct._GimpDrawable*
  %66 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %67 = load %struct._GimpPDBContext*, %struct._GimpPDBContext** %pdb_context, align 8
  %transform_direction = getelementptr inbounds %struct._GimpPDBContext, %struct._GimpPDBContext* %67, i32 0, i32 10
  %68 = load i32, i32* %transform_direction, align 4
  %69 = load %struct._GimpPDBContext*, %struct._GimpPDBContext** %pdb_context, align 8
  %interpolation = getelementptr inbounds %struct._GimpPDBContext, %struct._GimpPDBContext* %69, i32 0, i32 9
  %70 = load i32, i32* %interpolation, align 4
  %71 = load %struct._GimpPDBContext*, %struct._GimpPDBContext** %pdb_context, align 8
  %transform_recursion = getelementptr inbounds %struct._GimpPDBContext, %struct._GimpPDBContext* %71, i32 0, i32 12
  %72 = load i32, i32* %transform_recursion, align 4
  %73 = load %struct._GimpPDBContext*, %struct._GimpPDBContext** %pdb_context, align 8
  %transform_resize = getelementptr inbounds %struct._GimpPDBContext, %struct._GimpPDBContext* %73, i32 0, i32 11
  %74 = load i32, i32* %transform_resize, align 4
  %75 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %call63 = call %struct._GimpDrawable* @gimp_drawable_transform_affine(%struct._GimpDrawable* %65, %struct._GimpContext* %66, %struct._GimpMatrix3* %matrix, i32 %68, i32 %70, i32 %72, i32 %74, %struct._GimpProgress* %75)
  store %struct._GimpDrawable* %call63, %struct._GimpDrawable** %drawable, align 8
  %76 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %tobool64 = icmp ne %struct._GimpDrawable* %76, null
  br i1 %tobool64, label %if.then.65, label %if.else.68

if.then.65:                                       ; preds = %if.then.59
  %77 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %78 = bitcast %struct._GimpDrawable* %77 to %struct._GTypeInstance*
  %call66 = call i64 @gimp_item_get_type() #5
  %call67 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %78, i64 %call66)
  %79 = bitcast %struct._GTypeInstance* %call67 to %struct._GimpItem*
  store %struct._GimpItem* %79, %struct._GimpItem** %item, align 8
  br label %if.end.69

if.else.68:                                       ; preds = %if.then.59
  store i32 0, i32* %success, align 4
  br label %if.end.69

if.end.69:                                        ; preds = %if.else.68, %if.then.65
  br label %if.end.75

if.else.70:                                       ; preds = %land.lhs.true.54, %land.lhs.true.49, %if.end.47
  %80 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %81 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %82 = load %struct._GimpPDBContext*, %struct._GimpPDBContext** %pdb_context, align 8
  %transform_direction71 = getelementptr inbounds %struct._GimpPDBContext, %struct._GimpPDBContext* %82, i32 0, i32 10
  %83 = load i32, i32* %transform_direction71, align 4
  %84 = load %struct._GimpPDBContext*, %struct._GimpPDBContext** %pdb_context, align 8
  %interpolation72 = getelementptr inbounds %struct._GimpPDBContext, %struct._GimpPDBContext* %84, i32 0, i32 9
  %85 = load i32, i32* %interpolation72, align 4
  %86 = load %struct._GimpPDBContext*, %struct._GimpPDBContext** %pdb_context, align 8
  %transform_recursion73 = getelementptr inbounds %struct._GimpPDBContext, %struct._GimpPDBContext* %86, i32 0, i32 12
  %87 = load i32, i32* %transform_recursion73, align 4
  %88 = load %struct._GimpPDBContext*, %struct._GimpPDBContext** %pdb_context, align 8
  %transform_resize74 = getelementptr inbounds %struct._GimpPDBContext, %struct._GimpPDBContext* %88, i32 0, i32 11
  %89 = load i32, i32* %transform_resize74, align 4
  %90 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  call void @gimp_item_transform(%struct._GimpItem* %80, %struct._GimpContext* %81, %struct._GimpMatrix3* %matrix, i32 %83, i32 %85, i32 %87, i32 %89, %struct._GimpProgress* %90)
  br label %if.end.75

if.end.75:                                        ; preds = %if.else.70, %if.end.69
  %91 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %tobool76 = icmp ne %struct._GimpProgress* %91, null
  br i1 %tobool76, label %if.then.77, label %if.end.78

if.then.77:                                       ; preds = %if.end.75
  %92 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  call void @gimp_progress_end(%struct._GimpProgress* %92)
  br label %if.end.78

if.end.78:                                        ; preds = %if.then.77, %if.end.75
  br label %if.end.79

if.end.79:                                        ; preds = %if.end.78, %land.lhs.true, %if.then
  br label %if.end.80

if.end.80:                                        ; preds = %if.end.79, %entry
  %93 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %94 = load i32, i32* %success, align 4
  %95 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool81 = icmp ne %struct._GError** %95, null
  br i1 %tobool81, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.80
  %96 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %97 = load %struct._GError*, %struct._GError** %96, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.80
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %97, %cond.true ], [ null, %cond.false ]
  %call82 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %93, i32 %94, %struct._GError* %cond)
  store %struct._GValueArray* %call82, %struct._GValueArray** %return_vals, align 8
  %98 = load i32, i32* %success, align 4
  %tobool83 = icmp ne i32 %98, 0
  br i1 %tobool83, label %if.then.84, label %if.end.87

if.then.84:                                       ; preds = %cond.end
  %99 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values85 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %99, i32 0, i32 1
  %100 = load %struct._GValue*, %struct._GValue** %values85, align 8
  %arrayidx86 = getelementptr inbounds %struct._GValue, %struct._GValue* %100, i64 1
  %101 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  call void @gimp_value_set_item(%struct._GValue* %arrayidx86, %struct._GimpItem* %101)
  br label %if.end.87

if.end.87:                                        ; preds = %if.then.84, %cond.end
  %102 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %102
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @item_transform_rotate_simple_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %return_vals = alloca %struct._GValueArray*, align 8
  %item = alloca %struct._GimpItem*, align 8
  %rotate_type = alloca i32, align 4
  %auto_center = alloca i32, align 4
  %center_x = alloca double, align 8
  %center_y = alloca double, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %pdb_context = alloca %struct._GimpPDBContext*, align 8
  %off_x = alloca i32, align 4
  %off_y = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %drawable = alloca %struct._GimpDrawable*, align 8
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
  %call = call %struct._GimpItem* @gimp_value_get_item(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpItem* %call, %struct._GimpItem** %item, align 8
  %3 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %3, i32 0, i32 1
  %4 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %4, i64 1
  %call3 = call i32 @g_value_get_enum(%struct._GValue* %arrayidx2)
  store i32 %call3, i32* %rotate_type, align 4
  %5 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values4 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %5, i32 0, i32 1
  %6 = load %struct._GValue*, %struct._GValue** %values4, align 8
  %arrayidx5 = getelementptr inbounds %struct._GValue, %struct._GValue* %6, i64 2
  %call6 = call i32 @g_value_get_boolean(%struct._GValue* %arrayidx5)
  store i32 %call6, i32* %auto_center, align 4
  %7 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values7 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %7, i32 0, i32 1
  %8 = load %struct._GValue*, %struct._GValue** %values7, align 8
  %arrayidx8 = getelementptr inbounds %struct._GValue, %struct._GValue* %8, i64 3
  %call9 = call double @g_value_get_double(%struct._GValue* %arrayidx8)
  store double %call9, double* %center_x, align 8
  %9 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values10 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %9, i32 0, i32 1
  %10 = load %struct._GValue*, %struct._GValue** %values10, align 8
  %arrayidx11 = getelementptr inbounds %struct._GValue, %struct._GValue* %10, i64 4
  %call12 = call double @g_value_get_double(%struct._GValue* %arrayidx11)
  store double %call12, double* %center_y, align 8
  %11 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %if.then, label %if.end.57

if.then:                                          ; preds = %entry
  %12 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %13 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call13 = call i32 @gimp_pdb_item_is_attached(%struct._GimpItem* %12, %struct._GimpImage* null, i32 0, %struct._GError** %13)
  store i32 %call13, i32* %success, align 4
  %14 = load i32, i32* %success, align 4
  %tobool14 = icmp ne i32 %14, 0
  br i1 %tobool14, label %land.lhs.true, label %if.end.56

land.lhs.true:                                    ; preds = %if.then
  %15 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call15 = call i32 @gimp_item_mask_intersect(%struct._GimpItem* %15, i32* %x, i32* %y, i32* %width, i32* %height)
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.then.17, label %if.end.56

if.then.17:                                       ; preds = %land.lhs.true
  %16 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %17 = bitcast %struct._GimpContext* %16 to %struct._GTypeInstance*
  %call18 = call i64 @gimp_pdb_context_get_type() #5
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call18)
  %18 = bitcast %struct._GTypeInstance* %call19 to %struct._GimpPDBContext*
  store %struct._GimpPDBContext* %18, %struct._GimpPDBContext** %pdb_context, align 8
  %19 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  call void @gimp_item_get_offset(%struct._GimpItem* %19, i32* %off_x, i32* %off_y)
  %20 = load i32, i32* %off_x, align 4
  %21 = load i32, i32* %x, align 4
  %add = add nsw i32 %21, %20
  store i32 %add, i32* %x, align 4
  %22 = load i32, i32* %off_y, align 4
  %23 = load i32, i32* %y, align 4
  %add20 = add nsw i32 %23, %22
  store i32 %add20, i32* %y, align 4
  %24 = load i32, i32* %x, align 4
  %25 = load i32, i32* %y, align 4
  %26 = load i32, i32* %width, align 4
  %27 = load i32, i32* %height, align 4
  %28 = load i32, i32* %auto_center, align 4
  call void @gimp_transform_get_rotate_center(i32 %24, i32 %25, i32 %26, i32 %27, i32 %28, double* %center_x, double* %center_y)
  %29 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %30 = bitcast %struct._GimpItem* %29 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %30, %struct._GTypeInstance** %__inst, align 8
  %call21 = call i64 @gimp_drawable_get_type() #5
  store i64 %call21, i64* %__t, align 8
  %31 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool22 = icmp ne %struct._GTypeInstance* %31, null
  br i1 %tobool22, label %if.else, label %if.then.23

if.then.23:                                       ; preds = %if.then.17
  store i32 0, i32* %__r, align 4
  br label %if.end.30

if.else:                                          ; preds = %if.then.17
  %32 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %32, i32 0, i32 0
  %33 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool24 = icmp ne %struct._GTypeClass* %33, null
  br i1 %tobool24, label %land.lhs.true.25, label %if.else.28

land.lhs.true.25:                                 ; preds = %if.else
  %34 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class26 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %34, i32 0, i32 0
  %35 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class26, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %35, i32 0, i32 0
  %36 = load i64, i64* %g_type, align 8
  %37 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %36, %37
  br i1 %cmp, label %if.then.27, label %if.else.28

if.then.27:                                       ; preds = %land.lhs.true.25
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.28:                                       ; preds = %land.lhs.true.25, %if.else
  %38 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %39 = load i64, i64* %__t, align 8
  %call29 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %38, i64 %39) #6
  store i32 %call29, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.28, %if.then.27
  br label %if.end.30

if.end.30:                                        ; preds = %if.end, %if.then.23
  %40 = load i32, i32* %__r, align 4
  store i32 %40, i32* %tmp
  %41 = load i32, i32* %tmp
  %tobool31 = icmp ne i32 %41, 0
  br i1 %tobool31, label %land.lhs.true.32, label %if.else.53

land.lhs.true.32:                                 ; preds = %if.end.30
  %42 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %43 = bitcast %struct._GimpItem* %42 to %struct._GTypeInstance*
  %call33 = call i64 @gimp_viewable_get_type() #5
  %call34 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %43, i64 %call33)
  %44 = bitcast %struct._GTypeInstance* %call34 to %struct._GimpViewable*
  %call35 = call %struct._GimpContainer* @gimp_viewable_get_children(%struct._GimpViewable* %44)
  %tobool36 = icmp ne %struct._GimpContainer* %call35, null
  br i1 %tobool36, label %if.else.53, label %land.lhs.true.37

land.lhs.true.37:                                 ; preds = %land.lhs.true.32
  %45 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call38 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %45)
  %call39 = call %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage* %call38)
  %call40 = call i32 @gimp_channel_is_empty(%struct._GimpChannel* %call39)
  %tobool41 = icmp ne i32 %call40, 0
  br i1 %tobool41, label %if.else.53, label %if.then.42

if.then.42:                                       ; preds = %land.lhs.true.37
  %46 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %47 = bitcast %struct._GimpItem* %46 to %struct._GTypeInstance*
  %call44 = call i64 @gimp_drawable_get_type() #5
  %call45 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %47, i64 %call44)
  %48 = bitcast %struct._GTypeInstance* %call45 to %struct._GimpDrawable*
  %49 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %50 = load i32, i32* %rotate_type, align 4
  %51 = load double, double* %center_x, align 8
  %52 = load double, double* %center_y, align 8
  %53 = load %struct._GimpPDBContext*, %struct._GimpPDBContext** %pdb_context, align 8
  %transform_resize = getelementptr inbounds %struct._GimpPDBContext, %struct._GimpPDBContext* %53, i32 0, i32 11
  %54 = load i32, i32* %transform_resize, align 4
  %call46 = call %struct._GimpDrawable* @gimp_drawable_transform_rotate(%struct._GimpDrawable* %48, %struct._GimpContext* %49, i32 %50, double %51, double %52, i32 %54)
  store %struct._GimpDrawable* %call46, %struct._GimpDrawable** %drawable, align 8
  %55 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %tobool47 = icmp ne %struct._GimpDrawable* %55, null
  br i1 %tobool47, label %if.then.48, label %if.else.51

if.then.48:                                       ; preds = %if.then.42
  %56 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %57 = bitcast %struct._GimpDrawable* %56 to %struct._GTypeInstance*
  %call49 = call i64 @gimp_item_get_type() #5
  %call50 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %57, i64 %call49)
  %58 = bitcast %struct._GTypeInstance* %call50 to %struct._GimpItem*
  store %struct._GimpItem* %58, %struct._GimpItem** %item, align 8
  br label %if.end.52

if.else.51:                                       ; preds = %if.then.42
  store i32 0, i32* %success, align 4
  br label %if.end.52

if.end.52:                                        ; preds = %if.else.51, %if.then.48
  br label %if.end.55

if.else.53:                                       ; preds = %land.lhs.true.37, %land.lhs.true.32, %if.end.30
  %59 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %60 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %61 = load i32, i32* %rotate_type, align 4
  %62 = load double, double* %center_x, align 8
  %63 = load double, double* %center_y, align 8
  %64 = load %struct._GimpPDBContext*, %struct._GimpPDBContext** %pdb_context, align 8
  %transform_resize54 = getelementptr inbounds %struct._GimpPDBContext, %struct._GimpPDBContext* %64, i32 0, i32 11
  %65 = load i32, i32* %transform_resize54, align 4
  call void @gimp_item_rotate(%struct._GimpItem* %59, %struct._GimpContext* %60, i32 %61, double %62, double %63, i32 %65)
  br label %if.end.55

if.end.55:                                        ; preds = %if.else.53, %if.end.52
  br label %if.end.56

if.end.56:                                        ; preds = %if.end.55, %land.lhs.true, %if.then
  br label %if.end.57

if.end.57:                                        ; preds = %if.end.56, %entry
  %66 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %67 = load i32, i32* %success, align 4
  %68 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool58 = icmp ne %struct._GError** %68, null
  br i1 %tobool58, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.57
  %69 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %70 = load %struct._GError*, %struct._GError** %69, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.57
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %70, %cond.true ], [ null, %cond.false ]
  %call59 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %66, i32 %67, %struct._GError* %cond)
  store %struct._GValueArray* %call59, %struct._GValueArray** %return_vals, align 8
  %71 = load i32, i32* %success, align 4
  %tobool60 = icmp ne i32 %71, 0
  br i1 %tobool60, label %if.then.61, label %if.end.64

if.then.61:                                       ; preds = %cond.end
  %72 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values62 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %72, i32 0, i32 1
  %73 = load %struct._GValue*, %struct._GValue** %values62, align 8
  %arrayidx63 = getelementptr inbounds %struct._GValue, %struct._GValue* %73, i64 1
  %74 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  call void @gimp_value_set_item(%struct._GValue* %arrayidx63, %struct._GimpItem* %74)
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.61, %cond.end
  %75 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %75
}

declare %struct._GParamSpec* @g_param_spec_enum(i8*, i8*, i8*, i64, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_rotation_type_get_type() #2

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @item_transform_rotate_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %return_vals = alloca %struct._GValueArray*, align 8
  %item = alloca %struct._GimpItem*, align 8
  %angle = alloca double, align 8
  %auto_center = alloca i32, align 4
  %center_x = alloca double, align 8
  %center_y = alloca double, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %pdb_context = alloca %struct._GimpPDBContext*, align 8
  %matrix = alloca %struct._GimpMatrix3, align 8
  %off_x = alloca i32, align 4
  %off_y = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %drawable = alloca %struct._GimpDrawable*, align 8
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
  %call = call %struct._GimpItem* @gimp_value_get_item(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpItem* %call, %struct._GimpItem** %item, align 8
  %3 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %3, i32 0, i32 1
  %4 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %4, i64 1
  %call3 = call double @g_value_get_double(%struct._GValue* %arrayidx2)
  store double %call3, double* %angle, align 8
  %5 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values4 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %5, i32 0, i32 1
  %6 = load %struct._GValue*, %struct._GValue** %values4, align 8
  %arrayidx5 = getelementptr inbounds %struct._GValue, %struct._GValue* %6, i64 2
  %call6 = call i32 @g_value_get_boolean(%struct._GValue* %arrayidx5)
  store i32 %call6, i32* %auto_center, align 4
  %7 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values7 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %7, i32 0, i32 1
  %8 = load %struct._GValue*, %struct._GValue** %values7, align 8
  %arrayidx8 = getelementptr inbounds %struct._GValue, %struct._GValue* %8, i64 3
  %call9 = call double @g_value_get_double(%struct._GValue* %arrayidx8)
  store double %call9, double* %center_x, align 8
  %9 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values10 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %9, i32 0, i32 1
  %10 = load %struct._GValue*, %struct._GValue** %values10, align 8
  %arrayidx11 = getelementptr inbounds %struct._GValue, %struct._GValue* %10, i64 4
  %call12 = call double @g_value_get_double(%struct._GValue* %arrayidx11)
  store double %call12, double* %center_y, align 8
  %11 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %if.then, label %if.end.72

if.then:                                          ; preds = %entry
  %12 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %13 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call13 = call i32 @gimp_pdb_item_is_attached(%struct._GimpItem* %12, %struct._GimpImage* null, i32 1, %struct._GError** %13)
  store i32 %call13, i32* %success, align 4
  %14 = load i32, i32* %success, align 4
  %tobool14 = icmp ne i32 %14, 0
  br i1 %tobool14, label %land.lhs.true, label %if.end.71

land.lhs.true:                                    ; preds = %if.then
  %15 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call15 = call i32 @gimp_item_mask_intersect(%struct._GimpItem* %15, i32* %x, i32* %y, i32* %width, i32* %height)
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.then.17, label %if.end.71

if.then.17:                                       ; preds = %land.lhs.true
  %16 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %17 = bitcast %struct._GimpContext* %16 to %struct._GTypeInstance*
  %call18 = call i64 @gimp_pdb_context_get_type() #5
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call18)
  %18 = bitcast %struct._GTypeInstance* %call19 to %struct._GimpPDBContext*
  store %struct._GimpPDBContext* %18, %struct._GimpPDBContext** %pdb_context, align 8
  %19 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  call void @gimp_item_get_offset(%struct._GimpItem* %19, i32* %off_x, i32* %off_y)
  %20 = load i32, i32* %off_x, align 4
  %21 = load i32, i32* %x, align 4
  %add = add nsw i32 %21, %20
  store i32 %add, i32* %x, align 4
  %22 = load i32, i32* %off_y, align 4
  %23 = load i32, i32* %y, align 4
  %add20 = add nsw i32 %23, %22
  store i32 %add20, i32* %y, align 4
  call void @gimp_matrix3_identity(%struct._GimpMatrix3* %matrix)
  %24 = load i32, i32* %auto_center, align 4
  %tobool21 = icmp ne i32 %24, 0
  br i1 %tobool21, label %if.then.22, label %if.else

if.then.22:                                       ; preds = %if.then.17
  %25 = load i32, i32* %x, align 4
  %26 = load i32, i32* %y, align 4
  %27 = load i32, i32* %width, align 4
  %28 = load i32, i32* %height, align 4
  %29 = load double, double* %angle, align 8
  call void @gimp_transform_matrix_rotate_rect(%struct._GimpMatrix3* %matrix, i32 %25, i32 %26, i32 %27, i32 %28, double %29)
  br label %if.end

if.else:                                          ; preds = %if.then.17
  %30 = load double, double* %center_x, align 8
  %31 = load double, double* %center_y, align 8
  %32 = load double, double* %angle, align 8
  call void @gimp_transform_matrix_rotate_center(%struct._GimpMatrix3* %matrix, double %30, double %31, double %32)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.22
  %33 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %tobool23 = icmp ne %struct._GimpProgress* %33, null
  br i1 %tobool23, label %if.then.24, label %if.end.27

if.then.24:                                       ; preds = %if.end
  %34 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %call25 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.133, i32 0, i32 0)) #7
  %call26 = call %struct._GimpProgress* @gimp_progress_start(%struct._GimpProgress* %34, i8* %call25, i32 0)
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.24, %if.end
  %35 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %36 = bitcast %struct._GimpItem* %35 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %36, %struct._GTypeInstance** %__inst, align 8
  %call28 = call i64 @gimp_drawable_get_type() #5
  store i64 %call28, i64* %__t, align 8
  %37 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool29 = icmp ne %struct._GTypeInstance* %37, null
  br i1 %tobool29, label %if.else.31, label %if.then.30

if.then.30:                                       ; preds = %if.end.27
  store i32 0, i32* %__r, align 4
  br label %if.end.39

if.else.31:                                       ; preds = %if.end.27
  %38 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %38, i32 0, i32 0
  %39 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool32 = icmp ne %struct._GTypeClass* %39, null
  br i1 %tobool32, label %land.lhs.true.33, label %if.else.36

land.lhs.true.33:                                 ; preds = %if.else.31
  %40 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class34 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %40, i32 0, i32 0
  %41 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class34, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %41, i32 0, i32 0
  %42 = load i64, i64* %g_type, align 8
  %43 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %42, %43
  br i1 %cmp, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %land.lhs.true.33
  store i32 1, i32* %__r, align 4
  br label %if.end.38

if.else.36:                                       ; preds = %land.lhs.true.33, %if.else.31
  %44 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %45 = load i64, i64* %__t, align 8
  %call37 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %44, i64 %45) #6
  store i32 %call37, i32* %__r, align 4
  br label %if.end.38

if.end.38:                                        ; preds = %if.else.36, %if.then.35
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %if.then.30
  %46 = load i32, i32* %__r, align 4
  store i32 %46, i32* %tmp
  %47 = load i32, i32* %tmp
  %tobool40 = icmp ne i32 %47, 0
  br i1 %tobool40, label %land.lhs.true.41, label %if.else.62

land.lhs.true.41:                                 ; preds = %if.end.39
  %48 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %49 = bitcast %struct._GimpItem* %48 to %struct._GTypeInstance*
  %call42 = call i64 @gimp_viewable_get_type() #5
  %call43 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %49, i64 %call42)
  %50 = bitcast %struct._GTypeInstance* %call43 to %struct._GimpViewable*
  %call44 = call %struct._GimpContainer* @gimp_viewable_get_children(%struct._GimpViewable* %50)
  %tobool45 = icmp ne %struct._GimpContainer* %call44, null
  br i1 %tobool45, label %if.else.62, label %land.lhs.true.46

land.lhs.true.46:                                 ; preds = %land.lhs.true.41
  %51 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call47 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %51)
  %call48 = call %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage* %call47)
  %call49 = call i32 @gimp_channel_is_empty(%struct._GimpChannel* %call48)
  %tobool50 = icmp ne i32 %call49, 0
  br i1 %tobool50, label %if.else.62, label %if.then.51

if.then.51:                                       ; preds = %land.lhs.true.46
  %52 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %53 = bitcast %struct._GimpItem* %52 to %struct._GTypeInstance*
  %call53 = call i64 @gimp_drawable_get_type() #5
  %call54 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %53, i64 %call53)
  %54 = bitcast %struct._GTypeInstance* %call54 to %struct._GimpDrawable*
  %55 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %56 = load %struct._GimpPDBContext*, %struct._GimpPDBContext** %pdb_context, align 8
  %transform_direction = getelementptr inbounds %struct._GimpPDBContext, %struct._GimpPDBContext* %56, i32 0, i32 10
  %57 = load i32, i32* %transform_direction, align 4
  %58 = load %struct._GimpPDBContext*, %struct._GimpPDBContext** %pdb_context, align 8
  %interpolation = getelementptr inbounds %struct._GimpPDBContext, %struct._GimpPDBContext* %58, i32 0, i32 9
  %59 = load i32, i32* %interpolation, align 4
  %60 = load %struct._GimpPDBContext*, %struct._GimpPDBContext** %pdb_context, align 8
  %transform_recursion = getelementptr inbounds %struct._GimpPDBContext, %struct._GimpPDBContext* %60, i32 0, i32 12
  %61 = load i32, i32* %transform_recursion, align 4
  %62 = load %struct._GimpPDBContext*, %struct._GimpPDBContext** %pdb_context, align 8
  %transform_resize = getelementptr inbounds %struct._GimpPDBContext, %struct._GimpPDBContext* %62, i32 0, i32 11
  %63 = load i32, i32* %transform_resize, align 4
  %64 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %call55 = call %struct._GimpDrawable* @gimp_drawable_transform_affine(%struct._GimpDrawable* %54, %struct._GimpContext* %55, %struct._GimpMatrix3* %matrix, i32 %57, i32 %59, i32 %61, i32 %63, %struct._GimpProgress* %64)
  store %struct._GimpDrawable* %call55, %struct._GimpDrawable** %drawable, align 8
  %65 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %tobool56 = icmp ne %struct._GimpDrawable* %65, null
  br i1 %tobool56, label %if.then.57, label %if.else.60

if.then.57:                                       ; preds = %if.then.51
  %66 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %67 = bitcast %struct._GimpDrawable* %66 to %struct._GTypeInstance*
  %call58 = call i64 @gimp_item_get_type() #5
  %call59 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %67, i64 %call58)
  %68 = bitcast %struct._GTypeInstance* %call59 to %struct._GimpItem*
  store %struct._GimpItem* %68, %struct._GimpItem** %item, align 8
  br label %if.end.61

if.else.60:                                       ; preds = %if.then.51
  store i32 0, i32* %success, align 4
  br label %if.end.61

if.end.61:                                        ; preds = %if.else.60, %if.then.57
  br label %if.end.67

if.else.62:                                       ; preds = %land.lhs.true.46, %land.lhs.true.41, %if.end.39
  %69 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %70 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %71 = load %struct._GimpPDBContext*, %struct._GimpPDBContext** %pdb_context, align 8
  %transform_direction63 = getelementptr inbounds %struct._GimpPDBContext, %struct._GimpPDBContext* %71, i32 0, i32 10
  %72 = load i32, i32* %transform_direction63, align 4
  %73 = load %struct._GimpPDBContext*, %struct._GimpPDBContext** %pdb_context, align 8
  %interpolation64 = getelementptr inbounds %struct._GimpPDBContext, %struct._GimpPDBContext* %73, i32 0, i32 9
  %74 = load i32, i32* %interpolation64, align 4
  %75 = load %struct._GimpPDBContext*, %struct._GimpPDBContext** %pdb_context, align 8
  %transform_recursion65 = getelementptr inbounds %struct._GimpPDBContext, %struct._GimpPDBContext* %75, i32 0, i32 12
  %76 = load i32, i32* %transform_recursion65, align 4
  %77 = load %struct._GimpPDBContext*, %struct._GimpPDBContext** %pdb_context, align 8
  %transform_resize66 = getelementptr inbounds %struct._GimpPDBContext, %struct._GimpPDBContext* %77, i32 0, i32 11
  %78 = load i32, i32* %transform_resize66, align 4
  %79 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  call void @gimp_item_transform(%struct._GimpItem* %69, %struct._GimpContext* %70, %struct._GimpMatrix3* %matrix, i32 %72, i32 %74, i32 %76, i32 %78, %struct._GimpProgress* %79)
  br label %if.end.67

if.end.67:                                        ; preds = %if.else.62, %if.end.61
  %80 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %tobool68 = icmp ne %struct._GimpProgress* %80, null
  br i1 %tobool68, label %if.then.69, label %if.end.70

if.then.69:                                       ; preds = %if.end.67
  %81 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  call void @gimp_progress_end(%struct._GimpProgress* %81)
  br label %if.end.70

if.end.70:                                        ; preds = %if.then.69, %if.end.67
  br label %if.end.71

if.end.71:                                        ; preds = %if.end.70, %land.lhs.true, %if.then
  br label %if.end.72

if.end.72:                                        ; preds = %if.end.71, %entry
  %82 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %83 = load i32, i32* %success, align 4
  %84 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool73 = icmp ne %struct._GError** %84, null
  br i1 %tobool73, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.72
  %85 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %86 = load %struct._GError*, %struct._GError** %85, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.72
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %86, %cond.true ], [ null, %cond.false ]
  %call74 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %82, i32 %83, %struct._GError* %cond)
  store %struct._GValueArray* %call74, %struct._GValueArray** %return_vals, align 8
  %87 = load i32, i32* %success, align 4
  %tobool75 = icmp ne i32 %87, 0
  br i1 %tobool75, label %if.then.76, label %if.end.79

if.then.76:                                       ; preds = %cond.end
  %88 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values77 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %88, i32 0, i32 1
  %89 = load %struct._GValue*, %struct._GValue** %values77, align 8
  %arrayidx78 = getelementptr inbounds %struct._GValue, %struct._GValue* %89, i64 1
  %90 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  call void @gimp_value_set_item(%struct._GValue* %arrayidx78, %struct._GimpItem* %90)
  br label %if.end.79

if.end.79:                                        ; preds = %if.then.76, %cond.end
  %91 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %91
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @item_transform_scale_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %return_vals = alloca %struct._GValueArray*, align 8
  %item = alloca %struct._GimpItem*, align 8
  %x0 = alloca double, align 8
  %y0 = alloca double, align 8
  %x1 = alloca double, align 8
  %y1 = alloca double, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %pdb_context = alloca %struct._GimpPDBContext*, align 8
  %matrix = alloca %struct._GimpMatrix3, align 8
  %off_x = alloca i32, align 4
  %off_y = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %drawable = alloca %struct._GimpDrawable*, align 8
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
  %call = call %struct._GimpItem* @gimp_value_get_item(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpItem* %call, %struct._GimpItem** %item, align 8
  %3 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %3, i32 0, i32 1
  %4 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %4, i64 1
  %call3 = call double @g_value_get_double(%struct._GValue* %arrayidx2)
  store double %call3, double* %x0, align 8
  %5 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values4 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %5, i32 0, i32 1
  %6 = load %struct._GValue*, %struct._GValue** %values4, align 8
  %arrayidx5 = getelementptr inbounds %struct._GValue, %struct._GValue* %6, i64 2
  %call6 = call double @g_value_get_double(%struct._GValue* %arrayidx5)
  store double %call6, double* %y0, align 8
  %7 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values7 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %7, i32 0, i32 1
  %8 = load %struct._GValue*, %struct._GValue** %values7, align 8
  %arrayidx8 = getelementptr inbounds %struct._GValue, %struct._GValue* %8, i64 3
  %call9 = call double @g_value_get_double(%struct._GValue* %arrayidx8)
  store double %call9, double* %x1, align 8
  %9 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values10 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %9, i32 0, i32 1
  %10 = load %struct._GValue*, %struct._GValue** %values10, align 8
  %arrayidx11 = getelementptr inbounds %struct._GValue, %struct._GValue* %10, i64 4
  %call12 = call double @g_value_get_double(%struct._GValue* %arrayidx11)
  store double %call12, double* %y1, align 8
  %11 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %if.then, label %if.end.73

if.then:                                          ; preds = %entry
  %12 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %13 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call13 = call i32 @gimp_pdb_item_is_attached(%struct._GimpItem* %12, %struct._GimpImage* null, i32 1, %struct._GError** %13)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %if.then
  %14 = load double, double* %x0, align 8
  %15 = load double, double* %x1, align 8
  %cmp = fcmp olt double %14, %15
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %16 = load double, double* %y0, align 8
  %17 = load double, double* %y1, align 8
  %cmp15 = fcmp olt double %16, %17
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %if.then
  %18 = phi i1 [ false, %land.lhs.true ], [ false, %if.then ], [ %cmp15, %land.rhs ]
  %land.ext = zext i1 %18 to i32
  store i32 %land.ext, i32* %success, align 4
  %19 = load i32, i32* %success, align 4
  %tobool16 = icmp ne i32 %19, 0
  br i1 %tobool16, label %land.lhs.true.17, label %if.end.72

land.lhs.true.17:                                 ; preds = %land.end
  %20 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call18 = call i32 @gimp_item_mask_intersect(%struct._GimpItem* %20, i32* %x, i32* %y, i32* %width, i32* %height)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.then.20, label %if.end.72

if.then.20:                                       ; preds = %land.lhs.true.17
  %21 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %22 = bitcast %struct._GimpContext* %21 to %struct._GTypeInstance*
  %call21 = call i64 @gimp_pdb_context_get_type() #5
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call21)
  %23 = bitcast %struct._GTypeInstance* %call22 to %struct._GimpPDBContext*
  store %struct._GimpPDBContext* %23, %struct._GimpPDBContext** %pdb_context, align 8
  %24 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  call void @gimp_item_get_offset(%struct._GimpItem* %24, i32* %off_x, i32* %off_y)
  %25 = load i32, i32* %off_x, align 4
  %26 = load i32, i32* %x, align 4
  %add = add nsw i32 %26, %25
  store i32 %add, i32* %x, align 4
  %27 = load i32, i32* %off_y, align 4
  %28 = load i32, i32* %y, align 4
  %add23 = add nsw i32 %28, %27
  store i32 %add23, i32* %y, align 4
  call void @gimp_matrix3_identity(%struct._GimpMatrix3* %matrix)
  %29 = load i32, i32* %x, align 4
  %30 = load i32, i32* %y, align 4
  %31 = load i32, i32* %width, align 4
  %32 = load i32, i32* %height, align 4
  %33 = load double, double* %x0, align 8
  %34 = load double, double* %y0, align 8
  %35 = load double, double* %x1, align 8
  %36 = load double, double* %x0, align 8
  %sub = fsub double %35, %36
  %37 = load double, double* %y1, align 8
  %38 = load double, double* %y0, align 8
  %sub24 = fsub double %37, %38
  call void @gimp_transform_matrix_scale(%struct._GimpMatrix3* %matrix, i32 %29, i32 %30, i32 %31, i32 %32, double %33, double %34, double %sub, double %sub24)
  %39 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %tobool25 = icmp ne %struct._GimpProgress* %39, null
  br i1 %tobool25, label %if.then.26, label %if.end

if.then.26:                                       ; preds = %if.then.20
  %40 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %call27 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.134, i32 0, i32 0)) #7
  %call28 = call %struct._GimpProgress* @gimp_progress_start(%struct._GimpProgress* %40, i8* %call27, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then.26, %if.then.20
  %41 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %42 = bitcast %struct._GimpItem* %41 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %42, %struct._GTypeInstance** %__inst, align 8
  %call29 = call i64 @gimp_drawable_get_type() #5
  store i64 %call29, i64* %__t, align 8
  %43 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool30 = icmp ne %struct._GTypeInstance* %43, null
  br i1 %tobool30, label %if.else, label %if.then.31

if.then.31:                                       ; preds = %if.end
  store i32 0, i32* %__r, align 4
  br label %if.end.40

if.else:                                          ; preds = %if.end
  %44 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %44, i32 0, i32 0
  %45 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool32 = icmp ne %struct._GTypeClass* %45, null
  br i1 %tobool32, label %land.lhs.true.33, label %if.else.37

land.lhs.true.33:                                 ; preds = %if.else
  %46 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class34 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %46, i32 0, i32 0
  %47 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class34, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %47, i32 0, i32 0
  %48 = load i64, i64* %g_type, align 8
  %49 = load i64, i64* %__t, align 8
  %cmp35 = icmp eq i64 %48, %49
  br i1 %cmp35, label %if.then.36, label %if.else.37

if.then.36:                                       ; preds = %land.lhs.true.33
  store i32 1, i32* %__r, align 4
  br label %if.end.39

if.else.37:                                       ; preds = %land.lhs.true.33, %if.else
  %50 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %51 = load i64, i64* %__t, align 8
  %call38 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %50, i64 %51) #6
  store i32 %call38, i32* %__r, align 4
  br label %if.end.39

if.end.39:                                        ; preds = %if.else.37, %if.then.36
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39, %if.then.31
  %52 = load i32, i32* %__r, align 4
  store i32 %52, i32* %tmp
  %53 = load i32, i32* %tmp
  %tobool41 = icmp ne i32 %53, 0
  br i1 %tobool41, label %land.lhs.true.42, label %if.else.63

land.lhs.true.42:                                 ; preds = %if.end.40
  %54 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %55 = bitcast %struct._GimpItem* %54 to %struct._GTypeInstance*
  %call43 = call i64 @gimp_viewable_get_type() #5
  %call44 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %55, i64 %call43)
  %56 = bitcast %struct._GTypeInstance* %call44 to %struct._GimpViewable*
  %call45 = call %struct._GimpContainer* @gimp_viewable_get_children(%struct._GimpViewable* %56)
  %tobool46 = icmp ne %struct._GimpContainer* %call45, null
  br i1 %tobool46, label %if.else.63, label %land.lhs.true.47

land.lhs.true.47:                                 ; preds = %land.lhs.true.42
  %57 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call48 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %57)
  %call49 = call %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage* %call48)
  %call50 = call i32 @gimp_channel_is_empty(%struct._GimpChannel* %call49)
  %tobool51 = icmp ne i32 %call50, 0
  br i1 %tobool51, label %if.else.63, label %if.then.52

if.then.52:                                       ; preds = %land.lhs.true.47
  %58 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %59 = bitcast %struct._GimpItem* %58 to %struct._GTypeInstance*
  %call54 = call i64 @gimp_drawable_get_type() #5
  %call55 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %59, i64 %call54)
  %60 = bitcast %struct._GTypeInstance* %call55 to %struct._GimpDrawable*
  %61 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %62 = load %struct._GimpPDBContext*, %struct._GimpPDBContext** %pdb_context, align 8
  %transform_direction = getelementptr inbounds %struct._GimpPDBContext, %struct._GimpPDBContext* %62, i32 0, i32 10
  %63 = load i32, i32* %transform_direction, align 4
  %64 = load %struct._GimpPDBContext*, %struct._GimpPDBContext** %pdb_context, align 8
  %interpolation = getelementptr inbounds %struct._GimpPDBContext, %struct._GimpPDBContext* %64, i32 0, i32 9
  %65 = load i32, i32* %interpolation, align 4
  %66 = load %struct._GimpPDBContext*, %struct._GimpPDBContext** %pdb_context, align 8
  %transform_recursion = getelementptr inbounds %struct._GimpPDBContext, %struct._GimpPDBContext* %66, i32 0, i32 12
  %67 = load i32, i32* %transform_recursion, align 4
  %68 = load %struct._GimpPDBContext*, %struct._GimpPDBContext** %pdb_context, align 8
  %transform_resize = getelementptr inbounds %struct._GimpPDBContext, %struct._GimpPDBContext* %68, i32 0, i32 11
  %69 = load i32, i32* %transform_resize, align 4
  %70 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %call56 = call %struct._GimpDrawable* @gimp_drawable_transform_affine(%struct._GimpDrawable* %60, %struct._GimpContext* %61, %struct._GimpMatrix3* %matrix, i32 %63, i32 %65, i32 %67, i32 %69, %struct._GimpProgress* %70)
  store %struct._GimpDrawable* %call56, %struct._GimpDrawable** %drawable, align 8
  %71 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %tobool57 = icmp ne %struct._GimpDrawable* %71, null
  br i1 %tobool57, label %if.then.58, label %if.else.61

if.then.58:                                       ; preds = %if.then.52
  %72 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %73 = bitcast %struct._GimpDrawable* %72 to %struct._GTypeInstance*
  %call59 = call i64 @gimp_item_get_type() #5
  %call60 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %73, i64 %call59)
  %74 = bitcast %struct._GTypeInstance* %call60 to %struct._GimpItem*
  store %struct._GimpItem* %74, %struct._GimpItem** %item, align 8
  br label %if.end.62

if.else.61:                                       ; preds = %if.then.52
  store i32 0, i32* %success, align 4
  br label %if.end.62

if.end.62:                                        ; preds = %if.else.61, %if.then.58
  br label %if.end.68

if.else.63:                                       ; preds = %land.lhs.true.47, %land.lhs.true.42, %if.end.40
  %75 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %76 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %77 = load %struct._GimpPDBContext*, %struct._GimpPDBContext** %pdb_context, align 8
  %transform_direction64 = getelementptr inbounds %struct._GimpPDBContext, %struct._GimpPDBContext* %77, i32 0, i32 10
  %78 = load i32, i32* %transform_direction64, align 4
  %79 = load %struct._GimpPDBContext*, %struct._GimpPDBContext** %pdb_context, align 8
  %interpolation65 = getelementptr inbounds %struct._GimpPDBContext, %struct._GimpPDBContext* %79, i32 0, i32 9
  %80 = load i32, i32* %interpolation65, align 4
  %81 = load %struct._GimpPDBContext*, %struct._GimpPDBContext** %pdb_context, align 8
  %transform_recursion66 = getelementptr inbounds %struct._GimpPDBContext, %struct._GimpPDBContext* %81, i32 0, i32 12
  %82 = load i32, i32* %transform_recursion66, align 4
  %83 = load %struct._GimpPDBContext*, %struct._GimpPDBContext** %pdb_context, align 8
  %transform_resize67 = getelementptr inbounds %struct._GimpPDBContext, %struct._GimpPDBContext* %83, i32 0, i32 11
  %84 = load i32, i32* %transform_resize67, align 4
  %85 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  call void @gimp_item_transform(%struct._GimpItem* %75, %struct._GimpContext* %76, %struct._GimpMatrix3* %matrix, i32 %78, i32 %80, i32 %82, i32 %84, %struct._GimpProgress* %85)
  br label %if.end.68

if.end.68:                                        ; preds = %if.else.63, %if.end.62
  %86 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %tobool69 = icmp ne %struct._GimpProgress* %86, null
  br i1 %tobool69, label %if.then.70, label %if.end.71

if.then.70:                                       ; preds = %if.end.68
  %87 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  call void @gimp_progress_end(%struct._GimpProgress* %87)
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.70, %if.end.68
  br label %if.end.72

if.end.72:                                        ; preds = %if.end.71, %land.lhs.true.17, %land.end
  br label %if.end.73

if.end.73:                                        ; preds = %if.end.72, %entry
  %88 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %89 = load i32, i32* %success, align 4
  %90 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool74 = icmp ne %struct._GError** %90, null
  br i1 %tobool74, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.73
  %91 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %92 = load %struct._GError*, %struct._GError** %91, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.73
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %92, %cond.true ], [ null, %cond.false ]
  %call75 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %88, i32 %89, %struct._GError* %cond)
  store %struct._GValueArray* %call75, %struct._GValueArray** %return_vals, align 8
  %93 = load i32, i32* %success, align 4
  %tobool76 = icmp ne i32 %93, 0
  br i1 %tobool76, label %if.then.77, label %if.end.80

if.then.77:                                       ; preds = %cond.end
  %94 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values78 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %94, i32 0, i32 1
  %95 = load %struct._GValue*, %struct._GValue** %values78, align 8
  %arrayidx79 = getelementptr inbounds %struct._GValue, %struct._GValue* %95, i64 1
  %96 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  call void @gimp_value_set_item(%struct._GValue* %arrayidx79, %struct._GimpItem* %96)
  br label %if.end.80

if.end.80:                                        ; preds = %if.then.77, %cond.end
  %97 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %97
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @item_transform_shear_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %return_vals = alloca %struct._GValueArray*, align 8
  %item = alloca %struct._GimpItem*, align 8
  %shear_type = alloca i32, align 4
  %magnitude = alloca double, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %pdb_context = alloca %struct._GimpPDBContext*, align 8
  %matrix = alloca %struct._GimpMatrix3, align 8
  %off_x = alloca i32, align 4
  %off_y = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %drawable = alloca %struct._GimpDrawable*, align 8
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
  %call = call %struct._GimpItem* @gimp_value_get_item(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpItem* %call, %struct._GimpItem** %item, align 8
  %3 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %3, i32 0, i32 1
  %4 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %4, i64 1
  %call3 = call i32 @g_value_get_enum(%struct._GValue* %arrayidx2)
  store i32 %call3, i32* %shear_type, align 4
  %5 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values4 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %5, i32 0, i32 1
  %6 = load %struct._GValue*, %struct._GValue** %values4, align 8
  %arrayidx5 = getelementptr inbounds %struct._GValue, %struct._GValue* %6, i64 2
  %call6 = call double @g_value_get_double(%struct._GValue* %arrayidx5)
  store double %call6, double* %magnitude, align 8
  %7 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then, label %if.end.62

if.then:                                          ; preds = %entry
  %8 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %9 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call7 = call i32 @gimp_pdb_item_is_attached(%struct._GimpItem* %8, %struct._GimpImage* null, i32 1, %struct._GError** %9)
  store i32 %call7, i32* %success, align 4
  %10 = load i32, i32* %success, align 4
  %tobool8 = icmp ne i32 %10, 0
  br i1 %tobool8, label %land.lhs.true, label %if.end.61

land.lhs.true:                                    ; preds = %if.then
  %11 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call9 = call i32 @gimp_item_mask_intersect(%struct._GimpItem* %11, i32* %x, i32* %y, i32* %width, i32* %height)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.then.11, label %if.end.61

if.then.11:                                       ; preds = %land.lhs.true
  %12 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %13 = bitcast %struct._GimpContext* %12 to %struct._GTypeInstance*
  %call12 = call i64 @gimp_pdb_context_get_type() #5
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call12)
  %14 = bitcast %struct._GTypeInstance* %call13 to %struct._GimpPDBContext*
  store %struct._GimpPDBContext* %14, %struct._GimpPDBContext** %pdb_context, align 8
  %15 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  call void @gimp_item_get_offset(%struct._GimpItem* %15, i32* %off_x, i32* %off_y)
  %16 = load i32, i32* %off_x, align 4
  %17 = load i32, i32* %x, align 4
  %add = add nsw i32 %17, %16
  store i32 %add, i32* %x, align 4
  %18 = load i32, i32* %off_y, align 4
  %19 = load i32, i32* %y, align 4
  %add14 = add nsw i32 %19, %18
  store i32 %add14, i32* %y, align 4
  call void @gimp_matrix3_identity(%struct._GimpMatrix3* %matrix)
  %20 = load i32, i32* %x, align 4
  %21 = load i32, i32* %y, align 4
  %22 = load i32, i32* %width, align 4
  %23 = load i32, i32* %height, align 4
  %24 = load i32, i32* %shear_type, align 4
  %25 = load double, double* %magnitude, align 8
  call void @gimp_transform_matrix_shear(%struct._GimpMatrix3* %matrix, i32 %20, i32 %21, i32 %22, i32 %23, i32 %24, double %25)
  %26 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %tobool15 = icmp ne %struct._GimpProgress* %26, null
  br i1 %tobool15, label %if.then.16, label %if.end

if.then.16:                                       ; preds = %if.then.11
  %27 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %call17 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.135, i32 0, i32 0)) #7
  %call18 = call %struct._GimpProgress* @gimp_progress_start(%struct._GimpProgress* %27, i8* %call17, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then.16, %if.then.11
  %28 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %29 = bitcast %struct._GimpItem* %28 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %29, %struct._GTypeInstance** %__inst, align 8
  %call19 = call i64 @gimp_drawable_get_type() #5
  store i64 %call19, i64* %__t, align 8
  %30 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool20 = icmp ne %struct._GTypeInstance* %30, null
  br i1 %tobool20, label %if.else, label %if.then.21

if.then.21:                                       ; preds = %if.end
  store i32 0, i32* %__r, align 4
  br label %if.end.29

if.else:                                          ; preds = %if.end
  %31 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %31, i32 0, i32 0
  %32 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool22 = icmp ne %struct._GTypeClass* %32, null
  br i1 %tobool22, label %land.lhs.true.23, label %if.else.26

land.lhs.true.23:                                 ; preds = %if.else
  %33 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class24 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %33, i32 0, i32 0
  %34 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class24, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %34, i32 0, i32 0
  %35 = load i64, i64* %g_type, align 8
  %36 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %35, %36
  br i1 %cmp, label %if.then.25, label %if.else.26

if.then.25:                                       ; preds = %land.lhs.true.23
  store i32 1, i32* %__r, align 4
  br label %if.end.28

if.else.26:                                       ; preds = %land.lhs.true.23, %if.else
  %37 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %38 = load i64, i64* %__t, align 8
  %call27 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %37, i64 %38) #6
  store i32 %call27, i32* %__r, align 4
  br label %if.end.28

if.end.28:                                        ; preds = %if.else.26, %if.then.25
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %if.then.21
  %39 = load i32, i32* %__r, align 4
  store i32 %39, i32* %tmp
  %40 = load i32, i32* %tmp
  %tobool30 = icmp ne i32 %40, 0
  br i1 %tobool30, label %land.lhs.true.31, label %if.else.52

land.lhs.true.31:                                 ; preds = %if.end.29
  %41 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %42 = bitcast %struct._GimpItem* %41 to %struct._GTypeInstance*
  %call32 = call i64 @gimp_viewable_get_type() #5
  %call33 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %42, i64 %call32)
  %43 = bitcast %struct._GTypeInstance* %call33 to %struct._GimpViewable*
  %call34 = call %struct._GimpContainer* @gimp_viewable_get_children(%struct._GimpViewable* %43)
  %tobool35 = icmp ne %struct._GimpContainer* %call34, null
  br i1 %tobool35, label %if.else.52, label %land.lhs.true.36

land.lhs.true.36:                                 ; preds = %land.lhs.true.31
  %44 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call37 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %44)
  %call38 = call %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage* %call37)
  %call39 = call i32 @gimp_channel_is_empty(%struct._GimpChannel* %call38)
  %tobool40 = icmp ne i32 %call39, 0
  br i1 %tobool40, label %if.else.52, label %if.then.41

if.then.41:                                       ; preds = %land.lhs.true.36
  %45 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %46 = bitcast %struct._GimpItem* %45 to %struct._GTypeInstance*
  %call43 = call i64 @gimp_drawable_get_type() #5
  %call44 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %46, i64 %call43)
  %47 = bitcast %struct._GTypeInstance* %call44 to %struct._GimpDrawable*
  %48 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %49 = load %struct._GimpPDBContext*, %struct._GimpPDBContext** %pdb_context, align 8
  %transform_direction = getelementptr inbounds %struct._GimpPDBContext, %struct._GimpPDBContext* %49, i32 0, i32 10
  %50 = load i32, i32* %transform_direction, align 4
  %51 = load %struct._GimpPDBContext*, %struct._GimpPDBContext** %pdb_context, align 8
  %interpolation = getelementptr inbounds %struct._GimpPDBContext, %struct._GimpPDBContext* %51, i32 0, i32 9
  %52 = load i32, i32* %interpolation, align 4
  %53 = load %struct._GimpPDBContext*, %struct._GimpPDBContext** %pdb_context, align 8
  %transform_recursion = getelementptr inbounds %struct._GimpPDBContext, %struct._GimpPDBContext* %53, i32 0, i32 12
  %54 = load i32, i32* %transform_recursion, align 4
  %55 = load %struct._GimpPDBContext*, %struct._GimpPDBContext** %pdb_context, align 8
  %transform_resize = getelementptr inbounds %struct._GimpPDBContext, %struct._GimpPDBContext* %55, i32 0, i32 11
  %56 = load i32, i32* %transform_resize, align 4
  %57 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %call45 = call %struct._GimpDrawable* @gimp_drawable_transform_affine(%struct._GimpDrawable* %47, %struct._GimpContext* %48, %struct._GimpMatrix3* %matrix, i32 %50, i32 %52, i32 %54, i32 %56, %struct._GimpProgress* %57)
  store %struct._GimpDrawable* %call45, %struct._GimpDrawable** %drawable, align 8
  %58 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %tobool46 = icmp ne %struct._GimpDrawable* %58, null
  br i1 %tobool46, label %if.then.47, label %if.else.50

if.then.47:                                       ; preds = %if.then.41
  %59 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %60 = bitcast %struct._GimpDrawable* %59 to %struct._GTypeInstance*
  %call48 = call i64 @gimp_item_get_type() #5
  %call49 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %60, i64 %call48)
  %61 = bitcast %struct._GTypeInstance* %call49 to %struct._GimpItem*
  store %struct._GimpItem* %61, %struct._GimpItem** %item, align 8
  br label %if.end.51

if.else.50:                                       ; preds = %if.then.41
  store i32 0, i32* %success, align 4
  br label %if.end.51

if.end.51:                                        ; preds = %if.else.50, %if.then.47
  br label %if.end.57

if.else.52:                                       ; preds = %land.lhs.true.36, %land.lhs.true.31, %if.end.29
  %62 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %63 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %64 = load %struct._GimpPDBContext*, %struct._GimpPDBContext** %pdb_context, align 8
  %transform_direction53 = getelementptr inbounds %struct._GimpPDBContext, %struct._GimpPDBContext* %64, i32 0, i32 10
  %65 = load i32, i32* %transform_direction53, align 4
  %66 = load %struct._GimpPDBContext*, %struct._GimpPDBContext** %pdb_context, align 8
  %interpolation54 = getelementptr inbounds %struct._GimpPDBContext, %struct._GimpPDBContext* %66, i32 0, i32 9
  %67 = load i32, i32* %interpolation54, align 4
  %68 = load %struct._GimpPDBContext*, %struct._GimpPDBContext** %pdb_context, align 8
  %transform_recursion55 = getelementptr inbounds %struct._GimpPDBContext, %struct._GimpPDBContext* %68, i32 0, i32 12
  %69 = load i32, i32* %transform_recursion55, align 4
  %70 = load %struct._GimpPDBContext*, %struct._GimpPDBContext** %pdb_context, align 8
  %transform_resize56 = getelementptr inbounds %struct._GimpPDBContext, %struct._GimpPDBContext* %70, i32 0, i32 11
  %71 = load i32, i32* %transform_resize56, align 4
  %72 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  call void @gimp_item_transform(%struct._GimpItem* %62, %struct._GimpContext* %63, %struct._GimpMatrix3* %matrix, i32 %65, i32 %67, i32 %69, i32 %71, %struct._GimpProgress* %72)
  br label %if.end.57

if.end.57:                                        ; preds = %if.else.52, %if.end.51
  %73 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %tobool58 = icmp ne %struct._GimpProgress* %73, null
  br i1 %tobool58, label %if.then.59, label %if.end.60

if.then.59:                                       ; preds = %if.end.57
  %74 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  call void @gimp_progress_end(%struct._GimpProgress* %74)
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.59, %if.end.57
  br label %if.end.61

if.end.61:                                        ; preds = %if.end.60, %land.lhs.true, %if.then
  br label %if.end.62

if.end.62:                                        ; preds = %if.end.61, %entry
  %75 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %76 = load i32, i32* %success, align 4
  %77 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool63 = icmp ne %struct._GError** %77, null
  br i1 %tobool63, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.62
  %78 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %79 = load %struct._GError*, %struct._GError** %78, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.62
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %79, %cond.true ], [ null, %cond.false ]
  %call64 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %75, i32 %76, %struct._GError* %cond)
  store %struct._GValueArray* %call64, %struct._GValueArray** %return_vals, align 8
  %80 = load i32, i32* %success, align 4
  %tobool65 = icmp ne i32 %80, 0
  br i1 %tobool65, label %if.then.66, label %if.end.69

if.then.66:                                       ; preds = %cond.end
  %81 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values67 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %81, i32 0, i32 1
  %82 = load %struct._GValue*, %struct._GValue** %values67, align 8
  %arrayidx68 = getelementptr inbounds %struct._GValue, %struct._GValue* %82, i64 1
  %83 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  call void @gimp_value_set_item(%struct._GValue* %arrayidx68, %struct._GimpItem* %83)
  br label %if.end.69

if.end.69:                                        ; preds = %if.then.66, %cond.end
  %84 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %84
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @item_transform_2d_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %return_vals = alloca %struct._GValueArray*, align 8
  %item = alloca %struct._GimpItem*, align 8
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
  %pdb_context = alloca %struct._GimpPDBContext*, align 8
  %matrix = alloca %struct._GimpMatrix3, align 8
  %off_x = alloca i32, align 4
  %off_y = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %drawable = alloca %struct._GimpDrawable*, align 8
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
  %call = call %struct._GimpItem* @gimp_value_get_item(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpItem* %call, %struct._GimpItem** %item, align 8
  %3 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %3, i32 0, i32 1
  %4 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %4, i64 1
  %call3 = call double @g_value_get_double(%struct._GValue* %arrayidx2)
  store double %call3, double* %source_x, align 8
  %5 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values4 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %5, i32 0, i32 1
  %6 = load %struct._GValue*, %struct._GValue** %values4, align 8
  %arrayidx5 = getelementptr inbounds %struct._GValue, %struct._GValue* %6, i64 2
  %call6 = call double @g_value_get_double(%struct._GValue* %arrayidx5)
  store double %call6, double* %source_y, align 8
  %7 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values7 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %7, i32 0, i32 1
  %8 = load %struct._GValue*, %struct._GValue** %values7, align 8
  %arrayidx8 = getelementptr inbounds %struct._GValue, %struct._GValue* %8, i64 3
  %call9 = call double @g_value_get_double(%struct._GValue* %arrayidx8)
  store double %call9, double* %scale_x, align 8
  %9 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values10 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %9, i32 0, i32 1
  %10 = load %struct._GValue*, %struct._GValue** %values10, align 8
  %arrayidx11 = getelementptr inbounds %struct._GValue, %struct._GValue* %10, i64 4
  %call12 = call double @g_value_get_double(%struct._GValue* %arrayidx11)
  store double %call12, double* %scale_y, align 8
  %11 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values13 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %11, i32 0, i32 1
  %12 = load %struct._GValue*, %struct._GValue** %values13, align 8
  %arrayidx14 = getelementptr inbounds %struct._GValue, %struct._GValue* %12, i64 5
  %call15 = call double @g_value_get_double(%struct._GValue* %arrayidx14)
  store double %call15, double* %angle, align 8
  %13 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values16 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %13, i32 0, i32 1
  %14 = load %struct._GValue*, %struct._GValue** %values16, align 8
  %arrayidx17 = getelementptr inbounds %struct._GValue, %struct._GValue* %14, i64 6
  %call18 = call double @g_value_get_double(%struct._GValue* %arrayidx17)
  store double %call18, double* %dest_x, align 8
  %15 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values19 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %15, i32 0, i32 1
  %16 = load %struct._GValue*, %struct._GValue** %values19, align 8
  %arrayidx20 = getelementptr inbounds %struct._GValue, %struct._GValue* %16, i64 7
  %call21 = call double @g_value_get_double(%struct._GValue* %arrayidx20)
  store double %call21, double* %dest_y, align 8
  %17 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %17, 0
  br i1 %tobool, label %if.then, label %if.end.78

if.then:                                          ; preds = %entry
  %18 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %19 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call22 = call i32 @gimp_pdb_item_is_attached(%struct._GimpItem* %18, %struct._GimpImage* null, i32 1, %struct._GError** %19)
  store i32 %call22, i32* %success, align 4
  %20 = load i32, i32* %success, align 4
  %tobool23 = icmp ne i32 %20, 0
  br i1 %tobool23, label %land.lhs.true, label %if.end.77

land.lhs.true:                                    ; preds = %if.then
  %21 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call24 = call i32 @gimp_item_mask_intersect(%struct._GimpItem* %21, i32* %x, i32* %y, i32* %width, i32* %height)
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %if.then.26, label %if.end.77

if.then.26:                                       ; preds = %land.lhs.true
  %22 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %23 = bitcast %struct._GimpContext* %22 to %struct._GTypeInstance*
  %call27 = call i64 @gimp_pdb_context_get_type() #5
  %call28 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call27)
  %24 = bitcast %struct._GTypeInstance* %call28 to %struct._GimpPDBContext*
  store %struct._GimpPDBContext* %24, %struct._GimpPDBContext** %pdb_context, align 8
  %25 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  call void @gimp_item_get_offset(%struct._GimpItem* %25, i32* %off_x, i32* %off_y)
  %26 = load i32, i32* %off_x, align 4
  %27 = load i32, i32* %x, align 4
  %add = add nsw i32 %27, %26
  store i32 %add, i32* %x, align 4
  %28 = load i32, i32* %off_y, align 4
  %29 = load i32, i32* %y, align 4
  %add29 = add nsw i32 %29, %28
  store i32 %add29, i32* %y, align 4
  call void @gimp_matrix3_identity(%struct._GimpMatrix3* %matrix)
  %30 = load double, double* %source_x, align 8
  %sub = fsub double -0.000000e+00, %30
  %31 = load double, double* %source_y, align 8
  %sub30 = fsub double -0.000000e+00, %31
  call void @gimp_matrix3_translate(%struct._GimpMatrix3* %matrix, double %sub, double %sub30)
  %32 = load double, double* %scale_x, align 8
  %33 = load double, double* %scale_y, align 8
  call void @gimp_matrix3_scale(%struct._GimpMatrix3* %matrix, double %32, double %33)
  %34 = load double, double* %angle, align 8
  call void @gimp_matrix3_rotate(%struct._GimpMatrix3* %matrix, double %34)
  %35 = load double, double* %dest_x, align 8
  %36 = load double, double* %dest_y, align 8
  call void @gimp_matrix3_translate(%struct._GimpMatrix3* %matrix, double %35, double %36)
  %37 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %tobool31 = icmp ne %struct._GimpProgress* %37, null
  br i1 %tobool31, label %if.then.32, label %if.end

if.then.32:                                       ; preds = %if.then.26
  %38 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %call33 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.136, i32 0, i32 0)) #7
  %call34 = call %struct._GimpProgress* @gimp_progress_start(%struct._GimpProgress* %38, i8* %call33, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then.32, %if.then.26
  %39 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %40 = bitcast %struct._GimpItem* %39 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %40, %struct._GTypeInstance** %__inst, align 8
  %call35 = call i64 @gimp_drawable_get_type() #5
  store i64 %call35, i64* %__t, align 8
  %41 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool36 = icmp ne %struct._GTypeInstance* %41, null
  br i1 %tobool36, label %if.else, label %if.then.37

if.then.37:                                       ; preds = %if.end
  store i32 0, i32* %__r, align 4
  br label %if.end.45

if.else:                                          ; preds = %if.end
  %42 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %42, i32 0, i32 0
  %43 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool38 = icmp ne %struct._GTypeClass* %43, null
  br i1 %tobool38, label %land.lhs.true.39, label %if.else.42

land.lhs.true.39:                                 ; preds = %if.else
  %44 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class40 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %44, i32 0, i32 0
  %45 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class40, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %45, i32 0, i32 0
  %46 = load i64, i64* %g_type, align 8
  %47 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %46, %47
  br i1 %cmp, label %if.then.41, label %if.else.42

if.then.41:                                       ; preds = %land.lhs.true.39
  store i32 1, i32* %__r, align 4
  br label %if.end.44

if.else.42:                                       ; preds = %land.lhs.true.39, %if.else
  %48 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %49 = load i64, i64* %__t, align 8
  %call43 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %48, i64 %49) #6
  store i32 %call43, i32* %__r, align 4
  br label %if.end.44

if.end.44:                                        ; preds = %if.else.42, %if.then.41
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %if.then.37
  %50 = load i32, i32* %__r, align 4
  store i32 %50, i32* %tmp
  %51 = load i32, i32* %tmp
  %tobool46 = icmp ne i32 %51, 0
  br i1 %tobool46, label %land.lhs.true.47, label %if.else.68

land.lhs.true.47:                                 ; preds = %if.end.45
  %52 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %53 = bitcast %struct._GimpItem* %52 to %struct._GTypeInstance*
  %call48 = call i64 @gimp_viewable_get_type() #5
  %call49 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %53, i64 %call48)
  %54 = bitcast %struct._GTypeInstance* %call49 to %struct._GimpViewable*
  %call50 = call %struct._GimpContainer* @gimp_viewable_get_children(%struct._GimpViewable* %54)
  %tobool51 = icmp ne %struct._GimpContainer* %call50, null
  br i1 %tobool51, label %if.else.68, label %land.lhs.true.52

land.lhs.true.52:                                 ; preds = %land.lhs.true.47
  %55 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call53 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %55)
  %call54 = call %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage* %call53)
  %call55 = call i32 @gimp_channel_is_empty(%struct._GimpChannel* %call54)
  %tobool56 = icmp ne i32 %call55, 0
  br i1 %tobool56, label %if.else.68, label %if.then.57

if.then.57:                                       ; preds = %land.lhs.true.52
  %56 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %57 = bitcast %struct._GimpItem* %56 to %struct._GTypeInstance*
  %call59 = call i64 @gimp_drawable_get_type() #5
  %call60 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %57, i64 %call59)
  %58 = bitcast %struct._GTypeInstance* %call60 to %struct._GimpDrawable*
  %59 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %60 = load %struct._GimpPDBContext*, %struct._GimpPDBContext** %pdb_context, align 8
  %transform_direction = getelementptr inbounds %struct._GimpPDBContext, %struct._GimpPDBContext* %60, i32 0, i32 10
  %61 = load i32, i32* %transform_direction, align 4
  %62 = load %struct._GimpPDBContext*, %struct._GimpPDBContext** %pdb_context, align 8
  %interpolation = getelementptr inbounds %struct._GimpPDBContext, %struct._GimpPDBContext* %62, i32 0, i32 9
  %63 = load i32, i32* %interpolation, align 4
  %64 = load %struct._GimpPDBContext*, %struct._GimpPDBContext** %pdb_context, align 8
  %transform_recursion = getelementptr inbounds %struct._GimpPDBContext, %struct._GimpPDBContext* %64, i32 0, i32 12
  %65 = load i32, i32* %transform_recursion, align 4
  %66 = load %struct._GimpPDBContext*, %struct._GimpPDBContext** %pdb_context, align 8
  %transform_resize = getelementptr inbounds %struct._GimpPDBContext, %struct._GimpPDBContext* %66, i32 0, i32 11
  %67 = load i32, i32* %transform_resize, align 4
  %68 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %call61 = call %struct._GimpDrawable* @gimp_drawable_transform_affine(%struct._GimpDrawable* %58, %struct._GimpContext* %59, %struct._GimpMatrix3* %matrix, i32 %61, i32 %63, i32 %65, i32 %67, %struct._GimpProgress* %68)
  store %struct._GimpDrawable* %call61, %struct._GimpDrawable** %drawable, align 8
  %69 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %tobool62 = icmp ne %struct._GimpDrawable* %69, null
  br i1 %tobool62, label %if.then.63, label %if.else.66

if.then.63:                                       ; preds = %if.then.57
  %70 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %71 = bitcast %struct._GimpDrawable* %70 to %struct._GTypeInstance*
  %call64 = call i64 @gimp_item_get_type() #5
  %call65 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %71, i64 %call64)
  %72 = bitcast %struct._GTypeInstance* %call65 to %struct._GimpItem*
  store %struct._GimpItem* %72, %struct._GimpItem** %item, align 8
  br label %if.end.67

if.else.66:                                       ; preds = %if.then.57
  store i32 0, i32* %success, align 4
  br label %if.end.67

if.end.67:                                        ; preds = %if.else.66, %if.then.63
  br label %if.end.73

if.else.68:                                       ; preds = %land.lhs.true.52, %land.lhs.true.47, %if.end.45
  %73 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %74 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %75 = load %struct._GimpPDBContext*, %struct._GimpPDBContext** %pdb_context, align 8
  %transform_direction69 = getelementptr inbounds %struct._GimpPDBContext, %struct._GimpPDBContext* %75, i32 0, i32 10
  %76 = load i32, i32* %transform_direction69, align 4
  %77 = load %struct._GimpPDBContext*, %struct._GimpPDBContext** %pdb_context, align 8
  %interpolation70 = getelementptr inbounds %struct._GimpPDBContext, %struct._GimpPDBContext* %77, i32 0, i32 9
  %78 = load i32, i32* %interpolation70, align 4
  %79 = load %struct._GimpPDBContext*, %struct._GimpPDBContext** %pdb_context, align 8
  %transform_recursion71 = getelementptr inbounds %struct._GimpPDBContext, %struct._GimpPDBContext* %79, i32 0, i32 12
  %80 = load i32, i32* %transform_recursion71, align 4
  %81 = load %struct._GimpPDBContext*, %struct._GimpPDBContext** %pdb_context, align 8
  %transform_resize72 = getelementptr inbounds %struct._GimpPDBContext, %struct._GimpPDBContext* %81, i32 0, i32 11
  %82 = load i32, i32* %transform_resize72, align 4
  %83 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  call void @gimp_item_transform(%struct._GimpItem* %73, %struct._GimpContext* %74, %struct._GimpMatrix3* %matrix, i32 %76, i32 %78, i32 %80, i32 %82, %struct._GimpProgress* %83)
  br label %if.end.73

if.end.73:                                        ; preds = %if.else.68, %if.end.67
  %84 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %tobool74 = icmp ne %struct._GimpProgress* %84, null
  br i1 %tobool74, label %if.then.75, label %if.end.76

if.then.75:                                       ; preds = %if.end.73
  %85 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  call void @gimp_progress_end(%struct._GimpProgress* %85)
  br label %if.end.76

if.end.76:                                        ; preds = %if.then.75, %if.end.73
  br label %if.end.77

if.end.77:                                        ; preds = %if.end.76, %land.lhs.true, %if.then
  br label %if.end.78

if.end.78:                                        ; preds = %if.end.77, %entry
  %86 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %87 = load i32, i32* %success, align 4
  %88 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool79 = icmp ne %struct._GError** %88, null
  br i1 %tobool79, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.78
  %89 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %90 = load %struct._GError*, %struct._GError** %89, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.78
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %90, %cond.true ], [ null, %cond.false ]
  %call80 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %86, i32 %87, %struct._GError* %cond)
  store %struct._GValueArray* %call80, %struct._GValueArray** %return_vals, align 8
  %91 = load i32, i32* %success, align 4
  %tobool81 = icmp ne i32 %91, 0
  br i1 %tobool81, label %if.then.82, label %if.end.85

if.then.82:                                       ; preds = %cond.end
  %92 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values83 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %92, i32 0, i32 1
  %93 = load %struct._GValue*, %struct._GValue** %values83, align 8
  %arrayidx84 = getelementptr inbounds %struct._GValue, %struct._GValue* %93, i64 1
  %94 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  call void @gimp_value_set_item(%struct._GValue* %arrayidx84, %struct._GimpItem* %94)
  br label %if.end.85

if.end.85:                                        ; preds = %if.then.82, %cond.end
  %95 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %95
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @item_transform_matrix_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %return_vals = alloca %struct._GValueArray*, align 8
  %item = alloca %struct._GimpItem*, align 8
  %coeff_0_0 = alloca double, align 8
  %coeff_0_1 = alloca double, align 8
  %coeff_0_2 = alloca double, align 8
  %coeff_1_0 = alloca double, align 8
  %coeff_1_1 = alloca double, align 8
  %coeff_1_2 = alloca double, align 8
  %coeff_2_0 = alloca double, align 8
  %coeff_2_1 = alloca double, align 8
  %coeff_2_2 = alloca double, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %pdb_context = alloca %struct._GimpPDBContext*, align 8
  %matrix = alloca %struct._GimpMatrix3, align 8
  %off_x = alloca i32, align 4
  %off_y = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %drawable = alloca %struct._GimpDrawable*, align 8
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
  %call = call %struct._GimpItem* @gimp_value_get_item(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpItem* %call, %struct._GimpItem** %item, align 8
  %3 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %3, i32 0, i32 1
  %4 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %4, i64 1
  %call3 = call double @g_value_get_double(%struct._GValue* %arrayidx2)
  store double %call3, double* %coeff_0_0, align 8
  %5 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values4 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %5, i32 0, i32 1
  %6 = load %struct._GValue*, %struct._GValue** %values4, align 8
  %arrayidx5 = getelementptr inbounds %struct._GValue, %struct._GValue* %6, i64 2
  %call6 = call double @g_value_get_double(%struct._GValue* %arrayidx5)
  store double %call6, double* %coeff_0_1, align 8
  %7 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values7 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %7, i32 0, i32 1
  %8 = load %struct._GValue*, %struct._GValue** %values7, align 8
  %arrayidx8 = getelementptr inbounds %struct._GValue, %struct._GValue* %8, i64 3
  %call9 = call double @g_value_get_double(%struct._GValue* %arrayidx8)
  store double %call9, double* %coeff_0_2, align 8
  %9 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values10 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %9, i32 0, i32 1
  %10 = load %struct._GValue*, %struct._GValue** %values10, align 8
  %arrayidx11 = getelementptr inbounds %struct._GValue, %struct._GValue* %10, i64 4
  %call12 = call double @g_value_get_double(%struct._GValue* %arrayidx11)
  store double %call12, double* %coeff_1_0, align 8
  %11 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values13 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %11, i32 0, i32 1
  %12 = load %struct._GValue*, %struct._GValue** %values13, align 8
  %arrayidx14 = getelementptr inbounds %struct._GValue, %struct._GValue* %12, i64 5
  %call15 = call double @g_value_get_double(%struct._GValue* %arrayidx14)
  store double %call15, double* %coeff_1_1, align 8
  %13 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values16 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %13, i32 0, i32 1
  %14 = load %struct._GValue*, %struct._GValue** %values16, align 8
  %arrayidx17 = getelementptr inbounds %struct._GValue, %struct._GValue* %14, i64 6
  %call18 = call double @g_value_get_double(%struct._GValue* %arrayidx17)
  store double %call18, double* %coeff_1_2, align 8
  %15 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values19 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %15, i32 0, i32 1
  %16 = load %struct._GValue*, %struct._GValue** %values19, align 8
  %arrayidx20 = getelementptr inbounds %struct._GValue, %struct._GValue* %16, i64 7
  %call21 = call double @g_value_get_double(%struct._GValue* %arrayidx20)
  store double %call21, double* %coeff_2_0, align 8
  %17 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values22 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %17, i32 0, i32 1
  %18 = load %struct._GValue*, %struct._GValue** %values22, align 8
  %arrayidx23 = getelementptr inbounds %struct._GValue, %struct._GValue* %18, i64 8
  %call24 = call double @g_value_get_double(%struct._GValue* %arrayidx23)
  store double %call24, double* %coeff_2_1, align 8
  %19 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values25 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %19, i32 0, i32 1
  %20 = load %struct._GValue*, %struct._GValue** %values25, align 8
  %arrayidx26 = getelementptr inbounds %struct._GValue, %struct._GValue* %20, i64 9
  %call27 = call double @g_value_get_double(%struct._GValue* %arrayidx26)
  store double %call27, double* %coeff_2_2, align 8
  %21 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %21, 0
  br i1 %tobool, label %if.then, label %if.end.109

if.then:                                          ; preds = %entry
  %22 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %23 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call28 = call i32 @gimp_pdb_item_is_attached(%struct._GimpItem* %22, %struct._GimpImage* null, i32 1, %struct._GError** %23)
  store i32 %call28, i32* %success, align 4
  %24 = load i32, i32* %success, align 4
  %tobool29 = icmp ne i32 %24, 0
  br i1 %tobool29, label %land.lhs.true, label %if.end.108

land.lhs.true:                                    ; preds = %if.then
  %25 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call30 = call i32 @gimp_item_mask_intersect(%struct._GimpItem* %25, i32* %x, i32* %y, i32* %width, i32* %height)
  %tobool31 = icmp ne i32 %call30, 0
  br i1 %tobool31, label %if.then.32, label %if.end.108

if.then.32:                                       ; preds = %land.lhs.true
  %26 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %27 = bitcast %struct._GimpContext* %26 to %struct._GTypeInstance*
  %call33 = call i64 @gimp_pdb_context_get_type() #5
  %call34 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call33)
  %28 = bitcast %struct._GTypeInstance* %call34 to %struct._GimpPDBContext*
  store %struct._GimpPDBContext* %28, %struct._GimpPDBContext** %pdb_context, align 8
  %29 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  call void @gimp_item_get_offset(%struct._GimpItem* %29, i32* %off_x, i32* %off_y)
  %30 = load i32, i32* %off_x, align 4
  %31 = load i32, i32* %x, align 4
  %add = add nsw i32 %31, %30
  store i32 %add, i32* %x, align 4
  %32 = load i32, i32* %off_y, align 4
  %33 = load i32, i32* %y, align 4
  %add35 = add nsw i32 %33, %32
  store i32 %add35, i32* %y, align 4
  %34 = load double, double* %coeff_0_0, align 8
  %coeff = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %matrix, i32 0, i32 0
  %arrayidx36 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff, i32 0, i64 0
  %arrayidx37 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx36, i32 0, i64 0
  store double %34, double* %arrayidx37, align 8
  %35 = load double, double* %coeff_0_1, align 8
  %coeff38 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %matrix, i32 0, i32 0
  %arrayidx39 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff38, i32 0, i64 0
  %arrayidx40 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx39, i32 0, i64 1
  store double %35, double* %arrayidx40, align 8
  %36 = load double, double* %coeff_0_2, align 8
  %coeff41 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %matrix, i32 0, i32 0
  %arrayidx42 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff41, i32 0, i64 0
  %arrayidx43 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx42, i32 0, i64 2
  store double %36, double* %arrayidx43, align 8
  %37 = load double, double* %coeff_1_0, align 8
  %coeff44 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %matrix, i32 0, i32 0
  %arrayidx45 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff44, i32 0, i64 1
  %arrayidx46 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx45, i32 0, i64 0
  store double %37, double* %arrayidx46, align 8
  %38 = load double, double* %coeff_1_1, align 8
  %coeff47 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %matrix, i32 0, i32 0
  %arrayidx48 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff47, i32 0, i64 1
  %arrayidx49 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx48, i32 0, i64 1
  store double %38, double* %arrayidx49, align 8
  %39 = load double, double* %coeff_1_2, align 8
  %coeff50 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %matrix, i32 0, i32 0
  %arrayidx51 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff50, i32 0, i64 1
  %arrayidx52 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx51, i32 0, i64 2
  store double %39, double* %arrayidx52, align 8
  %40 = load double, double* %coeff_2_0, align 8
  %coeff53 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %matrix, i32 0, i32 0
  %arrayidx54 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff53, i32 0, i64 2
  %arrayidx55 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx54, i32 0, i64 0
  store double %40, double* %arrayidx55, align 8
  %41 = load double, double* %coeff_2_1, align 8
  %coeff56 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %matrix, i32 0, i32 0
  %arrayidx57 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff56, i32 0, i64 2
  %arrayidx58 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx57, i32 0, i64 1
  store double %41, double* %arrayidx58, align 8
  %42 = load double, double* %coeff_2_2, align 8
  %coeff59 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %matrix, i32 0, i32 0
  %arrayidx60 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff59, i32 0, i64 2
  %arrayidx61 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx60, i32 0, i64 2
  store double %42, double* %arrayidx61, align 8
  %43 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %tobool62 = icmp ne %struct._GimpProgress* %43, null
  br i1 %tobool62, label %if.then.63, label %if.end

if.then.63:                                       ; preds = %if.then.32
  %44 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %call64 = call i8* @gettext(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.137, i32 0, i32 0)) #7
  %call65 = call %struct._GimpProgress* @gimp_progress_start(%struct._GimpProgress* %44, i8* %call64, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then.63, %if.then.32
  %45 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %46 = bitcast %struct._GimpItem* %45 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %46, %struct._GTypeInstance** %__inst, align 8
  %call66 = call i64 @gimp_drawable_get_type() #5
  store i64 %call66, i64* %__t, align 8
  %47 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool67 = icmp ne %struct._GTypeInstance* %47, null
  br i1 %tobool67, label %if.else, label %if.then.68

if.then.68:                                       ; preds = %if.end
  store i32 0, i32* %__r, align 4
  br label %if.end.76

if.else:                                          ; preds = %if.end
  %48 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %48, i32 0, i32 0
  %49 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool69 = icmp ne %struct._GTypeClass* %49, null
  br i1 %tobool69, label %land.lhs.true.70, label %if.else.73

land.lhs.true.70:                                 ; preds = %if.else
  %50 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class71 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %50, i32 0, i32 0
  %51 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class71, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %51, i32 0, i32 0
  %52 = load i64, i64* %g_type, align 8
  %53 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %52, %53
  br i1 %cmp, label %if.then.72, label %if.else.73

if.then.72:                                       ; preds = %land.lhs.true.70
  store i32 1, i32* %__r, align 4
  br label %if.end.75

if.else.73:                                       ; preds = %land.lhs.true.70, %if.else
  %54 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %55 = load i64, i64* %__t, align 8
  %call74 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %54, i64 %55) #6
  store i32 %call74, i32* %__r, align 4
  br label %if.end.75

if.end.75:                                        ; preds = %if.else.73, %if.then.72
  br label %if.end.76

if.end.76:                                        ; preds = %if.end.75, %if.then.68
  %56 = load i32, i32* %__r, align 4
  store i32 %56, i32* %tmp
  %57 = load i32, i32* %tmp
  %tobool77 = icmp ne i32 %57, 0
  br i1 %tobool77, label %land.lhs.true.78, label %if.else.99

land.lhs.true.78:                                 ; preds = %if.end.76
  %58 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %59 = bitcast %struct._GimpItem* %58 to %struct._GTypeInstance*
  %call79 = call i64 @gimp_viewable_get_type() #5
  %call80 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %59, i64 %call79)
  %60 = bitcast %struct._GTypeInstance* %call80 to %struct._GimpViewable*
  %call81 = call %struct._GimpContainer* @gimp_viewable_get_children(%struct._GimpViewable* %60)
  %tobool82 = icmp ne %struct._GimpContainer* %call81, null
  br i1 %tobool82, label %if.else.99, label %land.lhs.true.83

land.lhs.true.83:                                 ; preds = %land.lhs.true.78
  %61 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call84 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %61)
  %call85 = call %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage* %call84)
  %call86 = call i32 @gimp_channel_is_empty(%struct._GimpChannel* %call85)
  %tobool87 = icmp ne i32 %call86, 0
  br i1 %tobool87, label %if.else.99, label %if.then.88

if.then.88:                                       ; preds = %land.lhs.true.83
  %62 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %63 = bitcast %struct._GimpItem* %62 to %struct._GTypeInstance*
  %call90 = call i64 @gimp_drawable_get_type() #5
  %call91 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %63, i64 %call90)
  %64 = bitcast %struct._GTypeInstance* %call91 to %struct._GimpDrawable*
  %65 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %66 = load %struct._GimpPDBContext*, %struct._GimpPDBContext** %pdb_context, align 8
  %transform_direction = getelementptr inbounds %struct._GimpPDBContext, %struct._GimpPDBContext* %66, i32 0, i32 10
  %67 = load i32, i32* %transform_direction, align 4
  %68 = load %struct._GimpPDBContext*, %struct._GimpPDBContext** %pdb_context, align 8
  %interpolation = getelementptr inbounds %struct._GimpPDBContext, %struct._GimpPDBContext* %68, i32 0, i32 9
  %69 = load i32, i32* %interpolation, align 4
  %70 = load %struct._GimpPDBContext*, %struct._GimpPDBContext** %pdb_context, align 8
  %transform_recursion = getelementptr inbounds %struct._GimpPDBContext, %struct._GimpPDBContext* %70, i32 0, i32 12
  %71 = load i32, i32* %transform_recursion, align 4
  %72 = load %struct._GimpPDBContext*, %struct._GimpPDBContext** %pdb_context, align 8
  %transform_resize = getelementptr inbounds %struct._GimpPDBContext, %struct._GimpPDBContext* %72, i32 0, i32 11
  %73 = load i32, i32* %transform_resize, align 4
  %74 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %call92 = call %struct._GimpDrawable* @gimp_drawable_transform_affine(%struct._GimpDrawable* %64, %struct._GimpContext* %65, %struct._GimpMatrix3* %matrix, i32 %67, i32 %69, i32 %71, i32 %73, %struct._GimpProgress* %74)
  store %struct._GimpDrawable* %call92, %struct._GimpDrawable** %drawable, align 8
  %75 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %tobool93 = icmp ne %struct._GimpDrawable* %75, null
  br i1 %tobool93, label %if.then.94, label %if.else.97

if.then.94:                                       ; preds = %if.then.88
  %76 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %77 = bitcast %struct._GimpDrawable* %76 to %struct._GTypeInstance*
  %call95 = call i64 @gimp_item_get_type() #5
  %call96 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %77, i64 %call95)
  %78 = bitcast %struct._GTypeInstance* %call96 to %struct._GimpItem*
  store %struct._GimpItem* %78, %struct._GimpItem** %item, align 8
  br label %if.end.98

if.else.97:                                       ; preds = %if.then.88
  store i32 0, i32* %success, align 4
  br label %if.end.98

if.end.98:                                        ; preds = %if.else.97, %if.then.94
  br label %if.end.104

if.else.99:                                       ; preds = %land.lhs.true.83, %land.lhs.true.78, %if.end.76
  %79 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %80 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %81 = load %struct._GimpPDBContext*, %struct._GimpPDBContext** %pdb_context, align 8
  %transform_direction100 = getelementptr inbounds %struct._GimpPDBContext, %struct._GimpPDBContext* %81, i32 0, i32 10
  %82 = load i32, i32* %transform_direction100, align 4
  %83 = load %struct._GimpPDBContext*, %struct._GimpPDBContext** %pdb_context, align 8
  %interpolation101 = getelementptr inbounds %struct._GimpPDBContext, %struct._GimpPDBContext* %83, i32 0, i32 9
  %84 = load i32, i32* %interpolation101, align 4
  %85 = load %struct._GimpPDBContext*, %struct._GimpPDBContext** %pdb_context, align 8
  %transform_recursion102 = getelementptr inbounds %struct._GimpPDBContext, %struct._GimpPDBContext* %85, i32 0, i32 12
  %86 = load i32, i32* %transform_recursion102, align 4
  %87 = load %struct._GimpPDBContext*, %struct._GimpPDBContext** %pdb_context, align 8
  %transform_resize103 = getelementptr inbounds %struct._GimpPDBContext, %struct._GimpPDBContext* %87, i32 0, i32 11
  %88 = load i32, i32* %transform_resize103, align 4
  %89 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  call void @gimp_item_transform(%struct._GimpItem* %79, %struct._GimpContext* %80, %struct._GimpMatrix3* %matrix, i32 %82, i32 %84, i32 %86, i32 %88, %struct._GimpProgress* %89)
  br label %if.end.104

if.end.104:                                       ; preds = %if.else.99, %if.end.98
  %90 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %tobool105 = icmp ne %struct._GimpProgress* %90, null
  br i1 %tobool105, label %if.then.106, label %if.end.107

if.then.106:                                      ; preds = %if.end.104
  %91 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  call void @gimp_progress_end(%struct._GimpProgress* %91)
  br label %if.end.107

if.end.107:                                       ; preds = %if.then.106, %if.end.104
  br label %if.end.108

if.end.108:                                       ; preds = %if.end.107, %land.lhs.true, %if.then
  br label %if.end.109

if.end.109:                                       ; preds = %if.end.108, %entry
  %92 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %93 = load i32, i32* %success, align 4
  %94 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool110 = icmp ne %struct._GError** %94, null
  br i1 %tobool110, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.109
  %95 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %96 = load %struct._GError*, %struct._GError** %95, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.109
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %96, %cond.true ], [ null, %cond.false ]
  %call111 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %92, i32 %93, %struct._GError* %cond)
  store %struct._GValueArray* %call111, %struct._GValueArray** %return_vals, align 8
  %97 = load i32, i32* %success, align 4
  %tobool112 = icmp ne i32 %97, 0
  br i1 %tobool112, label %if.then.113, label %if.end.116

if.then.113:                                      ; preds = %cond.end
  %98 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values114 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %98, i32 0, i32 1
  %99 = load %struct._GValue*, %struct._GValue** %values114, align 8
  %arrayidx115 = getelementptr inbounds %struct._GValue, %struct._GValue* %99, i64 1
  %100 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  call void @gimp_value_set_item(%struct._GValue* %arrayidx115, %struct._GimpItem* %100)
  br label %if.end.116

if.end.116:                                       ; preds = %if.then.113, %cond.end
  %101 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %101
}

declare %struct._GimpItem* @gimp_value_get_item(%struct._GValue*, %struct._Gimp*) #1

declare i32 @g_value_get_enum(%struct._GValue*) #1

declare i32 @g_value_get_boolean(%struct._GValue*) #1

declare double @g_value_get_double(%struct._GValue*) #1

declare i32 @gimp_pdb_item_is_attached(%struct._GimpItem*, %struct._GimpImage*, i32, %struct._GError**) #1

declare i32 @gimp_item_mask_intersect(%struct._GimpItem*, i32*, i32*, i32*, i32*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_pdb_context_get_type() #2

declare void @gimp_item_get_offset(%struct._GimpItem*, i32*, i32*) #1

declare void @gimp_transform_get_flip_axis(i32, i32, i32, i32, i32, i32, double*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_drawable_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #3

declare %struct._GimpContainer* @gimp_viewable_get_children(%struct._GimpViewable*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_viewable_get_type() #2

declare i32 @gimp_channel_is_empty(%struct._GimpChannel*) #1

declare %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage*) #1

declare %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem*) #1

declare %struct._GimpDrawable* @gimp_drawable_transform_flip(%struct._GimpDrawable*, %struct._GimpContext*, i32, double, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_item_get_type() #2

declare void @gimp_item_flip(%struct._GimpItem*, %struct._GimpContext*, i32, double, i32) #1

declare %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure*, i32, %struct._GError*) #1

declare void @gimp_value_set_item(%struct._GValue*, %struct._GimpItem*) #1

declare void @gimp_matrix3_identity(%struct._GimpMatrix3*) #1

declare void @gimp_transform_matrix_flip_free(%struct._GimpMatrix3*, double, double, double, double) #1

declare %struct._GimpProgress* @gimp_progress_start(%struct._GimpProgress*, i8*, i32) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

declare %struct._GimpDrawable* @gimp_drawable_transform_affine(%struct._GimpDrawable*, %struct._GimpContext*, %struct._GimpMatrix3*, i32, i32, i32, i32, %struct._GimpProgress*) #1

declare void @gimp_item_transform(%struct._GimpItem*, %struct._GimpContext*, %struct._GimpMatrix3*, i32, i32, i32, i32, %struct._GimpProgress*) #1

declare void @gimp_progress_end(%struct._GimpProgress*) #1

declare void @gimp_transform_matrix_perspective(%struct._GimpMatrix3*, i32, i32, i32, i32, double, double, double, double, double, double, double, double) #1

declare void @gimp_transform_get_rotate_center(i32, i32, i32, i32, i32, double*, double*) #1

declare %struct._GimpDrawable* @gimp_drawable_transform_rotate(%struct._GimpDrawable*, %struct._GimpContext*, i32, double, double, i32) #1

declare void @gimp_item_rotate(%struct._GimpItem*, %struct._GimpContext*, i32, double, double, i32) #1

declare void @gimp_transform_matrix_rotate_rect(%struct._GimpMatrix3*, i32, i32, i32, i32, double) #1

declare void @gimp_transform_matrix_rotate_center(%struct._GimpMatrix3*, double, double, double) #1

declare void @gimp_transform_matrix_scale(%struct._GimpMatrix3*, i32, i32, i32, i32, double, double, double, double) #1

declare void @gimp_transform_matrix_shear(%struct._GimpMatrix3*, i32, i32, i32, i32, i32, double) #1

declare void @gimp_matrix3_translate(%struct._GimpMatrix3*, double, double) #1

declare void @gimp_matrix3_scale(%struct._GimpMatrix3*, double, double) #1

declare void @gimp_matrix3_rotate(%struct._GimpMatrix3*, double) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
