; ModuleID = './app/pdb/vectors-cmds.bc'
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
%struct._GimpParamSpecEnum = type { %struct._GParamSpecEnum, %struct._GSList* }
%struct._GParamSpecEnum = type { %struct._GParamSpec, %struct._GEnumClass*, i32 }
%struct._GEnumClass = type { %struct._GTypeClass, i32, i32, i32, %struct._GEnumValue* }
%struct._GEnumValue = type { i32, i8*, i8* }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GimpImage = type { %struct._GimpViewable, %struct._Gimp* }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpVectors = type { %struct._GimpItem, %struct._GList*, i32, i32, double, i8**, i32, i32, double, double, double, double }
%struct._GimpItem = type { %struct._GimpViewable }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpLayer = type { %struct._GimpDrawable, double, i32, i32, %struct._GimpLayerMask*, %struct._GeglNode*, %struct.anon }
%struct._GimpDrawable = type { %struct._GimpItem, %struct._GimpDrawablePrivate* }
%struct._GimpDrawablePrivate = type opaque
%struct._GimpLayerMask = type opaque
%struct._GeglNode = type opaque
%struct.anon = type { %struct._GimpDrawable*, i32, %struct._BoundSeg*, i32 }
%struct._BoundSeg = type opaque
%struct._GimpTextLayer = type { %struct._GimpLayer, %struct._GimpText*, i8*, i32, i32 }
%struct._GimpText = type opaque
%struct._GimpStroke = type { %struct._GimpObject, i32, %struct._GList*, i32 }
%struct._GimpCoords = type { double, double, double, double, double, double, double, double }
%struct._GimpUndo = type opaque
%struct._GArray = type { i8*, i32 }
%struct._GimpAnchor = type { %struct._GimpCoords, i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"gimp-vectors-new\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Creates a new empty vectors object.\00", align 1
@.str.2 = private unnamed_addr constant [121 x i8] c"Creates a new empty vectors object. The vectors object needs to be added to the image using 'gimp-image-insert-vectors'.\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"Simon Budig\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"2005\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"The image\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"the name of the new vector object.\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"vectors\00", align 1
@.str.10 = private unnamed_addr constant [63 x i8] c"the current vector object, 0 if no vector exists in the image.\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"gimp-vectors-new-from-text-layer\00", align 1
@.str.12 = private unnamed_addr constant [48 x i8] c"Creates a new vectors object from a text layer.\00", align 1
@.str.13 = private unnamed_addr constant [133 x i8] c"Creates a new vectors object from a text layer. The vectors object needs to be added to the image using 'gimp-image-insert-vectors'.\00", align 1
@.str.14 = private unnamed_addr constant [36 x i8] c"Marcus Heese <heese@cip.ifi.lmu.de>\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"Marcus Heese\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"2008\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"The image.\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"layer\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"The text layer.\00", align 1
@.str.20 = private unnamed_addr constant [31 x i8] c"The vectors of the text layer.\00", align 1
@.str.21 = private unnamed_addr constant [18 x i8] c"gimp-vectors-copy\00", align 1
@.str.22 = private unnamed_addr constant [23 x i8] c"Copy a vectors object.\00", align 1
@.str.23 = private unnamed_addr constant [73 x i8] c"This procedure copies the specified vectors object and returns the copy.\00", align 1
@.str.24 = private unnamed_addr constant [42 x i8] c"Barak Itkin <lightningismyname@gmail.com>\00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"Barak Itkin\00", align 1
@.str.26 = private unnamed_addr constant [27 x i8] c"The vectors object to copy\00", align 1
@.str.27 = private unnamed_addr constant [13 x i8] c"vectors-copy\00", align 1
@.str.28 = private unnamed_addr constant [13 x i8] c"vectors copy\00", align 1
@.str.29 = private unnamed_addr constant [32 x i8] c"The newly copied vectors object\00", align 1
@.str.30 = private unnamed_addr constant [25 x i8] c"gimp-vectors-get-strokes\00", align 1
@.str.31 = private unnamed_addr constant [50 x i8] c"List the strokes associated with the passed path.\00", align 1
@.str.32 = private unnamed_addr constant [70 x i8] c"Returns an Array with the stroke-IDs associated with the passed path.\00", align 1
@.str.33 = private unnamed_addr constant [19 x i8] c"The vectors object\00", align 1
@.str.34 = private unnamed_addr constant [12 x i8] c"num-strokes\00", align 1
@.str.35 = private unnamed_addr constant [12 x i8] c"num strokes\00", align 1
@.str.36 = private unnamed_addr constant [32 x i8] c"The number of strokes returned.\00", align 1
@.str.37 = private unnamed_addr constant [11 x i8] c"stroke-ids\00", align 1
@.str.38 = private unnamed_addr constant [11 x i8] c"stroke ids\00", align 1
@.str.39 = private unnamed_addr constant [43 x i8] c"List of the strokes belonging to the path.\00", align 1
@.str.40 = private unnamed_addr constant [31 x i8] c"gimp-vectors-stroke-get-length\00", align 1
@.str.41 = private unnamed_addr constant [40 x i8] c"Measure the length of the given stroke.\00", align 1
@.str.42 = private unnamed_addr constant [10 x i8] c"stroke-id\00", align 1
@.str.43 = private unnamed_addr constant [10 x i8] c"stroke id\00", align 1
@.str.44 = private unnamed_addr constant [14 x i8] c"The stroke ID\00", align 1
@.str.45 = private unnamed_addr constant [10 x i8] c"precision\00", align 1
@.str.46 = private unnamed_addr constant [41 x i8] c"The precision used for the approximation\00", align 1
@.str.47 = private unnamed_addr constant [7 x i8] c"length\00", align 1
@.str.48 = private unnamed_addr constant [44 x i8] c"The length (in pixels) of the given stroke.\00", align 1
@.str.49 = private unnamed_addr constant [38 x i8] c"gimp-vectors-stroke-get-point-at-dist\00", align 1
@.str.50 = private unnamed_addr constant [52 x i8] c"Get point at a specified distance along the stroke.\00", align 1
@.str.51 = private unnamed_addr constant [370 x i8] c"This will return the x,y position of a point at a given distance along the stroke. The distance will be obtained by first digitizing the curve internally and then walking along the curve. For a closed stroke the start of the path is the first point on the path that was created. This might not be obvious. If the stroke is not long enough, a \22valid\22 flag will be FALSE.\00", align 1
@.str.52 = private unnamed_addr constant [5 x i8] c"dist\00", align 1
@.str.53 = private unnamed_addr constant [20 x i8] c"The given distance.\00", align 1
@.str.54 = private unnamed_addr constant [8 x i8] c"x-point\00", align 1
@.str.55 = private unnamed_addr constant [8 x i8] c"x point\00", align 1
@.str.56 = private unnamed_addr constant [29 x i8] c"The x position of the point.\00", align 1
@.str.57 = private unnamed_addr constant [8 x i8] c"y-point\00", align 1
@.str.58 = private unnamed_addr constant [8 x i8] c"y point\00", align 1
@.str.59 = private unnamed_addr constant [29 x i8] c"The y position of the point.\00", align 1
@.str.60 = private unnamed_addr constant [6 x i8] c"slope\00", align 1
@.str.61 = private unnamed_addr constant [44 x i8] c"The slope (dy / dx) at the specified point.\00", align 1
@.str.62 = private unnamed_addr constant [6 x i8] c"valid\00", align 1
@.str.63 = private unnamed_addr constant [49 x i8] c"Indicator for the validity of the returned data.\00", align 1
@.str.64 = private unnamed_addr constant [27 x i8] c"gimp-vectors-remove-stroke\00", align 1
@.str.65 = private unnamed_addr constant [41 x i8] c"remove the stroke from a vectors object.\00", align 1
@.str.66 = private unnamed_addr constant [41 x i8] c"Remove the stroke from a vectors object.\00", align 1
@.str.67 = private unnamed_addr constant [26 x i8] c"gimp-vectors-stroke-close\00", align 1
@.str.68 = private unnamed_addr constant [29 x i8] c"closes the specified stroke.\00", align 1
@.str.69 = private unnamed_addr constant [29 x i8] c"Closes the specified stroke.\00", align 1
@.str.70 = private unnamed_addr constant [30 x i8] c"gimp-vectors-stroke-translate\00", align 1
@.str.71 = private unnamed_addr constant [28 x i8] c"translate the given stroke.\00", align 1
@.str.72 = private unnamed_addr constant [28 x i8] c"Translate the given stroke.\00", align 1
@.str.73 = private unnamed_addr constant [6 x i8] c"off-x\00", align 1
@.str.74 = private unnamed_addr constant [6 x i8] c"off x\00", align 1
@.str.75 = private unnamed_addr constant [22 x i8] c"Offset in x direction\00", align 1
@.str.76 = private unnamed_addr constant [6 x i8] c"off-y\00", align 1
@.str.77 = private unnamed_addr constant [6 x i8] c"off y\00", align 1
@.str.78 = private unnamed_addr constant [22 x i8] c"Offset in y direction\00", align 1
@.str.79 = private unnamed_addr constant [26 x i8] c"gimp-vectors-stroke-scale\00", align 1
@.str.80 = private unnamed_addr constant [25 x i8] c"scales the given stroke.\00", align 1
@.str.81 = private unnamed_addr constant [24 x i8] c"Scale the given stroke.\00", align 1
@.str.82 = private unnamed_addr constant [8 x i8] c"scale-x\00", align 1
@.str.83 = private unnamed_addr constant [8 x i8] c"scale x\00", align 1
@.str.84 = private unnamed_addr constant [28 x i8] c"Scale factor in x direction\00", align 1
@.str.85 = private unnamed_addr constant [8 x i8] c"scale-y\00", align 1
@.str.86 = private unnamed_addr constant [8 x i8] c"scale y\00", align 1
@.str.87 = private unnamed_addr constant [28 x i8] c"Scale factor in y direction\00", align 1
@.str.88 = private unnamed_addr constant [27 x i8] c"gimp-vectors-stroke-rotate\00", align 1
@.str.89 = private unnamed_addr constant [26 x i8] c"rotates the given stroke.\00", align 1
@.str.90 = private unnamed_addr constant [68 x i8] c"Rotates the given stroke around given center by angle (in degrees).\00", align 1
@.str.91 = private unnamed_addr constant [18 x i8] c"Jo\C3\A3o S. O. Bueno\00", align 1
@.str.92 = private unnamed_addr constant [5 x i8] c"2006\00", align 1
@.str.93 = private unnamed_addr constant [9 x i8] c"center-x\00", align 1
@.str.94 = private unnamed_addr constant [9 x i8] c"center x\00", align 1
@.str.95 = private unnamed_addr constant [36 x i8] c"X coordinate of the rotation center\00", align 1
@.str.96 = private unnamed_addr constant [9 x i8] c"center-y\00", align 1
@.str.97 = private unnamed_addr constant [9 x i8] c"center y\00", align 1
@.str.98 = private unnamed_addr constant [36 x i8] c"Y coordinate of the rotation center\00", align 1
@.str.99 = private unnamed_addr constant [6 x i8] c"angle\00", align 1
@.str.100 = private unnamed_addr constant [22 x i8] c"angle to rotate about\00", align 1
@.str.101 = private unnamed_addr constant [25 x i8] c"gimp-vectors-stroke-flip\00", align 1
@.str.102 = private unnamed_addr constant [24 x i8] c"flips the given stroke.\00", align 1
@.str.103 = private unnamed_addr constant [10 x i8] c"flip-type\00", align 1
@.str.104 = private unnamed_addr constant [10 x i8] c"flip type\00", align 1
@.str.105 = private unnamed_addr constant [48 x i8] c"Flip orientation, either vertical or horizontal\00", align 1
@.str.106 = private unnamed_addr constant [5 x i8] c"axis\00", align 1
@.str.107 = private unnamed_addr constant [47 x i8] c"axis coordinate about which to flip, in pixels\00", align 1
@.str.108 = private unnamed_addr constant [30 x i8] c"gimp-vectors-stroke-flip-free\00", align 1
@.str.109 = private unnamed_addr constant [48 x i8] c"flips the given stroke about an arbitrary axis.\00", align 1
@.str.110 = private unnamed_addr constant [149 x i8] c"Flips the given stroke about an arbitrary axis. Axis is defined by two coordinates in the image (in pixels), through which the flipping axis passes.\00", align 1
@.str.111 = private unnamed_addr constant [3 x i8] c"x1\00", align 1
@.str.112 = private unnamed_addr constant [53 x i8] c"X coordinate of the first point of the flipping axis\00", align 1
@.str.113 = private unnamed_addr constant [3 x i8] c"y1\00", align 1
@.str.114 = private unnamed_addr constant [53 x i8] c"Y coordinate of the first point of the flipping axis\00", align 1
@.str.115 = private unnamed_addr constant [3 x i8] c"x2\00", align 1
@.str.116 = private unnamed_addr constant [54 x i8] c"X coordinate of the second point of the flipping axis\00", align 1
@.str.117 = private unnamed_addr constant [3 x i8] c"y2\00", align 1
@.str.118 = private unnamed_addr constant [54 x i8] c"Y coordinate of the second point of the flipping axis\00", align 1
@.str.119 = private unnamed_addr constant [31 x i8] c"gimp-vectors-stroke-get-points\00", align 1
@.str.120 = private unnamed_addr constant [40 x i8] c"returns the control points of a stroke.\00", align 1
@.str.121 = private unnamed_addr constant [213 x i8] c"returns the control points of a stroke. The interpretation of the coordinates returned depends on the type of the stroke. For Gimp 2.4 this is always a bezier stroke, where the coordinates are the control points.\00", align 1
@.str.122 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.123 = private unnamed_addr constant [69 x i8] c"type of the stroke (always GIMP_VECTORS_STROKE_TYPE_BEZIER for now).\00", align 1
@.str.124 = private unnamed_addr constant [11 x i8] c"num-points\00", align 1
@.str.125 = private unnamed_addr constant [11 x i8] c"num points\00", align 1
@.str.126 = private unnamed_addr constant [31 x i8] c"The number of floats returned.\00", align 1
@.str.127 = private unnamed_addr constant [14 x i8] c"controlpoints\00", align 1
@.str.128 = private unnamed_addr constant [65 x i8] c"List of the control points for the stroke (x0, y0, x1, y1, ...).\00", align 1
@.str.129 = private unnamed_addr constant [7 x i8] c"closed\00", align 1
@.str.130 = private unnamed_addr constant [37 x i8] c"Whether the stroke is closed or not.\00", align 1
@.str.131 = private unnamed_addr constant [36 x i8] c"gimp-vectors-stroke-new-from-points\00", align 1
@.str.132 = private unnamed_addr constant [53 x i8] c"Adds a stroke of a given type to the vectors object.\00", align 1
@.str.133 = private unnamed_addr constant [478 x i8] c"Adds a stroke of a given type to the vectors object. The coordinates of the control points can be specified. For now only strokes of the type GIMP_VECTORS_STROKE_TYPE_BEZIER are supported. The control points are specified as a pair of float values for the x- and y-coordinate. The Bezier stroke type needs a multiple of three control points. Each Bezier segment endpoint (anchor, A) has two additional control points (C) associated. They are specified in the order CACCACCAC...\00", align 1
@.str.134 = private unnamed_addr constant [111 x i8] c"The number of elements in the array, i.e. the number of controlpoints in the stroke * 2 (x- and y-coordinate).\00", align 1
@.str.135 = private unnamed_addr constant [56 x i8] c"List of the x- and y-coordinates of the control points.\00", align 1
@.str.136 = private unnamed_addr constant [43 x i8] c"Whether the stroke is to be closed or not.\00", align 1
@.str.137 = private unnamed_addr constant [43 x i8] c"The stroke ID of the newly created stroke.\00", align 1
@.str.138 = private unnamed_addr constant [32 x i8] c"gimp-vectors-stroke-interpolate\00", align 1
@.str.139 = private unnamed_addr constant [47 x i8] c"returns polygonal approximation of the stroke.\00", align 1
@.str.140 = private unnamed_addr constant [11 x i8] c"num-coords\00", align 1
@.str.141 = private unnamed_addr constant [11 x i8] c"num coords\00", align 1
@.str.142 = private unnamed_addr constant [7 x i8] c"coords\00", align 1
@.str.143 = private unnamed_addr constant [57 x i8] c"List of the coords along the path (x0, y0, x1, y1, ...).\00", align 1
@.str.144 = private unnamed_addr constant [38 x i8] c"gimp-vectors-bezier-stroke-new-moveto\00", align 1
@.str.145 = private unnamed_addr constant [65 x i8] c"Adds a bezier stroke with a single moveto to the vectors object.\00", align 1
@.str.146 = private unnamed_addr constant [3 x i8] c"x0\00", align 1
@.str.147 = private unnamed_addr constant [31 x i8] c"The x-coordinate of the moveto\00", align 1
@.str.148 = private unnamed_addr constant [3 x i8] c"y0\00", align 1
@.str.149 = private unnamed_addr constant [31 x i8] c"The y-coordinate of the moveto\00", align 1
@.str.150 = private unnamed_addr constant [21 x i8] c"The resulting stroke\00", align 1
@.str.151 = private unnamed_addr constant [34 x i8] c"gimp-vectors-bezier-stroke-lineto\00", align 1
@.str.152 = private unnamed_addr constant [39 x i8] c"Extends a bezier stroke with a lineto.\00", align 1
@.str.153 = private unnamed_addr constant [31 x i8] c"The x-coordinate of the lineto\00", align 1
@.str.154 = private unnamed_addr constant [31 x i8] c"The y-coordinate of the lineto\00", align 1
@.str.155 = private unnamed_addr constant [35 x i8] c"gimp-vectors-bezier-stroke-conicto\00", align 1
@.str.156 = private unnamed_addr constant [52 x i8] c"Extends a bezier stroke with a conic bezier spline.\00", align 1
@.str.157 = private unnamed_addr constant [144 x i8] c"Extends a bezier stroke with a conic bezier spline. Actually a cubic bezier spline gets added that realizes the shape of a conic bezier spline.\00", align 1
@.str.158 = private unnamed_addr constant [38 x i8] c"The x-coordinate of the control point\00", align 1
@.str.159 = private unnamed_addr constant [38 x i8] c"The y-coordinate of the control point\00", align 1
@.str.160 = private unnamed_addr constant [34 x i8] c"The x-coordinate of the end point\00", align 1
@.str.161 = private unnamed_addr constant [34 x i8] c"The y-coordinate of the end point\00", align 1
@.str.162 = private unnamed_addr constant [35 x i8] c"gimp-vectors-bezier-stroke-cubicto\00", align 1
@.str.163 = private unnamed_addr constant [52 x i8] c"Extends a bezier stroke with a cubic bezier spline.\00", align 1
@.str.164 = private unnamed_addr constant [44 x i8] c"The x-coordinate of the first control point\00", align 1
@.str.165 = private unnamed_addr constant [44 x i8] c"The y-coordinate of the first control point\00", align 1
@.str.166 = private unnamed_addr constant [45 x i8] c"The x-coordinate of the second control point\00", align 1
@.str.167 = private unnamed_addr constant [45 x i8] c"The y-coordinate of the second control point\00", align 1
@.str.168 = private unnamed_addr constant [39 x i8] c"gimp-vectors-bezier-stroke-new-ellipse\00", align 1
@.str.169 = private unnamed_addr constant [63 x i8] c"Adds a bezier stroke describing an ellipse the vectors object.\00", align 1
@.str.170 = private unnamed_addr constant [31 x i8] c"The x-coordinate of the center\00", align 1
@.str.171 = private unnamed_addr constant [31 x i8] c"The y-coordinate of the center\00", align 1
@.str.172 = private unnamed_addr constant [9 x i8] c"radius-x\00", align 1
@.str.173 = private unnamed_addr constant [9 x i8] c"radius x\00", align 1
@.str.174 = private unnamed_addr constant [26 x i8] c"The radius in x direction\00", align 1
@.str.175 = private unnamed_addr constant [9 x i8] c"radius-y\00", align 1
@.str.176 = private unnamed_addr constant [9 x i8] c"radius y\00", align 1
@.str.177 = private unnamed_addr constant [26 x i8] c"The radius in y direction\00", align 1
@.str.178 = private unnamed_addr constant [64 x i8] c"The angle the x-axis of the ellipse (radians, counterclockwise)\00", align 1
@.str.179 = private unnamed_addr constant [26 x i8] c"gimp-vectors-to-selection\00", align 1
@.str.180 = private unnamed_addr constant [50 x i8] c"Deprecated: Use 'gimp-image-select-item' instead.\00", align 1
@.str.181 = private unnamed_addr constant [23 x i8] c"gimp-image-select-item\00", align 1
@.str.182 = private unnamed_addr constant [46 x i8] c"The vectors object to render to the selection\00", align 1
@.str.183 = private unnamed_addr constant [10 x i8] c"operation\00", align 1
@.str.184 = private unnamed_addr constant [45 x i8] c"The desired operation with current selection\00", align 1
@.str.185 = private unnamed_addr constant [10 x i8] c"antialias\00", align 1
@.str.186 = private unnamed_addr constant [21 x i8] c"Antialias selection.\00", align 1
@.str.187 = private unnamed_addr constant [8 x i8] c"feather\00", align 1
@.str.188 = private unnamed_addr constant [19 x i8] c"Feather selection.\00", align 1
@.str.189 = private unnamed_addr constant [17 x i8] c"feather-radius-x\00", align 1
@.str.190 = private unnamed_addr constant [17 x i8] c"feather radius x\00", align 1
@.str.191 = private unnamed_addr constant [18 x i8] c"Feather radius x.\00", align 1
@.str.192 = private unnamed_addr constant [17 x i8] c"feather-radius-y\00", align 1
@.str.193 = private unnamed_addr constant [17 x i8] c"feather radius y\00", align 1
@.str.194 = private unnamed_addr constant [18 x i8] c"Feather radius y.\00", align 1
@.str.195 = private unnamed_addr constant [30 x i8] c"gimp-vectors-import-from-file\00", align 1
@.str.196 = private unnamed_addr constant [31 x i8] c"Import paths from an SVG file.\00", align 1
@.str.197 = private unnamed_addr constant [107 x i8] c"This procedure imports paths from an SVG file. SVG elements other than paths and basic shapes are ignored.\00", align 1
@.str.198 = private unnamed_addr constant [9 x i8] c"filename\00", align 1
@.str.199 = private unnamed_addr constant [36 x i8] c"The name of the SVG file to import.\00", align 1
@.str.200 = private unnamed_addr constant [6 x i8] c"merge\00", align 1
@.str.201 = private unnamed_addr constant [42 x i8] c"Merge paths into a single vectors object.\00", align 1
@.str.202 = private unnamed_addr constant [6 x i8] c"scale\00", align 1
@.str.203 = private unnamed_addr constant [35 x i8] c"Scale the SVG to image dimensions.\00", align 1
@.str.204 = private unnamed_addr constant [12 x i8] c"num-vectors\00", align 1
@.str.205 = private unnamed_addr constant [12 x i8] c"num vectors\00", align 1
@.str.206 = private unnamed_addr constant [36 x i8] c"The number of newly created vectors\00", align 1
@.str.207 = private unnamed_addr constant [12 x i8] c"vectors-ids\00", align 1
@.str.208 = private unnamed_addr constant [12 x i8] c"vectors ids\00", align 1
@.str.209 = private unnamed_addr constant [34 x i8] c"The list of newly created vectors\00", align 1
@.str.210 = private unnamed_addr constant [32 x i8] c"gimp-vectors-import-from-string\00", align 1
@.str.211 = private unnamed_addr constant [33 x i8] c"Import paths from an SVG string.\00", align 1
@.str.212 = private unnamed_addr constant [190 x i8] c"This procedure works like 'gimp-vectors-import-from-file' but takes a string rather than reading the SVG from a file. This allows you to write scripts that generate SVG and feed it to GIMP.\00", align 1
@.str.213 = private unnamed_addr constant [7 x i8] c"string\00", align 1
@.str.214 = private unnamed_addr constant [57 x i8] c"A string that must be a complete and valid SVG document.\00", align 1
@.str.215 = private unnamed_addr constant [66 x i8] c"Number of bytes in string or -1 if the string is NULL terminated.\00", align 1
@.str.216 = private unnamed_addr constant [28 x i8] c"gimp-vectors-export-to-file\00", align 1
@.str.217 = private unnamed_addr constant [28 x i8] c"save a path as an SVG file.\00", align 1
@.str.218 = private unnamed_addr constant [264 x i8] c"This procedure creates an SVG file to save a Vectors object, that is, a path. The resulting file can be edited using a vector graphics application, or later reloaded into GIMP. If you pass 0 as the 'vectors' argument, then all paths in the image will be exported.\00", align 1
@.str.219 = private unnamed_addr constant [43 x i8] c"Bill Skaggs <weskaggs@primate.ucdavis.edu>\00", align 1
@.str.220 = private unnamed_addr constant [12 x i8] c"Bill Skaggs\00", align 1
@.str.221 = private unnamed_addr constant [5 x i8] c"2007\00", align 1
@.str.222 = private unnamed_addr constant [36 x i8] c"The name of the SVG file to create.\00", align 1
@.str.223 = private unnamed_addr constant [58 x i8] c"The vectors object to be saved, or 0 for all in the image\00", align 1
@.str.224 = private unnamed_addr constant [30 x i8] c"gimp-vectors-export-to-string\00", align 1
@.str.225 = private unnamed_addr constant [30 x i8] c"Save a path as an SVG string.\00", align 1
@.str.226 = private unnamed_addr constant [261 x i8] c"This procedure works like 'gimp-vectors-export-to-file' but creates a string rather than a file. The contents are a NUL-terminated string that holds a complete XML document. If you pass 0 as the 'vectors' argument, then all paths in the image will be exported.\00", align 1
@.str.227 = private unnamed_addr constant [54 x i8] c"The vectors object to save, or 0 for all in the image\00", align 1
@.str.228 = private unnamed_addr constant [53 x i8] c"A string whose contents are a complete SVG document.\00", align 1
@.str.229 = private unnamed_addr constant [19 x i8] c"Remove path stroke\00", align 1
@.str.230 = private unnamed_addr constant [18 x i8] c"Close path stroke\00", align 1
@.str.231 = private unnamed_addr constant [22 x i8] c"Translate path stroke\00", align 1
@.str.232 = private unnamed_addr constant [18 x i8] c"Scale path stroke\00", align 1
@.str.233 = private unnamed_addr constant [19 x i8] c"Rotate path stroke\00", align 1
@.str.234 = private unnamed_addr constant [17 x i8] c"Flip path stroke\00", align 1
@.str.235 = private unnamed_addr constant [16 x i8] c"Add path stroke\00", align 1
@.str.236 = private unnamed_addr constant [19 x i8] c"Extend path stroke\00", align 1

; Function Attrs: nounwind uwtable
define void @register_vectors_procs(%struct._GimpPDB* %pdb) #0 {
entry:
  %pdb.addr = alloca %struct._GimpPDB*, align 8
  %procedure = alloca %struct._GimpProcedure*, align 8
  store %struct._GimpPDB* %pdb, %struct._GimpPDB** %pdb.addr, align 8
  %call = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @vectors_new_invoker)
  store %struct._GimpProcedure* %call, %struct._GimpProcedure** %procedure, align 8
  %0 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %1 = bitcast %struct._GimpProcedure* %0 to %struct._GTypeInstance*
  %call1 = call i64 @gimp_object_get_type() #6
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call1)
  %2 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %2, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0))
  %3 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %3, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([121 x i8], [121 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* null)
  %4 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %5 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %5, i32 0, i32 1
  %6 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call3 = call %struct._GParamSpec* @gimp_param_spec_image_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), %struct._Gimp* %6, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %4, %struct._GParamSpec* %call3)
  %7 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call4 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i32 0, i32 0), i32 0, i32 0, i32 0, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %7, %struct._GParamSpec* %call4)
  %8 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %9 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp5 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %9, i32 0, i32 1
  %10 = load %struct._Gimp*, %struct._Gimp** %gimp5, align 8
  %call6 = call %struct._GParamSpec* @gimp_param_spec_vectors_id(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.10, i32 0, i32 0), %struct._Gimp* %10, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %8, %struct._GParamSpec* %call6)
  %11 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %12 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %11, %struct._GimpProcedure* %12)
  %13 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %14 = bitcast %struct._GimpProcedure* %13 to i8*
  call void @g_object_unref(i8* %14)
  %call7 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @vectors_new_from_text_layer_invoker)
  store %struct._GimpProcedure* %call7, %struct._GimpProcedure** %procedure, align 8
  %15 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %16 = bitcast %struct._GimpProcedure* %15 to %struct._GTypeInstance*
  %call8 = call i64 @gimp_object_get_type() #6
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call8)
  %17 = bitcast %struct._GTypeInstance* %call9 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %17, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.11, i32 0, i32 0))
  %18 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %18, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([133 x i8], [133 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i8* null)
  %19 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %20 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp10 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %20, i32 0, i32 1
  %21 = load %struct._Gimp*, %struct._Gimp** %gimp10, align 8
  %call11 = call %struct._GParamSpec* @gimp_param_spec_image_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i32 0, i32 0), %struct._Gimp* %21, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %19, %struct._GParamSpec* %call11)
  %22 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %23 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp12 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %23, i32 0, i32 1
  %24 = load %struct._Gimp*, %struct._Gimp** %gimp12, align 8
  %call13 = call %struct._GParamSpec* @gimp_param_spec_layer_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i32 0, i32 0), %struct._Gimp* %24, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %22, %struct._GParamSpec* %call13)
  %25 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %26 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp14 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %26, i32 0, i32 1
  %27 = load %struct._Gimp*, %struct._Gimp** %gimp14, align 8
  %call15 = call %struct._GParamSpec* @gimp_param_spec_vectors_id(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.20, i32 0, i32 0), %struct._Gimp* %27, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %25, %struct._GParamSpec* %call15)
  %28 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %29 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %28, %struct._GimpProcedure* %29)
  %30 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %31 = bitcast %struct._GimpProcedure* %30 to i8*
  call void @g_object_unref(i8* %31)
  %call16 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @vectors_copy_invoker)
  store %struct._GimpProcedure* %call16, %struct._GimpProcedure** %procedure, align 8
  %32 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %33 = bitcast %struct._GimpProcedure* %32 to %struct._GTypeInstance*
  %call17 = call i64 @gimp_object_get_type() #6
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 %call17)
  %34 = bitcast %struct._GTypeInstance* %call18 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %34, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.21, i32 0, i32 0))
  %35 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %35, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i8* null)
  %36 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %37 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp19 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %37, i32 0, i32 1
  %38 = load %struct._Gimp*, %struct._Gimp** %gimp19, align 8
  %call20 = call %struct._GParamSpec* @gimp_param_spec_vectors_id(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.26, i32 0, i32 0), %struct._Gimp* %38, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %36, %struct._GParamSpec* %call20)
  %39 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %40 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp21 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %40, i32 0, i32 1
  %41 = load %struct._Gimp*, %struct._Gimp** %gimp21, align 8
  %call22 = call %struct._GParamSpec* @gimp_param_spec_vectors_id(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.29, i32 0, i32 0), %struct._Gimp* %41, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %39, %struct._GParamSpec* %call22)
  %42 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %43 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %42, %struct._GimpProcedure* %43)
  %44 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %45 = bitcast %struct._GimpProcedure* %44 to i8*
  call void @g_object_unref(i8* %45)
  %call23 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @vectors_get_strokes_invoker)
  store %struct._GimpProcedure* %call23, %struct._GimpProcedure** %procedure, align 8
  %46 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %47 = bitcast %struct._GimpProcedure* %46 to %struct._GTypeInstance*
  %call24 = call i64 @gimp_object_get_type() #6
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %47, i64 %call24)
  %48 = bitcast %struct._GTypeInstance* %call25 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %48, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.30, i32 0, i32 0))
  %49 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %49, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* null)
  %50 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %51 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp26 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %51, i32 0, i32 1
  %52 = load %struct._Gimp*, %struct._Gimp** %gimp26, align 8
  %call27 = call %struct._GParamSpec* @gimp_param_spec_vectors_id(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.33, i32 0, i32 0), %struct._Gimp* %52, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %50, %struct._GParamSpec* %call27)
  %53 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call28 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.36, i32 0, i32 0), i32 0, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %53, %struct._GParamSpec* %call28)
  %54 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call29 = call %struct._GParamSpec* @gimp_param_spec_int32_array(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.39, i32 0, i32 0), i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %54, %struct._GParamSpec* %call29)
  %55 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %56 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %55, %struct._GimpProcedure* %56)
  %57 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %58 = bitcast %struct._GimpProcedure* %57 to i8*
  call void @g_object_unref(i8* %58)
  %call30 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @vectors_stroke_get_length_invoker)
  store %struct._GimpProcedure* %call30, %struct._GimpProcedure** %procedure, align 8
  %59 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %60 = bitcast %struct._GimpProcedure* %59 to %struct._GTypeInstance*
  %call31 = call i64 @gimp_object_get_type() #6
  %call32 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %60, i64 %call31)
  %61 = bitcast %struct._GTypeInstance* %call32 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %61, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.40, i32 0, i32 0))
  %62 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %62, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* null)
  %63 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %64 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp33 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %64, i32 0, i32 1
  %65 = load %struct._Gimp*, %struct._Gimp** %gimp33, align 8
  %call34 = call %struct._GParamSpec* @gimp_param_spec_vectors_id(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.33, i32 0, i32 0), %struct._Gimp* %65, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %63, %struct._GParamSpec* %call34)
  %66 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call35 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.44, i32 0, i32 0), i32 -2147483648, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %66, %struct._GParamSpec* %call35)
  %67 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call36 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.46, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %67, %struct._GParamSpec* %call36)
  %68 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call37 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.48, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %68, %struct._GParamSpec* %call37)
  %69 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %70 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %69, %struct._GimpProcedure* %70)
  %71 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %72 = bitcast %struct._GimpProcedure* %71 to i8*
  call void @g_object_unref(i8* %72)
  %call38 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @vectors_stroke_get_point_at_dist_invoker)
  store %struct._GimpProcedure* %call38, %struct._GimpProcedure** %procedure, align 8
  %73 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %74 = bitcast %struct._GimpProcedure* %73 to %struct._GTypeInstance*
  %call39 = call i64 @gimp_object_get_type() #6
  %call40 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %74, i64 %call39)
  %75 = bitcast %struct._GTypeInstance* %call40 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %75, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.49, i32 0, i32 0))
  %76 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %76, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([370 x i8], [370 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* null)
  %77 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %78 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp41 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %78, i32 0, i32 1
  %79 = load %struct._Gimp*, %struct._Gimp** %gimp41, align 8
  %call42 = call %struct._GParamSpec* @gimp_param_spec_vectors_id(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.33, i32 0, i32 0), %struct._Gimp* %79, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %77, %struct._GParamSpec* %call42)
  %80 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call43 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.44, i32 0, i32 0), i32 -2147483648, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %80, %struct._GParamSpec* %call43)
  %81 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call44 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.53, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %81, %struct._GParamSpec* %call44)
  %82 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call45 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.46, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %82, %struct._GParamSpec* %call45)
  %83 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call46 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.56, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %83, %struct._GParamSpec* %call46)
  %84 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call47 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.59, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %84, %struct._GParamSpec* %call47)
  %85 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call48 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.61, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %85, %struct._GParamSpec* %call48)
  %86 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call49 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.63, i32 0, i32 0), i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %86, %struct._GParamSpec* %call49)
  %87 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %88 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %87, %struct._GimpProcedure* %88)
  %89 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %90 = bitcast %struct._GimpProcedure* %89 to i8*
  call void @g_object_unref(i8* %90)
  %call50 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @vectors_remove_stroke_invoker)
  store %struct._GimpProcedure* %call50, %struct._GimpProcedure** %procedure, align 8
  %91 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %92 = bitcast %struct._GimpProcedure* %91 to %struct._GTypeInstance*
  %call51 = call i64 @gimp_object_get_type() #6
  %call52 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %92, i64 %call51)
  %93 = bitcast %struct._GTypeInstance* %call52 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %93, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.64, i32 0, i32 0))
  %94 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %94, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* null)
  %95 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %96 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp53 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %96, i32 0, i32 1
  %97 = load %struct._Gimp*, %struct._Gimp** %gimp53, align 8
  %call54 = call %struct._GParamSpec* @gimp_param_spec_vectors_id(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.33, i32 0, i32 0), %struct._Gimp* %97, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %95, %struct._GParamSpec* %call54)
  %98 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call55 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.44, i32 0, i32 0), i32 -2147483648, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %98, %struct._GParamSpec* %call55)
  %99 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %100 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %99, %struct._GimpProcedure* %100)
  %101 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %102 = bitcast %struct._GimpProcedure* %101 to i8*
  call void @g_object_unref(i8* %102)
  %call56 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @vectors_stroke_close_invoker)
  store %struct._GimpProcedure* %call56, %struct._GimpProcedure** %procedure, align 8
  %103 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %104 = bitcast %struct._GimpProcedure* %103 to %struct._GTypeInstance*
  %call57 = call i64 @gimp_object_get_type() #6
  %call58 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %104, i64 %call57)
  %105 = bitcast %struct._GTypeInstance* %call58 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %105, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.67, i32 0, i32 0))
  %106 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %106, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* null)
  %107 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %108 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp59 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %108, i32 0, i32 1
  %109 = load %struct._Gimp*, %struct._Gimp** %gimp59, align 8
  %call60 = call %struct._GParamSpec* @gimp_param_spec_vectors_id(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.33, i32 0, i32 0), %struct._Gimp* %109, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %107, %struct._GParamSpec* %call60)
  %110 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call61 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.44, i32 0, i32 0), i32 -2147483648, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %110, %struct._GParamSpec* %call61)
  %111 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %112 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %111, %struct._GimpProcedure* %112)
  %113 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %114 = bitcast %struct._GimpProcedure* %113 to i8*
  call void @g_object_unref(i8* %114)
  %call62 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @vectors_stroke_translate_invoker)
  store %struct._GimpProcedure* %call62, %struct._GimpProcedure** %procedure, align 8
  %115 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %116 = bitcast %struct._GimpProcedure* %115 to %struct._GTypeInstance*
  %call63 = call i64 @gimp_object_get_type() #6
  %call64 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %116, i64 %call63)
  %117 = bitcast %struct._GTypeInstance* %call64 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %117, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.70, i32 0, i32 0))
  %118 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %118, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.72, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* null)
  %119 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %120 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp65 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %120, i32 0, i32 1
  %121 = load %struct._Gimp*, %struct._Gimp** %gimp65, align 8
  %call66 = call %struct._GParamSpec* @gimp_param_spec_vectors_id(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.33, i32 0, i32 0), %struct._Gimp* %121, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %119, %struct._GParamSpec* %call66)
  %122 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call67 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.44, i32 0, i32 0), i32 -2147483648, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %122, %struct._GParamSpec* %call67)
  %123 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call68 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.73, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.74, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.75, i32 0, i32 0), i32 -2147483648, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %123, %struct._GParamSpec* %call68)
  %124 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call69 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.76, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.77, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.78, i32 0, i32 0), i32 -2147483648, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %124, %struct._GParamSpec* %call69)
  %125 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %126 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %125, %struct._GimpProcedure* %126)
  %127 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %128 = bitcast %struct._GimpProcedure* %127 to i8*
  call void @g_object_unref(i8* %128)
  %call70 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @vectors_stroke_scale_invoker)
  store %struct._GimpProcedure* %call70, %struct._GimpProcedure** %procedure, align 8
  %129 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %130 = bitcast %struct._GimpProcedure* %129 to %struct._GTypeInstance*
  %call71 = call i64 @gimp_object_get_type() #6
  %call72 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %130, i64 %call71)
  %131 = bitcast %struct._GTypeInstance* %call72 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %131, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.79, i32 0, i32 0))
  %132 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %132, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.79, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.80, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.81, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* null)
  %133 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %134 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp73 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %134, i32 0, i32 1
  %135 = load %struct._Gimp*, %struct._Gimp** %gimp73, align 8
  %call74 = call %struct._GParamSpec* @gimp_param_spec_vectors_id(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.33, i32 0, i32 0), %struct._Gimp* %135, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %133, %struct._GParamSpec* %call74)
  %136 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call75 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.44, i32 0, i32 0), i32 -2147483648, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %136, %struct._GParamSpec* %call75)
  %137 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call76 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.82, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.83, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.84, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %137, %struct._GParamSpec* %call76)
  %138 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call77 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.85, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.86, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.87, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %138, %struct._GParamSpec* %call77)
  %139 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %140 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %139, %struct._GimpProcedure* %140)
  %141 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %142 = bitcast %struct._GimpProcedure* %141 to i8*
  call void @g_object_unref(i8* %142)
  %call78 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @vectors_stroke_rotate_invoker)
  store %struct._GimpProcedure* %call78, %struct._GimpProcedure** %procedure, align 8
  %143 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %144 = bitcast %struct._GimpProcedure* %143 to %struct._GTypeInstance*
  %call79 = call i64 @gimp_object_get_type() #6
  %call80 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %144, i64 %call79)
  %145 = bitcast %struct._GTypeInstance* %call80 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %145, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.88, i32 0, i32 0))
  %146 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %146, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.89, i32 0, i32 0), i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.90, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.91, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.91, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.92, i32 0, i32 0), i8* null)
  %147 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %148 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp81 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %148, i32 0, i32 1
  %149 = load %struct._Gimp*, %struct._Gimp** %gimp81, align 8
  %call82 = call %struct._GParamSpec* @gimp_param_spec_vectors_id(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.33, i32 0, i32 0), %struct._Gimp* %149, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %147, %struct._GParamSpec* %call82)
  %150 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call83 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.44, i32 0, i32 0), i32 -2147483648, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %150, %struct._GParamSpec* %call83)
  %151 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call84 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.93, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.94, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.95, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %151, %struct._GParamSpec* %call84)
  %152 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call85 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.96, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.97, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.98, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %152, %struct._GParamSpec* %call85)
  %153 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call86 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.99, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.99, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.100, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %153, %struct._GParamSpec* %call86)
  %154 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %155 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %154, %struct._GimpProcedure* %155)
  %156 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %157 = bitcast %struct._GimpProcedure* %156 to i8*
  call void @g_object_unref(i8* %157)
  %call87 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @vectors_stroke_flip_invoker)
  store %struct._GimpProcedure* %call87, %struct._GimpProcedure** %procedure, align 8
  %158 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %159 = bitcast %struct._GimpProcedure* %158 to %struct._GTypeInstance*
  %call88 = call i64 @gimp_object_get_type() #6
  %call89 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %159, i64 %call88)
  %160 = bitcast %struct._GTypeInstance* %call89 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %160, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.101, i32 0, i32 0))
  %161 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %161, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.101, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.102, i32 0, i32 0), i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.90, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.91, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.91, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.92, i32 0, i32 0), i8* null)
  %162 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %163 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp90 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %163, i32 0, i32 1
  %164 = load %struct._Gimp*, %struct._Gimp** %gimp90, align 8
  %call91 = call %struct._GParamSpec* @gimp_param_spec_vectors_id(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.33, i32 0, i32 0), %struct._Gimp* %164, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %162, %struct._GParamSpec* %call91)
  %165 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call92 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.44, i32 0, i32 0), i32 -2147483648, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %165, %struct._GParamSpec* %call92)
  %166 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call93 = call i64 @gimp_orientation_type_get_type() #6
  %call94 = call %struct._GParamSpec* @gimp_param_spec_enum(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.104, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.105, i32 0, i32 0), i64 %call93, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %166, %struct._GParamSpec* %call94)
  %167 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %args = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %167, i32 0, i32 11
  %168 = load %struct._GParamSpec**, %struct._GParamSpec*** %args, align 8
  %arrayidx = getelementptr inbounds %struct._GParamSpec*, %struct._GParamSpec** %168, i64 2
  %169 = load %struct._GParamSpec*, %struct._GParamSpec** %arrayidx, align 8
  %170 = bitcast %struct._GParamSpec* %169 to %struct._GTypeInstance*
  %call95 = call i64 @gimp_param_enum_get_type() #6
  %call96 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %170, i64 %call95)
  %171 = bitcast %struct._GTypeInstance* %call96 to %struct._GimpParamSpecEnum*
  call void @gimp_param_spec_enum_exclude_value(%struct._GimpParamSpecEnum* %171, i32 2)
  %172 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call97 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.106, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.106, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.107, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %172, %struct._GParamSpec* %call97)
  %173 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %174 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %173, %struct._GimpProcedure* %174)
  %175 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %176 = bitcast %struct._GimpProcedure* %175 to i8*
  call void @g_object_unref(i8* %176)
  %call98 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @vectors_stroke_flip_free_invoker)
  store %struct._GimpProcedure* %call98, %struct._GimpProcedure** %procedure, align 8
  %177 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %178 = bitcast %struct._GimpProcedure* %177 to %struct._GTypeInstance*
  %call99 = call i64 @gimp_object_get_type() #6
  %call100 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %178, i64 %call99)
  %179 = bitcast %struct._GTypeInstance* %call100 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %179, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.108, i32 0, i32 0))
  %180 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %180, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.108, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.109, i32 0, i32 0), i8* getelementptr inbounds ([149 x i8], [149 x i8]* @.str.110, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.91, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.91, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.92, i32 0, i32 0), i8* null)
  %181 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %182 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp101 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %182, i32 0, i32 1
  %183 = load %struct._Gimp*, %struct._Gimp** %gimp101, align 8
  %call102 = call %struct._GParamSpec* @gimp_param_spec_vectors_id(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.33, i32 0, i32 0), %struct._Gimp* %183, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %181, %struct._GParamSpec* %call102)
  %184 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call103 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.44, i32 0, i32 0), i32 -2147483648, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %184, %struct._GParamSpec* %call103)
  %185 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call104 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.111, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.111, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.112, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %185, %struct._GParamSpec* %call104)
  %186 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call105 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.113, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.113, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.114, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %186, %struct._GParamSpec* %call105)
  %187 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call106 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.115, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.115, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.116, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %187, %struct._GParamSpec* %call106)
  %188 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call107 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.117, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.117, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.118, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %188, %struct._GParamSpec* %call107)
  %189 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %190 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %189, %struct._GimpProcedure* %190)
  %191 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %192 = bitcast %struct._GimpProcedure* %191 to i8*
  call void @g_object_unref(i8* %192)
  %call108 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @vectors_stroke_get_points_invoker)
  store %struct._GimpProcedure* %call108, %struct._GimpProcedure** %procedure, align 8
  %193 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %194 = bitcast %struct._GimpProcedure* %193 to %struct._GTypeInstance*
  %call109 = call i64 @gimp_object_get_type() #6
  %call110 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %194, i64 %call109)
  %195 = bitcast %struct._GTypeInstance* %call110 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %195, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.119, i32 0, i32 0))
  %196 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %196, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.119, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.120, i32 0, i32 0), i8* getelementptr inbounds ([213 x i8], [213 x i8]* @.str.121, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.92, i32 0, i32 0), i8* null)
  %197 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %198 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp111 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %198, i32 0, i32 1
  %199 = load %struct._Gimp*, %struct._Gimp** %gimp111, align 8
  %call112 = call %struct._GParamSpec* @gimp_param_spec_vectors_id(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.33, i32 0, i32 0), %struct._Gimp* %199, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %197, %struct._GParamSpec* %call112)
  %200 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call113 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.44, i32 0, i32 0), i32 -2147483648, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %200, %struct._GParamSpec* %call113)
  %201 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call114 = call i64 @gimp_vectors_stroke_type_get_type() #6
  %call115 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.122, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.122, i32 0, i32 0), i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.123, i32 0, i32 0), i64 %call114, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %201, %struct._GParamSpec* %call115)
  %202 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call116 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.124, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.125, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.126, i32 0, i32 0), i32 0, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %202, %struct._GParamSpec* %call116)
  %203 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call117 = call %struct._GParamSpec* @gimp_param_spec_float_array(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.127, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.127, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.128, i32 0, i32 0), i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %203, %struct._GParamSpec* %call117)
  %204 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call118 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.129, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.129, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.130, i32 0, i32 0), i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %204, %struct._GParamSpec* %call118)
  %205 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %206 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %205, %struct._GimpProcedure* %206)
  %207 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %208 = bitcast %struct._GimpProcedure* %207 to i8*
  call void @g_object_unref(i8* %208)
  %call119 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @vectors_stroke_new_from_points_invoker)
  store %struct._GimpProcedure* %call119, %struct._GimpProcedure** %procedure, align 8
  %209 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %210 = bitcast %struct._GimpProcedure* %209 to %struct._GTypeInstance*
  %call120 = call i64 @gimp_object_get_type() #6
  %call121 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %210, i64 %call120)
  %211 = bitcast %struct._GTypeInstance* %call121 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %211, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.131, i32 0, i32 0))
  %212 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %212, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.131, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.132, i32 0, i32 0), i8* getelementptr inbounds ([478 x i8], [478 x i8]* @.str.133, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.92, i32 0, i32 0), i8* null)
  %213 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %214 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp122 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %214, i32 0, i32 1
  %215 = load %struct._Gimp*, %struct._Gimp** %gimp122, align 8
  %call123 = call %struct._GParamSpec* @gimp_param_spec_vectors_id(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.33, i32 0, i32 0), %struct._Gimp* %215, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %213, %struct._GParamSpec* %call123)
  %216 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call124 = call i64 @gimp_vectors_stroke_type_get_type() #6
  %call125 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.122, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.122, i32 0, i32 0), i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.123, i32 0, i32 0), i64 %call124, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %216, %struct._GParamSpec* %call125)
  %217 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call126 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.124, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.125, i32 0, i32 0), i8* getelementptr inbounds ([111 x i8], [111 x i8]* @.str.134, i32 0, i32 0), i32 0, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %217, %struct._GParamSpec* %call126)
  %218 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call127 = call %struct._GParamSpec* @gimp_param_spec_float_array(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.127, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.127, i32 0, i32 0), i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.135, i32 0, i32 0), i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %218, %struct._GParamSpec* %call127)
  %219 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call128 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.129, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.129, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.136, i32 0, i32 0), i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %219, %struct._GParamSpec* %call128)
  %220 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call129 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.137, i32 0, i32 0), i32 -2147483648, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %220, %struct._GParamSpec* %call129)
  %221 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %222 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %221, %struct._GimpProcedure* %222)
  %223 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %224 = bitcast %struct._GimpProcedure* %223 to i8*
  call void @g_object_unref(i8* %224)
  %call130 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @vectors_stroke_interpolate_invoker)
  store %struct._GimpProcedure* %call130, %struct._GimpProcedure** %procedure, align 8
  %225 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %226 = bitcast %struct._GimpProcedure* %225 to %struct._GTypeInstance*
  %call131 = call i64 @gimp_object_get_type() #6
  %call132 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %226, i64 %call131)
  %227 = bitcast %struct._GTypeInstance* %call132 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %227, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.138, i32 0, i32 0))
  %228 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %228, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.138, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.139, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.139, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* null)
  %229 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %230 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp133 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %230, i32 0, i32 1
  %231 = load %struct._Gimp*, %struct._Gimp** %gimp133, align 8
  %call134 = call %struct._GParamSpec* @gimp_param_spec_vectors_id(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.33, i32 0, i32 0), %struct._Gimp* %231, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %229, %struct._GParamSpec* %call134)
  %232 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call135 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.44, i32 0, i32 0), i32 -2147483648, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %232, %struct._GParamSpec* %call135)
  %233 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call136 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.46, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %233, %struct._GParamSpec* %call136)
  %234 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call137 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.140, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.141, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.126, i32 0, i32 0), i32 0, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %234, %struct._GParamSpec* %call137)
  %235 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call138 = call %struct._GParamSpec* @gimp_param_spec_float_array(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.142, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.142, i32 0, i32 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.143, i32 0, i32 0), i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %235, %struct._GParamSpec* %call138)
  %236 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call139 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.129, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.129, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.130, i32 0, i32 0), i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %236, %struct._GParamSpec* %call139)
  %237 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %238 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %237, %struct._GimpProcedure* %238)
  %239 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %240 = bitcast %struct._GimpProcedure* %239 to i8*
  call void @g_object_unref(i8* %240)
  %call140 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @vectors_bezier_stroke_new_moveto_invoker)
  store %struct._GimpProcedure* %call140, %struct._GimpProcedure** %procedure, align 8
  %241 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %242 = bitcast %struct._GimpProcedure* %241 to %struct._GTypeInstance*
  %call141 = call i64 @gimp_object_get_type() #6
  %call142 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %242, i64 %call141)
  %243 = bitcast %struct._GTypeInstance* %call142 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %243, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.144, i32 0, i32 0))
  %244 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %244, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.144, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.145, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.145, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* null)
  %245 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %246 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp143 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %246, i32 0, i32 1
  %247 = load %struct._Gimp*, %struct._Gimp** %gimp143, align 8
  %call144 = call %struct._GParamSpec* @gimp_param_spec_vectors_id(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.33, i32 0, i32 0), %struct._Gimp* %247, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %245, %struct._GParamSpec* %call144)
  %248 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call145 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.146, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.146, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.147, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %248, %struct._GParamSpec* %call145)
  %249 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call146 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.148, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.148, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.149, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %249, %struct._GParamSpec* %call146)
  %250 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call147 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.150, i32 0, i32 0), i32 -2147483648, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %250, %struct._GParamSpec* %call147)
  %251 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %252 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %251, %struct._GimpProcedure* %252)
  %253 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %254 = bitcast %struct._GimpProcedure* %253 to i8*
  call void @g_object_unref(i8* %254)
  %call148 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @vectors_bezier_stroke_lineto_invoker)
  store %struct._GimpProcedure* %call148, %struct._GimpProcedure** %procedure, align 8
  %255 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %256 = bitcast %struct._GimpProcedure* %255 to %struct._GTypeInstance*
  %call149 = call i64 @gimp_object_get_type() #6
  %call150 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %256, i64 %call149)
  %257 = bitcast %struct._GTypeInstance* %call150 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %257, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.151, i32 0, i32 0))
  %258 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %258, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.151, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.152, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.152, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* null)
  %259 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %260 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp151 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %260, i32 0, i32 1
  %261 = load %struct._Gimp*, %struct._Gimp** %gimp151, align 8
  %call152 = call %struct._GParamSpec* @gimp_param_spec_vectors_id(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.33, i32 0, i32 0), %struct._Gimp* %261, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %259, %struct._GParamSpec* %call152)
  %262 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call153 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.44, i32 0, i32 0), i32 -2147483648, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %262, %struct._GParamSpec* %call153)
  %263 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call154 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.146, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.146, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.153, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %263, %struct._GParamSpec* %call154)
  %264 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call155 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.148, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.148, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.154, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %264, %struct._GParamSpec* %call155)
  %265 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %266 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %265, %struct._GimpProcedure* %266)
  %267 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %268 = bitcast %struct._GimpProcedure* %267 to i8*
  call void @g_object_unref(i8* %268)
  %call156 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @vectors_bezier_stroke_conicto_invoker)
  store %struct._GimpProcedure* %call156, %struct._GimpProcedure** %procedure, align 8
  %269 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %270 = bitcast %struct._GimpProcedure* %269 to %struct._GTypeInstance*
  %call157 = call i64 @gimp_object_get_type() #6
  %call158 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %270, i64 %call157)
  %271 = bitcast %struct._GTypeInstance* %call158 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %271, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.155, i32 0, i32 0))
  %272 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %272, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.155, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.156, i32 0, i32 0), i8* getelementptr inbounds ([144 x i8], [144 x i8]* @.str.157, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* null)
  %273 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %274 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp159 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %274, i32 0, i32 1
  %275 = load %struct._Gimp*, %struct._Gimp** %gimp159, align 8
  %call160 = call %struct._GParamSpec* @gimp_param_spec_vectors_id(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.33, i32 0, i32 0), %struct._Gimp* %275, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %273, %struct._GParamSpec* %call160)
  %276 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call161 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.44, i32 0, i32 0), i32 -2147483648, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %276, %struct._GParamSpec* %call161)
  %277 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call162 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.146, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.146, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.158, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %277, %struct._GParamSpec* %call162)
  %278 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call163 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.148, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.148, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.159, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %278, %struct._GParamSpec* %call163)
  %279 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call164 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.111, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.111, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.160, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %279, %struct._GParamSpec* %call164)
  %280 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call165 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.113, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.113, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.161, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %280, %struct._GParamSpec* %call165)
  %281 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %282 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %281, %struct._GimpProcedure* %282)
  %283 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %284 = bitcast %struct._GimpProcedure* %283 to i8*
  call void @g_object_unref(i8* %284)
  %call166 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @vectors_bezier_stroke_cubicto_invoker)
  store %struct._GimpProcedure* %call166, %struct._GimpProcedure** %procedure, align 8
  %285 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %286 = bitcast %struct._GimpProcedure* %285 to %struct._GTypeInstance*
  %call167 = call i64 @gimp_object_get_type() #6
  %call168 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %286, i64 %call167)
  %287 = bitcast %struct._GTypeInstance* %call168 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %287, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.162, i32 0, i32 0))
  %288 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %288, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.162, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.163, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.163, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* null)
  %289 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %290 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp169 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %290, i32 0, i32 1
  %291 = load %struct._Gimp*, %struct._Gimp** %gimp169, align 8
  %call170 = call %struct._GParamSpec* @gimp_param_spec_vectors_id(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.33, i32 0, i32 0), %struct._Gimp* %291, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %289, %struct._GParamSpec* %call170)
  %292 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call171 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.44, i32 0, i32 0), i32 -2147483648, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %292, %struct._GParamSpec* %call171)
  %293 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call172 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.146, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.146, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.164, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %293, %struct._GParamSpec* %call172)
  %294 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call173 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.148, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.148, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.165, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %294, %struct._GParamSpec* %call173)
  %295 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call174 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.111, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.111, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.166, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %295, %struct._GParamSpec* %call174)
  %296 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call175 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.113, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.113, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.167, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %296, %struct._GParamSpec* %call175)
  %297 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call176 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.115, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.115, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.160, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %297, %struct._GParamSpec* %call176)
  %298 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call177 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.117, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.117, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.161, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %298, %struct._GParamSpec* %call177)
  %299 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %300 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %299, %struct._GimpProcedure* %300)
  %301 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %302 = bitcast %struct._GimpProcedure* %301 to i8*
  call void @g_object_unref(i8* %302)
  %call178 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @vectors_bezier_stroke_new_ellipse_invoker)
  store %struct._GimpProcedure* %call178, %struct._GimpProcedure** %procedure, align 8
  %303 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %304 = bitcast %struct._GimpProcedure* %303 to %struct._GTypeInstance*
  %call179 = call i64 @gimp_object_get_type() #6
  %call180 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %304, i64 %call179)
  %305 = bitcast %struct._GTypeInstance* %call180 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %305, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.168, i32 0, i32 0))
  %306 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %306, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.168, i32 0, i32 0), i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.169, i32 0, i32 0), i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.169, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* null)
  %307 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %308 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp181 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %308, i32 0, i32 1
  %309 = load %struct._Gimp*, %struct._Gimp** %gimp181, align 8
  %call182 = call %struct._GParamSpec* @gimp_param_spec_vectors_id(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.33, i32 0, i32 0), %struct._Gimp* %309, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %307, %struct._GParamSpec* %call182)
  %310 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call183 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.146, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.146, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.170, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %310, %struct._GParamSpec* %call183)
  %311 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call184 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.148, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.148, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.171, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %311, %struct._GParamSpec* %call184)
  %312 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call185 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.172, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.173, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.174, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %312, %struct._GParamSpec* %call185)
  %313 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call186 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.175, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.176, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.177, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %313, %struct._GParamSpec* %call186)
  %314 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call187 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.99, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.99, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.178, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %314, %struct._GParamSpec* %call187)
  %315 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call188 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.150, i32 0, i32 0), i32 -2147483648, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %315, %struct._GParamSpec* %call188)
  %316 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %317 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %316, %struct._GimpProcedure* %317)
  %318 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %319 = bitcast %struct._GimpProcedure* %318 to i8*
  call void @g_object_unref(i8* %319)
  %call189 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @vectors_to_selection_invoker)
  store %struct._GimpProcedure* %call189, %struct._GimpProcedure** %procedure, align 8
  %320 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %321 = bitcast %struct._GimpProcedure* %320 to %struct._GTypeInstance*
  %call190 = call i64 @gimp_object_get_type() #6
  %call191 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %321, i64 %call190)
  %322 = bitcast %struct._GTypeInstance* %call191 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %322, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.179, i32 0, i32 0))
  %323 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %323, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.179, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.180, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.180, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.92, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.181, i32 0, i32 0))
  %324 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %325 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp192 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %325, i32 0, i32 1
  %326 = load %struct._Gimp*, %struct._Gimp** %gimp192, align 8
  %call193 = call %struct._GParamSpec* @gimp_param_spec_vectors_id(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.182, i32 0, i32 0), %struct._Gimp* %326, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %324, %struct._GParamSpec* %call193)
  %327 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call194 = call i64 @gimp_channel_ops_get_type() #6
  %call195 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.183, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.183, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.184, i32 0, i32 0), i64 %call194, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %327, %struct._GParamSpec* %call195)
  %328 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call196 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.185, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.185, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.186, i32 0, i32 0), i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %328, %struct._GParamSpec* %call196)
  %329 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call197 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.187, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.187, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.188, i32 0, i32 0), i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %329, %struct._GParamSpec* %call197)
  %330 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call198 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.189, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.190, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.191, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %330, %struct._GParamSpec* %call198)
  %331 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call199 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.192, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.193, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.194, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %331, %struct._GParamSpec* %call199)
  %332 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %333 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %332, %struct._GimpProcedure* %333)
  %334 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %335 = bitcast %struct._GimpProcedure* %334 to i8*
  call void @g_object_unref(i8* %335)
  %call200 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @vectors_import_from_file_invoker)
  store %struct._GimpProcedure* %call200, %struct._GimpProcedure** %procedure, align 8
  %336 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %337 = bitcast %struct._GimpProcedure* %336 to %struct._GTypeInstance*
  %call201 = call i64 @gimp_object_get_type() #6
  %call202 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %337, i64 %call201)
  %338 = bitcast %struct._GTypeInstance* %call202 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %338, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.195, i32 0, i32 0))
  %339 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %339, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.195, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.196, i32 0, i32 0), i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str.197, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.92, i32 0, i32 0), i8* null)
  %340 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %341 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp203 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %341, i32 0, i32 1
  %342 = load %struct._Gimp*, %struct._Gimp** %gimp203, align 8
  %call204 = call %struct._GParamSpec* @gimp_param_spec_image_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), %struct._Gimp* %342, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %340, %struct._GParamSpec* %call204)
  %343 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call205 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.198, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.198, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.199, i32 0, i32 0), i32 1, i32 0, i32 1, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %343, %struct._GParamSpec* %call205)
  %344 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call206 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.200, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.200, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.201, i32 0, i32 0), i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %344, %struct._GParamSpec* %call206)
  %345 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call207 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.202, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.202, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.203, i32 0, i32 0), i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %345, %struct._GParamSpec* %call207)
  %346 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call208 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.204, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.205, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.206, i32 0, i32 0), i32 0, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %346, %struct._GParamSpec* %call208)
  %347 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call209 = call %struct._GParamSpec* @gimp_param_spec_int32_array(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.207, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.208, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.209, i32 0, i32 0), i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %347, %struct._GParamSpec* %call209)
  %348 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %349 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %348, %struct._GimpProcedure* %349)
  %350 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %351 = bitcast %struct._GimpProcedure* %350 to i8*
  call void @g_object_unref(i8* %351)
  %call210 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @vectors_import_from_string_invoker)
  store %struct._GimpProcedure* %call210, %struct._GimpProcedure** %procedure, align 8
  %352 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %353 = bitcast %struct._GimpProcedure* %352 to %struct._GTypeInstance*
  %call211 = call i64 @gimp_object_get_type() #6
  %call212 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %353, i64 %call211)
  %354 = bitcast %struct._GTypeInstance* %call212 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %354, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.210, i32 0, i32 0))
  %355 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %355, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.210, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.211, i32 0, i32 0), i8* getelementptr inbounds ([190 x i8], [190 x i8]* @.str.212, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.92, i32 0, i32 0), i8* null)
  %356 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %357 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp213 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %357, i32 0, i32 1
  %358 = load %struct._Gimp*, %struct._Gimp** %gimp213, align 8
  %call214 = call %struct._GParamSpec* @gimp_param_spec_image_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), %struct._Gimp* %358, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %356, %struct._GParamSpec* %call214)
  %359 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call215 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.213, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.213, i32 0, i32 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.214, i32 0, i32 0), i32 1, i32 0, i32 0, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %359, %struct._GParamSpec* %call215)
  %360 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call216 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.215, i32 0, i32 0), i32 -2147483648, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %360, %struct._GParamSpec* %call216)
  %361 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call217 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.200, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.200, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.201, i32 0, i32 0), i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %361, %struct._GParamSpec* %call217)
  %362 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call218 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.202, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.202, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.203, i32 0, i32 0), i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %362, %struct._GParamSpec* %call218)
  %363 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call219 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.204, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.205, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.206, i32 0, i32 0), i32 0, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %363, %struct._GParamSpec* %call219)
  %364 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call220 = call %struct._GParamSpec* @gimp_param_spec_int32_array(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.207, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.208, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.209, i32 0, i32 0), i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %364, %struct._GParamSpec* %call220)
  %365 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %366 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %365, %struct._GimpProcedure* %366)
  %367 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %368 = bitcast %struct._GimpProcedure* %367 to i8*
  call void @g_object_unref(i8* %368)
  %call221 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @vectors_export_to_file_invoker)
  store %struct._GimpProcedure* %call221, %struct._GimpProcedure** %procedure, align 8
  %369 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %370 = bitcast %struct._GimpProcedure* %369 to %struct._GTypeInstance*
  %call222 = call i64 @gimp_object_get_type() #6
  %call223 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %370, i64 %call222)
  %371 = bitcast %struct._GTypeInstance* %call223 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %371, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.216, i32 0, i32 0))
  %372 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %372, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.216, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.217, i32 0, i32 0), i8* getelementptr inbounds ([264 x i8], [264 x i8]* @.str.218, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.219, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.220, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.221, i32 0, i32 0), i8* null)
  %373 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %374 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp224 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %374, i32 0, i32 1
  %375 = load %struct._Gimp*, %struct._Gimp** %gimp224, align 8
  %call225 = call %struct._GParamSpec* @gimp_param_spec_image_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), %struct._Gimp* %375, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %373, %struct._GParamSpec* %call225)
  %376 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call226 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.198, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.198, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.222, i32 0, i32 0), i32 1, i32 0, i32 1, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %376, %struct._GParamSpec* %call226)
  %377 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %378 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp227 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %378, i32 0, i32 1
  %379 = load %struct._Gimp*, %struct._Gimp** %gimp227, align 8
  %call228 = call %struct._GParamSpec* @gimp_param_spec_vectors_id(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.223, i32 0, i32 0), %struct._Gimp* %379, i32 0, i32 16611)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %377, %struct._GParamSpec* %call228)
  %380 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %381 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %380, %struct._GimpProcedure* %381)
  %382 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %383 = bitcast %struct._GimpProcedure* %382 to i8*
  call void @g_object_unref(i8* %383)
  %call229 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @vectors_export_to_string_invoker)
  store %struct._GimpProcedure* %call229, %struct._GimpProcedure** %procedure, align 8
  %384 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %385 = bitcast %struct._GimpProcedure* %384 to %struct._GTypeInstance*
  %call230 = call i64 @gimp_object_get_type() #6
  %call231 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %385, i64 %call230)
  %386 = bitcast %struct._GTypeInstance* %call231 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %386, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.224, i32 0, i32 0))
  %387 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %387, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.224, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.225, i32 0, i32 0), i8* getelementptr inbounds ([261 x i8], [261 x i8]* @.str.226, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.219, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.220, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.221, i32 0, i32 0), i8* null)
  %388 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %389 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp232 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %389, i32 0, i32 1
  %390 = load %struct._Gimp*, %struct._Gimp** %gimp232, align 8
  %call233 = call %struct._GParamSpec* @gimp_param_spec_image_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), %struct._Gimp* %390, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %388, %struct._GParamSpec* %call233)
  %391 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %392 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp234 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %392, i32 0, i32 1
  %393 = load %struct._Gimp*, %struct._Gimp** %gimp234, align 8
  %call235 = call %struct._GParamSpec* @gimp_param_spec_vectors_id(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.227, i32 0, i32 0), %struct._Gimp* %393, i32 0, i32 16611)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %391, %struct._GParamSpec* %call235)
  %394 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call236 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.213, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.213, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.228, i32 0, i32 0), i32 0, i32 0, i32 0, i8* null, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %394, %struct._GParamSpec* %call236)
  %395 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %396 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %395, %struct._GimpProcedure* %396)
  %397 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %398 = bitcast %struct._GimpProcedure* %397 to i8*
  call void @g_object_unref(i8* %398)
  ret void
}

