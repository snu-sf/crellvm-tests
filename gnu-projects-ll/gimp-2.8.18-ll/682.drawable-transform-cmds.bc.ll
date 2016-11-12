; ModuleID = './app/pdb/drawable-transform-cmds.bc'
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

@.str = private unnamed_addr constant [36 x i8] c"gimp-drawable-transform-flip-simple\00", align 1
@.str.1 = private unnamed_addr constant [59 x i8] c"Deprecated: Use 'gimp-item-transform-flip-simple' instead.\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"Jo\C3\A3o S. O. Bueno\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"2004\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"gimp-item-transform-flip-simple\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"drawable\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"The affected drawable\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"flip-type\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"flip type\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"Type of flip\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"auto-center\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"auto center\00", align 1
@.str.12 = private unnamed_addr constant [67 x i8] c"Whether to automatically position the axis in the selection center\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"axis\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"coord. of flip axis\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"clip-result\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"clip result\00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c"Whether to clip results\00", align 1
@.str.18 = private unnamed_addr constant [21 x i8] c"The flipped drawable\00", align 1
@.str.19 = private unnamed_addr constant [29 x i8] c"gimp-drawable-transform-flip\00", align 1
@.str.20 = private unnamed_addr constant [52 x i8] c"Deprecated: Use 'gimp-item-transform-flip' instead.\00", align 1
@.str.21 = private unnamed_addr constant [25 x i8] c"gimp-item-transform-flip\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"x0\00", align 1
@.str.23 = private unnamed_addr constant [32 x i8] c"horz. coord. of one end of axis\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c"y0\00", align 1
@.str.25 = private unnamed_addr constant [32 x i8] c"vert. coord. of one end of axis\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"x1\00", align 1
@.str.27 = private unnamed_addr constant [34 x i8] c"horz. coord. of other end of axis\00", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c"y1\00", align 1
@.str.29 = private unnamed_addr constant [34 x i8] c"vert. coord. of other end of axis\00", align 1
@.str.30 = private unnamed_addr constant [20 x i8] c"transform-direction\00", align 1
@.str.31 = private unnamed_addr constant [20 x i8] c"transform direction\00", align 1
@.str.32 = private unnamed_addr constant [28 x i8] c"Direction of transformation\00", align 1
@.str.33 = private unnamed_addr constant [14 x i8] c"interpolation\00", align 1
@.str.34 = private unnamed_addr constant [22 x i8] c"Type of interpolation\00", align 1
@.str.35 = private unnamed_addr constant [12 x i8] c"supersample\00", align 1
@.str.36 = private unnamed_addr constant [86 x i8] c"This parameter is ignored, supersampling is performed based on the interpolation type\00", align 1
@.str.37 = private unnamed_addr constant [16 x i8] c"recursion-level\00", align 1
@.str.38 = private unnamed_addr constant [16 x i8] c"recursion level\00", align 1
@.str.39 = private unnamed_addr constant [67 x i8] c"Maximum recursion level used for supersampling (3 is a nice value)\00", align 1
@.str.40 = private unnamed_addr constant [37 x i8] c"gimp-drawable-transform-flip-default\00", align 1
@.str.41 = private unnamed_addr constant [12 x i8] c"interpolate\00", align 1
@.str.42 = private unnamed_addr constant [47 x i8] c"Whether to use interpolation and supersampling\00", align 1
@.str.43 = private unnamed_addr constant [36 x i8] c"gimp-drawable-transform-perspective\00", align 1
@.str.44 = private unnamed_addr constant [59 x i8] c"Deprecated: Use 'gimp-item-transform-perspective' instead.\00", align 1
@.str.45 = private unnamed_addr constant [32 x i8] c"gimp-item-transform-perspective\00", align 1
@.str.46 = private unnamed_addr constant [67 x i8] c"The new x coordinate of upper-left corner of original bounding box\00", align 1
@.str.47 = private unnamed_addr constant [67 x i8] c"The new y coordinate of upper-left corner of original bounding box\00", align 1
@.str.48 = private unnamed_addr constant [68 x i8] c"The new x coordinate of upper-right corner of original bounding box\00", align 1
@.str.49 = private unnamed_addr constant [68 x i8] c"The new y coordinate of upper-right corner of original bounding box\00", align 1
@.str.50 = private unnamed_addr constant [3 x i8] c"x2\00", align 1
@.str.51 = private unnamed_addr constant [67 x i8] c"The new x coordinate of lower-left corner of original bounding box\00", align 1
@.str.52 = private unnamed_addr constant [3 x i8] c"y2\00", align 1
@.str.53 = private unnamed_addr constant [67 x i8] c"The new y coordinate of lower-left corner of original bounding box\00", align 1
@.str.54 = private unnamed_addr constant [3 x i8] c"x3\00", align 1
@.str.55 = private unnamed_addr constant [68 x i8] c"The new x coordinate of lower-right corner of original bounding box\00", align 1
@.str.56 = private unnamed_addr constant [3 x i8] c"y3\00", align 1
@.str.57 = private unnamed_addr constant [68 x i8] c"The new y coordinate of lower-right corner of original bounding box\00", align 1
@.str.58 = private unnamed_addr constant [20 x i8] c"How to clip results\00", align 1
@.str.59 = private unnamed_addr constant [26 x i8] c"The newly mapped drawable\00", align 1
@.str.60 = private unnamed_addr constant [44 x i8] c"gimp-drawable-transform-perspective-default\00", align 1
@.str.61 = private unnamed_addr constant [38 x i8] c"gimp-drawable-transform-rotate-simple\00", align 1
@.str.62 = private unnamed_addr constant [61 x i8] c"Deprecated: Use 'gimp-item-transform-rotate-simple' instead.\00", align 1
@.str.63 = private unnamed_addr constant [34 x i8] c"gimp-item-transform-rotate-simple\00", align 1
@.str.64 = private unnamed_addr constant [12 x i8] c"rotate-type\00", align 1
@.str.65 = private unnamed_addr constant [12 x i8] c"rotate type\00", align 1
@.str.66 = private unnamed_addr constant [17 x i8] c"Type of rotation\00", align 1
@.str.67 = private unnamed_addr constant [60 x i8] c"Whether to automatically rotate around the selection center\00", align 1
@.str.68 = private unnamed_addr constant [9 x i8] c"center-x\00", align 1
@.str.69 = private unnamed_addr constant [9 x i8] c"center x\00", align 1
@.str.70 = private unnamed_addr constant [46 x i8] c"The hor. coordinate of the center of rotation\00", align 1
@.str.71 = private unnamed_addr constant [9 x i8] c"center-y\00", align 1
@.str.72 = private unnamed_addr constant [9 x i8] c"center y\00", align 1
@.str.73 = private unnamed_addr constant [47 x i8] c"The vert. coordinate of the center of rotation\00", align 1
@.str.74 = private unnamed_addr constant [21 x i8] c"The rotated drawable\00", align 1
@.str.75 = private unnamed_addr constant [31 x i8] c"gimp-drawable-transform-rotate\00", align 1
@.str.76 = private unnamed_addr constant [54 x i8] c"Deprecated: Use 'gimp-item-transform-rotate' instead.\00", align 1
@.str.77 = private unnamed_addr constant [27 x i8] c"gimp-item-transform-rotate\00", align 1
@.str.78 = private unnamed_addr constant [6 x i8] c"angle\00", align 1
@.str.79 = private unnamed_addr constant [32 x i8] c"The angle of rotation (radians)\00", align 1
@.str.80 = private unnamed_addr constant [39 x i8] c"gimp-drawable-transform-rotate-default\00", align 1
@.str.81 = private unnamed_addr constant [30 x i8] c"gimp-drawable-transform-scale\00", align 1
@.str.82 = private unnamed_addr constant [53 x i8] c"Deprecated: Use 'gimp-item-transform-scale' instead.\00", align 1
@.str.83 = private unnamed_addr constant [26 x i8] c"gimp-item-transform-scale\00", align 1
@.str.84 = private unnamed_addr constant [67 x i8] c"The new x coordinate of the upper-left corner of the scaled region\00", align 1
@.str.85 = private unnamed_addr constant [67 x i8] c"The new y coordinate of the upper-left corner of the scaled region\00", align 1
@.str.86 = private unnamed_addr constant [68 x i8] c"The new x coordinate of the lower-right corner of the scaled region\00", align 1
@.str.87 = private unnamed_addr constant [68 x i8] c"The new y coordinate of the lower-right corner of the scaled region\00", align 1
@.str.88 = private unnamed_addr constant [20 x i8] c"The scaled drawable\00", align 1
@.str.89 = private unnamed_addr constant [38 x i8] c"gimp-drawable-transform-scale-default\00", align 1
@.str.90 = private unnamed_addr constant [30 x i8] c"gimp-drawable-transform-shear\00", align 1
@.str.91 = private unnamed_addr constant [53 x i8] c"Deprecated: Use 'gimp-item-transform-shear' instead.\00", align 1
@.str.92 = private unnamed_addr constant [26 x i8] c"gimp-item-transform-shear\00", align 1
@.str.93 = private unnamed_addr constant [11 x i8] c"shear-type\00", align 1
@.str.94 = private unnamed_addr constant [11 x i8] c"shear type\00", align 1
@.str.95 = private unnamed_addr constant [14 x i8] c"Type of shear\00", align 1
@.str.96 = private unnamed_addr constant [10 x i8] c"magnitude\00", align 1
@.str.97 = private unnamed_addr constant [27 x i8] c"The magnitude of the shear\00", align 1
@.str.98 = private unnamed_addr constant [21 x i8] c"The sheared drawable\00", align 1
@.str.99 = private unnamed_addr constant [38 x i8] c"gimp-drawable-transform-shear-default\00", align 1
@.str.100 = private unnamed_addr constant [27 x i8] c"gimp-drawable-transform-2d\00", align 1
@.str.101 = private unnamed_addr constant [50 x i8] c"Deprecated: Use 'gimp-item-transform-2d' instead.\00", align 1
@.str.102 = private unnamed_addr constant [23 x i8] c"gimp-item-transform-2d\00", align 1
@.str.103 = private unnamed_addr constant [9 x i8] c"source-x\00", align 1
@.str.104 = private unnamed_addr constant [9 x i8] c"source x\00", align 1
@.str.105 = private unnamed_addr constant [42 x i8] c"X coordinate of the transformation center\00", align 1
@.str.106 = private unnamed_addr constant [9 x i8] c"source-y\00", align 1
@.str.107 = private unnamed_addr constant [9 x i8] c"source y\00", align 1
@.str.108 = private unnamed_addr constant [42 x i8] c"Y coordinate of the transformation center\00", align 1
@.str.109 = private unnamed_addr constant [8 x i8] c"scale-x\00", align 1
@.str.110 = private unnamed_addr constant [8 x i8] c"scale x\00", align 1
@.str.111 = private unnamed_addr constant [31 x i8] c"Amount to scale in x direction\00", align 1
@.str.112 = private unnamed_addr constant [8 x i8] c"scale-y\00", align 1
@.str.113 = private unnamed_addr constant [8 x i8] c"scale y\00", align 1
@.str.114 = private unnamed_addr constant [31 x i8] c"Amount to scale in y direction\00", align 1
@.str.115 = private unnamed_addr constant [7 x i8] c"dest-x\00", align 1
@.str.116 = private unnamed_addr constant [7 x i8] c"dest x\00", align 1
@.str.117 = private unnamed_addr constant [38 x i8] c"X coordinate of where the center goes\00", align 1
@.str.118 = private unnamed_addr constant [7 x i8] c"dest-y\00", align 1
@.str.119 = private unnamed_addr constant [7 x i8] c"dest y\00", align 1
@.str.120 = private unnamed_addr constant [38 x i8] c"Y coordinate of where the center goes\00", align 1
@.str.121 = private unnamed_addr constant [25 x i8] c"The transformed drawable\00", align 1
@.str.122 = private unnamed_addr constant [35 x i8] c"gimp-drawable-transform-2d-default\00", align 1
@.str.123 = private unnamed_addr constant [31 x i8] c"gimp-drawable-transform-matrix\00", align 1
@.str.124 = private unnamed_addr constant [54 x i8] c"Deprecated: Use 'gimp-item-transform-matrix' instead.\00", align 1
@.str.125 = private unnamed_addr constant [27 x i8] c"gimp-item-transform-matrix\00", align 1
@.str.126 = private unnamed_addr constant [10 x i8] c"coeff-0-0\00", align 1
@.str.127 = private unnamed_addr constant [10 x i8] c"coeff 0 0\00", align 1
@.str.128 = private unnamed_addr constant [47 x i8] c"coefficient (0,0) of the transformation matrix\00", align 1
@.str.129 = private unnamed_addr constant [10 x i8] c"coeff-0-1\00", align 1
@.str.130 = private unnamed_addr constant [10 x i8] c"coeff 0 1\00", align 1
@.str.131 = private unnamed_addr constant [47 x i8] c"coefficient (0,1) of the transformation matrix\00", align 1
@.str.132 = private unnamed_addr constant [10 x i8] c"coeff-0-2\00", align 1
@.str.133 = private unnamed_addr constant [10 x i8] c"coeff 0 2\00", align 1
@.str.134 = private unnamed_addr constant [47 x i8] c"coefficient (0,2) of the transformation matrix\00", align 1
@.str.135 = private unnamed_addr constant [10 x i8] c"coeff-1-0\00", align 1
@.str.136 = private unnamed_addr constant [10 x i8] c"coeff 1 0\00", align 1
@.str.137 = private unnamed_addr constant [47 x i8] c"coefficient (1,0) of the transformation matrix\00", align 1
@.str.138 = private unnamed_addr constant [10 x i8] c"coeff-1-1\00", align 1
@.str.139 = private unnamed_addr constant [10 x i8] c"coeff 1 1\00", align 1
@.str.140 = private unnamed_addr constant [47 x i8] c"coefficient (1,1) of the transformation matrix\00", align 1
@.str.141 = private unnamed_addr constant [10 x i8] c"coeff-1-2\00", align 1
@.str.142 = private unnamed_addr constant [10 x i8] c"coeff 1 2\00", align 1
@.str.143 = private unnamed_addr constant [47 x i8] c"coefficient (1,2) of the transformation matrix\00", align 1
@.str.144 = private unnamed_addr constant [10 x i8] c"coeff-2-0\00", align 1
@.str.145 = private unnamed_addr constant [10 x i8] c"coeff 2 0\00", align 1
@.str.146 = private unnamed_addr constant [47 x i8] c"coefficient (2,0) of the transformation matrix\00", align 1
@.str.147 = private unnamed_addr constant [10 x i8] c"coeff-2-1\00", align 1
@.str.148 = private unnamed_addr constant [10 x i8] c"coeff 2 1\00", align 1
@.str.149 = private unnamed_addr constant [47 x i8] c"coefficient (2,1) of the transformation matrix\00", align 1
@.str.150 = private unnamed_addr constant [10 x i8] c"coeff-2-2\00", align 1
@.str.151 = private unnamed_addr constant [10 x i8] c"coeff 2 2\00", align 1
@.str.152 = private unnamed_addr constant [47 x i8] c"coefficient (2,2) of the transformation matrix\00", align 1
@.str.153 = private unnamed_addr constant [39 x i8] c"gimp-drawable-transform-matrix-default\00", align 1
@.str.154 = private unnamed_addr constant [9 x i8] c"Flipping\00", align 1
@.str.155 = private unnamed_addr constant [12 x i8] c"Perspective\00", align 1
@.str.156 = private unnamed_addr constant [9 x i8] c"Rotating\00", align 1
@.str.157 = private unnamed_addr constant [8 x i8] c"Scaling\00", align 1
@.str.158 = private unnamed_addr constant [9 x i8] c"Shearing\00", align 1
@.str.159 = private unnamed_addr constant [13 x i8] c"2D Transform\00", align 1
@.str.160 = private unnamed_addr constant [16 x i8] c"2D Transforming\00", align 1