declare %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)*) #1

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @vectors_new_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  store %struct._GimpVectors* null, %struct._GimpVectors** %vectors, align 8
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
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %7 = load i8*, i8** %name, align 8
  %call4 = call %struct._GimpVectors* @gimp_vectors_new(%struct._GimpImage* %6, i8* %7)
  store %struct._GimpVectors* %call4, %struct._GimpVectors** %vectors, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %9 = load i32, i32* %success, align 4
  %10 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool5 = icmp ne %struct._GError** %10, null
  br i1 %tobool5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %11 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %12 = load %struct._GError*, %struct._GError** %11, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
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
  %16 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  call void @gimp_value_set_vectors(%struct._GValue* %arrayidx10, %struct._GimpVectors* %16)
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.8, %cond.end
  %17 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %17
}

declare void @gimp_object_set_static_name(%struct._GimpObject*, i8*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #2

declare void @gimp_procedure_set_static_strings(%struct._GimpProcedure*, i8*, i8*, i8*, i8*, i8*, i8*, i8*) #1

declare void @gimp_procedure_add_argument(%struct._GimpProcedure*, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @gimp_param_spec_image_id(i8*, i8*, i8*, %struct._Gimp*, i32, i32) #1

declare %struct._GParamSpec* @gimp_param_spec_string(i8*, i8*, i8*, i32, i32, i32, i8*, i32) #1

declare void @gimp_procedure_add_return_value(%struct._GimpProcedure*, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @gimp_param_spec_vectors_id(i8*, i8*, i8*, %struct._Gimp*, i32, i32) #1

declare void @gimp_pdb_register_procedure(%struct._GimpPDB*, %struct._GimpProcedure*) #1

declare void @g_object_unref(i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @vectors_new_from_text_layer_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  %layer = alloca %struct._GimpLayer*, align 8
  %vectors = alloca %struct._GimpVectors*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store %struct._GimpVectors* null, %struct._GimpVectors** %vectors, align 8
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
  %call3 = call %struct._GimpLayer* @gimp_value_get_layer(%struct._GValue* %arrayidx2, %struct._Gimp* %5)
  store %struct._GimpLayer* %call3, %struct._GimpLayer** %layer, align 8
  %6 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then, label %if.end.15

if.then:                                          ; preds = %entry
  %7 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %8 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call4 = call i32 @gimp_pdb_layer_is_text_layer(%struct._GimpLayer* %7, i32 0, %struct._GError** %8)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.then
  %9 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %10 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %11 = bitcast %struct._GimpLayer* %10 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_text_layer_get_type() #6
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call7)
  %12 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpTextLayer*
  %call9 = call %struct._GimpText* @gimp_text_layer_get_text(%struct._GimpTextLayer* %12)
  %call10 = call %struct._GimpVectors* @gimp_text_vectors_new(%struct._GimpImage* %9, %struct._GimpText* %call9)
  store %struct._GimpVectors* %call10, %struct._GimpVectors** %vectors, align 8
  %13 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %14 = bitcast %struct._GimpLayer* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_item_get_type() #6
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpItem*
  call void @gimp_item_get_offset(%struct._GimpItem* %15, i32* %x, i32* %y)
  %16 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %17 = bitcast %struct._GimpVectors* %16 to %struct._GTypeInstance*
  %call13 = call i64 @gimp_item_get_type() #6
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call13)
  %18 = bitcast %struct._GTypeInstance* %call14 to %struct._GimpItem*
  %19 = load i32, i32* %x, align 4
  %20 = load i32, i32* %y, align 4
  call void @gimp_item_translate(%struct._GimpItem* %18, i32 %19, i32 %20, i32 0)
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.6
  br label %if.end.15

if.end.15:                                        ; preds = %if.end, %entry
  %21 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %22 = load i32, i32* %success, align 4
  %23 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool16 = icmp ne %struct._GError** %23, null
  br i1 %tobool16, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.15
  %24 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %25 = load %struct._GError*, %struct._GError** %24, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.15
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %25, %cond.true ], [ null, %cond.false ]
  %call17 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %21, i32 %22, %struct._GError* %cond)
  store %struct._GValueArray* %call17, %struct._GValueArray** %return_vals, align 8
  %26 = load i32, i32* %success, align 4
  %tobool18 = icmp ne i32 %26, 0
  br i1 %tobool18, label %if.then.19, label %if.end.22

if.then.19:                                       ; preds = %cond.end
  %27 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values20 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %27, i32 0, i32 1
  %28 = load %struct._GValue*, %struct._GValue** %values20, align 8
  %arrayidx21 = getelementptr inbounds %struct._GValue, %struct._GValue* %28, i64 1
  %29 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  call void @gimp_value_set_vectors(%struct._GValue* %arrayidx21, %struct._GimpVectors* %29)
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.19, %cond.end
  %30 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %30
}

declare %struct._GParamSpec* @gimp_param_spec_layer_id(i8*, i8*, i8*, %struct._Gimp*, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @vectors_copy_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %return_vals = alloca %struct._GValueArray*, align 8
  %vectors = alloca %struct._GimpVectors*, align 8
  %vectors_copy = alloca %struct._GimpVectors*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store %struct._GimpVectors* null, %struct._GimpVectors** %vectors_copy, align 8
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %2 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call = call %struct._GimpVectors* @gimp_value_get_vectors(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpVectors* %call, %struct._GimpVectors** %vectors, align 8
  %3 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end.8

if.then:                                          ; preds = %entry
  %4 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %5 = bitcast %struct._GimpVectors* %4 to %struct._GTypeInstance*
  %call1 = call i64 @gimp_item_get_type() #6
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call1)
  %6 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpItem*
  %7 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %8 = bitcast %struct._GimpVectors* %7 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %8, i32 0, i32 0
  %9 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %9, i32 0, i32 0
  %10 = load i64, i64* %g_type, align 8
  %call3 = call %struct._GimpItem* @gimp_item_duplicate(%struct._GimpItem* %6, i64 %10)
  %11 = bitcast %struct._GimpItem* %call3 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_vectors_get_type() #6
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call4)
  %12 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpVectors*
  store %struct._GimpVectors* %12, %struct._GimpVectors** %vectors_copy, align 8
  %13 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors_copy, align 8
  %tobool6 = icmp ne %struct._GimpVectors* %13, null
  br i1 %tobool6, label %if.end, label %if.then.7