; Function Attrs: nounwind uwtable
define void @register_drawable_transform_procs(%struct._GimpPDB* %pdb) #0 {
entry:
  %pdb.addr = alloca %struct._GimpPDB*, align 8
  %procedure = alloca %struct._GimpProcedure*, align 8
  store %struct._GimpPDB* %pdb, %struct._GimpPDB** %pdb.addr, align 8
  %call = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @drawable_transform_flip_simple_invoker)
  store %struct._GimpProcedure* %call, %struct._GimpProcedure** %procedure, align 8
  %0 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %1 = bitcast %struct._GimpProcedure* %0 to %struct._GTypeInstance*
  %call1 = call i64 @gimp_object_get_type() #4
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call1)
  %2 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %2, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i32 0, i32 0))
  %3 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %3, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i32 0, i32 0))
  %4 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %5 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %5, i32 0, i32 1
  %6 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call3 = call %struct._GParamSpec* @gimp_param_spec_drawable_id(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i32 0, i32 0), %struct._Gimp* %6, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %4, %struct._GParamSpec* %call3)
  %7 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call4 = call i64 @gimp_orientation_type_get_type() #4
  %call5 = call %struct._GParamSpec* @gimp_param_spec_enum(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i64 %call4, i32 0, i32 227)
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
  %call8 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.12, i32 0, i32 0), i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %13, %struct._GParamSpec* %call8)
  %14 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call9 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %14, %struct._GParamSpec* %call9)
  %15 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call10 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.17, i32 0, i32 0), i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %15, %struct._GParamSpec* %call10)
  %16 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %17 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp11 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %17, i32 0, i32 1
  %18 = load %struct._Gimp*, %struct._Gimp** %gimp11, align 8
  %call12 = call %struct._GParamSpec* @gimp_param_spec_drawable_id(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.18, i32 0, i32 0), %struct._Gimp* %18, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %16, %struct._GParamSpec* %call12)
  %19 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %20 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %19, %struct._GimpProcedure* %20)
  %21 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %22 = bitcast %struct._GimpProcedure* %21 to i8*
  call void @g_object_unref(i8* %22)
  %call13 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @drawable_transform_flip_invoker)
  store %struct._GimpProcedure* %call13, %struct._GimpProcedure** %procedure, align 8
  %23 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %24 = bitcast %struct._GimpProcedure* %23 to %struct._GTypeInstance*
  %call14 = call i64 @gimp_object_get_type() #4
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call14)
  %25 = bitcast %struct._GTypeInstance* %call15 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %25, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.19, i32 0, i32 0))
  %26 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %26, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.21, i32 0, i32 0))
  %27 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %28 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp16 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %28, i32 0, i32 1
  %29 = load %struct._Gimp*, %struct._Gimp** %gimp16, align 8
  %call17 = call %struct._GParamSpec* @gimp_param_spec_drawable_id(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i32 0, i32 0), %struct._Gimp* %29, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %27, %struct._GParamSpec* %call17)
  %30 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call18 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.23, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %30, %struct._GParamSpec* %call18)
  %31 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call19 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.25, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %31, %struct._GParamSpec* %call19)
  %32 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call20 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.27, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %32, %struct._GParamSpec* %call20)
  %33 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call21 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.29, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %33, %struct._GParamSpec* %call21)
  %34 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call22 = call i64 @gimp_transform_direction_get_type() #4
  %call23 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.32, i32 0, i32 0), i64 %call22, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %34, %struct._GParamSpec* %call23)
  %35 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call24 = call i64 @gimp_interpolation_type_get_type() #4
  %call25 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.34, i32 0, i32 0), i64 %call24, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %35, %struct._GParamSpec* %call25)
  %36 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call26 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.36, i32 0, i32 0), i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %36, %struct._GParamSpec* %call26)
  %37 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call27 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.39, i32 0, i32 0), i32 1, i32 2147483647, i32 1, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %37, %struct._GParamSpec* %call27)
  %38 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call28 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.17, i32 0, i32 0), i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %38, %struct._GParamSpec* %call28)
  %39 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %40 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp29 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %40, i32 0, i32 1
  %41 = load %struct._Gimp*, %struct._Gimp** %gimp29, align 8
  %call30 = call %struct._GParamSpec* @gimp_param_spec_drawable_id(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.18, i32 0, i32 0), %struct._Gimp* %41, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %39, %struct._GParamSpec* %call30)
  %42 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %43 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %42, %struct._GimpProcedure* %43)
  %44 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %45 = bitcast %struct._GimpProcedure* %44 to i8*
  call void @g_object_unref(i8* %45)
  %call31 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @drawable_transform_flip_default_invoker)
  store %struct._GimpProcedure* %call31, %struct._GimpProcedure** %procedure, align 8
  %46 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %47 = bitcast %struct._GimpProcedure* %46 to %struct._GTypeInstance*
  %call32 = call i64 @gimp_object_get_type() #4
  %call33 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %47, i64 %call32)
  %48 = bitcast %struct._GTypeInstance* %call33 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %48, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.40, i32 0, i32 0))
  %49 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %49, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.21, i32 0, i32 0))
  %50 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %51 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp34 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %51, i32 0, i32 1
  %52 = load %struct._Gimp*, %struct._Gimp** %gimp34, align 8
  %call35 = call %struct._GParamSpec* @gimp_param_spec_drawable_id(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i32 0, i32 0), %struct._Gimp* %52, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %50, %struct._GParamSpec* %call35)
  %53 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call36 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.23, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %53, %struct._GParamSpec* %call36)
  %54 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call37 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.25, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %54, %struct._GParamSpec* %call37)
  %55 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call38 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.27, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %55, %struct._GParamSpec* %call38)
  %56 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call39 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.29, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %56, %struct._GParamSpec* %call39)
  %57 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call40 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.42, i32 0, i32 0), i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %57, %struct._GParamSpec* %call40)
  %58 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call41 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.17, i32 0, i32 0), i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %58, %struct._GParamSpec* %call41)
  %59 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %60 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp42 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %60, i32 0, i32 1
  %61 = load %struct._Gimp*, %struct._Gimp** %gimp42, align 8
  %call43 = call %struct._GParamSpec* @gimp_param_spec_drawable_id(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.18, i32 0, i32 0), %struct._Gimp* %61, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %59, %struct._GParamSpec* %call43)
  %62 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %63 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %62, %struct._GimpProcedure* %63)
  %64 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %65 = bitcast %struct._GimpProcedure* %64 to i8*
  call void @g_object_unref(i8* %65)
  %call44 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @drawable_transform_perspective_invoker)
  store %struct._GimpProcedure* %call44, %struct._GimpProcedure** %procedure, align 8
  %66 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %67 = bitcast %struct._GimpProcedure* %66 to %struct._GTypeInstance*
  %call45 = call i64 @gimp_object_get_type() #4
  %call46 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %67, i64 %call45)
  %68 = bitcast %struct._GTypeInstance* %call46 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %68, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.43, i32 0, i32 0))
  %69 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %69, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.45, i32 0, i32 0))
  %70 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %71 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp47 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %71, i32 0, i32 1
  %72 = load %struct._Gimp*, %struct._Gimp** %gimp47, align 8
  %call48 = call %struct._GParamSpec* @gimp_param_spec_drawable_id(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i32 0, i32 0), %struct._Gimp* %72, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %70, %struct._GParamSpec* %call48)
  %73 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call49 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.46, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %73, %struct._GParamSpec* %call49)
  %74 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call50 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.47, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %74, %struct._GParamSpec* %call50)
  %75 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call51 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.48, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %75, %struct._GParamSpec* %call51)
  %76 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call52 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.49, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %76, %struct._GParamSpec* %call52)
  %77 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call53 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.51, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %77, %struct._GParamSpec* %call53)
  %78 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call54 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.53, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %78, %struct._GParamSpec* %call54)
  %79 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call55 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.55, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %79, %struct._GParamSpec* %call55)
  %80 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call56 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.57, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %80, %struct._GParamSpec* %call56)
  %81 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call57 = call i64 @gimp_transform_direction_get_type() #4
  %call58 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.32, i32 0, i32 0), i64 %call57, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %81, %struct._GParamSpec* %call58)
  %82 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call59 = call i64 @gimp_interpolation_type_get_type() #4
  %call60 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.34, i32 0, i32 0), i64 %call59, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %82, %struct._GParamSpec* %call60)
  %83 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call61 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.36, i32 0, i32 0), i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %83, %struct._GParamSpec* %call61)
  %84 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call62 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.39, i32 0, i32 0), i32 1, i32 2147483647, i32 1, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %84, %struct._GParamSpec* %call62)
  %85 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call63 = call i64 @gimp_transform_resize_get_type() #4
  %call64 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.58, i32 0, i32 0), i64 %call63, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %85, %struct._GParamSpec* %call64)
  %86 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %87 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp65 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %87, i32 0, i32 1
  %88 = load %struct._Gimp*, %struct._Gimp** %gimp65, align 8
  %call66 = call %struct._GParamSpec* @gimp_param_spec_drawable_id(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.59, i32 0, i32 0), %struct._Gimp* %88, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %86, %struct._GParamSpec* %call66)
  %89 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %90 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %89, %struct._GimpProcedure* %90)
  %91 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %92 = bitcast %struct._GimpProcedure* %91 to i8*
  call void @g_object_unref(i8* %92)
  %call67 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @drawable_transform_perspective_default_invoker)
  store %struct._GimpProcedure* %call67, %struct._GimpProcedure** %procedure, align 8
  %93 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %94 = bitcast %struct._GimpProcedure* %93 to %struct._GTypeInstance*
  %call68 = call i64 @gimp_object_get_type() #4
  %call69 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %94, i64 %call68)
  %95 = bitcast %struct._GTypeInstance* %call69 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %95, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.60, i32 0, i32 0))
  %96 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %96, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.45, i32 0, i32 0))
  %97 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %98 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp70 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %98, i32 0, i32 1
  %99 = load %struct._Gimp*, %struct._Gimp** %gimp70, align 8
  %call71 = call %struct._GParamSpec* @gimp_param_spec_drawable_id(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i32 0, i32 0), %struct._Gimp* %99, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %97, %struct._GParamSpec* %call71)
  %100 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call72 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.46, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %100, %struct._GParamSpec* %call72)
  %101 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call73 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.47, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %101, %struct._GParamSpec* %call73)
  %102 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call74 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.48, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %102, %struct._GParamSpec* %call74)
  %103 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call75 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.49, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %103, %struct._GParamSpec* %call75)
  %104 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call76 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.51, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %104, %struct._GParamSpec* %call76)
  %105 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call77 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.53, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %105, %struct._GParamSpec* %call77)
  %106 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call78 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.55, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %106, %struct._GParamSpec* %call78)
  %107 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call79 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.57, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %107, %struct._GParamSpec* %call79)
  %108 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call80 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.42, i32 0, i32 0), i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %108, %struct._GParamSpec* %call80)
  %109 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call81 = call i64 @gimp_transform_resize_get_type() #4
  %call82 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.58, i32 0, i32 0), i64 %call81, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %109, %struct._GParamSpec* %call82)
  %110 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %111 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp83 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %111, i32 0, i32 1
  %112 = load %struct._Gimp*, %struct._Gimp** %gimp83, align 8
  %call84 = call %struct._GParamSpec* @gimp_param_spec_drawable_id(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.59, i32 0, i32 0), %struct._Gimp* %112, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %110, %struct._GParamSpec* %call84)
  %113 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %114 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %113, %struct._GimpProcedure* %114)
  %115 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %116 = bitcast %struct._GimpProcedure* %115 to i8*
  call void @g_object_unref(i8* %116)
  %call85 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @drawable_transform_rotate_simple_invoker)
  store %struct._GimpProcedure* %call85, %struct._GimpProcedure** %procedure, align 8
  %117 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %118 = bitcast %struct._GimpProcedure* %117 to %struct._GTypeInstance*
  %call86 = call i64 @gimp_object_get_type() #4
  %call87 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %118, i64 %call86)
  %119 = bitcast %struct._GTypeInstance* %call87 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %119, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.61, i32 0, i32 0))
  %120 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %120, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.63, i32 0, i32 0))
  %121 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %122 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp88 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %122, i32 0, i32 1
  %123 = load %struct._Gimp*, %struct._Gimp** %gimp88, align 8
  %call89 = call %struct._GParamSpec* @gimp_param_spec_drawable_id(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i32 0, i32 0), %struct._Gimp* %123, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %121, %struct._GParamSpec* %call89)
  %124 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call90 = call i64 @gimp_rotation_type_get_type() #4
  %call91 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.66, i32 0, i32 0), i64 %call90, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %124, %struct._GParamSpec* %call91)
  %125 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call92 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.67, i32 0, i32 0), i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %125, %struct._GParamSpec* %call92)
  %126 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call93 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.70, i32 0, i32 0), i32 -2147483648, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %126, %struct._GParamSpec* %call93)
  %127 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call94 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.72, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.73, i32 0, i32 0), i32 -2147483648, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %127, %struct._GParamSpec* %call94)
  %128 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call95 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.17, i32 0, i32 0), i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %128, %struct._GParamSpec* %call95)
  %129 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %130 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp96 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %130, i32 0, i32 1
  %131 = load %struct._Gimp*, %struct._Gimp** %gimp96, align 8
  %call97 = call %struct._GParamSpec* @gimp_param_spec_drawable_id(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.74, i32 0, i32 0), %struct._Gimp* %131, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %129, %struct._GParamSpec* %call97)
  %132 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %133 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %132, %struct._GimpProcedure* %133)
  %134 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %135 = bitcast %struct._GimpProcedure* %134 to i8*
  call void @g_object_unref(i8* %135)
  %call98 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @drawable_transform_rotate_invoker)
  store %struct._GimpProcedure* %call98, %struct._GimpProcedure** %procedure, align 8
  %136 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %137 = bitcast %struct._GimpProcedure* %136 to %struct._GTypeInstance*
  %call99 = call i64 @gimp_object_get_type() #4
  %call100 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %137, i64 %call99)
  %138 = bitcast %struct._GTypeInstance* %call100 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %138, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.75, i32 0, i32 0))
  %139 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %139, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.75, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.76, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.76, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.77, i32 0, i32 0))
  %140 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %141 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp101 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %141, i32 0, i32 1
  %142 = load %struct._Gimp*, %struct._Gimp** %gimp101, align 8
  %call102 = call %struct._GParamSpec* @gimp_param_spec_drawable_id(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i32 0, i32 0), %struct._Gimp* %142, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %140, %struct._GParamSpec* %call102)
  %143 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call103 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.79, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %143, %struct._GParamSpec* %call103)
  %144 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call104 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.67, i32 0, i32 0), i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %144, %struct._GParamSpec* %call104)
  %145 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call105 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.70, i32 0, i32 0), i32 -2147483648, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %145, %struct._GParamSpec* %call105)
  %146 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call106 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.72, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.73, i32 0, i32 0), i32 -2147483648, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %146, %struct._GParamSpec* %call106)
  %147 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call107 = call i64 @gimp_transform_direction_get_type() #4
  %call108 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.32, i32 0, i32 0), i64 %call107, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %147, %struct._GParamSpec* %call108)
  %148 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call109 = call i64 @gimp_interpolation_type_get_type() #4
  %call110 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.34, i32 0, i32 0), i64 %call109, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %148, %struct._GParamSpec* %call110)
  %149 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call111 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.36, i32 0, i32 0), i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %149, %struct._GParamSpec* %call111)
  %150 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call112 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.39, i32 0, i32 0), i32 1, i32 2147483647, i32 1, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %150, %struct._GParamSpec* %call112)
  %151 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call113 = call i64 @gimp_transform_resize_get_type() #4
  %call114 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.58, i32 0, i32 0), i64 %call113, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %151, %struct._GParamSpec* %call114)
  %152 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %153 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp115 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %153, i32 0, i32 1
  %154 = load %struct._Gimp*, %struct._Gimp** %gimp115, align 8
  %call116 = call %struct._GParamSpec* @gimp_param_spec_drawable_id(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.74, i32 0, i32 0), %struct._Gimp* %154, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %152, %struct._GParamSpec* %call116)
  %155 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %156 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %155, %struct._GimpProcedure* %156)
  %157 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %158 = bitcast %struct._GimpProcedure* %157 to i8*
  call void @g_object_unref(i8* %158)
  %call117 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @drawable_transform_rotate_default_invoker)
  store %struct._GimpProcedure* %call117, %struct._GimpProcedure** %procedure, align 8
  %159 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %160 = bitcast %struct._GimpProcedure* %159 to %struct._GTypeInstance*
  %call118 = call i64 @gimp_object_get_type() #4
  %call119 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %160, i64 %call118)
  %161 = bitcast %struct._GTypeInstance* %call119 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %161, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.80, i32 0, i32 0))
  %162 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %162, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.80, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.76, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.76, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.77, i32 0, i32 0))
  %163 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %164 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp120 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %164, i32 0, i32 1
  %165 = load %struct._Gimp*, %struct._Gimp** %gimp120, align 8
  %call121 = call %struct._GParamSpec* @gimp_param_spec_drawable_id(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i32 0, i32 0), %struct._Gimp* %165, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %163, %struct._GParamSpec* %call121)
  %166 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call122 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.79, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %166, %struct._GParamSpec* %call122)
  %167 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call123 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.67, i32 0, i32 0), i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %167, %struct._GParamSpec* %call123)
  %168 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call124 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.70, i32 0, i32 0), i32 -2147483648, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %168, %struct._GParamSpec* %call124)
  %169 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call125 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.72, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.73, i32 0, i32 0), i32 -2147483648, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %169, %struct._GParamSpec* %call125)
  %170 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call126 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.42, i32 0, i32 0), i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %170, %struct._GParamSpec* %call126)
  %171 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call127 = call i64 @gimp_transform_resize_get_type() #4
  %call128 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.58, i32 0, i32 0), i64 %call127, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %171, %struct._GParamSpec* %call128)
  %172 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %173 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp129 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %173, i32 0, i32 1
  %174 = load %struct._Gimp*, %struct._Gimp** %gimp129, align 8
  %call130 = call %struct._GParamSpec* @gimp_param_spec_drawable_id(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.74, i32 0, i32 0), %struct._Gimp* %174, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %172, %struct._GParamSpec* %call130)
  %175 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %176 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %175, %struct._GimpProcedure* %176)
  %177 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %178 = bitcast %struct._GimpProcedure* %177 to i8*
  call void @g_object_unref(i8* %178)
  %call131 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @drawable_transform_scale_invoker)
  store %struct._GimpProcedure* %call131, %struct._GimpProcedure** %procedure, align 8
  %179 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %180 = bitcast %struct._GimpProcedure* %179 to %struct._GTypeInstance*
  %call132 = call i64 @gimp_object_get_type() #4
  %call133 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %180, i64 %call132)
  %181 = bitcast %struct._GTypeInstance* %call133 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %181, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.81, i32 0, i32 0))
  %182 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %182, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.81, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.82, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.82, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.83, i32 0, i32 0))
  %183 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %184 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp134 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %184, i32 0, i32 1
  %185 = load %struct._Gimp*, %struct._Gimp** %gimp134, align 8
  %call135 = call %struct._GParamSpec* @gimp_param_spec_drawable_id(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i32 0, i32 0), %struct._Gimp* %185, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %183, %struct._GParamSpec* %call135)
  %186 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call136 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.84, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %186, %struct._GParamSpec* %call136)
  %187 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call137 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.85, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %187, %struct._GParamSpec* %call137)
  %188 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call138 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.86, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %188, %struct._GParamSpec* %call138)
  %189 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call139 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.87, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %189, %struct._GParamSpec* %call139)
  %190 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call140 = call i64 @gimp_transform_direction_get_type() #4
  %call141 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.32, i32 0, i32 0), i64 %call140, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %190, %struct._GParamSpec* %call141)
  %191 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call142 = call i64 @gimp_interpolation_type_get_type() #4
  %call143 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.34, i32 0, i32 0), i64 %call142, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %191, %struct._GParamSpec* %call143)
  %192 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call144 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.36, i32 0, i32 0), i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %192, %struct._GParamSpec* %call144)
  %193 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call145 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.39, i32 0, i32 0), i32 1, i32 2147483647, i32 1, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %193, %struct._GParamSpec* %call145)
  %194 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call146 = call i64 @gimp_transform_resize_get_type() #4
  %call147 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.58, i32 0, i32 0), i64 %call146, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %194, %struct._GParamSpec* %call147)
  %195 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %196 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp148 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %196, i32 0, i32 1
  %197 = load %struct._Gimp*, %struct._Gimp** %gimp148, align 8
  %call149 = call %struct._GParamSpec* @gimp_param_spec_drawable_id(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.88, i32 0, i32 0), %struct._Gimp* %197, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %195, %struct._GParamSpec* %call149)
  %198 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %199 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %198, %struct._GimpProcedure* %199)
  %200 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %201 = bitcast %struct._GimpProcedure* %200 to i8*
  call void @g_object_unref(i8* %201)
  %call150 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @drawable_transform_scale_default_invoker)
  store %struct._GimpProcedure* %call150, %struct._GimpProcedure** %procedure, align 8
  %202 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %203 = bitcast %struct._GimpProcedure* %202 to %struct._GTypeInstance*
  %call151 = call i64 @gimp_object_get_type() #4
  %call152 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %203, i64 %call151)
  %204 = bitcast %struct._GTypeInstance* %call152 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %204, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.89, i32 0, i32 0))
  %205 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %205, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.89, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.82, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.82, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.83, i32 0, i32 0))
  %206 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %207 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp153 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %207, i32 0, i32 1
  %208 = load %struct._Gimp*, %struct._Gimp** %gimp153, align 8
  %call154 = call %struct._GParamSpec* @gimp_param_spec_drawable_id(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i32 0, i32 0), %struct._Gimp* %208, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %206, %struct._GParamSpec* %call154)
  %209 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call155 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.84, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %209, %struct._GParamSpec* %call155)
  %210 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call156 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.85, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %210, %struct._GParamSpec* %call156)
  %211 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call157 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.86, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %211, %struct._GParamSpec* %call157)
  %212 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call158 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.87, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %212, %struct._GParamSpec* %call158)
  %213 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call159 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.42, i32 0, i32 0), i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %213, %struct._GParamSpec* %call159)
  %214 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call160 = call i64 @gimp_transform_resize_get_type() #4
  %call161 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.58, i32 0, i32 0), i64 %call160, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %214, %struct._GParamSpec* %call161)
  %215 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %216 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp162 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %216, i32 0, i32 1
  %217 = load %struct._Gimp*, %struct._Gimp** %gimp162, align 8
  %call163 = call %struct._GParamSpec* @gimp_param_spec_drawable_id(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.88, i32 0, i32 0), %struct._Gimp* %217, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %215, %struct._GParamSpec* %call163)
  %218 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %219 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %218, %struct._GimpProcedure* %219)
  %220 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %221 = bitcast %struct._GimpProcedure* %220 to i8*
  call void @g_object_unref(i8* %221)
  %call164 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @drawable_transform_shear_invoker)
  store %struct._GimpProcedure* %call164, %struct._GimpProcedure** %procedure, align 8
  %222 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %223 = bitcast %struct._GimpProcedure* %222 to %struct._GTypeInstance*
  %call165 = call i64 @gimp_object_get_type() #4
  %call166 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %223, i64 %call165)
  %224 = bitcast %struct._GTypeInstance* %call166 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %224, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.90, i32 0, i32 0))
  %225 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %225, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.90, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.91, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.91, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.92, i32 0, i32 0))
  %226 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %227 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp167 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %227, i32 0, i32 1
  %228 = load %struct._Gimp*, %struct._Gimp** %gimp167, align 8
  %call168 = call %struct._GParamSpec* @gimp_param_spec_drawable_id(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i32 0, i32 0), %struct._Gimp* %228, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %226, %struct._GParamSpec* %call168)
  %229 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call169 = call i64 @gimp_orientation_type_get_type() #4
  %call170 = call %struct._GParamSpec* @gimp_param_spec_enum(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.93, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.94, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.95, i32 0, i32 0), i64 %call169, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %229, %struct._GParamSpec* %call170)
  %230 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %args171 = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %230, i32 0, i32 11
  %231 = load %struct._GParamSpec**, %struct._GParamSpec*** %args171, align 8
  %arrayidx172 = getelementptr inbounds %struct._GParamSpec*, %struct._GParamSpec** %231, i64 1
  %232 = load %struct._GParamSpec*, %struct._GParamSpec** %arrayidx172, align 8
  %233 = bitcast %struct._GParamSpec* %232 to %struct._GTypeInstance*
  %call173 = call i64 @gimp_param_enum_get_type() #4
  %call174 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %233, i64 %call173)
  %234 = bitcast %struct._GTypeInstance* %call174 to %struct._GimpParamSpecEnum*
  call void @gimp_param_spec_enum_exclude_value(%struct._GimpParamSpecEnum* %234, i32 2)
  %235 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call175 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.96, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.96, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.97, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %235, %struct._GParamSpec* %call175)
  %236 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call176 = call i64 @gimp_transform_direction_get_type() #4
  %call177 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.32, i32 0, i32 0), i64 %call176, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %236, %struct._GParamSpec* %call177)
  %237 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call178 = call i64 @gimp_interpolation_type_get_type() #4
  %call179 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.34, i32 0, i32 0), i64 %call178, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %237, %struct._GParamSpec* %call179)
  %238 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call180 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.36, i32 0, i32 0), i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %238, %struct._GParamSpec* %call180)
  %239 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call181 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.39, i32 0, i32 0), i32 1, i32 2147483647, i32 1, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %239, %struct._GParamSpec* %call181)
  %240 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call182 = call i64 @gimp_transform_resize_get_type() #4
  %call183 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.58, i32 0, i32 0), i64 %call182, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %240, %struct._GParamSpec* %call183)
  %241 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %242 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp184 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %242, i32 0, i32 1
  %243 = load %struct._Gimp*, %struct._Gimp** %gimp184, align 8
  %call185 = call %struct._GParamSpec* @gimp_param_spec_drawable_id(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.98, i32 0, i32 0), %struct._Gimp* %243, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %241, %struct._GParamSpec* %call185)
  %244 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %245 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %244, %struct._GimpProcedure* %245)
  %246 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %247 = bitcast %struct._GimpProcedure* %246 to i8*
  call void @g_object_unref(i8* %247)
  %call186 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @drawable_transform_shear_default_invoker)
  store %struct._GimpProcedure* %call186, %struct._GimpProcedure** %procedure, align 8
  %248 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %249 = bitcast %struct._GimpProcedure* %248 to %struct._GTypeInstance*
  %call187 = call i64 @gimp_object_get_type() #4
  %call188 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %249, i64 %call187)
  %250 = bitcast %struct._GTypeInstance* %call188 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %250, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.99, i32 0, i32 0))
  %251 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %251, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.99, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.91, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.91, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.92, i32 0, i32 0))
  %252 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %253 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp189 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %253, i32 0, i32 1
  %254 = load %struct._Gimp*, %struct._Gimp** %gimp189, align 8
  %call190 = call %struct._GParamSpec* @gimp_param_spec_drawable_id(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i32 0, i32 0), %struct._Gimp* %254, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %252, %struct._GParamSpec* %call190)
  %255 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call191 = call i64 @gimp_orientation_type_get_type() #4
  %call192 = call %struct._GParamSpec* @gimp_param_spec_enum(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.93, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.94, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.95, i32 0, i32 0), i64 %call191, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %255, %struct._GParamSpec* %call192)
  %256 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %args193 = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %256, i32 0, i32 11
  %257 = load %struct._GParamSpec**, %struct._GParamSpec*** %args193, align 8
  %arrayidx194 = getelementptr inbounds %struct._GParamSpec*, %struct._GParamSpec** %257, i64 1
  %258 = load %struct._GParamSpec*, %struct._GParamSpec** %arrayidx194, align 8
  %259 = bitcast %struct._GParamSpec* %258 to %struct._GTypeInstance*
  %call195 = call i64 @gimp_param_enum_get_type() #4
  %call196 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %259, i64 %call195)
  %260 = bitcast %struct._GTypeInstance* %call196 to %struct._GimpParamSpecEnum*
  call void @gimp_param_spec_enum_exclude_value(%struct._GimpParamSpecEnum* %260, i32 2)
  %261 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call197 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.96, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.96, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.97, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %261, %struct._GParamSpec* %call197)
  %262 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call198 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.42, i32 0, i32 0), i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %262, %struct._GParamSpec* %call198)
  %263 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call199 = call i64 @gimp_transform_resize_get_type() #4
  %call200 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.58, i32 0, i32 0), i64 %call199, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %263, %struct._GParamSpec* %call200)
  %264 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %265 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp201 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %265, i32 0, i32 1
  %266 = load %struct._Gimp*, %struct._Gimp** %gimp201, align 8
  %call202 = call %struct._GParamSpec* @gimp_param_spec_drawable_id(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.98, i32 0, i32 0), %struct._Gimp* %266, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %264, %struct._GParamSpec* %call202)
  %267 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %268 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %267, %struct._GimpProcedure* %268)
  %269 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %270 = bitcast %struct._GimpProcedure* %269 to i8*
  call void @g_object_unref(i8* %270)
  %call203 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @drawable_transform_2d_invoker)
  store %struct._GimpProcedure* %call203, %struct._GimpProcedure** %procedure, align 8
  %271 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %272 = bitcast %struct._GimpProcedure* %271 to %struct._GTypeInstance*
  %call204 = call i64 @gimp_object_get_type() #4
  %call205 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %272, i64 %call204)
  %273 = bitcast %struct._GTypeInstance* %call205 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %273, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.100, i32 0, i32 0))
  %274 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %274, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.100, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.101, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.101, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.102, i32 0, i32 0))
  %275 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %276 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp206 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %276, i32 0, i32 1
  %277 = load %struct._Gimp*, %struct._Gimp** %gimp206, align 8
  %call207 = call %struct._GParamSpec* @gimp_param_spec_drawable_id(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i32 0, i32 0), %struct._Gimp* %277, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %275, %struct._GParamSpec* %call207)
  %278 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call208 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.103, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.104, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.105, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %278, %struct._GParamSpec* %call208)
  %279 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call209 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.106, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.107, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.108, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %279, %struct._GParamSpec* %call209)
  %280 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call210 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.109, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.110, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.111, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %280, %struct._GParamSpec* %call210)
  %281 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call211 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.112, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.113, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.114, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %281, %struct._GParamSpec* %call211)
  %282 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call212 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.79, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %282, %struct._GParamSpec* %call212)
  %283 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call213 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.115, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.116, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.117, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %283, %struct._GParamSpec* %call213)
  %284 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call214 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.118, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.119, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.120, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %284, %struct._GParamSpec* %call214)
  %285 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call215 = call i64 @gimp_transform_direction_get_type() #4
  %call216 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.32, i32 0, i32 0), i64 %call215, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %285, %struct._GParamSpec* %call216)
  %286 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call217 = call i64 @gimp_interpolation_type_get_type() #4
  %call218 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.34, i32 0, i32 0), i64 %call217, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %286, %struct._GParamSpec* %call218)
  %287 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call219 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.36, i32 0, i32 0), i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %287, %struct._GParamSpec* %call219)
  %288 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call220 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.39, i32 0, i32 0), i32 1, i32 2147483647, i32 1, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %288, %struct._GParamSpec* %call220)
  %289 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call221 = call i64 @gimp_transform_resize_get_type() #4
  %call222 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.58, i32 0, i32 0), i64 %call221, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %289, %struct._GParamSpec* %call222)
  %290 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %291 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp223 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %291, i32 0, i32 1
  %292 = load %struct._Gimp*, %struct._Gimp** %gimp223, align 8
  %call224 = call %struct._GParamSpec* @gimp_param_spec_drawable_id(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.121, i32 0, i32 0), %struct._Gimp* %292, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %290, %struct._GParamSpec* %call224)
  %293 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %294 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %293, %struct._GimpProcedure* %294)
  %295 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %296 = bitcast %struct._GimpProcedure* %295 to i8*
  call void @g_object_unref(i8* %296)
  %call225 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @drawable_transform_2d_default_invoker)
  store %struct._GimpProcedure* %call225, %struct._GimpProcedure** %procedure, align 8
  %297 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %298 = bitcast %struct._GimpProcedure* %297 to %struct._GTypeInstance*
  %call226 = call i64 @gimp_object_get_type() #4
  %call227 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %298, i64 %call226)
  %299 = bitcast %struct._GTypeInstance* %call227 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %299, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.122, i32 0, i32 0))
  %300 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %300, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.122, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.101, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.101, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.102, i32 0, i32 0))
  %301 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %302 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp228 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %302, i32 0, i32 1
  %303 = load %struct._Gimp*, %struct._Gimp** %gimp228, align 8
  %call229 = call %struct._GParamSpec* @gimp_param_spec_drawable_id(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i32 0, i32 0), %struct._Gimp* %303, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %301, %struct._GParamSpec* %call229)
  %304 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call230 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.103, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.104, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.105, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %304, %struct._GParamSpec* %call230)
  %305 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call231 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.106, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.107, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.108, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %305, %struct._GParamSpec* %call231)
  %306 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call232 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.109, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.110, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.111, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %306, %struct._GParamSpec* %call232)
  %307 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call233 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.112, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.113, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.114, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %307, %struct._GParamSpec* %call233)
  %308 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call234 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.79, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %308, %struct._GParamSpec* %call234)
  %309 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call235 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.115, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.116, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.117, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %309, %struct._GParamSpec* %call235)
  %310 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call236 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.118, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.119, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.120, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %310, %struct._GParamSpec* %call236)
  %311 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call237 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.42, i32 0, i32 0), i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %311, %struct._GParamSpec* %call237)
  %312 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call238 = call i64 @gimp_transform_resize_get_type() #4
  %call239 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.58, i32 0, i32 0), i64 %call238, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %312, %struct._GParamSpec* %call239)
  %313 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %314 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp240 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %314, i32 0, i32 1
  %315 = load %struct._Gimp*, %struct._Gimp** %gimp240, align 8
  %call241 = call %struct._GParamSpec* @gimp_param_spec_drawable_id(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.121, i32 0, i32 0), %struct._Gimp* %315, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %313, %struct._GParamSpec* %call241)
  %316 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %317 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %316, %struct._GimpProcedure* %317)
  %318 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %319 = bitcast %struct._GimpProcedure* %318 to i8*
  call void @g_object_unref(i8* %319)
  %call242 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @drawable_transform_matrix_invoker)
  store %struct._GimpProcedure* %call242, %struct._GimpProcedure** %procedure, align 8
  %320 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %321 = bitcast %struct._GimpProcedure* %320 to %struct._GTypeInstance*
  %call243 = call i64 @gimp_object_get_type() #4
  %call244 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %321, i64 %call243)
  %322 = bitcast %struct._GTypeInstance* %call244 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %322, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.123, i32 0, i32 0))
  %323 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %323, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.123, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.124, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.124, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.125, i32 0, i32 0))
  %324 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %325 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp245 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %325, i32 0, i32 1
  %326 = load %struct._Gimp*, %struct._Gimp** %gimp245, align 8
  %call246 = call %struct._GParamSpec* @gimp_param_spec_drawable_id(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i32 0, i32 0), %struct._Gimp* %326, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %324, %struct._GParamSpec* %call246)
  %327 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call247 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.126, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.127, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.128, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %327, %struct._GParamSpec* %call247)
  %328 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call248 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.129, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.130, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.131, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %328, %struct._GParamSpec* %call248)
  %329 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call249 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.132, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.133, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.134, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %329, %struct._GParamSpec* %call249)
  %330 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call250 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.135, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.136, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.137, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %330, %struct._GParamSpec* %call250)
  %331 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call251 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.138, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.139, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.140, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %331, %struct._GParamSpec* %call251)
  %332 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call252 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.141, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.142, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.143, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %332, %struct._GParamSpec* %call252)
  %333 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call253 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.144, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.145, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.146, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %333, %struct._GParamSpec* %call253)
  %334 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call254 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.147, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.148, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.149, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %334, %struct._GParamSpec* %call254)
  %335 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call255 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.150, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.151, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.152, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %335, %struct._GParamSpec* %call255)
  %336 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call256 = call i64 @gimp_transform_direction_get_type() #4
  %call257 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.32, i32 0, i32 0), i64 %call256, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %336, %struct._GParamSpec* %call257)
  %337 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call258 = call i64 @gimp_interpolation_type_get_type() #4
  %call259 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.34, i32 0, i32 0), i64 %call258, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %337, %struct._GParamSpec* %call259)
  %338 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call260 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.36, i32 0, i32 0), i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %338, %struct._GParamSpec* %call260)
  %339 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call261 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.39, i32 0, i32 0), i32 1, i32 2147483647, i32 1, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %339, %struct._GParamSpec* %call261)
  %340 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call262 = call i64 @gimp_transform_resize_get_type() #4
  %call263 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.58, i32 0, i32 0), i64 %call262, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %340, %struct._GParamSpec* %call263)
  %341 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %342 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp264 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %342, i32 0, i32 1
  %343 = load %struct._Gimp*, %struct._Gimp** %gimp264, align 8
  %call265 = call %struct._GParamSpec* @gimp_param_spec_drawable_id(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.121, i32 0, i32 0), %struct._Gimp* %343, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %341, %struct._GParamSpec* %call265)
  %344 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %345 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %344, %struct._GimpProcedure* %345)
  %346 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %347 = bitcast %struct._GimpProcedure* %346 to i8*
  call void @g_object_unref(i8* %347)
  %call266 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @drawable_transform_matrix_default_invoker)
  store %struct._GimpProcedure* %call266, %struct._GimpProcedure** %procedure, align 8
  %348 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %349 = bitcast %struct._GimpProcedure* %348 to %struct._GTypeInstance*
  %call267 = call i64 @gimp_object_get_type() #4
  %call268 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %349, i64 %call267)
  %350 = bitcast %struct._GTypeInstance* %call268 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %350, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.153, i32 0, i32 0))
  %351 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %351, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.153, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.124, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.124, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.125, i32 0, i32 0))
  %352 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %353 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp269 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %353, i32 0, i32 1
  %354 = load %struct._Gimp*, %struct._Gimp** %gimp269, align 8
  %call270 = call %struct._GParamSpec* @gimp_param_spec_drawable_id(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i32 0, i32 0), %struct._Gimp* %354, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %352, %struct._GParamSpec* %call270)
  %355 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call271 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.126, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.127, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.128, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %355, %struct._GParamSpec* %call271)
  %356 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call272 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.129, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.130, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.131, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %356, %struct._GParamSpec* %call272)
  %357 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call273 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.132, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.133, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.134, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %357, %struct._GParamSpec* %call273)
  %358 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call274 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.135, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.136, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.137, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %358, %struct._GParamSpec* %call274)
  %359 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call275 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.138, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.139, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.140, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %359, %struct._GParamSpec* %call275)
  %360 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call276 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.141, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.142, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.143, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %360, %struct._GParamSpec* %call276)
  %361 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call277 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.144, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.145, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.146, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %361, %struct._GParamSpec* %call277)
  %362 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call278 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.147, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.148, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.149, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %362, %struct._GParamSpec* %call278)
  %363 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call279 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.150, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.151, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.152, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %363, %struct._GParamSpec* %call279)
  %364 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call280 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.42, i32 0, i32 0), i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %364, %struct._GParamSpec* %call280)
  %365 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call281 = call i64 @gimp_transform_resize_get_type() #4
  %call282 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.58, i32 0, i32 0), i64 %call281, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %365, %struct._GParamSpec* %call282)
  %366 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %367 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp283 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %367, i32 0, i32 1
  %368 = load %struct._Gimp*, %struct._Gimp** %gimp283, align 8
  %call284 = call %struct._GParamSpec* @gimp_param_spec_drawable_id(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.121, i32 0, i32 0), %struct._Gimp* %368, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %366, %struct._GParamSpec* %call284)
  %369 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %370 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %369, %struct._GimpProcedure* %370)
  %371 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %372 = bitcast %struct._GimpProcedure* %371 to i8*
  call void @g_object_unref(i8* %372)
  ret void
}