if.then.7:                                        ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.7, %if.then
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %entry
  %14 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %15 = load i32, i32* %success, align 4
  %16 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool9 = icmp ne %struct._GError** %16, null
  br i1 %tobool9, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.8
  %17 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %18 = load %struct._GError*, %struct._GError** %17, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %18, %cond.true ], [ null, %cond.false ]
  %call10 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %14, i32 %15, %struct._GError* %cond)
  store %struct._GValueArray* %call10, %struct._GValueArray** %return_vals, align 8
  %19 = load i32, i32* %success, align 4
  %tobool11 = icmp ne i32 %19, 0
  br i1 %tobool11, label %if.then.12, label %if.end.15

if.then.12:                                       ; preds = %cond.end
  %20 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values13 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %20, i32 0, i32 1
  %21 = load %struct._GValue*, %struct._GValue** %values13, align 8
  %arrayidx14 = getelementptr inbounds %struct._GValue, %struct._GValue* %21, i64 1
  %22 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors_copy, align 8
  call void @gimp_value_set_vectors(%struct._GValue* %arrayidx14, %struct._GimpVectors* %22)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.12, %cond.end
  %23 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %23
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @vectors_get_strokes_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %return_vals = alloca %struct._GValueArray*, align 8
  %vectors = alloca %struct._GimpVectors*, align 8
  %num_strokes = alloca i32, align 4
  %stroke_ids = alloca i32*, align 8
  %cur_stroke = alloca %struct._GimpStroke*, align 8
  %i = alloca i32, align 4
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store i32 0, i32* %num_strokes, align 4
  store i32* null, i32** %stroke_ids, align 8
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %2 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call = call %struct._GimpVectors* @gimp_value_get_vectors(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpVectors* %call, %struct._GimpVectors** %vectors, align 8
  %3 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end.10

if.then:                                          ; preds = %entry
  %4 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %call1 = call i32 @gimp_vectors_get_n_strokes(%struct._GimpVectors* %4)
  store i32 %call1, i32* %num_strokes, align 4
  %5 = load i32, i32* %num_strokes, align 4
  %tobool2 = icmp ne i32 %5, 0
  br i1 %tobool2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  store i32 0, i32* %i, align 4
  %6 = load i32, i32* %num_strokes, align 4
  %conv = sext i32 %6 to i64
  %call4 = call noalias i8* @g_malloc_n(i64 %conv, i64 4)
  %7 = bitcast i8* %call4 to i32*
  store i32* %7, i32** %stroke_ids, align 8
  %8 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %call5 = call %struct._GimpStroke* @gimp_vectors_stroke_get_next(%struct._GimpVectors* %8, %struct._GimpStroke* null)
  store %struct._GimpStroke* %call5, %struct._GimpStroke** %cur_stroke, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.3
  %9 = load %struct._GimpStroke*, %struct._GimpStroke** %cur_stroke, align 8
  %tobool6 = icmp ne %struct._GimpStroke* %9, null
  br i1 %tobool6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load %struct._GimpStroke*, %struct._GimpStroke** %cur_stroke, align 8
  %call7 = call i32 @gimp_stroke_get_ID(%struct._GimpStroke* %10)
  %11 = load i32, i32* %i, align 4
  %idxprom = sext i32 %11 to i64
  %12 = load i32*, i32** %stroke_ids, align 8
  %arrayidx8 = getelementptr inbounds i32, i32* %12, i64 %idxprom
  store i32 %call7, i32* %arrayidx8, align 4
  %13 = load i32, i32* %i, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %i, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %15 = load %struct._GimpStroke*, %struct._GimpStroke** %cur_stroke, align 8
  %call9 = call %struct._GimpStroke* @gimp_vectors_stroke_get_next(%struct._GimpVectors* %14, %struct._GimpStroke* %15)
  store %struct._GimpStroke* %call9, %struct._GimpStroke** %cur_stroke, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %if.then
  br label %if.end.10

if.end.10:                                        ; preds = %if.end, %entry
  %16 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %17 = load i32, i32* %success, align 4
  %18 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool11 = icmp ne %struct._GError** %18, null
  br i1 %tobool11, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.10
  %19 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %20 = load %struct._GError*, %struct._GError** %19, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.10
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %20, %cond.true ], [ null, %cond.false ]
  %call12 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %16, i32 %17, %struct._GError* %cond)
  store %struct._GValueArray* %call12, %struct._GValueArray** %return_vals, align 8
  %21 = load i32, i32* %success, align 4
  %tobool13 = icmp ne i32 %21, 0
  br i1 %tobool13, label %if.then.14, label %if.end.20

if.then.14:                                       ; preds = %cond.end
  %22 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values15 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %22, i32 0, i32 1
  %23 = load %struct._GValue*, %struct._GValue** %values15, align 8
  %arrayidx16 = getelementptr inbounds %struct._GValue, %struct._GValue* %23, i64 1
  %24 = load i32, i32* %num_strokes, align 4
  call void @g_value_set_int(%struct._GValue* %arrayidx16, i32 %24)
  %25 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values17 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %25, i32 0, i32 1
  %26 = load %struct._GValue*, %struct._GValue** %values17, align 8
  %arrayidx18 = getelementptr inbounds %struct._GValue, %struct._GValue* %26, i64 2
  %27 = load i32*, i32** %stroke_ids, align 8
  %28 = load i32, i32* %num_strokes, align 4
  %conv19 = sext i32 %28 to i64
  call void @gimp_value_take_int32array(%struct._GValue* %arrayidx18, i32* %27, i64 %conv19)
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.14, %cond.end
  %29 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %29
}

declare %struct._GParamSpec* @gimp_param_spec_int32(i8*, i8*, i8*, i32, i32, i32, i32) #1

declare %struct._GParamSpec* @gimp_param_spec_int32_array(i8*, i8*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @vectors_stroke_get_length_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %return_vals = alloca %struct._GValueArray*, align 8
  %vectors = alloca %struct._GimpVectors*, align 8
  %stroke_id = alloca i32, align 4
  %precision = alloca double, align 8
  %length = alloca double, align 8
  %stroke = alloca %struct._GimpStroke*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store double 0.000000e+00, double* %length, align 8
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %2 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call = call %struct._GimpVectors* @gimp_value_get_vectors(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpVectors* %call, %struct._GimpVectors** %vectors, align 8
  %3 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %3, i32 0, i32 1
  %4 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %4, i64 1
  %call3 = call i32 @g_value_get_int(%struct._GValue* %arrayidx2)
  store i32 %call3, i32* %stroke_id, align 4
  %5 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values4 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %5, i32 0, i32 1
  %6 = load %struct._GValue*, %struct._GValue** %values4, align 8
  %arrayidx5 = getelementptr inbounds %struct._GValue, %struct._GValue* %6, i64 2
  %call6 = call double @g_value_get_double(%struct._GValue* %arrayidx5)
  store double %call6, double* %precision, align 8
  %7 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then, label %if.end.11

if.then:                                          ; preds = %entry
  %8 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %9 = load i32, i32* %stroke_id, align 4
  %10 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call7 = call %struct._GimpStroke* @gimp_pdb_get_vectors_stroke(%struct._GimpVectors* %8, i32 %9, i32 0, %struct._GError** %10)
  store %struct._GimpStroke* %call7, %struct._GimpStroke** %stroke, align 8
  %11 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke, align 8
  %tobool8 = icmp ne %struct._GimpStroke* %11, null
  br i1 %tobool8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.then
  %12 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke, align 8
  %13 = load double, double* %precision, align 8
  %call10 = call double @gimp_stroke_get_length(%struct._GimpStroke* %12, double %13)
  store double %call10, double* %length, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.9
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
  store %struct._GValueArray* %call13, %struct._GValueArray** %return_vals, align 8
  %19 = load i32, i32* %success, align 4
  %tobool14 = icmp ne i32 %19, 0
  br i1 %tobool14, label %if.then.15, label %if.end.18

if.then.15:                                       ; preds = %cond.end
  %20 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values16 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %20, i32 0, i32 1
  %21 = load %struct._GValue*, %struct._GValue** %values16, align 8
  %arrayidx17 = getelementptr inbounds %struct._GValue, %struct._GValue* %21, i64 1
  %22 = load double, double* %length, align 8
  call void @g_value_set_double(%struct._GValue* %arrayidx17, double %22)
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.15, %cond.end
  %23 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %23
}

declare %struct._GParamSpec* @g_param_spec_double(i8*, i8*, i8*, double, double, double, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @vectors_stroke_get_point_at_dist_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %return_vals = alloca %struct._GValueArray*, align 8
  %vectors = alloca %struct._GimpVectors*, align 8
  %stroke_id = alloca i32, align 4
  %dist = alloca double, align 8
  %precision = alloca double, align 8
  %x_point = alloca double, align 8
  %y_point = alloca double, align 8
  %slope = alloca double, align 8
  %valid = alloca i32, align 4
  %stroke = alloca %struct._GimpStroke*, align 8
  %coord = alloca %struct._GimpCoords, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store double 0.000000e+00, double* %x_point, align 8
  store double 0.000000e+00, double* %y_point, align 8
  store double 0.000000e+00, double* %slope, align 8
  store i32 0, i32* %valid, align 4
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %2 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call = call %struct._GimpVectors* @gimp_value_get_vectors(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpVectors* %call, %struct._GimpVectors** %vectors, align 8
  %3 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %3, i32 0, i32 1
  %4 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %4, i64 1
  %call3 = call i32 @g_value_get_int(%struct._GValue* %arrayidx2)
  store i32 %call3, i32* %stroke_id, align 4
  %5 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values4 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %5, i32 0, i32 1
  %6 = load %struct._GValue*, %struct._GValue** %values4, align 8
  %arrayidx5 = getelementptr inbounds %struct._GValue, %struct._GValue* %6, i64 2
  %call6 = call double @g_value_get_double(%struct._GValue* %arrayidx5)
  store double %call6, double* %dist, align 8
  %7 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values7 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %7, i32 0, i32 1
  %8 = load %struct._GValue*, %struct._GValue** %values7, align 8
  %arrayidx8 = getelementptr inbounds %struct._GValue, %struct._GValue* %8, i64 3
  %call9 = call double @g_value_get_double(%struct._GValue* %arrayidx8)
  store double %call9, double* %precision, align 8
  %9 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %if.then, label %if.end.20

if.then:                                          ; preds = %entry
  %10 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %11 = load i32, i32* %stroke_id, align 4
  %12 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call10 = call %struct._GimpStroke* @gimp_pdb_get_vectors_stroke(%struct._GimpVectors* %10, i32 %11, i32 0, %struct._GError** %12)
  store %struct._GimpStroke* %call10, %struct._GimpStroke** %stroke, align 8
  %13 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke, align 8
  %tobool11 = icmp ne %struct._GimpStroke* %13, null
  br i1 %tobool11, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %if.then
  %14 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke, align 8
  %15 = load double, double* %dist, align 8
  %16 = load double, double* %precision, align 8
  %call13 = call i32 @gimp_stroke_get_point_at_dist(%struct._GimpStroke* %14, double %15, double %16, %struct._GimpCoords* %coord, double* %slope)
  store i32 %call13, i32* %valid, align 4
  %17 = load i32, i32* %valid, align 4
  %tobool14 = icmp ne i32 %17, 0
  br i1 %tobool14, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.12
  %x = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %coord, i32 0, i32 0
  %18 = load double, double* %x, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then.12
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %18, %cond.true ], [ 0.000000e+00, %cond.false ]
  store double %cond, double* %x_point, align 8
  %19 = load i32, i32* %valid, align 4
  %tobool15 = icmp ne i32 %19, 0
  br i1 %tobool15, label %cond.true.16, label %cond.false.17

cond.true.16:                                     ; preds = %cond.end
  %y = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %coord, i32 0, i32 1
  %20 = load double, double* %y, align 8
  br label %cond.end.18

cond.false.17:                                    ; preds = %cond.end
  br label %cond.end.18

cond.end.18:                                      ; preds = %cond.false.17, %cond.true.16
  %cond19 = phi double [ %20, %cond.true.16 ], [ 0.000000e+00, %cond.false.17 ]
  store double %cond19, double* %y_point, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %cond.end.18
  br label %if.end.20

if.end.20:                                        ; preds = %if.end, %entry
  %21 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %22 = load i32, i32* %success, align 4
  %23 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool21 = icmp ne %struct._GError** %23, null
  br i1 %tobool21, label %cond.true.22, label %cond.false.23

cond.true.22:                                     ; preds = %if.end.20
  %24 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %25 = load %struct._GError*, %struct._GError** %24, align 8
  br label %cond.end.24

cond.false.23:                                    ; preds = %if.end.20
  br label %cond.end.24

cond.end.24:                                      ; preds = %cond.false.23, %cond.true.22
  %cond25 = phi %struct._GError* [ %25, %cond.true.22 ], [ null, %cond.false.23 ]
  %call26 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %21, i32 %22, %struct._GError* %cond25)
  store %struct._GValueArray* %call26, %struct._GValueArray** %return_vals, align 8
  %26 = load i32, i32* %success, align 4
  %tobool27 = icmp ne i32 %26, 0
  br i1 %tobool27, label %if.then.28, label %if.end.37

if.then.28:                                       ; preds = %cond.end.24
  %27 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values29 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %27, i32 0, i32 1
  %28 = load %struct._GValue*, %struct._GValue** %values29, align 8
  %arrayidx30 = getelementptr inbounds %struct._GValue, %struct._GValue* %28, i64 1
  %29 = load double, double* %x_point, align 8
  call void @g_value_set_double(%struct._GValue* %arrayidx30, double %29)
  %30 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values31 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %30, i32 0, i32 1
  %31 = load %struct._GValue*, %struct._GValue** %values31, align 8
  %arrayidx32 = getelementptr inbounds %struct._GValue, %struct._GValue* %31, i64 2
  %32 = load double, double* %y_point, align 8
  call void @g_value_set_double(%struct._GValue* %arrayidx32, double %32)
  %33 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values33 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %33, i32 0, i32 1
  %34 = load %struct._GValue*, %struct._GValue** %values33, align 8
  %arrayidx34 = getelementptr inbounds %struct._GValue, %struct._GValue* %34, i64 3
  %35 = load double, double* %slope, align 8
  call void @g_value_set_double(%struct._GValue* %arrayidx34, double %35)
  %36 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values35 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %36, i32 0, i32 1
  %37 = load %struct._GValue*, %struct._GValue** %values35, align 8
  %arrayidx36 = getelementptr inbounds %struct._GValue, %struct._GValue* %37, i64 4
  %38 = load i32, i32* %valid, align 4
  call void @g_value_set_boolean(%struct._GValue* %arrayidx36, i32 %38)
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.28, %cond.end.24
  %39 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %39
}

declare %struct._GParamSpec* @g_param_spec_boolean(i8*, i8*, i8*, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @vectors_remove_stroke_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %vectors = alloca %struct._GimpVectors*, align 8
  %stroke_id = alloca i32, align 4
  %stroke = alloca %struct._GimpStroke*, align 8
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
  %call = call %struct._GimpVectors* @gimp_value_get_vectors(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpVectors* %call, %struct._GimpVectors** %vectors, align 8
  %3 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %3, i32 0, i32 1
  %4 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %4, i64 1
  %call3 = call i32 @g_value_get_int(%struct._GValue* %arrayidx2)
  store i32 %call3, i32* %stroke_id, align 4
  %5 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end.18

if.then:                                          ; preds = %entry
  %6 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %7 = load i32, i32* %stroke_id, align 4
  %8 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call4 = call %struct._GimpStroke* @gimp_pdb_get_vectors_stroke(%struct._GimpVectors* %6, i32 %7, i32 1, %struct._GError** %8)
  store %struct._GimpStroke* %call4, %struct._GimpStroke** %stroke, align 8
  %9 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke, align 8
  %tobool5 = icmp ne %struct._GimpStroke* %9, null
  br i1 %tobool5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.then
  %10 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %11 = bitcast %struct._GimpVectors* %10 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_item_get_type() #6
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call7)
  %12 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpItem*
  %call9 = call i32 @gimp_item_is_attached(%struct._GimpItem* %12)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.then.11, label %if.end

if.then.11:                                       ; preds = %if.then.6
  %13 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %14 = bitcast %struct._GimpVectors* %13 to %struct._GTypeInstance*
  %call12 = call i64 @gimp_item_get_type() #6
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call12)
  %15 = bitcast %struct._GTypeInstance* %call13 to %struct._GimpItem*
  %call14 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %15)
  %call15 = call i8* @gettext(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.229, i32 0, i32 0)) #5
  %16 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %call16 = call %struct._GimpUndo* @gimp_image_undo_push_vectors_mod(%struct._GimpImage* %call14, i8* %call15, %struct._GimpVectors* %16)
  br label %if.end

if.end:                                           ; preds = %if.then.11, %if.then.6
  %17 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %18 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke, align 8
  call void @gimp_vectors_stroke_remove(%struct._GimpVectors* %17, %struct._GimpStroke* %18)
  br label %if.end.17

if.else:                                          ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end.17

if.end.17:                                        ; preds = %if.else, %if.end
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %entry
  %19 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %20 = load i32, i32* %success, align 4
  %21 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool19 = icmp ne %struct._GError** %21, null
  br i1 %tobool19, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.18
  %22 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %23 = load %struct._GError*, %struct._GError** %22, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.18
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %23, %cond.true ], [ null, %cond.false ]
  %call20 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %19, i32 %20, %struct._GError* %cond)
  ret %struct._GValueArray* %call20
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @vectors_stroke_close_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %vectors = alloca %struct._GimpVectors*, align 8
  %stroke_id = alloca i32, align 4
  %stroke = alloca %struct._GimpStroke*, align 8
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
  %call = call %struct._GimpVectors* @gimp_value_get_vectors(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpVectors* %call, %struct._GimpVectors** %vectors, align 8
  %3 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %3, i32 0, i32 1
  %4 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %4, i64 1
  %call3 = call i32 @g_value_get_int(%struct._GValue* %arrayidx2)
  store i32 %call3, i32* %stroke_id, align 4
  %5 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end.18

if.then:                                          ; preds = %entry
  %6 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %7 = load i32, i32* %stroke_id, align 4
  %8 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call4 = call %struct._GimpStroke* @gimp_pdb_get_vectors_stroke(%struct._GimpVectors* %6, i32 %7, i32 1, %struct._GError** %8)
  store %struct._GimpStroke* %call4, %struct._GimpStroke** %stroke, align 8
  %9 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke, align 8
  %tobool5 = icmp ne %struct._GimpStroke* %9, null
  br i1 %tobool5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.then
  %10 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %11 = bitcast %struct._GimpVectors* %10 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_item_get_type() #6
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call7)
  %12 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpItem*
  %call9 = call i32 @gimp_item_is_attached(%struct._GimpItem* %12)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.then.11, label %if.end

if.then.11:                                       ; preds = %if.then.6
  %13 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %14 = bitcast %struct._GimpVectors* %13 to %struct._GTypeInstance*
  %call12 = call i64 @gimp_item_get_type() #6
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call12)
  %15 = bitcast %struct._GTypeInstance* %call13 to %struct._GimpItem*
  %call14 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %15)
  %call15 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.230, i32 0, i32 0)) #5
  %16 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %call16 = call %struct._GimpUndo* @gimp_image_undo_push_vectors_mod(%struct._GimpImage* %call14, i8* %call15, %struct._GimpVectors* %16)
  br label %if.end

if.end:                                           ; preds = %if.then.11, %if.then.6
  %17 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  call void @gimp_vectors_freeze(%struct._GimpVectors* %17)
  %18 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke, align 8
  call void @gimp_stroke_close(%struct._GimpStroke* %18)
  %19 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  call void @gimp_vectors_thaw(%struct._GimpVectors* %19)
  br label %if.end.17

if.else:                                          ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end.17

if.end.17:                                        ; preds = %if.else, %if.end
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %entry
  %20 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %21 = load i32, i32* %success, align 4
  %22 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool19 = icmp ne %struct._GError** %22, null
  br i1 %tobool19, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.18
  %23 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %24 = load %struct._GError*, %struct._GError** %23, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.18
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %24, %cond.true ], [ null, %cond.false ]
  %call20 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %20, i32 %21, %struct._GError* %cond)
  ret %struct._GValueArray* %call20
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @vectors_stroke_translate_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %vectors = alloca %struct._GimpVectors*, align 8
  %stroke_id = alloca i32, align 4
  %off_x = alloca i32, align 4
  %off_y = alloca i32, align 4
  %stroke = alloca %struct._GimpStroke*, align 8
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
  %call = call %struct._GimpVectors* @gimp_value_get_vectors(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpVectors* %call, %struct._GimpVectors** %vectors, align 8
  %3 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %3, i32 0, i32 1
  %4 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %4, i64 1
  %call3 = call i32 @g_value_get_int(%struct._GValue* %arrayidx2)
  store i32 %call3, i32* %stroke_id, align 4
  %5 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values4 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %5, i32 0, i32 1
  %6 = load %struct._GValue*, %struct._GValue** %values4, align 8
  %arrayidx5 = getelementptr inbounds %struct._GValue, %struct._GValue* %6, i64 2
  %call6 = call i32 @g_value_get_int(%struct._GValue* %arrayidx5)
  store i32 %call6, i32* %off_x, align 4
  %7 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values7 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %7, i32 0, i32 1
  %8 = load %struct._GValue*, %struct._GValue** %values7, align 8
  %arrayidx8 = getelementptr inbounds %struct._GValue, %struct._GValue* %8, i64 3
  %call9 = call i32 @g_value_get_int(%struct._GValue* %arrayidx8)
  store i32 %call9, i32* %off_y, align 4
  %9 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %if.then, label %if.end.25

if.then:                                          ; preds = %entry
  %10 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %11 = load i32, i32* %stroke_id, align 4
  %12 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call10 = call %struct._GimpStroke* @gimp_pdb_get_vectors_stroke(%struct._GimpVectors* %10, i32 %11, i32 1, %struct._GError** %12)
  store %struct._GimpStroke* %call10, %struct._GimpStroke** %stroke, align 8
  %13 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke, align 8
  %tobool11 = icmp ne %struct._GimpStroke* %13, null
  br i1 %tobool11, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %if.then
  %14 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %15 = bitcast %struct._GimpVectors* %14 to %struct._GTypeInstance*
  %call13 = call i64 @gimp_item_get_type() #6
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call13)
  %16 = bitcast %struct._GTypeInstance* %call14 to %struct._GimpItem*
  %call15 = call i32 @gimp_item_is_attached(%struct._GimpItem* %16)
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.then.17, label %if.end

if.then.17:                                       ; preds = %if.then.12
  %17 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %18 = bitcast %struct._GimpVectors* %17 to %struct._GTypeInstance*
  %call18 = call i64 @gimp_item_get_type() #6
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call18)
  %19 = bitcast %struct._GTypeInstance* %call19 to %struct._GimpItem*
  %call20 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %19)
  %call21 = call i8* @gettext(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.231, i32 0, i32 0)) #5
  %20 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %call22 = call %struct._GimpUndo* @gimp_image_undo_push_vectors_mod(%struct._GimpImage* %call20, i8* %call21, %struct._GimpVectors* %20)
  br label %if.end

if.end:                                           ; preds = %if.then.17, %if.then.12
  %21 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  call void @gimp_vectors_freeze(%struct._GimpVectors* %21)
  %22 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke, align 8
  %23 = load i32, i32* %off_x, align 4
  %conv = sitofp i32 %23 to double
  %24 = load i32, i32* %off_y, align 4
  %conv23 = sitofp i32 %24 to double
  call void @gimp_stroke_translate(%struct._GimpStroke* %22, double %conv, double %conv23)
  %25 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  call void @gimp_vectors_thaw(%struct._GimpVectors* %25)
  br label %if.end.24

if.else:                                          ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end.24

if.end.24:                                        ; preds = %if.else, %if.end
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %entry
  %26 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %27 = load i32, i32* %success, align 4
  %28 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool26 = icmp ne %struct._GError** %28, null
  br i1 %tobool26, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.25
  %29 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %30 = load %struct._GError*, %struct._GError** %29, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.25
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %30, %cond.true ], [ null, %cond.false ]
  %call27 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %26, i32 %27, %struct._GError* %cond)
  ret %struct._GValueArray* %call27
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @vectors_stroke_scale_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %vectors = alloca %struct._GimpVectors*, align 8
  %stroke_id = alloca i32, align 4
  %scale_x = alloca double, align 8
  %scale_y = alloca double, align 8
  %stroke = alloca %struct._GimpStroke*, align 8
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
  %call = call %struct._GimpVectors* @gimp_value_get_vectors(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpVectors* %call, %struct._GimpVectors** %vectors, align 8
  %3 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %3, i32 0, i32 1
  %4 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %4, i64 1
  %call3 = call i32 @g_value_get_int(%struct._GValue* %arrayidx2)
  store i32 %call3, i32* %stroke_id, align 4
  %5 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values4 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %5, i32 0, i32 1
  %6 = load %struct._GValue*, %struct._GValue** %values4, align 8
  %arrayidx5 = getelementptr inbounds %struct._GValue, %struct._GValue* %6, i64 2
  %call6 = call double @g_value_get_double(%struct._GValue* %arrayidx5)
  store double %call6, double* %scale_x, align 8
  %7 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values7 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %7, i32 0, i32 1
  %8 = load %struct._GValue*, %struct._GValue** %values7, align 8
  %arrayidx8 = getelementptr inbounds %struct._GValue, %struct._GValue* %8, i64 3
  %call9 = call double @g_value_get_double(%struct._GValue* %arrayidx8)
  store double %call9, double* %scale_y, align 8
  %9 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %if.then, label %if.end.24

if.then:                                          ; preds = %entry
  %10 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %11 = load i32, i32* %stroke_id, align 4
  %12 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call10 = call %struct._GimpStroke* @gimp_pdb_get_vectors_stroke(%struct._GimpVectors* %10, i32 %11, i32 1, %struct._GError** %12)
  store %struct._GimpStroke* %call10, %struct._GimpStroke** %stroke, align 8
  %13 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke, align 8
  %tobool11 = icmp ne %struct._GimpStroke* %13, null
  br i1 %tobool11, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %if.then
  %14 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %15 = bitcast %struct._GimpVectors* %14 to %struct._GTypeInstance*
  %call13 = call i64 @gimp_item_get_type() #6
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call13)
  %16 = bitcast %struct._GTypeInstance* %call14 to %struct._GimpItem*
  %call15 = call i32 @gimp_item_is_attached(%struct._GimpItem* %16)
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.then.17, label %if.end

if.then.17:                                       ; preds = %if.then.12
  %17 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %18 = bitcast %struct._GimpVectors* %17 to %struct._GTypeInstance*
  %call18 = call i64 @gimp_item_get_type() #6
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call18)
  %19 = bitcast %struct._GTypeInstance* %call19 to %struct._GimpItem*
  %call20 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %19)
  %call21 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.232, i32 0, i32 0)) #5
  %20 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %call22 = call %struct._GimpUndo* @gimp_image_undo_push_vectors_mod(%struct._GimpImage* %call20, i8* %call21, %struct._GimpVectors* %20)
  br label %if.end

if.end:                                           ; preds = %if.then.17, %if.then.12
  %21 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  call void @gimp_vectors_freeze(%struct._GimpVectors* %21)
  %22 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke, align 8
  %23 = load double, double* %scale_x, align 8
  %24 = load double, double* %scale_y, align 8
  call void @gimp_stroke_scale(%struct._GimpStroke* %22, double %23, double %24)
  %25 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  call void @gimp_vectors_thaw(%struct._GimpVectors* %25)
  br label %if.end.23

if.else:                                          ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end.23

if.end.23:                                        ; preds = %if.else, %if.end
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %entry
  %26 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %27 = load i32, i32* %success, align 4
  %28 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool25 = icmp ne %struct._GError** %28, null
  br i1 %tobool25, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.24
  %29 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %30 = load %struct._GError*, %struct._GError** %29, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.24
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %30, %cond.true ], [ null, %cond.false ]
  %call26 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %26, i32 %27, %struct._GError* %cond)
  ret %struct._GValueArray* %call26
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @vectors_stroke_rotate_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %vectors = alloca %struct._GimpVectors*, align 8
  %stroke_id = alloca i32, align 4
  %center_x = alloca double, align 8
  %center_y = alloca double, align 8
  %angle = alloca double, align 8
  %stroke = alloca %struct._GimpStroke*, align 8
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
  %call = call %struct._GimpVectors* @gimp_value_get_vectors(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpVectors* %call, %struct._GimpVectors** %vectors, align 8
  %3 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %3, i32 0, i32 1
  %4 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %4, i64 1
  %call3 = call i32 @g_value_get_int(%struct._GValue* %arrayidx2)
  store i32 %call3, i32* %stroke_id, align 4
  %5 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values4 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %5, i32 0, i32 1
  %6 = load %struct._GValue*, %struct._GValue** %values4, align 8
  %arrayidx5 = getelementptr inbounds %struct._GValue, %struct._GValue* %6, i64 2
  %call6 = call double @g_value_get_double(%struct._GValue* %arrayidx5)
  store double %call6, double* %center_x, align 8
  %7 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values7 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %7, i32 0, i32 1
  %8 = load %struct._GValue*, %struct._GValue** %values7, align 8
  %arrayidx8 = getelementptr inbounds %struct._GValue, %struct._GValue* %8, i64 3
  %call9 = call double @g_value_get_double(%struct._GValue* %arrayidx8)
  store double %call9, double* %center_y, align 8
  %9 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values10 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %9, i32 0, i32 1
  %10 = load %struct._GValue*, %struct._GValue** %values10, align 8
  %arrayidx11 = getelementptr inbounds %struct._GValue, %struct._GValue* %10, i64 4
  %call12 = call double @g_value_get_double(%struct._GValue* %arrayidx11)
  store double %call12, double* %angle, align 8
  %11 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %if.then, label %if.end.27

if.then:                                          ; preds = %entry
  %12 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %13 = load i32, i32* %stroke_id, align 4
  %14 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call13 = call %struct._GimpStroke* @gimp_pdb_get_vectors_stroke(%struct._GimpVectors* %12, i32 %13, i32 1, %struct._GError** %14)
  store %struct._GimpStroke* %call13, %struct._GimpStroke** %stroke, align 8
  %15 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke, align 8
  %tobool14 = icmp ne %struct._GimpStroke* %15, null
  br i1 %tobool14, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %if.then
  %16 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %17 = bitcast %struct._GimpVectors* %16 to %struct._GTypeInstance*
  %call16 = call i64 @gimp_item_get_type() #6
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call16)
  %18 = bitcast %struct._GTypeInstance* %call17 to %struct._GimpItem*
  %call18 = call i32 @gimp_item_is_attached(%struct._GimpItem* %18)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.then.20, label %if.end

if.then.20:                                       ; preds = %if.then.15
  %19 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %20 = bitcast %struct._GimpVectors* %19 to %struct._GTypeInstance*
  %call21 = call i64 @gimp_item_get_type() #6
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call21)
  %21 = bitcast %struct._GTypeInstance* %call22 to %struct._GimpItem*
  %call23 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %21)
  %call24 = call i8* @gettext(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.233, i32 0, i32 0)) #5
  %22 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %call25 = call %struct._GimpUndo* @gimp_image_undo_push_vectors_mod(%struct._GimpImage* %call23, i8* %call24, %struct._GimpVectors* %22)
  br label %if.end

if.end:                                           ; preds = %if.then.20, %if.then.15
  %23 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  call void @gimp_vectors_freeze(%struct._GimpVectors* %23)
  %24 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke, align 8
  %25 = load double, double* %center_x, align 8
  %26 = load double, double* %center_y, align 8
  %27 = load double, double* %angle, align 8
  call void @gimp_stroke_rotate(%struct._GimpStroke* %24, double %25, double %26, double %27)
  %28 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  call void @gimp_vectors_thaw(%struct._GimpVectors* %28)
  br label %if.end.26

if.else:                                          ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end.26

if.end.26:                                        ; preds = %if.else, %if.end
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %entry
  %29 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %30 = load i32, i32* %success, align 4
  %31 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool28 = icmp ne %struct._GError** %31, null
  br i1 %tobool28, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.27
  %32 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %33 = load %struct._GError*, %struct._GError** %32, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.27
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %33, %cond.true ], [ null, %cond.false ]
  %call29 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %29, i32 %30, %struct._GError* %cond)
  ret %struct._GValueArray* %call29
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @vectors_stroke_flip_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %vectors = alloca %struct._GimpVectors*, align 8
  %stroke_id = alloca i32, align 4
  %flip_type = alloca i32, align 4
  %axis = alloca double, align 8
  %stroke = alloca %struct._GimpStroke*, align 8
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
  %call = call %struct._GimpVectors* @gimp_value_get_vectors(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpVectors* %call, %struct._GimpVectors** %vectors, align 8
  %3 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %3, i32 0, i32 1
  %4 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %4, i64 1
  %call3 = call i32 @g_value_get_int(%struct._GValue* %arrayidx2)
  store i32 %call3, i32* %stroke_id, align 4
  %5 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values4 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %5, i32 0, i32 1
  %6 = load %struct._GValue*, %struct._GValue** %values4, align 8
  %arrayidx5 = getelementptr inbounds %struct._GValue, %struct._GValue* %6, i64 2
  %call6 = call i32 @g_value_get_enum(%struct._GValue* %arrayidx5)
  store i32 %call6, i32* %flip_type, align 4
  %7 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values7 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %7, i32 0, i32 1
  %8 = load %struct._GValue*, %struct._GValue** %values7, align 8
  %arrayidx8 = getelementptr inbounds %struct._GValue, %struct._GValue* %8, i64 3
  %call9 = call double @g_value_get_double(%struct._GValue* %arrayidx8)
  store double %call9, double* %axis, align 8
  %9 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %if.then, label %if.end.24

if.then:                                          ; preds = %entry
  %10 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %11 = load i32, i32* %stroke_id, align 4
  %12 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call10 = call %struct._GimpStroke* @gimp_pdb_get_vectors_stroke(%struct._GimpVectors* %10, i32 %11, i32 1, %struct._GError** %12)
  store %struct._GimpStroke* %call10, %struct._GimpStroke** %stroke, align 8
  %13 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke, align 8
  %tobool11 = icmp ne %struct._GimpStroke* %13, null
  br i1 %tobool11, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %if.then
  %14 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %15 = bitcast %struct._GimpVectors* %14 to %struct._GTypeInstance*
  %call13 = call i64 @gimp_item_get_type() #6
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call13)
  %16 = bitcast %struct._GTypeInstance* %call14 to %struct._GimpItem*
  %call15 = call i32 @gimp_item_is_attached(%struct._GimpItem* %16)
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.then.17, label %if.end

if.then.17:                                       ; preds = %if.then.12
  %17 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %18 = bitcast %struct._GimpVectors* %17 to %struct._GTypeInstance*
  %call18 = call i64 @gimp_item_get_type() #6
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call18)
  %19 = bitcast %struct._GTypeInstance* %call19 to %struct._GimpItem*
  %call20 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %19)
  %call21 = call i8* @gettext(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.234, i32 0, i32 0)) #5
  %20 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %call22 = call %struct._GimpUndo* @gimp_image_undo_push_vectors_mod(%struct._GimpImage* %call20, i8* %call21, %struct._GimpVectors* %20)
  br label %if.end

if.end:                                           ; preds = %if.then.17, %if.then.12
  %21 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  call void @gimp_vectors_freeze(%struct._GimpVectors* %21)
  %22 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke, align 8
  %23 = load i32, i32* %flip_type, align 4
  %24 = load double, double* %axis, align 8
  call void @gimp_stroke_flip(%struct._GimpStroke* %22, i32 %23, double %24)
  %25 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  call void @gimp_vectors_thaw(%struct._GimpVectors* %25)
  br label %if.end.23

if.else:                                          ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end.23

if.end.23:                                        ; preds = %if.else, %if.end
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %entry
  %26 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %27 = load i32, i32* %success, align 4
  %28 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool25 = icmp ne %struct._GError** %28, null
  br i1 %tobool25, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.24
  %29 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %30 = load %struct._GError*, %struct._GError** %29, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.24
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %30, %cond.true ], [ null, %cond.false ]
  %call26 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %26, i32 %27, %struct._GError* %cond)
  ret %struct._GValueArray* %call26
}

declare %struct._GParamSpec* @gimp_param_spec_enum(i8*, i8*, i8*, i64, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_orientation_type_get_type() #2

declare void @gimp_param_spec_enum_exclude_value(%struct._GimpParamSpecEnum*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_param_enum_get_type() #2

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @vectors_stroke_flip_free_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %vectors = alloca %struct._GimpVectors*, align 8
  %stroke_id = alloca i32, align 4
  %x1 = alloca double, align 8
  %y1 = alloca double, align 8
  %x2 = alloca double, align 8
  %y2 = alloca double, align 8
  %stroke = alloca %struct._GimpStroke*, align 8
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
  %call = call %struct._GimpVectors* @gimp_value_get_vectors(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpVectors* %call, %struct._GimpVectors** %vectors, align 8
  %3 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %3, i32 0, i32 1
  %4 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %4, i64 1
  %call3 = call i32 @g_value_get_int(%struct._GValue* %arrayidx2)
  store i32 %call3, i32* %stroke_id, align 4
  %5 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values4 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %5, i32 0, i32 1
  %6 = load %struct._GValue*, %struct._GValue** %values4, align 8
  %arrayidx5 = getelementptr inbounds %struct._GValue, %struct._GValue* %6, i64 2
  %call6 = call double @g_value_get_double(%struct._GValue* %arrayidx5)
  store double %call6, double* %x1, align 8
  %7 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values7 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %7, i32 0, i32 1
  %8 = load %struct._GValue*, %struct._GValue** %values7, align 8
  %arrayidx8 = getelementptr inbounds %struct._GValue, %struct._GValue* %8, i64 3
  %call9 = call double @g_value_get_double(%struct._GValue* %arrayidx8)
  store double %call9, double* %y1, align 8
  %9 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values10 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %9, i32 0, i32 1
  %10 = load %struct._GValue*, %struct._GValue** %values10, align 8
  %arrayidx11 = getelementptr inbounds %struct._GValue, %struct._GValue* %10, i64 4
  %call12 = call double @g_value_get_double(%struct._GValue* %arrayidx11)
  store double %call12, double* %x2, align 8
  %11 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values13 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %11, i32 0, i32 1
  %12 = load %struct._GValue*, %struct._GValue** %values13, align 8
  %arrayidx14 = getelementptr inbounds %struct._GValue, %struct._GValue* %12, i64 5
  %call15 = call double @g_value_get_double(%struct._GValue* %arrayidx14)
  store double %call15, double* %y2, align 8
  %13 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %13, 0
  br i1 %tobool, label %if.then, label %if.end.30

if.then:                                          ; preds = %entry
  %14 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %15 = load i32, i32* %stroke_id, align 4
  %16 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call16 = call %struct._GimpStroke* @gimp_pdb_get_vectors_stroke(%struct._GimpVectors* %14, i32 %15, i32 1, %struct._GError** %16)
  store %struct._GimpStroke* %call16, %struct._GimpStroke** %stroke, align 8
  %17 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke, align 8
  %tobool17 = icmp ne %struct._GimpStroke* %17, null
  br i1 %tobool17, label %if.then.18, label %if.else

if.then.18:                                       ; preds = %if.then
  %18 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %19 = bitcast %struct._GimpVectors* %18 to %struct._GTypeInstance*
  %call19 = call i64 @gimp_item_get_type() #6
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call19)
  %20 = bitcast %struct._GTypeInstance* %call20 to %struct._GimpItem*
  %call21 = call i32 @gimp_item_is_attached(%struct._GimpItem* %20)
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.then.23, label %if.end

if.then.23:                                       ; preds = %if.then.18
  %21 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %22 = bitcast %struct._GimpVectors* %21 to %struct._GTypeInstance*
  %call24 = call i64 @gimp_item_get_type() #6
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call24)
  %23 = bitcast %struct._GTypeInstance* %call25 to %struct._GimpItem*
  %call26 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %23)
  %call27 = call i8* @gettext(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.234, i32 0, i32 0)) #5
  %24 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %call28 = call %struct._GimpUndo* @gimp_image_undo_push_vectors_mod(%struct._GimpImage* %call26, i8* %call27, %struct._GimpVectors* %24)
  br label %if.end

if.end:                                           ; preds = %if.then.23, %if.then.18
  %25 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  call void @gimp_vectors_freeze(%struct._GimpVectors* %25)
  %26 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke, align 8
  %27 = load double, double* %x1, align 8
  %28 = load double, double* %y1, align 8
  %29 = load double, double* %x2, align 8
  %30 = load double, double* %y2, align 8
  call void @gimp_stroke_flip_free(%struct._GimpStroke* %26, double %27, double %28, double %29, double %30)
  %31 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  call void @gimp_vectors_thaw(%struct._GimpVectors* %31)
  br label %if.end.29

if.else:                                          ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end.29

if.end.29:                                        ; preds = %if.else, %if.end
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.29, %entry
  %32 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %33 = load i32, i32* %success, align 4
  %34 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool31 = icmp ne %struct._GError** %34, null
  br i1 %tobool31, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.30
  %35 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %36 = load %struct._GError*, %struct._GError** %35, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.30
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %36, %cond.true ], [ null, %cond.false ]
  %call32 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %32, i32 %33, %struct._GError* %cond)
  ret %struct._GValueArray* %call32
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @vectors_stroke_get_points_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %return_vals = alloca %struct._GValueArray*, align 8
  %vectors = alloca %struct._GimpVectors*, align 8
  %stroke_id = alloca i32, align 4
  %type = alloca i32, align 4
  %num_points = alloca i32, align 4
  %controlpoints = alloca double*, align 8
  %closed = alloca i32, align 4
  %stroke = alloca %struct._GimpStroke*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %points_array = alloca %struct._GArray*, align 8
  %i = alloca i32, align 4
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store i32 0, i32* %type, align 4
  store i32 0, i32* %num_points, align 4
  store double* null, double** %controlpoints, align 8
  store i32 0, i32* %closed, align 4
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %2 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call = call %struct._GimpVectors* @gimp_value_get_vectors(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpVectors* %call, %struct._GimpVectors** %vectors, align 8
  %3 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %3, i32 0, i32 1
  %4 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %4, i64 1
  %call3 = call i32 @g_value_get_int(%struct._GValue* %arrayidx2)
  store i32 %call3, i32* %stroke_id, align 4
  %5 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end.41

if.then:                                          ; preds = %entry
  %6 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %7 = load i32, i32* %stroke_id, align 4
  %8 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call4 = call %struct._GimpStroke* @gimp_pdb_get_vectors_stroke(%struct._GimpVectors* %6, i32 %7, i32 0, %struct._GError** %8)
  store %struct._GimpStroke* %call4, %struct._GimpStroke** %stroke, align 8
  %9 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke, align 8
  %10 = bitcast %struct._GimpStroke* %9 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %10, %struct._GTypeInstance** %__inst, align 8
  %call5 = call i64 @gimp_bezier_stroke_get_type() #6
  store i64 %call5, i64* %__t, align 8
  %11 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool6 = icmp ne %struct._GTypeInstance* %11, null
  br i1 %tobool6, label %if.else, label %if.then.7

if.then.7:                                        ; preds = %if.then
  store i32 0, i32* %__r, align 4
  br label %if.end.13

if.else:                                          ; preds = %if.then
  %12 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %12, i32 0, i32 0
  %13 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool8 = icmp ne %struct._GTypeClass* %13, null
  br i1 %tobool8, label %land.lhs.true, label %if.else.11

land.lhs.true:                                    ; preds = %if.else
  %14 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class9 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %14, i32 0, i32 0
  %15 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class9, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %15, i32 0, i32 0
  %16 = load i64, i64* %g_type, align 8
  %17 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %16, %17
  br i1 %cmp, label %if.then.10, label %if.else.11

if.then.10:                                       ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.11:                                       ; preds = %land.lhs.true, %if.else
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %19 = load i64, i64* %__t, align 8
  %call12 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %18, i64 %19) #7
  store i32 %call12, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.11, %if.then.10
  br label %if.end.13

if.end.13:                                        ; preds = %if.end, %if.then.7
  %20 = load i32, i32* %__r, align 4
  store i32 %20, i32* %tmp
  %21 = load i32, i32* %tmp
  %tobool14 = icmp ne i32 %21, 0
  br i1 %tobool14, label %if.then.15, label %if.else.39

if.then.15:                                       ; preds = %if.end.13
  %22 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke, align 8
  %call18 = call %struct._GArray* @gimp_stroke_control_points_get(%struct._GimpStroke* %22, i32* %closed)
  store %struct._GArray* %call18, %struct._GArray** %points_array, align 8
  %23 = load %struct._GArray*, %struct._GArray** %points_array, align 8
  %tobool19 = icmp ne %struct._GArray* %23, null
  br i1 %tobool19, label %if.then.20, label %if.else.37