declare %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)*) #1

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @drawable_transform_flip_simple_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  %auto_center = alloca i32, align 4
  %axis = alloca double, align 8
  %clip_result = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
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
  %9 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values10 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %9, i32 0, i32 1
  %10 = load %struct._GValue*, %struct._GValue** %values10, align 8
  %arrayidx11 = getelementptr inbounds %struct._GValue, %struct._GValue* %10, i64 4
  %call12 = call i32 @g_value_get_boolean(%struct._GValue* %arrayidx11)
  store i32 %call12, i32* %clip_result, align 4
  %11 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %if.then, label %if.end.41

if.then:                                          ; preds = %entry
  %12 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %13 = bitcast %struct._GimpDrawable* %12 to %struct._GTypeInstance*
  %call13 = call i64 @gimp_item_get_type() #4
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call13)
  %14 = bitcast %struct._GTypeInstance* %call14 to %struct._GimpItem*
  %15 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call15 = call i32 @gimp_pdb_item_is_attached(%struct._GimpItem* %14, %struct._GimpImage* null, i32 1, %struct._GError** %15)
  store i32 %call15, i32* %success, align 4
  %16 = load i32, i32* %success, align 4
  %tobool16 = icmp ne i32 %16, 0
  br i1 %tobool16, label %land.lhs.true, label %if.end.40

land.lhs.true:                                    ; preds = %if.then
  %17 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %18 = bitcast %struct._GimpDrawable* %17 to %struct._GTypeInstance*
  %call17 = call i64 @gimp_item_get_type() #4
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call17)
  %19 = bitcast %struct._GTypeInstance* %call18 to %struct._GimpItem*
  %call19 = call i32 @gimp_item_mask_intersect(%struct._GimpItem* %19, i32* %x, i32* %y, i32* %width, i32* %height)
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %if.then.21, label %if.end.40

if.then.21:                                       ; preds = %land.lhs.true
  %20 = load i32, i32* %x, align 4
  %21 = load i32, i32* %y, align 4
  %22 = load i32, i32* %width, align 4
  %23 = load i32, i32* %height, align 4
  %24 = load i32, i32* %flip_type, align 4
  %25 = load i32, i32* %auto_center, align 4
  call void @gimp_transform_get_flip_axis(i32 %20, i32 %21, i32 %22, i32 %23, i32 %24, i32 %25, double* %axis)
  %26 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %27 = bitcast %struct._GimpDrawable* %26 to %struct._GTypeInstance*
  %call22 = call i64 @gimp_viewable_get_type() #4
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call22)
  %28 = bitcast %struct._GTypeInstance* %call23 to %struct._GimpViewable*
  %call24 = call %struct._GimpContainer* @gimp_viewable_get_children(%struct._GimpViewable* %28)
  %tobool25 = icmp ne %struct._GimpContainer* %call24, null
  br i1 %tobool25, label %if.else, label %land.lhs.true.26

land.lhs.true.26:                                 ; preds = %if.then.21
  %29 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %30 = bitcast %struct._GimpDrawable* %29 to %struct._GTypeInstance*
  %call27 = call i64 @gimp_item_get_type() #4
  %call28 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call27)
  %31 = bitcast %struct._GTypeInstance* %call28 to %struct._GimpItem*
  %call29 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %31)
  %call30 = call %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage* %call29)
  %call31 = call i32 @gimp_channel_is_empty(%struct._GimpChannel* %call30)
  %tobool32 = icmp ne i32 %call31, 0
  br i1 %tobool32, label %if.else, label %if.then.33

if.then.33:                                       ; preds = %land.lhs.true.26
  %32 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %33 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %34 = load i32, i32* %flip_type, align 4
  %35 = load double, double* %axis, align 8
  %36 = load i32, i32* %clip_result, align 4
  %call34 = call %struct._GimpDrawable* @gimp_drawable_transform_flip(%struct._GimpDrawable* %32, %struct._GimpContext* %33, i32 %34, double %35, i32 %36)
  %tobool35 = icmp ne %struct._GimpDrawable* %call34, null
  br i1 %tobool35, label %if.end, label %if.then.36

if.then.36:                                       ; preds = %if.then.33
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.36, %if.then.33
  br label %if.end.39

if.else:                                          ; preds = %land.lhs.true.26, %if.then.21
  %37 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %38 = bitcast %struct._GimpDrawable* %37 to %struct._GTypeInstance*
  %call37 = call i64 @gimp_item_get_type() #4
  %call38 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %38, i64 %call37)
  %39 = bitcast %struct._GTypeInstance* %call38 to %struct._GimpItem*
  %40 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %41 = load i32, i32* %flip_type, align 4
  %42 = load double, double* %axis, align 8
  %43 = load i32, i32* %clip_result, align 4
  call void @gimp_item_flip(%struct._GimpItem* %39, %struct._GimpContext* %40, i32 %41, double %42, i32 %43)
  br label %if.end.39

if.end.39:                                        ; preds = %if.else, %if.end
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39, %land.lhs.true, %if.then
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40, %entry
  %44 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %45 = load i32, i32* %success, align 4
  %46 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool42 = icmp ne %struct._GError** %46, null
  br i1 %tobool42, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.41
  %47 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %48 = load %struct._GError*, %struct._GError** %47, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.41
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %48, %cond.true ], [ null, %cond.false ]
  %call43 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %44, i32 %45, %struct._GError* %cond)
  store %struct._GValueArray* %call43, %struct._GValueArray** %return_vals, align 8
  %49 = load i32, i32* %success, align 4
  %tobool44 = icmp ne i32 %49, 0
  br i1 %tobool44, label %if.then.45, label %if.end.48

if.then.45:                                       ; preds = %cond.end
  %50 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values46 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %50, i32 0, i32 1
  %51 = load %struct._GValue*, %struct._GValue** %values46, align 8
  %arrayidx47 = getelementptr inbounds %struct._GValue, %struct._GValue* %51, i64 1
  %52 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_value_set_drawable(%struct._GValue* %arrayidx47, %struct._GimpDrawable* %52)
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.45, %cond.end
  %53 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %53
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

declare %struct._GParamSpec* @g_param_spec_boolean(i8*, i8*, i8*, i32, i32) #1

declare %struct._GParamSpec* @g_param_spec_double(i8*, i8*, i8*, double, double, double, i32) #1

declare void @gimp_procedure_add_return_value(%struct._GimpProcedure*, %struct._GParamSpec*) #1

declare void @gimp_pdb_register_procedure(%struct._GimpPDB*, %struct._GimpProcedure*) #1

declare void @g_object_unref(i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @drawable_transform_flip_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  %x0 = alloca double, align 8
  %y0 = alloca double, align 8
  %x1 = alloca double, align 8
  %y1 = alloca double, align 8
  %transform_direction = alloca i32, align 4
  %interpolation = alloca i32, align 4
  %recursion_level = alloca i32, align 4
  %clip_result = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %matrix = alloca %struct._GimpMatrix3, align 8
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
  %call15 = call i32 @g_value_get_enum(%struct._GValue* %arrayidx14)
  store i32 %call15, i32* %transform_direction, align 4
  %13 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values16 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %13, i32 0, i32 1
  %14 = load %struct._GValue*, %struct._GValue** %values16, align 8
  %arrayidx17 = getelementptr inbounds %struct._GValue, %struct._GValue* %14, i64 6
  %call18 = call i32 @g_value_get_enum(%struct._GValue* %arrayidx17)
  store i32 %call18, i32* %interpolation, align 4
  %15 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values19 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %15, i32 0, i32 1
  %16 = load %struct._GValue*, %struct._GValue** %values19, align 8
  %arrayidx20 = getelementptr inbounds %struct._GValue, %struct._GValue* %16, i64 8
  %call21 = call i32 @g_value_get_int(%struct._GValue* %arrayidx20)
  store i32 %call21, i32* %recursion_level, align 4
  %17 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values22 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %17, i32 0, i32 1
  %18 = load %struct._GValue*, %struct._GValue** %values22, align 8
  %arrayidx23 = getelementptr inbounds %struct._GValue, %struct._GValue* %18, i64 9
  %call24 = call i32 @g_value_get_boolean(%struct._GValue* %arrayidx23)
  store i32 %call24, i32* %clip_result, align 4
  %19 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %19, 0
  br i1 %tobool, label %if.then, label %if.end.64

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
  br i1 %tobool28, label %land.lhs.true, label %if.end.63

land.lhs.true:                                    ; preds = %if.then
  %25 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %26 = bitcast %struct._GimpDrawable* %25 to %struct._GTypeInstance*
  %call29 = call i64 @gimp_item_get_type() #4
  %call30 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %26, i64 %call29)
  %27 = bitcast %struct._GTypeInstance* %call30 to %struct._GimpItem*
  %call31 = call i32 @gimp_item_mask_intersect(%struct._GimpItem* %27, i32* %x, i32* %y, i32* %width, i32* %height)
  %tobool32 = icmp ne i32 %call31, 0
  br i1 %tobool32, label %if.then.33, label %if.end.63

if.then.33:                                       ; preds = %land.lhs.true
  %28 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %29 = bitcast %struct._GimpDrawable* %28 to %struct._GTypeInstance*
  %call34 = call i64 @gimp_item_get_type() #4
  %call35 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 %call34)
  %30 = bitcast %struct._GTypeInstance* %call35 to %struct._GimpItem*
  call void @gimp_item_get_offset(%struct._GimpItem* %30, i32* %off_x, i32* %off_y)
  %31 = load i32, i32* %off_x, align 4
  %32 = load i32, i32* %x, align 4
  %add = add nsw i32 %32, %31
  store i32 %add, i32* %x, align 4
  %33 = load i32, i32* %off_y, align 4
  %34 = load i32, i32* %y, align 4
  %add36 = add nsw i32 %34, %33
  store i32 %add36, i32* %y, align 4
  call void @gimp_matrix3_identity(%struct._GimpMatrix3* %matrix)
  %35 = load double, double* %x0, align 8
  %36 = load double, double* %y0, align 8
  %37 = load double, double* %x1, align 8
  %38 = load double, double* %y1, align 8
  call void @gimp_transform_matrix_flip_free(%struct._GimpMatrix3* %matrix, double %35, double %36, double %37, double %38)
  %39 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %tobool37 = icmp ne %struct._GimpProgress* %39, null
  br i1 %tobool37, label %if.then.38, label %if.end

if.then.38:                                       ; preds = %if.then.33
  %40 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %call39 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.154, i32 0, i32 0)) #5
  %call40 = call %struct._GimpProgress* @gimp_progress_start(%struct._GimpProgress* %40, i8* %call39, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then.38, %if.then.33
  %41 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %42 = bitcast %struct._GimpDrawable* %41 to %struct._GTypeInstance*
  %call41 = call i64 @gimp_viewable_get_type() #4
  %call42 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %42, i64 %call41)
  %43 = bitcast %struct._GTypeInstance* %call42 to %struct._GimpViewable*
  %call43 = call %struct._GimpContainer* @gimp_viewable_get_children(%struct._GimpViewable* %43)
  %tobool44 = icmp ne %struct._GimpContainer* %call43, null
  br i1 %tobool44, label %if.else, label %land.lhs.true.45

land.lhs.true.45:                                 ; preds = %if.end
  %44 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %45 = bitcast %struct._GimpDrawable* %44 to %struct._GTypeInstance*
  %call46 = call i64 @gimp_item_get_type() #4
  %call47 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %45, i64 %call46)
  %46 = bitcast %struct._GTypeInstance* %call47 to %struct._GimpItem*
  %call48 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %46)
  %call49 = call %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage* %call48)
  %call50 = call i32 @gimp_channel_is_empty(%struct._GimpChannel* %call49)
  %tobool51 = icmp ne i32 %call50, 0
  br i1 %tobool51, label %if.else, label %if.then.52

if.then.52:                                       ; preds = %land.lhs.true.45
  %47 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %48 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %49 = load i32, i32* %transform_direction, align 4
  %50 = load i32, i32* %interpolation, align 4
  %51 = load i32, i32* %recursion_level, align 4
  %52 = load i32, i32* %clip_result, align 4
  %53 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %call53 = call %struct._GimpDrawable* @gimp_drawable_transform_affine(%struct._GimpDrawable* %47, %struct._GimpContext* %48, %struct._GimpMatrix3* %matrix, i32 %49, i32 %50, i32 %51, i32 %52, %struct._GimpProgress* %53)
  %tobool54 = icmp ne %struct._GimpDrawable* %call53, null
  br i1 %tobool54, label %if.end.56, label %if.then.55

if.then.55:                                       ; preds = %if.then.52
  store i32 0, i32* %success, align 4
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.55, %if.then.52
  br label %if.end.59

if.else:                                          ; preds = %land.lhs.true.45, %if.end
  %54 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %55 = bitcast %struct._GimpDrawable* %54 to %struct._GTypeInstance*
  %call57 = call i64 @gimp_item_get_type() #4
  %call58 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %55, i64 %call57)
  %56 = bitcast %struct._GTypeInstance* %call58 to %struct._GimpItem*
  %57 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %58 = load i32, i32* %transform_direction, align 4
  %59 = load i32, i32* %interpolation, align 4
  %60 = load i32, i32* %recursion_level, align 4
  %61 = load i32, i32* %clip_result, align 4
  %62 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  call void @gimp_item_transform(%struct._GimpItem* %56, %struct._GimpContext* %57, %struct._GimpMatrix3* %matrix, i32 %58, i32 %59, i32 %60, i32 %61, %struct._GimpProgress* %62)
  br label %if.end.59

if.end.59:                                        ; preds = %if.else, %if.end.56
  %63 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %tobool60 = icmp ne %struct._GimpProgress* %63, null
  br i1 %tobool60, label %if.then.61, label %if.end.62

if.then.61:                                       ; preds = %if.end.59
  %64 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  call void @gimp_progress_end(%struct._GimpProgress* %64)
  br label %if.end.62

if.end.62:                                        ; preds = %if.then.61, %if.end.59
  br label %if.end.63

if.end.63:                                        ; preds = %if.end.62, %land.lhs.true, %if.then
  br label %if.end.64

if.end.64:                                        ; preds = %if.end.63, %entry
  %65 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %66 = load i32, i32* %success, align 4
  %67 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool65 = icmp ne %struct._GError** %67, null
  br i1 %tobool65, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.64
  %68 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %69 = load %struct._GError*, %struct._GError** %68, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.64
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %69, %cond.true ], [ null, %cond.false ]
  %call66 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %65, i32 %66, %struct._GError* %cond)
  store %struct._GValueArray* %call66, %struct._GValueArray** %return_vals, align 8
  %70 = load i32, i32* %success, align 4
  %tobool67 = icmp ne i32 %70, 0
  br i1 %tobool67, label %if.then.68, label %if.end.71

if.then.68:                                       ; preds = %cond.end
  %71 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values69 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %71, i32 0, i32 1
  %72 = load %struct._GValue*, %struct._GValue** %values69, align 8
  %arrayidx70 = getelementptr inbounds %struct._GValue, %struct._GValue* %72, i64 1
  %73 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_value_set_drawable(%struct._GValue* %arrayidx70, %struct._GimpDrawable* %73)
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.68, %cond.end
  %74 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %74
}

declare %struct._GParamSpec* @g_param_spec_enum(i8*, i8*, i8*, i64, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_transform_direction_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_interpolation_type_get_type() #2

declare %struct._GParamSpec* @gimp_param_spec_int32(i8*, i8*, i8*, i32, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @drawable_transform_flip_default_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  %x0 = alloca double, align 8
  %y0 = alloca double, align 8
  %x1 = alloca double, align 8
  %y1 = alloca double, align 8
  %interpolate = alloca i32, align 4
  %clip_result = alloca i32, align 4
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
  %call15 = call i32 @g_value_get_boolean(%struct._GValue* %arrayidx14)
  store i32 %call15, i32* %interpolate, align 4
  %13 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values16 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %13, i32 0, i32 1
  %14 = load %struct._GValue*, %struct._GValue** %values16, align 8
  %arrayidx17 = getelementptr inbounds %struct._GValue, %struct._GValue* %14, i64 6
  %call18 = call i32 @g_value_get_boolean(%struct._GValue* %arrayidx17)
  store i32 %call18, i32* %clip_result, align 4
  %15 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %15, 0
  br i1 %tobool, label %if.then, label %if.end.62

if.then:                                          ; preds = %entry
  %16 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %17 = bitcast %struct._GimpDrawable* %16 to %struct._GTypeInstance*
  %call19 = call i64 @gimp_item_get_type() #4
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call19)
  %18 = bitcast %struct._GTypeInstance* %call20 to %struct._GimpItem*
  %19 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call21 = call i32 @gimp_pdb_item_is_attached(%struct._GimpItem* %18, %struct._GimpImage* null, i32 1, %struct._GError** %19)
  store i32 %call21, i32* %success, align 4
  %20 = load i32, i32* %success, align 4
  %tobool22 = icmp ne i32 %20, 0
  br i1 %tobool22, label %land.lhs.true, label %if.end.61

land.lhs.true:                                    ; preds = %if.then
  %21 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %22 = bitcast %struct._GimpDrawable* %21 to %struct._GTypeInstance*
  %call23 = call i64 @gimp_item_get_type() #4
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call23)
  %23 = bitcast %struct._GTypeInstance* %call24 to %struct._GimpItem*
  %call25 = call i32 @gimp_item_mask_intersect(%struct._GimpItem* %23, i32* %x, i32* %y, i32* %width, i32* %height)
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %if.then.27, label %if.end.61

if.then.27:                                       ; preds = %land.lhs.true
  store i32 0, i32* %interpolation_type, align 4
  %24 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %25 = bitcast %struct._GimpDrawable* %24 to %struct._GTypeInstance*
  %call28 = call i64 @gimp_item_get_type() #4
  %call29 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call28)
  %26 = bitcast %struct._GTypeInstance* %call29 to %struct._GimpItem*
  call void @gimp_item_get_offset(%struct._GimpItem* %26, i32* %off_x, i32* %off_y)
  %27 = load i32, i32* %off_x, align 4
  %28 = load i32, i32* %x, align 4
  %add = add nsw i32 %28, %27
  store i32 %add, i32* %x, align 4
  %29 = load i32, i32* %off_y, align 4
  %30 = load i32, i32* %y, align 4
  %add30 = add nsw i32 %30, %29
  store i32 %add30, i32* %y, align 4
  call void @gimp_matrix3_identity(%struct._GimpMatrix3* %matrix)
  %31 = load double, double* %x0, align 8
  %32 = load double, double* %y0, align 8
  %33 = load double, double* %x1, align 8
  %34 = load double, double* %y1, align 8
  call void @gimp_transform_matrix_flip_free(%struct._GimpMatrix3* %matrix, double %31, double %32, double %33, double %34)
  %35 = load i32, i32* %interpolate, align 4
  %tobool31 = icmp ne i32 %35, 0
  br i1 %tobool31, label %if.then.32, label %if.end

if.then.32:                                       ; preds = %if.then.27
  %36 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %config = getelementptr inbounds %struct._Gimp, %struct._Gimp* %36, i32 0, i32 1
  %37 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config, align 8
  %interpolation_type33 = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %37, i32 0, i32 2
  %38 = load i32, i32* %interpolation_type33, align 4
  store i32 %38, i32* %interpolation_type, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.32, %if.then.27
  %39 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %tobool34 = icmp ne %struct._GimpProgress* %39, null
  br i1 %tobool34, label %if.then.35, label %if.end.38

if.then.35:                                       ; preds = %if.end
  %40 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %call36 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.154, i32 0, i32 0)) #5
  %call37 = call %struct._GimpProgress* @gimp_progress_start(%struct._GimpProgress* %40, i8* %call36, i32 0)
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.35, %if.end
  %41 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %42 = bitcast %struct._GimpDrawable* %41 to %struct._GTypeInstance*
  %call39 = call i64 @gimp_viewable_get_type() #4
  %call40 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %42, i64 %call39)
  %43 = bitcast %struct._GTypeInstance* %call40 to %struct._GimpViewable*
  %call41 = call %struct._GimpContainer* @gimp_viewable_get_children(%struct._GimpViewable* %43)
  %tobool42 = icmp ne %struct._GimpContainer* %call41, null
  br i1 %tobool42, label %if.else, label %land.lhs.true.43

land.lhs.true.43:                                 ; preds = %if.end.38
  %44 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %45 = bitcast %struct._GimpDrawable* %44 to %struct._GTypeInstance*
  %call44 = call i64 @gimp_item_get_type() #4
  %call45 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %45, i64 %call44)
  %46 = bitcast %struct._GTypeInstance* %call45 to %struct._GimpItem*
  %call46 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %46)
  %call47 = call %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage* %call46)
  %call48 = call i32 @gimp_channel_is_empty(%struct._GimpChannel* %call47)
  %tobool49 = icmp ne i32 %call48, 0
  br i1 %tobool49, label %if.else, label %if.then.50

if.then.50:                                       ; preds = %land.lhs.true.43
  %47 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %48 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %49 = load i32, i32* %interpolation_type, align 4
  %50 = load i32, i32* %clip_result, align 4
  %51 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %call51 = call %struct._GimpDrawable* @gimp_drawable_transform_affine(%struct._GimpDrawable* %47, %struct._GimpContext* %48, %struct._GimpMatrix3* %matrix, i32 0, i32 %49, i32 3, i32 %50, %struct._GimpProgress* %51)
  %tobool52 = icmp ne %struct._GimpDrawable* %call51, null
  br i1 %tobool52, label %if.end.54, label %if.then.53

if.then.53:                                       ; preds = %if.then.50
  store i32 0, i32* %success, align 4
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.53, %if.then.50
  br label %if.end.57

if.else:                                          ; preds = %land.lhs.true.43, %if.end.38
  %52 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %53 = bitcast %struct._GimpDrawable* %52 to %struct._GTypeInstance*
  %call55 = call i64 @gimp_item_get_type() #4
  %call56 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %53, i64 %call55)
  %54 = bitcast %struct._GTypeInstance* %call56 to %struct._GimpItem*
  %55 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %56 = load i32, i32* %interpolation_type, align 4
  %57 = load i32, i32* %clip_result, align 4
  %58 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  call void @gimp_item_transform(%struct._GimpItem* %54, %struct._GimpContext* %55, %struct._GimpMatrix3* %matrix, i32 0, i32 %56, i32 3, i32 %57, %struct._GimpProgress* %58)
  br label %if.end.57

if.end.57:                                        ; preds = %if.else, %if.end.54
  %59 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %tobool58 = icmp ne %struct._GimpProgress* %59, null
  br i1 %tobool58, label %if.then.59, label %if.end.60

if.then.59:                                       ; preds = %if.end.57
  %60 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  call void @gimp_progress_end(%struct._GimpProgress* %60)
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.59, %if.end.57
  br label %if.end.61

if.end.61:                                        ; preds = %if.end.60, %land.lhs.true, %if.then
  br label %if.end.62