if.then.20:                                       ; preds = %if.then.15
  %24 = load %struct._GArray*, %struct._GArray** %points_array, align 8
  %len = getelementptr inbounds %struct._GArray, %struct._GArray* %24, i32 0, i32 1
  %25 = load i32, i32* %len, align 4
  store i32 %25, i32* %num_points, align 4
  %26 = load i32, i32* %num_points, align 4
  %mul = mul nsw i32 %26, 2
  %conv = sext i32 %mul to i64
  %call21 = call noalias i8* @g_malloc_n(i64 %conv, i64 8)
  %27 = bitcast i8* %call21 to double*
  store double* %27, double** %controlpoints, align 8
  store i32 0, i32* %type, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.20
  %28 = load i32, i32* %i, align 4
  %29 = load i32, i32* %num_points, align 4
  %cmp22 = icmp slt i32 %28, %29
  br i1 %cmp22, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %30 = load i32, i32* %i, align 4
  %idxprom = sext i32 %30 to i64
  %31 = load %struct._GArray*, %struct._GArray** %points_array, align 8
  %data = getelementptr inbounds %struct._GArray, %struct._GArray* %31, i32 0, i32 0
  %32 = load i8*, i8** %data, align 8
  %33 = bitcast i8* %32 to %struct._GimpAnchor*
  %arrayidx24 = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %33, i64 %idxprom
  %position = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %arrayidx24, i32 0, i32 0
  %x = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %position, i32 0, i32 0
  %34 = load double, double* %x, align 8
  %35 = load i32, i32* %i, align 4
  %mul25 = mul nsw i32 2, %35
  %idxprom26 = sext i32 %mul25 to i64
  %36 = load double*, double** %controlpoints, align 8
  %arrayidx27 = getelementptr inbounds double, double* %36, i64 %idxprom26
  store double %34, double* %arrayidx27, align 8
  %37 = load i32, i32* %i, align 4
  %idxprom28 = sext i32 %37 to i64
  %38 = load %struct._GArray*, %struct._GArray** %points_array, align 8
  %data29 = getelementptr inbounds %struct._GArray, %struct._GArray* %38, i32 0, i32 0
  %39 = load i8*, i8** %data29, align 8
  %40 = bitcast i8* %39 to %struct._GimpAnchor*
  %arrayidx30 = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %40, i64 %idxprom28
  %position31 = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %arrayidx30, i32 0, i32 0
  %y = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %position31, i32 0, i32 1
  %41 = load double, double* %y, align 8
  %42 = load i32, i32* %i, align 4
  %mul32 = mul nsw i32 2, %42
  %add = add nsw i32 %mul32, 1
  %idxprom33 = sext i32 %add to i64
  %43 = load double*, double** %controlpoints, align 8
  %arrayidx34 = getelementptr inbounds double, double* %43, i64 %idxprom33
  store double %41, double* %arrayidx34, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %44 = load i32, i32* %i, align 4
  %inc = add nsw i32 %44, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %45 = load %struct._GArray*, %struct._GArray** %points_array, align 8
  %call35 = call i8* @g_array_free(%struct._GArray* %45, i32 1)
  %46 = load i32, i32* %num_points, align 4
  %mul36 = mul nsw i32 %46, 2
  store i32 %mul36, i32* %num_points, align 4
  br label %if.end.38

if.else.37:                                       ; preds = %if.then.15
  store i32 0, i32* %success, align 4
  br label %if.end.38

if.end.38:                                        ; preds = %if.else.37, %for.end
  br label %if.end.40

if.else.39:                                       ; preds = %if.end.13
  store i32 0, i32* %success, align 4
  br label %if.end.40

if.end.40:                                        ; preds = %if.else.39, %if.end.38
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40, %entry
  %47 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %48 = load i32, i32* %success, align 4
  %49 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool42 = icmp ne %struct._GError** %49, null
  br i1 %tobool42, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.41
  %50 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %51 = load %struct._GError*, %struct._GError** %50, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.41
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %51, %cond.true ], [ null, %cond.false ]
  %call43 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %47, i32 %48, %struct._GError* %cond)
  store %struct._GValueArray* %call43, %struct._GValueArray** %return_vals, align 8
  %52 = load i32, i32* %success, align 4
  %tobool44 = icmp ne i32 %52, 0
  br i1 %tobool44, label %if.then.45, label %if.end.55

if.then.45:                                       ; preds = %cond.end
  %53 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values46 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %53, i32 0, i32 1
  %54 = load %struct._GValue*, %struct._GValue** %values46, align 8
  %arrayidx47 = getelementptr inbounds %struct._GValue, %struct._GValue* %54, i64 1
  %55 = load i32, i32* %type, align 4
  call void @g_value_set_enum(%struct._GValue* %arrayidx47, i32 %55)
  %56 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values48 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %56, i32 0, i32 1
  %57 = load %struct._GValue*, %struct._GValue** %values48, align 8
  %arrayidx49 = getelementptr inbounds %struct._GValue, %struct._GValue* %57, i64 2
  %58 = load i32, i32* %num_points, align 4
  call void @g_value_set_int(%struct._GValue* %arrayidx49, i32 %58)
  %59 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values50 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %59, i32 0, i32 1
  %60 = load %struct._GValue*, %struct._GValue** %values50, align 8
  %arrayidx51 = getelementptr inbounds %struct._GValue, %struct._GValue* %60, i64 3
  %61 = load double*, double** %controlpoints, align 8
  %62 = load i32, i32* %num_points, align 4
  %conv52 = sext i32 %62 to i64
  call void @gimp_value_take_floatarray(%struct._GValue* %arrayidx51, double* %61, i64 %conv52)
  %63 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values53 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %63, i32 0, i32 1
  %64 = load %struct._GValue*, %struct._GValue** %values53, align 8
  %arrayidx54 = getelementptr inbounds %struct._GValue, %struct._GValue* %64, i64 4
  %65 = load i32, i32* %closed, align 4
  call void @g_value_set_boolean(%struct._GValue* %arrayidx54, i32 %65)
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.45, %cond.end
  %66 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %66
}

declare %struct._GParamSpec* @g_param_spec_enum(i8*, i8*, i8*, i64, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_vectors_stroke_type_get_type() #2

declare %struct._GParamSpec* @gimp_param_spec_float_array(i8*, i8*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @vectors_stroke_new_from_points_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %return_vals = alloca %struct._GValueArray*, align 8
  %vectors = alloca %struct._GimpVectors*, align 8
  %type = alloca i32, align 4
  %num_points = alloca i32, align 4
  %controlpoints = alloca double*, align 8
  %closed = alloca i32, align 4
  %stroke_id = alloca i32, align 4
  %stroke = alloca %struct._GimpStroke*, align 8
  %coords = alloca %struct._GimpCoords*, align 8
  %default_coords = alloca %struct._GimpCoords, align 8
  %i = alloca i32, align 4
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store i32 0, i32* %stroke_id, align 4
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %2 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call = call %struct._GimpVectors* @gimp_value_get_vectors(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpVectors* %call, %struct._GimpVectors** %vectors, align 8
  %3 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %3, i32 0, i32 1
  %4 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %4, i64 1
  %call3 = call i32 @g_value_get_enum(%struct._GValue* %arrayidx2)
  store i32 %call3, i32* %type, align 4
  %5 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values4 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %5, i32 0, i32 1
  %6 = load %struct._GValue*, %struct._GValue** %values4, align 8
  %arrayidx5 = getelementptr inbounds %struct._GValue, %struct._GValue* %6, i64 2
  %call6 = call i32 @g_value_get_int(%struct._GValue* %arrayidx5)
  store i32 %call6, i32* %num_points, align 4
  %7 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values7 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %7, i32 0, i32 1
  %8 = load %struct._GValue*, %struct._GValue** %values7, align 8
  %arrayidx8 = getelementptr inbounds %struct._GValue, %struct._GValue* %8, i64 3
  %call9 = call double* @gimp_value_get_floatarray(%struct._GValue* %arrayidx8)
  store double* %call9, double** %controlpoints, align 8
  %9 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values10 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %9, i32 0, i32 1
  %10 = load %struct._GValue*, %struct._GValue** %values10, align 8
  %arrayidx11 = getelementptr inbounds %struct._GValue, %struct._GValue* %10, i64 4
  %call12 = call i32 @g_value_get_boolean(%struct._GValue* %arrayidx11)
  store i32 %call12, i32* %closed, align 4
  %11 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %if.then, label %if.end.46

if.then:                                          ; preds = %entry
  %12 = bitcast %struct._GimpCoords* %default_coords to i8*
  call void @llvm.memset.p0i8.i64(i8* %12, i8 0, i64 64, i32 8, i1 false)
  %13 = bitcast i8* %12 to %struct._GimpCoords*
  %14 = getelementptr %struct._GimpCoords, %struct._GimpCoords* %13, i32 0, i32 2
  store double 1.000000e+00, double* %14
  %15 = getelementptr %struct._GimpCoords, %struct._GimpCoords* %13, i32 0, i32 5
  store double 5.000000e-01, double* %15
  store i32 0, i32* %success, align 4
  %16 = load i32, i32* %type, align 4
  %cmp = icmp eq i32 %16, 0
  br i1 %cmp, label %land.lhs.true, label %if.end.45

land.lhs.true:                                    ; preds = %if.then
  %17 = load i32, i32* %num_points, align 4
  %rem = srem i32 %17, 6
  %cmp13 = icmp eq i32 %rem, 0
  br i1 %cmp13, label %if.then.14, label %if.end.45

if.then.14:                                       ; preds = %land.lhs.true
  %18 = load i32, i32* %num_points, align 4
  %div = sdiv i32 %18, 2
  %conv = sext i32 %div to i64
  %call15 = call noalias i8* @g_malloc_n(i64 %conv, i64 64)
  %19 = bitcast i8* %call15 to %struct._GimpCoords*
  store %struct._GimpCoords* %19, %struct._GimpCoords** %coords, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.14
  %20 = load i32, i32* %i, align 4
  %21 = load i32, i32* %num_points, align 4
  %div16 = sdiv i32 %21, 2
  %cmp17 = icmp slt i32 %20, %div16
  br i1 %cmp17, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %22 = load i32, i32* %i, align 4
  %idxprom = sext i32 %22 to i64
  %23 = load %struct._GimpCoords*, %struct._GimpCoords** %coords, align 8
  %arrayidx19 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %23, i64 %idxprom
  %24 = bitcast %struct._GimpCoords* %arrayidx19 to i8*
  %25 = bitcast %struct._GimpCoords* %default_coords to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %24, i8* %25, i64 64, i32 8, i1 false)
  %26 = load i32, i32* %i, align 4
  %mul = mul nsw i32 %26, 2
  %idxprom20 = sext i32 %mul to i64
  %27 = load double*, double** %controlpoints, align 8
  %arrayidx21 = getelementptr inbounds double, double* %27, i64 %idxprom20
  %28 = load double, double* %arrayidx21, align 8
  %29 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %29 to i64
  %30 = load %struct._GimpCoords*, %struct._GimpCoords** %coords, align 8
  %arrayidx23 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %30, i64 %idxprom22
  %x = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %arrayidx23, i32 0, i32 0
  store double %28, double* %x, align 8
  %31 = load i32, i32* %i, align 4
  %mul24 = mul nsw i32 %31, 2
  %add = add nsw i32 %mul24, 1
  %idxprom25 = sext i32 %add to i64
  %32 = load double*, double** %controlpoints, align 8
  %arrayidx26 = getelementptr inbounds double, double* %32, i64 %idxprom25
  %33 = load double, double* %arrayidx26, align 8
  %34 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %34 to i64
  %35 = load %struct._GimpCoords*, %struct._GimpCoords** %coords, align 8
  %arrayidx28 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %35, i64 %idxprom27
  %y = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %arrayidx28, i32 0, i32 1
  store double %33, double* %y, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %36 = load i32, i32* %i, align 4
  %inc = add nsw i32 %36, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %37 = load i32, i32* %type, align 4
  %38 = load %struct._GimpCoords*, %struct._GimpCoords** %coords, align 8
  %39 = load i32, i32* %num_points, align 4
  %div29 = sdiv i32 %39, 2
  %40 = load i32, i32* %closed, align 4
  %call30 = call %struct._GimpStroke* @gimp_stroke_new_from_coords(i32 %37, %struct._GimpCoords* %38, i32 %div29, i32 %40)
  store %struct._GimpStroke* %call30, %struct._GimpStroke** %stroke, align 8
  %41 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke, align 8
  %tobool31 = icmp ne %struct._GimpStroke* %41, null
  br i1 %tobool31, label %if.then.32, label %if.end.44

if.then.32:                                       ; preds = %for.end
  %42 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %43 = bitcast %struct._GimpVectors* %42 to %struct._GTypeInstance*
  %call33 = call i64 @gimp_item_get_type() #6
  %call34 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %43, i64 %call33)
  %44 = bitcast %struct._GTypeInstance* %call34 to %struct._GimpItem*
  %call35 = call i32 @gimp_item_is_attached(%struct._GimpItem* %44)
  %tobool36 = icmp ne i32 %call35, 0
  br i1 %tobool36, label %if.then.37, label %if.end

if.then.37:                                       ; preds = %if.then.32
  %45 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %46 = bitcast %struct._GimpVectors* %45 to %struct._GTypeInstance*
  %call38 = call i64 @gimp_item_get_type() #6
  %call39 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %46, i64 %call38)
  %47 = bitcast %struct._GTypeInstance* %call39 to %struct._GimpItem*
  %call40 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %47)
  %call41 = call i8* @gettext(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.235, i32 0, i32 0)) #5
  %48 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %call42 = call %struct._GimpUndo* @gimp_image_undo_push_vectors_mod(%struct._GimpImage* %call40, i8* %call41, %struct._GimpVectors* %48)
  br label %if.end

if.end:                                           ; preds = %if.then.37, %if.then.32
  %49 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %50 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke, align 8
  call void @gimp_vectors_stroke_add(%struct._GimpVectors* %49, %struct._GimpStroke* %50)
  %51 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke, align 8
  %52 = bitcast %struct._GimpStroke* %51 to i8*
  call void @g_object_unref(i8* %52)
  %53 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke, align 8
  %call43 = call i32 @gimp_stroke_get_ID(%struct._GimpStroke* %53)
  store i32 %call43, i32* %stroke_id, align 4
  store i32 1, i32* %success, align 4
  br label %if.end.44

if.end.44:                                        ; preds = %if.end, %for.end
  %54 = load %struct._GimpCoords*, %struct._GimpCoords** %coords, align 8
  %55 = bitcast %struct._GimpCoords* %54 to i8*
  call void @g_free(i8* %55)
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %land.lhs.true, %if.then
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.45, %entry
  %56 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %57 = load i32, i32* %success, align 4
  %58 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool47 = icmp ne %struct._GError** %58, null
  br i1 %tobool47, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.46
  %59 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %60 = load %struct._GError*, %struct._GError** %59, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.46
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %60, %cond.true ], [ null, %cond.false ]
  %call48 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %56, i32 %57, %struct._GError* %cond)
  store %struct._GValueArray* %call48, %struct._GValueArray** %return_vals, align 8
  %61 = load i32, i32* %success, align 4
  %tobool49 = icmp ne i32 %61, 0
  br i1 %tobool49, label %if.then.50, label %if.end.53

if.then.50:                                       ; preds = %cond.end
  %62 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values51 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %62, i32 0, i32 1
  %63 = load %struct._GValue*, %struct._GValue** %values51, align 8
  %arrayidx52 = getelementptr inbounds %struct._GValue, %struct._GValue* %63, i64 1
  %64 = load i32, i32* %stroke_id, align 4
  call void @g_value_set_int(%struct._GValue* %arrayidx52, i32 %64)
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.50, %cond.end
  %65 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %65
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @vectors_stroke_interpolate_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %return_vals = alloca %struct._GValueArray*, align 8
  %vectors = alloca %struct._GimpVectors*, align 8
  %stroke_id = alloca i32, align 4
  %precision = alloca double, align 8
  %num_coords = alloca i32, align 4
  %coords = alloca double*, align 8
  %closed = alloca i32, align 4
  %stroke = alloca %struct._GimpStroke*, align 8
  %coords_array = alloca %struct._GArray*, align 8
  %i = alloca i32, align 4
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store i32 0, i32* %num_coords, align 4
  store double* null, double** %coords, align 8
  store i32 0, i32* %closed, align 4
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %2 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call = call %struct._GimpVectors* @gimp_value_get_vectors(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpVectors* %call, %struct._GimpVectors** %vectors, align 8
  %3 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %3, i32 0, i32 1
  %4 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %4, i64 1
  %call3 = call i32 @g_value_get_int(%struct._GValue* %arrayidx2)
  store i32 %call3, i32* %stroke_id, align 4
  %5 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values4 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %5, i32 0, i32 1
  %6 = load %struct._GValue*, %struct._GValue** %values4, align 8
  %arrayidx5 = getelementptr inbounds %struct._GValue, %struct._GValue* %6, i64 2
  %call6 = call double @g_value_get_double(%struct._GValue* %arrayidx5)
  store double %call6, double* %precision, align 8
  %7 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then, label %if.end.29

if.then:                                          ; preds = %entry
  %8 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %9 = load i32, i32* %stroke_id, align 4
  %10 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call7 = call %struct._GimpStroke* @gimp_pdb_get_vectors_stroke(%struct._GimpVectors* %8, i32 %9, i32 0, %struct._GError** %10)
  store %struct._GimpStroke* %call7, %struct._GimpStroke** %stroke, align 8
  %11 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke, align 8
  %tobool8 = icmp ne %struct._GimpStroke* %11, null
  br i1 %tobool8, label %if.then.9, label %if.else.27

if.then.9:                                        ; preds = %if.then
  %12 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke, align 8
  %13 = load double, double* %precision, align 8
  %call10 = call %struct._GArray* @gimp_stroke_interpolate(%struct._GimpStroke* %12, double %13, i32* %closed)
  store %struct._GArray* %call10, %struct._GArray** %coords_array, align 8
  %14 = load %struct._GArray*, %struct._GArray** %coords_array, align 8
  %tobool11 = icmp ne %struct._GArray* %14, null
  br i1 %tobool11, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %if.then.9
  %15 = load %struct._GArray*, %struct._GArray** %coords_array, align 8
  %len = getelementptr inbounds %struct._GArray, %struct._GArray* %15, i32 0, i32 1
  %16 = load i32, i32* %len, align 4
  store i32 %16, i32* %num_coords, align 4
  %17 = load i32, i32* %num_coords, align 4
  %mul = mul nsw i32 %17, 2
  %conv = sext i32 %mul to i64
  %call13 = call noalias i8* @g_malloc_n(i64 %conv, i64 8)
  %18 = bitcast i8* %call13 to double*
  store double* %18, double** %coords, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.12
  %19 = load i32, i32* %i, align 4
  %20 = load i32, i32* %num_coords, align 4
  %cmp = icmp slt i32 %19, %20
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %21 = load i32, i32* %i, align 4
  %idxprom = sext i32 %21 to i64
  %22 = load %struct._GArray*, %struct._GArray** %coords_array, align 8
  %data = getelementptr inbounds %struct._GArray, %struct._GArray* %22, i32 0, i32 0
  %23 = load i8*, i8** %data, align 8
  %24 = bitcast i8* %23 to %struct._GimpCoords*
  %arrayidx15 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %24, i64 %idxprom
  %x = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %arrayidx15, i32 0, i32 0
  %25 = load double, double* %x, align 8
  %26 = load i32, i32* %i, align 4
  %mul16 = mul nsw i32 2, %26
  %idxprom17 = sext i32 %mul16 to i64
  %27 = load double*, double** %coords, align 8
  %arrayidx18 = getelementptr inbounds double, double* %27, i64 %idxprom17
  store double %25, double* %arrayidx18, align 8
  %28 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %28 to i64
  %29 = load %struct._GArray*, %struct._GArray** %coords_array, align 8
  %data20 = getelementptr inbounds %struct._GArray, %struct._GArray* %29, i32 0, i32 0
  %30 = load i8*, i8** %data20, align 8
  %31 = bitcast i8* %30 to %struct._GimpCoords*
  %arrayidx21 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %31, i64 %idxprom19
  %y = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %arrayidx21, i32 0, i32 1
  %32 = load double, double* %y, align 8
  %33 = load i32, i32* %i, align 4
  %mul22 = mul nsw i32 2, %33
  %add = add nsw i32 %mul22, 1
  %idxprom23 = sext i32 %add to i64
  %34 = load double*, double** %coords, align 8
  %arrayidx24 = getelementptr inbounds double, double* %34, i64 %idxprom23
  store double %32, double* %arrayidx24, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %35 = load i32, i32* %i, align 4
  %inc = add nsw i32 %35, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %36 = load %struct._GArray*, %struct._GArray** %coords_array, align 8
  %call25 = call i8* @g_array_free(%struct._GArray* %36, i32 1)
  %37 = load i32, i32* %num_coords, align 4
  %mul26 = mul nsw i32 %37, 2
  store i32 %mul26, i32* %num_coords, align 4
  br label %if.end

if.else:                                          ; preds = %if.then.9
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  br label %if.end.28

if.else.27:                                       ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end.28

if.end.28:                                        ; preds = %if.else.27, %if.end
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %entry
  %38 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %39 = load i32, i32* %success, align 4
  %40 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool30 = icmp ne %struct._GError** %40, null
  br i1 %tobool30, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.29
  %41 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %42 = load %struct._GError*, %struct._GError** %41, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.29
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %42, %cond.true ], [ null, %cond.false ]
  %call31 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %38, i32 %39, %struct._GError* %cond)
  store %struct._GValueArray* %call31, %struct._GValueArray** %return_vals, align 8
  %43 = load i32, i32* %success, align 4
  %tobool32 = icmp ne i32 %43, 0
  br i1 %tobool32, label %if.then.33, label %if.end.41

if.then.33:                                       ; preds = %cond.end
  %44 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values34 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %44, i32 0, i32 1
  %45 = load %struct._GValue*, %struct._GValue** %values34, align 8
  %arrayidx35 = getelementptr inbounds %struct._GValue, %struct._GValue* %45, i64 1
  %46 = load i32, i32* %num_coords, align 4
  call void @g_value_set_int(%struct._GValue* %arrayidx35, i32 %46)
  %47 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values36 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %47, i32 0, i32 1
  %48 = load %struct._GValue*, %struct._GValue** %values36, align 8
  %arrayidx37 = getelementptr inbounds %struct._GValue, %struct._GValue* %48, i64 2
  %49 = load double*, double** %coords, align 8
  %50 = load i32, i32* %num_coords, align 4
  %conv38 = sext i32 %50 to i64
  call void @gimp_value_take_floatarray(%struct._GValue* %arrayidx37, double* %49, i64 %conv38)
  %51 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values39 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %51, i32 0, i32 1
  %52 = load %struct._GValue*, %struct._GValue** %values39, align 8
  %arrayidx40 = getelementptr inbounds %struct._GValue, %struct._GValue* %52, i64 3
  %53 = load i32, i32* %closed, align 4
  call void @g_value_set_boolean(%struct._GValue* %arrayidx40, i32 %53)
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.33, %cond.end
  %54 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %54
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @vectors_bezier_stroke_new_moveto_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %return_vals = alloca %struct._GValueArray*, align 8
  %vectors = alloca %struct._GimpVectors*, align 8
  %x0 = alloca double, align 8
  %y0 = alloca double, align 8
  %stroke_id = alloca i32, align 4
  %stroke = alloca %struct._GimpStroke*, align 8
  %coord0 = alloca %struct._GimpCoords, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store i32 0, i32* %stroke_id, align 4
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %2 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call = call %struct._GimpVectors* @gimp_value_get_vectors(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpVectors* %call, %struct._GimpVectors** %vectors, align 8
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
  %7 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then, label %if.end.29

if.then:                                          ; preds = %entry
  %8 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %9 = bitcast %struct._GimpVectors* %8 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_item_get_type() #6
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call7)
  %10 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpItem*
  %11 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call9 = call i32 @gimp_pdb_item_is_writable(%struct._GimpItem* %10, %struct._GError** %11)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %12 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %13 = bitcast %struct._GimpVectors* %12 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_item_get_type() #6
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call11)
  %14 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpItem*
  %15 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call13 = call i32 @gimp_pdb_item_is_not_group(%struct._GimpItem* %14, %struct._GError** %15)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %land.lhs.true
  %16 = bitcast %struct._GimpCoords* %coord0 to i8*
  call void @llvm.memset.p0i8.i64(i8* %16, i8 0, i64 64, i32 8, i1 false)
  %17 = bitcast i8* %16 to %struct._GimpCoords*
  %18 = getelementptr %struct._GimpCoords, %struct._GimpCoords* %17, i32 0, i32 2
  store double 1.000000e+00, double* %18
  %19 = getelementptr %struct._GimpCoords, %struct._GimpCoords* %17, i32 0, i32 5
  store double 5.000000e-01, double* %19
  %20 = load double, double* %x0, align 8
  %x = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %coord0, i32 0, i32 0
  store double %20, double* %x, align 8
  %21 = load double, double* %y0, align 8
  %y = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %coord0, i32 0, i32 1
  store double %21, double* %y, align 8
  %call16 = call %struct._GimpStroke* @gimp_bezier_stroke_new_moveto(%struct._GimpCoords* %coord0)
  store %struct._GimpStroke* %call16, %struct._GimpStroke** %stroke, align 8
  %22 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %23 = bitcast %struct._GimpVectors* %22 to %struct._GTypeInstance*
  %call17 = call i64 @gimp_item_get_type() #6
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call17)
  %24 = bitcast %struct._GTypeInstance* %call18 to %struct._GimpItem*
  %call19 = call i32 @gimp_item_is_attached(%struct._GimpItem* %24)
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %if.then.21, label %if.end

if.then.21:                                       ; preds = %if.then.15
  %25 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %26 = bitcast %struct._GimpVectors* %25 to %struct._GTypeInstance*
  %call22 = call i64 @gimp_item_get_type() #6
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %26, i64 %call22)
  %27 = bitcast %struct._GTypeInstance* %call23 to %struct._GimpItem*
  %call24 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %27)
  %call25 = call i8* @gettext(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.235, i32 0, i32 0)) #5
  %28 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %call26 = call %struct._GimpUndo* @gimp_image_undo_push_vectors_mod(%struct._GimpImage* %call24, i8* %call25, %struct._GimpVectors* %28)
  br label %if.end

if.end:                                           ; preds = %if.then.21, %if.then.15
  %29 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %30 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke, align 8
  call void @gimp_vectors_stroke_add(%struct._GimpVectors* %29, %struct._GimpStroke* %30)
  %31 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke, align 8
  %32 = bitcast %struct._GimpStroke* %31 to i8*
  call void @g_object_unref(i8* %32)
  %33 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke, align 8
  %call27 = call i32 @gimp_stroke_get_ID(%struct._GimpStroke* %33)
  store i32 %call27, i32* %stroke_id, align 4
  br label %if.end.28

if.else:                                          ; preds = %land.lhs.true, %if.then
  store i32 0, i32* %success, align 4
  br label %if.end.28

if.end.28:                                        ; preds = %if.else, %if.end
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %entry
  %34 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %35 = load i32, i32* %success, align 4
  %36 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool30 = icmp ne %struct._GError** %36, null
  br i1 %tobool30, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.29
  %37 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %38 = load %struct._GError*, %struct._GError** %37, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.29
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %38, %cond.true ], [ null, %cond.false ]
  %call31 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %34, i32 %35, %struct._GError* %cond)
  store %struct._GValueArray* %call31, %struct._GValueArray** %return_vals, align 8
  %39 = load i32, i32* %success, align 4
  %tobool32 = icmp ne i32 %39, 0
  br i1 %tobool32, label %if.then.33, label %if.end.36

if.then.33:                                       ; preds = %cond.end
  %40 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values34 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %40, i32 0, i32 1
  %41 = load %struct._GValue*, %struct._GValue** %values34, align 8
  %arrayidx35 = getelementptr inbounds %struct._GValue, %struct._GValue* %41, i64 1
  %42 = load i32, i32* %stroke_id, align 4
  call void @g_value_set_int(%struct._GValue* %arrayidx35, i32 %42)
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.33, %cond.end
  %43 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %43
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @vectors_bezier_stroke_lineto_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %vectors = alloca %struct._GimpVectors*, align 8
  %stroke_id = alloca i32, align 4
  %x0 = alloca double, align 8
  %y0 = alloca double, align 8
  %stroke = alloca %struct._GimpStroke*, align 8
  %coord0 = alloca %struct._GimpCoords, align 8
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
  %call = call %struct._GimpVectors* @gimp_value_get_vectors(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpVectors* %call, %struct._GimpVectors** %vectors, align 8
  %3 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %3, i32 0, i32 1
  %4 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %4, i64 1
  %call3 = call i32 @g_value_get_int(%struct._GValue* %arrayidx2)
  store i32 %call3, i32* %stroke_id, align 4
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
  %9 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %if.then, label %if.end.24

if.then:                                          ; preds = %entry
  %10 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %11 = load i32, i32* %stroke_id, align 4
  %12 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call10 = call %struct._GimpStroke* @gimp_pdb_get_vectors_stroke(%struct._GimpVectors* %10, i32 %11, i32 1, %struct._GError** %12)
  store %struct._GimpStroke* %call10, %struct._GimpStroke** %stroke, align 8
  %13 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke, align 8
  %tobool11 = icmp ne %struct._GimpStroke* %13, null
  br i1 %tobool11, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %if.then
  %14 = bitcast %struct._GimpCoords* %coord0 to i8*
  call void @llvm.memset.p0i8.i64(i8* %14, i8 0, i64 64, i32 8, i1 false)
  %15 = bitcast i8* %14 to %struct._GimpCoords*
  %16 = getelementptr %struct._GimpCoords, %struct._GimpCoords* %15, i32 0, i32 2
  store double 1.000000e+00, double* %16
  %17 = getelementptr %struct._GimpCoords, %struct._GimpCoords* %15, i32 0, i32 5
  store double 5.000000e-01, double* %17
  %18 = load double, double* %x0, align 8
  %x = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %coord0, i32 0, i32 0
  store double %18, double* %x, align 8
  %19 = load double, double* %y0, align 8
  %y = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %coord0, i32 0, i32 1
  store double %19, double* %y, align 8
  %20 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %21 = bitcast %struct._GimpVectors* %20 to %struct._GTypeInstance*
  %call13 = call i64 @gimp_item_get_type() #6
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call13)
  %22 = bitcast %struct._GTypeInstance* %call14 to %struct._GimpItem*
  %call15 = call i32 @gimp_item_is_attached(%struct._GimpItem* %22)
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.then.17, label %if.end

if.then.17:                                       ; preds = %if.then.12
  %23 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %24 = bitcast %struct._GimpVectors* %23 to %struct._GTypeInstance*
  %call18 = call i64 @gimp_item_get_type() #6
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call18)
  %25 = bitcast %struct._GTypeInstance* %call19 to %struct._GimpItem*
  %call20 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %25)
  %call21 = call i8* @gettext(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.236, i32 0, i32 0)) #5
  %26 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %call22 = call %struct._GimpUndo* @gimp_image_undo_push_vectors_mod(%struct._GimpImage* %call20, i8* %call21, %struct._GimpVectors* %26)
  br label %if.end

if.end:                                           ; preds = %if.then.17, %if.then.12
  %27 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  call void @gimp_vectors_freeze(%struct._GimpVectors* %27)
  %28 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke, align 8
  call void @gimp_bezier_stroke_lineto(%struct._GimpStroke* %28, %struct._GimpCoords* %coord0)
  %29 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  call void @gimp_vectors_thaw(%struct._GimpVectors* %29)
  br label %if.end.23

if.else:                                          ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end.23

if.end.23:                                        ; preds = %if.else, %if.end
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %entry
  %30 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %31 = load i32, i32* %success, align 4
  %32 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool25 = icmp ne %struct._GError** %32, null
  br i1 %tobool25, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.24
  %33 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %34 = load %struct._GError*, %struct._GError** %33, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.24
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %34, %cond.true ], [ null, %cond.false ]
  %call26 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %30, i32 %31, %struct._GError* %cond)
  ret %struct._GValueArray* %call26
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @vectors_bezier_stroke_conicto_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %vectors = alloca %struct._GimpVectors*, align 8
  %stroke_id = alloca i32, align 4
  %x0 = alloca double, align 8
  %y0 = alloca double, align 8
  %x1 = alloca double, align 8
  %y1 = alloca double, align 8
  %stroke = alloca %struct._GimpStroke*, align 8
  %coord0 = alloca %struct._GimpCoords, align 8
  %coord1 = alloca %struct._GimpCoords, align 8
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
  %call = call %struct._GimpVectors* @gimp_value_get_vectors(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpVectors* %call, %struct._GimpVectors** %vectors, align 8
  %3 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %3, i32 0, i32 1
  %4 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %4, i64 1
  %call3 = call i32 @g_value_get_int(%struct._GValue* %arrayidx2)
  store i32 %call3, i32* %stroke_id, align 4
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
  br i1 %tobool, label %if.then, label %if.end.32

if.then:                                          ; preds = %entry
  %14 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %15 = load i32, i32* %stroke_id, align 4
  %16 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call16 = call %struct._GimpStroke* @gimp_pdb_get_vectors_stroke(%struct._GimpVectors* %14, i32 %15, i32 1, %struct._GError** %16)
  store %struct._GimpStroke* %call16, %struct._GimpStroke** %stroke, align 8
  %17 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke, align 8
  %tobool17 = icmp ne %struct._GimpStroke* %17, null
  br i1 %tobool17, label %if.then.18, label %if.else

if.then.18:                                       ; preds = %if.then
  %18 = bitcast %struct._GimpCoords* %coord0 to i8*
  call void @llvm.memset.p0i8.i64(i8* %18, i8 0, i64 64, i32 8, i1 false)
  %19 = bitcast i8* %18 to %struct._GimpCoords*
  %20 = getelementptr %struct._GimpCoords, %struct._GimpCoords* %19, i32 0, i32 2
  store double 1.000000e+00, double* %20
  %21 = getelementptr %struct._GimpCoords, %struct._GimpCoords* %19, i32 0, i32 5
  store double 5.000000e-01, double* %21
  %22 = bitcast %struct._GimpCoords* %coord1 to i8*
  call void @llvm.memset.p0i8.i64(i8* %22, i8 0, i64 64, i32 8, i1 false)
  %23 = bitcast i8* %22 to %struct._GimpCoords*
  %24 = getelementptr %struct._GimpCoords, %struct._GimpCoords* %23, i32 0, i32 2
  store double 1.000000e+00, double* %24
  %25 = getelementptr %struct._GimpCoords, %struct._GimpCoords* %23, i32 0, i32 5
  store double 5.000000e-01, double* %25
  %26 = load double, double* %x0, align 8
  %x = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %coord0, i32 0, i32 0
  store double %26, double* %x, align 8
  %27 = load double, double* %y0, align 8
  %y = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %coord0, i32 0, i32 1
  store double %27, double* %y, align 8
  %28 = load double, double* %x1, align 8
  %x19 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %coord1, i32 0, i32 0
  store double %28, double* %x19, align 8
  %29 = load double, double* %y1, align 8
  %y20 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %coord1, i32 0, i32 1
  store double %29, double* %y20, align 8
  %30 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %31 = bitcast %struct._GimpVectors* %30 to %struct._GTypeInstance*
  %call21 = call i64 @gimp_item_get_type() #6
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 %call21)
  %32 = bitcast %struct._GTypeInstance* %call22 to %struct._GimpItem*
  %call23 = call i32 @gimp_item_is_attached(%struct._GimpItem* %32)
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %if.then.25, label %if.end

if.then.25:                                       ; preds = %if.then.18
  %33 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %34 = bitcast %struct._GimpVectors* %33 to %struct._GTypeInstance*
  %call26 = call i64 @gimp_item_get_type() #6
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 %call26)
  %35 = bitcast %struct._GTypeInstance* %call27 to %struct._GimpItem*
  %call28 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %35)
  %call29 = call i8* @gettext(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.236, i32 0, i32 0)) #5
  %36 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %call30 = call %struct._GimpUndo* @gimp_image_undo_push_vectors_mod(%struct._GimpImage* %call28, i8* %call29, %struct._GimpVectors* %36)
  br label %if.end

if.end:                                           ; preds = %if.then.25, %if.then.18
  %37 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  call void @gimp_vectors_freeze(%struct._GimpVectors* %37)
  %38 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke, align 8
  call void @gimp_bezier_stroke_conicto(%struct._GimpStroke* %38, %struct._GimpCoords* %coord0, %struct._GimpCoords* %coord1)
  %39 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  call void @gimp_vectors_thaw(%struct._GimpVectors* %39)
  br label %if.end.31

if.else:                                          ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.else, %if.end
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %entry
  %40 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %41 = load i32, i32* %success, align 4
  %42 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool33 = icmp ne %struct._GError** %42, null
  br i1 %tobool33, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.32
  %43 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %44 = load %struct._GError*, %struct._GError** %43, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %44, %cond.true ], [ null, %cond.false ]
  %call34 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %40, i32 %41, %struct._GError* %cond)
  ret %struct._GValueArray* %call34
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @vectors_bezier_stroke_cubicto_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %vectors = alloca %struct._GimpVectors*, align 8
  %stroke_id = alloca i32, align 4
  %x0 = alloca double, align 8
  %y0 = alloca double, align 8
  %x1 = alloca double, align 8
  %y1 = alloca double, align 8
  %x2 = alloca double, align 8
  %y2 = alloca double, align 8
  %stroke = alloca %struct._GimpStroke*, align 8
  %coord0 = alloca %struct._GimpCoords, align 8
  %coord1 = alloca %struct._GimpCoords, align 8
  %coord2 = alloca %struct._GimpCoords, align 8
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
  %call = call %struct._GimpVectors* @gimp_value_get_vectors(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpVectors* %call, %struct._GimpVectors** %vectors, align 8
  %3 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %3, i32 0, i32 1
  %4 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %4, i64 1
  %call3 = call i32 @g_value_get_int(%struct._GValue* %arrayidx2)
  store i32 %call3, i32* %stroke_id, align 4
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
  %17 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %17, 0
  br i1 %tobool, label %if.then, label %if.end.40

if.then:                                          ; preds = %entry
  %18 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %19 = load i32, i32* %stroke_id, align 4
  %20 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call22 = call %struct._GimpStroke* @gimp_pdb_get_vectors_stroke(%struct._GimpVectors* %18, i32 %19, i32 1, %struct._GError** %20)
  store %struct._GimpStroke* %call22, %struct._GimpStroke** %stroke, align 8
  %21 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke, align 8
  %tobool23 = icmp ne %struct._GimpStroke* %21, null
  br i1 %tobool23, label %if.then.24, label %if.else

if.then.24:                                       ; preds = %if.then
  %22 = bitcast %struct._GimpCoords* %coord0 to i8*
  call void @llvm.memset.p0i8.i64(i8* %22, i8 0, i64 64, i32 8, i1 false)
  %23 = bitcast i8* %22 to %struct._GimpCoords*
  %24 = getelementptr %struct._GimpCoords, %struct._GimpCoords* %23, i32 0, i32 2
  store double 1.000000e+00, double* %24
  %25 = getelementptr %struct._GimpCoords, %struct._GimpCoords* %23, i32 0, i32 5
  store double 5.000000e-01, double* %25
  %26 = bitcast %struct._GimpCoords* %coord1 to i8*
  call void @llvm.memset.p0i8.i64(i8* %26, i8 0, i64 64, i32 8, i1 false)
  %27 = bitcast i8* %26 to %struct._GimpCoords*
  %28 = getelementptr %struct._GimpCoords, %struct._GimpCoords* %27, i32 0, i32 2
  store double 1.000000e+00, double* %28
  %29 = getelementptr %struct._GimpCoords, %struct._GimpCoords* %27, i32 0, i32 5
  store double 5.000000e-01, double* %29
  %30 = bitcast %struct._GimpCoords* %coord2 to i8*
  call void @llvm.memset.p0i8.i64(i8* %30, i8 0, i64 64, i32 8, i1 false)
  %31 = bitcast i8* %30 to %struct._GimpCoords*
  %32 = getelementptr %struct._GimpCoords, %struct._GimpCoords* %31, i32 0, i32 2
  store double 1.000000e+00, double* %32
  %33 = getelementptr %struct._GimpCoords, %struct._GimpCoords* %31, i32 0, i32 5
  store double 5.000000e-01, double* %33
  %34 = load double, double* %x0, align 8
  %x = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %coord0, i32 0, i32 0
  store double %34, double* %x, align 8
  %35 = load double, double* %y0, align 8
  %y = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %coord0, i32 0, i32 1
  store double %35, double* %y, align 8
  %36 = load double, double* %x1, align 8
  %x25 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %coord1, i32 0, i32 0
  store double %36, double* %x25, align 8
  %37 = load double, double* %y1, align 8
  %y26 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %coord1, i32 0, i32 1
  store double %37, double* %y26, align 8
  %38 = load double, double* %x2, align 8
  %x27 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %coord2, i32 0, i32 0
  store double %38, double* %x27, align 8
  %39 = load double, double* %y2, align 8
  %y28 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %coord2, i32 0, i32 1
  store double %39, double* %y28, align 8
  %40 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %41 = bitcast %struct._GimpVectors* %40 to %struct._GTypeInstance*
  %call29 = call i64 @gimp_item_get_type() #6
  %call30 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %41, i64 %call29)
  %42 = bitcast %struct._GTypeInstance* %call30 to %struct._GimpItem*
  %call31 = call i32 @gimp_item_is_attached(%struct._GimpItem* %42)
  %tobool32 = icmp ne i32 %call31, 0
  br i1 %tobool32, label %if.then.33, label %if.end

if.then.33:                                       ; preds = %if.then.24
  %43 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %44 = bitcast %struct._GimpVectors* %43 to %struct._GTypeInstance*
  %call34 = call i64 @gimp_item_get_type() #6
  %call35 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %44, i64 %call34)
  %45 = bitcast %struct._GTypeInstance* %call35 to %struct._GimpItem*
  %call36 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %45)
  %call37 = call i8* @gettext(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.236, i32 0, i32 0)) #5
  %46 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %call38 = call %struct._GimpUndo* @gimp_image_undo_push_vectors_mod(%struct._GimpImage* %call36, i8* %call37, %struct._GimpVectors* %46)
  br label %if.end

if.end:                                           ; preds = %if.then.33, %if.then.24
  %47 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  call void @gimp_vectors_freeze(%struct._GimpVectors* %47)
  %48 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke, align 8
  call void @gimp_bezier_stroke_cubicto(%struct._GimpStroke* %48, %struct._GimpCoords* %coord0, %struct._GimpCoords* %coord1, %struct._GimpCoords* %coord2)
  %49 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  call void @gimp_vectors_thaw(%struct._GimpVectors* %49)
  br label %if.end.39

if.else:                                          ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end.39

if.end.39:                                        ; preds = %if.else, %if.end
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39, %entry
  %50 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %51 = load i32, i32* %success, align 4
  %52 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool41 = icmp ne %struct._GError** %52, null
  br i1 %tobool41, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.40
  %53 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %54 = load %struct._GError*, %struct._GError** %53, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.40
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %54, %cond.true ], [ null, %cond.false ]
  %call42 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %50, i32 %51, %struct._GError* %cond)
  ret %struct._GValueArray* %call42
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @vectors_bezier_stroke_new_ellipse_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %return_vals = alloca %struct._GValueArray*, align 8
  %vectors = alloca %struct._GimpVectors*, align 8
  %x0 = alloca double, align 8
  %y0 = alloca double, align 8
  %radius_x = alloca double, align 8
  %radius_y = alloca double, align 8
  %angle = alloca double, align 8
  %stroke_id = alloca i32, align 4
  %stroke = alloca %struct._GimpStroke*, align 8
  %coord0 = alloca %struct._GimpCoords, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store i32 0, i32* %stroke_id, align 4
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %2 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call = call %struct._GimpVectors* @gimp_value_get_vectors(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpVectors* %call, %struct._GimpVectors** %vectors, align 8
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
  store double %call9, double* %radius_x, align 8
  %9 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values10 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %9, i32 0, i32 1
  %10 = load %struct._GValue*, %struct._GValue** %values10, align 8
  %arrayidx11 = getelementptr inbounds %struct._GValue, %struct._GValue* %10, i64 4
  %call12 = call double @g_value_get_double(%struct._GValue* %arrayidx11)
  store double %call12, double* %radius_y, align 8
  %11 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values13 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %11, i32 0, i32 1
  %12 = load %struct._GValue*, %struct._GValue** %values13, align 8
  %arrayidx14 = getelementptr inbounds %struct._GValue, %struct._GValue* %12, i64 5
  %call15 = call double @g_value_get_double(%struct._GValue* %arrayidx14)
  store double %call15, double* %angle, align 8
  %13 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %13, 0
  br i1 %tobool, label %if.then, label %if.end.38

if.then:                                          ; preds = %entry
  %14 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %15 = bitcast %struct._GimpVectors* %14 to %struct._GTypeInstance*
  %call16 = call i64 @gimp_item_get_type() #6
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call16)
  %16 = bitcast %struct._GTypeInstance* %call17 to %struct._GimpItem*
  %17 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call18 = call i32 @gimp_pdb_item_is_writable(%struct._GimpItem* %16, %struct._GError** %17)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %18 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %19 = bitcast %struct._GimpVectors* %18 to %struct._GTypeInstance*
  %call20 = call i64 @gimp_item_get_type() #6
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call20)
  %20 = bitcast %struct._GTypeInstance* %call21 to %struct._GimpItem*
  %21 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call22 = call i32 @gimp_pdb_item_is_not_group(%struct._GimpItem* %20, %struct._GError** %21)
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %if.then.24, label %if.else

if.then.24:                                       ; preds = %land.lhs.true
  %22 = bitcast %struct._GimpCoords* %coord0 to i8*
  call void @llvm.memset.p0i8.i64(i8* %22, i8 0, i64 64, i32 8, i1 false)
  %23 = bitcast i8* %22 to %struct._GimpCoords*
  %24 = getelementptr %struct._GimpCoords, %struct._GimpCoords* %23, i32 0, i32 2
  store double 1.000000e+00, double* %24
  %25 = getelementptr %struct._GimpCoords, %struct._GimpCoords* %23, i32 0, i32 5
  store double 5.000000e-01, double* %25
  %26 = load double, double* %x0, align 8
  %x = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %coord0, i32 0, i32 0
  store double %26, double* %x, align 8
  %27 = load double, double* %y0, align 8
  %y = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %coord0, i32 0, i32 1
  store double %27, double* %y, align 8
  %28 = load double, double* %radius_x, align 8
  %29 = load double, double* %radius_y, align 8
  %30 = load double, double* %angle, align 8
  %call25 = call %struct._GimpStroke* @gimp_bezier_stroke_new_ellipse(%struct._GimpCoords* %coord0, double %28, double %29, double %30)
  store %struct._GimpStroke* %call25, %struct._GimpStroke** %stroke, align 8
  %31 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %32 = bitcast %struct._GimpVectors* %31 to %struct._GTypeInstance*
  %call26 = call i64 @gimp_item_get_type() #6
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %32, i64 %call26)
  %33 = bitcast %struct._GTypeInstance* %call27 to %struct._GimpItem*
  %call28 = call i32 @gimp_item_is_attached(%struct._GimpItem* %33)
  %tobool29 = icmp ne i32 %call28, 0
  br i1 %tobool29, label %if.then.30, label %if.end

if.then.30:                                       ; preds = %if.then.24
  %34 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %35 = bitcast %struct._GimpVectors* %34 to %struct._GTypeInstance*
  %call31 = call i64 @gimp_item_get_type() #6
  %call32 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %35, i64 %call31)
  %36 = bitcast %struct._GTypeInstance* %call32 to %struct._GimpItem*
  %call33 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %36)
  %call34 = call i8* @gettext(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.235, i32 0, i32 0)) #5
  %37 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %call35 = call %struct._GimpUndo* @gimp_image_undo_push_vectors_mod(%struct._GimpImage* %call33, i8* %call34, %struct._GimpVectors* %37)
  br label %if.end

if.end:                                           ; preds = %if.then.30, %if.then.24
  %38 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %39 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke, align 8
  call void @gimp_vectors_stroke_add(%struct._GimpVectors* %38, %struct._GimpStroke* %39)
  %40 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke, align 8
  %41 = bitcast %struct._GimpStroke* %40 to i8*
  call void @g_object_unref(i8* %41)
  %42 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke, align 8
  %call36 = call i32 @gimp_stroke_get_ID(%struct._GimpStroke* %42)
  store i32 %call36, i32* %stroke_id, align 4
  br label %if.end.37

if.else:                                          ; preds = %land.lhs.true, %if.then
  store i32 0, i32* %success, align 4
  br label %if.end.37

if.end.37:                                        ; preds = %if.else, %if.end
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
  store %struct._GValueArray* %call40, %struct._GValueArray** %return_vals, align 8
  %48 = load i32, i32* %success, align 4
  %tobool41 = icmp ne i32 %48, 0
  br i1 %tobool41, label %if.then.42, label %if.end.45