if.end.62:                                        ; preds = %if.end.61, %entry
  %61 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %62 = load i32, i32* %success, align 4
  %63 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool63 = icmp ne %struct._GError** %63, null
  br i1 %tobool63, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.62
  %64 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %65 = load %struct._GError*, %struct._GError** %64, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.62
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %65, %cond.true ], [ null, %cond.false ]
  %call64 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %61, i32 %62, %struct._GError* %cond)
  store %struct._GValueArray* %call64, %struct._GValueArray** %return_vals, align 8
  %66 = load i32, i32* %success, align 4
  %tobool65 = icmp ne i32 %66, 0
  br i1 %tobool65, label %if.then.66, label %if.end.69

if.then.66:                                       ; preds = %cond.end
  %67 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values67 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %67, i32 0, i32 1
  %68 = load %struct._GValue*, %struct._GValue** %values67, align 8
  %arrayidx68 = getelementptr inbounds %struct._GValue, %struct._GValue* %68, i64 1
  %69 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_value_set_drawable(%struct._GValue* %arrayidx68, %struct._GimpDrawable* %69)
  br label %if.end.69

if.end.69:                                        ; preds = %if.then.66, %cond.end
  %70 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %70
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @drawable_transform_perspective_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  %x0 = alloca double, align 8
  %y0 = alloca double, align 8
  %x1 = alloca double, align 8
  %y1 = alloca double, align 8
  %x2 = alloca double, align 8
  %y2 = alloca double, align 8
  %x3 = alloca double, align 8
  %y3 = alloca double, align 8
  %transform_direction = alloca i32, align 4
  %interpolation = alloca i32, align 4
  %recursion_level = alloca i32, align 4
  %clip_result = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %matrix = alloca %struct._GimpMatrix3, align 8
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
  %19 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values25 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %19, i32 0, i32 1
  %20 = load %struct._GValue*, %struct._GValue** %values25, align 8
  %arrayidx26 = getelementptr inbounds %struct._GValue, %struct._GValue* %20, i64 9
  %call27 = call i32 @g_value_get_enum(%struct._GValue* %arrayidx26)
  store i32 %call27, i32* %transform_direction, align 4
  %21 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values28 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %21, i32 0, i32 1
  %22 = load %struct._GValue*, %struct._GValue** %values28, align 8
  %arrayidx29 = getelementptr inbounds %struct._GValue, %struct._GValue* %22, i64 10
  %call30 = call i32 @g_value_get_enum(%struct._GValue* %arrayidx29)
  store i32 %call30, i32* %interpolation, align 4
  %23 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values31 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %23, i32 0, i32 1
  %24 = load %struct._GValue*, %struct._GValue** %values31, align 8
  %arrayidx32 = getelementptr inbounds %struct._GValue, %struct._GValue* %24, i64 12
  %call33 = call i32 @g_value_get_int(%struct._GValue* %arrayidx32)
  store i32 %call33, i32* %recursion_level, align 4
  %25 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values34 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %25, i32 0, i32 1
  %26 = load %struct._GValue*, %struct._GValue** %values34, align 8
  %arrayidx35 = getelementptr inbounds %struct._GValue, %struct._GValue* %26, i64 13
  %call36 = call i32 @g_value_get_enum(%struct._GValue* %arrayidx35)
  store i32 %call36, i32* %clip_result, align 4
  %27 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %27, 0
  br i1 %tobool, label %if.then, label %if.end.76

if.then:                                          ; preds = %entry
  %28 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %29 = bitcast %struct._GimpDrawable* %28 to %struct._GTypeInstance*
  %call37 = call i64 @gimp_item_get_type() #4
  %call38 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 %call37)
  %30 = bitcast %struct._GTypeInstance* %call38 to %struct._GimpItem*
  %31 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call39 = call i32 @gimp_pdb_item_is_attached(%struct._GimpItem* %30, %struct._GimpImage* null, i32 1, %struct._GError** %31)
  store i32 %call39, i32* %success, align 4
  %32 = load i32, i32* %success, align 4
  %tobool40 = icmp ne i32 %32, 0
  br i1 %tobool40, label %land.lhs.true, label %if.end.75

land.lhs.true:                                    ; preds = %if.then
  %33 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %34 = bitcast %struct._GimpDrawable* %33 to %struct._GTypeInstance*
  %call41 = call i64 @gimp_item_get_type() #4
  %call42 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 %call41)
  %35 = bitcast %struct._GTypeInstance* %call42 to %struct._GimpItem*
  %call43 = call i32 @gimp_item_mask_intersect(%struct._GimpItem* %35, i32* %x, i32* %y, i32* %width, i32* %height)
  %tobool44 = icmp ne i32 %call43, 0
  br i1 %tobool44, label %if.then.45, label %if.end.75

if.then.45:                                       ; preds = %land.lhs.true
  %36 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %37 = bitcast %struct._GimpDrawable* %36 to %struct._GTypeInstance*
  %call46 = call i64 @gimp_item_get_type() #4
  %call47 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %37, i64 %call46)
  %38 = bitcast %struct._GTypeInstance* %call47 to %struct._GimpItem*
  call void @gimp_item_get_offset(%struct._GimpItem* %38, i32* %off_x, i32* %off_y)
  %39 = load i32, i32* %off_x, align 4
  %40 = load i32, i32* %x, align 4
  %add = add nsw i32 %40, %39
  store i32 %add, i32* %x, align 4
  %41 = load i32, i32* %off_y, align 4
  %42 = load i32, i32* %y, align 4
  %add48 = add nsw i32 %42, %41
  store i32 %add48, i32* %y, align 4
  call void @gimp_matrix3_identity(%struct._GimpMatrix3* %matrix)
  %43 = load i32, i32* %x, align 4
  %44 = load i32, i32* %y, align 4
  %45 = load i32, i32* %width, align 4
  %46 = load i32, i32* %height, align 4
  %47 = load double, double* %x0, align 8
  %48 = load double, double* %y0, align 8
  %49 = load double, double* %x1, align 8
  %50 = load double, double* %y1, align 8
  %51 = load double, double* %x2, align 8
  %52 = load double, double* %y2, align 8
  %53 = load double, double* %x3, align 8
  %54 = load double, double* %y3, align 8
  call void @gimp_transform_matrix_perspective(%struct._GimpMatrix3* %matrix, i32 %43, i32 %44, i32 %45, i32 %46, double %47, double %48, double %49, double %50, double %51, double %52, double %53, double %54)
  %55 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %tobool49 = icmp ne %struct._GimpProgress* %55, null
  br i1 %tobool49, label %if.then.50, label %if.end

if.then.50:                                       ; preds = %if.then.45
  %56 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %call51 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.155, i32 0, i32 0)) #5
  %call52 = call %struct._GimpProgress* @gimp_progress_start(%struct._GimpProgress* %56, i8* %call51, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then.50, %if.then.45
  %57 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %58 = bitcast %struct._GimpDrawable* %57 to %struct._GTypeInstance*
  %call53 = call i64 @gimp_viewable_get_type() #4
  %call54 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %58, i64 %call53)
  %59 = bitcast %struct._GTypeInstance* %call54 to %struct._GimpViewable*
  %call55 = call %struct._GimpContainer* @gimp_viewable_get_children(%struct._GimpViewable* %59)
  %tobool56 = icmp ne %struct._GimpContainer* %call55, null
  br i1 %tobool56, label %if.else, label %land.lhs.true.57

land.lhs.true.57:                                 ; preds = %if.end
  %60 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %61 = bitcast %struct._GimpDrawable* %60 to %struct._GTypeInstance*
  %call58 = call i64 @gimp_item_get_type() #4
  %call59 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %61, i64 %call58)
  %62 = bitcast %struct._GTypeInstance* %call59 to %struct._GimpItem*
  %call60 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %62)
  %call61 = call %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage* %call60)
  %call62 = call i32 @gimp_channel_is_empty(%struct._GimpChannel* %call61)
  %tobool63 = icmp ne i32 %call62, 0
  br i1 %tobool63, label %if.else, label %if.then.64

if.then.64:                                       ; preds = %land.lhs.true.57
  %63 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %64 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %65 = load i32, i32* %transform_direction, align 4
  %66 = load i32, i32* %interpolation, align 4
  %67 = load i32, i32* %recursion_level, align 4
  %68 = load i32, i32* %clip_result, align 4
  %69 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %call65 = call %struct._GimpDrawable* @gimp_drawable_transform_affine(%struct._GimpDrawable* %63, %struct._GimpContext* %64, %struct._GimpMatrix3* %matrix, i32 %65, i32 %66, i32 %67, i32 %68, %struct._GimpProgress* %69)
  %tobool66 = icmp ne %struct._GimpDrawable* %call65, null
  br i1 %tobool66, label %if.end.68, label %if.then.67

if.then.67:                                       ; preds = %if.then.64
  store i32 0, i32* %success, align 4
  br label %if.end.68

if.end.68:                                        ; preds = %if.then.67, %if.then.64
  br label %if.end.71

if.else:                                          ; preds = %land.lhs.true.57, %if.end
  %70 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %71 = bitcast %struct._GimpDrawable* %70 to %struct._GTypeInstance*
  %call69 = call i64 @gimp_item_get_type() #4
  %call70 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %71, i64 %call69)
  %72 = bitcast %struct._GTypeInstance* %call70 to %struct._GimpItem*
  %73 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %74 = load i32, i32* %transform_direction, align 4
  %75 = load i32, i32* %interpolation, align 4
  %76 = load i32, i32* %recursion_level, align 4
  %77 = load i32, i32* %clip_result, align 4
  %78 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  call void @gimp_item_transform(%struct._GimpItem* %72, %struct._GimpContext* %73, %struct._GimpMatrix3* %matrix, i32 %74, i32 %75, i32 %76, i32 %77, %struct._GimpProgress* %78)
  br label %if.end.71

if.end.71:                                        ; preds = %if.else, %if.end.68
  %79 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %tobool72 = icmp ne %struct._GimpProgress* %79, null
  br i1 %tobool72, label %if.then.73, label %if.end.74

if.then.73:                                       ; preds = %if.end.71
  %80 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  call void @gimp_progress_end(%struct._GimpProgress* %80)
  br label %if.end.74

if.end.74:                                        ; preds = %if.then.73, %if.end.71
  br label %if.end.75

if.end.75:                                        ; preds = %if.end.74, %land.lhs.true, %if.then
  br label %if.end.76

if.end.76:                                        ; preds = %if.end.75, %entry
  %81 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %82 = load i32, i32* %success, align 4
  %83 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool77 = icmp ne %struct._GError** %83, null
  br i1 %tobool77, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.76
  %84 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %85 = load %struct._GError*, %struct._GError** %84, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.76
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %85, %cond.true ], [ null, %cond.false ]
  %call78 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %81, i32 %82, %struct._GError* %cond)
  store %struct._GValueArray* %call78, %struct._GValueArray** %return_vals, align 8
  %86 = load i32, i32* %success, align 4
  %tobool79 = icmp ne i32 %86, 0
  br i1 %tobool79, label %if.then.80, label %if.end.83

if.then.80:                                       ; preds = %cond.end
  %87 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values81 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %87, i32 0, i32 1
  %88 = load %struct._GValue*, %struct._GValue** %values81, align 8
  %arrayidx82 = getelementptr inbounds %struct._GValue, %struct._GValue* %88, i64 1
  %89 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_value_set_drawable(%struct._GValue* %arrayidx82, %struct._GimpDrawable* %89)
  br label %if.end.83

if.end.83:                                        ; preds = %if.then.80, %cond.end
  %90 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %90
}

; Function Attrs: nounwind readnone
declare i64 @gimp_transform_resize_get_type() #2

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @drawable_transform_perspective_default_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  %x0 = alloca double, align 8
  %y0 = alloca double, align 8
  %x1 = alloca double, align 8
  %y1 = alloca double, align 8
  %x2 = alloca double, align 8
  %y2 = alloca double, align 8
  %x3 = alloca double, align 8
  %y3 = alloca double, align 8
  %interpolate = alloca i32, align 4
  %clip_result = alloca i32, align 4
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
  %19 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values25 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %19, i32 0, i32 1
  %20 = load %struct._GValue*, %struct._GValue** %values25, align 8
  %arrayidx26 = getelementptr inbounds %struct._GValue, %struct._GValue* %20, i64 9
  %call27 = call i32 @g_value_get_boolean(%struct._GValue* %arrayidx26)
  store i32 %call27, i32* %interpolate, align 4
  %21 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values28 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %21, i32 0, i32 1
  %22 = load %struct._GValue*, %struct._GValue** %values28, align 8
  %arrayidx29 = getelementptr inbounds %struct._GValue, %struct._GValue* %22, i64 10
  %call30 = call i32 @g_value_get_enum(%struct._GValue* %arrayidx29)
  store i32 %call30, i32* %clip_result, align 4
  %23 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %23, 0
  br i1 %tobool, label %if.then, label %if.end.74

if.then:                                          ; preds = %entry
  %24 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %25 = bitcast %struct._GimpDrawable* %24 to %struct._GTypeInstance*
  %call31 = call i64 @gimp_item_get_type() #4
  %call32 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call31)
  %26 = bitcast %struct._GTypeInstance* %call32 to %struct._GimpItem*
  %27 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call33 = call i32 @gimp_pdb_item_is_attached(%struct._GimpItem* %26, %struct._GimpImage* null, i32 1, %struct._GError** %27)
  store i32 %call33, i32* %success, align 4
  %28 = load i32, i32* %success, align 4
  %tobool34 = icmp ne i32 %28, 0
  br i1 %tobool34, label %land.lhs.true, label %if.end.73

land.lhs.true:                                    ; preds = %if.then
  %29 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %30 = bitcast %struct._GimpDrawable* %29 to %struct._GTypeInstance*
  %call35 = call i64 @gimp_item_get_type() #4
  %call36 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call35)
  %31 = bitcast %struct._GTypeInstance* %call36 to %struct._GimpItem*
  %call37 = call i32 @gimp_item_mask_intersect(%struct._GimpItem* %31, i32* %x, i32* %y, i32* %width, i32* %height)
  %tobool38 = icmp ne i32 %call37, 0
  br i1 %tobool38, label %if.then.39, label %if.end.73

if.then.39:                                       ; preds = %land.lhs.true
  store i32 0, i32* %interpolation_type, align 4
  %32 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %33 = bitcast %struct._GimpDrawable* %32 to %struct._GTypeInstance*
  %call40 = call i64 @gimp_item_get_type() #4
  %call41 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 %call40)
  %34 = bitcast %struct._GTypeInstance* %call41 to %struct._GimpItem*
  call void @gimp_item_get_offset(%struct._GimpItem* %34, i32* %off_x, i32* %off_y)
  %35 = load i32, i32* %off_x, align 4
  %36 = load i32, i32* %x, align 4
  %add = add nsw i32 %36, %35
  store i32 %add, i32* %x, align 4
  %37 = load i32, i32* %off_y, align 4
  %38 = load i32, i32* %y, align 4
  %add42 = add nsw i32 %38, %37
  store i32 %add42, i32* %y, align 4
  call void @gimp_matrix3_identity(%struct._GimpMatrix3* %matrix)
  %39 = load i32, i32* %x, align 4
  %40 = load i32, i32* %y, align 4
  %41 = load i32, i32* %width, align 4
  %42 = load i32, i32* %height, align 4
  %43 = load double, double* %x0, align 8
  %44 = load double, double* %y0, align 8
  %45 = load double, double* %x1, align 8
  %46 = load double, double* %y1, align 8
  %47 = load double, double* %x2, align 8
  %48 = load double, double* %y2, align 8
  %49 = load double, double* %x3, align 8
  %50 = load double, double* %y3, align 8
  call void @gimp_transform_matrix_perspective(%struct._GimpMatrix3* %matrix, i32 %39, i32 %40, i32 %41, i32 %42, double %43, double %44, double %45, double %46, double %47, double %48, double %49, double %50)
  %51 = load i32, i32* %interpolate, align 4
  %tobool43 = icmp ne i32 %51, 0
  br i1 %tobool43, label %if.then.44, label %if.end

if.then.44:                                       ; preds = %if.then.39
  %52 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %config = getelementptr inbounds %struct._Gimp, %struct._Gimp* %52, i32 0, i32 1
  %53 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config, align 8
  %interpolation_type45 = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %53, i32 0, i32 2
  %54 = load i32, i32* %interpolation_type45, align 4
  store i32 %54, i32* %interpolation_type, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.44, %if.then.39
  %55 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %tobool46 = icmp ne %struct._GimpProgress* %55, null
  br i1 %tobool46, label %if.then.47, label %if.end.50

if.then.47:                                       ; preds = %if.end
  %56 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %call48 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.155, i32 0, i32 0)) #5
  %call49 = call %struct._GimpProgress* @gimp_progress_start(%struct._GimpProgress* %56, i8* %call48, i32 0)
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.47, %if.end
  %57 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %58 = bitcast %struct._GimpDrawable* %57 to %struct._GTypeInstance*
  %call51 = call i64 @gimp_viewable_get_type() #4
  %call52 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %58, i64 %call51)
  %59 = bitcast %struct._GTypeInstance* %call52 to %struct._GimpViewable*
  %call53 = call %struct._GimpContainer* @gimp_viewable_get_children(%struct._GimpViewable* %59)
  %tobool54 = icmp ne %struct._GimpContainer* %call53, null
  br i1 %tobool54, label %if.else, label %land.lhs.true.55

land.lhs.true.55:                                 ; preds = %if.end.50
  %60 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %61 = bitcast %struct._GimpDrawable* %60 to %struct._GTypeInstance*
  %call56 = call i64 @gimp_item_get_type() #4
  %call57 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %61, i64 %call56)
  %62 = bitcast %struct._GTypeInstance* %call57 to %struct._GimpItem*
  %call58 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %62)
  %call59 = call %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage* %call58)
  %call60 = call i32 @gimp_channel_is_empty(%struct._GimpChannel* %call59)
  %tobool61 = icmp ne i32 %call60, 0
  br i1 %tobool61, label %if.else, label %if.then.62

if.then.62:                                       ; preds = %land.lhs.true.55
  %63 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %64 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %65 = load i32, i32* %interpolation_type, align 4
  %66 = load i32, i32* %clip_result, align 4
  %67 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %call63 = call %struct._GimpDrawable* @gimp_drawable_transform_affine(%struct._GimpDrawable* %63, %struct._GimpContext* %64, %struct._GimpMatrix3* %matrix, i32 0, i32 %65, i32 3, i32 %66, %struct._GimpProgress* %67)
  %tobool64 = icmp ne %struct._GimpDrawable* %call63, null
  br i1 %tobool64, label %if.end.66, label %if.then.65

if.then.65:                                       ; preds = %if.then.62
  store i32 0, i32* %success, align 4
  br label %if.end.66

if.end.66:                                        ; preds = %if.then.65, %if.then.62
  br label %if.end.69

if.else:                                          ; preds = %land.lhs.true.55, %if.end.50
  %68 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %69 = bitcast %struct._GimpDrawable* %68 to %struct._GTypeInstance*
  %call67 = call i64 @gimp_item_get_type() #4
  %call68 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %69, i64 %call67)
  %70 = bitcast %struct._GTypeInstance* %call68 to %struct._GimpItem*
  %71 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %72 = load i32, i32* %interpolation_type, align 4
  %73 = load i32, i32* %clip_result, align 4
  %74 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  call void @gimp_item_transform(%struct._GimpItem* %70, %struct._GimpContext* %71, %struct._GimpMatrix3* %matrix, i32 0, i32 %72, i32 3, i32 %73, %struct._GimpProgress* %74)
  br label %if.end.69

if.end.69:                                        ; preds = %if.else, %if.end.66
  %75 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %tobool70 = icmp ne %struct._GimpProgress* %75, null
  br i1 %tobool70, label %if.then.71, label %if.end.72

if.then.71:                                       ; preds = %if.end.69
  %76 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  call void @gimp_progress_end(%struct._GimpProgress* %76)
  br label %if.end.72

if.end.72:                                        ; preds = %if.then.71, %if.end.69
  br label %if.end.73

if.end.73:                                        ; preds = %if.end.72, %land.lhs.true, %if.then
  br label %if.end.74

if.end.74:                                        ; preds = %if.end.73, %entry
  %77 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %78 = load i32, i32* %success, align 4
  %79 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool75 = icmp ne %struct._GError** %79, null
  br i1 %tobool75, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.74
  %80 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %81 = load %struct._GError*, %struct._GError** %80, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.74
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %81, %cond.true ], [ null, %cond.false ]
  %call76 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %77, i32 %78, %struct._GError* %cond)
  store %struct._GValueArray* %call76, %struct._GValueArray** %return_vals, align 8
  %82 = load i32, i32* %success, align 4
  %tobool77 = icmp ne i32 %82, 0
  br i1 %tobool77, label %if.then.78, label %if.end.81

if.then.78:                                       ; preds = %cond.end
  %83 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values79 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %83, i32 0, i32 1
  %84 = load %struct._GValue*, %struct._GValue** %values79, align 8
  %arrayidx80 = getelementptr inbounds %struct._GValue, %struct._GValue* %84, i64 1
  %85 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_value_set_drawable(%struct._GValue* %arrayidx80, %struct._GimpDrawable* %85)
  br label %if.end.81

if.end.81:                                        ; preds = %if.then.78, %cond.end
  %86 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %86
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @drawable_transform_rotate_simple_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  %rotate_type = alloca i32, align 4
  %auto_center = alloca i32, align 4
  %center_x = alloca i32, align 4
  %center_y = alloca i32, align 4
  %clip_result = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %cx = alloca double, align 8
  %cy = alloca double, align 8
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
  %call9 = call i32 @g_value_get_int(%struct._GValue* %arrayidx8)
  store i32 %call9, i32* %center_x, align 4
  %9 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values10 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %9, i32 0, i32 1
  %10 = load %struct._GValue*, %struct._GValue** %values10, align 8
  %arrayidx11 = getelementptr inbounds %struct._GValue, %struct._GValue* %10, i64 4
  %call12 = call i32 @g_value_get_int(%struct._GValue* %arrayidx11)
  store i32 %call12, i32* %center_y, align 4
  %11 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values13 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %11, i32 0, i32 1
  %12 = load %struct._GValue*, %struct._GValue** %values13, align 8
  %arrayidx14 = getelementptr inbounds %struct._GValue, %struct._GValue* %12, i64 5
  %call15 = call i32 @g_value_get_boolean(%struct._GValue* %arrayidx14)
  store i32 %call15, i32* %clip_result, align 4
  %13 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %13, 0
  br i1 %tobool, label %if.then, label %if.end.45

if.then:                                          ; preds = %entry
  %14 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %15 = bitcast %struct._GimpDrawable* %14 to %struct._GTypeInstance*
  %call16 = call i64 @gimp_item_get_type() #4
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call16)
  %16 = bitcast %struct._GTypeInstance* %call17 to %struct._GimpItem*
  %17 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call18 = call i32 @gimp_pdb_item_is_attached(%struct._GimpItem* %16, %struct._GimpImage* null, i32 0, %struct._GError** %17)
  store i32 %call18, i32* %success, align 4
  %18 = load i32, i32* %success, align 4
  %tobool19 = icmp ne i32 %18, 0
  br i1 %tobool19, label %land.lhs.true, label %if.end.44

land.lhs.true:                                    ; preds = %if.then
  %19 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %20 = bitcast %struct._GimpDrawable* %19 to %struct._GTypeInstance*
  %call20 = call i64 @gimp_item_get_type() #4
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call20)
  %21 = bitcast %struct._GTypeInstance* %call21 to %struct._GimpItem*
  %call22 = call i32 @gimp_item_mask_intersect(%struct._GimpItem* %21, i32* %x, i32* %y, i32* %width, i32* %height)
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %if.then.24, label %if.end.44

if.then.24:                                       ; preds = %land.lhs.true
  %22 = load i32, i32* %center_x, align 4
  %conv = sitofp i32 %22 to double
  store double %conv, double* %cx, align 8
  %23 = load i32, i32* %center_y, align 4
  %conv25 = sitofp i32 %23 to double
  store double %conv25, double* %cy, align 8
  %24 = load i32, i32* %x, align 4
  %25 = load i32, i32* %y, align 4
  %26 = load i32, i32* %width, align 4
  %27 = load i32, i32* %height, align 4
  %28 = load i32, i32* %auto_center, align 4
  call void @gimp_transform_get_rotate_center(i32 %24, i32 %25, i32 %26, i32 %27, i32 %28, double* %cx, double* %cy)
  %29 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %30 = bitcast %struct._GimpDrawable* %29 to %struct._GTypeInstance*
  %call26 = call i64 @gimp_viewable_get_type() #4
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call26)
  %31 = bitcast %struct._GTypeInstance* %call27 to %struct._GimpViewable*
  %call28 = call %struct._GimpContainer* @gimp_viewable_get_children(%struct._GimpViewable* %31)
  %tobool29 = icmp ne %struct._GimpContainer* %call28, null
  br i1 %tobool29, label %if.else, label %land.lhs.true.30

land.lhs.true.30:                                 ; preds = %if.then.24
  %32 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %33 = bitcast %struct._GimpDrawable* %32 to %struct._GTypeInstance*
  %call31 = call i64 @gimp_item_get_type() #4
  %call32 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 %call31)
  %34 = bitcast %struct._GTypeInstance* %call32 to %struct._GimpItem*
  %call33 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %34)
  %call34 = call %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage* %call33)
  %call35 = call i32 @gimp_channel_is_empty(%struct._GimpChannel* %call34)
  %tobool36 = icmp ne i32 %call35, 0
  br i1 %tobool36, label %if.else, label %if.then.37

if.then.37:                                       ; preds = %land.lhs.true.30
  %35 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %36 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %37 = load i32, i32* %rotate_type, align 4
  %38 = load double, double* %cx, align 8
  %39 = load double, double* %cy, align 8
  %40 = load i32, i32* %clip_result, align 4
  %call38 = call %struct._GimpDrawable* @gimp_drawable_transform_rotate(%struct._GimpDrawable* %35, %struct._GimpContext* %36, i32 %37, double %38, double %39, i32 %40)
  %tobool39 = icmp ne %struct._GimpDrawable* %call38, null
  br i1 %tobool39, label %if.end, label %if.then.40

if.then.40:                                       ; preds = %if.then.37
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.40, %if.then.37
  br label %if.end.43

if.else:                                          ; preds = %land.lhs.true.30, %if.then.24
  %41 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %42 = bitcast %struct._GimpDrawable* %41 to %struct._GTypeInstance*
  %call41 = call i64 @gimp_item_get_type() #4
  %call42 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %42, i64 %call41)
  %43 = bitcast %struct._GTypeInstance* %call42 to %struct._GimpItem*
  %44 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %45 = load i32, i32* %rotate_type, align 4
  %46 = load double, double* %cx, align 8
  %47 = load double, double* %cy, align 8
  %48 = load i32, i32* %clip_result, align 4
  call void @gimp_item_rotate(%struct._GimpItem* %43, %struct._GimpContext* %44, i32 %45, double %46, double %47, i32 %48)
  br label %if.end.43

if.end.43:                                        ; preds = %if.else, %if.end
  br label %if.end.44

if.end.44:                                        ; preds = %if.end.43, %land.lhs.true, %if.then
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %entry
  %49 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %50 = load i32, i32* %success, align 4
  %51 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool46 = icmp ne %struct._GError** %51, null
  br i1 %tobool46, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.45
  %52 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %53 = load %struct._GError*, %struct._GError** %52, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.45
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %53, %cond.true ], [ null, %cond.false ]
  %call47 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %49, i32 %50, %struct._GError* %cond)
  store %struct._GValueArray* %call47, %struct._GValueArray** %return_vals, align 8
  %54 = load i32, i32* %success, align 4
  %tobool48 = icmp ne i32 %54, 0
  br i1 %tobool48, label %if.then.49, label %if.end.52

if.then.49:                                       ; preds = %cond.end
  %55 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values50 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %55, i32 0, i32 1
  %56 = load %struct._GValue*, %struct._GValue** %values50, align 8
  %arrayidx51 = getelementptr inbounds %struct._GValue, %struct._GValue* %56, i64 1
  %57 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_value_set_drawable(%struct._GValue* %arrayidx51, %struct._GimpDrawable* %57)
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.49, %cond.end
  %58 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %58
}

; Function Attrs: nounwind readnone
declare i64 @gimp_rotation_type_get_type() #2

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @drawable_transform_rotate_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  %angle = alloca double, align 8
  %auto_center = alloca i32, align 4
  %center_x = alloca i32, align 4
  %center_y = alloca i32, align 4
  %transform_direction = alloca i32, align 4
  %interpolation = alloca i32, align 4
  %recursion_level = alloca i32, align 4
  %clip_result = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %matrix = alloca %struct._GimpMatrix3, align 8
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
  %call9 = call i32 @g_value_get_int(%struct._GValue* %arrayidx8)
  store i32 %call9, i32* %center_x, align 4
  %9 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values10 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %9, i32 0, i32 1
  %10 = load %struct._GValue*, %struct._GValue** %values10, align 8
  %arrayidx11 = getelementptr inbounds %struct._GValue, %struct._GValue* %10, i64 4
  %call12 = call i32 @g_value_get_int(%struct._GValue* %arrayidx11)
  store i32 %call12, i32* %center_y, align 4
  %11 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values13 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %11, i32 0, i32 1
  %12 = load %struct._GValue*, %struct._GValue** %values13, align 8
  %arrayidx14 = getelementptr inbounds %struct._GValue, %struct._GValue* %12, i64 5
  %call15 = call i32 @g_value_get_enum(%struct._GValue* %arrayidx14)
  store i32 %call15, i32* %transform_direction, align 4
  %13 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values16 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %13, i32 0, i32 1
  %14 = load %struct._GValue*, %struct._GValue** %values16, align 8
  %arrayidx17 = getelementptr inbounds %struct._GValue, %struct._GValue* %14, i64 6
  %call18 = call i32 @g_value_get_enum(%struct._GValue* %arrayidx17)
  store i32 %call18, i32* %interpolation, align 4
  %15 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values19 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %15, i32 0, i32 1
  %16 = load %struct._GValue*, %struct._GValue** %values19, align 8
  %arrayidx20 = getelementptr inbounds %struct._GValue, %struct._GValue* %16, i64 8
  %call21 = call i32 @g_value_get_int(%struct._GValue* %arrayidx20)
  store i32 %call21, i32* %recursion_level, align 4
  %17 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values22 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %17, i32 0, i32 1
  %18 = load %struct._GValue*, %struct._GValue** %values22, align 8
  %arrayidx23 = getelementptr inbounds %struct._GValue, %struct._GValue* %18, i64 9
  %call24 = call i32 @g_value_get_enum(%struct._GValue* %arrayidx23)
  store i32 %call24, i32* %clip_result, align 4
  %19 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %19, 0
  br i1 %tobool, label %if.then, label %if.end.69

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
  br i1 %tobool28, label %land.lhs.true, label %if.end.68

land.lhs.true:                                    ; preds = %if.then
  %25 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %26 = bitcast %struct._GimpDrawable* %25 to %struct._GTypeInstance*
  %call29 = call i64 @gimp_item_get_type() #4
  %call30 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %26, i64 %call29)
  %27 = bitcast %struct._GTypeInstance* %call30 to %struct._GimpItem*
  %call31 = call i32 @gimp_item_mask_intersect(%struct._GimpItem* %27, i32* %x, i32* %y, i32* %width, i32* %height)
  %tobool32 = icmp ne i32 %call31, 0
  br i1 %tobool32, label %if.then.33, label %if.end.68

if.then.33:                                       ; preds = %land.lhs.true
  %28 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %29 = bitcast %struct._GimpDrawable* %28 to %struct._GTypeInstance*
  %call34 = call i64 @gimp_item_get_type() #4
  %call35 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 %call34)
  %30 = bitcast %struct._GTypeInstance* %call35 to %struct._GimpItem*
  call void @gimp_item_get_offset(%struct._GimpItem* %30, i32* %off_x, i32* %off_y)
  %31 = load i32, i32* %off_x, align 4
  %32 = load i32, i32* %x, align 4
  %add = add nsw i32 %32, %31
  store i32 %add, i32* %x, align 4
  %33 = load i32, i32* %off_y, align 4
  %34 = load i32, i32* %y, align 4
  %add36 = add nsw i32 %34, %33
  store i32 %add36, i32* %y, align 4
  call void @gimp_matrix3_identity(%struct._GimpMatrix3* %matrix)
  %35 = load i32, i32* %auto_center, align 4
  %tobool37 = icmp ne i32 %35, 0
  br i1 %tobool37, label %if.then.38, label %if.else

if.then.38:                                       ; preds = %if.then.33
  %36 = load i32, i32* %x, align 4
  %37 = load i32, i32* %y, align 4
  %38 = load i32, i32* %width, align 4
  %39 = load i32, i32* %height, align 4
  %40 = load double, double* %angle, align 8
  call void @gimp_transform_matrix_rotate_rect(%struct._GimpMatrix3* %matrix, i32 %36, i32 %37, i32 %38, i32 %39, double %40)
  br label %if.end

if.else:                                          ; preds = %if.then.33
  %41 = load i32, i32* %center_x, align 4
  %conv = sitofp i32 %41 to double
  %42 = load i32, i32* %center_y, align 4
  %conv39 = sitofp i32 %42 to double
  %43 = load double, double* %angle, align 8
  call void @gimp_transform_matrix_rotate_center(%struct._GimpMatrix3* %matrix, double %conv, double %conv39, double %43)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.38
  %44 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %tobool40 = icmp ne %struct._GimpProgress* %44, null
  br i1 %tobool40, label %if.then.41, label %if.end.44

if.then.41:                                       ; preds = %if.end
  %45 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %call42 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.156, i32 0, i32 0)) #5
  %call43 = call %struct._GimpProgress* @gimp_progress_start(%struct._GimpProgress* %45, i8* %call42, i32 0)
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.41, %if.end
  %46 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %47 = bitcast %struct._GimpDrawable* %46 to %struct._GTypeInstance*
  %call45 = call i64 @gimp_viewable_get_type() #4
  %call46 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %47, i64 %call45)
  %48 = bitcast %struct._GTypeInstance* %call46 to %struct._GimpViewable*
  %call47 = call %struct._GimpContainer* @gimp_viewable_get_children(%struct._GimpViewable* %48)
  %tobool48 = icmp ne %struct._GimpContainer* %call47, null
  br i1 %tobool48, label %if.else.61, label %land.lhs.true.49

land.lhs.true.49:                                 ; preds = %if.end.44
  %49 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %50 = bitcast %struct._GimpDrawable* %49 to %struct._GTypeInstance*
  %call50 = call i64 @gimp_item_get_type() #4
  %call51 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %50, i64 %call50)
  %51 = bitcast %struct._GTypeInstance* %call51 to %struct._GimpItem*
  %call52 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %51)
  %call53 = call %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage* %call52)
  %call54 = call i32 @gimp_channel_is_empty(%struct._GimpChannel* %call53)
  %tobool55 = icmp ne i32 %call54, 0
  br i1 %tobool55, label %if.else.61, label %if.then.56

if.then.56:                                       ; preds = %land.lhs.true.49
  %52 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %53 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %54 = load i32, i32* %transform_direction, align 4
  %55 = load i32, i32* %interpolation, align 4
  %56 = load i32, i32* %recursion_level, align 4
  %57 = load i32, i32* %clip_result, align 4
  %58 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %call57 = call %struct._GimpDrawable* @gimp_drawable_transform_affine(%struct._GimpDrawable* %52, %struct._GimpContext* %53, %struct._GimpMatrix3* %matrix, i32 %54, i32 %55, i32 %56, i32 %57, %struct._GimpProgress* %58)
  %tobool58 = icmp ne %struct._GimpDrawable* %call57, null
  br i1 %tobool58, label %if.end.60, label %if.then.59

if.then.59:                                       ; preds = %if.then.56
  store i32 0, i32* %success, align 4
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.59, %if.then.56
  br label %if.end.64

if.else.61:                                       ; preds = %land.lhs.true.49, %if.end.44
  %59 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %60 = bitcast %struct._GimpDrawable* %59 to %struct._GTypeInstance*
  %call62 = call i64 @gimp_item_get_type() #4
  %call63 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %60, i64 %call62)
  %61 = bitcast %struct._GTypeInstance* %call63 to %struct._GimpItem*
  %62 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %63 = load i32, i32* %transform_direction, align 4
  %64 = load i32, i32* %interpolation, align 4
  %65 = load i32, i32* %recursion_level, align 4
  %66 = load i32, i32* %clip_result, align 4
  %67 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  call void @gimp_item_transform(%struct._GimpItem* %61, %struct._GimpContext* %62, %struct._GimpMatrix3* %matrix, i32 %63, i32 %64, i32 %65, i32 %66, %struct._GimpProgress* %67)
  br label %if.end.64

if.end.64:                                        ; preds = %if.else.61, %if.end.60
  %68 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %tobool65 = icmp ne %struct._GimpProgress* %68, null
  br i1 %tobool65, label %if.then.66, label %if.end.67

if.then.66:                                       ; preds = %if.end.64
  %69 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  call void @gimp_progress_end(%struct._GimpProgress* %69)
  br label %if.end.67

if.end.67:                                        ; preds = %if.then.66, %if.end.64
  br label %if.end.68

if.end.68:                                        ; preds = %if.end.67, %land.lhs.true, %if.then
  br label %if.end.69

if.end.69:                                        ; preds = %if.end.68, %entry
  %70 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %71 = load i32, i32* %success, align 4
  %72 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool70 = icmp ne %struct._GError** %72, null
  br i1 %tobool70, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.69
  %73 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %74 = load %struct._GError*, %struct._GError** %73, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.69
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %74, %cond.true ], [ null, %cond.false ]
  %call71 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %70, i32 %71, %struct._GError* %cond)
  store %struct._GValueArray* %call71, %struct._GValueArray** %return_vals, align 8
  %75 = load i32, i32* %success, align 4
  %tobool72 = icmp ne i32 %75, 0
  br i1 %tobool72, label %if.then.73, label %if.end.76

if.then.73:                                       ; preds = %cond.end
  %76 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values74 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %76, i32 0, i32 1
  %77 = load %struct._GValue*, %struct._GValue** %values74, align 8
  %arrayidx75 = getelementptr inbounds %struct._GValue, %struct._GValue* %77, i64 1
  %78 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_value_set_drawable(%struct._GValue* %arrayidx75, %struct._GimpDrawable* %78)
  br label %if.end.76

if.end.76:                                        ; preds = %if.then.73, %cond.end
  %79 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %79
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @drawable_transform_rotate_default_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  %angle = alloca double, align 8
  %auto_center = alloca i32, align 4
  %center_x = alloca i32, align 4
  %center_y = alloca i32, align 4
  %interpolate = alloca i32, align 4
  %clip_result = alloca i32, align 4
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
  %call9 = call i32 @g_value_get_int(%struct._GValue* %arrayidx8)
  store i32 %call9, i32* %center_x, align 4
  %9 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values10 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %9, i32 0, i32 1
  %10 = load %struct._GValue*, %struct._GValue** %values10, align 8
  %arrayidx11 = getelementptr inbounds %struct._GValue, %struct._GValue* %10, i64 4
  %call12 = call i32 @g_value_get_int(%struct._GValue* %arrayidx11)
  store i32 %call12, i32* %center_y, align 4
  %11 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values13 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %11, i32 0, i32 1
  %12 = load %struct._GValue*, %struct._GValue** %values13, align 8
  %arrayidx14 = getelementptr inbounds %struct._GValue, %struct._GValue* %12, i64 5
  %call15 = call i32 @g_value_get_boolean(%struct._GValue* %arrayidx14)
  store i32 %call15, i32* %interpolate, align 4
  %13 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values16 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %13, i32 0, i32 1
  %14 = load %struct._GValue*, %struct._GValue** %values16, align 8
  %arrayidx17 = getelementptr inbounds %struct._GValue, %struct._GValue* %14, i64 6
  %call18 = call i32 @g_value_get_enum(%struct._GValue* %arrayidx17)
  store i32 %call18, i32* %clip_result, align 4
  %15 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %15, 0
  br i1 %tobool, label %if.then, label %if.end.67

if.then:                                          ; preds = %entry
  %16 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %17 = bitcast %struct._GimpDrawable* %16 to %struct._GTypeInstance*
  %call19 = call i64 @gimp_item_get_type() #4
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call19)
  %18 = bitcast %struct._GTypeInstance* %call20 to %struct._GimpItem*
  %19 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call21 = call i32 @gimp_pdb_item_is_attached(%struct._GimpItem* %18, %struct._GimpImage* null, i32 1, %struct._GError** %19)
  store i32 %call21, i32* %success, align 4
  %20 = load i32, i32* %success, align 4
  %tobool22 = icmp ne i32 %20, 0
  br i1 %tobool22, label %land.lhs.true, label %if.end.66

land.lhs.true:                                    ; preds = %if.then
  %21 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %22 = bitcast %struct._GimpDrawable* %21 to %struct._GTypeInstance*
  %call23 = call i64 @gimp_item_get_type() #4
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call23)
  %23 = bitcast %struct._GTypeInstance* %call24 to %struct._GimpItem*
  %call25 = call i32 @gimp_item_mask_intersect(%struct._GimpItem* %23, i32* %x, i32* %y, i32* %width, i32* %height)
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %if.then.27, label %if.end.66

if.then.27:                                       ; preds = %land.lhs.true
  store i32 0, i32* %interpolation_type, align 4
  %24 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %25 = bitcast %struct._GimpDrawable* %24 to %struct._GTypeInstance*
  %call28 = call i64 @gimp_item_get_type() #4
  %call29 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call28)
  %26 = bitcast %struct._GTypeInstance* %call29 to %struct._GimpItem*
  call void @gimp_item_get_offset(%struct._GimpItem* %26, i32* %off_x, i32* %off_y)
  %27 = load i32, i32* %off_x, align 4
  %28 = load i32, i32* %x, align 4
  %add = add nsw i32 %28, %27
  store i32 %add, i32* %x, align 4
  %29 = load i32, i32* %off_y, align 4
  %30 = load i32, i32* %y, align 4
  %add30 = add nsw i32 %30, %29
  store i32 %add30, i32* %y, align 4
  call void @gimp_matrix3_identity(%struct._GimpMatrix3* %matrix)
  %31 = load i32, i32* %auto_center, align 4
  %tobool31 = icmp ne i32 %31, 0
  br i1 %tobool31, label %if.then.32, label %if.else

if.then.32:                                       ; preds = %if.then.27
  %32 = load i32, i32* %x, align 4
  %33 = load i32, i32* %y, align 4
  %34 = load i32, i32* %width, align 4
  %35 = load i32, i32* %height, align 4
  %36 = load double, double* %angle, align 8
  call void @gimp_transform_matrix_rotate_rect(%struct._GimpMatrix3* %matrix, i32 %32, i32 %33, i32 %34, i32 %35, double %36)
  br label %if.end

if.else:                                          ; preds = %if.then.27
  %37 = load i32, i32* %center_x, align 4
  %conv = sitofp i32 %37 to double
  %38 = load i32, i32* %center_y, align 4
  %conv33 = sitofp i32 %38 to double
  %39 = load double, double* %angle, align 8
  call void @gimp_transform_matrix_rotate_center(%struct._GimpMatrix3* %matrix, double %conv, double %conv33, double %39)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.32
  %40 = load i32, i32* %interpolate, align 4
  %tobool34 = icmp ne i32 %40, 0
  br i1 %tobool34, label %if.then.35, label %if.end.37

if.then.35:                                       ; preds = %if.end
  %41 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %config = getelementptr inbounds %struct._Gimp, %struct._Gimp* %41, i32 0, i32 1
  %42 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config, align 8
  %interpolation_type36 = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %42, i32 0, i32 2
  %43 = load i32, i32* %interpolation_type36, align 4
  store i32 %43, i32* %interpolation_type, align 4
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.35, %if.end
  %44 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %tobool38 = icmp ne %struct._GimpProgress* %44, null
  br i1 %tobool38, label %if.then.39, label %if.end.42

if.then.39:                                       ; preds = %if.end.37
  %45 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %call40 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.156, i32 0, i32 0)) #5
  %call41 = call %struct._GimpProgress* @gimp_progress_start(%struct._GimpProgress* %45, i8* %call40, i32 0)
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.39, %if.end.37
  %46 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %47 = bitcast %struct._GimpDrawable* %46 to %struct._GTypeInstance*
  %call43 = call i64 @gimp_viewable_get_type() #4
  %call44 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %47, i64 %call43)
  %48 = bitcast %struct._GTypeInstance* %call44 to %struct._GimpViewable*
  %call45 = call %struct._GimpContainer* @gimp_viewable_get_children(%struct._GimpViewable* %48)
  %tobool46 = icmp ne %struct._GimpContainer* %call45, null
  br i1 %tobool46, label %if.else.59, label %land.lhs.true.47

land.lhs.true.47:                                 ; preds = %if.end.42
  %49 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %50 = bitcast %struct._GimpDrawable* %49 to %struct._GTypeInstance*
  %call48 = call i64 @gimp_item_get_type() #4
  %call49 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %50, i64 %call48)
  %51 = bitcast %struct._GTypeInstance* %call49 to %struct._GimpItem*
  %call50 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %51)
  %call51 = call %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage* %call50)
  %call52 = call i32 @gimp_channel_is_empty(%struct._GimpChannel* %call51)
  %tobool53 = icmp ne i32 %call52, 0
  br i1 %tobool53, label %if.else.59, label %if.then.54

if.then.54:                                       ; preds = %land.lhs.true.47
  %52 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %53 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %54 = load i32, i32* %interpolation_type, align 4
  %55 = load i32, i32* %clip_result, align 4
  %56 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %call55 = call %struct._GimpDrawable* @gimp_drawable_transform_affine(%struct._GimpDrawable* %52, %struct._GimpContext* %53, %struct._GimpMatrix3* %matrix, i32 0, i32 %54, i32 3, i32 %55, %struct._GimpProgress* %56)
  %tobool56 = icmp ne %struct._GimpDrawable* %call55, null
  br i1 %tobool56, label %if.end.58, label %if.then.57

if.then.57:                                       ; preds = %if.then.54
  store i32 0, i32* %success, align 4
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.57, %if.then.54
  br label %if.end.62

if.else.59:                                       ; preds = %land.lhs.true.47, %if.end.42
  %57 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %58 = bitcast %struct._GimpDrawable* %57 to %struct._GTypeInstance*
  %call60 = call i64 @gimp_item_get_type() #4
  %call61 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %58, i64 %call60)
  %59 = bitcast %struct._GTypeInstance* %call61 to %struct._GimpItem*
  %60 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %61 = load i32, i32* %interpolation_type, align 4
  %62 = load i32, i32* %clip_result, align 4
  %63 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  call void @gimp_item_transform(%struct._GimpItem* %59, %struct._GimpContext* %60, %struct._GimpMatrix3* %matrix, i32 0, i32 %61, i32 3, i32 %62, %struct._GimpProgress* %63)
  br label %if.end.62

if.end.62:                                        ; preds = %if.else.59, %if.end.58
  %64 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %tobool63 = icmp ne %struct._GimpProgress* %64, null
  br i1 %tobool63, label %if.then.64, label %if.end.65

if.then.64:                                       ; preds = %if.end.62
  %65 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  call void @gimp_progress_end(%struct._GimpProgress* %65)
  br label %if.end.65

if.end.65:                                        ; preds = %if.then.64, %if.end.62
  br label %if.end.66

if.end.66:                                        ; preds = %if.end.65, %land.lhs.true, %if.then
  br label %if.end.67

if.end.67:                                        ; preds = %if.end.66, %entry
  %66 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %67 = load i32, i32* %success, align 4
  %68 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool68 = icmp ne %struct._GError** %68, null
  br i1 %tobool68, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.67
  %69 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %70 = load %struct._GError*, %struct._GError** %69, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.67
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %70, %cond.true ], [ null, %cond.false ]
  %call69 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %66, i32 %67, %struct._GError* %cond)
  store %struct._GValueArray* %call69, %struct._GValueArray** %return_vals, align 8
  %71 = load i32, i32* %success, align 4
  %tobool70 = icmp ne i32 %71, 0
  br i1 %tobool70, label %if.then.71, label %if.end.74

if.then.71:                                       ; preds = %cond.end
  %72 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values72 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %72, i32 0, i32 1
  %73 = load %struct._GValue*, %struct._GValue** %values72, align 8
  %arrayidx73 = getelementptr inbounds %struct._GValue, %struct._GValue* %73, i64 1
  %74 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_value_set_drawable(%struct._GValue* %arrayidx73, %struct._GimpDrawable* %74)
  br label %if.end.74

if.end.74:                                        ; preds = %if.then.71, %cond.end
  %75 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %75
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @drawable_transform_scale_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  %x0 = alloca double, align 8
  %y0 = alloca double, align 8
  %x1 = alloca double, align 8
  %y1 = alloca double, align 8
  %transform_direction = alloca i32, align 4
  %interpolation = alloca i32, align 4
  %recursion_level = alloca i32, align 4
  %clip_result = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %matrix = alloca %struct._GimpMatrix3, align 8
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
  %call15 = call i32 @g_value_get_enum(%struct._GValue* %arrayidx14)
  store i32 %call15, i32* %transform_direction, align 4
  %13 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values16 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %13, i32 0, i32 1
  %14 = load %struct._GValue*, %struct._GValue** %values16, align 8
  %arrayidx17 = getelementptr inbounds %struct._GValue, %struct._GValue* %14, i64 6
  %call18 = call i32 @g_value_get_enum(%struct._GValue* %arrayidx17)
  store i32 %call18, i32* %interpolation, align 4
  %15 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values19 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %15, i32 0, i32 1
  %16 = load %struct._GValue*, %struct._GValue** %values19, align 8
  %arrayidx20 = getelementptr inbounds %struct._GValue, %struct._GValue* %16, i64 8
  %call21 = call i32 @g_value_get_int(%struct._GValue* %arrayidx20)
  store i32 %call21, i32* %recursion_level, align 4
  %17 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values22 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %17, i32 0, i32 1
  %18 = load %struct._GValue*, %struct._GValue** %values22, align 8
  %arrayidx23 = getelementptr inbounds %struct._GValue, %struct._GValue* %18, i64 9
  %call24 = call i32 @g_value_get_enum(%struct._GValue* %arrayidx23)
  store i32 %call24, i32* %clip_result, align 4
  %19 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %19, 0
  br i1 %tobool, label %if.then, label %if.end.68

if.then:                                          ; preds = %entry
  %20 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %21 = bitcast %struct._GimpDrawable* %20 to %struct._GTypeInstance*
  %call25 = call i64 @gimp_item_get_type() #4
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call25)
  %22 = bitcast %struct._GTypeInstance* %call26 to %struct._GimpItem*
  %23 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call27 = call i32 @gimp_pdb_item_is_attached(%struct._GimpItem* %22, %struct._GimpImage* null, i32 1, %struct._GError** %23)
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %if.then
  %24 = load double, double* %x0, align 8
  %25 = load double, double* %x1, align 8
  %cmp = fcmp olt double %24, %25
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %26 = load double, double* %y0, align 8
  %27 = load double, double* %y1, align 8
  %cmp29 = fcmp olt double %26, %27
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %if.then
  %28 = phi i1 [ false, %land.lhs.true ], [ false, %if.then ], [ %cmp29, %land.rhs ]
  %land.ext = zext i1 %28 to i32
  store i32 %land.ext, i32* %success, align 4
  %29 = load i32, i32* %success, align 4
  %tobool30 = icmp ne i32 %29, 0
  br i1 %tobool30, label %land.lhs.true.31, label %if.end.67

land.lhs.true.31:                                 ; preds = %land.end
  %30 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %31 = bitcast %struct._GimpDrawable* %30 to %struct._GTypeInstance*
  %call32 = call i64 @gimp_item_get_type() #4
  %call33 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 %call32)
  %32 = bitcast %struct._GTypeInstance* %call33 to %struct._GimpItem*
  %call34 = call i32 @gimp_item_mask_intersect(%struct._GimpItem* %32, i32* %x, i32* %y, i32* %width, i32* %height)
  %tobool35 = icmp ne i32 %call34, 0
  br i1 %tobool35, label %if.then.36, label %if.end.67