if.then.42:                                       ; preds = %cond.end
  %49 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values43 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %49, i32 0, i32 1
  %50 = load %struct._GValue*, %struct._GValue** %values43, align 8
  %arrayidx44 = getelementptr inbounds %struct._GValue, %struct._GValue* %50, i64 1
  %51 = load i32, i32* %stroke_id, align 4
  call void @g_value_set_int(%struct._GValue* %arrayidx44, i32 %51)
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.42, %cond.end
  %52 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %52
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @vectors_to_selection_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %vectors = alloca %struct._GimpVectors*, align 8
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
  %call = call %struct._GimpVectors* @gimp_value_get_vectors(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpVectors* %call, %struct._GimpVectors** %vectors, align 8
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
  %call6 = call i32 @g_value_get_boolean(%struct._GValue* %arrayidx5)
  store i32 %call6, i32* %antialias, align 4
  %7 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values7 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %7, i32 0, i32 1
  %8 = load %struct._GValue*, %struct._GValue** %values7, align 8
  %arrayidx8 = getelementptr inbounds %struct._GValue, %struct._GValue* %8, i64 3
  %call9 = call i32 @g_value_get_boolean(%struct._GValue* %arrayidx8)
  store i32 %call9, i32* %feather, align 4
  %9 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values10 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %9, i32 0, i32 1
  %10 = load %struct._GValue*, %struct._GValue** %values10, align 8
  %arrayidx11 = getelementptr inbounds %struct._GValue, %struct._GValue* %10, i64 4
  %call12 = call double @g_value_get_double(%struct._GValue* %arrayidx11)
  store double %call12, double* %feather_radius_x, align 8
  %11 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values13 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %11, i32 0, i32 1
  %12 = load %struct._GValue*, %struct._GValue** %values13, align 8
  %arrayidx14 = getelementptr inbounds %struct._GValue, %struct._GValue* %12, i64 5
  %call15 = call double @g_value_get_double(%struct._GValue* %arrayidx14)
  store double %call15, double* %feather_radius_y, align 8
  %13 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %13, 0
  br i1 %tobool, label %if.then, label %if.end.23

if.then:                                          ; preds = %entry
  %14 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %15 = bitcast %struct._GimpVectors* %14 to %struct._GTypeInstance*
  %call16 = call i64 @gimp_item_get_type() #6
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call16)
  %16 = bitcast %struct._GTypeInstance* %call17 to %struct._GimpItem*
  %17 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call18 = call i32 @gimp_pdb_item_is_attached(%struct._GimpItem* %16, %struct._GimpImage* null, i32 0, %struct._GError** %17)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.then.20, label %if.else

if.then.20:                                       ; preds = %if.then
  %18 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %19 = bitcast %struct._GimpVectors* %18 to %struct._GTypeInstance*
  %call21 = call i64 @gimp_item_get_type() #6
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call21)
  %20 = bitcast %struct._GTypeInstance* %call22 to %struct._GimpItem*
  %21 = load i32, i32* %operation, align 4
  %22 = load i32, i32* %antialias, align 4
  %23 = load i32, i32* %feather, align 4
  %24 = load double, double* %feather_radius_x, align 8
  %25 = load double, double* %feather_radius_y, align 8
  call void @gimp_item_to_selection(%struct._GimpItem* %20, i32 %21, i32 %22, i32 %23, double %24, double %25)
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.20
  br label %if.end.23

if.end.23:                                        ; preds = %if.end, %entry
  %26 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %27 = load i32, i32* %success, align 4
  %28 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool24 = icmp ne %struct._GError** %28, null
  br i1 %tobool24, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.23
  %29 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %30 = load %struct._GError*, %struct._GError** %29, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.23
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %30, %cond.true ], [ null, %cond.false ]
  %call25 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %26, i32 %27, %struct._GError* %cond)
  ret %struct._GValueArray* %call25
}

; Function Attrs: nounwind readnone
declare i64 @gimp_channel_ops_get_type() #2

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @vectors_import_from_file_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  %filename = alloca i8*, align 8
  %merge = alloca i32, align 4
  %scale = alloca i32, align 4
  %num_vectors = alloca i32, align 4
  %vectors_ids = alloca i32*, align 8
  %list = alloca %struct._GList*, align 8
  %vectors_list = alloca %struct._GList*, align 8
  %i = alloca i32, align 4
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store i32 0, i32* %num_vectors, align 4
  store i32* null, i32** %vectors_ids, align 8
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
  br i1 %tobool, label %if.then, label %if.end.24

if.then:                                          ; preds = %entry
  store %struct._GList* null, %struct._GList** %vectors_list, align 8
  %10 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %11 = load i8*, i8** %filename, align 8
  %12 = load i32, i32* %merge, align 4
  %13 = load i32, i32* %scale, align 4
  %14 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call10 = call i32 @gimp_vectors_import_file(%struct._GimpImage* %10, i8* %11, i32 %12, i32 %13, %struct._GimpVectors* null, i32 -1, %struct._GList** %vectors_list, %struct._GError** %14)
  store i32 %call10, i32* %success, align 4
  %15 = load i32, i32* %success, align 4
  %tobool11 = icmp ne i32 %15, 0
  br i1 %tobool11, label %if.then.12, label %if.end.23

if.then.12:                                       ; preds = %if.then
  %16 = load %struct._GList*, %struct._GList** %vectors_list, align 8
  %call13 = call i32 @g_list_length(%struct._GList* %16)
  store i32 %call13, i32* %num_vectors, align 4
  %17 = load i32, i32* %num_vectors, align 4
  %tobool14 = icmp ne i32 %17, 0
  br i1 %tobool14, label %if.then.15, label %if.end

if.then.15:                                       ; preds = %if.then.12
  %18 = load i32, i32* %num_vectors, align 4
  %conv = sext i32 %18 to i64
  %call16 = call noalias i8* @g_malloc_n(i64 %conv, i64 4)
  %19 = bitcast i8* %call16 to i32*
  store i32* %19, i32** %vectors_ids, align 8
  %20 = load %struct._GList*, %struct._GList** %vectors_list, align 8
  store %struct._GList* %20, %struct._GList** %list, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %if.then.15
  %21 = load i32, i32* %i, align 4
  %22 = load i32, i32* %num_vectors, align 4
  %cmp = icmp slt i32 %21, %22
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %23 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %23, i32 0, i32 0
  %24 = load i8*, i8** %data, align 8
  %25 = bitcast i8* %24 to %struct._GTypeInstance*
  %call18 = call i64 @gimp_item_get_type() #6
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call18)
  %26 = bitcast %struct._GTypeInstance* %call19 to %struct._GimpItem*
  %call20 = call i32 @gimp_item_get_ID(%struct._GimpItem* %26)
  %27 = load i32, i32* %i, align 4
  %idxprom = sext i32 %27 to i64
  %28 = load i32*, i32** %vectors_ids, align 8
  %arrayidx21 = getelementptr inbounds i32, i32* %28, i64 %idxprom
  store i32 %call20, i32* %arrayidx21, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %29 = load i32, i32* %i, align 4
  %inc = add nsw i32 %29, 1
  store i32 %inc, i32* %i, align 4
  %30 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool22 = icmp ne %struct._GList* %30, null
  br i1 %tobool22, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %31 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %31, i32 0, i32 1
  %32 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %32, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %33 = load %struct._GList*, %struct._GList** %vectors_list, align 8
  call void @g_list_free(%struct._GList* %33)
  br label %if.end

if.end:                                           ; preds = %for.end, %if.then.12
  br label %if.end.23

if.end.23:                                        ; preds = %if.end, %if.then
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %entry
  %34 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %35 = load i32, i32* %success, align 4
  %36 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool25 = icmp ne %struct._GError** %36, null
  br i1 %tobool25, label %cond.true.26, label %cond.false.27

cond.true.26:                                     ; preds = %if.end.24
  %37 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %38 = load %struct._GError*, %struct._GError** %37, align 8
  br label %cond.end.28

cond.false.27:                                    ; preds = %if.end.24
  br label %cond.end.28

cond.end.28:                                      ; preds = %cond.false.27, %cond.true.26
  %cond29 = phi %struct._GError* [ %38, %cond.true.26 ], [ null, %cond.false.27 ]
  %call30 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %34, i32 %35, %struct._GError* %cond29)
  store %struct._GValueArray* %call30, %struct._GValueArray** %return_vals, align 8
  %39 = load i32, i32* %success, align 4
  %tobool31 = icmp ne i32 %39, 0
  br i1 %tobool31, label %if.then.32, label %if.end.38

if.then.32:                                       ; preds = %cond.end.28
  %40 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values33 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %40, i32 0, i32 1
  %41 = load %struct._GValue*, %struct._GValue** %values33, align 8
  %arrayidx34 = getelementptr inbounds %struct._GValue, %struct._GValue* %41, i64 1
  %42 = load i32, i32* %num_vectors, align 4
  call void @g_value_set_int(%struct._GValue* %arrayidx34, i32 %42)
  %43 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values35 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %43, i32 0, i32 1
  %44 = load %struct._GValue*, %struct._GValue** %values35, align 8
  %arrayidx36 = getelementptr inbounds %struct._GValue, %struct._GValue* %44, i64 2
  %45 = load i32*, i32** %vectors_ids, align 8
  %46 = load i32, i32* %num_vectors, align 4
  %conv37 = sext i32 %46 to i64
  call void @gimp_value_take_int32array(%struct._GValue* %arrayidx36, i32* %45, i64 %conv37)
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.32, %cond.end.28
  %47 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %47
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @vectors_import_from_string_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  %string = alloca i8*, align 8
  %length = alloca i32, align 4
  %merge = alloca i32, align 4
  %scale = alloca i32, align 4
  %num_vectors = alloca i32, align 4
  %vectors_ids = alloca i32*, align 8
  %list = alloca %struct._GList*, align 8
  %vectors_list = alloca %struct._GList*, align 8
  %i = alloca i32, align 4
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store i32 0, i32* %num_vectors, align 4
  store i32* null, i32** %vectors_ids, align 8
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
  store i8* %call3, i8** %string, align 8
  %5 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values4 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %5, i32 0, i32 1
  %6 = load %struct._GValue*, %struct._GValue** %values4, align 8
  %arrayidx5 = getelementptr inbounds %struct._GValue, %struct._GValue* %6, i64 2
  %call6 = call i32 @g_value_get_int(%struct._GValue* %arrayidx5)
  store i32 %call6, i32* %length, align 4
  %7 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values7 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %7, i32 0, i32 1
  %8 = load %struct._GValue*, %struct._GValue** %values7, align 8
  %arrayidx8 = getelementptr inbounds %struct._GValue, %struct._GValue* %8, i64 3
  %call9 = call i32 @g_value_get_boolean(%struct._GValue* %arrayidx8)
  store i32 %call9, i32* %merge, align 4
  %9 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values10 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %9, i32 0, i32 1
  %10 = load %struct._GValue*, %struct._GValue** %values10, align 8
  %arrayidx11 = getelementptr inbounds %struct._GValue, %struct._GValue* %10, i64 4
  %call12 = call i32 @g_value_get_boolean(%struct._GValue* %arrayidx11)
  store i32 %call12, i32* %scale, align 4
  %11 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %if.then, label %if.end.28

if.then:                                          ; preds = %entry
  store %struct._GList* null, %struct._GList** %vectors_list, align 8
  %12 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %13 = load i8*, i8** %string, align 8
  %14 = load i32, i32* %length, align 4
  %conv = sext i32 %14 to i64
  %15 = load i32, i32* %merge, align 4
  %16 = load i32, i32* %scale, align 4
  %17 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call13 = call i32 @gimp_vectors_import_buffer(%struct._GimpImage* %12, i8* %13, i64 %conv, i32 %15, i32 %16, %struct._GimpVectors* null, i32 -1, %struct._GList** %vectors_list, %struct._GError** %17)
  store i32 %call13, i32* %success, align 4
  %18 = load i32, i32* %success, align 4
  %tobool14 = icmp ne i32 %18, 0
  br i1 %tobool14, label %if.then.15, label %if.end.27

if.then.15:                                       ; preds = %if.then
  %19 = load %struct._GList*, %struct._GList** %vectors_list, align 8
  %call16 = call i32 @g_list_length(%struct._GList* %19)
  store i32 %call16, i32* %num_vectors, align 4
  %20 = load i32, i32* %num_vectors, align 4
  %tobool17 = icmp ne i32 %20, 0
  br i1 %tobool17, label %if.then.18, label %if.end

if.then.18:                                       ; preds = %if.then.15
  %21 = load i32, i32* %num_vectors, align 4
  %conv19 = sext i32 %21 to i64
  %call20 = call noalias i8* @g_malloc_n(i64 %conv19, i64 4)
  %22 = bitcast i8* %call20 to i32*
  store i32* %22, i32** %vectors_ids, align 8
  %23 = load %struct._GList*, %struct._GList** %vectors_list, align 8
  store %struct._GList* %23, %struct._GList** %list, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %if.then.18
  %24 = load i32, i32* %i, align 4
  %25 = load i32, i32* %num_vectors, align 4
  %cmp = icmp slt i32 %24, %25
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %26 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %26, i32 0, i32 0
  %27 = load i8*, i8** %data, align 8
  %28 = bitcast i8* %27 to %struct._GTypeInstance*
  %call22 = call i64 @gimp_item_get_type() #6
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call22)
  %29 = bitcast %struct._GTypeInstance* %call23 to %struct._GimpItem*
  %call24 = call i32 @gimp_item_get_ID(%struct._GimpItem* %29)
  %30 = load i32, i32* %i, align 4
  %idxprom = sext i32 %30 to i64
  %31 = load i32*, i32** %vectors_ids, align 8
  %arrayidx25 = getelementptr inbounds i32, i32* %31, i64 %idxprom
  store i32 %call24, i32* %arrayidx25, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %32 = load i32, i32* %i, align 4
  %inc = add nsw i32 %32, 1
  store i32 %inc, i32* %i, align 4
  %33 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool26 = icmp ne %struct._GList* %33, null
  br i1 %tobool26, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %34 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %34, i32 0, i32 1
  %35 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %35, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %36 = load %struct._GList*, %struct._GList** %vectors_list, align 8
  call void @g_list_free(%struct._GList* %36)
  br label %if.end

if.end:                                           ; preds = %for.end, %if.then.15
  br label %if.end.27

if.end.27:                                        ; preds = %if.end, %if.then
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %entry
  %37 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %38 = load i32, i32* %success, align 4
  %39 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool29 = icmp ne %struct._GError** %39, null
  br i1 %tobool29, label %cond.true.30, label %cond.false.31

cond.true.30:                                     ; preds = %if.end.28
  %40 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %41 = load %struct._GError*, %struct._GError** %40, align 8
  br label %cond.end.32

cond.false.31:                                    ; preds = %if.end.28
  br label %cond.end.32

cond.end.32:                                      ; preds = %cond.false.31, %cond.true.30
  %cond33 = phi %struct._GError* [ %41, %cond.true.30 ], [ null, %cond.false.31 ]
  %call34 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %37, i32 %38, %struct._GError* %cond33)
  store %struct._GValueArray* %call34, %struct._GValueArray** %return_vals, align 8
  %42 = load i32, i32* %success, align 4
  %tobool35 = icmp ne i32 %42, 0
  br i1 %tobool35, label %if.then.36, label %if.end.42

if.then.36:                                       ; preds = %cond.end.32
  %43 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values37 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %43, i32 0, i32 1
  %44 = load %struct._GValue*, %struct._GValue** %values37, align 8
  %arrayidx38 = getelementptr inbounds %struct._GValue, %struct._GValue* %44, i64 1
  %45 = load i32, i32* %num_vectors, align 4
  call void @g_value_set_int(%struct._GValue* %arrayidx38, i32 %45)
  %46 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values39 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %46, i32 0, i32 1
  %47 = load %struct._GValue*, %struct._GValue** %values39, align 8
  %arrayidx40 = getelementptr inbounds %struct._GValue, %struct._GValue* %47, i64 2
  %48 = load i32*, i32** %vectors_ids, align 8
  %49 = load i32, i32* %num_vectors, align 4
  %conv41 = sext i32 %49 to i64
  call void @gimp_value_take_int32array(%struct._GValue* %arrayidx40, i32* %48, i64 %conv41)
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.36, %cond.end.32
  %50 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %50
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @vectors_export_to_file_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  store i8* %call3, i8** %filename, align 8
  %5 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values4 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %5, i32 0, i32 1
  %6 = load %struct._GValue*, %struct._GValue** %values4, align 8
  %arrayidx5 = getelementptr inbounds %struct._GValue, %struct._GValue* %6, i64 2
  %7 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call6 = call %struct._GimpVectors* @gimp_value_get_vectors(%struct._GValue* %arrayidx5, %struct._Gimp* %7)
  store %struct._GimpVectors* %call6, %struct._GimpVectors** %vectors, align 8
  %8 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %10 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %11 = load i8*, i8** %filename, align 8
  %12 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call7 = call i32 @gimp_vectors_export_file(%struct._GimpImage* %9, %struct._GimpVectors* %10, i8* %11, %struct._GError** %12)
  store i32 %call7, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %13 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %14 = load i32, i32* %success, align 4
  %15 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool8 = icmp ne %struct._GError** %15, null
  br i1 %tobool8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %16 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %17 = load %struct._GError*, %struct._GError** %16, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %17, %cond.true ], [ null, %cond.false ]
  %call9 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %13, i32 %14, %struct._GError* %cond)
  ret %struct._GValueArray* %call9
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @vectors_export_to_string_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  %vectors = alloca %struct._GimpVectors*, align 8
  %string = alloca i8*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store i8* null, i8** %string, align 8
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
  %call3 = call %struct._GimpVectors* @gimp_value_get_vectors(%struct._GValue* %arrayidx2, %struct._Gimp* %5)
  store %struct._GimpVectors* %call3, %struct._GimpVectors** %vectors, align 8
  %6 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %8 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %call4 = call i8* @gimp_vectors_export_string(%struct._GimpImage* %7, %struct._GimpVectors* %8)
  store i8* %call4, i8** %string, align 8
  %9 = load i8*, i8** %string, align 8
  %cmp = icmp ne i8* %9, null
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %11 = load i32, i32* %success, align 4
  %12 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool5 = icmp ne %struct._GError** %12, null
  br i1 %tobool5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %13 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %14 = load %struct._GError*, %struct._GError** %13, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %14, %cond.true ], [ null, %cond.false ]
  %call6 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %10, i32 %11, %struct._GError* %cond)
  store %struct._GValueArray* %call6, %struct._GValueArray** %return_vals, align 8
  %15 = load i32, i32* %success, align 4
  %tobool7 = icmp ne i32 %15, 0
  br i1 %tobool7, label %if.then.8, label %if.end.11

if.then.8:                                        ; preds = %cond.end
  %16 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values9 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %16, i32 0, i32 1
  %17 = load %struct._GValue*, %struct._GValue** %values9, align 8
  %arrayidx10 = getelementptr inbounds %struct._GValue, %struct._GValue* %17, i64 1
  %18 = load i8*, i8** %string, align 8
  call void @g_value_take_string(%struct._GValue* %arrayidx10, i8* %18)
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.8, %cond.end
  %19 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %19
}

declare %struct._GimpImage* @gimp_value_get_image(%struct._GValue*, %struct._Gimp*) #1

declare i8* @g_value_get_string(%struct._GValue*) #1

declare %struct._GimpVectors* @gimp_vectors_new(%struct._GimpImage*, i8*) #1

declare %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure*, i32, %struct._GError*) #1

declare void @gimp_value_set_vectors(%struct._GValue*, %struct._GimpVectors*) #1

declare %struct._GimpLayer* @gimp_value_get_layer(%struct._GValue*, %struct._Gimp*) #1

declare i32 @gimp_pdb_layer_is_text_layer(%struct._GimpLayer*, i32, %struct._GError**) #1

declare %struct._GimpVectors* @gimp_text_vectors_new(%struct._GimpImage*, %struct._GimpText*) #1

declare %struct._GimpText* @gimp_text_layer_get_text(%struct._GimpTextLayer*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_text_layer_get_type() #2

declare void @gimp_item_get_offset(%struct._GimpItem*, i32*, i32*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_item_get_type() #2

declare void @gimp_item_translate(%struct._GimpItem*, i32, i32, i32) #1

declare %struct._GimpVectors* @gimp_value_get_vectors(%struct._GValue*, %struct._Gimp*) #1

declare %struct._GimpItem* @gimp_item_duplicate(%struct._GimpItem*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_vectors_get_type() #2

declare i32 @gimp_vectors_get_n_strokes(%struct._GimpVectors*) #1

declare noalias i8* @g_malloc_n(i64, i64) #1

declare %struct._GimpStroke* @gimp_vectors_stroke_get_next(%struct._GimpVectors*, %struct._GimpStroke*) #1

declare i32 @gimp_stroke_get_ID(%struct._GimpStroke*) #1

declare void @g_value_set_int(%struct._GValue*, i32) #1

declare void @gimp_value_take_int32array(%struct._GValue*, i32*, i64) #1

declare i32 @g_value_get_int(%struct._GValue*) #1

declare double @g_value_get_double(%struct._GValue*) #1

declare %struct._GimpStroke* @gimp_pdb_get_vectors_stroke(%struct._GimpVectors*, i32, i32, %struct._GError**) #1

declare double @gimp_stroke_get_length(%struct._GimpStroke*, double) #1

declare void @g_value_set_double(%struct._GValue*, double) #1

declare i32 @gimp_stroke_get_point_at_dist(%struct._GimpStroke*, double, double, %struct._GimpCoords*, double*) #1

declare void @g_value_set_boolean(%struct._GValue*, i32) #1

declare i32 @gimp_item_is_attached(%struct._GimpItem*) #1

declare %struct._GimpUndo* @gimp_image_undo_push_vectors_mod(%struct._GimpImage*, i8*, %struct._GimpVectors*) #1

declare %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #3

declare void @gimp_vectors_stroke_remove(%struct._GimpVectors*, %struct._GimpStroke*) #1

declare void @gimp_vectors_freeze(%struct._GimpVectors*) #1

declare void @gimp_stroke_close(%struct._GimpStroke*) #1

declare void @gimp_vectors_thaw(%struct._GimpVectors*) #1

declare void @gimp_stroke_translate(%struct._GimpStroke*, double, double) #1

declare void @gimp_stroke_scale(%struct._GimpStroke*, double, double) #1

declare void @gimp_stroke_rotate(%struct._GimpStroke*, double, double, double) #1

declare i32 @g_value_get_enum(%struct._GValue*) #1

declare void @gimp_stroke_flip(%struct._GimpStroke*, i32, double) #1

declare void @gimp_stroke_flip_free(%struct._GimpStroke*, double, double, double, double) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_bezier_stroke_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare %struct._GArray* @gimp_stroke_control_points_get(%struct._GimpStroke*, i32*) #1

declare i8* @g_array_free(%struct._GArray*, i32) #1

declare void @g_value_set_enum(%struct._GValue*, i32) #1

declare void @gimp_value_take_floatarray(%struct._GValue*, double*, i64) #1

declare double* @gimp_value_get_floatarray(%struct._GValue*) #1

declare i32 @g_value_get_boolean(%struct._GValue*) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #5

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #5

declare %struct._GimpStroke* @gimp_stroke_new_from_coords(i32, %struct._GimpCoords*, i32, i32) #1

declare void @gimp_vectors_stroke_add(%struct._GimpVectors*, %struct._GimpStroke*) #1

declare void @g_free(i8*) #1

declare %struct._GArray* @gimp_stroke_interpolate(%struct._GimpStroke*, double, i32*) #1

declare i32 @gimp_pdb_item_is_writable(%struct._GimpItem*, %struct._GError**) #1

declare i32 @gimp_pdb_item_is_not_group(%struct._GimpItem*, %struct._GError**) #1

declare %struct._GimpStroke* @gimp_bezier_stroke_new_moveto(%struct._GimpCoords*) #1

declare void @gimp_bezier_stroke_lineto(%struct._GimpStroke*, %struct._GimpCoords*) #1

declare void @gimp_bezier_stroke_conicto(%struct._GimpStroke*, %struct._GimpCoords*, %struct._GimpCoords*) #1

declare void @gimp_bezier_stroke_cubicto(%struct._GimpStroke*, %struct._GimpCoords*, %struct._GimpCoords*, %struct._GimpCoords*) #1

declare %struct._GimpStroke* @gimp_bezier_stroke_new_ellipse(%struct._GimpCoords*, double, double, double) #1

declare i32 @gimp_pdb_item_is_attached(%struct._GimpItem*, %struct._GimpImage*, i32, %struct._GError**) #1

declare void @gimp_item_to_selection(%struct._GimpItem*, i32, i32, i32, double, double) #1

declare i32 @gimp_vectors_import_file(%struct._GimpImage*, i8*, i32, i32, %struct._GimpVectors*, i32, %struct._GList**, %struct._GError**) #1

declare i32 @g_list_length(%struct._GList*) #1

declare i32 @gimp_item_get_ID(%struct._GimpItem*) #1

declare void @g_list_free(%struct._GList*) #1

declare i32 @gimp_vectors_import_buffer(%struct._GimpImage*, i8*, i64, i32, i32, %struct._GimpVectors*, i32, %struct._GList**, %struct._GError**) #1

declare i32 @gimp_vectors_export_file(%struct._GimpImage*, %struct._GimpVectors*, i8*, %struct._GError**) #1

declare i8* @gimp_vectors_export_string(%struct._GimpImage*, %struct._GimpVectors*) #1

declare void @g_value_take_string(%struct._GValue*, i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