if.then.36:                                       ; preds = %land.lhs.true.31
  %33 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %34 = bitcast %struct._GimpDrawable* %33 to %struct._GTypeInstance*
  %call37 = call i64 @gimp_item_get_type() #4
  %call38 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 %call37)
  %35 = bitcast %struct._GTypeInstance* %call38 to %struct._GimpItem*
  call void @gimp_item_get_offset(%struct._GimpItem* %35, i32* %off_x, i32* %off_y)
  %36 = load i32, i32* %off_x, align 4
  %37 = load i32, i32* %x, align 4
  %add = add nsw i32 %37, %36
  store i32 %add, i32* %x, align 4
  %38 = load i32, i32* %off_y, align 4
  %39 = load i32, i32* %y, align 4
  %add39 = add nsw i32 %39, %38
  store i32 %add39, i32* %y, align 4
  call void @gimp_matrix3_identity(%struct._GimpMatrix3* %matrix)
  %40 = load i32, i32* %x, align 4
  %41 = load i32, i32* %y, align 4
  %42 = load i32, i32* %width, align 4
  %43 = load i32, i32* %height, align 4
  %44 = load double, double* %x0, align 8
  %45 = load double, double* %y0, align 8
  %46 = load double, double* %x1, align 8
  %47 = load double, double* %x0, align 8
  %sub = fsub double %46, %47
  %48 = load double, double* %y1, align 8
  %49 = load double, double* %y0, align 8
  %sub40 = fsub double %48, %49
  call void @gimp_transform_matrix_scale(%struct._GimpMatrix3* %matrix, i32 %40, i32 %41, i32 %42, i32 %43, double %44, double %45, double %sub, double %sub40)
  %50 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %tobool41 = icmp ne %struct._GimpProgress* %50, null
  br i1 %tobool41, label %if.then.42, label %if.end

if.then.42:                                       ; preds = %if.then.36
  %51 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %call43 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.157, i32 0, i32 0)) #5
  %call44 = call %struct._GimpProgress* @gimp_progress_start(%struct._GimpProgress* %51, i8* %call43, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then.42, %if.then.36
  %52 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %53 = bitcast %struct._GimpDrawable* %52 to %struct._GTypeInstance*
  %call45 = call i64 @gimp_viewable_get_type() #4
  %call46 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %53, i64 %call45)
  %54 = bitcast %struct._GTypeInstance* %call46 to %struct._GimpViewable*
  %call47 = call %struct._GimpContainer* @gimp_viewable_get_children(%struct._GimpViewable* %54)
  %tobool48 = icmp ne %struct._GimpContainer* %call47, null
  br i1 %tobool48, label %if.else, label %land.lhs.true.49

land.lhs.true.49:                                 ; preds = %if.end
  %55 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %56 = bitcast %struct._GimpDrawable* %55 to %struct._GTypeInstance*
  %call50 = call i64 @gimp_item_get_type() #4
  %call51 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %56, i64 %call50)
  %57 = bitcast %struct._GTypeInstance* %call51 to %struct._GimpItem*
  %call52 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %57)
  %call53 = call %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage* %call52)
  %call54 = call i32 @gimp_channel_is_empty(%struct._GimpChannel* %call53)
  %tobool55 = icmp ne i32 %call54, 0
  br i1 %tobool55, label %if.else, label %if.then.56

if.then.56:                                       ; preds = %land.lhs.true.49
  %58 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %59 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %60 = load i32, i32* %transform_direction, align 4
  %61 = load i32, i32* %interpolation, align 4
  %62 = load i32, i32* %recursion_level, align 4
  %63 = load i32, i32* %clip_result, align 4
  %64 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %call57 = call %struct._GimpDrawable* @gimp_drawable_transform_affine(%struct._GimpDrawable* %58, %struct._GimpContext* %59, %struct._GimpMatrix3* %matrix, i32 %60, i32 %61, i32 %62, i32 %63, %struct._GimpProgress* %64)
  %tobool58 = icmp ne %struct._GimpDrawable* %call57, null
  br i1 %tobool58, label %if.end.60, label %if.then.59

if.then.59:                                       ; preds = %if.then.56
  store i32 0, i32* %success, align 4
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.59, %if.then.56
  br label %if.end.63

if.else:                                          ; preds = %land.lhs.true.49, %if.end
  %65 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %66 = bitcast %struct._GimpDrawable* %65 to %struct._GTypeInstance*
  %call61 = call i64 @gimp_item_get_type() #4
  %call62 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %66, i64 %call61)
  %67 = bitcast %struct._GTypeInstance* %call62 to %struct._GimpItem*
  %68 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %69 = load i32, i32* %transform_direction, align 4
  %70 = load i32, i32* %interpolation, align 4
  %71 = load i32, i32* %recursion_level, align 4
  %72 = load i32, i32* %clip_result, align 4
  %73 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  call void @gimp_item_transform(%struct._GimpItem* %67, %struct._GimpContext* %68, %struct._GimpMatrix3* %matrix, i32 %69, i32 %70, i32 %71, i32 %72, %struct._GimpProgress* %73)
  br label %if.end.63

if.end.63:                                        ; preds = %if.else, %if.end.60
  %74 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %tobool64 = icmp ne %struct._GimpProgress* %74, null
  br i1 %tobool64, label %if.then.65, label %if.end.66

if.then.65:                                       ; preds = %if.end.63
  %75 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  call void @gimp_progress_end(%struct._GimpProgress* %75)
  br label %if.end.66

if.end.66:                                        ; preds = %if.then.65, %if.end.63
  br label %if.end.67

if.end.67:                                        ; preds = %if.end.66, %land.lhs.true.31, %land.end
  br label %if.end.68

if.end.68:                                        ; preds = %if.end.67, %entry
  %76 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %77 = load i32, i32* %success, align 4
  %78 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool69 = icmp ne %struct._GError** %78, null
  br i1 %tobool69, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.68
  %79 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %80 = load %struct._GError*, %struct._GError** %79, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.68
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %80, %cond.true ], [ null, %cond.false ]
  %call70 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %76, i32 %77, %struct._GError* %cond)
  store %struct._GValueArray* %call70, %struct._GValueArray** %return_vals, align 8
  %81 = load i32, i32* %success, align 4
  %tobool71 = icmp ne i32 %81, 0
  br i1 %tobool71, label %if.then.72, label %if.end.75

if.then.72:                                       ; preds = %cond.end
  %82 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values73 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %82, i32 0, i32 1
  %83 = load %struct._GValue*, %struct._GValue** %values73, align 8
  %arrayidx74 = getelementptr inbounds %struct._GValue, %struct._GValue* %83, i64 1
  %84 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_value_set_drawable(%struct._GValue* %arrayidx74, %struct._GimpDrawable* %84)
  br label %if.end.75

if.end.75:                                        ; preds = %if.then.72, %cond.end
  %85 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %85
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @drawable_transform_scale_default_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  %x0 = alloca double, align 8
  %y0 = alloca double, align 8
  %x1 = alloca double, align 8
  %y1 = alloca double, align 8
  %interpolate = alloca i32, align 4
  %clip_result = alloca i32, align 4
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
  %call15 = call i32 @g_value_get_boolean(%struct._GValue* %arrayidx14)
  store i32 %call15, i32* %interpolate, align 4
  %13 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values16 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %13, i32 0, i32 1
  %14 = load %struct._GValue*, %struct._GValue** %values16, align 8
  %arrayidx17 = getelementptr inbounds %struct._GValue, %struct._GValue* %14, i64 6
  %call18 = call i32 @g_value_get_enum(%struct._GValue* %arrayidx17)
  store i32 %call18, i32* %clip_result, align 4
  %15 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %15, 0
  br i1 %tobool, label %if.then, label %if.end.66

if.then:                                          ; preds = %entry
  %16 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %17 = bitcast %struct._GimpDrawable* %16 to %struct._GTypeInstance*
  %call19 = call i64 @gimp_item_get_type() #4
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call19)
  %18 = bitcast %struct._GTypeInstance* %call20 to %struct._GimpItem*
  %19 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call21 = call i32 @gimp_pdb_item_is_attached(%struct._GimpItem* %18, %struct._GimpImage* null, i32 1, %struct._GError** %19)
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %if.then
  %20 = load double, double* %x0, align 8
  %21 = load double, double* %x1, align 8
  %cmp = fcmp olt double %20, %21
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %22 = load double, double* %y0, align 8
  %23 = load double, double* %y1, align 8
  %cmp23 = fcmp olt double %22, %23
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %if.then
  %24 = phi i1 [ false, %land.lhs.true ], [ false, %if.then ], [ %cmp23, %land.rhs ]
  %land.ext = zext i1 %24 to i32
  store i32 %land.ext, i32* %success, align 4
  %25 = load i32, i32* %success, align 4
  %tobool24 = icmp ne i32 %25, 0
  br i1 %tobool24, label %land.lhs.true.25, label %if.end.65

land.lhs.true.25:                                 ; preds = %land.end
  %26 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %27 = bitcast %struct._GimpDrawable* %26 to %struct._GTypeInstance*
  %call26 = call i64 @gimp_item_get_type() #4
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call26)
  %28 = bitcast %struct._GTypeInstance* %call27 to %struct._GimpItem*
  %call28 = call i32 @gimp_item_mask_intersect(%struct._GimpItem* %28, i32* %x, i32* %y, i32* %width, i32* %height)
  %tobool29 = icmp ne i32 %call28, 0
  br i1 %tobool29, label %if.then.30, label %if.end.65

if.then.30:                                       ; preds = %land.lhs.true.25
  store i32 0, i32* %interpolation_type, align 4
  %29 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %30 = bitcast %struct._GimpDrawable* %29 to %struct._GTypeInstance*
  %call31 = call i64 @gimp_item_get_type() #4
  %call32 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call31)
  %31 = bitcast %struct._GTypeInstance* %call32 to %struct._GimpItem*
  call void @gimp_item_get_offset(%struct._GimpItem* %31, i32* %off_x, i32* %off_y)
  %32 = load i32, i32* %off_x, align 4
  %33 = load i32, i32* %x, align 4
  %add = add nsw i32 %33, %32
  store i32 %add, i32* %x, align 4
  %34 = load i32, i32* %off_y, align 4
  %35 = load i32, i32* %y, align 4
  %add33 = add nsw i32 %35, %34
  store i32 %add33, i32* %y, align 4
  call void @gimp_matrix3_identity(%struct._GimpMatrix3* %matrix)
  %36 = load i32, i32* %x, align 4
  %37 = load i32, i32* %y, align 4
  %38 = load i32, i32* %width, align 4
  %39 = load i32, i32* %height, align 4
  %40 = load double, double* %x0, align 8
  %41 = load double, double* %y0, align 8
  %42 = load double, double* %x1, align 8
  %43 = load double, double* %x0, align 8
  %sub = fsub double %42, %43
  %44 = load double, double* %y1, align 8
  %45 = load double, double* %y0, align 8
  %sub34 = fsub double %44, %45
  call void @gimp_transform_matrix_scale(%struct._GimpMatrix3* %matrix, i32 %36, i32 %37, i32 %38, i32 %39, double %40, double %41, double %sub, double %sub34)
  %46 = load i32, i32* %interpolate, align 4
  %tobool35 = icmp ne i32 %46, 0
  br i1 %tobool35, label %if.then.36, label %if.end

if.then.36:                                       ; preds = %if.then.30
  %47 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %config = getelementptr inbounds %struct._Gimp, %struct._Gimp* %47, i32 0, i32 1
  %48 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config, align 8
  %interpolation_type37 = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %48, i32 0, i32 2
  %49 = load i32, i32* %interpolation_type37, align 4
  store i32 %49, i32* %interpolation_type, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.36, %if.then.30
  %50 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %tobool38 = icmp ne %struct._GimpProgress* %50, null
  br i1 %tobool38, label %if.then.39, label %if.end.42

if.then.39:                                       ; preds = %if.end
  %51 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %call40 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.157, i32 0, i32 0)) #5
  %call41 = call %struct._GimpProgress* @gimp_progress_start(%struct._GimpProgress* %51, i8* %call40, i32 0)
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.39, %if.end
  %52 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %53 = bitcast %struct._GimpDrawable* %52 to %struct._GTypeInstance*
  %call43 = call i64 @gimp_viewable_get_type() #4
  %call44 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %53, i64 %call43)
  %54 = bitcast %struct._GTypeInstance* %call44 to %struct._GimpViewable*
  %call45 = call %struct._GimpContainer* @gimp_viewable_get_children(%struct._GimpViewable* %54)
  %tobool46 = icmp ne %struct._GimpContainer* %call45, null
  br i1 %tobool46, label %if.else, label %land.lhs.true.47

land.lhs.true.47:                                 ; preds = %if.end.42
  %55 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %56 = bitcast %struct._GimpDrawable* %55 to %struct._GTypeInstance*
  %call48 = call i64 @gimp_item_get_type() #4
  %call49 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %56, i64 %call48)
  %57 = bitcast %struct._GTypeInstance* %call49 to %struct._GimpItem*
  %call50 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %57)
  %call51 = call %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage* %call50)
  %call52 = call i32 @gimp_channel_is_empty(%struct._GimpChannel* %call51)
  %tobool53 = icmp ne i32 %call52, 0
  br i1 %tobool53, label %if.else, label %if.then.54

if.then.54:                                       ; preds = %land.lhs.true.47
  %58 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %59 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %60 = load i32, i32* %interpolation_type, align 4
  %61 = load i32, i32* %clip_result, align 4
  %62 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %call55 = call %struct._GimpDrawable* @gimp_drawable_transform_affine(%struct._GimpDrawable* %58, %struct._GimpContext* %59, %struct._GimpMatrix3* %matrix, i32 0, i32 %60, i32 3, i32 %61, %struct._GimpProgress* %62)
  %tobool56 = icmp ne %struct._GimpDrawable* %call55, null
  br i1 %tobool56, label %if.end.58, label %if.then.57

if.then.57:                                       ; preds = %if.then.54
  store i32 0, i32* %success, align 4
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.57, %if.then.54
  br label %if.end.61

if.else:                                          ; preds = %land.lhs.true.47, %if.end.42
  %63 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %64 = bitcast %struct._GimpDrawable* %63 to %struct._GTypeInstance*
  %call59 = call i64 @gimp_item_get_type() #4
  %call60 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %64, i64 %call59)
  %65 = bitcast %struct._GTypeInstance* %call60 to %struct._GimpItem*
  %66 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %67 = load i32, i32* %interpolation_type, align 4
  %68 = load i32, i32* %clip_result, align 4
  %69 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  call void @gimp_item_transform(%struct._GimpItem* %65, %struct._GimpContext* %66, %struct._GimpMatrix3* %matrix, i32 0, i32 %67, i32 3, i32 %68, %struct._GimpProgress* %69)
  br label %if.end.61

if.end.61:                                        ; preds = %if.else, %if.end.58
  %70 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %tobool62 = icmp ne %struct._GimpProgress* %70, null
  br i1 %tobool62, label %if.then.63, label %if.end.64

if.then.63:                                       ; preds = %if.end.61
  %71 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  call void @gimp_progress_end(%struct._GimpProgress* %71)
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.63, %if.end.61
  br label %if.end.65

if.end.65:                                        ; preds = %if.end.64, %land.lhs.true.25, %land.end
  br label %if.end.66

if.end.66:                                        ; preds = %if.end.65, %entry
  %72 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %73 = load i32, i32* %success, align 4
  %74 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool67 = icmp ne %struct._GError** %74, null
  br i1 %tobool67, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.66
  %75 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %76 = load %struct._GError*, %struct._GError** %75, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.66
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %76, %cond.true ], [ null, %cond.false ]
  %call68 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %72, i32 %73, %struct._GError* %cond)
  store %struct._GValueArray* %call68, %struct._GValueArray** %return_vals, align 8
  %77 = load i32, i32* %success, align 4
  %tobool69 = icmp ne i32 %77, 0
  br i1 %tobool69, label %if.then.70, label %if.end.73

if.then.70:                                       ; preds = %cond.end
  %78 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values71 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %78, i32 0, i32 1
  %79 = load %struct._GValue*, %struct._GValue** %values71, align 8
  %arrayidx72 = getelementptr inbounds %struct._GValue, %struct._GValue* %79, i64 1
  %80 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_value_set_drawable(%struct._GValue* %arrayidx72, %struct._GimpDrawable* %80)
  br label %if.end.73

if.end.73:                                        ; preds = %if.then.70, %cond.end
  %81 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %81
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @drawable_transform_shear_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  %shear_type = alloca i32, align 4
  %magnitude = alloca double, align 8
  %transform_direction = alloca i32, align 4
  %interpolation = alloca i32, align 4
  %recursion_level = alloca i32, align 4
  %clip_result = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %matrix = alloca %struct._GimpMatrix3, align 8
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
  %call3 = call i32 @g_value_get_enum(%struct._GValue* %arrayidx2)
  store i32 %call3, i32* %shear_type, align 4
  %5 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values4 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %5, i32 0, i32 1
  %6 = load %struct._GValue*, %struct._GValue** %values4, align 8
  %arrayidx5 = getelementptr inbounds %struct._GValue, %struct._GValue* %6, i64 2
  %call6 = call double @g_value_get_double(%struct._GValue* %arrayidx5)
  store double %call6, double* %magnitude, align 8
  %7 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values7 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %7, i32 0, i32 1
  %8 = load %struct._GValue*, %struct._GValue** %values7, align 8
  %arrayidx8 = getelementptr inbounds %struct._GValue, %struct._GValue* %8, i64 3
  %call9 = call i32 @g_value_get_enum(%struct._GValue* %arrayidx8)
  store i32 %call9, i32* %transform_direction, align 4
  %9 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values10 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %9, i32 0, i32 1
  %10 = load %struct._GValue*, %struct._GValue** %values10, align 8
  %arrayidx11 = getelementptr inbounds %struct._GValue, %struct._GValue* %10, i64 4
  %call12 = call i32 @g_value_get_enum(%struct._GValue* %arrayidx11)
  store i32 %call12, i32* %interpolation, align 4
  %11 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values13 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %11, i32 0, i32 1
  %12 = load %struct._GValue*, %struct._GValue** %values13, align 8
  %arrayidx14 = getelementptr inbounds %struct._GValue, %struct._GValue* %12, i64 6
  %call15 = call i32 @g_value_get_int(%struct._GValue* %arrayidx14)
  store i32 %call15, i32* %recursion_level, align 4
  %13 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values16 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %13, i32 0, i32 1
  %14 = load %struct._GValue*, %struct._GValue** %values16, align 8
  %arrayidx17 = getelementptr inbounds %struct._GValue, %struct._GValue* %14, i64 7
  %call18 = call i32 @g_value_get_enum(%struct._GValue* %arrayidx17)
  store i32 %call18, i32* %clip_result, align 4
  %15 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %15, 0
  br i1 %tobool, label %if.then, label %if.end.58

if.then:                                          ; preds = %entry
  %16 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %17 = bitcast %struct._GimpDrawable* %16 to %struct._GTypeInstance*
  %call19 = call i64 @gimp_item_get_type() #4
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call19)
  %18 = bitcast %struct._GTypeInstance* %call20 to %struct._GimpItem*
  %19 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call21 = call i32 @gimp_pdb_item_is_attached(%struct._GimpItem* %18, %struct._GimpImage* null, i32 1, %struct._GError** %19)
  store i32 %call21, i32* %success, align 4
  %20 = load i32, i32* %success, align 4
  %tobool22 = icmp ne i32 %20, 0
  br i1 %tobool22, label %land.lhs.true, label %if.end.57

land.lhs.true:                                    ; preds = %if.then
  %21 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %22 = bitcast %struct._GimpDrawable* %21 to %struct._GTypeInstance*
  %call23 = call i64 @gimp_item_get_type() #4
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call23)
  %23 = bitcast %struct._GTypeInstance* %call24 to %struct._GimpItem*
  %call25 = call i32 @gimp_item_mask_intersect(%struct._GimpItem* %23, i32* %x, i32* %y, i32* %width, i32* %height)
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %if.then.27, label %if.end.57

if.then.27:                                       ; preds = %land.lhs.true
  %24 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %25 = bitcast %struct._GimpDrawable* %24 to %struct._GTypeInstance*
  %call28 = call i64 @gimp_item_get_type() #4
  %call29 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call28)
  %26 = bitcast %struct._GTypeInstance* %call29 to %struct._GimpItem*
  call void @gimp_item_get_offset(%struct._GimpItem* %26, i32* %off_x, i32* %off_y)
  %27 = load i32, i32* %off_x, align 4
  %28 = load i32, i32* %x, align 4
  %add = add nsw i32 %28, %27
  store i32 %add, i32* %x, align 4
  %29 = load i32, i32* %off_y, align 4
  %30 = load i32, i32* %y, align 4
  %add30 = add nsw i32 %30, %29
  store i32 %add30, i32* %y, align 4
  call void @gimp_matrix3_identity(%struct._GimpMatrix3* %matrix)
  %31 = load i32, i32* %x, align 4
  %32 = load i32, i32* %y, align 4
  %33 = load i32, i32* %width, align 4
  %34 = load i32, i32* %height, align 4
  %35 = load i32, i32* %shear_type, align 4
  %36 = load double, double* %magnitude, align 8
  call void @gimp_transform_matrix_shear(%struct._GimpMatrix3* %matrix, i32 %31, i32 %32, i32 %33, i32 %34, i32 %35, double %36)
  %37 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %tobool31 = icmp ne %struct._GimpProgress* %37, null
  br i1 %tobool31, label %if.then.32, label %if.end

if.then.32:                                       ; preds = %if.then.27
  %38 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %call33 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.158, i32 0, i32 0)) #5
  %call34 = call %struct._GimpProgress* @gimp_progress_start(%struct._GimpProgress* %38, i8* %call33, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then.32, %if.then.27
  %39 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %40 = bitcast %struct._GimpDrawable* %39 to %struct._GTypeInstance*
  %call35 = call i64 @gimp_viewable_get_type() #4
  %call36 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %40, i64 %call35)
  %41 = bitcast %struct._GTypeInstance* %call36 to %struct._GimpViewable*
  %call37 = call %struct._GimpContainer* @gimp_viewable_get_children(%struct._GimpViewable* %41)
  %tobool38 = icmp ne %struct._GimpContainer* %call37, null
  br i1 %tobool38, label %if.else, label %land.lhs.true.39

land.lhs.true.39:                                 ; preds = %if.end
  %42 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %43 = bitcast %struct._GimpDrawable* %42 to %struct._GTypeInstance*
  %call40 = call i64 @gimp_item_get_type() #4
  %call41 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %43, i64 %call40)
  %44 = bitcast %struct._GTypeInstance* %call41 to %struct._GimpItem*
  %call42 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %44)
  %call43 = call %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage* %call42)
  %call44 = call i32 @gimp_channel_is_empty(%struct._GimpChannel* %call43)
  %tobool45 = icmp ne i32 %call44, 0
  br i1 %tobool45, label %if.else, label %if.then.46

if.then.46:                                       ; preds = %land.lhs.true.39
  %45 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %46 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %47 = load i32, i32* %transform_direction, align 4
  %48 = load i32, i32* %interpolation, align 4
  %49 = load i32, i32* %recursion_level, align 4
  %50 = load i32, i32* %clip_result, align 4
  %51 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %call47 = call %struct._GimpDrawable* @gimp_drawable_transform_affine(%struct._GimpDrawable* %45, %struct._GimpContext* %46, %struct._GimpMatrix3* %matrix, i32 %47, i32 %48, i32 %49, i32 %50, %struct._GimpProgress* %51)
  %tobool48 = icmp ne %struct._GimpDrawable* %call47, null
  br i1 %tobool48, label %if.end.50, label %if.then.49

if.then.49:                                       ; preds = %if.then.46
  store i32 0, i32* %success, align 4
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.49, %if.then.46
  br label %if.end.53

if.else:                                          ; preds = %land.lhs.true.39, %if.end
  %52 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %53 = bitcast %struct._GimpDrawable* %52 to %struct._GTypeInstance*
  %call51 = call i64 @gimp_item_get_type() #4
  %call52 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %53, i64 %call51)
  %54 = bitcast %struct._GTypeInstance* %call52 to %struct._GimpItem*
  %55 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %56 = load i32, i32* %transform_direction, align 4
  %57 = load i32, i32* %interpolation, align 4
  %58 = load i32, i32* %recursion_level, align 4
  %59 = load i32, i32* %clip_result, align 4
  %60 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  call void @gimp_item_transform(%struct._GimpItem* %54, %struct._GimpContext* %55, %struct._GimpMatrix3* %matrix, i32 %56, i32 %57, i32 %58, i32 %59, %struct._GimpProgress* %60)
  br label %if.end.53

if.end.53:                                        ; preds = %if.else, %if.end.50
  %61 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %tobool54 = icmp ne %struct._GimpProgress* %61, null
  br i1 %tobool54, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %if.end.53
  %62 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  call void @gimp_progress_end(%struct._GimpProgress* %62)
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.55, %if.end.53
  br label %if.end.57

if.end.57:                                        ; preds = %if.end.56, %land.lhs.true, %if.then
  br label %if.end.58

if.end.58:                                        ; preds = %if.end.57, %entry
  %63 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %64 = load i32, i32* %success, align 4
  %65 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool59 = icmp ne %struct._GError** %65, null
  br i1 %tobool59, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.58
  %66 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %67 = load %struct._GError*, %struct._GError** %66, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.58
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %67, %cond.true ], [ null, %cond.false ]
  %call60 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %63, i32 %64, %struct._GError* %cond)
  store %struct._GValueArray* %call60, %struct._GValueArray** %return_vals, align 8
  %68 = load i32, i32* %success, align 4
  %tobool61 = icmp ne i32 %68, 0
  br i1 %tobool61, label %if.then.62, label %if.end.65

if.then.62:                                       ; preds = %cond.end
  %69 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values63 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %69, i32 0, i32 1
  %70 = load %struct._GValue*, %struct._GValue** %values63, align 8
  %arrayidx64 = getelementptr inbounds %struct._GValue, %struct._GValue* %70, i64 1
  %71 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_value_set_drawable(%struct._GValue* %arrayidx64, %struct._GimpDrawable* %71)
  br label %if.end.65

if.end.65:                                        ; preds = %if.then.62, %cond.end
  %72 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %72
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @drawable_transform_shear_default_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  %shear_type = alloca i32, align 4
  %magnitude = alloca double, align 8
  %interpolate = alloca i32, align 4
  %clip_result = alloca i32, align 4
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
  %call3 = call i32 @g_value_get_enum(%struct._GValue* %arrayidx2)
  store i32 %call3, i32* %shear_type, align 4
  %5 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values4 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %5, i32 0, i32 1
  %6 = load %struct._GValue*, %struct._GValue** %values4, align 8
  %arrayidx5 = getelementptr inbounds %struct._GValue, %struct._GValue* %6, i64 2
  %call6 = call double @g_value_get_double(%struct._GValue* %arrayidx5)
  store double %call6, double* %magnitude, align 8
  %7 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values7 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %7, i32 0, i32 1
  %8 = load %struct._GValue*, %struct._GValue** %values7, align 8
  %arrayidx8 = getelementptr inbounds %struct._GValue, %struct._GValue* %8, i64 3
  %call9 = call i32 @g_value_get_boolean(%struct._GValue* %arrayidx8)
  store i32 %call9, i32* %interpolate, align 4
  %9 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values10 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %9, i32 0, i32 1
  %10 = load %struct._GValue*, %struct._GValue** %values10, align 8
  %arrayidx11 = getelementptr inbounds %struct._GValue, %struct._GValue* %10, i64 4
  %call12 = call i32 @g_value_get_enum(%struct._GValue* %arrayidx11)
  store i32 %call12, i32* %clip_result, align 4
  %11 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %if.then, label %if.end.56

if.then:                                          ; preds = %entry
  %12 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %13 = bitcast %struct._GimpDrawable* %12 to %struct._GTypeInstance*
  %call13 = call i64 @gimp_item_get_type() #4
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call13)
  %14 = bitcast %struct._GTypeInstance* %call14 to %struct._GimpItem*
  %15 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call15 = call i32 @gimp_pdb_item_is_attached(%struct._GimpItem* %14, %struct._GimpImage* null, i32 1, %struct._GError** %15)
  store i32 %call15, i32* %success, align 4
  %16 = load i32, i32* %success, align 4
  %tobool16 = icmp ne i32 %16, 0
  br i1 %tobool16, label %land.lhs.true, label %if.end.55

land.lhs.true:                                    ; preds = %if.then
  %17 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %18 = bitcast %struct._GimpDrawable* %17 to %struct._GTypeInstance*
  %call17 = call i64 @gimp_item_get_type() #4
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call17)
  %19 = bitcast %struct._GTypeInstance* %call18 to %struct._GimpItem*
  %call19 = call i32 @gimp_item_mask_intersect(%struct._GimpItem* %19, i32* %x, i32* %y, i32* %width, i32* %height)
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %if.then.21, label %if.end.55

if.then.21:                                       ; preds = %land.lhs.true
  store i32 0, i32* %interpolation_type, align 4
  %20 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %21 = bitcast %struct._GimpDrawable* %20 to %struct._GTypeInstance*
  %call22 = call i64 @gimp_item_get_type() #4
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call22)
  %22 = bitcast %struct._GTypeInstance* %call23 to %struct._GimpItem*
  call void @gimp_item_get_offset(%struct._GimpItem* %22, i32* %off_x, i32* %off_y)
  %23 = load i32, i32* %off_x, align 4
  %24 = load i32, i32* %x, align 4
  %add = add nsw i32 %24, %23
  store i32 %add, i32* %x, align 4
  %25 = load i32, i32* %off_y, align 4
  %26 = load i32, i32* %y, align 4
  %add24 = add nsw i32 %26, %25
  store i32 %add24, i32* %y, align 4
  call void @gimp_matrix3_identity(%struct._GimpMatrix3* %matrix)
  %27 = load i32, i32* %x, align 4
  %28 = load i32, i32* %y, align 4
  %29 = load i32, i32* %width, align 4
  %30 = load i32, i32* %height, align 4
  %31 = load i32, i32* %shear_type, align 4
  %32 = load double, double* %magnitude, align 8
  call void @gimp_transform_matrix_shear(%struct._GimpMatrix3* %matrix, i32 %27, i32 %28, i32 %29, i32 %30, i32 %31, double %32)
  %33 = load i32, i32* %interpolate, align 4
  %tobool25 = icmp ne i32 %33, 0
  br i1 %tobool25, label %if.then.26, label %if.end

if.then.26:                                       ; preds = %if.then.21
  %34 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %config = getelementptr inbounds %struct._Gimp, %struct._Gimp* %34, i32 0, i32 1
  %35 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config, align 8
  %interpolation_type27 = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %35, i32 0, i32 2
  %36 = load i32, i32* %interpolation_type27, align 4
  store i32 %36, i32* %interpolation_type, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.26, %if.then.21
  %37 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %tobool28 = icmp ne %struct._GimpProgress* %37, null
  br i1 %tobool28, label %if.then.29, label %if.end.32

if.then.29:                                       ; preds = %if.end
  %38 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %call30 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.158, i32 0, i32 0)) #5
  %call31 = call %struct._GimpProgress* @gimp_progress_start(%struct._GimpProgress* %38, i8* %call30, i32 0)
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.29, %if.end
  %39 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %40 = bitcast %struct._GimpDrawable* %39 to %struct._GTypeInstance*
  %call33 = call i64 @gimp_viewable_get_type() #4
  %call34 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %40, i64 %call33)
  %41 = bitcast %struct._GTypeInstance* %call34 to %struct._GimpViewable*
  %call35 = call %struct._GimpContainer* @gimp_viewable_get_children(%struct._GimpViewable* %41)
  %tobool36 = icmp ne %struct._GimpContainer* %call35, null
  br i1 %tobool36, label %if.else, label %land.lhs.true.37

land.lhs.true.37:                                 ; preds = %if.end.32
  %42 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %43 = bitcast %struct._GimpDrawable* %42 to %struct._GTypeInstance*
  %call38 = call i64 @gimp_item_get_type() #4
  %call39 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %43, i64 %call38)
  %44 = bitcast %struct._GTypeInstance* %call39 to %struct._GimpItem*
  %call40 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %44)
  %call41 = call %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage* %call40)
  %call42 = call i32 @gimp_channel_is_empty(%struct._GimpChannel* %call41)
  %tobool43 = icmp ne i32 %call42, 0
  br i1 %tobool43, label %if.else, label %if.then.44

if.then.44:                                       ; preds = %land.lhs.true.37
  %45 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %46 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %47 = load i32, i32* %interpolation_type, align 4
  %48 = load i32, i32* %clip_result, align 4
  %49 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %call45 = call %struct._GimpDrawable* @gimp_drawable_transform_affine(%struct._GimpDrawable* %45, %struct._GimpContext* %46, %struct._GimpMatrix3* %matrix, i32 0, i32 %47, i32 3, i32 %48, %struct._GimpProgress* %49)
  %tobool46 = icmp ne %struct._GimpDrawable* %call45, null
  br i1 %tobool46, label %if.end.48, label %if.then.47

if.then.47:                                       ; preds = %if.then.44
  store i32 0, i32* %success, align 4
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.47, %if.then.44
  br label %if.end.51

if.else:                                          ; preds = %land.lhs.true.37, %if.end.32
  %50 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %51 = bitcast %struct._GimpDrawable* %50 to %struct._GTypeInstance*
  %call49 = call i64 @gimp_item_get_type() #4
  %call50 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %51, i64 %call49)
  %52 = bitcast %struct._GTypeInstance* %call50 to %struct._GimpItem*
  %53 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %54 = load i32, i32* %interpolation_type, align 4
  %55 = load i32, i32* %clip_result, align 4
  %56 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  call void @gimp_item_transform(%struct._GimpItem* %52, %struct._GimpContext* %53, %struct._GimpMatrix3* %matrix, i32 0, i32 %54, i32 3, i32 %55, %struct._GimpProgress* %56)
  br label %if.end.51

if.end.51:                                        ; preds = %if.else, %if.end.48
  %57 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %tobool52 = icmp ne %struct._GimpProgress* %57, null
  br i1 %tobool52, label %if.then.53, label %if.end.54

if.then.53:                                       ; preds = %if.end.51
  %58 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  call void @gimp_progress_end(%struct._GimpProgress* %58)
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.53, %if.end.51
  br label %if.end.55

if.end.55:                                        ; preds = %if.end.54, %land.lhs.true, %if.then
  br label %if.end.56

if.end.56:                                        ; preds = %if.end.55, %entry
  %59 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %60 = load i32, i32* %success, align 4
  %61 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool57 = icmp ne %struct._GError** %61, null
  br i1 %tobool57, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.56
  %62 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %63 = load %struct._GError*, %struct._GError** %62, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.56
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %63, %cond.true ], [ null, %cond.false ]
  %call58 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %59, i32 %60, %struct._GError* %cond)
  store %struct._GValueArray* %call58, %struct._GValueArray** %return_vals, align 8
  %64 = load i32, i32* %success, align 4
  %tobool59 = icmp ne i32 %64, 0
  br i1 %tobool59, label %if.then.60, label %if.end.63

if.then.60:                                       ; preds = %cond.end
  %65 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values61 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %65, i32 0, i32 1
  %66 = load %struct._GValue*, %struct._GValue** %values61, align 8
  %arrayidx62 = getelementptr inbounds %struct._GValue, %struct._GValue* %66, i64 1
  %67 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_value_set_drawable(%struct._GValue* %arrayidx62, %struct._GimpDrawable* %67)
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.60, %cond.end
  %68 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %68
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @drawable_transform_2d_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  %source_x = alloca double, align 8
  %source_y = alloca double, align 8
  %scale_x = alloca double, align 8
  %scale_y = alloca double, align 8
  %angle = alloca double, align 8
  %dest_x = alloca double, align 8
  %dest_y = alloca double, align 8
  %transform_direction = alloca i32, align 4
  %interpolation = alloca i32, align 4
  %recursion_level = alloca i32, align 4
  %clip_result = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %matrix = alloca %struct._GimpMatrix3, align 8
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
  %17 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values22 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %17, i32 0, i32 1
  %18 = load %struct._GValue*, %struct._GValue** %values22, align 8
  %arrayidx23 = getelementptr inbounds %struct._GValue, %struct._GValue* %18, i64 8
  %call24 = call i32 @g_value_get_enum(%struct._GValue* %arrayidx23)
  store i32 %call24, i32* %transform_direction, align 4
  %19 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values25 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %19, i32 0, i32 1
  %20 = load %struct._GValue*, %struct._GValue** %values25, align 8
  %arrayidx26 = getelementptr inbounds %struct._GValue, %struct._GValue* %20, i64 9
  %call27 = call i32 @g_value_get_enum(%struct._GValue* %arrayidx26)
  store i32 %call27, i32* %interpolation, align 4
  %21 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values28 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %21, i32 0, i32 1
  %22 = load %struct._GValue*, %struct._GValue** %values28, align 8
  %arrayidx29 = getelementptr inbounds %struct._GValue, %struct._GValue* %22, i64 11
  %call30 = call i32 @g_value_get_int(%struct._GValue* %arrayidx29)
  store i32 %call30, i32* %recursion_level, align 4
  %23 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values31 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %23, i32 0, i32 1
  %24 = load %struct._GValue*, %struct._GValue** %values31, align 8
  %arrayidx32 = getelementptr inbounds %struct._GValue, %struct._GValue* %24, i64 12
  %call33 = call i32 @g_value_get_enum(%struct._GValue* %arrayidx32)
  store i32 %call33, i32* %clip_result, align 4
  %25 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %25, 0
  br i1 %tobool, label %if.then, label %if.end.74

if.then:                                          ; preds = %entry
  %26 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %27 = bitcast %struct._GimpDrawable* %26 to %struct._GTypeInstance*
  %call34 = call i64 @gimp_item_get_type() #4
  %call35 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call34)
  %28 = bitcast %struct._GTypeInstance* %call35 to %struct._GimpItem*
  %29 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call36 = call i32 @gimp_pdb_item_is_attached(%struct._GimpItem* %28, %struct._GimpImage* null, i32 1, %struct._GError** %29)
  store i32 %call36, i32* %success, align 4
  %30 = load i32, i32* %success, align 4
  %tobool37 = icmp ne i32 %30, 0
  br i1 %tobool37, label %land.lhs.true, label %if.end.73

land.lhs.true:                                    ; preds = %if.then
  %31 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %32 = bitcast %struct._GimpDrawable* %31 to %struct._GTypeInstance*
  %call38 = call i64 @gimp_item_get_type() #4
  %call39 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %32, i64 %call38)
  %33 = bitcast %struct._GTypeInstance* %call39 to %struct._GimpItem*
  %call40 = call i32 @gimp_item_mask_intersect(%struct._GimpItem* %33, i32* %x, i32* %y, i32* %width, i32* %height)
  %tobool41 = icmp ne i32 %call40, 0
  br i1 %tobool41, label %if.then.42, label %if.end.73

if.then.42:                                       ; preds = %land.lhs.true
  %34 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %35 = bitcast %struct._GimpDrawable* %34 to %struct._GTypeInstance*
  %call43 = call i64 @gimp_item_get_type() #4
  %call44 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %35, i64 %call43)
  %36 = bitcast %struct._GTypeInstance* %call44 to %struct._GimpItem*
  call void @gimp_item_get_offset(%struct._GimpItem* %36, i32* %off_x, i32* %off_y)
  %37 = load i32, i32* %off_x, align 4
  %38 = load i32, i32* %x, align 4
  %add = add nsw i32 %38, %37
  store i32 %add, i32* %x, align 4
  %39 = load i32, i32* %off_y, align 4
  %40 = load i32, i32* %y, align 4
  %add45 = add nsw i32 %40, %39
  store i32 %add45, i32* %y, align 4
  call void @gimp_matrix3_identity(%struct._GimpMatrix3* %matrix)
  %41 = load double, double* %source_x, align 8
  %sub = fsub double -0.000000e+00, %41
  %42 = load double, double* %source_y, align 8
  %sub46 = fsub double -0.000000e+00, %42
  call void @gimp_matrix3_translate(%struct._GimpMatrix3* %matrix, double %sub, double %sub46)
  %43 = load double, double* %scale_x, align 8
  %44 = load double, double* %scale_y, align 8
  call void @gimp_matrix3_scale(%struct._GimpMatrix3* %matrix, double %43, double %44)
  %45 = load double, double* %angle, align 8
  call void @gimp_matrix3_rotate(%struct._GimpMatrix3* %matrix, double %45)
  %46 = load double, double* %dest_x, align 8
  %47 = load double, double* %dest_y, align 8
  call void @gimp_matrix3_translate(%struct._GimpMatrix3* %matrix, double %46, double %47)
  %48 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %tobool47 = icmp ne %struct._GimpProgress* %48, null
  br i1 %tobool47, label %if.then.48, label %if.end

if.then.48:                                       ; preds = %if.then.42
  %49 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %call49 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.159, i32 0, i32 0)) #5
  %call50 = call %struct._GimpProgress* @gimp_progress_start(%struct._GimpProgress* %49, i8* %call49, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then.48, %if.then.42
  %50 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %51 = bitcast %struct._GimpDrawable* %50 to %struct._GTypeInstance*
  %call51 = call i64 @gimp_viewable_get_type() #4
  %call52 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %51, i64 %call51)
  %52 = bitcast %struct._GTypeInstance* %call52 to %struct._GimpViewable*
  %call53 = call %struct._GimpContainer* @gimp_viewable_get_children(%struct._GimpViewable* %52)
  %tobool54 = icmp ne %struct._GimpContainer* %call53, null
  br i1 %tobool54, label %if.else, label %land.lhs.true.55

land.lhs.true.55:                                 ; preds = %if.end
  %53 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %54 = bitcast %struct._GimpDrawable* %53 to %struct._GTypeInstance*
  %call56 = call i64 @gimp_item_get_type() #4
  %call57 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %54, i64 %call56)
  %55 = bitcast %struct._GTypeInstance* %call57 to %struct._GimpItem*
  %call58 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %55)
  %call59 = call %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage* %call58)
  %call60 = call i32 @gimp_channel_is_empty(%struct._GimpChannel* %call59)
  %tobool61 = icmp ne i32 %call60, 0
  br i1 %tobool61, label %if.else, label %if.then.62

if.then.62:                                       ; preds = %land.lhs.true.55
  %56 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %57 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %58 = load i32, i32* %transform_direction, align 4
  %59 = load i32, i32* %interpolation, align 4
  %60 = load i32, i32* %recursion_level, align 4
  %61 = load i32, i32* %clip_result, align 4
  %62 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %call63 = call %struct._GimpDrawable* @gimp_drawable_transform_affine(%struct._GimpDrawable* %56, %struct._GimpContext* %57, %struct._GimpMatrix3* %matrix, i32 %58, i32 %59, i32 %60, i32 %61, %struct._GimpProgress* %62)
  %tobool64 = icmp ne %struct._GimpDrawable* %call63, null
  br i1 %tobool64, label %if.end.66, label %if.then.65

if.then.65:                                       ; preds = %if.then.62
  store i32 0, i32* %success, align 4
  br label %if.end.66

if.end.66:                                        ; preds = %if.then.65, %if.then.62
  br label %if.end.69

if.else:                                          ; preds = %land.lhs.true.55, %if.end
  %63 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %64 = bitcast %struct._GimpDrawable* %63 to %struct._GTypeInstance*
  %call67 = call i64 @gimp_item_get_type() #4
  %call68 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %64, i64 %call67)
  %65 = bitcast %struct._GTypeInstance* %call68 to %struct._GimpItem*
  %66 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %67 = load i32, i32* %transform_direction, align 4
  %68 = load i32, i32* %interpolation, align 4
  %69 = load i32, i32* %recursion_level, align 4
  %70 = load i32, i32* %clip_result, align 4
  %71 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  call void @gimp_item_transform(%struct._GimpItem* %65, %struct._GimpContext* %66, %struct._GimpMatrix3* %matrix, i32 %67, i32 %68, i32 %69, i32 %70, %struct._GimpProgress* %71)
  br label %if.end.69

if.end.69:                                        ; preds = %if.else, %if.end.66
  %72 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %tobool70 = icmp ne %struct._GimpProgress* %72, null
  br i1 %tobool70, label %if.then.71, label %if.end.72

if.then.71:                                       ; preds = %if.end.69
  %73 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  call void @gimp_progress_end(%struct._GimpProgress* %73)
  br label %if.end.72

if.end.72:                                        ; preds = %if.then.71, %if.end.69
  br label %if.end.73

if.end.73:                                        ; preds = %if.end.72, %land.lhs.true, %if.then
  br label %if.end.74

if.end.74:                                        ; preds = %if.end.73, %entry
  %74 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %75 = load i32, i32* %success, align 4
  %76 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool75 = icmp ne %struct._GError** %76, null
  br i1 %tobool75, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.74
  %77 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %78 = load %struct._GError*, %struct._GError** %77, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.74
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %78, %cond.true ], [ null, %cond.false ]
  %call76 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %74, i32 %75, %struct._GError* %cond)
  store %struct._GValueArray* %call76, %struct._GValueArray** %return_vals, align 8
  %79 = load i32, i32* %success, align 4
  %tobool77 = icmp ne i32 %79, 0
  br i1 %tobool77, label %if.then.78, label %if.end.81

if.then.78:                                       ; preds = %cond.end
  %80 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values79 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %80, i32 0, i32 1
  %81 = load %struct._GValue*, %struct._GValue** %values79, align 8
  %arrayidx80 = getelementptr inbounds %struct._GValue, %struct._GValue* %81, i64 1
  %82 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_value_set_drawable(%struct._GValue* %arrayidx80, %struct._GimpDrawable* %82)
  br label %if.end.81

if.end.81:                                        ; preds = %if.then.78, %cond.end
  %83 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %83
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @drawable_transform_2d_default_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  %source_x = alloca double, align 8
  %source_y = alloca double, align 8
  %scale_x = alloca double, align 8
  %scale_y = alloca double, align 8
  %angle = alloca double, align 8
  %dest_x = alloca double, align 8
  %dest_y = alloca double, align 8
  %interpolate = alloca i32, align 4
  %clip_result = alloca i32, align 4
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
  %17 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values22 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %17, i32 0, i32 1
  %18 = load %struct._GValue*, %struct._GValue** %values22, align 8
  %arrayidx23 = getelementptr inbounds %struct._GValue, %struct._GValue* %18, i64 8
  %call24 = call i32 @g_value_get_boolean(%struct._GValue* %arrayidx23)
  store i32 %call24, i32* %interpolate, align 4
  %19 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values25 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %19, i32 0, i32 1
  %20 = load %struct._GValue*, %struct._GValue** %values25, align 8
  %arrayidx26 = getelementptr inbounds %struct._GValue, %struct._GValue* %20, i64 9
  %call27 = call i32 @g_value_get_enum(%struct._GValue* %arrayidx26)
  store i32 %call27, i32* %clip_result, align 4
  %21 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %21, 0
  br i1 %tobool, label %if.then, label %if.end.72

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
  br i1 %tobool31, label %land.lhs.true, label %if.end.71

land.lhs.true:                                    ; preds = %if.then
  %27 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %28 = bitcast %struct._GimpDrawable* %27 to %struct._GTypeInstance*
  %call32 = call i64 @gimp_item_get_type() #4
  %call33 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call32)
  %29 = bitcast %struct._GTypeInstance* %call33 to %struct._GimpItem*
  %call34 = call i32 @gimp_item_mask_intersect(%struct._GimpItem* %29, i32* %x, i32* %y, i32* %width, i32* %height)
  %tobool35 = icmp ne i32 %call34, 0
  br i1 %tobool35, label %if.then.36, label %if.end.71

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
  %37 = load double, double* %source_x, align 8
  %sub = fsub double -0.000000e+00, %37
  %38 = load double, double* %source_y, align 8
  %sub40 = fsub double -0.000000e+00, %38
  call void @gimp_matrix3_translate(%struct._GimpMatrix3* %matrix, double %sub, double %sub40)
  %39 = load double, double* %scale_x, align 8
  %40 = load double, double* %scale_y, align 8
  call void @gimp_matrix3_scale(%struct._GimpMatrix3* %matrix, double %39, double %40)
  %41 = load double, double* %angle, align 8
  call void @gimp_matrix3_rotate(%struct._GimpMatrix3* %matrix, double %41)
  %42 = load double, double* %dest_x, align 8
  %43 = load double, double* %dest_y, align 8
  call void @gimp_matrix3_translate(%struct._GimpMatrix3* %matrix, double %42, double %43)
  %44 = load i32, i32* %interpolate, align 4
  %tobool41 = icmp ne i32 %44, 0
  br i1 %tobool41, label %if.then.42, label %if.end

if.then.42:                                       ; preds = %if.then.36
  %45 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %config = getelementptr inbounds %struct._Gimp, %struct._Gimp* %45, i32 0, i32 1
  %46 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config, align 8
  %interpolation_type43 = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %46, i32 0, i32 2
  %47 = load i32, i32* %interpolation_type43, align 4
  store i32 %47, i32* %interpolation_type, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.42, %if.then.36
  %48 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %tobool44 = icmp ne %struct._GimpProgress* %48, null
  br i1 %tobool44, label %if.then.45, label %if.end.48

if.then.45:                                       ; preds = %if.end
  %49 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %call46 = call i8* @gettext(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.160, i32 0, i32 0)) #5
  %call47 = call %struct._GimpProgress* @gimp_progress_start(%struct._GimpProgress* %49, i8* %call46, i32 0)
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.45, %if.end
  %50 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %51 = bitcast %struct._GimpDrawable* %50 to %struct._GTypeInstance*
  %call49 = call i64 @gimp_viewable_get_type() #4
  %call50 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %51, i64 %call49)
  %52 = bitcast %struct._GTypeInstance* %call50 to %struct._GimpViewable*
  %call51 = call %struct._GimpContainer* @gimp_viewable_get_children(%struct._GimpViewable* %52)
  %tobool52 = icmp ne %struct._GimpContainer* %call51, null
  br i1 %tobool52, label %if.else, label %land.lhs.true.53

land.lhs.true.53:                                 ; preds = %if.end.48
  %53 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %54 = bitcast %struct._GimpDrawable* %53 to %struct._GTypeInstance*
  %call54 = call i64 @gimp_item_get_type() #4
  %call55 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %54, i64 %call54)
  %55 = bitcast %struct._GTypeInstance* %call55 to %struct._GimpItem*
  %call56 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %55)
  %call57 = call %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage* %call56)
  %call58 = call i32 @gimp_channel_is_empty(%struct._GimpChannel* %call57)
  %tobool59 = icmp ne i32 %call58, 0
  br i1 %tobool59, label %if.else, label %if.then.60

if.then.60:                                       ; preds = %land.lhs.true.53
  %56 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %57 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %58 = load i32, i32* %interpolation_type, align 4
  %59 = load i32, i32* %clip_result, align 4
  %60 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %call61 = call %struct._GimpDrawable* @gimp_drawable_transform_affine(%struct._GimpDrawable* %56, %struct._GimpContext* %57, %struct._GimpMatrix3* %matrix, i32 0, i32 %58, i32 3, i32 %59, %struct._GimpProgress* %60)
  %tobool62 = icmp ne %struct._GimpDrawable* %call61, null
  br i1 %tobool62, label %if.end.64, label %if.then.63

if.then.63:                                       ; preds = %if.then.60
  store i32 0, i32* %success, align 4
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.63, %if.then.60
  br label %if.end.67

if.else:                                          ; preds = %land.lhs.true.53, %if.end.48
  %61 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %62 = bitcast %struct._GimpDrawable* %61 to %struct._GTypeInstance*
  %call65 = call i64 @gimp_item_get_type() #4
  %call66 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %62, i64 %call65)
  %63 = bitcast %struct._GTypeInstance* %call66 to %struct._GimpItem*
  %64 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %65 = load i32, i32* %interpolation_type, align 4
  %66 = load i32, i32* %clip_result, align 4
  %67 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  call void @gimp_item_transform(%struct._GimpItem* %63, %struct._GimpContext* %64, %struct._GimpMatrix3* %matrix, i32 0, i32 %65, i32 3, i32 %66, %struct._GimpProgress* %67)
  br label %if.end.67

if.end.67:                                        ; preds = %if.else, %if.end.64
  %68 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %tobool68 = icmp ne %struct._GimpProgress* %68, null
  br i1 %tobool68, label %if.then.69, label %if.end.70

if.then.69:                                       ; preds = %if.end.67
  %69 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  call void @gimp_progress_end(%struct._GimpProgress* %69)
  br label %if.end.70

if.end.70:                                        ; preds = %if.then.69, %if.end.67
  br label %if.end.71

if.end.71:                                        ; preds = %if.end.70, %land.lhs.true, %if.then
  br label %if.end.72

if.end.72:                                        ; preds = %if.end.71, %entry
  %70 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %71 = load i32, i32* %success, align 4
  %72 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool73 = icmp ne %struct._GError** %72, null
  br i1 %tobool73, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.72
  %73 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %74 = load %struct._GError*, %struct._GError** %73, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.72
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %74, %cond.true ], [ null, %cond.false ]
  %call74 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %70, i32 %71, %struct._GError* %cond)
  store %struct._GValueArray* %call74, %struct._GValueArray** %return_vals, align 8
  %75 = load i32, i32* %success, align 4
  %tobool75 = icmp ne i32 %75, 0
  br i1 %tobool75, label %if.then.76, label %if.end.79

if.then.76:                                       ; preds = %cond.end
  %76 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values77 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %76, i32 0, i32 1
  %77 = load %struct._GValue*, %struct._GValue** %values77, align 8
  %arrayidx78 = getelementptr inbounds %struct._GValue, %struct._GValue* %77, i64 1
  %78 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_value_set_drawable(%struct._GValue* %arrayidx78, %struct._GimpDrawable* %78)
  br label %if.end.79

if.end.79:                                        ; preds = %if.then.76, %cond.end
  %79 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %79
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @drawable_transform_matrix_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  %coeff_0_0 = alloca double, align 8
  %coeff_0_1 = alloca double, align 8
  %coeff_0_2 = alloca double, align 8
  %coeff_1_0 = alloca double, align 8
  %coeff_1_1 = alloca double, align 8
  %coeff_1_2 = alloca double, align 8
  %coeff_2_0 = alloca double, align 8
  %coeff_2_1 = alloca double, align 8
  %coeff_2_2 = alloca double, align 8
  %transform_direction = alloca i32, align 4
  %interpolation = alloca i32, align 4
  %recursion_level = alloca i32, align 4
  %clip_result = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %matrix = alloca %struct._GimpMatrix3, align 8
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
  %21 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values28 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %21, i32 0, i32 1
  %22 = load %struct._GValue*, %struct._GValue** %values28, align 8
  %arrayidx29 = getelementptr inbounds %struct._GValue, %struct._GValue* %22, i64 10
  %call30 = call i32 @g_value_get_enum(%struct._GValue* %arrayidx29)
  store i32 %call30, i32* %transform_direction, align 4
  %23 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values31 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %23, i32 0, i32 1
  %24 = load %struct._GValue*, %struct._GValue** %values31, align 8
  %arrayidx32 = getelementptr inbounds %struct._GValue, %struct._GValue* %24, i64 11
  %call33 = call i32 @g_value_get_enum(%struct._GValue* %arrayidx32)
  store i32 %call33, i32* %interpolation, align 4
  %25 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values34 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %25, i32 0, i32 1
  %26 = load %struct._GValue*, %struct._GValue** %values34, align 8
  %arrayidx35 = getelementptr inbounds %struct._GValue, %struct._GValue* %26, i64 13
  %call36 = call i32 @g_value_get_int(%struct._GValue* %arrayidx35)
  store i32 %call36, i32* %recursion_level, align 4
  %27 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values37 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %27, i32 0, i32 1
  %28 = load %struct._GValue*, %struct._GValue** %values37, align 8
  %arrayidx38 = getelementptr inbounds %struct._GValue, %struct._GValue* %28, i64 14
  %call39 = call i32 @g_value_get_enum(%struct._GValue* %arrayidx38)
  store i32 %call39, i32* %clip_result, align 4
  %29 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %29, 0
  br i1 %tobool, label %if.then, label %if.end.105

if.then:                                          ; preds = %entry
  %30 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %31 = bitcast %struct._GimpDrawable* %30 to %struct._GTypeInstance*
  %call40 = call i64 @gimp_item_get_type() #4
  %call41 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 %call40)
  %32 = bitcast %struct._GTypeInstance* %call41 to %struct._GimpItem*
  %33 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call42 = call i32 @gimp_pdb_item_is_attached(%struct._GimpItem* %32, %struct._GimpImage* null, i32 1, %struct._GError** %33)
  store i32 %call42, i32* %success, align 4
  %34 = load i32, i32* %success, align 4
  %tobool43 = icmp ne i32 %34, 0
  br i1 %tobool43, label %land.lhs.true, label %if.end.104

land.lhs.true:                                    ; preds = %if.then
  %35 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %36 = bitcast %struct._GimpDrawable* %35 to %struct._GTypeInstance*
  %call44 = call i64 @gimp_item_get_type() #4
  %call45 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %36, i64 %call44)
  %37 = bitcast %struct._GTypeInstance* %call45 to %struct._GimpItem*
  %call46 = call i32 @gimp_item_mask_intersect(%struct._GimpItem* %37, i32* %x, i32* %y, i32* %width, i32* %height)
  %tobool47 = icmp ne i32 %call46, 0
  br i1 %tobool47, label %if.then.48, label %if.end.104

if.then.48:                                       ; preds = %land.lhs.true
  %38 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %39 = bitcast %struct._GimpDrawable* %38 to %struct._GTypeInstance*
  %call49 = call i64 @gimp_item_get_type() #4
  %call50 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %39, i64 %call49)
  %40 = bitcast %struct._GTypeInstance* %call50 to %struct._GimpItem*
  call void @gimp_item_get_offset(%struct._GimpItem* %40, i32* %off_x, i32* %off_y)
  %41 = load i32, i32* %off_x, align 4
  %42 = load i32, i32* %x, align 4
  %add = add nsw i32 %42, %41
  store i32 %add, i32* %x, align 4
  %43 = load i32, i32* %off_y, align 4
  %44 = load i32, i32* %y, align 4
  %add51 = add nsw i32 %44, %43
  store i32 %add51, i32* %y, align 4
  %45 = load double, double* %coeff_0_0, align 8
  %coeff = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %matrix, i32 0, i32 0
  %arrayidx52 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff, i32 0, i64 0
  %arrayidx53 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx52, i32 0, i64 0
  store double %45, double* %arrayidx53, align 8
  %46 = load double, double* %coeff_0_1, align 8
  %coeff54 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %matrix, i32 0, i32 0
  %arrayidx55 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff54, i32 0, i64 0
  %arrayidx56 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx55, i32 0, i64 1
  store double %46, double* %arrayidx56, align 8
  %47 = load double, double* %coeff_0_2, align 8
  %coeff57 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %matrix, i32 0, i32 0
  %arrayidx58 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff57, i32 0, i64 0
  %arrayidx59 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx58, i32 0, i64 2
  store double %47, double* %arrayidx59, align 8
  %48 = load double, double* %coeff_1_0, align 8
  %coeff60 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %matrix, i32 0, i32 0
  %arrayidx61 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff60, i32 0, i64 1
  %arrayidx62 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx61, i32 0, i64 0
  store double %48, double* %arrayidx62, align 8
  %49 = load double, double* %coeff_1_1, align 8
  %coeff63 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %matrix, i32 0, i32 0
  %arrayidx64 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff63, i32 0, i64 1
  %arrayidx65 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx64, i32 0, i64 1
  store double %49, double* %arrayidx65, align 8
  %50 = load double, double* %coeff_1_2, align 8
  %coeff66 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %matrix, i32 0, i32 0
  %arrayidx67 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff66, i32 0, i64 1
  %arrayidx68 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx67, i32 0, i64 2
  store double %50, double* %arrayidx68, align 8
  %51 = load double, double* %coeff_2_0, align 8
  %coeff69 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %matrix, i32 0, i32 0
  %arrayidx70 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff69, i32 0, i64 2
  %arrayidx71 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx70, i32 0, i64 0
  store double %51, double* %arrayidx71, align 8
  %52 = load double, double* %coeff_2_1, align 8
  %coeff72 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %matrix, i32 0, i32 0
  %arrayidx73 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff72, i32 0, i64 2
  %arrayidx74 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx73, i32 0, i64 1
  store double %52, double* %arrayidx74, align 8
  %53 = load double, double* %coeff_2_2, align 8
  %coeff75 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %matrix, i32 0, i32 0
  %arrayidx76 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff75, i32 0, i64 2
  %arrayidx77 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx76, i32 0, i64 2
  store double %53, double* %arrayidx77, align 8
  %54 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %tobool78 = icmp ne %struct._GimpProgress* %54, null
  br i1 %tobool78, label %if.then.79, label %if.end

if.then.79:                                       ; preds = %if.then.48
  %55 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %call80 = call i8* @gettext(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.160, i32 0, i32 0)) #5
  %call81 = call %struct._GimpProgress* @gimp_progress_start(%struct._GimpProgress* %55, i8* %call80, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then.79, %if.then.48
  %56 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %57 = bitcast %struct._GimpDrawable* %56 to %struct._GTypeInstance*
  %call82 = call i64 @gimp_viewable_get_type() #4
  %call83 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %57, i64 %call82)
  %58 = bitcast %struct._GTypeInstance* %call83 to %struct._GimpViewable*
  %call84 = call %struct._GimpContainer* @gimp_viewable_get_children(%struct._GimpViewable* %58)
  %tobool85 = icmp ne %struct._GimpContainer* %call84, null
  br i1 %tobool85, label %if.else, label %land.lhs.true.86

land.lhs.true.86:                                 ; preds = %if.end
  %59 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %60 = bitcast %struct._GimpDrawable* %59 to %struct._GTypeInstance*
  %call87 = call i64 @gimp_item_get_type() #4
  %call88 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %60, i64 %call87)
  %61 = bitcast %struct._GTypeInstance* %call88 to %struct._GimpItem*
  %call89 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %61)
  %call90 = call %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage* %call89)
  %call91 = call i32 @gimp_channel_is_empty(%struct._GimpChannel* %call90)
  %tobool92 = icmp ne i32 %call91, 0
  br i1 %tobool92, label %if.else, label %if.then.93

if.then.93:                                       ; preds = %land.lhs.true.86
  %62 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %63 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %64 = load i32, i32* %transform_direction, align 4
  %65 = load i32, i32* %interpolation, align 4
  %66 = load i32, i32* %recursion_level, align 4
  %67 = load i32, i32* %clip_result, align 4
  %68 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %call94 = call %struct._GimpDrawable* @gimp_drawable_transform_affine(%struct._GimpDrawable* %62, %struct._GimpContext* %63, %struct._GimpMatrix3* %matrix, i32 %64, i32 %65, i32 %66, i32 %67, %struct._GimpProgress* %68)
  %tobool95 = icmp ne %struct._GimpDrawable* %call94, null
  br i1 %tobool95, label %if.end.97, label %if.then.96

if.then.96:                                       ; preds = %if.then.93
  store i32 0, i32* %success, align 4
  br label %if.end.97

if.end.97:                                        ; preds = %if.then.96, %if.then.93
  br label %if.end.100

if.else:                                          ; preds = %land.lhs.true.86, %if.end
  %69 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %70 = bitcast %struct._GimpDrawable* %69 to %struct._GTypeInstance*
  %call98 = call i64 @gimp_item_get_type() #4
  %call99 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %70, i64 %call98)
  %71 = bitcast %struct._GTypeInstance* %call99 to %struct._GimpItem*
  %72 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %73 = load i32, i32* %transform_direction, align 4
  %74 = load i32, i32* %interpolation, align 4
  %75 = load i32, i32* %recursion_level, align 4
  %76 = load i32, i32* %clip_result, align 4
  %77 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  call void @gimp_item_transform(%struct._GimpItem* %71, %struct._GimpContext* %72, %struct._GimpMatrix3* %matrix, i32 %73, i32 %74, i32 %75, i32 %76, %struct._GimpProgress* %77)
  br label %if.end.100

if.end.100:                                       ; preds = %if.else, %if.end.97
  %78 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %tobool101 = icmp ne %struct._GimpProgress* %78, null
  br i1 %tobool101, label %if.then.102, label %if.end.103

if.then.102:                                      ; preds = %if.end.100
  %79 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  call void @gimp_progress_end(%struct._GimpProgress* %79)
  br label %if.end.103

if.end.103:                                       ; preds = %if.then.102, %if.end.100
  br label %if.end.104

if.end.104:                                       ; preds = %if.end.103, %land.lhs.true, %if.then
  br label %if.end.105

if.end.105:                                       ; preds = %if.end.104, %entry
  %80 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %81 = load i32, i32* %success, align 4
  %82 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool106 = icmp ne %struct._GError** %82, null
  br i1 %tobool106, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.105
  %83 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %84 = load %struct._GError*, %struct._GError** %83, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.105
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %84, %cond.true ], [ null, %cond.false ]
  %call107 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %80, i32 %81, %struct._GError* %cond)
  store %struct._GValueArray* %call107, %struct._GValueArray** %return_vals, align 8
  %85 = load i32, i32* %success, align 4
  %tobool108 = icmp ne i32 %85, 0
  br i1 %tobool108, label %if.then.109, label %if.end.112

if.then.109:                                      ; preds = %cond.end
  %86 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values110 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %86, i32 0, i32 1
  %87 = load %struct._GValue*, %struct._GValue** %values110, align 8
  %arrayidx111 = getelementptr inbounds %struct._GValue, %struct._GValue* %87, i64 1
  %88 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_value_set_drawable(%struct._GValue* %arrayidx111, %struct._GimpDrawable* %88)
  br label %if.end.112

if.end.112:                                       ; preds = %if.then.109, %cond.end
  %89 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %89
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @drawable_transform_matrix_default_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  %coeff_0_0 = alloca double, align 8
  %coeff_0_1 = alloca double, align 8
  %coeff_0_2 = alloca double, align 8
  %coeff_1_0 = alloca double, align 8
  %coeff_1_1 = alloca double, align 8
  %coeff_1_2 = alloca double, align 8
  %coeff_2_0 = alloca double, align 8
  %coeff_2_1 = alloca double, align 8
  %coeff_2_2 = alloca double, align 8
  %interpolate = alloca i32, align 4
  %clip_result = alloca i32, align 4
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
  %21 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values28 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %21, i32 0, i32 1
  %22 = load %struct._GValue*, %struct._GValue** %values28, align 8
  %arrayidx29 = getelementptr inbounds %struct._GValue, %struct._GValue* %22, i64 10
  %call30 = call i32 @g_value_get_boolean(%struct._GValue* %arrayidx29)
  store i32 %call30, i32* %interpolate, align 4
  %23 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values31 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %23, i32 0, i32 1
  %24 = load %struct._GValue*, %struct._GValue** %values31, align 8
  %arrayidx32 = getelementptr inbounds %struct._GValue, %struct._GValue* %24, i64 11
  %call33 = call i32 @g_value_get_enum(%struct._GValue* %arrayidx32)
  store i32 %call33, i32* %clip_result, align 4
  %25 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %25, 0
  br i1 %tobool, label %if.then, label %if.end.103

if.then:                                          ; preds = %entry
  %26 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %27 = bitcast %struct._GimpDrawable* %26 to %struct._GTypeInstance*
  %call34 = call i64 @gimp_item_get_type() #4
  %call35 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call34)
  %28 = bitcast %struct._GTypeInstance* %call35 to %struct._GimpItem*
  %29 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call36 = call i32 @gimp_pdb_item_is_attached(%struct._GimpItem* %28, %struct._GimpImage* null, i32 1, %struct._GError** %29)
  store i32 %call36, i32* %success, align 4
  %30 = load i32, i32* %success, align 4
  %tobool37 = icmp ne i32 %30, 0
  br i1 %tobool37, label %land.lhs.true, label %if.end.102

land.lhs.true:                                    ; preds = %if.then
  %31 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %32 = bitcast %struct._GimpDrawable* %31 to %struct._GTypeInstance*
  %call38 = call i64 @gimp_item_get_type() #4
  %call39 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %32, i64 %call38)
  %33 = bitcast %struct._GTypeInstance* %call39 to %struct._GimpItem*
  %call40 = call i32 @gimp_item_mask_intersect(%struct._GimpItem* %33, i32* %x, i32* %y, i32* %width, i32* %height)
  %tobool41 = icmp ne i32 %call40, 0
  br i1 %tobool41, label %if.then.42, label %if.end.102

if.then.42:                                       ; preds = %land.lhs.true
  store i32 0, i32* %interpolation_type, align 4
  %34 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %35 = bitcast %struct._GimpDrawable* %34 to %struct._GTypeInstance*
  %call43 = call i64 @gimp_item_get_type() #4
  %call44 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %35, i64 %call43)
  %36 = bitcast %struct._GTypeInstance* %call44 to %struct._GimpItem*
  call void @gimp_item_get_offset(%struct._GimpItem* %36, i32* %off_x, i32* %off_y)
  %37 = load i32, i32* %off_x, align 4
  %38 = load i32, i32* %x, align 4
  %add = add nsw i32 %38, %37
  store i32 %add, i32* %x, align 4
  %39 = load i32, i32* %off_y, align 4
  %40 = load i32, i32* %y, align 4
  %add45 = add nsw i32 %40, %39
  store i32 %add45, i32* %y, align 4
  %41 = load double, double* %coeff_0_0, align 8
  %coeff = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %matrix, i32 0, i32 0
  %arrayidx46 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff, i32 0, i64 0
  %arrayidx47 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx46, i32 0, i64 0
  store double %41, double* %arrayidx47, align 8
  %42 = load double, double* %coeff_0_1, align 8
  %coeff48 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %matrix, i32 0, i32 0
  %arrayidx49 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff48, i32 0, i64 0
  %arrayidx50 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx49, i32 0, i64 1
  store double %42, double* %arrayidx50, align 8
  %43 = load double, double* %coeff_0_2, align 8
  %coeff51 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %matrix, i32 0, i32 0
  %arrayidx52 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff51, i32 0, i64 0
  %arrayidx53 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx52, i32 0, i64 2
  store double %43, double* %arrayidx53, align 8
  %44 = load double, double* %coeff_1_0, align 8
  %coeff54 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %matrix, i32 0, i32 0
  %arrayidx55 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff54, i32 0, i64 1
  %arrayidx56 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx55, i32 0, i64 0
  store double %44, double* %arrayidx56, align 8
  %45 = load double, double* %coeff_1_1, align 8
  %coeff57 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %matrix, i32 0, i32 0
  %arrayidx58 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff57, i32 0, i64 1
  %arrayidx59 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx58, i32 0, i64 1
  store double %45, double* %arrayidx59, align 8
  %46 = load double, double* %coeff_1_2, align 8
  %coeff60 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %matrix, i32 0, i32 0
  %arrayidx61 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff60, i32 0, i64 1
  %arrayidx62 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx61, i32 0, i64 2
  store double %46, double* %arrayidx62, align 8
  %47 = load double, double* %coeff_2_0, align 8
  %coeff63 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %matrix, i32 0, i32 0
  %arrayidx64 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff63, i32 0, i64 2
  %arrayidx65 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx64, i32 0, i64 0
  store double %47, double* %arrayidx65, align 8
  %48 = load double, double* %coeff_2_1, align 8
  %coeff66 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %matrix, i32 0, i32 0
  %arrayidx67 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff66, i32 0, i64 2
  %arrayidx68 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx67, i32 0, i64 1
  store double %48, double* %arrayidx68, align 8
  %49 = load double, double* %coeff_2_2, align 8
  %coeff69 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %matrix, i32 0, i32 0
  %arrayidx70 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff69, i32 0, i64 2
  %arrayidx71 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx70, i32 0, i64 2
  store double %49, double* %arrayidx71, align 8
  %50 = load i32, i32* %interpolate, align 4
  %tobool72 = icmp ne i32 %50, 0
  br i1 %tobool72, label %if.then.73, label %if.end

if.then.73:                                       ; preds = %if.then.42
  %51 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %config = getelementptr inbounds %struct._Gimp, %struct._Gimp* %51, i32 0, i32 1
  %52 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config, align 8
  %interpolation_type74 = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %52, i32 0, i32 2
  %53 = load i32, i32* %interpolation_type74, align 4
  store i32 %53, i32* %interpolation_type, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.73, %if.then.42
  %54 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %tobool75 = icmp ne %struct._GimpProgress* %54, null
  br i1 %tobool75, label %if.then.76, label %if.end.79

if.then.76:                                       ; preds = %if.end
  %55 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %call77 = call i8* @gettext(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.160, i32 0, i32 0)) #5
  %call78 = call %struct._GimpProgress* @gimp_progress_start(%struct._GimpProgress* %55, i8* %call77, i32 0)
  br label %if.end.79

if.end.79:                                        ; preds = %if.then.76, %if.end
  %56 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %57 = bitcast %struct._GimpDrawable* %56 to %struct._GTypeInstance*
  %call80 = call i64 @gimp_viewable_get_type() #4
  %call81 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %57, i64 %call80)
  %58 = bitcast %struct._GTypeInstance* %call81 to %struct._GimpViewable*
  %call82 = call %struct._GimpContainer* @gimp_viewable_get_children(%struct._GimpViewable* %58)
  %tobool83 = icmp ne %struct._GimpContainer* %call82, null
  br i1 %tobool83, label %if.else, label %land.lhs.true.84

land.lhs.true.84:                                 ; preds = %if.end.79
  %59 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %60 = bitcast %struct._GimpDrawable* %59 to %struct._GTypeInstance*
  %call85 = call i64 @gimp_item_get_type() #4
  %call86 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %60, i64 %call85)
  %61 = bitcast %struct._GTypeInstance* %call86 to %struct._GimpItem*
  %call87 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %61)
  %call88 = call %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage* %call87)
  %call89 = call i32 @gimp_channel_is_empty(%struct._GimpChannel* %call88)
  %tobool90 = icmp ne i32 %call89, 0
  br i1 %tobool90, label %if.else, label %if.then.91

if.then.91:                                       ; preds = %land.lhs.true.84
  %62 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %63 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %64 = load i32, i32* %interpolation_type, align 4
  %65 = load i32, i32* %clip_result, align 4
  %66 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %call92 = call %struct._GimpDrawable* @gimp_drawable_transform_affine(%struct._GimpDrawable* %62, %struct._GimpContext* %63, %struct._GimpMatrix3* %matrix, i32 0, i32 %64, i32 3, i32 %65, %struct._GimpProgress* %66)
  %tobool93 = icmp ne %struct._GimpDrawable* %call92, null
  br i1 %tobool93, label %if.end.95, label %if.then.94

if.then.94:                                       ; preds = %if.then.91
  store i32 0, i32* %success, align 4
  br label %if.end.95

if.end.95:                                        ; preds = %if.then.94, %if.then.91
  br label %if.end.98

if.else:                                          ; preds = %land.lhs.true.84, %if.end.79
  %67 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %68 = bitcast %struct._GimpDrawable* %67 to %struct._GTypeInstance*
  %call96 = call i64 @gimp_item_get_type() #4
  %call97 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %68, i64 %call96)
  %69 = bitcast %struct._GTypeInstance* %call97 to %struct._GimpItem*
  %70 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %71 = load i32, i32* %interpolation_type, align 4
  %72 = load i32, i32* %clip_result, align 4
  %73 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  call void @gimp_item_transform(%struct._GimpItem* %69, %struct._GimpContext* %70, %struct._GimpMatrix3* %matrix, i32 0, i32 %71, i32 3, i32 %72, %struct._GimpProgress* %73)
  br label %if.end.98

if.end.98:                                        ; preds = %if.else, %if.end.95
  %74 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %tobool99 = icmp ne %struct._GimpProgress* %74, null
  br i1 %tobool99, label %if.then.100, label %if.end.101

if.then.100:                                      ; preds = %if.end.98
  %75 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  call void @gimp_progress_end(%struct._GimpProgress* %75)
  br label %if.end.101

if.end.101:                                       ; preds = %if.then.100, %if.end.98
  br label %if.end.102

if.end.102:                                       ; preds = %if.end.101, %land.lhs.true, %if.then
  br label %if.end.103

if.end.103:                                       ; preds = %if.end.102, %entry
  %76 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %77 = load i32, i32* %success, align 4
  %78 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool104 = icmp ne %struct._GError** %78, null
  br i1 %tobool104, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.103
  %79 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %80 = load %struct._GError*, %struct._GError** %79, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.103
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %80, %cond.true ], [ null, %cond.false ]
  %call105 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %76, i32 %77, %struct._GError* %cond)
  store %struct._GValueArray* %call105, %struct._GValueArray** %return_vals, align 8
  %81 = load i32, i32* %success, align 4
  %tobool106 = icmp ne i32 %81, 0
  br i1 %tobool106, label %if.then.107, label %if.end.110

if.then.107:                                      ; preds = %cond.end
  %82 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values108 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %82, i32 0, i32 1
  %83 = load %struct._GValue*, %struct._GValue** %values108, align 8
  %arrayidx109 = getelementptr inbounds %struct._GValue, %struct._GValue* %83, i64 1
  %84 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_value_set_drawable(%struct._GValue* %arrayidx109, %struct._GimpDrawable* %84)
  br label %if.end.110

if.end.110:                                       ; preds = %if.then.107, %cond.end
  %85 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %85
}

declare %struct._GimpDrawable* @gimp_value_get_drawable(%struct._GValue*, %struct._Gimp*) #1

declare i32 @g_value_get_enum(%struct._GValue*) #1

declare i32 @g_value_get_boolean(%struct._GValue*) #1

declare double @g_value_get_double(%struct._GValue*) #1

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

declare i32 @g_value_get_int(%struct._GValue*) #1

declare void @gimp_item_get_offset(%struct._GimpItem*, i32*, i32*) #1

declare void @gimp_matrix3_identity(%struct._GimpMatrix3*) #1

declare void @gimp_transform_matrix_flip_free(%struct._GimpMatrix3*, double, double, double, double) #1

declare %struct._GimpProgress* @gimp_progress_start(%struct._GimpProgress*, i8*, i32) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #3

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
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
