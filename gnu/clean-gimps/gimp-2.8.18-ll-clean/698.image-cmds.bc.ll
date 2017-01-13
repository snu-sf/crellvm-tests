; ModuleID = './app/pdb/image-cmds.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpRGB = type { double, double, double, double }
%struct._GimpPDB = type { %struct._GimpObject, %struct._Gimp*, %struct._GHashTable*, %struct._GHashTable* }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GimpObjectPrivate = type opaque
%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
%struct._GimpCoreConfig = type opaque
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
%struct._GimpContainer = type { %struct._GimpObject, %struct._GimpContainerPriv* }
%struct._GimpContainerPriv = type opaque
%struct._GimpTemplate = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpContext = type { %struct._GimpViewable, %struct._Gimp*, %struct._GimpContext*, i32, i32, %struct._GimpImage*, i8*, %struct._GimpToolInfo*, i8*, %struct._GimpPaintInfo*, i8*, %struct._GimpRGB, %struct._GimpRGB, double, i32, %struct._GimpBrush*, i8*, %struct._GimpDynamics*, i8*, %struct._GimpPattern*, i8*, %struct._GimpGradient*, i8*, %struct._GimpPalette*, i8*, %struct._GimpToolPreset*, i8*, %struct._GimpFont*, i8*, %struct._GimpBuffer*, i8*, %struct._GimpImagefile*, i8*, %struct._GimpTemplate*, i8* }
%struct._GimpBrush = type opaque
%struct._GimpDynamics = type opaque
%struct._GimpPattern = type opaque
%struct._GimpGradient = type opaque
%struct._GimpPalette = type opaque
%struct._GimpToolPreset = type opaque
%struct._GimpFont = type opaque
%struct._GimpImagefile = type opaque
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
%struct._GimpPDBContext = type { %struct._GimpContext, i32, i32, double, double, i32, i32, double, i32, i32, i32, i32, i32, %struct._GimpContainer* }
%struct._GimpItem = type { %struct._GimpViewable }
%struct._GimpDrawable = type { %struct._GimpItem, %struct._GimpDrawablePrivate* }
%struct._GimpDrawablePrivate = type opaque
%struct._GimpChannel = type { %struct._GimpDrawable, %struct._GimpRGB, i32, %struct._GeglNode*, %struct._GeglNode*, %struct._GeglNode*, i32, %struct._BoundSeg*, %struct._BoundSeg*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GeglNode = type opaque
%struct._BoundSeg = type opaque
%struct._GimpLayer = type { %struct._GimpDrawable, double, i32, i32, %struct._GimpLayerMask*, %struct._GeglNode*, %struct.anon }
%struct._GimpLayerMask = type { %struct._GimpChannel, %struct._GimpLayer*, i32, i32, i32 }
%struct.anon = type { %struct._GimpDrawable*, i32, %struct._BoundSeg*, i32 }
%struct._GimpProjection = type opaque
%struct._GimpPickable = type opaque
%struct._GimpVectors = type { %struct._GimpItem, %struct._GList*, i32, i32, double, %struct.cairo_path*, i32, i32, double, double, double, double }
%struct.cairo_path = type { i32, %union._cairo_path_data_t*, i32 }
%union._cairo_path_data_t = type { %struct.anon.1 }
%struct.anon.1 = type { double, double }
%struct._TempBuf = type { i32, i32, i32, i32, i32, i8* }
%struct._GimpSelection = type { %struct._GimpChannel, i32 }
%struct._GimpParasite = type { i8*, i32, i32, i8* }

@.str = private unnamed_addr constant [20 x i8] c"gimp-image-is-valid\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Returns TRUE if the image is valid.\00", align 1
@.str.2 = private unnamed_addr constant [86 x i8] c"This procedure checks if the given image ID is valid and refers to an existing image.\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Sven Neumann <sven@gimp.org>\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"Sven Neumann\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"2007\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"The image to check\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"valid\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"Whether the image ID is valid\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"gimp-image-list\00", align 1
@.str.11 = private unnamed_addr constant [43 x i8] c"Returns the list of images currently open.\00", align 1
@.str.12 = private unnamed_addr constant [66 x i8] c"This procedure returns the list of images currently open in GIMP.\00", align 1
@.str.13 = private unnamed_addr constant [31 x i8] c"Spencer Kimball & Peter Mattis\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"1995-1996\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"num-images\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"num images\00", align 1
@.str.17 = private unnamed_addr constant [36 x i8] c"The number of images currently open\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"image-ids\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"image ids\00", align 1
@.str.20 = private unnamed_addr constant [34 x i8] c"The list of images currently open\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"gimp-image-new\00", align 1
@.str.22 = private unnamed_addr constant [64 x i8] c"Creates a new image with the specified width, height, and type.\00", align 1
@.str.23 = private unnamed_addr constant [356 x i8] c"Creates a new image, undisplayed with the specified extents and type. A layer should be created and added before this image is displayed, or subsequent calls to 'gimp-display-new' with this image as an argument will fail. Layers can be created using the 'gimp-layer-new' commands. They can be added to an image using the 'gimp-image-insert-layer' command.\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"width\00", align 1
@.str.25 = private unnamed_addr constant [23 x i8] c"The width of the image\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"height\00", align 1
@.str.27 = private unnamed_addr constant [24 x i8] c"The height of the image\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.29 = private unnamed_addr constant [18 x i8] c"The type of image\00", align 1
@.str.30 = private unnamed_addr constant [34 x i8] c"The ID of the newly created image\00", align 1
@.str.31 = private unnamed_addr constant [21 x i8] c"gimp-image-duplicate\00", align 1
@.str.32 = private unnamed_addr constant [30 x i8] c"Duplicate the specified image\00", align 1
@.str.33 = private unnamed_addr constant [100 x i8] c"This procedure duplicates the specified image, copying all layers, channels, and image information.\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"1997\00", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c"The image\00", align 1
@.str.36 = private unnamed_addr constant [10 x i8] c"new-image\00", align 1
@.str.37 = private unnamed_addr constant [10 x i8] c"new image\00", align 1
@.str.38 = private unnamed_addr constant [26 x i8] c"The new, duplicated image\00", align 1
@.str.39 = private unnamed_addr constant [18 x i8] c"gimp-image-delete\00", align 1
@.str.40 = private unnamed_addr constant [28 x i8] c"Delete the specified image.\00", align 1
@.str.41 = private unnamed_addr constant [348 x i8] c"If there are no displays associated with this image it will be deleted. This means that you can not delete an image through the PDB that was created by the user. If the associated display was however created through the PDB and you know the display ID, you may delete the display. Removal of the last associated display will then delete the image.\00", align 1
@.str.42 = private unnamed_addr constant [21 x i8] c"gimp-image-base-type\00", align 1
@.str.43 = private unnamed_addr constant [32 x i8] c"Get the base type of the image.\00", align 1
@.str.44 = private unnamed_addr constant [131 x i8] c"This procedure returns the image's base type. Layers in the image must be of this subtype, but can have an optional alpha channel.\00", align 1
@.str.45 = private unnamed_addr constant [10 x i8] c"base-type\00", align 1
@.str.46 = private unnamed_addr constant [10 x i8] c"base type\00", align 1
@.str.47 = private unnamed_addr constant [22 x i8] c"The image's base type\00", align 1
@.str.48 = private unnamed_addr constant [17 x i8] c"gimp-image-width\00", align 1
@.str.49 = private unnamed_addr constant [30 x i8] c"Return the width of the image\00", align 1
@.str.50 = private unnamed_addr constant [132 x i8] c"This procedure returns the image's width. This value is independent of any of the layers in this image. This is the \22canvas\22 width.\00", align 1
@.str.51 = private unnamed_addr constant [18 x i8] c"The image's width\00", align 1
@.str.52 = private unnamed_addr constant [18 x i8] c"gimp-image-height\00", align 1
@.str.53 = private unnamed_addr constant [31 x i8] c"Return the height of the image\00", align 1
@.str.54 = private unnamed_addr constant [134 x i8] c"This procedure returns the image's height. This value is independent of any of the layers in this image. This is the \22canvas\22 height.\00", align 1
@.str.55 = private unnamed_addr constant [19 x i8] c"The image's height\00", align 1
@.str.56 = private unnamed_addr constant [23 x i8] c"gimp-image-free-shadow\00", align 1
@.str.57 = private unnamed_addr constant [53 x i8] c"Deprecated: Use 'gimp-drawable-free-shadow' instead.\00", align 1
@.str.58 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.59 = private unnamed_addr constant [26 x i8] c"gimp-drawable-free-shadow\00", align 1
@.str.60 = private unnamed_addr constant [18 x i8] c"gimp-image-resize\00", align 1
@.str.61 = private unnamed_addr constant [43 x i8] c"Resize the image to the specified extents.\00", align 1
@.str.62 = private unnamed_addr constant [394 x i8] c"This procedure resizes the image so that it's new width and height are equal to the supplied parameters. Offsets are also provided which describe the position of the previous image's content. All channels within the image are resized according to the specified parameters; this includes the image selection mask. All layers within the image are repositioned according to the specified offsets.\00", align 1
@.str.63 = private unnamed_addr constant [10 x i8] c"new-width\00", align 1
@.str.64 = private unnamed_addr constant [10 x i8] c"new width\00", align 1
@.str.65 = private unnamed_addr constant [16 x i8] c"New image width\00", align 1
@.str.66 = private unnamed_addr constant [11 x i8] c"new-height\00", align 1
@.str.67 = private unnamed_addr constant [11 x i8] c"new height\00", align 1
@.str.68 = private unnamed_addr constant [17 x i8] c"New image height\00", align 1
@.str.69 = private unnamed_addr constant [5 x i8] c"offx\00", align 1
@.str.70 = private unnamed_addr constant [70 x i8] c"x offset between upper left corner of old and new images: (new - old)\00", align 1
@.str.71 = private unnamed_addr constant [5 x i8] c"offy\00", align 1
@.str.72 = private unnamed_addr constant [70 x i8] c"y offset between upper left corner of old and new images: (new - old)\00", align 1
@.str.73 = private unnamed_addr constant [28 x i8] c"gimp-image-resize-to-layers\00", align 1
@.str.74 = private unnamed_addr constant [36 x i8] c"Resize the image to fit all layers.\00", align 1
@.str.75 = private unnamed_addr constant [248 x i8] c"This procedure resizes the image to the bounding box of all layers of the image. All channels within the image are resized to the new size; this includes the image selection mask. All layers within the image are repositioned to the new image area.\00", align 1
@.str.76 = private unnamed_addr constant [12 x i8] c"Simon Budig\00", align 1
@.str.77 = private unnamed_addr constant [5 x i8] c"2004\00", align 1
@.str.78 = private unnamed_addr constant [17 x i8] c"gimp-image-scale\00", align 1
@.str.79 = private unnamed_addr constant [56 x i8] c"Scale the image using the default interpolation method.\00", align 1
@.str.80 = private unnamed_addr constant [314 x i8] c"This procedure scales the image so that its new width and height are equal to the supplied parameters. All layers and channels within the image are scaled according to the specified parameters; this includes the image selection mask. The interpolation method used can be set with 'gimp-context-set-interpolation'.\00", align 1
@.str.81 = private unnamed_addr constant [22 x i8] c"gimp-image-scale-full\00", align 1
@.str.82 = private unnamed_addr constant [44 x i8] c"Deprecated: Use 'gimp-image-scale' instead.\00", align 1
@.str.83 = private unnamed_addr constant [5 x i8] c"2008\00", align 1
@.str.84 = private unnamed_addr constant [14 x i8] c"interpolation\00", align 1
@.str.85 = private unnamed_addr constant [22 x i8] c"Type of interpolation\00", align 1
@.str.86 = private unnamed_addr constant [16 x i8] c"gimp-image-crop\00", align 1
@.str.87 = private unnamed_addr constant [41 x i8] c"Crop the image to the specified extents.\00", align 1
@.str.88 = private unnamed_addr constant [367 x i8] c"This procedure crops the image so that it's new width and height are equal to the supplied parameters. Offsets are also provided which describe the position of the previous image's content. All channels and layers within the image are cropped to the new image extents; this includes the image selection mask. If any parameters are out of range, an error is returned.\00", align 1
@.str.89 = private unnamed_addr constant [42 x i8] c"New image width: (0 < new_width <= width)\00", align 1
@.str.90 = private unnamed_addr constant [45 x i8] c"New image height: (0 < new_height <= height)\00", align 1
@.str.91 = private unnamed_addr constant [45 x i8] c"X offset: (0 <= offx <= (width - new_width))\00", align 1
@.str.92 = private unnamed_addr constant [47 x i8] c"Y offset: (0 <= offy <= (height - new_height))\00", align 1
@.str.93 = private unnamed_addr constant [16 x i8] c"gimp-image-flip\00", align 1
@.str.94 = private unnamed_addr constant [44 x i8] c"Flips the image horizontally or vertically.\00", align 1
@.str.95 = private unnamed_addr constant [42 x i8] c"This procedure flips (mirrors) the image.\00", align 1
@.str.96 = private unnamed_addr constant [10 x i8] c"flip-type\00", align 1
@.str.97 = private unnamed_addr constant [10 x i8] c"flip type\00", align 1
@.str.98 = private unnamed_addr constant [13 x i8] c"Type of flip\00", align 1
@.str.99 = private unnamed_addr constant [18 x i8] c"gimp-image-rotate\00", align 1
@.str.100 = private unnamed_addr constant [44 x i8] c"Rotates the image by the specified degrees.\00", align 1
@.str.101 = private unnamed_addr constant [34 x i8] c"This procedure rotates the image.\00", align 1
@.str.102 = private unnamed_addr constant [34 x i8] c"Michael Natterer <mitch@gimp.org>\00", align 1
@.str.103 = private unnamed_addr constant [17 x i8] c"Michael Natterer\00", align 1
@.str.104 = private unnamed_addr constant [5 x i8] c"2003\00", align 1
@.str.105 = private unnamed_addr constant [12 x i8] c"rotate-type\00", align 1
@.str.106 = private unnamed_addr constant [12 x i8] c"rotate type\00", align 1
@.str.107 = private unnamed_addr constant [18 x i8] c"Angle of rotation\00", align 1
@.str.108 = private unnamed_addr constant [22 x i8] c"gimp-image-get-layers\00", align 1
@.str.109 = private unnamed_addr constant [61 x i8] c"Returns the list of layers contained in the specified image.\00", align 1
@.str.110 = private unnamed_addr constant [127 x i8] c"This procedure returns the list of layers contained in the specified image. The order of layers is from topmost to bottommost.\00", align 1
@.str.111 = private unnamed_addr constant [11 x i8] c"num-layers\00", align 1
@.str.112 = private unnamed_addr constant [11 x i8] c"num layers\00", align 1
@.str.113 = private unnamed_addr constant [44 x i8] c"The number of layers contained in the image\00", align 1
@.str.114 = private unnamed_addr constant [10 x i8] c"layer-ids\00", align 1
@.str.115 = private unnamed_addr constant [10 x i8] c"layer ids\00", align 1
@.str.116 = private unnamed_addr constant [42 x i8] c"The list of layers contained in the image\00", align 1
@.str.117 = private unnamed_addr constant [24 x i8] c"gimp-image-get-channels\00", align 1
@.str.118 = private unnamed_addr constant [63 x i8] c"Returns the list of channels contained in the specified image.\00", align 1
@.str.119 = private unnamed_addr constant [177 x i8] c"This procedure returns the list of channels contained in the specified image. This does not include the selection mask, or layer masks. The order is from topmost to bottommost.\00", align 1
@.str.120 = private unnamed_addr constant [13 x i8] c"num-channels\00", align 1
@.str.121 = private unnamed_addr constant [13 x i8] c"num channels\00", align 1
@.str.122 = private unnamed_addr constant [46 x i8] c"The number of channels contained in the image\00", align 1
@.str.123 = private unnamed_addr constant [12 x i8] c"channel-ids\00", align 1
@.str.124 = private unnamed_addr constant [12 x i8] c"channel ids\00", align 1
@.str.125 = private unnamed_addr constant [44 x i8] c"The list of channels contained in the image\00", align 1
@.str.126 = private unnamed_addr constant [23 x i8] c"gimp-image-get-vectors\00", align 1
@.str.127 = private unnamed_addr constant [62 x i8] c"Returns the list of vectors contained in the specified image.\00", align 1
@.str.128 = private unnamed_addr constant [77 x i8] c"This procedure returns the list of vectors contained in the specified image.\00", align 1
@.str.129 = private unnamed_addr constant [5 x i8] c"2005\00", align 1
@.str.130 = private unnamed_addr constant [12 x i8] c"num-vectors\00", align 1
@.str.131 = private unnamed_addr constant [12 x i8] c"num vectors\00", align 1
@.str.132 = private unnamed_addr constant [45 x i8] c"The number of vectors contained in the image\00", align 1
@.str.133 = private unnamed_addr constant [11 x i8] c"vector-ids\00", align 1
@.str.134 = private unnamed_addr constant [11 x i8] c"vector ids\00", align 1
@.str.135 = private unnamed_addr constant [43 x i8] c"The list of vectors contained in the image\00", align 1
@.str.136 = private unnamed_addr constant [31 x i8] c"gimp-image-get-active-drawable\00", align 1
@.str.137 = private unnamed_addr constant [32 x i8] c"Get the image's active drawable\00", align 1
@.str.138 = private unnamed_addr constant [350 x i8] c"This procedure returns the ID of the image's active drawable. This can be either a layer, a channel, or a layer mask. The active drawable is specified by the active image channel. If that is -1, then by the active image layer. If the active image layer has a layer mask and the layer mask is in edit mode, then the layer mask is the active drawable.\00", align 1
@.str.139 = private unnamed_addr constant [9 x i8] c"drawable\00", align 1
@.str.140 = private unnamed_addr constant [20 x i8] c"The active drawable\00", align 1
@.str.141 = private unnamed_addr constant [32 x i8] c"gimp-image-unset-active-channel\00", align 1
@.str.142 = private unnamed_addr constant [50 x i8] c"Unsets the active channel in the specified image.\00", align 1
@.str.143 = private unnamed_addr constant [214 x i8] c"If an active channel exists, it is unset. There then exists no active channel, and if desired, one can be set through a call to 'Set Active Channel'. No error is returned in the case of no existing active channel.\00", align 1
@.str.144 = private unnamed_addr constant [28 x i8] c"gimp-image-get-floating-sel\00", align 1
@.str.145 = private unnamed_addr constant [44 x i8] c"Return the floating selection of the image.\00", align 1
@.str.146 = private unnamed_addr constant [122 x i8] c"This procedure returns the image's floating selection, if it exists. If it doesn't exist, -1 is returned as the layer ID.\00", align 1
@.str.147 = private unnamed_addr constant [13 x i8] c"floating-sel\00", align 1
@.str.148 = private unnamed_addr constant [13 x i8] c"floating sel\00", align 1
@.str.149 = private unnamed_addr constant [31 x i8] c"The image's floating selection\00", align 1
@.str.150 = private unnamed_addr constant [36 x i8] c"gimp-image-floating-sel-attached-to\00", align 1
@.str.151 = private unnamed_addr constant [59 x i8] c"Return the drawable the floating selection is attached to.\00", align 1
@.str.152 = private unnamed_addr constant [153 x i8] c"This procedure returns the drawable the image's floating selection is attached to, if it exists. If it doesn't exist, -1 is returned as the drawable ID.\00", align 1
@.str.153 = private unnamed_addr constant [15 x i8] c"Wolfgang Hofer\00", align 1
@.str.154 = private unnamed_addr constant [5 x i8] c"1998\00", align 1
@.str.155 = private unnamed_addr constant [51 x i8] c"The drawable the floating selection is attached to\00", align 1
@.str.156 = private unnamed_addr constant [22 x i8] c"gimp-image-pick-color\00", align 1
@.str.157 = private unnamed_addr constant [54 x i8] c"Determine the color at the given drawable coordinates\00", align 1
@.str.158 = private unnamed_addr constant [703 x i8] c"This tool determines the color at the specified coordinates. The returned color is an RGB triplet even for grayscale and indexed drawables. If the coordinates lie outside of the extents of the specified drawable, then an error is returned. If the drawable has an alpha channel, the algorithm examines the alpha value of the drawable at the coordinates. If the alpha value is completely transparent (0), then an error is returned. If the sample_merged parameter is TRUE, the data of the composite image will be used instead of that for the specified drawable. This is equivalent to sampling for colors after merging all visible layers. In the case of a merged sampling, the supplied drawable is ignored.\00", align 1
@.str.159 = private unnamed_addr constant [26 x i8] c"The drawable to pick from\00", align 1
@.str.160 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.161 = private unnamed_addr constant [47 x i8] c"x coordinate of upper-left corner of rectangle\00", align 1
@.str.162 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str.163 = private unnamed_addr constant [47 x i8] c"y coordinate of upper-left corner of rectangle\00", align 1
@.str.164 = private unnamed_addr constant [14 x i8] c"sample-merged\00", align 1
@.str.165 = private unnamed_addr constant [14 x i8] c"sample merged\00", align 1
@.str.166 = private unnamed_addr constant [42 x i8] c"Use the composite image, not the drawable\00", align 1
@.str.167 = private unnamed_addr constant [15 x i8] c"sample-average\00", align 1
@.str.168 = private unnamed_addr constant [15 x i8] c"sample average\00", align 1
@.str.169 = private unnamed_addr constant [58 x i8] c"Average the color of all the pixels in a specified radius\00", align 1
@.str.170 = private unnamed_addr constant [15 x i8] c"average-radius\00", align 1
@.str.171 = private unnamed_addr constant [15 x i8] c"average radius\00", align 1
@.str.172 = private unnamed_addr constant [32 x i8] c"The radius of pixels to average\00", align 1
@.str.173 = private unnamed_addr constant [6 x i8] c"color\00", align 1
@.str.174 = private unnamed_addr constant [17 x i8] c"The return color\00", align 1
@.str.175 = private unnamed_addr constant [32 x i8] c"gimp-image-pick-correlate-layer\00", align 1
@.str.176 = private unnamed_addr constant [53 x i8] c"Find the layer visible at the specified coordinates.\00", align 1
@.str.177 = private unnamed_addr constant [283 x i8] c"This procedure finds the layer which is visible at the specified coordinates. Layers which do not qualify are those whose extents do not pass within the specified coordinates, or which are transparent at the specified coordinates. This procedure will return -1 if no layer is found.\00", align 1
@.str.178 = private unnamed_addr constant [30 x i8] c"The x coordinate for the pick\00", align 1
@.str.179 = private unnamed_addr constant [30 x i8] c"The y coordinate for the pick\00", align 1
@.str.180 = private unnamed_addr constant [6 x i8] c"layer\00", align 1
@.str.181 = private unnamed_addr constant [45 x i8] c"The layer found at the specified coordinates\00", align 1
@.str.182 = private unnamed_addr constant [21 x i8] c"gimp-image-add-layer\00", align 1
@.str.183 = private unnamed_addr constant [51 x i8] c"Deprecated: Use 'gimp-image-insert-layer' instead.\00", align 1
@.str.184 = private unnamed_addr constant [24 x i8] c"gimp-image-insert-layer\00", align 1
@.str.185 = private unnamed_addr constant [10 x i8] c"The layer\00", align 1
@.str.186 = private unnamed_addr constant [9 x i8] c"position\00", align 1
@.str.187 = private unnamed_addr constant [19 x i8] c"The layer position\00", align 1
@.str.188 = private unnamed_addr constant [38 x i8] c"Add the specified layer to the image.\00", align 1
@.str.189 = private unnamed_addr constant [706 x i8] c"This procedure adds the specified layer to the image at the given position. If the specified parent is a valid layer group (See 'gimp-item-is-group' and 'gimp-layer-group-new') then the layer is added inside the group. If the parent is 0, the layer is added inside the main stack, outside of any group. The position argument specifies the location of the layer inside the stack (or the group, if a valid parent was supplied), starting from the top (0) and increasing. If the position is specified as -1 and the parent is specified as 0, then the layer is inserted above the active layer, or inside the group if the active layer is a layer group. The layer type must be compatible with the image base type.\00", align 1
@.str.190 = private unnamed_addr constant [7 x i8] c"parent\00", align 1
@.str.191 = private unnamed_addr constant [17 x i8] c"The parent layer\00", align 1
@.str.192 = private unnamed_addr constant [24 x i8] c"gimp-image-remove-layer\00", align 1
@.str.193 = private unnamed_addr constant [43 x i8] c"Remove the specified layer from the image.\00", align 1
@.str.194 = private unnamed_addr constant [269 x i8] c"This procedure removes the specified layer from the image. If the layer doesn't exist, an error is returned. If there are no layers left in the image, this call will fail. If this layer is the last layer remaining, the image will become empty and have no active layer.\00", align 1
@.str.195 = private unnamed_addr constant [23 x i8] c"gimp-image-add-channel\00", align 1
@.str.196 = private unnamed_addr constant [53 x i8] c"Deprecated: Use 'gimp-image-insert-channel' instead.\00", align 1
@.str.197 = private unnamed_addr constant [26 x i8] c"gimp-image-insert-channel\00", align 1
@.str.198 = private unnamed_addr constant [8 x i8] c"channel\00", align 1
@.str.199 = private unnamed_addr constant [12 x i8] c"The channel\00", align 1
@.str.200 = private unnamed_addr constant [21 x i8] c"The channel position\00", align 1
@.str.201 = private unnamed_addr constant [40 x i8] c"Add the specified channel to the image.\00", align 1
@.str.202 = private unnamed_addr constant [377 x i8] c"This procedure adds the specified channel to the image at the given position. Since channel groups are not currently supported, the parent argument must always be 0. The position argument specifies the location of the channel inside the stack, starting from the top (0) and increasing. If the position is specified as -1, then the channel is inserted above the active channel.\00", align 1
@.str.203 = private unnamed_addr constant [19 x i8] c"The parent channel\00", align 1
@.str.204 = private unnamed_addr constant [26 x i8] c"gimp-image-remove-channel\00", align 1
@.str.205 = private unnamed_addr constant [45 x i8] c"Remove the specified channel from the image.\00", align 1
@.str.206 = private unnamed_addr constant [113 x i8] c"This procedure removes the specified channel from the image. If the channel doesn't exist, an error is returned.\00", align 1
@.str.207 = private unnamed_addr constant [23 x i8] c"gimp-image-add-vectors\00", align 1
@.str.208 = private unnamed_addr constant [53 x i8] c"Deprecated: Use 'gimp-image-insert-vectors' instead.\00", align 1
@.str.209 = private unnamed_addr constant [26 x i8] c"gimp-image-insert-vectors\00", align 1
@.str.210 = private unnamed_addr constant [8 x i8] c"vectors\00", align 1
@.str.211 = private unnamed_addr constant [19 x i8] c"The vectors object\00", align 1
@.str.212 = private unnamed_addr constant [29 x i8] c"The vectors objects position\00", align 1
@.str.213 = private unnamed_addr constant [40 x i8] c"Add the specified vectors to the image.\00", align 1
@.str.214 = private unnamed_addr constant [377 x i8] c"This procedure adds the specified vectors to the image at the given position. Since vectors groups are not currently supported, the parent argument must always be 0. The position argument specifies the location of the vectors inside the stack, starting from the top (0) and increasing. If the position is specified as -1, then the vectors is inserted above the active vectors.\00", align 1
@.str.215 = private unnamed_addr constant [12 x i8] c"The vectors\00", align 1
@.str.216 = private unnamed_addr constant [19 x i8] c"The parent vectors\00", align 1
@.str.217 = private unnamed_addr constant [21 x i8] c"The vectors position\00", align 1
@.str.218 = private unnamed_addr constant [26 x i8] c"gimp-image-remove-vectors\00", align 1
@.str.219 = private unnamed_addr constant [42 x i8] c"Remove the specified path from the image.\00", align 1
@.str.220 = private unnamed_addr constant [107 x i8] c"This procedure removes the specified path from the image. If the path doesn't exist, an error is returned.\00", align 1
@.str.221 = private unnamed_addr constant [29 x i8] c"gimp-image-get-item-position\00", align 1
@.str.222 = private unnamed_addr constant [64 x i8] c"Returns the position of the item in its level of its item tree.\00", align 1
@.str.223 = private unnamed_addr constant [208 x i8] c"This procedure determines the position of the specified item in its level in its item tree in the image. If the item doesn't exist in the image, or the item is not part of an item tree, an error is returned.\00", align 1
@.str.224 = private unnamed_addr constant [5 x i8] c"2010\00", align 1
@.str.225 = private unnamed_addr constant [5 x i8] c"item\00", align 1
@.str.226 = private unnamed_addr constant [9 x i8] c"The item\00", align 1
@.str.227 = private unnamed_addr constant [55 x i8] c"The position of the item in its level in the item tree\00", align 1
@.str.228 = private unnamed_addr constant [22 x i8] c"gimp-image-raise-item\00", align 1
@.str.229 = private unnamed_addr constant [55 x i8] c"Raise the specified item in its level in its item tree\00", align 1
@.str.230 = private unnamed_addr constant [127 x i8] c"This procedure raises the specified item one step in the item tree. The procecure call will fail if there is no item above it.\00", align 1
@.str.231 = private unnamed_addr constant [18 x i8] c"The item to raise\00", align 1
@.str.232 = private unnamed_addr constant [22 x i8] c"gimp-image-lower-item\00", align 1
@.str.233 = private unnamed_addr constant [55 x i8] c"Lower the specified item in its level in its item tree\00", align 1
@.str.234 = private unnamed_addr constant [127 x i8] c"This procedure lowers the specified item one step in the item tree. The procecure call will fail if there is no item below it.\00", align 1
@.str.235 = private unnamed_addr constant [18 x i8] c"The item to lower\00", align 1
@.str.236 = private unnamed_addr constant [29 x i8] c"gimp-image-raise-item-to-top\00", align 1
@.str.237 = private unnamed_addr constant [66 x i8] c"Raise the specified item to the top of its level in its item tree\00", align 1
@.str.238 = private unnamed_addr constant [135 x i8] c"This procedure raises the specified item to top of its level in the item tree. It will not move the item if there is no item above it.\00", align 1
@.str.239 = private unnamed_addr constant [25 x i8] c"The item to raise to top\00", align 1
@.str.240 = private unnamed_addr constant [32 x i8] c"gimp-image-lower-item-to-bottom\00", align 1
@.str.241 = private unnamed_addr constant [69 x i8] c"Lower the specified item to the bottom of its level in its item tree\00", align 1
@.str.242 = private unnamed_addr constant [140 x i8] c"This procedure lowers the specified item to bottom of its level in the item tree. It will not move the layer if there is no layer below it.\00", align 1
@.str.243 = private unnamed_addr constant [28 x i8] c"The item to lower to bottom\00", align 1
@.str.244 = private unnamed_addr constant [24 x i8] c"gimp-image-reorder-item\00", align 1
@.str.245 = private unnamed_addr constant [48 x i8] c"Reorder the specified item within its item tree\00", align 1
@.str.246 = private unnamed_addr constant [65 x i8] c"This procedure reorders the specified item within its item tree.\00", align 1
@.str.247 = private unnamed_addr constant [20 x i8] c"The item to reorder\00", align 1
@.str.248 = private unnamed_addr constant [20 x i8] c"The new parent item\00", align 1
@.str.249 = private unnamed_addr constant [29 x i8] c"The new position of the item\00", align 1
@.str.250 = private unnamed_addr constant [19 x i8] c"gimp-image-flatten\00", align 1
@.str.251 = private unnamed_addr constant [78 x i8] c"Flatten all visible layers into a single layer. Discard all invisible layers.\00", align 1
@.str.252 = private unnamed_addr constant [203 x i8] c"This procedure combines the visible layers in a manner analogous to merging with the CLIP_TO_IMAGE merge type. Non-visible layers are discarded, and the resulting image is stripped of its alpha channel.\00", align 1
@.str.253 = private unnamed_addr constant [20 x i8] c"The resulting layer\00", align 1
@.str.254 = private unnamed_addr constant [32 x i8] c"gimp-image-merge-visible-layers\00", align 1
@.str.255 = private unnamed_addr constant [41 x i8] c"Merge the visible image layers into one.\00", align 1
@.str.256 = private unnamed_addr constant [378 x i8] c"This procedure combines the visible layers into a single layer using the specified merge type. A merge type of EXPAND_AS_NECESSARY expands the final layer to encompass the areas of the visible layers. A merge type of CLIP_TO_IMAGE clips the final layer to the extents of the image. A merge type of CLIP_TO_BOTTOM_LAYER clips the final layer to the size of the bottommost layer.\00", align 1
@.str.257 = private unnamed_addr constant [11 x i8] c"merge-type\00", align 1
@.str.258 = private unnamed_addr constant [11 x i8] c"merge type\00", align 1
@.str.259 = private unnamed_addr constant [18 x i8] c"The type of merge\00", align 1
@.str.260 = private unnamed_addr constant [22 x i8] c"gimp-image-merge-down\00", align 1
@.str.261 = private unnamed_addr constant [58 x i8] c"Merge the layer passed and the first visible layer below.\00", align 1
@.str.262 = private unnamed_addr constant [393 x i8] c"This procedure combines the passed layer and the first visible layer below it using the specified merge type. A merge type of EXPAND_AS_NECESSARY expands the final layer to encompass the areas of the visible layers. A merge type of CLIP_TO_IMAGE clips the final layer to the extents of the image. A merge type of CLIP_TO_BOTTOM_LAYER clips the final layer to the size of the bottommost layer.\00", align 1
@.str.263 = private unnamed_addr constant [12 x i8] c"Larry Ewing\00", align 1
@.str.264 = private unnamed_addr constant [12 x i8] c"merge-layer\00", align 1
@.str.265 = private unnamed_addr constant [12 x i8] c"merge layer\00", align 1
@.str.266 = private unnamed_addr constant [29 x i8] c"The layer to merge down from\00", align 1
@.str.267 = private unnamed_addr constant [26 x i8] c"gimp-image-add-layer-mask\00", align 1
@.str.268 = private unnamed_addr constant [47 x i8] c"Deprecated: Use 'gimp-layer-add-mask' instead.\00", align 1
@.str.269 = private unnamed_addr constant [20 x i8] c"gimp-layer-add-mask\00", align 1
@.str.270 = private unnamed_addr constant [30 x i8] c"The layer to receive the mask\00", align 1
@.str.271 = private unnamed_addr constant [5 x i8] c"mask\00", align 1
@.str.272 = private unnamed_addr constant [29 x i8] c"The mask to add to the layer\00", align 1
@.str.273 = private unnamed_addr constant [29 x i8] c"gimp-image-remove-layer-mask\00", align 1
@.str.274 = private unnamed_addr constant [50 x i8] c"Deprecated: Use 'gimp-layer-remove-mask' instead.\00", align 1
@.str.275 = private unnamed_addr constant [23 x i8] c"gimp-layer-remove-mask\00", align 1
@.str.276 = private unnamed_addr constant [36 x i8] c"The layer from which to remove mask\00", align 1
@.str.277 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.278 = private unnamed_addr constant [13 x i8] c"Removal mode\00", align 1
@.str.279 = private unnamed_addr constant [24 x i8] c"gimp-image-get-colormap\00", align 1
@.str.280 = private unnamed_addr constant [29 x i8] c"Returns the image's colormap\00", align 1
@.str.281 = private unnamed_addr constant [273 x i8] c"This procedure returns an actual pointer to the image's colormap, as well as the number of bytes contained in the colormap. The actual number of colors in the transmitted colormap will be 'num-bytes' / 3. If the image is not in Indexed color mode, no colormap is returned.\00", align 1
@.str.282 = private unnamed_addr constant [10 x i8] c"num-bytes\00", align 1
@.str.283 = private unnamed_addr constant [10 x i8] c"num bytes\00", align 1
@.str.284 = private unnamed_addr constant [38 x i8] c"Number of bytes in the colormap array\00", align 1
@.str.285 = private unnamed_addr constant [9 x i8] c"colormap\00", align 1
@.str.286 = private unnamed_addr constant [21 x i8] c"The image's colormap\00", align 1
@.str.287 = private unnamed_addr constant [24 x i8] c"gimp-image-set-colormap\00", align 1
@.str.288 = private unnamed_addr constant [42 x i8] c"Sets the entries in the image's colormap.\00", align 1
@.str.289 = private unnamed_addr constant [301 x i8] c"This procedure sets the entries in the specified image's colormap. The number of entries is specified by the 'num-bytes' parameter and corresponds to the number of INT8 triples that must be contained in the 'colormap' array. The actual number of colors in the transmitted colormap is 'num-bytes' / 3.\00", align 1
@.str.290 = private unnamed_addr constant [24 x i8] c"The new colormap values\00", align 1
@.str.291 = private unnamed_addr constant [21 x i8] c"gimp-image-clean-all\00", align 1
@.str.292 = private unnamed_addr constant [32 x i8] c"Set the image dirty count to 0.\00", align 1
@.str.293 = private unnamed_addr constant [388 x i8] c"This procedure sets the specified image's dirty count to 0, allowing operations to occur without having a 'dirtied' image. This is especially useful for creating and loading images which should not initially be considered dirty, even though layers must be created, filled, and installed in the image. Note that save plug-ins must NOT call this function themselves after saving the image.\00", align 1
@.str.294 = private unnamed_addr constant [20 x i8] c"gimp-image-is-dirty\00", align 1
@.str.295 = private unnamed_addr constant [41 x i8] c"Checks if the image has unsaved changes.\00", align 1
@.str.296 = private unnamed_addr constant [260 x i8] c"This procedure checks the specified image's dirty count to see if it needs to be saved. Note that saving the image does not automatically set the dirty count to 0, you need to call 'gimp-image-clean-all' after calling a save procedure to make the image clean.\00", align 1
@.str.297 = private unnamed_addr constant [6 x i8] c"dirty\00", align 1
@.str.298 = private unnamed_addr constant [39 x i8] c"TRUE if the image has unsaved changes.\00", align 1
@.str.299 = private unnamed_addr constant [21 x i8] c"gimp-image-thumbnail\00", align 1
@.str.300 = private unnamed_addr constant [29 x i8] c"Get a thumbnail of an image.\00", align 1
@.str.301 = private unnamed_addr constant [247 x i8] c"This function gets data from which a thumbnail of an image preview can be created. Maximum x or y dimension is 1024 pixels. The pixels are returned in RGB[A] or GRAY[A] format. The bpp return value gives the number of bits per pixel in the image.\00", align 1
@.str.302 = private unnamed_addr constant [12 x i8] c"Andy Thomas\00", align 1
@.str.303 = private unnamed_addr constant [5 x i8] c"1999\00", align 1
@.str.304 = private unnamed_addr constant [30 x i8] c"The requested thumbnail width\00", align 1
@.str.305 = private unnamed_addr constant [31 x i8] c"The requested thumbnail height\00", align 1
@.str.306 = private unnamed_addr constant [13 x i8] c"actual-width\00", align 1
@.str.307 = private unnamed_addr constant [13 x i8] c"actual width\00", align 1
@.str.308 = private unnamed_addr constant [19 x i8] c"The previews width\00", align 1
@.str.309 = private unnamed_addr constant [14 x i8] c"actual-height\00", align 1
@.str.310 = private unnamed_addr constant [14 x i8] c"actual height\00", align 1
@.str.311 = private unnamed_addr constant [20 x i8] c"The previews height\00", align 1
@.str.312 = private unnamed_addr constant [4 x i8] c"bpp\00", align 1
@.str.313 = private unnamed_addr constant [17 x i8] c"The previews bpp\00", align 1
@.str.314 = private unnamed_addr constant [21 x i8] c"thumbnail-data-count\00", align 1
@.str.315 = private unnamed_addr constant [21 x i8] c"thumbnail data count\00", align 1
@.str.316 = private unnamed_addr constant [38 x i8] c"The number of bytes in thumbnail data\00", align 1
@.str.317 = private unnamed_addr constant [15 x i8] c"thumbnail-data\00", align 1
@.str.318 = private unnamed_addr constant [15 x i8] c"thumbnail data\00", align 1
@.str.319 = private unnamed_addr constant [19 x i8] c"The thumbnail data\00", align 1
@.str.320 = private unnamed_addr constant [28 x i8] c"gimp-image-get-active-layer\00", align 1
@.str.321 = private unnamed_addr constant [44 x i8] c"Returns the specified image's active layer.\00", align 1
@.str.322 = private unnamed_addr constant [197 x i8] c"If there is an active layer, its ID will be returned, otherwise, -1. If a channel is currently active, then no layer will be. If a layer mask is active, then this will return the associated layer.\00", align 1
@.str.323 = private unnamed_addr constant [13 x i8] c"active-layer\00", align 1
@.str.324 = private unnamed_addr constant [13 x i8] c"active layer\00", align 1
@.str.325 = private unnamed_addr constant [17 x i8] c"The active layer\00", align 1
@.str.326 = private unnamed_addr constant [28 x i8] c"gimp-image-set-active-layer\00", align 1
@.str.327 = private unnamed_addr constant [41 x i8] c"Sets the specified image's active layer.\00", align 1
@.str.328 = private unnamed_addr constant [241 x i8] c"If the layer exists, it is set as the active layer in the image. Any previous active layer or channel is set to inactive. An exception is a previously existing floating selection, in which case this procedure will return an execution error.\00", align 1
@.str.329 = private unnamed_addr constant [27 x i8] c"The new image active layer\00", align 1
@.str.330 = private unnamed_addr constant [30 x i8] c"gimp-image-get-active-channel\00", align 1
@.str.331 = private unnamed_addr constant [46 x i8] c"Returns the specified image's active channel.\00", align 1
@.str.332 = private unnamed_addr constant [79 x i8] c"If there is an active channel, this will return the channel ID, otherwise, -1.\00", align 1
@.str.333 = private unnamed_addr constant [15 x i8] c"active-channel\00", align 1
@.str.334 = private unnamed_addr constant [15 x i8] c"active channel\00", align 1
@.str.335 = private unnamed_addr constant [19 x i8] c"The active channel\00", align 1
@.str.336 = private unnamed_addr constant [30 x i8] c"gimp-image-set-active-channel\00", align 1
@.str.337 = private unnamed_addr constant [43 x i8] c"Sets the specified image's active channel.\00", align 1
@.str.338 = private unnamed_addr constant [247 x i8] c"If the channel exists, it is set as the active channel in the image. Any previous active channel or channel is set to inactive. An exception is a previously existing floating selection, in which case this procedure will return an execution error.\00", align 1
@.str.339 = private unnamed_addr constant [29 x i8] c"The new image active channel\00", align 1
@.str.340 = private unnamed_addr constant [30 x i8] c"gimp-image-get-active-vectors\00", align 1
@.str.341 = private unnamed_addr constant [46 x i8] c"Returns the specified image's active vectors.\00", align 1
@.str.342 = private unnamed_addr constant [68 x i8] c"If there is an active path, its ID will be returned, otherwise, -1.\00", align 1
@.str.343 = private unnamed_addr constant [15 x i8] c"active-vectors\00", align 1
@.str.344 = private unnamed_addr constant [15 x i8] c"active vectors\00", align 1
@.str.345 = private unnamed_addr constant [19 x i8] c"The active vectors\00", align 1
@.str.346 = private unnamed_addr constant [30 x i8] c"gimp-image-set-active-vectors\00", align 1
@.str.347 = private unnamed_addr constant [43 x i8] c"Sets the specified image's active vectors.\00", align 1
@.str.348 = private unnamed_addr constant [63 x i8] c"If the path exists, it is set as the active path in the image.\00", align 1
@.str.349 = private unnamed_addr constant [29 x i8] c"The new image active vectors\00", align 1
@.str.350 = private unnamed_addr constant [25 x i8] c"gimp-image-get-selection\00", align 1
@.str.351 = private unnamed_addr constant [41 x i8] c"Returns the specified image's selection.\00", align 1
@.str.352 = private unnamed_addr constant [100 x i8] c"This will always return a valid ID for a selection -- which is represented as a channel internally.\00", align 1
@.str.353 = private unnamed_addr constant [10 x i8] c"selection\00", align 1
@.str.354 = private unnamed_addr constant [22 x i8] c"The selection channel\00", align 1
@.str.355 = private unnamed_addr constant [32 x i8] c"gimp-image-get-component-active\00", align 1
@.str.356 = private unnamed_addr constant [60 x i8] c"Returns if the specified image's image component is active.\00", align 1
@.str.357 = private unnamed_addr constant [265 x i8] c"This procedure returns if the specified image's image component (i.e. Red, Green, Blue intensity channels in an RGB image) is active or inactive -- whether or not it can be modified. If the specified component is not valid for the image type, an error is returned.\00", align 1
@.str.358 = private unnamed_addr constant [10 x i8] c"component\00", align 1
@.str.359 = private unnamed_addr constant [20 x i8] c"The image component\00", align 1
@.str.360 = private unnamed_addr constant [7 x i8] c"active\00", align 1
@.str.361 = private unnamed_addr constant [20 x i8] c"Component is active\00", align 1
@.str.362 = private unnamed_addr constant [32 x i8] c"gimp-image-set-component-active\00", align 1
@.str.363 = private unnamed_addr constant [57 x i8] c"Sets if the specified image's image component is active.\00", align 1
@.str.364 = private unnamed_addr constant [262 x i8] c"This procedure sets if the specified image's image component (i.e. Red, Green, Blue intensity channels in an RGB image) is active or inactive -- whether or not it can be modified. If the specified component is not valid for the image type, an error is returned.\00", align 1
@.str.365 = private unnamed_addr constant [33 x i8] c"gimp-image-get-component-visible\00", align 1
@.str.366 = private unnamed_addr constant [61 x i8] c"Returns if the specified image's image component is visible.\00", align 1
@.str.367 = private unnamed_addr constant [263 x i8] c"This procedure returns if the specified image's image component (i.e. Red, Green, Blue intensity channels in an RGB image) is visible or invisible -- whether or not it can be seen. If the specified component is not valid for the image type, an error is returned.\00", align 1
@.str.368 = private unnamed_addr constant [8 x i8] c"visible\00", align 1
@.str.369 = private unnamed_addr constant [21 x i8] c"Component is visible\00", align 1
@.str.370 = private unnamed_addr constant [33 x i8] c"gimp-image-set-component-visible\00", align 1
@.str.371 = private unnamed_addr constant [58 x i8] c"Sets if the specified image's image component is visible.\00", align 1
@.str.372 = private unnamed_addr constant [260 x i8] c"This procedure sets if the specified image's image component (i.e. Red, Green, Blue intensity channels in an RGB image) is visible or invisible -- whether or not it can be seen. If the specified component is not valid for the image type, an error is returned.\00", align 1
@.str.373 = private unnamed_addr constant [24 x i8] c"gimp-image-get-filename\00", align 1
@.str.374 = private unnamed_addr constant [40 x i8] c"Returns the specified image's filename.\00", align 1
@.str.375 = private unnamed_addr constant [261 x i8] c"This procedure returns the specified image's filename in the filesystem encoding. The image has a filename only if it was loaded or imported from a file or has since been saved or exported. Otherwise, this function returns %NULL. See also 'gimp-image-get-uri'.\00", align 1
@.str.376 = private unnamed_addr constant [9 x i8] c"filename\00", align 1
@.str.377 = private unnamed_addr constant [13 x i8] c"The filename\00", align 1
@.str.378 = private unnamed_addr constant [24 x i8] c"gimp-image-set-filename\00", align 1
@.str.379 = private unnamed_addr constant [37 x i8] c"Sets the specified image's filename.\00", align 1
@.str.380 = private unnamed_addr constant [103 x i8] c"This procedure sets the specified image's filename. The filename should be in the filesystem encoding.\00", align 1
@.str.381 = private unnamed_addr constant [23 x i8] c"The new image filename\00", align 1
@.str.382 = private unnamed_addr constant [19 x i8] c"gimp-image-get-uri\00", align 1
@.str.383 = private unnamed_addr constant [41 x i8] c"Returns the URI for the specified image.\00", align 1
@.str.384 = private unnamed_addr constant [439 x i8] c"This procedure returns the URI associated with the specified image. The image has an URI only if it was loaded or imported from a file or has since been saved or exported. Otherwise, this function returns %NULL. See also gimp-image-get-imported-uri to get the URI of the current file if it was imported from a non-GIMP file format and not yet saved, or gimp-image-get-exported-uri if the image has been exported to a non-GIMP file format.\00", align 1
@.str.385 = private unnamed_addr constant [5 x i8] c"2009\00", align 1
@.str.386 = private unnamed_addr constant [4 x i8] c"uri\00", align 1
@.str.387 = private unnamed_addr constant [8 x i8] c"The URI\00", align 1
@.str.388 = private unnamed_addr constant [23 x i8] c"gimp-image-get-xcf-uri\00", align 1
@.str.389 = private unnamed_addr constant [45 x i8] c"Returns the XCF URI for the specified image.\00", align 1
@.str.390 = private unnamed_addr constant [117 x i8] c"This procedure returns the XCF URI associated with the image. If there is no such URI, this procedure returns %NULL.\00", align 1
@.str.391 = private unnamed_addr constant [39 x i8] c"Eric Grivel <gimp@lumenssolutions.com>\00", align 1
@.str.392 = private unnamed_addr constant [12 x i8] c"Eric Grivel\00", align 1
@.str.393 = private unnamed_addr constant [5 x i8] c"2011\00", align 1
@.str.394 = private unnamed_addr constant [17 x i8] c"The imported URI\00", align 1
@.str.395 = private unnamed_addr constant [28 x i8] c"gimp-image-get-imported-uri\00", align 1
@.str.396 = private unnamed_addr constant [50 x i8] c"Returns the imported URI for the specified image.\00", align 1
@.str.397 = private unnamed_addr constant [236 x i8] c"This procedure returns the URI associated with the specified image if the image was imported from a non-native Gimp format. If the image was not imported, or has since been saved in the native Gimp format, this procedure returns %NULL.\00", align 1
@.str.398 = private unnamed_addr constant [28 x i8] c"gimp-image-get-exported-uri\00", align 1
@.str.399 = private unnamed_addr constant [50 x i8] c"Returns the exported URI for the specified image.\00", align 1
@.str.400 = private unnamed_addr constant [180 x i8] c"This procedure returns the URI associated with the specified image if the image was exported a non-native GIMP format. If the image was not exported, this procedure returns %NULL.\00", align 1
@.str.401 = private unnamed_addr constant [17 x i8] c"The exported URI\00", align 1
@.str.402 = private unnamed_addr constant [20 x i8] c"gimp-image-get-name\00", align 1
@.str.403 = private unnamed_addr constant [36 x i8] c"Returns the specified image's name.\00", align 1
@.str.404 = private unnamed_addr constant [442 x i8] c"This procedure returns the image's name. If the image has a filename or an URI, then the returned name contains the filename's or URI's base name (the last component of the path). Otherwise it is the translated string \22Untitled\22. The returned name is formatted like the image name in the image window title, it may contain '[]', '(imported)' etc. and should only be used to label user interface elements. Never use it to construct filenames.\00", align 1
@.str.405 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.406 = private unnamed_addr constant [9 x i8] c"The name\00", align 1
@.str.407 = private unnamed_addr constant [26 x i8] c"gimp-image-get-resolution\00", align 1
@.str.408 = private unnamed_addr constant [42 x i8] c"Returns the specified image's resolution.\00", align 1
@.str.409 = private unnamed_addr constant [136 x i8] c"This procedure returns the specified image's resolution in dots per inch. This value is independent of any of the layers in this image.\00", align 1
@.str.410 = private unnamed_addr constant [16 x i8] c"Austin Donnelly\00", align 1
@.str.411 = private unnamed_addr constant [12 x i8] c"xresolution\00", align 1
@.str.412 = private unnamed_addr constant [47 x i8] c"The resolution in the x-axis, in dots per inch\00", align 1
@.str.413 = private unnamed_addr constant [12 x i8] c"yresolution\00", align 1
@.str.414 = private unnamed_addr constant [47 x i8] c"The resolution in the y-axis, in dots per inch\00", align 1
@.str.415 = private unnamed_addr constant [26 x i8] c"gimp-image-set-resolution\00", align 1
@.str.416 = private unnamed_addr constant [39 x i8] c"Sets the specified image's resolution.\00", align 1
@.str.417 = private unnamed_addr constant [170 x i8] c"This procedure sets the specified image's resolution in dots per inch. This value is independent of any of the layers in this image. No scaling or resizing is performed.\00", align 1
@.str.418 = private unnamed_addr constant [57 x i8] c"The new image resolution in the x-axis, in dots per inch\00", align 1
@.str.419 = private unnamed_addr constant [57 x i8] c"The new image resolution in the y-axis, in dots per inch\00", align 1
@.str.420 = private unnamed_addr constant [20 x i8] c"gimp-image-get-unit\00", align 1
@.str.421 = private unnamed_addr constant [36 x i8] c"Returns the specified image's unit.\00", align 1
@.str.422 = private unnamed_addr constant [227 x i8] c"This procedure returns the specified image's unit. This value is independent of any of the layers in this image. See the gimp_unit_*() procedure definitions for the valid range of unit IDs and a description of the unit system.\00", align 1
@.str.423 = private unnamed_addr constant [5 x i8] c"unit\00", align 1
@.str.424 = private unnamed_addr constant [9 x i8] c"The unit\00", align 1
@.str.425 = private unnamed_addr constant [20 x i8] c"gimp-image-set-unit\00", align 1
@.str.426 = private unnamed_addr constant [33 x i8] c"Sets the specified image's unit.\00", align 1
@.str.427 = private unnamed_addr constant [261 x i8] c"This procedure sets the specified image's unit. No scaling or resizing is performed. This value is independent of any of the layers in this image. See the gimp_unit_*() procedure definitions for the valid range of unit IDs and a description of the unit system.\00", align 1
@.str.428 = private unnamed_addr constant [19 x i8] c"The new image unit\00", align 1
@.str.429 = private unnamed_addr constant [28 x i8] c"gimp-image-get-tattoo-state\00", align 1
@.str.430 = private unnamed_addr constant [52 x i8] c"Returns the tattoo state associated with the image.\00", align 1
@.str.431 = private unnamed_addr constant [198 x i8] c"This procedure returns the tattoo state of the image. Use only by save/load plugins that wish to preserve an images tattoo state. Using this function at other times will produce unexpected results.\00", align 1
@.str.432 = private unnamed_addr constant [5 x i8] c"2000\00", align 1
@.str.433 = private unnamed_addr constant [13 x i8] c"tattoo-state\00", align 1
@.str.434 = private unnamed_addr constant [13 x i8] c"tattoo state\00", align 1
@.str.435 = private unnamed_addr constant [17 x i8] c"The tattoo state\00", align 1
@.str.436 = private unnamed_addr constant [28 x i8] c"gimp-image-set-tattoo-state\00", align 1
@.str.437 = private unnamed_addr constant [48 x i8] c"Set the tattoo state associated with the image.\00", align 1
@.str.438 = private unnamed_addr constant [745 x i8] c"This procedure sets the tattoo state of the image. Use only by save/load plugins that wish to preserve an images tattoo state. Using this function at other times will produce unexpected results. A full check of uniqueness of states in layers, channels and paths will be performed by this procedure and a execution failure will be returned if this fails. A failure will also be returned if the new tattoo state value is less than the maximum tattoo value from all of the tattoos from the paths, layers and channels. After the image data has been loaded and all the tattoos have been set then this is the last procedure that should be called. If effectively does a status check on the tattoo values that have been set to make sure that all is OK.\00", align 1
@.str.439 = private unnamed_addr constant [27 x i8] c"The new image tattoo state\00", align 1
@.str.440 = private unnamed_addr constant [31 x i8] c"gimp-image-get-layer-by-tattoo\00", align 1
@.str.441 = private unnamed_addr constant [46 x i8] c"Find a layer with a given tattoo in an image.\00", align 1
@.str.442 = private unnamed_addr constant [79 x i8] c"This procedure returns the layer with the given tattoo in the specified image.\00", align 1
@.str.443 = private unnamed_addr constant [8 x i8] c"Jay Cox\00", align 1
@.str.444 = private unnamed_addr constant [7 x i8] c"tattoo\00", align 1
@.str.445 = private unnamed_addr constant [32 x i8] c"The tattoo of the layer to find\00", align 1
@.str.446 = private unnamed_addr constant [36 x i8] c"The layer with the specified tattoo\00", align 1
@.str.447 = private unnamed_addr constant [33 x i8] c"gimp-image-get-channel-by-tattoo\00", align 1
@.str.448 = private unnamed_addr constant [48 x i8] c"Find a channel with a given tattoo in an image.\00", align 1
@.str.449 = private unnamed_addr constant [81 x i8] c"This procedure returns the channel with the given tattoo in the specified image.\00", align 1
@.str.450 = private unnamed_addr constant [34 x i8] c"The tattoo of the channel to find\00", align 1
@.str.451 = private unnamed_addr constant [38 x i8] c"The channel with the specified tattoo\00", align 1
@.str.452 = private unnamed_addr constant [33 x i8] c"gimp-image-get-vectors-by-tattoo\00", align 1
@.str.453 = private unnamed_addr constant [48 x i8] c"Find a vectors with a given tattoo in an image.\00", align 1
@.str.454 = private unnamed_addr constant [81 x i8] c"This procedure returns the vectors with the given tattoo in the specified image.\00", align 1
@.str.455 = private unnamed_addr constant [34 x i8] c"The tattoo of the vectors to find\00", align 1
@.str.456 = private unnamed_addr constant [38 x i8] c"The vectors with the specified tattoo\00", align 1
@.str.457 = private unnamed_addr constant [29 x i8] c"gimp-image-get-layer-by-name\00", align 1
@.str.458 = private unnamed_addr constant [44 x i8] c"Find a layer with a given name in an image.\00", align 1
@.str.459 = private unnamed_addr constant [77 x i8] c"This procedure returns the layer with the given name in the specified image.\00", align 1
@.str.460 = private unnamed_addr constant [30 x i8] c"The name of the layer to find\00", align 1
@.str.461 = private unnamed_addr constant [34 x i8] c"The layer with the specified name\00", align 1
@.str.462 = private unnamed_addr constant [31 x i8] c"gimp-image-get-channel-by-name\00", align 1
@.str.463 = private unnamed_addr constant [46 x i8] c"Find a channel with a given name in an image.\00", align 1
@.str.464 = private unnamed_addr constant [79 x i8] c"This procedure returns the channel with the given name in the specified image.\00", align 1
@.str.465 = private unnamed_addr constant [32 x i8] c"The name of the channel to find\00", align 1
@.str.466 = private unnamed_addr constant [36 x i8] c"The channel with the specified name\00", align 1
@.str.467 = private unnamed_addr constant [31 x i8] c"gimp-image-get-vectors-by-name\00", align 1
@.str.468 = private unnamed_addr constant [46 x i8] c"Find a vectors with a given name in an image.\00", align 1
@.str.469 = private unnamed_addr constant [79 x i8] c"This procedure returns the vectors with the given name in the specified image.\00", align 1
@.str.470 = private unnamed_addr constant [32 x i8] c"The name of the vectors to find\00", align 1
@.str.471 = private unnamed_addr constant [36 x i8] c"The vectors with the specified name\00", align 1
@.str.472 = private unnamed_addr constant [27 x i8] c"gimp-image-attach-parasite\00", align 1
@.str.473 = private unnamed_addr constant [28 x i8] c"Add a parasite to an image.\00", align 1
@.str.474 = private unnamed_addr constant [73 x i8] c"This procedure attaches a parasite to an image. It has no return values.\00", align 1
@.str.475 = private unnamed_addr constant [9 x i8] c"parasite\00", align 1
@.str.476 = private unnamed_addr constant [35 x i8] c"The parasite to attach to an image\00", align 1
@.str.477 = private unnamed_addr constant [27 x i8] c"gimp-image-detach-parasite\00", align 1
@.str.478 = private unnamed_addr constant [34 x i8] c"Removes a parasite from an image.\00", align 1
@.str.479 = private unnamed_addr constant [75 x i8] c"This procedure detaches a parasite from an image. It has no return values.\00", align 1
@.str.480 = private unnamed_addr constant [50 x i8] c"The name of the parasite to detach from an image.\00", align 1
@.str.481 = private unnamed_addr constant [24 x i8] c"gimp-image-get-parasite\00", align 1
@.str.482 = private unnamed_addr constant [31 x i8] c"Look up a parasite in an image\00", align 1
@.str.483 = private unnamed_addr constant [73 x i8] c"Finds and returns the parasite that was previously attached to an image.\00", align 1
@.str.484 = private unnamed_addr constant [33 x i8] c"The name of the parasite to find\00", align 1
@.str.485 = private unnamed_addr constant [19 x i8] c"The found parasite\00", align 1
@.str.486 = private unnamed_addr constant [29 x i8] c"gimp-image-get-parasite-list\00", align 1
@.str.487 = private unnamed_addr constant [20 x i8] c"List all parasites.\00", align 1
@.str.488 = private unnamed_addr constant [52 x i8] c"Returns a list of all currently attached parasites.\00", align 1
@.str.489 = private unnamed_addr constant [13 x i8] c"Marc Lehmann\00", align 1
@.str.490 = private unnamed_addr constant [14 x i8] c"num-parasites\00", align 1
@.str.491 = private unnamed_addr constant [14 x i8] c"num parasites\00", align 1
@.str.492 = private unnamed_addr constant [33 x i8] c"The number of attached parasites\00", align 1
@.str.493 = private unnamed_addr constant [10 x i8] c"parasites\00", align 1
@.str.494 = private unnamed_addr constant [42 x i8] c"The names of currently attached parasites\00", align 1
@.str.495 = private unnamed_addr constant [8 x i8] c"Scaling\00", align 1
@.str.496 = private unnamed_addr constant [9 x i8] c"Rotating\00", align 1
@image_pick_color_invoker.color = private unnamed_addr constant %struct._GimpRGB { double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 1.000000e+00 }, align 8
@.str.497 = private unnamed_addr constant [73 x i8] c"Image resolution is out of bounds, using the default resolution instead.\00", align 1

; Function Attrs: nounwind uwtable
define void @register_image_procs(%struct._GimpPDB* %pdb) #0 {
entry:
  %pdb.addr = alloca %struct._GimpPDB*, align 8
  %procedure = alloca %struct._GimpProcedure*, align 8
  store %struct._GimpPDB* %pdb, %struct._GimpPDB** %pdb.addr, align 8
  %call = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @image_is_valid_invoker)
  store %struct._GimpProcedure* %call, %struct._GimpProcedure** %procedure, align 8
  %0 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %1 = bitcast %struct._GimpProcedure* %0 to %struct._GTypeInstance*
  %call1 = call i64 @gimp_object_get_type() #6
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call1)
  %2 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0))
  %3 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %3, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* null)
  %4 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %5 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %5, i32 0, i32 1
  %6 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call3 = call %struct._GParamSpec* @gimp_param_spec_image_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i32 0, i32 0), %struct._Gimp* %6, i32 0, i32 16611)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %4, %struct._GParamSpec* %call3)
  %7 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call4 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i32 0, i32 0), i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %7, %struct._GParamSpec* %call4)
  %8 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %9 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %8, %struct._GimpProcedure* %9)
  %10 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %11 = bitcast %struct._GimpProcedure* %10 to i8*
  call void @g_object_unref(i8* %11)
  %call5 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @image_list_invoker)
  store %struct._GimpProcedure* %call5, %struct._GimpProcedure** %procedure, align 8
  %12 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %13 = bitcast %struct._GimpProcedure* %12 to %struct._GTypeInstance*
  %call6 = call i64 @gimp_object_get_type() #6
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call6)
  %14 = bitcast %struct._GTypeInstance* %call7 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %14, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i32 0, i32 0))
  %15 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %15, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0), i8* null)
  %16 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call8 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.17, i32 0, i32 0), i32 0, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %16, %struct._GParamSpec* %call8)
  %17 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call9 = call %struct._GParamSpec* @gimp_param_spec_int32_array(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.20, i32 0, i32 0), i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %17, %struct._GParamSpec* %call9)
  %18 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %19 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %18, %struct._GimpProcedure* %19)
  %20 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %21 = bitcast %struct._GimpProcedure* %20 to i8*
  call void @g_object_unref(i8* %21)
  %call10 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @image_new_invoker)
  store %struct._GimpProcedure* %call10, %struct._GimpProcedure** %procedure, align 8
  %22 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %23 = bitcast %struct._GimpProcedure* %22 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_object_get_type() #6
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call11)
  %24 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %24, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i32 0, i32 0))
  %25 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %25, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([356 x i8], [356 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0), i8* null)
  %26 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call13 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.25, i32 0, i32 0), i32 1, i32 262144, i32 1, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %26, %struct._GParamSpec* %call13)
  %27 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call14 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.27, i32 0, i32 0), i32 1, i32 262144, i32 1, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %27, %struct._GParamSpec* %call14)
  %28 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call15 = call i64 @gimp_image_base_type_get_type() #6
  %call16 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.29, i32 0, i32 0), i64 %call15, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %28, %struct._GParamSpec* %call16)
  %29 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %30 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp17 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %30, i32 0, i32 1
  %31 = load %struct._Gimp*, %struct._Gimp** %gimp17, align 8
  %call18 = call %struct._GParamSpec* @gimp_param_spec_image_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.30, i32 0, i32 0), %struct._Gimp* %31, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %29, %struct._GParamSpec* %call18)
  %32 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %33 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %32, %struct._GimpProcedure* %33)
  %34 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %35 = bitcast %struct._GimpProcedure* %34 to i8*
  call void @g_object_unref(i8* %35)
  %call19 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @image_duplicate_invoker)
  store %struct._GimpProcedure* %call19, %struct._GimpProcedure** %procedure, align 8
  %36 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %37 = bitcast %struct._GimpProcedure* %36 to %struct._GTypeInstance*
  %call20 = call i64 @gimp_object_get_type() #6
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %37, i64 %call20)
  %38 = bitcast %struct._GTypeInstance* %call21 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %38, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.31, i32 0, i32 0))
  %39 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %39, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i32 0, i32 0), i8* null)
  %40 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %41 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp22 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %41, i32 0, i32 1
  %42 = load %struct._Gimp*, %struct._Gimp** %gimp22, align 8
  %call23 = call %struct._GParamSpec* @gimp_param_spec_image_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i32 0, i32 0), %struct._Gimp* %42, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %40, %struct._GParamSpec* %call23)
  %43 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %44 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp24 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %44, i32 0, i32 1
  %45 = load %struct._Gimp*, %struct._Gimp** %gimp24, align 8
  %call25 = call %struct._GParamSpec* @gimp_param_spec_image_id(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.38, i32 0, i32 0), %struct._Gimp* %45, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %43, %struct._GParamSpec* %call25)
  %46 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %47 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %46, %struct._GimpProcedure* %47)
  %48 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %49 = bitcast %struct._GimpProcedure* %48 to i8*
  call void @g_object_unref(i8* %49)
  %call26 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @image_delete_invoker)
  store %struct._GimpProcedure* %call26, %struct._GimpProcedure** %procedure, align 8
  %50 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %51 = bitcast %struct._GimpProcedure* %50 to %struct._GTypeInstance*
  %call27 = call i64 @gimp_object_get_type() #6
  %call28 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %51, i64 %call27)
  %52 = bitcast %struct._GTypeInstance* %call28 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %52, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.39, i32 0, i32 0))
  %53 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %53, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([348 x i8], [348 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0), i8* null)
  %54 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %55 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp29 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %55, i32 0, i32 1
  %56 = load %struct._Gimp*, %struct._Gimp** %gimp29, align 8
  %call30 = call %struct._GParamSpec* @gimp_param_spec_image_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i32 0, i32 0), %struct._Gimp* %56, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %54, %struct._GParamSpec* %call30)
  %57 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %58 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %57, %struct._GimpProcedure* %58)
  %59 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %60 = bitcast %struct._GimpProcedure* %59 to i8*
  call void @g_object_unref(i8* %60)
  %call31 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @image_base_type_invoker)
  store %struct._GimpProcedure* %call31, %struct._GimpProcedure** %procedure, align 8
  %61 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %62 = bitcast %struct._GimpProcedure* %61 to %struct._GTypeInstance*
  %call32 = call i64 @gimp_object_get_type() #6
  %call33 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %62, i64 %call32)
  %63 = bitcast %struct._GTypeInstance* %call33 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %63, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.42, i32 0, i32 0))
  %64 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %64, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([131 x i8], [131 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0), i8* null)
  %65 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %66 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp34 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %66, i32 0, i32 1
  %67 = load %struct._Gimp*, %struct._Gimp** %gimp34, align 8
  %call35 = call %struct._GParamSpec* @gimp_param_spec_image_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i32 0, i32 0), %struct._Gimp* %67, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %65, %struct._GParamSpec* %call35)
  %68 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call36 = call i64 @gimp_image_base_type_get_type() #6
  %call37 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.47, i32 0, i32 0), i64 %call36, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %68, %struct._GParamSpec* %call37)
  %69 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %70 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %69, %struct._GimpProcedure* %70)
  %71 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %72 = bitcast %struct._GimpProcedure* %71 to i8*
  call void @g_object_unref(i8* %72)
  %call38 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @image_width_invoker)
  store %struct._GimpProcedure* %call38, %struct._GimpProcedure** %procedure, align 8
  %73 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %74 = bitcast %struct._GimpProcedure* %73 to %struct._GTypeInstance*
  %call39 = call i64 @gimp_object_get_type() #6
  %call40 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %74, i64 %call39)
  %75 = bitcast %struct._GTypeInstance* %call40 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %75, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.48, i32 0, i32 0))
  %76 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %76, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([132 x i8], [132 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0), i8* null)
  %77 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %78 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp41 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %78, i32 0, i32 1
  %79 = load %struct._Gimp*, %struct._Gimp** %gimp41, align 8
  %call42 = call %struct._GParamSpec* @gimp_param_spec_image_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i32 0, i32 0), %struct._Gimp* %79, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %77, %struct._GParamSpec* %call42)
  %80 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call43 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.51, i32 0, i32 0), i32 -2147483648, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %80, %struct._GParamSpec* %call43)
  %81 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %82 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %81, %struct._GimpProcedure* %82)
  %83 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %84 = bitcast %struct._GimpProcedure* %83 to i8*
  call void @g_object_unref(i8* %84)
  %call44 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @image_height_invoker)
  store %struct._GimpProcedure* %call44, %struct._GimpProcedure** %procedure, align 8
  %85 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %86 = bitcast %struct._GimpProcedure* %85 to %struct._GTypeInstance*
  %call45 = call i64 @gimp_object_get_type() #6
  %call46 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %86, i64 %call45)
  %87 = bitcast %struct._GTypeInstance* %call46 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %87, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.52, i32 0, i32 0))
  %88 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %88, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([134 x i8], [134 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0), i8* null)
  %89 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %90 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp47 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %90, i32 0, i32 1
  %91 = load %struct._Gimp*, %struct._Gimp** %gimp47, align 8
  %call48 = call %struct._GParamSpec* @gimp_param_spec_image_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i32 0, i32 0), %struct._Gimp* %91, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %89, %struct._GParamSpec* %call48)
  %92 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call49 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.55, i32 0, i32 0), i32 -2147483648, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %92, %struct._GParamSpec* %call49)
  %93 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %94 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %93, %struct._GimpProcedure* %94)
  %95 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %96 = bitcast %struct._GimpProcedure* %95 to i8*
  call void @g_object_unref(i8* %96)
  %call50 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @image_free_shadow_invoker)
  store %struct._GimpProcedure* %call50, %struct._GimpProcedure** %procedure, align 8
  %97 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %98 = bitcast %struct._GimpProcedure* %97 to %struct._GTypeInstance*
  %call51 = call i64 @gimp_object_get_type() #6
  %call52 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %98, i64 %call51)
  %99 = bitcast %struct._GTypeInstance* %call52 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %99, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.56, i32 0, i32 0))
  %100 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %100, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.59, i32 0, i32 0))
  %101 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %102 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp53 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %102, i32 0, i32 1
  %103 = load %struct._Gimp*, %struct._Gimp** %gimp53, align 8
  %call54 = call %struct._GParamSpec* @gimp_param_spec_image_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i32 0, i32 0), %struct._Gimp* %103, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %101, %struct._GParamSpec* %call54)
  %104 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %105 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %104, %struct._GimpProcedure* %105)
  %106 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %107 = bitcast %struct._GimpProcedure* %106 to i8*
  call void @g_object_unref(i8* %107)
  %call55 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @image_resize_invoker)
  store %struct._GimpProcedure* %call55, %struct._GimpProcedure** %procedure, align 8
  %108 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %109 = bitcast %struct._GimpProcedure* %108 to %struct._GTypeInstance*
  %call56 = call i64 @gimp_object_get_type() #6
  %call57 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %109, i64 %call56)
  %110 = bitcast %struct._GTypeInstance* %call57 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %110, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.60, i32 0, i32 0))
  %111 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %111, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([394 x i8], [394 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0), i8* null)
  %112 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %113 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp58 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %113, i32 0, i32 1
  %114 = load %struct._Gimp*, %struct._Gimp** %gimp58, align 8
  %call59 = call %struct._GParamSpec* @gimp_param_spec_image_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i32 0, i32 0), %struct._Gimp* %114, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %112, %struct._GParamSpec* %call59)
  %115 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call60 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.65, i32 0, i32 0), i32 1, i32 262144, i32 1, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %115, %struct._GParamSpec* %call60)
  %116 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call61 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.68, i32 0, i32 0), i32 1, i32 262144, i32 1, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %116, %struct._GParamSpec* %call61)
  %117 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call62 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.70, i32 0, i32 0), i32 -2147483648, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %117, %struct._GParamSpec* %call62)
  %118 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call63 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.72, i32 0, i32 0), i32 -2147483648, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %118, %struct._GParamSpec* %call63)
  %119 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %120 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %119, %struct._GimpProcedure* %120)
  %121 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %122 = bitcast %struct._GimpProcedure* %121 to i8*
  call void @g_object_unref(i8* %122)
  %call64 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @image_resize_to_layers_invoker)
  store %struct._GimpProcedure* %call64, %struct._GimpProcedure** %procedure, align 8
  %123 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %124 = bitcast %struct._GimpProcedure* %123 to %struct._GTypeInstance*
  %call65 = call i64 @gimp_object_get_type() #6
  %call66 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %124, i64 %call65)
  %125 = bitcast %struct._GTypeInstance* %call66 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %125, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.73, i32 0, i32 0))
  %126 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %126, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.73, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.74, i32 0, i32 0), i8* getelementptr inbounds ([248 x i8], [248 x i8]* @.str.75, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.76, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.76, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.77, i32 0, i32 0), i8* null)
  %127 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %128 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp67 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %128, i32 0, i32 1
  %129 = load %struct._Gimp*, %struct._Gimp** %gimp67, align 8
  %call68 = call %struct._GParamSpec* @gimp_param_spec_image_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i32 0, i32 0), %struct._Gimp* %129, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %127, %struct._GParamSpec* %call68)
  %130 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %131 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %130, %struct._GimpProcedure* %131)
  %132 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %133 = bitcast %struct._GimpProcedure* %132 to i8*
  call void @g_object_unref(i8* %133)
  %call69 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @image_scale_invoker)
  store %struct._GimpProcedure* %call69, %struct._GimpProcedure** %procedure, align 8
  %134 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %135 = bitcast %struct._GimpProcedure* %134 to %struct._GTypeInstance*
  %call70 = call i64 @gimp_object_get_type() #6
  %call71 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %135, i64 %call70)
  %136 = bitcast %struct._GTypeInstance* %call71 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %136, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.78, i32 0, i32 0))
  %137 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %137, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.79, i32 0, i32 0), i8* getelementptr inbounds ([314 x i8], [314 x i8]* @.str.80, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0), i8* null)
  %138 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %139 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp72 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %139, i32 0, i32 1
  %140 = load %struct._Gimp*, %struct._Gimp** %gimp72, align 8
  %call73 = call %struct._GParamSpec* @gimp_param_spec_image_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i32 0, i32 0), %struct._Gimp* %140, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %138, %struct._GParamSpec* %call73)
  %141 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call74 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.65, i32 0, i32 0), i32 1, i32 262144, i32 1, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %141, %struct._GParamSpec* %call74)
  %142 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call75 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.68, i32 0, i32 0), i32 1, i32 262144, i32 1, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %142, %struct._GParamSpec* %call75)
  %143 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %144 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %143, %struct._GimpProcedure* %144)
  %145 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %146 = bitcast %struct._GimpProcedure* %145 to i8*
  call void @g_object_unref(i8* %146)
  %call76 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @image_scale_full_invoker)
  store %struct._GimpProcedure* %call76, %struct._GimpProcedure** %procedure, align 8
  %147 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %148 = bitcast %struct._GimpProcedure* %147 to %struct._GTypeInstance*
  %call77 = call i64 @gimp_object_get_type() #6
  %call78 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %148, i64 %call77)
  %149 = bitcast %struct._GTypeInstance* %call78 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %149, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.81, i32 0, i32 0))
  %150 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %150, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.81, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.82, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.82, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.83, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.78, i32 0, i32 0))
  %151 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %152 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp79 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %152, i32 0, i32 1
  %153 = load %struct._Gimp*, %struct._Gimp** %gimp79, align 8
  %call80 = call %struct._GParamSpec* @gimp_param_spec_image_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i32 0, i32 0), %struct._Gimp* %153, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %151, %struct._GParamSpec* %call80)
  %154 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call81 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.65, i32 0, i32 0), i32 1, i32 262144, i32 1, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %154, %struct._GParamSpec* %call81)
  %155 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call82 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.68, i32 0, i32 0), i32 1, i32 262144, i32 1, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %155, %struct._GParamSpec* %call82)
  %156 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call83 = call i64 @gimp_interpolation_type_get_type() #6
  %call84 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.84, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.84, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.85, i32 0, i32 0), i64 %call83, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %156, %struct._GParamSpec* %call84)
  %157 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %158 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %157, %struct._GimpProcedure* %158)
  %159 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %160 = bitcast %struct._GimpProcedure* %159 to i8*
  call void @g_object_unref(i8* %160)
  %call85 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @image_crop_invoker)
  store %struct._GimpProcedure* %call85, %struct._GimpProcedure** %procedure, align 8
  %161 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %162 = bitcast %struct._GimpProcedure* %161 to %struct._GTypeInstance*
  %call86 = call i64 @gimp_object_get_type() #6
  %call87 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %162, i64 %call86)
  %163 = bitcast %struct._GTypeInstance* %call87 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %163, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.86, i32 0, i32 0))
  %164 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %164, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.86, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.87, i32 0, i32 0), i8* getelementptr inbounds ([367 x i8], [367 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0), i8* null)
  %165 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %166 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp88 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %166, i32 0, i32 1
  %167 = load %struct._Gimp*, %struct._Gimp** %gimp88, align 8
  %call89 = call %struct._GParamSpec* @gimp_param_spec_image_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i32 0, i32 0), %struct._Gimp* %167, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %165, %struct._GParamSpec* %call89)
  %168 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call90 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.89, i32 0, i32 0), i32 1, i32 262144, i32 1, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %168, %struct._GParamSpec* %call90)
  %169 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call91 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.90, i32 0, i32 0), i32 1, i32 262144, i32 1, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %169, %struct._GParamSpec* %call91)
  %170 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call92 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.91, i32 0, i32 0), i32 0, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %170, %struct._GParamSpec* %call92)
  %171 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call93 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.92, i32 0, i32 0), i32 0, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %171, %struct._GParamSpec* %call93)
  %172 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %173 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %172, %struct._GimpProcedure* %173)
  %174 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %175 = bitcast %struct._GimpProcedure* %174 to i8*
  call void @g_object_unref(i8* %175)
  %call94 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @image_flip_invoker)
  store %struct._GimpProcedure* %call94, %struct._GimpProcedure** %procedure, align 8
  %176 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %177 = bitcast %struct._GimpProcedure* %176 to %struct._GTypeInstance*
  %call95 = call i64 @gimp_object_get_type() #6
  %call96 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %177, i64 %call95)
  %178 = bitcast %struct._GTypeInstance* %call96 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %178, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.93, i32 0, i32 0))
  %179 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %179, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.93, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.94, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.95, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0), i8* null)
  %180 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %181 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp97 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %181, i32 0, i32 1
  %182 = load %struct._Gimp*, %struct._Gimp** %gimp97, align 8
  %call98 = call %struct._GParamSpec* @gimp_param_spec_image_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i32 0, i32 0), %struct._Gimp* %182, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %180, %struct._GParamSpec* %call98)
  %183 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call99 = call i64 @gimp_orientation_type_get_type() #6
  %call100 = call %struct._GParamSpec* @gimp_param_spec_enum(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.96, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.98, i32 0, i32 0), i64 %call99, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %183, %struct._GParamSpec* %call100)
  %184 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %args = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %184, i32 0, i32 11
  %185 = load %struct._GParamSpec**, %struct._GParamSpec*** %args, align 8
  %arrayidx = getelementptr inbounds %struct._GParamSpec*, %struct._GParamSpec** %185, i64 1
  %186 = load %struct._GParamSpec*, %struct._GParamSpec** %arrayidx, align 8
  %187 = bitcast %struct._GParamSpec* %186 to %struct._GTypeInstance*
  %call101 = call i64 @gimp_param_enum_get_type() #6
  %call102 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %187, i64 %call101)
  %188 = bitcast %struct._GTypeInstance* %call102 to %struct._GimpParamSpecEnum*
  call void @gimp_param_spec_enum_exclude_value(%struct._GimpParamSpecEnum* %188, i32 2)
  %189 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %190 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %189, %struct._GimpProcedure* %190)
  %191 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %192 = bitcast %struct._GimpProcedure* %191 to i8*
  call void @g_object_unref(i8* %192)
  %call103 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @image_rotate_invoker)
  store %struct._GimpProcedure* %call103, %struct._GimpProcedure** %procedure, align 8
  %193 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %194 = bitcast %struct._GimpProcedure* %193 to %struct._GTypeInstance*
  %call104 = call i64 @gimp_object_get_type() #6
  %call105 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %194, i64 %call104)
  %195 = bitcast %struct._GTypeInstance* %call105 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %195, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.99, i32 0, i32 0))
  %196 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %196, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.99, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.100, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.101, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.102, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.103, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.104, i32 0, i32 0), i8* null)
  %197 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %198 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp106 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %198, i32 0, i32 1
  %199 = load %struct._Gimp*, %struct._Gimp** %gimp106, align 8
  %call107 = call %struct._GParamSpec* @gimp_param_spec_image_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i32 0, i32 0), %struct._Gimp* %199, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %197, %struct._GParamSpec* %call107)
  %200 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call108 = call i64 @gimp_rotation_type_get_type() #6
  %call109 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.105, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.106, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.107, i32 0, i32 0), i64 %call108, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %200, %struct._GParamSpec* %call109)
  %201 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %202 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %201, %struct._GimpProcedure* %202)
  %203 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %204 = bitcast %struct._GimpProcedure* %203 to i8*
  call void @g_object_unref(i8* %204)
  %call110 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @image_get_layers_invoker)
  store %struct._GimpProcedure* %call110, %struct._GimpProcedure** %procedure, align 8
  %205 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %206 = bitcast %struct._GimpProcedure* %205 to %struct._GTypeInstance*
  %call111 = call i64 @gimp_object_get_type() #6
  %call112 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %206, i64 %call111)
  %207 = bitcast %struct._GTypeInstance* %call112 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %207, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.108, i32 0, i32 0))
  %208 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %208, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.108, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.109, i32 0, i32 0), i8* getelementptr inbounds ([127 x i8], [127 x i8]* @.str.110, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0), i8* null)
  %209 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %210 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp113 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %210, i32 0, i32 1
  %211 = load %struct._Gimp*, %struct._Gimp** %gimp113, align 8
  %call114 = call %struct._GParamSpec* @gimp_param_spec_image_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i32 0, i32 0), %struct._Gimp* %211, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %209, %struct._GParamSpec* %call114)
  %212 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call115 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.111, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.112, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.113, i32 0, i32 0), i32 0, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %212, %struct._GParamSpec* %call115)
  %213 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call116 = call %struct._GParamSpec* @gimp_param_spec_int32_array(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.114, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.115, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.116, i32 0, i32 0), i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %213, %struct._GParamSpec* %call116)
  %214 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %215 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %214, %struct._GimpProcedure* %215)
  %216 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %217 = bitcast %struct._GimpProcedure* %216 to i8*
  call void @g_object_unref(i8* %217)
  %call117 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @image_get_channels_invoker)
  store %struct._GimpProcedure* %call117, %struct._GimpProcedure** %procedure, align 8
  %218 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %219 = bitcast %struct._GimpProcedure* %218 to %struct._GTypeInstance*
  %call118 = call i64 @gimp_object_get_type() #6
  %call119 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %219, i64 %call118)
  %220 = bitcast %struct._GTypeInstance* %call119 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %220, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.117, i32 0, i32 0))
  %221 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %221, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.117, i32 0, i32 0), i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.118, i32 0, i32 0), i8* getelementptr inbounds ([177 x i8], [177 x i8]* @.str.119, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0), i8* null)
  %222 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %223 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp120 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %223, i32 0, i32 1
  %224 = load %struct._Gimp*, %struct._Gimp** %gimp120, align 8
  %call121 = call %struct._GParamSpec* @gimp_param_spec_image_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i32 0, i32 0), %struct._Gimp* %224, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %222, %struct._GParamSpec* %call121)
  %225 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call122 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.120, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.121, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.122, i32 0, i32 0), i32 0, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %225, %struct._GParamSpec* %call122)
  %226 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call123 = call %struct._GParamSpec* @gimp_param_spec_int32_array(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.123, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.124, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.125, i32 0, i32 0), i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %226, %struct._GParamSpec* %call123)
  %227 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %228 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %227, %struct._GimpProcedure* %228)
  %229 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %230 = bitcast %struct._GimpProcedure* %229 to i8*
  call void @g_object_unref(i8* %230)
  %call124 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @image_get_vectors_invoker)
  store %struct._GimpProcedure* %call124, %struct._GimpProcedure** %procedure, align 8
  %231 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %232 = bitcast %struct._GimpProcedure* %231 to %struct._GTypeInstance*
  %call125 = call i64 @gimp_object_get_type() #6
  %call126 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %232, i64 %call125)
  %233 = bitcast %struct._GTypeInstance* %call126 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %233, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.126, i32 0, i32 0))
  %234 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %234, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.126, i32 0, i32 0), i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.127, i32 0, i32 0), i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.128, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.76, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.76, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.129, i32 0, i32 0), i8* null)
  %235 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %236 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp127 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %236, i32 0, i32 1
  %237 = load %struct._Gimp*, %struct._Gimp** %gimp127, align 8
  %call128 = call %struct._GParamSpec* @gimp_param_spec_image_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i32 0, i32 0), %struct._Gimp* %237, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %235, %struct._GParamSpec* %call128)
  %238 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call129 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.130, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.131, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.132, i32 0, i32 0), i32 0, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %238, %struct._GParamSpec* %call129)
  %239 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call130 = call %struct._GParamSpec* @gimp_param_spec_int32_array(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.133, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.134, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.135, i32 0, i32 0), i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %239, %struct._GParamSpec* %call130)
  %240 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %241 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %240, %struct._GimpProcedure* %241)
  %242 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %243 = bitcast %struct._GimpProcedure* %242 to i8*
  call void @g_object_unref(i8* %243)
  %call131 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @image_get_active_drawable_invoker)
  store %struct._GimpProcedure* %call131, %struct._GimpProcedure** %procedure, align 8
  %244 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %245 = bitcast %struct._GimpProcedure* %244 to %struct._GTypeInstance*
  %call132 = call i64 @gimp_object_get_type() #6
  %call133 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %245, i64 %call132)
  %246 = bitcast %struct._GTypeInstance* %call133 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %246, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.136, i32 0, i32 0))
  %247 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %247, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.136, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.137, i32 0, i32 0), i8* getelementptr inbounds ([350 x i8], [350 x i8]* @.str.138, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0), i8* null)
  %248 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %249 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp134 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %249, i32 0, i32 1
  %250 = load %struct._Gimp*, %struct._Gimp** %gimp134, align 8
  %call135 = call %struct._GParamSpec* @gimp_param_spec_image_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i32 0, i32 0), %struct._Gimp* %250, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %248, %struct._GParamSpec* %call135)
  %251 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %252 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp136 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %252, i32 0, i32 1
  %253 = load %struct._Gimp*, %struct._Gimp** %gimp136, align 8
  %call137 = call %struct._GParamSpec* @gimp_param_spec_drawable_id(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.139, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.139, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.140, i32 0, i32 0), %struct._Gimp* %253, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %251, %struct._GParamSpec* %call137)
  %254 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %255 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %254, %struct._GimpProcedure* %255)
  %256 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %257 = bitcast %struct._GimpProcedure* %256 to i8*
  call void @g_object_unref(i8* %257)
  %call138 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @image_unset_active_channel_invoker)
  store %struct._GimpProcedure* %call138, %struct._GimpProcedure** %procedure, align 8
  %258 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %259 = bitcast %struct._GimpProcedure* %258 to %struct._GTypeInstance*
  %call139 = call i64 @gimp_object_get_type() #6
  %call140 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %259, i64 %call139)
  %260 = bitcast %struct._GTypeInstance* %call140 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %260, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.141, i32 0, i32 0))
  %261 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %261, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.141, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.142, i32 0, i32 0), i8* getelementptr inbounds ([214 x i8], [214 x i8]* @.str.143, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0), i8* null)
  %262 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %263 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp141 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %263, i32 0, i32 1
  %264 = load %struct._Gimp*, %struct._Gimp** %gimp141, align 8
  %call142 = call %struct._GParamSpec* @gimp_param_spec_image_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i32 0, i32 0), %struct._Gimp* %264, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %262, %struct._GParamSpec* %call142)
  %265 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %266 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %265, %struct._GimpProcedure* %266)
  %267 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %268 = bitcast %struct._GimpProcedure* %267 to i8*
  call void @g_object_unref(i8* %268)
  %call143 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @image_get_floating_sel_invoker)
  store %struct._GimpProcedure* %call143, %struct._GimpProcedure** %procedure, align 8
  %269 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %270 = bitcast %struct._GimpProcedure* %269 to %struct._GTypeInstance*
  %call144 = call i64 @gimp_object_get_type() #6
  %call145 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %270, i64 %call144)
  %271 = bitcast %struct._GTypeInstance* %call145 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %271, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.144, i32 0, i32 0))
  %272 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %272, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.144, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.145, i32 0, i32 0), i8* getelementptr inbounds ([122 x i8], [122 x i8]* @.str.146, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0), i8* null)
  %273 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %274 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp146 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %274, i32 0, i32 1
  %275 = load %struct._Gimp*, %struct._Gimp** %gimp146, align 8
  %call147 = call %struct._GParamSpec* @gimp_param_spec_image_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i32 0, i32 0), %struct._Gimp* %275, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %273, %struct._GParamSpec* %call147)
  %276 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %277 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp148 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %277, i32 0, i32 1
  %278 = load %struct._Gimp*, %struct._Gimp** %gimp148, align 8
  %call149 = call %struct._GParamSpec* @gimp_param_spec_layer_id(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.147, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.148, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.149, i32 0, i32 0), %struct._Gimp* %278, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %276, %struct._GParamSpec* %call149)
  %279 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %280 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %279, %struct._GimpProcedure* %280)
  %281 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %282 = bitcast %struct._GimpProcedure* %281 to i8*
  call void @g_object_unref(i8* %282)
  %call150 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @image_floating_sel_attached_to_invoker)
  store %struct._GimpProcedure* %call150, %struct._GimpProcedure** %procedure, align 8
  %283 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %284 = bitcast %struct._GimpProcedure* %283 to %struct._GTypeInstance*
  %call151 = call i64 @gimp_object_get_type() #6
  %call152 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %284, i64 %call151)
  %285 = bitcast %struct._GTypeInstance* %call152 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %285, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.150, i32 0, i32 0))
  %286 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %286, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.150, i32 0, i32 0), i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.151, i32 0, i32 0), i8* getelementptr inbounds ([153 x i8], [153 x i8]* @.str.152, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.153, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.153, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.154, i32 0, i32 0), i8* null)
  %287 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %288 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp153 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %288, i32 0, i32 1
  %289 = load %struct._Gimp*, %struct._Gimp** %gimp153, align 8
  %call154 = call %struct._GParamSpec* @gimp_param_spec_image_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i32 0, i32 0), %struct._Gimp* %289, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %287, %struct._GParamSpec* %call154)
  %290 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %291 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp155 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %291, i32 0, i32 1
  %292 = load %struct._Gimp*, %struct._Gimp** %gimp155, align 8
  %call156 = call %struct._GParamSpec* @gimp_param_spec_drawable_id(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.139, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.139, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.155, i32 0, i32 0), %struct._Gimp* %292, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %290, %struct._GParamSpec* %call156)
  %293 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %294 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %293, %struct._GimpProcedure* %294)
  %295 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %296 = bitcast %struct._GimpProcedure* %295 to i8*
  call void @g_object_unref(i8* %296)
  %call157 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @image_pick_color_invoker)
  store %struct._GimpProcedure* %call157, %struct._GimpProcedure** %procedure, align 8
  %297 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %298 = bitcast %struct._GimpProcedure* %297 to %struct._GTypeInstance*
  %call158 = call i64 @gimp_object_get_type() #6
  %call159 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %298, i64 %call158)
  %299 = bitcast %struct._GTypeInstance* %call159 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %299, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.156, i32 0, i32 0))
  %300 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %300, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.156, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.157, i32 0, i32 0), i8* getelementptr inbounds ([703 x i8], [703 x i8]* @.str.158, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0), i8* null)
  %301 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %302 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp160 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %302, i32 0, i32 1
  %303 = load %struct._Gimp*, %struct._Gimp** %gimp160, align 8
  %call161 = call %struct._GParamSpec* @gimp_param_spec_image_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i32 0, i32 0), %struct._Gimp* %303, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %301, %struct._GParamSpec* %call161)
  %304 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %305 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp162 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %305, i32 0, i32 1
  %306 = load %struct._Gimp*, %struct._Gimp** %gimp162, align 8
  %call163 = call %struct._GParamSpec* @gimp_param_spec_drawable_id(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.139, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.139, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.159, i32 0, i32 0), %struct._Gimp* %306, i32 1, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %304, %struct._GParamSpec* %call163)
  %307 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call164 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.160, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.160, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.161, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %307, %struct._GParamSpec* %call164)
  %308 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call165 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.162, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.162, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.163, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %308, %struct._GParamSpec* %call165)
  %309 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call166 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.164, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.165, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.166, i32 0, i32 0), i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %309, %struct._GParamSpec* %call166)
  %310 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call167 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.167, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.168, i32 0, i32 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.169, i32 0, i32 0), i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %310, %struct._GParamSpec* %call167)
  %311 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call168 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.170, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.171, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.172, i32 0, i32 0), double 0.000000e+00, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 16611)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %311, %struct._GParamSpec* %call168)
  %312 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call169 = call %struct._GParamSpec* @gimp_param_spec_rgb(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.173, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.173, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.174, i32 0, i32 0), i32 1, %struct._GimpRGB* null, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %312, %struct._GParamSpec* %call169)
  %313 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %314 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %313, %struct._GimpProcedure* %314)
  %315 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %316 = bitcast %struct._GimpProcedure* %315 to i8*
  call void @g_object_unref(i8* %316)
  %call170 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @image_pick_correlate_layer_invoker)
  store %struct._GimpProcedure* %call170, %struct._GimpProcedure** %procedure, align 8
  %317 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %318 = bitcast %struct._GimpProcedure* %317 to %struct._GTypeInstance*
  %call171 = call i64 @gimp_object_get_type() #6
  %call172 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %318, i64 %call171)
  %319 = bitcast %struct._GTypeInstance* %call172 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %319, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.175, i32 0, i32 0))
  %320 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %320, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.175, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.176, i32 0, i32 0), i8* getelementptr inbounds ([283 x i8], [283 x i8]* @.str.177, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0), i8* null)
  %321 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %322 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp173 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %322, i32 0, i32 1
  %323 = load %struct._Gimp*, %struct._Gimp** %gimp173, align 8
  %call174 = call %struct._GParamSpec* @gimp_param_spec_image_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i32 0, i32 0), %struct._Gimp* %323, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %321, %struct._GParamSpec* %call174)
  %324 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call175 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.160, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.160, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.178, i32 0, i32 0), i32 -2147483648, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %324, %struct._GParamSpec* %call175)
  %325 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call176 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.162, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.162, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.179, i32 0, i32 0), i32 -2147483648, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %325, %struct._GParamSpec* %call176)
  %326 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %327 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp177 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %327, i32 0, i32 1
  %328 = load %struct._Gimp*, %struct._Gimp** %gimp177, align 8
  %call178 = call %struct._GParamSpec* @gimp_param_spec_layer_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.180, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.180, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.181, i32 0, i32 0), %struct._Gimp* %328, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %326, %struct._GParamSpec* %call178)
  %329 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %330 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %329, %struct._GimpProcedure* %330)
  %331 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %332 = bitcast %struct._GimpProcedure* %331 to i8*
  call void @g_object_unref(i8* %332)
  %call179 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @image_add_layer_invoker)
  store %struct._GimpProcedure* %call179, %struct._GimpProcedure** %procedure, align 8
  %333 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %334 = bitcast %struct._GimpProcedure* %333 to %struct._GTypeInstance*
  %call180 = call i64 @gimp_object_get_type() #6
  %call181 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %334, i64 %call180)
  %335 = bitcast %struct._GTypeInstance* %call181 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %335, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.182, i32 0, i32 0))
  %336 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %336, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.182, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.183, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.183, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.184, i32 0, i32 0))
  %337 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %338 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp182 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %338, i32 0, i32 1
  %339 = load %struct._Gimp*, %struct._Gimp** %gimp182, align 8
  %call183 = call %struct._GParamSpec* @gimp_param_spec_image_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i32 0, i32 0), %struct._Gimp* %339, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %337, %struct._GParamSpec* %call183)
  %340 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %341 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp184 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %341, i32 0, i32 1
  %342 = load %struct._Gimp*, %struct._Gimp** %gimp184, align 8
  %call185 = call %struct._GParamSpec* @gimp_param_spec_layer_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.180, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.180, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.185, i32 0, i32 0), %struct._Gimp* %342, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %340, %struct._GParamSpec* %call185)
  %343 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call186 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.186, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.186, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.187, i32 0, i32 0), i32 -2147483648, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %343, %struct._GParamSpec* %call186)
  %344 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %345 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %344, %struct._GimpProcedure* %345)
  %346 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %347 = bitcast %struct._GimpProcedure* %346 to i8*
  call void @g_object_unref(i8* %347)
  %call187 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @image_insert_layer_invoker)
  store %struct._GimpProcedure* %call187, %struct._GimpProcedure** %procedure, align 8
  %348 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %349 = bitcast %struct._GimpProcedure* %348 to %struct._GTypeInstance*
  %call188 = call i64 @gimp_object_get_type() #6
  %call189 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %349, i64 %call188)
  %350 = bitcast %struct._GTypeInstance* %call189 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %350, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.184, i32 0, i32 0))
  %351 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %351, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.184, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.188, i32 0, i32 0), i8* getelementptr inbounds ([706 x i8], [706 x i8]* @.str.189, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0), i8* null)
  %352 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %353 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp190 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %353, i32 0, i32 1
  %354 = load %struct._Gimp*, %struct._Gimp** %gimp190, align 8
  %call191 = call %struct._GParamSpec* @gimp_param_spec_image_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i32 0, i32 0), %struct._Gimp* %354, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %352, %struct._GParamSpec* %call191)
  %355 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %356 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp192 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %356, i32 0, i32 1
  %357 = load %struct._Gimp*, %struct._Gimp** %gimp192, align 8
  %call193 = call %struct._GParamSpec* @gimp_param_spec_layer_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.180, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.180, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.185, i32 0, i32 0), %struct._Gimp* %357, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %355, %struct._GParamSpec* %call193)
  %358 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %359 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp194 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %359, i32 0, i32 1
  %360 = load %struct._Gimp*, %struct._Gimp** %gimp194, align 8
  %call195 = call %struct._GParamSpec* @gimp_param_spec_layer_id(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.190, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.190, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.191, i32 0, i32 0), %struct._Gimp* %360, i32 1, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %358, %struct._GParamSpec* %call195)
  %361 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call196 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.186, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.186, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.187, i32 0, i32 0), i32 -2147483648, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %361, %struct._GParamSpec* %call196)
  %362 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %363 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %362, %struct._GimpProcedure* %363)
  %364 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %365 = bitcast %struct._GimpProcedure* %364 to i8*
  call void @g_object_unref(i8* %365)
  %call197 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @image_remove_layer_invoker)
  store %struct._GimpProcedure* %call197, %struct._GimpProcedure** %procedure, align 8
  %366 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %367 = bitcast %struct._GimpProcedure* %366 to %struct._GTypeInstance*
  %call198 = call i64 @gimp_object_get_type() #6
  %call199 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %367, i64 %call198)
  %368 = bitcast %struct._GTypeInstance* %call199 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %368, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.192, i32 0, i32 0))
  %369 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %369, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.192, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.193, i32 0, i32 0), i8* getelementptr inbounds ([269 x i8], [269 x i8]* @.str.194, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0), i8* null)
  %370 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %371 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp200 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %371, i32 0, i32 1
  %372 = load %struct._Gimp*, %struct._Gimp** %gimp200, align 8
  %call201 = call %struct._GParamSpec* @gimp_param_spec_image_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i32 0, i32 0), %struct._Gimp* %372, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %370, %struct._GParamSpec* %call201)
  %373 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %374 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp202 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %374, i32 0, i32 1
  %375 = load %struct._Gimp*, %struct._Gimp** %gimp202, align 8
  %call203 = call %struct._GParamSpec* @gimp_param_spec_layer_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.180, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.180, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.185, i32 0, i32 0), %struct._Gimp* %375, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %373, %struct._GParamSpec* %call203)
  %376 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %377 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %376, %struct._GimpProcedure* %377)
  %378 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %379 = bitcast %struct._GimpProcedure* %378 to i8*
  call void @g_object_unref(i8* %379)
  %call204 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @image_add_channel_invoker)
  store %struct._GimpProcedure* %call204, %struct._GimpProcedure** %procedure, align 8
  %380 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %381 = bitcast %struct._GimpProcedure* %380 to %struct._GTypeInstance*
  %call205 = call i64 @gimp_object_get_type() #6
  %call206 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %381, i64 %call205)
  %382 = bitcast %struct._GTypeInstance* %call206 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %382, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.195, i32 0, i32 0))
  %383 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %383, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.195, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.196, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.196, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.197, i32 0, i32 0))
  %384 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %385 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp207 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %385, i32 0, i32 1
  %386 = load %struct._Gimp*, %struct._Gimp** %gimp207, align 8
  %call208 = call %struct._GParamSpec* @gimp_param_spec_image_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i32 0, i32 0), %struct._Gimp* %386, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %384, %struct._GParamSpec* %call208)
  %387 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %388 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp209 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %388, i32 0, i32 1
  %389 = load %struct._Gimp*, %struct._Gimp** %gimp209, align 8
  %call210 = call %struct._GParamSpec* @gimp_param_spec_channel_id(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.198, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.198, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.199, i32 0, i32 0), %struct._Gimp* %389, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %387, %struct._GParamSpec* %call210)
  %390 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call211 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.186, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.186, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.200, i32 0, i32 0), i32 -2147483648, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %390, %struct._GParamSpec* %call211)
  %391 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %392 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %391, %struct._GimpProcedure* %392)
  %393 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %394 = bitcast %struct._GimpProcedure* %393 to i8*
  call void @g_object_unref(i8* %394)
  %call212 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @image_insert_channel_invoker)
  store %struct._GimpProcedure* %call212, %struct._GimpProcedure** %procedure, align 8
  %395 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %396 = bitcast %struct._GimpProcedure* %395 to %struct._GTypeInstance*
  %call213 = call i64 @gimp_object_get_type() #6
  %call214 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %396, i64 %call213)
  %397 = bitcast %struct._GTypeInstance* %call214 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %397, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.197, i32 0, i32 0))
  %398 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %398, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.197, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.201, i32 0, i32 0), i8* getelementptr inbounds ([377 x i8], [377 x i8]* @.str.202, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0), i8* null)
  %399 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %400 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp215 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %400, i32 0, i32 1
  %401 = load %struct._Gimp*, %struct._Gimp** %gimp215, align 8
  %call216 = call %struct._GParamSpec* @gimp_param_spec_image_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i32 0, i32 0), %struct._Gimp* %401, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %399, %struct._GParamSpec* %call216)
  %402 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %403 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp217 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %403, i32 0, i32 1
  %404 = load %struct._Gimp*, %struct._Gimp** %gimp217, align 8
  %call218 = call %struct._GParamSpec* @gimp_param_spec_channel_id(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.198, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.198, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.199, i32 0, i32 0), %struct._Gimp* %404, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %402, %struct._GParamSpec* %call218)
  %405 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %406 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp219 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %406, i32 0, i32 1
  %407 = load %struct._Gimp*, %struct._Gimp** %gimp219, align 8
  %call220 = call %struct._GParamSpec* @gimp_param_spec_channel_id(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.190, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.190, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.203, i32 0, i32 0), %struct._Gimp* %407, i32 1, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %405, %struct._GParamSpec* %call220)
  %408 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call221 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.186, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.186, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.200, i32 0, i32 0), i32 -2147483648, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %408, %struct._GParamSpec* %call221)
  %409 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %410 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %409, %struct._GimpProcedure* %410)
  %411 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %412 = bitcast %struct._GimpProcedure* %411 to i8*
  call void @g_object_unref(i8* %412)
  %call222 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @image_remove_channel_invoker)
  store %struct._GimpProcedure* %call222, %struct._GimpProcedure** %procedure, align 8
  %413 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %414 = bitcast %struct._GimpProcedure* %413 to %struct._GTypeInstance*
  %call223 = call i64 @gimp_object_get_type() #6
  %call224 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %414, i64 %call223)
  %415 = bitcast %struct._GTypeInstance* %call224 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %415, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.204, i32 0, i32 0))
  %416 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %416, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.204, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.205, i32 0, i32 0), i8* getelementptr inbounds ([113 x i8], [113 x i8]* @.str.206, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0), i8* null)
  %417 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %418 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp225 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %418, i32 0, i32 1
  %419 = load %struct._Gimp*, %struct._Gimp** %gimp225, align 8
  %call226 = call %struct._GParamSpec* @gimp_param_spec_image_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i32 0, i32 0), %struct._Gimp* %419, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %417, %struct._GParamSpec* %call226)
  %420 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %421 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp227 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %421, i32 0, i32 1
  %422 = load %struct._Gimp*, %struct._Gimp** %gimp227, align 8
  %call228 = call %struct._GParamSpec* @gimp_param_spec_channel_id(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.198, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.198, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.199, i32 0, i32 0), %struct._Gimp* %422, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %420, %struct._GParamSpec* %call228)
  %423 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %424 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %423, %struct._GimpProcedure* %424)
  %425 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %426 = bitcast %struct._GimpProcedure* %425 to i8*
  call void @g_object_unref(i8* %426)
  %call229 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @image_add_vectors_invoker)
  store %struct._GimpProcedure* %call229, %struct._GimpProcedure** %procedure, align 8
  %427 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %428 = bitcast %struct._GimpProcedure* %427 to %struct._GTypeInstance*
  %call230 = call i64 @gimp_object_get_type() #6
  %call231 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %428, i64 %call230)
  %429 = bitcast %struct._GTypeInstance* %call231 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %429, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.207, i32 0, i32 0))
  %430 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %430, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.207, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.208, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.208, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.209, i32 0, i32 0))
  %431 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %432 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp232 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %432, i32 0, i32 1
  %433 = load %struct._Gimp*, %struct._Gimp** %gimp232, align 8
  %call233 = call %struct._GParamSpec* @gimp_param_spec_image_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i32 0, i32 0), %struct._Gimp* %433, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %431, %struct._GParamSpec* %call233)
  %434 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %435 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp234 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %435, i32 0, i32 1
  %436 = load %struct._Gimp*, %struct._Gimp** %gimp234, align 8
  %call235 = call %struct._GParamSpec* @gimp_param_spec_vectors_id(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.210, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.210, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.211, i32 0, i32 0), %struct._Gimp* %436, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %434, %struct._GParamSpec* %call235)
  %437 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call236 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.186, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.186, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.212, i32 0, i32 0), i32 -2147483648, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %437, %struct._GParamSpec* %call236)
  %438 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %439 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %438, %struct._GimpProcedure* %439)
  %440 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %441 = bitcast %struct._GimpProcedure* %440 to i8*
  call void @g_object_unref(i8* %441)
  %call237 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @image_insert_vectors_invoker)
  store %struct._GimpProcedure* %call237, %struct._GimpProcedure** %procedure, align 8
  %442 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %443 = bitcast %struct._GimpProcedure* %442 to %struct._GTypeInstance*
  %call238 = call i64 @gimp_object_get_type() #6
  %call239 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %443, i64 %call238)
  %444 = bitcast %struct._GTypeInstance* %call239 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %444, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.209, i32 0, i32 0))
  %445 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %445, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.209, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.213, i32 0, i32 0), i8* getelementptr inbounds ([377 x i8], [377 x i8]* @.str.214, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0), i8* null)
  %446 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %447 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp240 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %447, i32 0, i32 1
  %448 = load %struct._Gimp*, %struct._Gimp** %gimp240, align 8
  %call241 = call %struct._GParamSpec* @gimp_param_spec_image_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i32 0, i32 0), %struct._Gimp* %448, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %446, %struct._GParamSpec* %call241)
  %449 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %450 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp242 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %450, i32 0, i32 1
  %451 = load %struct._Gimp*, %struct._Gimp** %gimp242, align 8
  %call243 = call %struct._GParamSpec* @gimp_param_spec_vectors_id(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.210, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.210, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.215, i32 0, i32 0), %struct._Gimp* %451, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %449, %struct._GParamSpec* %call243)
  %452 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %453 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp244 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %453, i32 0, i32 1
  %454 = load %struct._Gimp*, %struct._Gimp** %gimp244, align 8
  %call245 = call %struct._GParamSpec* @gimp_param_spec_vectors_id(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.190, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.190, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.216, i32 0, i32 0), %struct._Gimp* %454, i32 1, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %452, %struct._GParamSpec* %call245)
  %455 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call246 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.186, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.186, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.217, i32 0, i32 0), i32 -2147483648, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %455, %struct._GParamSpec* %call246)
  %456 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %457 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %456, %struct._GimpProcedure* %457)
  %458 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %459 = bitcast %struct._GimpProcedure* %458 to i8*
  call void @g_object_unref(i8* %459)
  %call247 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @image_remove_vectors_invoker)
  store %struct._GimpProcedure* %call247, %struct._GimpProcedure** %procedure, align 8
  %460 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %461 = bitcast %struct._GimpProcedure* %460 to %struct._GTypeInstance*
  %call248 = call i64 @gimp_object_get_type() #6
  %call249 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %461, i64 %call248)
  %462 = bitcast %struct._GTypeInstance* %call249 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %462, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.218, i32 0, i32 0))
  %463 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %463, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.218, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.219, i32 0, i32 0), i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str.220, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.76, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.76, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.129, i32 0, i32 0), i8* null)
  %464 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %465 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp250 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %465, i32 0, i32 1
  %466 = load %struct._Gimp*, %struct._Gimp** %gimp250, align 8
  %call251 = call %struct._GParamSpec* @gimp_param_spec_image_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i32 0, i32 0), %struct._Gimp* %466, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %464, %struct._GParamSpec* %call251)
  %467 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %468 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp252 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %468, i32 0, i32 1
  %469 = load %struct._Gimp*, %struct._Gimp** %gimp252, align 8
  %call253 = call %struct._GParamSpec* @gimp_param_spec_vectors_id(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.210, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.210, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.211, i32 0, i32 0), %struct._Gimp* %469, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %467, %struct._GParamSpec* %call253)
  %470 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %471 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %470, %struct._GimpProcedure* %471)
  %472 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %473 = bitcast %struct._GimpProcedure* %472 to i8*
  call void @g_object_unref(i8* %473)
  %call254 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @image_get_item_position_invoker)
  store %struct._GimpProcedure* %call254, %struct._GimpProcedure** %procedure, align 8
  %474 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %475 = bitcast %struct._GimpProcedure* %474 to %struct._GTypeInstance*
  %call255 = call i64 @gimp_object_get_type() #6
  %call256 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %475, i64 %call255)
  %476 = bitcast %struct._GTypeInstance* %call256 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %476, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.221, i32 0, i32 0))
  %477 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %477, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.221, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.222, i32 0, i32 0), i8* getelementptr inbounds ([208 x i8], [208 x i8]* @.str.223, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.102, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.103, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.224, i32 0, i32 0), i8* null)
  %478 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %479 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp257 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %479, i32 0, i32 1
  %480 = load %struct._Gimp*, %struct._Gimp** %gimp257, align 8
  %call258 = call %struct._GParamSpec* @gimp_param_spec_image_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i32 0, i32 0), %struct._Gimp* %480, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %478, %struct._GParamSpec* %call258)
  %481 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %482 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp259 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %482, i32 0, i32 1
  %483 = load %struct._Gimp*, %struct._Gimp** %gimp259, align 8
  %call260 = call %struct._GParamSpec* @gimp_param_spec_item_id(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.225, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.225, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.226, i32 0, i32 0), %struct._Gimp* %483, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %481, %struct._GParamSpec* %call260)
  %484 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call261 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.186, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.186, i32 0, i32 0), i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.227, i32 0, i32 0), i32 -2147483648, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %484, %struct._GParamSpec* %call261)
  %485 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %486 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %485, %struct._GimpProcedure* %486)
  %487 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %488 = bitcast %struct._GimpProcedure* %487 to i8*
  call void @g_object_unref(i8* %488)
  %call262 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @image_raise_item_invoker)
  store %struct._GimpProcedure* %call262, %struct._GimpProcedure** %procedure, align 8
  %489 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %490 = bitcast %struct._GimpProcedure* %489 to %struct._GTypeInstance*
  %call263 = call i64 @gimp_object_get_type() #6
  %call264 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %490, i64 %call263)
  %491 = bitcast %struct._GTypeInstance* %call264 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %491, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.228, i32 0, i32 0))
  %492 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %492, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.228, i32 0, i32 0), i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.229, i32 0, i32 0), i8* getelementptr inbounds ([127 x i8], [127 x i8]* @.str.230, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.102, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.103, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.224, i32 0, i32 0), i8* null)
  %493 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %494 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp265 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %494, i32 0, i32 1
  %495 = load %struct._Gimp*, %struct._Gimp** %gimp265, align 8
  %call266 = call %struct._GParamSpec* @gimp_param_spec_image_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i32 0, i32 0), %struct._Gimp* %495, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %493, %struct._GParamSpec* %call266)
  %496 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %497 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp267 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %497, i32 0, i32 1
  %498 = load %struct._Gimp*, %struct._Gimp** %gimp267, align 8
  %call268 = call %struct._GParamSpec* @gimp_param_spec_item_id(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.225, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.225, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.231, i32 0, i32 0), %struct._Gimp* %498, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %496, %struct._GParamSpec* %call268)
  %499 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %500 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %499, %struct._GimpProcedure* %500)
  %501 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %502 = bitcast %struct._GimpProcedure* %501 to i8*
  call void @g_object_unref(i8* %502)
  %call269 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @image_lower_item_invoker)
  store %struct._GimpProcedure* %call269, %struct._GimpProcedure** %procedure, align 8
  %503 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %504 = bitcast %struct._GimpProcedure* %503 to %struct._GTypeInstance*
  %call270 = call i64 @gimp_object_get_type() #6
  %call271 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %504, i64 %call270)
  %505 = bitcast %struct._GTypeInstance* %call271 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %505, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.232, i32 0, i32 0))
  %506 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %506, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.232, i32 0, i32 0), i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.233, i32 0, i32 0), i8* getelementptr inbounds ([127 x i8], [127 x i8]* @.str.234, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.102, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.103, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.224, i32 0, i32 0), i8* null)
  %507 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %508 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp272 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %508, i32 0, i32 1
  %509 = load %struct._Gimp*, %struct._Gimp** %gimp272, align 8
  %call273 = call %struct._GParamSpec* @gimp_param_spec_image_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i32 0, i32 0), %struct._Gimp* %509, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %507, %struct._GParamSpec* %call273)
  %510 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %511 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp274 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %511, i32 0, i32 1
  %512 = load %struct._Gimp*, %struct._Gimp** %gimp274, align 8
  %call275 = call %struct._GParamSpec* @gimp_param_spec_item_id(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.225, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.225, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.235, i32 0, i32 0), %struct._Gimp* %512, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %510, %struct._GParamSpec* %call275)
  %513 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %514 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %513, %struct._GimpProcedure* %514)
  %515 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %516 = bitcast %struct._GimpProcedure* %515 to i8*
  call void @g_object_unref(i8* %516)
  %call276 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @image_raise_item_to_top_invoker)
  store %struct._GimpProcedure* %call276, %struct._GimpProcedure** %procedure, align 8
  %517 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %518 = bitcast %struct._GimpProcedure* %517 to %struct._GTypeInstance*
  %call277 = call i64 @gimp_object_get_type() #6
  %call278 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %518, i64 %call277)
  %519 = bitcast %struct._GTypeInstance* %call278 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %519, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.236, i32 0, i32 0))
  %520 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %520, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.236, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.237, i32 0, i32 0), i8* getelementptr inbounds ([135 x i8], [135 x i8]* @.str.238, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.102, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.103, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.224, i32 0, i32 0), i8* null)
  %521 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %522 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp279 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %522, i32 0, i32 1
  %523 = load %struct._Gimp*, %struct._Gimp** %gimp279, align 8
  %call280 = call %struct._GParamSpec* @gimp_param_spec_image_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i32 0, i32 0), %struct._Gimp* %523, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %521, %struct._GParamSpec* %call280)
  %524 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %525 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp281 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %525, i32 0, i32 1
  %526 = load %struct._Gimp*, %struct._Gimp** %gimp281, align 8
  %call282 = call %struct._GParamSpec* @gimp_param_spec_item_id(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.225, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.225, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.239, i32 0, i32 0), %struct._Gimp* %526, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %524, %struct._GParamSpec* %call282)
  %527 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %528 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %527, %struct._GimpProcedure* %528)
  %529 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %530 = bitcast %struct._GimpProcedure* %529 to i8*
  call void @g_object_unref(i8* %530)
  %call283 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @image_lower_item_to_bottom_invoker)
  store %struct._GimpProcedure* %call283, %struct._GimpProcedure** %procedure, align 8
  %531 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %532 = bitcast %struct._GimpProcedure* %531 to %struct._GTypeInstance*
  %call284 = call i64 @gimp_object_get_type() #6
  %call285 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %532, i64 %call284)
  %533 = bitcast %struct._GTypeInstance* %call285 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %533, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.240, i32 0, i32 0))
  %534 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %534, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.240, i32 0, i32 0), i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.241, i32 0, i32 0), i8* getelementptr inbounds ([140 x i8], [140 x i8]* @.str.242, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.102, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.103, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.224, i32 0, i32 0), i8* null)
  %535 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %536 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp286 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %536, i32 0, i32 1
  %537 = load %struct._Gimp*, %struct._Gimp** %gimp286, align 8
  %call287 = call %struct._GParamSpec* @gimp_param_spec_image_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i32 0, i32 0), %struct._Gimp* %537, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %535, %struct._GParamSpec* %call287)
  %538 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %539 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp288 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %539, i32 0, i32 1
  %540 = load %struct._Gimp*, %struct._Gimp** %gimp288, align 8
  %call289 = call %struct._GParamSpec* @gimp_param_spec_item_id(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.225, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.225, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.243, i32 0, i32 0), %struct._Gimp* %540, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %538, %struct._GParamSpec* %call289)
  %541 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %542 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %541, %struct._GimpProcedure* %542)
  %543 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %544 = bitcast %struct._GimpProcedure* %543 to i8*
  call void @g_object_unref(i8* %544)
  %call290 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @image_reorder_item_invoker)
  store %struct._GimpProcedure* %call290, %struct._GimpProcedure** %procedure, align 8
  %545 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %546 = bitcast %struct._GimpProcedure* %545 to %struct._GTypeInstance*
  %call291 = call i64 @gimp_object_get_type() #6
  %call292 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %546, i64 %call291)
  %547 = bitcast %struct._GTypeInstance* %call292 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %547, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.244, i32 0, i32 0))
  %548 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %548, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.244, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.245, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.246, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.102, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.103, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.224, i32 0, i32 0), i8* null)
  %549 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %550 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp293 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %550, i32 0, i32 1
  %551 = load %struct._Gimp*, %struct._Gimp** %gimp293, align 8
  %call294 = call %struct._GParamSpec* @gimp_param_spec_image_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i32 0, i32 0), %struct._Gimp* %551, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %549, %struct._GParamSpec* %call294)
  %552 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %553 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp295 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %553, i32 0, i32 1
  %554 = load %struct._Gimp*, %struct._Gimp** %gimp295, align 8
  %call296 = call %struct._GParamSpec* @gimp_param_spec_item_id(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.225, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.225, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.247, i32 0, i32 0), %struct._Gimp* %554, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %552, %struct._GParamSpec* %call296)
  %555 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %556 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp297 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %556, i32 0, i32 1
  %557 = load %struct._Gimp*, %struct._Gimp** %gimp297, align 8
  %call298 = call %struct._GParamSpec* @gimp_param_spec_item_id(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.190, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.190, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.248, i32 0, i32 0), %struct._Gimp* %557, i32 1, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %555, %struct._GParamSpec* %call298)
  %558 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call299 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.186, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.186, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.249, i32 0, i32 0), i32 -2147483648, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %558, %struct._GParamSpec* %call299)
  %559 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %560 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %559, %struct._GimpProcedure* %560)
  %561 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %562 = bitcast %struct._GimpProcedure* %561 to i8*
  call void @g_object_unref(i8* %562)
  %call300 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @image_flatten_invoker)
  store %struct._GimpProcedure* %call300, %struct._GimpProcedure** %procedure, align 8
  %563 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %564 = bitcast %struct._GimpProcedure* %563 to %struct._GTypeInstance*
  %call301 = call i64 @gimp_object_get_type() #6
  %call302 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %564, i64 %call301)
  %565 = bitcast %struct._GTypeInstance* %call302 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %565, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.250, i32 0, i32 0))
  %566 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %566, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.250, i32 0, i32 0), i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.251, i32 0, i32 0), i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.252, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0), i8* null)
  %567 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %568 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp303 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %568, i32 0, i32 1
  %569 = load %struct._Gimp*, %struct._Gimp** %gimp303, align 8
  %call304 = call %struct._GParamSpec* @gimp_param_spec_image_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i32 0, i32 0), %struct._Gimp* %569, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %567, %struct._GParamSpec* %call304)
  %570 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %571 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp305 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %571, i32 0, i32 1
  %572 = load %struct._Gimp*, %struct._Gimp** %gimp305, align 8
  %call306 = call %struct._GParamSpec* @gimp_param_spec_layer_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.180, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.180, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.253, i32 0, i32 0), %struct._Gimp* %572, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %570, %struct._GParamSpec* %call306)
  %573 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %574 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %573, %struct._GimpProcedure* %574)
  %575 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %576 = bitcast %struct._GimpProcedure* %575 to i8*
  call void @g_object_unref(i8* %576)
  %call307 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @image_merge_visible_layers_invoker)
  store %struct._GimpProcedure* %call307, %struct._GimpProcedure** %procedure, align 8
  %577 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %578 = bitcast %struct._GimpProcedure* %577 to %struct._GTypeInstance*
  %call308 = call i64 @gimp_object_get_type() #6
  %call309 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %578, i64 %call308)
  %579 = bitcast %struct._GTypeInstance* %call309 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %579, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.254, i32 0, i32 0))
  %580 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %580, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.254, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.255, i32 0, i32 0), i8* getelementptr inbounds ([378 x i8], [378 x i8]* @.str.256, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0), i8* null)
  %581 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %582 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp310 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %582, i32 0, i32 1
  %583 = load %struct._Gimp*, %struct._Gimp** %gimp310, align 8
  %call311 = call %struct._GParamSpec* @gimp_param_spec_image_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i32 0, i32 0), %struct._Gimp* %583, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %581, %struct._GParamSpec* %call311)
  %584 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call312 = call i64 @gimp_merge_type_get_type() #6
  %call313 = call %struct._GParamSpec* @gimp_param_spec_enum(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.257, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.258, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.259, i32 0, i32 0), i64 %call312, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %584, %struct._GParamSpec* %call313)
  %585 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %args314 = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %585, i32 0, i32 11
  %586 = load %struct._GParamSpec**, %struct._GParamSpec*** %args314, align 8
  %arrayidx315 = getelementptr inbounds %struct._GParamSpec*, %struct._GParamSpec** %586, i64 1
  %587 = load %struct._GParamSpec*, %struct._GParamSpec** %arrayidx315, align 8
  %588 = bitcast %struct._GParamSpec* %587 to %struct._GTypeInstance*
  %call316 = call i64 @gimp_param_enum_get_type() #6
  %call317 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %588, i64 %call316)
  %589 = bitcast %struct._GTypeInstance* %call317 to %struct._GimpParamSpecEnum*
  call void @gimp_param_spec_enum_exclude_value(%struct._GimpParamSpecEnum* %589, i32 3)
  %590 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %591 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp318 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %591, i32 0, i32 1
  %592 = load %struct._Gimp*, %struct._Gimp** %gimp318, align 8
  %call319 = call %struct._GParamSpec* @gimp_param_spec_layer_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.180, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.180, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.253, i32 0, i32 0), %struct._Gimp* %592, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %590, %struct._GParamSpec* %call319)
  %593 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %594 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %593, %struct._GimpProcedure* %594)
  %595 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %596 = bitcast %struct._GimpProcedure* %595 to i8*
  call void @g_object_unref(i8* %596)
  %call320 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @image_merge_down_invoker)
  store %struct._GimpProcedure* %call320, %struct._GimpProcedure** %procedure, align 8
  %597 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %598 = bitcast %struct._GimpProcedure* %597 to %struct._GTypeInstance*
  %call321 = call i64 @gimp_object_get_type() #6
  %call322 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %598, i64 %call321)
  %599 = bitcast %struct._GTypeInstance* %call322 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %599, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.260, i32 0, i32 0))
  %600 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %600, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.260, i32 0, i32 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.261, i32 0, i32 0), i8* getelementptr inbounds ([393 x i8], [393 x i8]* @.str.262, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.263, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.263, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.154, i32 0, i32 0), i8* null)
  %601 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %602 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp323 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %602, i32 0, i32 1
  %603 = load %struct._Gimp*, %struct._Gimp** %gimp323, align 8
  %call324 = call %struct._GParamSpec* @gimp_param_spec_image_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i32 0, i32 0), %struct._Gimp* %603, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %601, %struct._GParamSpec* %call324)
  %604 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %605 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp325 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %605, i32 0, i32 1
  %606 = load %struct._Gimp*, %struct._Gimp** %gimp325, align 8
  %call326 = call %struct._GParamSpec* @gimp_param_spec_layer_id(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.264, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.265, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.266, i32 0, i32 0), %struct._Gimp* %606, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %604, %struct._GParamSpec* %call326)
  %607 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call327 = call i64 @gimp_merge_type_get_type() #6
  %call328 = call %struct._GParamSpec* @gimp_param_spec_enum(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.257, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.258, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.259, i32 0, i32 0), i64 %call327, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %607, %struct._GParamSpec* %call328)
  %608 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %args329 = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %608, i32 0, i32 11
  %609 = load %struct._GParamSpec**, %struct._GParamSpec*** %args329, align 8
  %arrayidx330 = getelementptr inbounds %struct._GParamSpec*, %struct._GParamSpec** %609, i64 2
  %610 = load %struct._GParamSpec*, %struct._GParamSpec** %arrayidx330, align 8
  %611 = bitcast %struct._GParamSpec* %610 to %struct._GTypeInstance*
  %call331 = call i64 @gimp_param_enum_get_type() #6
  %call332 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %611, i64 %call331)
  %612 = bitcast %struct._GTypeInstance* %call332 to %struct._GimpParamSpecEnum*
  call void @gimp_param_spec_enum_exclude_value(%struct._GimpParamSpecEnum* %612, i32 3)
  %613 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %614 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp333 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %614, i32 0, i32 1
  %615 = load %struct._Gimp*, %struct._Gimp** %gimp333, align 8
  %call334 = call %struct._GParamSpec* @gimp_param_spec_layer_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.180, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.180, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.253, i32 0, i32 0), %struct._Gimp* %615, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %613, %struct._GParamSpec* %call334)
  %616 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %617 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %616, %struct._GimpProcedure* %617)
  %618 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %619 = bitcast %struct._GimpProcedure* %618 to i8*
  call void @g_object_unref(i8* %619)
  %call335 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @image_add_layer_mask_invoker)
  store %struct._GimpProcedure* %call335, %struct._GimpProcedure** %procedure, align 8
  %620 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %621 = bitcast %struct._GimpProcedure* %620 to %struct._GTypeInstance*
  %call336 = call i64 @gimp_object_get_type() #6
  %call337 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %621, i64 %call336)
  %622 = bitcast %struct._GTypeInstance* %call337 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %622, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.267, i32 0, i32 0))
  %623 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %623, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.267, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.268, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.268, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.269, i32 0, i32 0))
  %624 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %625 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp338 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %625, i32 0, i32 1
  %626 = load %struct._Gimp*, %struct._Gimp** %gimp338, align 8
  %call339 = call %struct._GParamSpec* @gimp_param_spec_image_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i32 0, i32 0), %struct._Gimp* %626, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %624, %struct._GParamSpec* %call339)
  %627 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %628 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp340 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %628, i32 0, i32 1
  %629 = load %struct._Gimp*, %struct._Gimp** %gimp340, align 8
  %call341 = call %struct._GParamSpec* @gimp_param_spec_layer_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.180, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.180, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.270, i32 0, i32 0), %struct._Gimp* %629, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %627, %struct._GParamSpec* %call341)
  %630 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %631 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp342 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %631, i32 0, i32 1
  %632 = load %struct._Gimp*, %struct._Gimp** %gimp342, align 8
  %call343 = call %struct._GParamSpec* @gimp_param_spec_layer_mask_id(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.271, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.271, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.272, i32 0, i32 0), %struct._Gimp* %632, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %630, %struct._GParamSpec* %call343)
  %633 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %634 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %633, %struct._GimpProcedure* %634)
  %635 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %636 = bitcast %struct._GimpProcedure* %635 to i8*
  call void @g_object_unref(i8* %636)
  %call344 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @image_remove_layer_mask_invoker)
  store %struct._GimpProcedure* %call344, %struct._GimpProcedure** %procedure, align 8
  %637 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %638 = bitcast %struct._GimpProcedure* %637 to %struct._GTypeInstance*
  %call345 = call i64 @gimp_object_get_type() #6
  %call346 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %638, i64 %call345)
  %639 = bitcast %struct._GTypeInstance* %call346 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %639, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.273, i32 0, i32 0))
  %640 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %640, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.273, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.274, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.274, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.275, i32 0, i32 0))
  %641 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %642 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp347 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %642, i32 0, i32 1
  %643 = load %struct._Gimp*, %struct._Gimp** %gimp347, align 8
  %call348 = call %struct._GParamSpec* @gimp_param_spec_image_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i32 0, i32 0), %struct._Gimp* %643, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %641, %struct._GParamSpec* %call348)
  %644 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %645 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp349 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %645, i32 0, i32 1
  %646 = load %struct._Gimp*, %struct._Gimp** %gimp349, align 8
  %call350 = call %struct._GParamSpec* @gimp_param_spec_layer_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.180, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.180, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.276, i32 0, i32 0), %struct._Gimp* %646, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %644, %struct._GParamSpec* %call350)
  %647 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call351 = call i64 @gimp_mask_apply_mode_get_type() #6
  %call352 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.277, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.277, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.278, i32 0, i32 0), i64 %call351, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %647, %struct._GParamSpec* %call352)
  %648 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %649 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %648, %struct._GimpProcedure* %649)
  %650 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %651 = bitcast %struct._GimpProcedure* %650 to i8*
  call void @g_object_unref(i8* %651)
  %call353 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @image_get_colormap_invoker)
  store %struct._GimpProcedure* %call353, %struct._GimpProcedure** %procedure, align 8
  %652 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %653 = bitcast %struct._GimpProcedure* %652 to %struct._GTypeInstance*
  %call354 = call i64 @gimp_object_get_type() #6
  %call355 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %653, i64 %call354)
  %654 = bitcast %struct._GTypeInstance* %call355 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %654, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.279, i32 0, i32 0))
  %655 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %655, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.279, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.280, i32 0, i32 0), i8* getelementptr inbounds ([273 x i8], [273 x i8]* @.str.281, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0), i8* null)
  %656 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %657 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp356 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %657, i32 0, i32 1
  %658 = load %struct._Gimp*, %struct._Gimp** %gimp356, align 8
  %call357 = call %struct._GParamSpec* @gimp_param_spec_image_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i32 0, i32 0), %struct._Gimp* %658, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %656, %struct._GParamSpec* %call357)
  %659 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call358 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.282, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.283, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.284, i32 0, i32 0), i32 0, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %659, %struct._GParamSpec* %call358)
  %660 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call359 = call %struct._GParamSpec* @gimp_param_spec_int8_array(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.285, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.285, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.286, i32 0, i32 0), i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %660, %struct._GParamSpec* %call359)
  %661 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %662 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %661, %struct._GimpProcedure* %662)
  %663 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %664 = bitcast %struct._GimpProcedure* %663 to i8*
  call void @g_object_unref(i8* %664)
  %call360 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @image_set_colormap_invoker)
  store %struct._GimpProcedure* %call360, %struct._GimpProcedure** %procedure, align 8
  %665 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %666 = bitcast %struct._GimpProcedure* %665 to %struct._GTypeInstance*
  %call361 = call i64 @gimp_object_get_type() #6
  %call362 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %666, i64 %call361)
  %667 = bitcast %struct._GTypeInstance* %call362 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %667, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.287, i32 0, i32 0))
  %668 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %668, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.287, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.288, i32 0, i32 0), i8* getelementptr inbounds ([301 x i8], [301 x i8]* @.str.289, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0), i8* null)
  %669 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %670 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp363 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %670, i32 0, i32 1
  %671 = load %struct._Gimp*, %struct._Gimp** %gimp363, align 8
  %call364 = call %struct._GParamSpec* @gimp_param_spec_image_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i32 0, i32 0), %struct._Gimp* %671, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %669, %struct._GParamSpec* %call364)
  %672 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call365 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.282, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.283, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.284, i32 0, i32 0), i32 0, i32 768, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %672, %struct._GParamSpec* %call365)
  %673 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call366 = call %struct._GParamSpec* @gimp_param_spec_int8_array(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.285, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.285, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.290, i32 0, i32 0), i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %673, %struct._GParamSpec* %call366)
  %674 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %675 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %674, %struct._GimpProcedure* %675)
  %676 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %677 = bitcast %struct._GimpProcedure* %676 to i8*
  call void @g_object_unref(i8* %677)
  %call367 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @image_clean_all_invoker)
  store %struct._GimpProcedure* %call367, %struct._GimpProcedure** %procedure, align 8
  %678 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %679 = bitcast %struct._GimpProcedure* %678 to %struct._GTypeInstance*
  %call368 = call i64 @gimp_object_get_type() #6
  %call369 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %679, i64 %call368)
  %680 = bitcast %struct._GTypeInstance* %call369 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %680, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.291, i32 0, i32 0))
  %681 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %681, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.291, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.292, i32 0, i32 0), i8* getelementptr inbounds ([388 x i8], [388 x i8]* @.str.293, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0), i8* null)
  %682 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %683 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp370 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %683, i32 0, i32 1
  %684 = load %struct._Gimp*, %struct._Gimp** %gimp370, align 8
  %call371 = call %struct._GParamSpec* @gimp_param_spec_image_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i32 0, i32 0), %struct._Gimp* %684, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %682, %struct._GParamSpec* %call371)
  %685 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %686 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %685, %struct._GimpProcedure* %686)
  %687 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %688 = bitcast %struct._GimpProcedure* %687 to i8*
  call void @g_object_unref(i8* %688)
  %call372 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @image_is_dirty_invoker)
  store %struct._GimpProcedure* %call372, %struct._GimpProcedure** %procedure, align 8
  %689 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %690 = bitcast %struct._GimpProcedure* %689 to %struct._GTypeInstance*
  %call373 = call i64 @gimp_object_get_type() #6
  %call374 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %690, i64 %call373)
  %691 = bitcast %struct._GTypeInstance* %call374 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %691, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.294, i32 0, i32 0))
  %692 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %692, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.294, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.295, i32 0, i32 0), i8* getelementptr inbounds ([260 x i8], [260 x i8]* @.str.296, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0), i8* null)
  %693 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %694 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp375 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %694, i32 0, i32 1
  %695 = load %struct._Gimp*, %struct._Gimp** %gimp375, align 8
  %call376 = call %struct._GParamSpec* @gimp_param_spec_image_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i32 0, i32 0), %struct._Gimp* %695, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %693, %struct._GParamSpec* %call376)
  %696 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call377 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.297, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.297, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.298, i32 0, i32 0), i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %696, %struct._GParamSpec* %call377)
  %697 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %698 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %697, %struct._GimpProcedure* %698)
  %699 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %700 = bitcast %struct._GimpProcedure* %699 to i8*
  call void @g_object_unref(i8* %700)
  %call378 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @image_thumbnail_invoker)
  store %struct._GimpProcedure* %call378, %struct._GimpProcedure** %procedure, align 8
  %701 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %702 = bitcast %struct._GimpProcedure* %701 to %struct._GTypeInstance*
  %call379 = call i64 @gimp_object_get_type() #6
  %call380 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %702, i64 %call379)
  %703 = bitcast %struct._GTypeInstance* %call380 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %703, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.299, i32 0, i32 0))
  %704 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %704, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.299, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.300, i32 0, i32 0), i8* getelementptr inbounds ([247 x i8], [247 x i8]* @.str.301, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.302, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.302, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.303, i32 0, i32 0), i8* null)
  %705 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %706 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp381 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %706, i32 0, i32 1
  %707 = load %struct._Gimp*, %struct._Gimp** %gimp381, align 8
  %call382 = call %struct._GParamSpec* @gimp_param_spec_image_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i32 0, i32 0), %struct._Gimp* %707, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %705, %struct._GParamSpec* %call382)
  %708 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call383 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.304, i32 0, i32 0), i32 1, i32 1024, i32 1, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %708, %struct._GParamSpec* %call383)
  %709 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call384 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.305, i32 0, i32 0), i32 1, i32 1024, i32 1, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %709, %struct._GParamSpec* %call384)
  %710 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call385 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.306, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.307, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.308, i32 0, i32 0), i32 -2147483648, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %710, %struct._GParamSpec* %call385)
  %711 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call386 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.309, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.310, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.311, i32 0, i32 0), i32 -2147483648, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %711, %struct._GParamSpec* %call386)
  %712 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call387 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.312, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.312, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.313, i32 0, i32 0), i32 -2147483648, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %712, %struct._GParamSpec* %call387)
  %713 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call388 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.314, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.315, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.316, i32 0, i32 0), i32 0, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %713, %struct._GParamSpec* %call388)
  %714 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call389 = call %struct._GParamSpec* @gimp_param_spec_int8_array(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.317, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.318, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.319, i32 0, i32 0), i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %714, %struct._GParamSpec* %call389)
  %715 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %716 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %715, %struct._GimpProcedure* %716)
  %717 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %718 = bitcast %struct._GimpProcedure* %717 to i8*
  call void @g_object_unref(i8* %718)
  %call390 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @image_get_active_layer_invoker)
  store %struct._GimpProcedure* %call390, %struct._GimpProcedure** %procedure, align 8
  %719 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %720 = bitcast %struct._GimpProcedure* %719 to %struct._GTypeInstance*
  %call391 = call i64 @gimp_object_get_type() #6
  %call392 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %720, i64 %call391)
  %721 = bitcast %struct._GTypeInstance* %call392 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %721, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.320, i32 0, i32 0))
  %722 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %722, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.320, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.321, i32 0, i32 0), i8* getelementptr inbounds ([197 x i8], [197 x i8]* @.str.322, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0), i8* null)
  %723 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %724 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp393 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %724, i32 0, i32 1
  %725 = load %struct._Gimp*, %struct._Gimp** %gimp393, align 8
  %call394 = call %struct._GParamSpec* @gimp_param_spec_image_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i32 0, i32 0), %struct._Gimp* %725, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %723, %struct._GParamSpec* %call394)
  %726 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %727 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp395 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %727, i32 0, i32 1
  %728 = load %struct._Gimp*, %struct._Gimp** %gimp395, align 8
  %call396 = call %struct._GParamSpec* @gimp_param_spec_layer_id(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.323, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.324, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.325, i32 0, i32 0), %struct._Gimp* %728, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %726, %struct._GParamSpec* %call396)
  %729 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %730 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %729, %struct._GimpProcedure* %730)
  %731 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %732 = bitcast %struct._GimpProcedure* %731 to i8*
  call void @g_object_unref(i8* %732)
  %call397 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @image_set_active_layer_invoker)
  store %struct._GimpProcedure* %call397, %struct._GimpProcedure** %procedure, align 8
  %733 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %734 = bitcast %struct._GimpProcedure* %733 to %struct._GTypeInstance*
  %call398 = call i64 @gimp_object_get_type() #6
  %call399 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %734, i64 %call398)
  %735 = bitcast %struct._GTypeInstance* %call399 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %735, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.326, i32 0, i32 0))
  %736 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %736, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.326, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.327, i32 0, i32 0), i8* getelementptr inbounds ([241 x i8], [241 x i8]* @.str.328, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0), i8* null)
  %737 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %738 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp400 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %738, i32 0, i32 1
  %739 = load %struct._Gimp*, %struct._Gimp** %gimp400, align 8
  %call401 = call %struct._GParamSpec* @gimp_param_spec_image_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i32 0, i32 0), %struct._Gimp* %739, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %737, %struct._GParamSpec* %call401)
  %740 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %741 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp402 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %741, i32 0, i32 1
  %742 = load %struct._Gimp*, %struct._Gimp** %gimp402, align 8
  %call403 = call %struct._GParamSpec* @gimp_param_spec_layer_id(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.323, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.324, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.329, i32 0, i32 0), %struct._Gimp* %742, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %740, %struct._GParamSpec* %call403)
  %743 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %744 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %743, %struct._GimpProcedure* %744)
  %745 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %746 = bitcast %struct._GimpProcedure* %745 to i8*
  call void @g_object_unref(i8* %746)
  %call404 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @image_get_active_channel_invoker)
  store %struct._GimpProcedure* %call404, %struct._GimpProcedure** %procedure, align 8
  %747 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %748 = bitcast %struct._GimpProcedure* %747 to %struct._GTypeInstance*
  %call405 = call i64 @gimp_object_get_type() #6
  %call406 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %748, i64 %call405)
  %749 = bitcast %struct._GTypeInstance* %call406 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %749, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.330, i32 0, i32 0))
  %750 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %750, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.330, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.331, i32 0, i32 0), i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.332, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0), i8* null)
  %751 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %752 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp407 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %752, i32 0, i32 1
  %753 = load %struct._Gimp*, %struct._Gimp** %gimp407, align 8
  %call408 = call %struct._GParamSpec* @gimp_param_spec_image_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i32 0, i32 0), %struct._Gimp* %753, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %751, %struct._GParamSpec* %call408)
  %754 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %755 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp409 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %755, i32 0, i32 1
  %756 = load %struct._Gimp*, %struct._Gimp** %gimp409, align 8
  %call410 = call %struct._GParamSpec* @gimp_param_spec_channel_id(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.333, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.334, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.335, i32 0, i32 0), %struct._Gimp* %756, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %754, %struct._GParamSpec* %call410)
  %757 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %758 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %757, %struct._GimpProcedure* %758)
  %759 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %760 = bitcast %struct._GimpProcedure* %759 to i8*
  call void @g_object_unref(i8* %760)
  %call411 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @image_set_active_channel_invoker)
  store %struct._GimpProcedure* %call411, %struct._GimpProcedure** %procedure, align 8
  %761 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %762 = bitcast %struct._GimpProcedure* %761 to %struct._GTypeInstance*
  %call412 = call i64 @gimp_object_get_type() #6
  %call413 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %762, i64 %call412)
  %763 = bitcast %struct._GTypeInstance* %call413 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %763, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.336, i32 0, i32 0))
  %764 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %764, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.336, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.337, i32 0, i32 0), i8* getelementptr inbounds ([247 x i8], [247 x i8]* @.str.338, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0), i8* null)
  %765 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %766 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp414 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %766, i32 0, i32 1
  %767 = load %struct._Gimp*, %struct._Gimp** %gimp414, align 8
  %call415 = call %struct._GParamSpec* @gimp_param_spec_image_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i32 0, i32 0), %struct._Gimp* %767, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %765, %struct._GParamSpec* %call415)
  %768 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %769 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp416 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %769, i32 0, i32 1
  %770 = load %struct._Gimp*, %struct._Gimp** %gimp416, align 8
  %call417 = call %struct._GParamSpec* @gimp_param_spec_channel_id(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.333, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.334, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.339, i32 0, i32 0), %struct._Gimp* %770, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %768, %struct._GParamSpec* %call417)
  %771 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %772 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %771, %struct._GimpProcedure* %772)
  %773 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %774 = bitcast %struct._GimpProcedure* %773 to i8*
  call void @g_object_unref(i8* %774)
  %call418 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @image_get_active_vectors_invoker)
  store %struct._GimpProcedure* %call418, %struct._GimpProcedure** %procedure, align 8
  %775 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %776 = bitcast %struct._GimpProcedure* %775 to %struct._GTypeInstance*
  %call419 = call i64 @gimp_object_get_type() #6
  %call420 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %776, i64 %call419)
  %777 = bitcast %struct._GTypeInstance* %call420 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %777, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.340, i32 0, i32 0))
  %778 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %778, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.340, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.341, i32 0, i32 0), i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.342, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0), i8* null)
  %779 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %780 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp421 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %780, i32 0, i32 1
  %781 = load %struct._Gimp*, %struct._Gimp** %gimp421, align 8
  %call422 = call %struct._GParamSpec* @gimp_param_spec_image_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i32 0, i32 0), %struct._Gimp* %781, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %779, %struct._GParamSpec* %call422)
  %782 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %783 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp423 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %783, i32 0, i32 1
  %784 = load %struct._Gimp*, %struct._Gimp** %gimp423, align 8
  %call424 = call %struct._GParamSpec* @gimp_param_spec_vectors_id(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.343, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.344, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.345, i32 0, i32 0), %struct._Gimp* %784, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %782, %struct._GParamSpec* %call424)
  %785 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %786 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %785, %struct._GimpProcedure* %786)
  %787 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %788 = bitcast %struct._GimpProcedure* %787 to i8*
  call void @g_object_unref(i8* %788)
  %call425 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @image_set_active_vectors_invoker)
  store %struct._GimpProcedure* %call425, %struct._GimpProcedure** %procedure, align 8
  %789 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %790 = bitcast %struct._GimpProcedure* %789 to %struct._GTypeInstance*
  %call426 = call i64 @gimp_object_get_type() #6
  %call427 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %790, i64 %call426)
  %791 = bitcast %struct._GTypeInstance* %call427 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %791, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.346, i32 0, i32 0))
  %792 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %792, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.346, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.347, i32 0, i32 0), i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.348, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0), i8* null)
  %793 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %794 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp428 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %794, i32 0, i32 1
  %795 = load %struct._Gimp*, %struct._Gimp** %gimp428, align 8
  %call429 = call %struct._GParamSpec* @gimp_param_spec_image_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i32 0, i32 0), %struct._Gimp* %795, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %793, %struct._GParamSpec* %call429)
  %796 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %797 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp430 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %797, i32 0, i32 1
  %798 = load %struct._Gimp*, %struct._Gimp** %gimp430, align 8
  %call431 = call %struct._GParamSpec* @gimp_param_spec_vectors_id(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.343, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.344, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.349, i32 0, i32 0), %struct._Gimp* %798, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %796, %struct._GParamSpec* %call431)
  %799 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %800 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %799, %struct._GimpProcedure* %800)
  %801 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %802 = bitcast %struct._GimpProcedure* %801 to i8*
  call void @g_object_unref(i8* %802)
  %call432 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @image_get_selection_invoker)
  store %struct._GimpProcedure* %call432, %struct._GimpProcedure** %procedure, align 8
  %803 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %804 = bitcast %struct._GimpProcedure* %803 to %struct._GTypeInstance*
  %call433 = call i64 @gimp_object_get_type() #6
  %call434 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %804, i64 %call433)
  %805 = bitcast %struct._GTypeInstance* %call434 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %805, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.350, i32 0, i32 0))
  %806 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %806, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.350, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.351, i32 0, i32 0), i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str.352, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0), i8* null)
  %807 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %808 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp435 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %808, i32 0, i32 1
  %809 = load %struct._Gimp*, %struct._Gimp** %gimp435, align 8
  %call436 = call %struct._GParamSpec* @gimp_param_spec_image_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i32 0, i32 0), %struct._Gimp* %809, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %807, %struct._GParamSpec* %call436)
  %810 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %811 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp437 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %811, i32 0, i32 1
  %812 = load %struct._Gimp*, %struct._Gimp** %gimp437, align 8
  %call438 = call %struct._GParamSpec* @gimp_param_spec_selection_id(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.353, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.353, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.354, i32 0, i32 0), %struct._Gimp* %812, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %810, %struct._GParamSpec* %call438)
  %813 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %814 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %813, %struct._GimpProcedure* %814)
  %815 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %816 = bitcast %struct._GimpProcedure* %815 to i8*
  call void @g_object_unref(i8* %816)
  %call439 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @image_get_component_active_invoker)
  store %struct._GimpProcedure* %call439, %struct._GimpProcedure** %procedure, align 8
  %817 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %818 = bitcast %struct._GimpProcedure* %817 to %struct._GTypeInstance*
  %call440 = call i64 @gimp_object_get_type() #6
  %call441 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %818, i64 %call440)
  %819 = bitcast %struct._GTypeInstance* %call441 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %819, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.355, i32 0, i32 0))
  %820 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %820, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.355, i32 0, i32 0), i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.356, i32 0, i32 0), i8* getelementptr inbounds ([265 x i8], [265 x i8]* @.str.357, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0), i8* null)
  %821 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %822 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp442 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %822, i32 0, i32 1
  %823 = load %struct._Gimp*, %struct._Gimp** %gimp442, align 8
  %call443 = call %struct._GParamSpec* @gimp_param_spec_image_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i32 0, i32 0), %struct._Gimp* %823, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %821, %struct._GParamSpec* %call443)
  %824 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call444 = call i64 @gimp_channel_type_get_type() #6
  %call445 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.358, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.358, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.359, i32 0, i32 0), i64 %call444, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %824, %struct._GParamSpec* %call445)
  %825 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call446 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.360, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.360, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.361, i32 0, i32 0), i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %825, %struct._GParamSpec* %call446)
  %826 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %827 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %826, %struct._GimpProcedure* %827)
  %828 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %829 = bitcast %struct._GimpProcedure* %828 to i8*
  call void @g_object_unref(i8* %829)
  %call447 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @image_set_component_active_invoker)
  store %struct._GimpProcedure* %call447, %struct._GimpProcedure** %procedure, align 8
  %830 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %831 = bitcast %struct._GimpProcedure* %830 to %struct._GTypeInstance*
  %call448 = call i64 @gimp_object_get_type() #6
  %call449 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %831, i64 %call448)
  %832 = bitcast %struct._GTypeInstance* %call449 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %832, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.362, i32 0, i32 0))
  %833 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %833, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.362, i32 0, i32 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.363, i32 0, i32 0), i8* getelementptr inbounds ([262 x i8], [262 x i8]* @.str.364, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0), i8* null)
  %834 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %835 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp450 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %835, i32 0, i32 1
  %836 = load %struct._Gimp*, %struct._Gimp** %gimp450, align 8
  %call451 = call %struct._GParamSpec* @gimp_param_spec_image_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i32 0, i32 0), %struct._Gimp* %836, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %834, %struct._GParamSpec* %call451)
  %837 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call452 = call i64 @gimp_channel_type_get_type() #6
  %call453 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.358, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.358, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.359, i32 0, i32 0), i64 %call452, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %837, %struct._GParamSpec* %call453)
  %838 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call454 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.360, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.360, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.361, i32 0, i32 0), i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %838, %struct._GParamSpec* %call454)
  %839 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %840 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %839, %struct._GimpProcedure* %840)
  %841 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %842 = bitcast %struct._GimpProcedure* %841 to i8*
  call void @g_object_unref(i8* %842)
  %call455 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @image_get_component_visible_invoker)
  store %struct._GimpProcedure* %call455, %struct._GimpProcedure** %procedure, align 8
  %843 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %844 = bitcast %struct._GimpProcedure* %843 to %struct._GTypeInstance*
  %call456 = call i64 @gimp_object_get_type() #6
  %call457 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %844, i64 %call456)
  %845 = bitcast %struct._GTypeInstance* %call457 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %845, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.365, i32 0, i32 0))
  %846 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %846, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.365, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.366, i32 0, i32 0), i8* getelementptr inbounds ([263 x i8], [263 x i8]* @.str.367, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0), i8* null)
  %847 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %848 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp458 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %848, i32 0, i32 1
  %849 = load %struct._Gimp*, %struct._Gimp** %gimp458, align 8
  %call459 = call %struct._GParamSpec* @gimp_param_spec_image_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i32 0, i32 0), %struct._Gimp* %849, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %847, %struct._GParamSpec* %call459)
  %850 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call460 = call i64 @gimp_channel_type_get_type() #6
  %call461 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.358, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.358, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.359, i32 0, i32 0), i64 %call460, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %850, %struct._GParamSpec* %call461)
  %851 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call462 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.368, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.368, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.369, i32 0, i32 0), i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %851, %struct._GParamSpec* %call462)
  %852 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %853 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %852, %struct._GimpProcedure* %853)
  %854 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %855 = bitcast %struct._GimpProcedure* %854 to i8*
  call void @g_object_unref(i8* %855)
  %call463 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @image_set_component_visible_invoker)
  store %struct._GimpProcedure* %call463, %struct._GimpProcedure** %procedure, align 8
  %856 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %857 = bitcast %struct._GimpProcedure* %856 to %struct._GTypeInstance*
  %call464 = call i64 @gimp_object_get_type() #6
  %call465 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %857, i64 %call464)
  %858 = bitcast %struct._GTypeInstance* %call465 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %858, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.370, i32 0, i32 0))
  %859 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %859, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.370, i32 0, i32 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.371, i32 0, i32 0), i8* getelementptr inbounds ([260 x i8], [260 x i8]* @.str.372, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0), i8* null)
  %860 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %861 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp466 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %861, i32 0, i32 1
  %862 = load %struct._Gimp*, %struct._Gimp** %gimp466, align 8
  %call467 = call %struct._GParamSpec* @gimp_param_spec_image_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i32 0, i32 0), %struct._Gimp* %862, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %860, %struct._GParamSpec* %call467)
  %863 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call468 = call i64 @gimp_channel_type_get_type() #6
  %call469 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.358, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.358, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.359, i32 0, i32 0), i64 %call468, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %863, %struct._GParamSpec* %call469)
  %864 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call470 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.368, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.368, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.369, i32 0, i32 0), i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %864, %struct._GParamSpec* %call470)
  %865 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %866 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %865, %struct._GimpProcedure* %866)
  %867 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %868 = bitcast %struct._GimpProcedure* %867 to i8*
  call void @g_object_unref(i8* %868)
  %call471 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @image_get_filename_invoker)
  store %struct._GimpProcedure* %call471, %struct._GimpProcedure** %procedure, align 8
  %869 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %870 = bitcast %struct._GimpProcedure* %869 to %struct._GTypeInstance*
  %call472 = call i64 @gimp_object_get_type() #6
  %call473 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %870, i64 %call472)
  %871 = bitcast %struct._GTypeInstance* %call473 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %871, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.373, i32 0, i32 0))
  %872 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %872, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.373, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.374, i32 0, i32 0), i8* getelementptr inbounds ([261 x i8], [261 x i8]* @.str.375, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0), i8* null)
  %873 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %874 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp474 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %874, i32 0, i32 1
  %875 = load %struct._Gimp*, %struct._Gimp** %gimp474, align 8
  %call475 = call %struct._GParamSpec* @gimp_param_spec_image_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i32 0, i32 0), %struct._Gimp* %875, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %873, %struct._GParamSpec* %call475)
  %876 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call476 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.376, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.376, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.377, i32 0, i32 0), i32 0, i32 0, i32 0, i8* null, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %876, %struct._GParamSpec* %call476)
  %877 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %878 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %877, %struct._GimpProcedure* %878)
  %879 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %880 = bitcast %struct._GimpProcedure* %879 to i8*
  call void @g_object_unref(i8* %880)
  %call477 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @image_set_filename_invoker)
  store %struct._GimpProcedure* %call477, %struct._GimpProcedure** %procedure, align 8
  %881 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %882 = bitcast %struct._GimpProcedure* %881 to %struct._GTypeInstance*
  %call478 = call i64 @gimp_object_get_type() #6
  %call479 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %882, i64 %call478)
  %883 = bitcast %struct._GTypeInstance* %call479 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %883, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.378, i32 0, i32 0))
  %884 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %884, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.378, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.379, i32 0, i32 0), i8* getelementptr inbounds ([103 x i8], [103 x i8]* @.str.380, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0), i8* null)
  %885 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %886 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp480 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %886, i32 0, i32 1
  %887 = load %struct._Gimp*, %struct._Gimp** %gimp480, align 8
  %call481 = call %struct._GParamSpec* @gimp_param_spec_image_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i32 0, i32 0), %struct._Gimp* %887, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %885, %struct._GParamSpec* %call481)
  %888 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call482 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.376, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.376, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.381, i32 0, i32 0), i32 1, i32 0, i32 0, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %888, %struct._GParamSpec* %call482)
  %889 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %890 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %889, %struct._GimpProcedure* %890)
  %891 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %892 = bitcast %struct._GimpProcedure* %891 to i8*
  call void @g_object_unref(i8* %892)
  %call483 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @image_get_uri_invoker)
  store %struct._GimpProcedure* %call483, %struct._GimpProcedure** %procedure, align 8
  %893 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %894 = bitcast %struct._GimpProcedure* %893 to %struct._GTypeInstance*
  %call484 = call i64 @gimp_object_get_type() #6
  %call485 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %894, i64 %call484)
  %895 = bitcast %struct._GTypeInstance* %call485 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %895, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.382, i32 0, i32 0))
  %896 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %896, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.382, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.383, i32 0, i32 0), i8* getelementptr inbounds ([439 x i8], [439 x i8]* @.str.384, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.385, i32 0, i32 0), i8* null)
  %897 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %898 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp486 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %898, i32 0, i32 1
  %899 = load %struct._Gimp*, %struct._Gimp** %gimp486, align 8
  %call487 = call %struct._GParamSpec* @gimp_param_spec_image_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i32 0, i32 0), %struct._Gimp* %899, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %897, %struct._GParamSpec* %call487)
  %900 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call488 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.386, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.386, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.387, i32 0, i32 0), i32 0, i32 0, i32 0, i8* null, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %900, %struct._GParamSpec* %call488)
  %901 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %902 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %901, %struct._GimpProcedure* %902)
  %903 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %904 = bitcast %struct._GimpProcedure* %903 to i8*
  call void @g_object_unref(i8* %904)
  %call489 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @image_get_xcf_uri_invoker)
  store %struct._GimpProcedure* %call489, %struct._GimpProcedure** %procedure, align 8
  %905 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %906 = bitcast %struct._GimpProcedure* %905 to %struct._GTypeInstance*
  %call490 = call i64 @gimp_object_get_type() #6
  %call491 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %906, i64 %call490)
  %907 = bitcast %struct._GTypeInstance* %call491 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %907, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.388, i32 0, i32 0))
  %908 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %908, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.388, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.389, i32 0, i32 0), i8* getelementptr inbounds ([117 x i8], [117 x i8]* @.str.390, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.391, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.392, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.393, i32 0, i32 0), i8* null)
  %909 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %910 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp492 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %910, i32 0, i32 1
  %911 = load %struct._Gimp*, %struct._Gimp** %gimp492, align 8
  %call493 = call %struct._GParamSpec* @gimp_param_spec_image_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i32 0, i32 0), %struct._Gimp* %911, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %909, %struct._GParamSpec* %call493)
  %912 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call494 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.386, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.386, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.394, i32 0, i32 0), i32 0, i32 0, i32 0, i8* null, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %912, %struct._GParamSpec* %call494)
  %913 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %914 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %913, %struct._GimpProcedure* %914)
  %915 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %916 = bitcast %struct._GimpProcedure* %915 to i8*
  call void @g_object_unref(i8* %916)
  %call495 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @image_get_imported_uri_invoker)
  store %struct._GimpProcedure* %call495, %struct._GimpProcedure** %procedure, align 8
  %917 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %918 = bitcast %struct._GimpProcedure* %917 to %struct._GTypeInstance*
  %call496 = call i64 @gimp_object_get_type() #6
  %call497 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %918, i64 %call496)
  %919 = bitcast %struct._GTypeInstance* %call497 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %919, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.395, i32 0, i32 0))
  %920 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %920, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.395, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.396, i32 0, i32 0), i8* getelementptr inbounds ([236 x i8], [236 x i8]* @.str.397, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.391, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.392, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.393, i32 0, i32 0), i8* null)
  %921 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %922 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp498 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %922, i32 0, i32 1
  %923 = load %struct._Gimp*, %struct._Gimp** %gimp498, align 8
  %call499 = call %struct._GParamSpec* @gimp_param_spec_image_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i32 0, i32 0), %struct._Gimp* %923, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %921, %struct._GParamSpec* %call499)
  %924 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call500 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.386, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.386, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.394, i32 0, i32 0), i32 0, i32 0, i32 0, i8* null, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %924, %struct._GParamSpec* %call500)
  %925 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %926 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %925, %struct._GimpProcedure* %926)
  %927 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %928 = bitcast %struct._GimpProcedure* %927 to i8*
  call void @g_object_unref(i8* %928)
  %call501 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @image_get_exported_uri_invoker)
  store %struct._GimpProcedure* %call501, %struct._GimpProcedure** %procedure, align 8
  %929 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %930 = bitcast %struct._GimpProcedure* %929 to %struct._GTypeInstance*
  %call502 = call i64 @gimp_object_get_type() #6
  %call503 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %930, i64 %call502)
  %931 = bitcast %struct._GTypeInstance* %call503 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %931, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.398, i32 0, i32 0))
  %932 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %932, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.398, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.399, i32 0, i32 0), i8* getelementptr inbounds ([180 x i8], [180 x i8]* @.str.400, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.391, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.392, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.393, i32 0, i32 0), i8* null)
  %933 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %934 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp504 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %934, i32 0, i32 1
  %935 = load %struct._Gimp*, %struct._Gimp** %gimp504, align 8
  %call505 = call %struct._GParamSpec* @gimp_param_spec_image_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i32 0, i32 0), %struct._Gimp* %935, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %933, %struct._GParamSpec* %call505)
  %936 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call506 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.386, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.386, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.401, i32 0, i32 0), i32 0, i32 0, i32 0, i8* null, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %936, %struct._GParamSpec* %call506)
  %937 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %938 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %937, %struct._GimpProcedure* %938)
  %939 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %940 = bitcast %struct._GimpProcedure* %939 to i8*
  call void @g_object_unref(i8* %940)
  %call507 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @image_get_name_invoker)
  store %struct._GimpProcedure* %call507, %struct._GimpProcedure** %procedure, align 8
  %941 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %942 = bitcast %struct._GimpProcedure* %941 to %struct._GTypeInstance*
  %call508 = call i64 @gimp_object_get_type() #6
  %call509 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %942, i64 %call508)
  %943 = bitcast %struct._GTypeInstance* %call509 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %943, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.402, i32 0, i32 0))
  %944 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %944, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.402, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.403, i32 0, i32 0), i8* getelementptr inbounds ([442 x i8], [442 x i8]* @.str.404, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0), i8* null)
  %945 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %946 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp510 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %946, i32 0, i32 1
  %947 = load %struct._Gimp*, %struct._Gimp** %gimp510, align 8
  %call511 = call %struct._GParamSpec* @gimp_param_spec_image_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i32 0, i32 0), %struct._Gimp* %947, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %945, %struct._GParamSpec* %call511)
  %948 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call512 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.405, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.405, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.406, i32 0, i32 0), i32 0, i32 0, i32 0, i8* null, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %948, %struct._GParamSpec* %call512)
  %949 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %950 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %949, %struct._GimpProcedure* %950)
  %951 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %952 = bitcast %struct._GimpProcedure* %951 to i8*
  call void @g_object_unref(i8* %952)
  %call513 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @image_get_resolution_invoker)
  store %struct._GimpProcedure* %call513, %struct._GimpProcedure** %procedure, align 8
  %953 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %954 = bitcast %struct._GimpProcedure* %953 to %struct._GTypeInstance*
  %call514 = call i64 @gimp_object_get_type() #6
  %call515 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %954, i64 %call514)
  %955 = bitcast %struct._GTypeInstance* %call515 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %955, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.407, i32 0, i32 0))
  %956 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %956, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.407, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.408, i32 0, i32 0), i8* getelementptr inbounds ([136 x i8], [136 x i8]* @.str.409, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.410, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.410, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.154, i32 0, i32 0), i8* null)
  %957 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %958 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp516 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %958, i32 0, i32 1
  %959 = load %struct._Gimp*, %struct._Gimp** %gimp516, align 8
  %call517 = call %struct._GParamSpec* @gimp_param_spec_image_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i32 0, i32 0), %struct._Gimp* %959, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %957, %struct._GParamSpec* %call517)
  %960 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call518 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.411, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.411, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.412, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %960, %struct._GParamSpec* %call518)
  %961 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call519 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.413, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.413, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.414, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %961, %struct._GParamSpec* %call519)
  %962 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %963 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %962, %struct._GimpProcedure* %963)
  %964 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %965 = bitcast %struct._GimpProcedure* %964 to i8*
  call void @g_object_unref(i8* %965)
  %call520 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @image_set_resolution_invoker)
  store %struct._GimpProcedure* %call520, %struct._GimpProcedure** %procedure, align 8
  %966 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %967 = bitcast %struct._GimpProcedure* %966 to %struct._GTypeInstance*
  %call521 = call i64 @gimp_object_get_type() #6
  %call522 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %967, i64 %call521)
  %968 = bitcast %struct._GTypeInstance* %call522 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %968, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.415, i32 0, i32 0))
  %969 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %969, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.415, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.416, i32 0, i32 0), i8* getelementptr inbounds ([170 x i8], [170 x i8]* @.str.417, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.410, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.410, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.154, i32 0, i32 0), i8* null)
  %970 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %971 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp523 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %971, i32 0, i32 1
  %972 = load %struct._Gimp*, %struct._Gimp** %gimp523, align 8
  %call524 = call %struct._GParamSpec* @gimp_param_spec_image_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i32 0, i32 0), %struct._Gimp* %972, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %970, %struct._GParamSpec* %call524)
  %973 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call525 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.411, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.411, i32 0, i32 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.418, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %973, %struct._GParamSpec* %call525)
  %974 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call526 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.413, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.413, i32 0, i32 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.419, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %974, %struct._GParamSpec* %call526)
  %975 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %976 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %975, %struct._GimpProcedure* %976)
  %977 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %978 = bitcast %struct._GimpProcedure* %977 to i8*
  call void @g_object_unref(i8* %978)
  %call527 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @image_get_unit_invoker)
  store %struct._GimpProcedure* %call527, %struct._GimpProcedure** %procedure, align 8
  %979 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %980 = bitcast %struct._GimpProcedure* %979 to %struct._GTypeInstance*
  %call528 = call i64 @gimp_object_get_type() #6
  %call529 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %980, i64 %call528)
  %981 = bitcast %struct._GTypeInstance* %call529 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %981, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.420, i32 0, i32 0))
  %982 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %982, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.420, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.421, i32 0, i32 0), i8* getelementptr inbounds ([227 x i8], [227 x i8]* @.str.422, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.102, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.103, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.154, i32 0, i32 0), i8* null)
  %983 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %984 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp530 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %984, i32 0, i32 1
  %985 = load %struct._Gimp*, %struct._Gimp** %gimp530, align 8
  %call531 = call %struct._GParamSpec* @gimp_param_spec_image_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i32 0, i32 0), %struct._Gimp* %985, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %983, %struct._GParamSpec* %call531)
  %986 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call532 = call %struct._GParamSpec* @gimp_param_spec_unit(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.423, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.423, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.424, i32 0, i32 0), i32 1, i32 0, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %986, %struct._GParamSpec* %call532)
  %987 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %988 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %987, %struct._GimpProcedure* %988)
  %989 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %990 = bitcast %struct._GimpProcedure* %989 to i8*
  call void @g_object_unref(i8* %990)
  %call533 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @image_set_unit_invoker)
  store %struct._GimpProcedure* %call533, %struct._GimpProcedure** %procedure, align 8
  %991 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %992 = bitcast %struct._GimpProcedure* %991 to %struct._GTypeInstance*
  %call534 = call i64 @gimp_object_get_type() #6
  %call535 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %992, i64 %call534)
  %993 = bitcast %struct._GTypeInstance* %call535 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %993, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.425, i32 0, i32 0))
  %994 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %994, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.425, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.426, i32 0, i32 0), i8* getelementptr inbounds ([261 x i8], [261 x i8]* @.str.427, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.102, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.103, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.154, i32 0, i32 0), i8* null)
  %995 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %996 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp536 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %996, i32 0, i32 1
  %997 = load %struct._Gimp*, %struct._Gimp** %gimp536, align 8
  %call537 = call %struct._GParamSpec* @gimp_param_spec_image_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i32 0, i32 0), %struct._Gimp* %997, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %995, %struct._GParamSpec* %call537)
  %998 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call538 = call %struct._GParamSpec* @gimp_param_spec_unit(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.423, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.423, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.428, i32 0, i32 0), i32 0, i32 0, i32 1, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %998, %struct._GParamSpec* %call538)
  %999 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %1000 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %999, %struct._GimpProcedure* %1000)
  %1001 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %1002 = bitcast %struct._GimpProcedure* %1001 to i8*
  call void @g_object_unref(i8* %1002)
  %call539 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @image_get_tattoo_state_invoker)
  store %struct._GimpProcedure* %call539, %struct._GimpProcedure** %procedure, align 8
  %1003 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %1004 = bitcast %struct._GimpProcedure* %1003 to %struct._GTypeInstance*
  %call540 = call i64 @gimp_object_get_type() #6
  %call541 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1004, i64 %call540)
  %1005 = bitcast %struct._GTypeInstance* %call541 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %1005, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.429, i32 0, i32 0))
  %1006 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %1006, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.429, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.430, i32 0, i32 0), i8* getelementptr inbounds ([198 x i8], [198 x i8]* @.str.431, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.302, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.302, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.432, i32 0, i32 0), i8* null)
  %1007 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %1008 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp542 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %1008, i32 0, i32 1
  %1009 = load %struct._Gimp*, %struct._Gimp** %gimp542, align 8
  %call543 = call %struct._GParamSpec* @gimp_param_spec_image_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i32 0, i32 0), %struct._Gimp* %1009, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %1007, %struct._GParamSpec* %call543)
  %1010 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call544 = call %struct._GParamSpec* @g_param_spec_uint(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.433, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.434, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.435, i32 0, i32 0), i32 1, i32 -1, i32 1, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %1010, %struct._GParamSpec* %call544)
  %1011 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %1012 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %1011, %struct._GimpProcedure* %1012)
  %1013 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %1014 = bitcast %struct._GimpProcedure* %1013 to i8*
  call void @g_object_unref(i8* %1014)
  %call545 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @image_set_tattoo_state_invoker)
  store %struct._GimpProcedure* %call545, %struct._GimpProcedure** %procedure, align 8
  %1015 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %1016 = bitcast %struct._GimpProcedure* %1015 to %struct._GTypeInstance*
  %call546 = call i64 @gimp_object_get_type() #6
  %call547 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1016, i64 %call546)
  %1017 = bitcast %struct._GTypeInstance* %call547 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %1017, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.436, i32 0, i32 0))
  %1018 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %1018, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.436, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.437, i32 0, i32 0), i8* getelementptr inbounds ([745 x i8], [745 x i8]* @.str.438, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.302, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.302, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.432, i32 0, i32 0), i8* null)
  %1019 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %1020 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp548 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %1020, i32 0, i32 1
  %1021 = load %struct._Gimp*, %struct._Gimp** %gimp548, align 8
  %call549 = call %struct._GParamSpec* @gimp_param_spec_image_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i32 0, i32 0), %struct._Gimp* %1021, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %1019, %struct._GParamSpec* %call549)
  %1022 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call550 = call %struct._GParamSpec* @g_param_spec_uint(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.433, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.434, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.439, i32 0, i32 0), i32 1, i32 -1, i32 1, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %1022, %struct._GParamSpec* %call550)
  %1023 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %1024 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %1023, %struct._GimpProcedure* %1024)
  %1025 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %1026 = bitcast %struct._GimpProcedure* %1025 to i8*
  call void @g_object_unref(i8* %1026)
  %call551 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @image_get_layer_by_tattoo_invoker)
  store %struct._GimpProcedure* %call551, %struct._GimpProcedure** %procedure, align 8
  %1027 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %1028 = bitcast %struct._GimpProcedure* %1027 to %struct._GTypeInstance*
  %call552 = call i64 @gimp_object_get_type() #6
  %call553 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1028, i64 %call552)
  %1029 = bitcast %struct._GTypeInstance* %call553 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %1029, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.440, i32 0, i32 0))
  %1030 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %1030, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.440, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.441, i32 0, i32 0), i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.442, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.443, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.443, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.154, i32 0, i32 0), i8* null)
  %1031 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %1032 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp554 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %1032, i32 0, i32 1
  %1033 = load %struct._Gimp*, %struct._Gimp** %gimp554, align 8
  %call555 = call %struct._GParamSpec* @gimp_param_spec_image_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i32 0, i32 0), %struct._Gimp* %1033, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %1031, %struct._GParamSpec* %call555)
  %1034 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call556 = call %struct._GParamSpec* @g_param_spec_uint(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.444, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.444, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.445, i32 0, i32 0), i32 1, i32 -1, i32 1, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %1034, %struct._GParamSpec* %call556)
  %1035 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %1036 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp557 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %1036, i32 0, i32 1
  %1037 = load %struct._Gimp*, %struct._Gimp** %gimp557, align 8
  %call558 = call %struct._GParamSpec* @gimp_param_spec_layer_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.180, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.180, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.446, i32 0, i32 0), %struct._Gimp* %1037, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %1035, %struct._GParamSpec* %call558)
  %1038 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %1039 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %1038, %struct._GimpProcedure* %1039)
  %1040 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %1041 = bitcast %struct._GimpProcedure* %1040 to i8*
  call void @g_object_unref(i8* %1041)
  %call559 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @image_get_channel_by_tattoo_invoker)
  store %struct._GimpProcedure* %call559, %struct._GimpProcedure** %procedure, align 8
  %1042 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %1043 = bitcast %struct._GimpProcedure* %1042 to %struct._GTypeInstance*
  %call560 = call i64 @gimp_object_get_type() #6
  %call561 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1043, i64 %call560)
  %1044 = bitcast %struct._GTypeInstance* %call561 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %1044, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.447, i32 0, i32 0))
  %1045 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %1045, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.447, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.448, i32 0, i32 0), i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.449, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.443, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.443, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.154, i32 0, i32 0), i8* null)
  %1046 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %1047 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp562 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %1047, i32 0, i32 1
  %1048 = load %struct._Gimp*, %struct._Gimp** %gimp562, align 8
  %call563 = call %struct._GParamSpec* @gimp_param_spec_image_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i32 0, i32 0), %struct._Gimp* %1048, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %1046, %struct._GParamSpec* %call563)
  %1049 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call564 = call %struct._GParamSpec* @g_param_spec_uint(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.444, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.444, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.450, i32 0, i32 0), i32 1, i32 -1, i32 1, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %1049, %struct._GParamSpec* %call564)
  %1050 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %1051 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp565 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %1051, i32 0, i32 1
  %1052 = load %struct._Gimp*, %struct._Gimp** %gimp565, align 8
  %call566 = call %struct._GParamSpec* @gimp_param_spec_channel_id(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.198, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.198, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.451, i32 0, i32 0), %struct._Gimp* %1052, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %1050, %struct._GParamSpec* %call566)
  %1053 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %1054 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %1053, %struct._GimpProcedure* %1054)
  %1055 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %1056 = bitcast %struct._GimpProcedure* %1055 to i8*
  call void @g_object_unref(i8* %1056)
  %call567 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @image_get_vectors_by_tattoo_invoker)
  store %struct._GimpProcedure* %call567, %struct._GimpProcedure** %procedure, align 8
  %1057 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %1058 = bitcast %struct._GimpProcedure* %1057 to %struct._GTypeInstance*
  %call568 = call i64 @gimp_object_get_type() #6
  %call569 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1058, i64 %call568)
  %1059 = bitcast %struct._GTypeInstance* %call569 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %1059, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.452, i32 0, i32 0))
  %1060 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %1060, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.452, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.453, i32 0, i32 0), i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.454, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.76, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.76, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.129, i32 0, i32 0), i8* null)
  %1061 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %1062 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp570 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %1062, i32 0, i32 1
  %1063 = load %struct._Gimp*, %struct._Gimp** %gimp570, align 8
  %call571 = call %struct._GParamSpec* @gimp_param_spec_image_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i32 0, i32 0), %struct._Gimp* %1063, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %1061, %struct._GParamSpec* %call571)
  %1064 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call572 = call %struct._GParamSpec* @g_param_spec_uint(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.444, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.444, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.455, i32 0, i32 0), i32 1, i32 -1, i32 1, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %1064, %struct._GParamSpec* %call572)
  %1065 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %1066 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp573 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %1066, i32 0, i32 1
  %1067 = load %struct._Gimp*, %struct._Gimp** %gimp573, align 8
  %call574 = call %struct._GParamSpec* @gimp_param_spec_vectors_id(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.210, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.210, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.456, i32 0, i32 0), %struct._Gimp* %1067, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %1065, %struct._GParamSpec* %call574)
  %1068 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %1069 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %1068, %struct._GimpProcedure* %1069)
  %1070 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %1071 = bitcast %struct._GimpProcedure* %1070 to i8*
  call void @g_object_unref(i8* %1071)
  %call575 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @image_get_layer_by_name_invoker)
  store %struct._GimpProcedure* %call575, %struct._GimpProcedure** %procedure, align 8
  %1072 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %1073 = bitcast %struct._GimpProcedure* %1072 to %struct._GTypeInstance*
  %call576 = call i64 @gimp_object_get_type() #6
  %call577 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1073, i64 %call576)
  %1074 = bitcast %struct._GTypeInstance* %call577 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %1074, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.457, i32 0, i32 0))
  %1075 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %1075, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.457, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.458, i32 0, i32 0), i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.459, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.102, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.103, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.393, i32 0, i32 0), i8* null)
  %1076 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %1077 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp578 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %1077, i32 0, i32 1
  %1078 = load %struct._Gimp*, %struct._Gimp** %gimp578, align 8
  %call579 = call %struct._GParamSpec* @gimp_param_spec_image_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i32 0, i32 0), %struct._Gimp* %1078, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %1076, %struct._GParamSpec* %call579)
  %1079 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call580 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.405, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.405, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.460, i32 0, i32 0), i32 0, i32 0, i32 1, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %1079, %struct._GParamSpec* %call580)
  %1080 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %1081 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp581 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %1081, i32 0, i32 1
  %1082 = load %struct._Gimp*, %struct._Gimp** %gimp581, align 8
  %call582 = call %struct._GParamSpec* @gimp_param_spec_layer_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.180, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.180, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.461, i32 0, i32 0), %struct._Gimp* %1082, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %1080, %struct._GParamSpec* %call582)
  %1083 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %1084 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %1083, %struct._GimpProcedure* %1084)
  %1085 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %1086 = bitcast %struct._GimpProcedure* %1085 to i8*
  call void @g_object_unref(i8* %1086)
  %call583 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @image_get_channel_by_name_invoker)
  store %struct._GimpProcedure* %call583, %struct._GimpProcedure** %procedure, align 8
  %1087 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %1088 = bitcast %struct._GimpProcedure* %1087 to %struct._GTypeInstance*
  %call584 = call i64 @gimp_object_get_type() #6
  %call585 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1088, i64 %call584)
  %1089 = bitcast %struct._GTypeInstance* %call585 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %1089, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.462, i32 0, i32 0))
  %1090 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %1090, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.462, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.463, i32 0, i32 0), i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.464, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.102, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.103, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.393, i32 0, i32 0), i8* null)
  %1091 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %1092 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp586 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %1092, i32 0, i32 1
  %1093 = load %struct._Gimp*, %struct._Gimp** %gimp586, align 8
  %call587 = call %struct._GParamSpec* @gimp_param_spec_image_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i32 0, i32 0), %struct._Gimp* %1093, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %1091, %struct._GParamSpec* %call587)
  %1094 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call588 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.405, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.405, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.465, i32 0, i32 0), i32 0, i32 0, i32 1, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %1094, %struct._GParamSpec* %call588)
  %1095 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %1096 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp589 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %1096, i32 0, i32 1
  %1097 = load %struct._Gimp*, %struct._Gimp** %gimp589, align 8
  %call590 = call %struct._GParamSpec* @gimp_param_spec_channel_id(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.198, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.198, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.466, i32 0, i32 0), %struct._Gimp* %1097, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %1095, %struct._GParamSpec* %call590)
  %1098 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %1099 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %1098, %struct._GimpProcedure* %1099)
  %1100 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %1101 = bitcast %struct._GimpProcedure* %1100 to i8*
  call void @g_object_unref(i8* %1101)
  %call591 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @image_get_vectors_by_name_invoker)
  store %struct._GimpProcedure* %call591, %struct._GimpProcedure** %procedure, align 8
  %1102 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %1103 = bitcast %struct._GimpProcedure* %1102 to %struct._GTypeInstance*
  %call592 = call i64 @gimp_object_get_type() #6
  %call593 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1103, i64 %call592)
  %1104 = bitcast %struct._GTypeInstance* %call593 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %1104, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.467, i32 0, i32 0))
  %1105 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %1105, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.467, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.468, i32 0, i32 0), i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.469, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.102, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.103, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.393, i32 0, i32 0), i8* null)
  %1106 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %1107 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp594 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %1107, i32 0, i32 1
  %1108 = load %struct._Gimp*, %struct._Gimp** %gimp594, align 8
  %call595 = call %struct._GParamSpec* @gimp_param_spec_image_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i32 0, i32 0), %struct._Gimp* %1108, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %1106, %struct._GParamSpec* %call595)
  %1109 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call596 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.405, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.405, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.470, i32 0, i32 0), i32 0, i32 0, i32 1, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %1109, %struct._GParamSpec* %call596)
  %1110 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %1111 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp597 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %1111, i32 0, i32 1
  %1112 = load %struct._Gimp*, %struct._Gimp** %gimp597, align 8
  %call598 = call %struct._GParamSpec* @gimp_param_spec_vectors_id(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.210, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.210, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.471, i32 0, i32 0), %struct._Gimp* %1112, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %1110, %struct._GParamSpec* %call598)
  %1113 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %1114 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %1113, %struct._GimpProcedure* %1114)
  %1115 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %1116 = bitcast %struct._GimpProcedure* %1115 to i8*
  call void @g_object_unref(i8* %1116)
  %call599 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @image_attach_parasite_invoker)
  store %struct._GimpProcedure* %call599, %struct._GimpProcedure** %procedure, align 8
  %1117 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %1118 = bitcast %struct._GimpProcedure* %1117 to %struct._GTypeInstance*
  %call600 = call i64 @gimp_object_get_type() #6
  %call601 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1118, i64 %call600)
  %1119 = bitcast %struct._GTypeInstance* %call601 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %1119, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.472, i32 0, i32 0))
  %1120 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %1120, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.472, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.473, i32 0, i32 0), i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.474, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.443, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.443, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.154, i32 0, i32 0), i8* null)
  %1121 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %1122 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp602 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %1122, i32 0, i32 1
  %1123 = load %struct._Gimp*, %struct._Gimp** %gimp602, align 8
  %call603 = call %struct._GParamSpec* @gimp_param_spec_image_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i32 0, i32 0), %struct._Gimp* %1123, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %1121, %struct._GParamSpec* %call603)
  %1124 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call604 = call %struct._GParamSpec* @gimp_param_spec_parasite(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.475, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.475, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.476, i32 0, i32 0), i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %1124, %struct._GParamSpec* %call604)
  %1125 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %1126 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %1125, %struct._GimpProcedure* %1126)
  %1127 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %1128 = bitcast %struct._GimpProcedure* %1127 to i8*
  call void @g_object_unref(i8* %1128)
  %call605 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @image_detach_parasite_invoker)
  store %struct._GimpProcedure* %call605, %struct._GimpProcedure** %procedure, align 8
  %1129 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %1130 = bitcast %struct._GimpProcedure* %1129 to %struct._GTypeInstance*
  %call606 = call i64 @gimp_object_get_type() #6
  %call607 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1130, i64 %call606)
  %1131 = bitcast %struct._GTypeInstance* %call607 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %1131, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.477, i32 0, i32 0))
  %1132 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %1132, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.477, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.478, i32 0, i32 0), i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.479, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.443, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.443, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.154, i32 0, i32 0), i8* null)
  %1133 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %1134 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp608 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %1134, i32 0, i32 1
  %1135 = load %struct._Gimp*, %struct._Gimp** %gimp608, align 8
  %call609 = call %struct._GParamSpec* @gimp_param_spec_image_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i32 0, i32 0), %struct._Gimp* %1135, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %1133, %struct._GParamSpec* %call609)
  %1136 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call610 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.405, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.405, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.480, i32 0, i32 0), i32 0, i32 0, i32 0, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %1136, %struct._GParamSpec* %call610)
  %1137 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %1138 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %1137, %struct._GimpProcedure* %1138)
  %1139 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %1140 = bitcast %struct._GimpProcedure* %1139 to i8*
  call void @g_object_unref(i8* %1140)
  %call611 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @image_get_parasite_invoker)
  store %struct._GimpProcedure* %call611, %struct._GimpProcedure** %procedure, align 8
  %1141 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %1142 = bitcast %struct._GimpProcedure* %1141 to %struct._GTypeInstance*
  %call612 = call i64 @gimp_object_get_type() #6
  %call613 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1142, i64 %call612)
  %1143 = bitcast %struct._GTypeInstance* %call613 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %1143, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.481, i32 0, i32 0))
  %1144 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %1144, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.481, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.482, i32 0, i32 0), i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.483, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.443, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.443, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.154, i32 0, i32 0), i8* null)
  %1145 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %1146 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp614 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %1146, i32 0, i32 1
  %1147 = load %struct._Gimp*, %struct._Gimp** %gimp614, align 8
  %call615 = call %struct._GParamSpec* @gimp_param_spec_image_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i32 0, i32 0), %struct._Gimp* %1147, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %1145, %struct._GParamSpec* %call615)
  %1148 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call616 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.405, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.405, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.484, i32 0, i32 0), i32 0, i32 0, i32 0, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %1148, %struct._GParamSpec* %call616)
  %1149 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call617 = call %struct._GParamSpec* @gimp_param_spec_parasite(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.475, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.475, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.485, i32 0, i32 0), i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %1149, %struct._GParamSpec* %call617)
  %1150 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %1151 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %1150, %struct._GimpProcedure* %1151)
  %1152 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %1153 = bitcast %struct._GimpProcedure* %1152 to i8*
  call void @g_object_unref(i8* %1153)
  %call618 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @image_get_parasite_list_invoker)
  store %struct._GimpProcedure* %call618, %struct._GimpProcedure** %procedure, align 8
  %1154 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %1155 = bitcast %struct._GimpProcedure* %1154 to %struct._GTypeInstance*
  %call619 = call i64 @gimp_object_get_type() #6
  %call620 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1155, i64 %call619)
  %1156 = bitcast %struct._GTypeInstance* %call620 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %1156, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.486, i32 0, i32 0))
  %1157 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %1157, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.486, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.487, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.488, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.489, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.489, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.303, i32 0, i32 0), i8* null)
  %1158 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %1159 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp621 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %1159, i32 0, i32 1
  %1160 = load %struct._Gimp*, %struct._Gimp** %gimp621, align 8
  %call622 = call %struct._GParamSpec* @gimp_param_spec_image_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i32 0, i32 0), %struct._Gimp* %1160, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %1158, %struct._GParamSpec* %call622)
  %1161 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call623 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.490, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.491, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.492, i32 0, i32 0), i32 0, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %1161, %struct._GParamSpec* %call623)
  %1162 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call624 = call %struct._GParamSpec* @gimp_param_spec_string_array(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.493, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.493, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.494, i32 0, i32 0), i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %1162, %struct._GParamSpec* %call624)
  %1163 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %1164 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %1163, %struct._GimpProcedure* %1164)
  %1165 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %1166 = bitcast %struct._GimpProcedure* %1165 to i8*
  call void @g_object_unref(i8* %1166)
  ret void
}

declare %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)*) #1

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @image_is_valid_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %return_vals = alloca %struct._GValueArray*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %valid = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 0, i32* %valid, align 4
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %2 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call = call %struct._GimpImage* @gimp_value_get_image(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpImage* %call, %struct._GimpImage** %image, align 8
  %3 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %4 = bitcast %struct._GimpImage* %3 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %4, %struct._GTypeInstance** %__inst, align 8
  %call1 = call i64 @gimp_image_get_type() #6
  store i64 %call1, i64* %__t, align 8
  %5 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %5, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %__r, align 4
  br label %if.end.7

if.else:                                          ; preds = %entry
  %6 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %6, i32 0, i32 0
  %7 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool2 = icmp ne %struct._GTypeClass* %7, null
  br i1 %tobool2, label %land.lhs.true, label %if.else.5

land.lhs.true:                                    ; preds = %if.else
  %8 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class3 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %8, i32 0, i32 0
  %9 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class3, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %9, i32 0, i32 0
  %10 = load i64, i64* %g_type, align 8
  %11 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %10, %11
  br i1 %cmp, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.5:                                        ; preds = %land.lhs.true, %if.else
  %12 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %13 = load i64, i64* %__t, align 8
  %call6 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %12, i64 %13) #7
  store i32 %call6, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.5, %if.then.4
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %if.then
  %14 = load i32, i32* %__r, align 4
  store i32 %14, i32* %tmp
  %15 = load i32, i32* %tmp
  store i32 %15, i32* %valid, align 4
  %16 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %call8 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %16, i32 1, %struct._GError* null)
  store %struct._GValueArray* %call8, %struct._GValueArray** %return_vals, align 8
  %17 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values9 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %17, i32 0, i32 1
  %18 = load %struct._GValue*, %struct._GValue** %values9, align 8
  %arrayidx10 = getelementptr inbounds %struct._GValue, %struct._GValue* %18, i64 1
  %19 = load i32, i32* %valid, align 4
  call void @g_value_set_boolean(%struct._GValue* %arrayidx10, i32 %19)
  %20 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %20
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

declare void @gimp_pdb_register_procedure(%struct._GimpPDB*, %struct._GimpProcedure*) #1

declare void @g_object_unref(i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @image_list_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %return_vals = alloca %struct._GValueArray*, align 8
  %num_images = alloca i32, align 4
  %image_ids = alloca i32*, align 8
  %list = alloca %struct._GList*, align 8
  %i = alloca i32, align 4
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 0, i32* %num_images, align 4
  store i32* null, i32** %image_ids, align 8
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call = call %struct._GList* @gimp_get_image_iter(%struct._Gimp* %0)
  store %struct._GList* %call, %struct._GList** %list, align 8
  %1 = load %struct._GList*, %struct._GList** %list, align 8
  %call1 = call i32 @g_list_length(%struct._GList* %1)
  store i32 %call1, i32* %num_images, align 4
  %2 = load i32, i32* %num_images, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %num_images, align 4
  %conv = sext i32 %3 to i64
  %call2 = call noalias i8* @g_malloc_n(i64 %conv, i64 4)
  %4 = bitcast i8* %call2 to i32*
  store i32* %4, i32** %image_ids, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %if.then
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* %num_images, align 4
  %cmp = icmp slt i32 %5, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %7, i32 0, i32 0
  %8 = load i8*, i8** %data, align 8
  %9 = bitcast i8* %8 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_image_get_type() #6
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call4)
  %10 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpImage*
  %call6 = call i32 @gimp_image_get_ID(%struct._GimpImage* %10)
  %11 = load i32, i32* %i, align 4
  %idxprom = sext i32 %11 to i64
  %12 = load i32*, i32** %image_ids, align 8
  %arrayidx = getelementptr inbounds i32, i32* %12, i64 %idxprom
  store i32 %call6, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i32, i32* %i, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %i, align 4
  %14 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool7 = icmp ne %struct._GList* %14, null
  br i1 %tobool7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %15 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %15, i32 0, i32 1
  %16 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %16, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  %17 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %call8 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %17, i32 1, %struct._GError* null)
  store %struct._GValueArray* %call8, %struct._GValueArray** %return_vals, align 8
  %18 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %18, i32 0, i32 1
  %19 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx9 = getelementptr inbounds %struct._GValue, %struct._GValue* %19, i64 1
  %20 = load i32, i32* %num_images, align 4
  call void @g_value_set_int(%struct._GValue* %arrayidx9, i32 %20)
  %21 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values10 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %21, i32 0, i32 1
  %22 = load %struct._GValue*, %struct._GValue** %values10, align 8
  %arrayidx11 = getelementptr inbounds %struct._GValue, %struct._GValue* %22, i64 2
  %23 = load i32*, i32** %image_ids, align 8
  %24 = load i32, i32* %num_images, align 4
  %conv12 = sext i32 %24 to i64
  call void @gimp_value_take_int32array(%struct._GValue* %arrayidx11, i32* %23, i64 %conv12)
  %25 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %25
}

declare %struct._GParamSpec* @gimp_param_spec_int32(i8*, i8*, i8*, i32, i32, i32, i32) #1

declare %struct._GParamSpec* @gimp_param_spec_int32_array(i8*, i8*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @image_new_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %return_vals = alloca %struct._GValueArray*, align 8
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %type = alloca i32, align 4
  %image = alloca %struct._GimpImage*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store %struct._GimpImage* null, %struct._GimpImage** %image, align 8
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
  %call6 = call i32 @g_value_get_enum(%struct._GValue* %arrayidx5)
  store i32 %call6, i32* %type, align 4
  %6 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then, label %if.end.10

if.then:                                          ; preds = %entry
  %7 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %8 = load i32, i32* %width, align 4
  %9 = load i32, i32* %height, align 4
  %10 = load i32, i32* %type, align 4
  %call7 = call %struct._GimpImage* @gimp_create_image(%struct._Gimp* %7, i32 %8, i32 %9, i32 %10, i32 0)
  store %struct._GimpImage* %call7, %struct._GimpImage** %image, align 8
  %11 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool8 = icmp ne %struct._GimpImage* %11, null
  br i1 %tobool8, label %if.end, label %if.then.9

if.then.9:                                        ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.9, %if.then
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
  %20 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_value_set_image(%struct._GValue* %arrayidx16, %struct._GimpImage* %20)
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.14, %cond.end
  %21 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %21
}

declare %struct._GParamSpec* @g_param_spec_enum(i8*, i8*, i8*, i64, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_image_base_type_get_type() #2

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @image_duplicate_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  %new_image = alloca %struct._GimpImage*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store %struct._GimpImage* null, %struct._GimpImage** %new_image, align 8
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %2 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call = call %struct._GimpImage* @gimp_value_get_image(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpImage* %call, %struct._GimpImage** %image, align 8
  %3 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end.4

if.then:                                          ; preds = %entry
  %4 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call1 = call %struct._GimpImage* @gimp_image_duplicate(%struct._GimpImage* %4)
  store %struct._GimpImage* %call1, %struct._GimpImage** %new_image, align 8
  %5 = load %struct._GimpImage*, %struct._GimpImage** %new_image, align 8
  %tobool2 = icmp ne %struct._GimpImage* %5, null
  br i1 %tobool2, label %if.end, label %if.then.3

if.then.3:                                        ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %entry
  %6 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %7 = load i32, i32* %success, align 4
  %8 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool5 = icmp ne %struct._GError** %8, null
  br i1 %tobool5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.4
  %9 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %10 = load %struct._GError*, %struct._GError** %9, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %10, %cond.true ], [ null, %cond.false ]
  %call6 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %6, i32 %7, %struct._GError* %cond)
  store %struct._GValueArray* %call6, %struct._GValueArray** %return_vals, align 8
  %11 = load i32, i32* %success, align 4
  %tobool7 = icmp ne i32 %11, 0
  br i1 %tobool7, label %if.then.8, label %if.end.11

if.then.8:                                        ; preds = %cond.end
  %12 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values9 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %12, i32 0, i32 1
  %13 = load %struct._GValue*, %struct._GValue** %values9, align 8
  %arrayidx10 = getelementptr inbounds %struct._GValue, %struct._GValue* %13, i64 1
  %14 = load %struct._GimpImage*, %struct._GimpImage** %new_image, align 8
  call void @gimp_value_set_image(%struct._GValue* %arrayidx10, %struct._GimpImage* %14)
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.8, %cond.end
  %15 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %15
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @image_delete_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  br i1 %tobool, label %if.then, label %if.end.3

if.then:                                          ; preds = %entry
  %4 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call1 = call i32 @gimp_image_get_display_count(%struct._GimpImage* %4)
  %cmp = icmp eq i32 %call1, 0
  br i1 %cmp, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  %5 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %6 = bitcast %struct._GimpImage* %5 to i8*
  call void @g_object_unref(i8* %6)
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.2
  br label %if.end.3

if.end.3:                                         ; preds = %if.end, %entry
  %7 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %8 = load i32, i32* %success, align 4
  %9 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool4 = icmp ne %struct._GError** %9, null
  br i1 %tobool4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.3
  %10 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %11 = load %struct._GError*, %struct._GError** %10, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %11, %cond.true ], [ null, %cond.false ]
  %call5 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %7, i32 %8, %struct._GError* %cond)
  ret %struct._GValueArray* %call5
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @image_base_type_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  %base_type = alloca i32, align 4
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store i32 0, i32* %base_type, align 4
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
  %call1 = call i32 @gimp_image_base_type(%struct._GimpImage* %4)
  store i32 %call1, i32* %base_type, align 4
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
  store %struct._GValueArray* %call3, %struct._GValueArray** %return_vals, align 8
  %10 = load i32, i32* %success, align 4
  %tobool4 = icmp ne i32 %10, 0
  br i1 %tobool4, label %if.then.5, label %if.end.8

if.then.5:                                        ; preds = %cond.end
  %11 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values6 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %11, i32 0, i32 1
  %12 = load %struct._GValue*, %struct._GValue** %values6, align 8
  %arrayidx7 = getelementptr inbounds %struct._GValue, %struct._GValue* %12, i64 1
  %13 = load i32, i32* %base_type, align 4
  call void @g_value_set_enum(%struct._GValue* %arrayidx7, i32 %13)
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.5, %cond.end
  %14 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %14
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @image_width_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  %width = alloca i32, align 4
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store i32 0, i32* %width, align 4
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
  %call1 = call i32 @gimp_image_get_width(%struct._GimpImage* %4)
  store i32 %call1, i32* %width, align 4
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
  store %struct._GValueArray* %call3, %struct._GValueArray** %return_vals, align 8
  %10 = load i32, i32* %success, align 4
  %tobool4 = icmp ne i32 %10, 0
  br i1 %tobool4, label %if.then.5, label %if.end.8

if.then.5:                                        ; preds = %cond.end
  %11 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values6 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %11, i32 0, i32 1
  %12 = load %struct._GValue*, %struct._GValue** %values6, align 8
  %arrayidx7 = getelementptr inbounds %struct._GValue, %struct._GValue* %12, i64 1
  %13 = load i32, i32* %width, align 4
  call void @g_value_set_int(%struct._GValue* %arrayidx7, i32 %13)
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.5, %cond.end
  %14 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %14
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @image_height_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  %height = alloca i32, align 4
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store i32 0, i32* %height, align 4
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
  %call1 = call i32 @gimp_image_get_height(%struct._GimpImage* %4)
  store i32 %call1, i32* %height, align 4
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
  store %struct._GValueArray* %call3, %struct._GValueArray** %return_vals, align 8
  %10 = load i32, i32* %success, align 4
  %tobool4 = icmp ne i32 %10, 0
  br i1 %tobool4, label %if.then.5, label %if.end.8

if.then.5:                                        ; preds = %cond.end
  %11 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values6 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %11, i32 0, i32 1
  %12 = load %struct._GValue*, %struct._GValue** %values6, align 8
  %arrayidx7 = getelementptr inbounds %struct._GValue, %struct._GValue* %12, i64 1
  %13 = load i32, i32* %height, align 4
  call void @g_value_set_int(%struct._GValue* %arrayidx7, i32 %13)
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.5, %cond.end
  %14 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %14
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @image_free_shadow_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %2 = load i32, i32* %success, align 4
  %3 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool1 = icmp ne %struct._GError** %3, null
  br i1 %tobool1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %4 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %5 = load %struct._GError*, %struct._GError** %4, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %5, %cond.true ], [ null, %cond.false ]
  %call = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %1, i32 %2, %struct._GError* %cond)
  ret %struct._GValueArray* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @image_resize_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %image = alloca %struct._GimpImage*, align 8
  %new_width = alloca i32, align 4
  %new_height = alloca i32, align 4
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
  store i32 %call3, i32* %new_width, align 4
  %5 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values4 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %5, i32 0, i32 1
  %6 = load %struct._GValue*, %struct._GValue** %values4, align 8
  %arrayidx5 = getelementptr inbounds %struct._GValue, %struct._GValue* %6, i64 2
  %call6 = call i32 @g_value_get_int(%struct._GValue* %arrayidx5)
  store i32 %call6, i32* %new_height, align 4
  %7 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values7 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %7, i32 0, i32 1
  %8 = load %struct._GValue*, %struct._GValue** %values7, align 8
  %arrayidx8 = getelementptr inbounds %struct._GValue, %struct._GValue* %8, i64 3
  %call9 = call i32 @g_value_get_int(%struct._GValue* %arrayidx8)
  store i32 %call9, i32* %offx, align 4
  %9 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values10 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %9, i32 0, i32 1
  %10 = load %struct._GValue*, %struct._GValue** %values10, align 8
  %arrayidx11 = getelementptr inbounds %struct._GValue, %struct._GValue* %10, i64 4
  %call12 = call i32 @g_value_get_int(%struct._GValue* %arrayidx11)
  store i32 %call12, i32* %offy, align 4
  %11 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %12 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %13 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %14 = load i32, i32* %new_width, align 4
  %15 = load i32, i32* %new_height, align 4
  %16 = load i32, i32* %offx, align 4
  %17 = load i32, i32* %offy, align 4
  call void @gimp_image_resize(%struct._GimpImage* %12, %struct._GimpContext* %13, i32 %14, i32 %15, i32 %16, i32 %17, %struct._GimpProgress* null)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %18 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %19 = load i32, i32* %success, align 4
  %20 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool13 = icmp ne %struct._GError** %20, null
  br i1 %tobool13, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %21 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %22 = load %struct._GError*, %struct._GError** %21, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %22, %cond.true ], [ null, %cond.false ]
  %call14 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %18, i32 %19, %struct._GError* %cond)
  ret %struct._GValueArray* %call14
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @image_resize_to_layers_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  %5 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  call void @gimp_image_resize_to_layers(%struct._GimpImage* %4, %struct._GimpContext* %5, %struct._GimpProgress* null)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %7 = load i32, i32* %success, align 4
  %8 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool1 = icmp ne %struct._GError** %8, null
  br i1 %tobool1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %9 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %10 = load %struct._GError*, %struct._GError** %9, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %10, %cond.true ], [ null, %cond.false ]
  %call2 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %6, i32 %7, %struct._GError* %cond)
  ret %struct._GValueArray* %call2
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @image_scale_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %image = alloca %struct._GimpImage*, align 8
  %new_width = alloca i32, align 4
  %new_height = alloca i32, align 4
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
  %call3 = call i32 @g_value_get_int(%struct._GValue* %arrayidx2)
  store i32 %call3, i32* %new_width, align 4
  %5 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values4 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %5, i32 0, i32 1
  %6 = load %struct._GValue*, %struct._GValue** %values4, align 8
  %arrayidx5 = getelementptr inbounds %struct._GValue, %struct._GValue* %6, i64 2
  %call6 = call i32 @g_value_get_int(%struct._GValue* %arrayidx5)
  store i32 %call6, i32* %new_height, align 4
  %7 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then, label %if.end.16

if.then:                                          ; preds = %entry
  %8 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %9 = bitcast %struct._GimpContext* %8 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_pdb_context_get_type() #6
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call7)
  %10 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpPDBContext*
  store %struct._GimpPDBContext* %10, %struct._GimpPDBContext** %pdb_context, align 8
  %11 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %tobool9 = icmp ne %struct._GimpProgress* %11, null
  br i1 %tobool9, label %if.then.10, label %if.end

if.then.10:                                       ; preds = %if.then
  %12 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %call11 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.495, i32 0, i32 0)) #5
  %call12 = call %struct._GimpProgress* @gimp_progress_start(%struct._GimpProgress* %12, i8* %call11, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then.10, %if.then
  %13 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %14 = load i32, i32* %new_width, align 4
  %15 = load i32, i32* %new_height, align 4
  %16 = load %struct._GimpPDBContext*, %struct._GimpPDBContext** %pdb_context, align 8
  %interpolation = getelementptr inbounds %struct._GimpPDBContext, %struct._GimpPDBContext* %16, i32 0, i32 9
  %17 = load i32, i32* %interpolation, align 4
  %18 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  call void @gimp_image_scale(%struct._GimpImage* %13, i32 %14, i32 %15, i32 %17, %struct._GimpProgress* %18)
  %19 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %tobool13 = icmp ne %struct._GimpProgress* %19, null
  br i1 %tobool13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end
  %20 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  call void @gimp_progress_end(%struct._GimpProgress* %20)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.14, %if.end
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15, %entry
  %21 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %22 = load i32, i32* %success, align 4
  %23 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool17 = icmp ne %struct._GError** %23, null
  br i1 %tobool17, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.16
  %24 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %25 = load %struct._GError*, %struct._GError** %24, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.16
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %25, %cond.true ], [ null, %cond.false ]
  %call18 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %21, i32 %22, %struct._GError* %cond)
  ret %struct._GValueArray* %call18
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @image_scale_full_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %image = alloca %struct._GimpImage*, align 8
  %new_width = alloca i32, align 4
  %new_height = alloca i32, align 4
  %interpolation = alloca i32, align 4
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
  store i32 %call3, i32* %new_width, align 4
  %5 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values4 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %5, i32 0, i32 1
  %6 = load %struct._GValue*, %struct._GValue** %values4, align 8
  %arrayidx5 = getelementptr inbounds %struct._GValue, %struct._GValue* %6, i64 2
  %call6 = call i32 @g_value_get_int(%struct._GValue* %arrayidx5)
  store i32 %call6, i32* %new_height, align 4
  %7 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values7 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %7, i32 0, i32 1
  %8 = load %struct._GValue*, %struct._GValue** %values7, align 8
  %arrayidx8 = getelementptr inbounds %struct._GValue, %struct._GValue* %8, i64 3
  %call9 = call i32 @g_value_get_enum(%struct._GValue* %arrayidx8)
  store i32 %call9, i32* %interpolation, align 4
  %9 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %if.then, label %if.end.17

if.then:                                          ; preds = %entry
  %10 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %tobool10 = icmp ne %struct._GimpProgress* %10, null
  br i1 %tobool10, label %if.then.11, label %if.end

if.then.11:                                       ; preds = %if.then
  %11 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %call12 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.495, i32 0, i32 0)) #5
  %call13 = call %struct._GimpProgress* @gimp_progress_start(%struct._GimpProgress* %11, i8* %call12, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then.11, %if.then
  %12 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %13 = load i32, i32* %new_width, align 4
  %14 = load i32, i32* %new_height, align 4
  %15 = load i32, i32* %interpolation, align 4
  %16 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  call void @gimp_image_scale(%struct._GimpImage* %12, i32 %13, i32 %14, i32 %15, %struct._GimpProgress* %16)
  %17 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %tobool14 = icmp ne %struct._GimpProgress* %17, null
  br i1 %tobool14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end
  %18 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  call void @gimp_progress_end(%struct._GimpProgress* %18)
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %if.end
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %entry
  %19 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %20 = load i32, i32* %success, align 4
  %21 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool18 = icmp ne %struct._GError** %21, null
  br i1 %tobool18, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.17
  %22 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %23 = load %struct._GError*, %struct._GError** %22, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.17
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %23, %cond.true ], [ null, %cond.false ]
  %call19 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %19, i32 %20, %struct._GError* %cond)
  ret %struct._GValueArray* %call19
}

; Function Attrs: nounwind readnone
declare i64 @gimp_interpolation_type_get_type() #2

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @image_crop_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %image = alloca %struct._GimpImage*, align 8
  %new_width = alloca i32, align 4
  %new_height = alloca i32, align 4
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
  store i32 %call3, i32* %new_width, align 4
  %5 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values4 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %5, i32 0, i32 1
  %6 = load %struct._GValue*, %struct._GValue** %values4, align 8
  %arrayidx5 = getelementptr inbounds %struct._GValue, %struct._GValue* %6, i64 2
  %call6 = call i32 @g_value_get_int(%struct._GValue* %arrayidx5)
  store i32 %call6, i32* %new_height, align 4
  %7 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values7 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %7, i32 0, i32 1
  %8 = load %struct._GValue*, %struct._GValue** %values7, align 8
  %arrayidx8 = getelementptr inbounds %struct._GValue, %struct._GValue* %8, i64 3
  %call9 = call i32 @g_value_get_int(%struct._GValue* %arrayidx8)
  store i32 %call9, i32* %offx, align 4
  %9 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values10 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %9, i32 0, i32 1
  %10 = load %struct._GValue*, %struct._GValue** %values10, align 8
  %arrayidx11 = getelementptr inbounds %struct._GValue, %struct._GValue* %10, i64 4
  %call12 = call i32 @g_value_get_int(%struct._GValue* %arrayidx11)
  store i32 %call12, i32* %offy, align 4
  %11 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %if.then, label %if.end.25

if.then:                                          ; preds = %entry
  %12 = load i32, i32* %new_width, align 4
  %13 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call13 = call i32 @gimp_image_get_width(%struct._GimpImage* %13)
  %cmp = icmp sgt i32 %12, %call13
  br i1 %cmp, label %if.then.23, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %14 = load i32, i32* %new_height, align 4
  %15 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call14 = call i32 @gimp_image_get_height(%struct._GimpImage* %15)
  %cmp15 = icmp sgt i32 %14, %call14
  br i1 %cmp15, label %if.then.23, label %lor.lhs.false.16

lor.lhs.false.16:                                 ; preds = %lor.lhs.false
  %16 = load i32, i32* %offx, align 4
  %17 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call17 = call i32 @gimp_image_get_width(%struct._GimpImage* %17)
  %18 = load i32, i32* %new_width, align 4
  %sub = sub nsw i32 %call17, %18
  %cmp18 = icmp sgt i32 %16, %sub
  br i1 %cmp18, label %if.then.23, label %lor.lhs.false.19

lor.lhs.false.19:                                 ; preds = %lor.lhs.false.16
  %19 = load i32, i32* %offy, align 4
  %20 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call20 = call i32 @gimp_image_get_height(%struct._GimpImage* %20)
  %21 = load i32, i32* %new_height, align 4
  %sub21 = sub nsw i32 %call20, %21
  %cmp22 = icmp sgt i32 %19, %sub21
  br i1 %cmp22, label %if.then.23, label %if.else

if.then.23:                                       ; preds = %lor.lhs.false.19, %lor.lhs.false.16, %lor.lhs.false, %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false.19
  %22 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %23 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %24 = load i32, i32* %offx, align 4
  %25 = load i32, i32* %offy, align 4
  %26 = load i32, i32* %offx, align 4
  %27 = load i32, i32* %new_width, align 4
  %add = add nsw i32 %26, %27
  %28 = load i32, i32* %offy, align 4
  %29 = load i32, i32* %new_height, align 4
  %add24 = add nsw i32 %28, %29
  call void @gimp_image_crop(%struct._GimpImage* %22, %struct._GimpContext* %23, i32 %24, i32 %25, i32 %add, i32 %add24, i32 0, i32 1)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.23
  br label %if.end.25

if.end.25:                                        ; preds = %if.end, %entry
  %30 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %31 = load i32, i32* %success, align 4
  %32 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool26 = icmp ne %struct._GError** %32, null
  br i1 %tobool26, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.25
  %33 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %34 = load %struct._GError*, %struct._GError** %33, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.25
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %34, %cond.true ], [ null, %cond.false ]
  %call27 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %30, i32 %31, %struct._GError* %cond)
  ret %struct._GValueArray* %call27
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @image_flip_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %image = alloca %struct._GimpImage*, align 8
  %flip_type = alloca i32, align 4
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
  store i32 %call3, i32* %flip_type, align 4
  %5 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %7 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %8 = load i32, i32* %flip_type, align 4
  call void @gimp_image_flip(%struct._GimpImage* %6, %struct._GimpContext* %7, i32 %8, %struct._GimpProgress* null)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %10 = load i32, i32* %success, align 4
  %11 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool4 = icmp ne %struct._GError** %11, null
  br i1 %tobool4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %12 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %13 = load %struct._GError*, %struct._GError** %12, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %13, %cond.true ], [ null, %cond.false ]
  %call5 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %9, i32 %10, %struct._GError* %cond)
  ret %struct._GValueArray* %call5
}

declare %struct._GParamSpec* @gimp_param_spec_enum(i8*, i8*, i8*, i64, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_orientation_type_get_type() #2

declare void @gimp_param_spec_enum_exclude_value(%struct._GimpParamSpecEnum*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_param_enum_get_type() #2

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @image_rotate_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %image = alloca %struct._GimpImage*, align 8
  %rotate_type = alloca i32, align 4
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
  store i32 %call3, i32* %rotate_type, align 4
  %5 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end.11

if.then:                                          ; preds = %entry
  %6 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %tobool4 = icmp ne %struct._GimpProgress* %6, null
  br i1 %tobool4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then
  %7 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %call6 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.496, i32 0, i32 0)) #5
  %call7 = call %struct._GimpProgress* @gimp_progress_start(%struct._GimpProgress* %7, i8* %call6, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then.5, %if.then
  %8 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %9 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %10 = load i32, i32* %rotate_type, align 4
  %11 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  call void @gimp_image_rotate(%struct._GimpImage* %8, %struct._GimpContext* %9, i32 %10, %struct._GimpProgress* %11)
  %12 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %tobool8 = icmp ne %struct._GimpProgress* %12, null
  br i1 %tobool8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end
  %13 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  call void @gimp_progress_end(%struct._GimpProgress* %13)
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.9, %if.end
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.10, %entry
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

; Function Attrs: nounwind readnone
declare i64 @gimp_rotation_type_get_type() #2

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @image_get_layers_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  %num_layers = alloca i32, align 4
  %layer_ids = alloca i32*, align 8
  %list = alloca %struct._GList*, align 8
  %i = alloca i32, align 4
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store i32 0, i32* %num_layers, align 4
  store i32* null, i32** %layer_ids, align 8
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %2 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call = call %struct._GimpImage* @gimp_value_get_image(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpImage* %call, %struct._GimpImage** %image, align 8
  %3 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end.12

if.then:                                          ; preds = %entry
  %4 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call1 = call %struct._GList* @gimp_image_get_layer_iter(%struct._GimpImage* %4)
  store %struct._GList* %call1, %struct._GList** %list, align 8
  %5 = load %struct._GList*, %struct._GList** %list, align 8
  %call2 = call i32 @g_list_length(%struct._GList* %5)
  store i32 %call2, i32* %num_layers, align 4
  %6 = load i32, i32* %num_layers, align 4
  %tobool3 = icmp ne i32 %6, 0
  br i1 %tobool3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  %7 = load i32, i32* %num_layers, align 4
  %conv = sext i32 %7 to i64
  %call5 = call noalias i8* @g_malloc_n(i64 %conv, i64 4)
  %8 = bitcast i8* %call5 to i32*
  store i32* %8, i32** %layer_ids, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %if.then.4
  %9 = load i32, i32* %i, align 4
  %10 = load i32, i32* %num_layers, align 4
  %cmp = icmp slt i32 %9, %10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %11, i32 0, i32 0
  %12 = load i8*, i8** %data, align 8
  %13 = bitcast i8* %12 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_item_get_type() #6
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call7)
  %14 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpItem*
  %call9 = call i32 @gimp_item_get_ID(%struct._GimpItem* %14)
  %15 = load i32, i32* %i, align 4
  %idxprom = sext i32 %15 to i64
  %16 = load i32*, i32** %layer_ids, align 8
  %arrayidx10 = getelementptr inbounds i32, i32* %16, i64 %idxprom
  store i32 %call9, i32* %arrayidx10, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load i32, i32* %i, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %i, align 4
  %18 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool11 = icmp ne %struct._GList* %18, null
  br i1 %tobool11, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %19 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %19, i32 0, i32 1
  %20 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %20, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %if.then
  br label %if.end.12

if.end.12:                                        ; preds = %if.end, %entry
  %21 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %22 = load i32, i32* %success, align 4
  %23 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool13 = icmp ne %struct._GError** %23, null
  br i1 %tobool13, label %cond.true.14, label %cond.false.15

cond.true.14:                                     ; preds = %if.end.12
  %24 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %25 = load %struct._GError*, %struct._GError** %24, align 8
  br label %cond.end.16

cond.false.15:                                    ; preds = %if.end.12
  br label %cond.end.16

cond.end.16:                                      ; preds = %cond.false.15, %cond.true.14
  %cond17 = phi %struct._GError* [ %25, %cond.true.14 ], [ null, %cond.false.15 ]
  %call18 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %21, i32 %22, %struct._GError* %cond17)
  store %struct._GValueArray* %call18, %struct._GValueArray** %return_vals, align 8
  %26 = load i32, i32* %success, align 4
  %tobool19 = icmp ne i32 %26, 0
  br i1 %tobool19, label %if.then.20, label %if.end.26

if.then.20:                                       ; preds = %cond.end.16
  %27 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values21 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %27, i32 0, i32 1
  %28 = load %struct._GValue*, %struct._GValue** %values21, align 8
  %arrayidx22 = getelementptr inbounds %struct._GValue, %struct._GValue* %28, i64 1
  %29 = load i32, i32* %num_layers, align 4
  call void @g_value_set_int(%struct._GValue* %arrayidx22, i32 %29)
  %30 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values23 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %30, i32 0, i32 1
  %31 = load %struct._GValue*, %struct._GValue** %values23, align 8
  %arrayidx24 = getelementptr inbounds %struct._GValue, %struct._GValue* %31, i64 2
  %32 = load i32*, i32** %layer_ids, align 8
  %33 = load i32, i32* %num_layers, align 4
  %conv25 = sext i32 %33 to i64
  call void @gimp_value_take_int32array(%struct._GValue* %arrayidx24, i32* %32, i64 %conv25)
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.20, %cond.end.16
  %34 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %34
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @image_get_channels_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  %num_channels = alloca i32, align 4
  %channel_ids = alloca i32*, align 8
  %list = alloca %struct._GList*, align 8
  %i = alloca i32, align 4
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store i32 0, i32* %num_channels, align 4
  store i32* null, i32** %channel_ids, align 8
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %2 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call = call %struct._GimpImage* @gimp_value_get_image(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpImage* %call, %struct._GimpImage** %image, align 8
  %3 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end.12

if.then:                                          ; preds = %entry
  %4 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call1 = call %struct._GList* @gimp_image_get_channel_iter(%struct._GimpImage* %4)
  store %struct._GList* %call1, %struct._GList** %list, align 8
  %5 = load %struct._GList*, %struct._GList** %list, align 8
  %call2 = call i32 @g_list_length(%struct._GList* %5)
  store i32 %call2, i32* %num_channels, align 4
  %6 = load i32, i32* %num_channels, align 4
  %tobool3 = icmp ne i32 %6, 0
  br i1 %tobool3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  %7 = load i32, i32* %num_channels, align 4
  %conv = sext i32 %7 to i64
  %call5 = call noalias i8* @g_malloc_n(i64 %conv, i64 4)
  %8 = bitcast i8* %call5 to i32*
  store i32* %8, i32** %channel_ids, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %if.then.4
  %9 = load i32, i32* %i, align 4
  %10 = load i32, i32* %num_channels, align 4
  %cmp = icmp slt i32 %9, %10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %11, i32 0, i32 0
  %12 = load i8*, i8** %data, align 8
  %13 = bitcast i8* %12 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_item_get_type() #6
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call7)
  %14 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpItem*
  %call9 = call i32 @gimp_item_get_ID(%struct._GimpItem* %14)
  %15 = load i32, i32* %i, align 4
  %idxprom = sext i32 %15 to i64
  %16 = load i32*, i32** %channel_ids, align 8
  %arrayidx10 = getelementptr inbounds i32, i32* %16, i64 %idxprom
  store i32 %call9, i32* %arrayidx10, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load i32, i32* %i, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %i, align 4
  %18 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool11 = icmp ne %struct._GList* %18, null
  br i1 %tobool11, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %19 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %19, i32 0, i32 1
  %20 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %20, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %if.then
  br label %if.end.12

if.end.12:                                        ; preds = %if.end, %entry
  %21 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %22 = load i32, i32* %success, align 4
  %23 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool13 = icmp ne %struct._GError** %23, null
  br i1 %tobool13, label %cond.true.14, label %cond.false.15

cond.true.14:                                     ; preds = %if.end.12
  %24 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %25 = load %struct._GError*, %struct._GError** %24, align 8
  br label %cond.end.16

cond.false.15:                                    ; preds = %if.end.12
  br label %cond.end.16

cond.end.16:                                      ; preds = %cond.false.15, %cond.true.14
  %cond17 = phi %struct._GError* [ %25, %cond.true.14 ], [ null, %cond.false.15 ]
  %call18 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %21, i32 %22, %struct._GError* %cond17)
  store %struct._GValueArray* %call18, %struct._GValueArray** %return_vals, align 8
  %26 = load i32, i32* %success, align 4
  %tobool19 = icmp ne i32 %26, 0
  br i1 %tobool19, label %if.then.20, label %if.end.26

if.then.20:                                       ; preds = %cond.end.16
  %27 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values21 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %27, i32 0, i32 1
  %28 = load %struct._GValue*, %struct._GValue** %values21, align 8
  %arrayidx22 = getelementptr inbounds %struct._GValue, %struct._GValue* %28, i64 1
  %29 = load i32, i32* %num_channels, align 4
  call void @g_value_set_int(%struct._GValue* %arrayidx22, i32 %29)
  %30 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values23 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %30, i32 0, i32 1
  %31 = load %struct._GValue*, %struct._GValue** %values23, align 8
  %arrayidx24 = getelementptr inbounds %struct._GValue, %struct._GValue* %31, i64 2
  %32 = load i32*, i32** %channel_ids, align 8
  %33 = load i32, i32* %num_channels, align 4
  %conv25 = sext i32 %33 to i64
  call void @gimp_value_take_int32array(%struct._GValue* %arrayidx24, i32* %32, i64 %conv25)
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.20, %cond.end.16
  %34 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %34
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @image_get_vectors_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  %num_vectors = alloca i32, align 4
  %vector_ids = alloca i32*, align 8
  %list = alloca %struct._GList*, align 8
  %i = alloca i32, align 4
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store i32 0, i32* %num_vectors, align 4
  store i32* null, i32** %vector_ids, align 8
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %2 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call = call %struct._GimpImage* @gimp_value_get_image(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpImage* %call, %struct._GimpImage** %image, align 8
  %3 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end.12

if.then:                                          ; preds = %entry
  %4 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call1 = call %struct._GList* @gimp_image_get_vectors_iter(%struct._GimpImage* %4)
  store %struct._GList* %call1, %struct._GList** %list, align 8
  %5 = load %struct._GList*, %struct._GList** %list, align 8
  %call2 = call i32 @g_list_length(%struct._GList* %5)
  store i32 %call2, i32* %num_vectors, align 4
  %6 = load i32, i32* %num_vectors, align 4
  %tobool3 = icmp ne i32 %6, 0
  br i1 %tobool3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  %7 = load i32, i32* %num_vectors, align 4
  %conv = sext i32 %7 to i64
  %call5 = call noalias i8* @g_malloc_n(i64 %conv, i64 4)
  %8 = bitcast i8* %call5 to i32*
  store i32* %8, i32** %vector_ids, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %if.then.4
  %9 = load i32, i32* %i, align 4
  %10 = load i32, i32* %num_vectors, align 4
  %cmp = icmp slt i32 %9, %10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %11, i32 0, i32 0
  %12 = load i8*, i8** %data, align 8
  %13 = bitcast i8* %12 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_item_get_type() #6
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call7)
  %14 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpItem*
  %call9 = call i32 @gimp_item_get_ID(%struct._GimpItem* %14)
  %15 = load i32, i32* %i, align 4
  %idxprom = sext i32 %15 to i64
  %16 = load i32*, i32** %vector_ids, align 8
  %arrayidx10 = getelementptr inbounds i32, i32* %16, i64 %idxprom
  store i32 %call9, i32* %arrayidx10, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load i32, i32* %i, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %i, align 4
  %18 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool11 = icmp ne %struct._GList* %18, null
  br i1 %tobool11, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %19 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %19, i32 0, i32 1
  %20 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %20, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %if.then
  br label %if.end.12

if.end.12:                                        ; preds = %if.end, %entry
  %21 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %22 = load i32, i32* %success, align 4
  %23 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool13 = icmp ne %struct._GError** %23, null
  br i1 %tobool13, label %cond.true.14, label %cond.false.15

cond.true.14:                                     ; preds = %if.end.12
  %24 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %25 = load %struct._GError*, %struct._GError** %24, align 8
  br label %cond.end.16

cond.false.15:                                    ; preds = %if.end.12
  br label %cond.end.16

cond.end.16:                                      ; preds = %cond.false.15, %cond.true.14
  %cond17 = phi %struct._GError* [ %25, %cond.true.14 ], [ null, %cond.false.15 ]
  %call18 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %21, i32 %22, %struct._GError* %cond17)
  store %struct._GValueArray* %call18, %struct._GValueArray** %return_vals, align 8
  %26 = load i32, i32* %success, align 4
  %tobool19 = icmp ne i32 %26, 0
  br i1 %tobool19, label %if.then.20, label %if.end.26

if.then.20:                                       ; preds = %cond.end.16
  %27 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values21 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %27, i32 0, i32 1
  %28 = load %struct._GValue*, %struct._GValue** %values21, align 8
  %arrayidx22 = getelementptr inbounds %struct._GValue, %struct._GValue* %28, i64 1
  %29 = load i32, i32* %num_vectors, align 4
  call void @g_value_set_int(%struct._GValue* %arrayidx22, i32 %29)
  %30 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values23 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %30, i32 0, i32 1
  %31 = load %struct._GValue*, %struct._GValue** %values23, align 8
  %arrayidx24 = getelementptr inbounds %struct._GValue, %struct._GValue* %31, i64 2
  %32 = load i32*, i32** %vector_ids, align 8
  %33 = load i32, i32* %num_vectors, align 4
  %conv25 = sext i32 %33 to i64
  call void @gimp_value_take_int32array(%struct._GValue* %arrayidx24, i32* %32, i64 %conv25)
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.20, %cond.end.16
  %34 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %34
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @image_get_active_drawable_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store %struct._GimpDrawable* null, %struct._GimpDrawable** %drawable, align 8
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
  %call1 = call %struct._GimpDrawable* @gimp_image_get_active_drawable(%struct._GimpImage* %4)
  store %struct._GimpDrawable* %call1, %struct._GimpDrawable** %drawable, align 8
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
  store %struct._GValueArray* %call3, %struct._GValueArray** %return_vals, align 8
  %10 = load i32, i32* %success, align 4
  %tobool4 = icmp ne i32 %10, 0
  br i1 %tobool4, label %if.then.5, label %if.end.8

if.then.5:                                        ; preds = %cond.end
  %11 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values6 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %11, i32 0, i32 1
  %12 = load %struct._GValue*, %struct._GValue** %values6, align 8
  %arrayidx7 = getelementptr inbounds %struct._GValue, %struct._GValue* %12, i64 1
  %13 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_value_set_drawable(%struct._GValue* %arrayidx7, %struct._GimpDrawable* %13)
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.5, %cond.end
  %14 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %14
}

declare %struct._GParamSpec* @gimp_param_spec_drawable_id(i8*, i8*, i8*, %struct._Gimp*, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @image_unset_active_channel_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  %call1 = call %struct._GimpChannel* @gimp_image_unset_active_channel(%struct._GimpImage* %4)
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
define internal %struct._GValueArray* @image_get_floating_sel_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  %floating_sel = alloca %struct._GimpLayer*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store %struct._GimpLayer* null, %struct._GimpLayer** %floating_sel, align 8
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
  %call1 = call %struct._GimpLayer* @gimp_image_get_floating_selection(%struct._GimpImage* %4)
  store %struct._GimpLayer* %call1, %struct._GimpLayer** %floating_sel, align 8
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
  store %struct._GValueArray* %call3, %struct._GValueArray** %return_vals, align 8
  %10 = load i32, i32* %success, align 4
  %tobool4 = icmp ne i32 %10, 0
  br i1 %tobool4, label %if.then.5, label %if.end.8

if.then.5:                                        ; preds = %cond.end
  %11 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values6 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %11, i32 0, i32 1
  %12 = load %struct._GValue*, %struct._GValue** %values6, align 8
  %arrayidx7 = getelementptr inbounds %struct._GValue, %struct._GValue* %12, i64 1
  %13 = load %struct._GimpLayer*, %struct._GimpLayer** %floating_sel, align 8
  call void @gimp_value_set_layer(%struct._GValue* %arrayidx7, %struct._GimpLayer* %13)
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.5, %cond.end
  %14 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %14
}

declare %struct._GParamSpec* @gimp_param_spec_layer_id(i8*, i8*, i8*, %struct._Gimp*, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @image_floating_sel_attached_to_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  %floating_sel = alloca %struct._GimpLayer*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store %struct._GimpDrawable* null, %struct._GimpDrawable** %drawable, align 8
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
  %call1 = call %struct._GimpLayer* @gimp_image_get_floating_selection(%struct._GimpImage* %4)
  store %struct._GimpLayer* %call1, %struct._GimpLayer** %floating_sel, align 8
  %5 = load %struct._GimpLayer*, %struct._GimpLayer** %floating_sel, align 8
  %tobool2 = icmp ne %struct._GimpLayer* %5, null
  br i1 %tobool2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  %6 = load %struct._GimpLayer*, %struct._GimpLayer** %floating_sel, align 8
  %call4 = call %struct._GimpDrawable* @gimp_layer_get_floating_sel_drawable(%struct._GimpLayer* %6)
  store %struct._GimpDrawable* %call4, %struct._GimpDrawable** %drawable, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  store %struct._GimpDrawable* null, %struct._GimpDrawable** %drawable, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %entry
  %7 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %8 = load i32, i32* %success, align 4
  %9 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool6 = icmp ne %struct._GError** %9, null
  br i1 %tobool6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.5
  %10 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %11 = load %struct._GError*, %struct._GError** %10, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %11, %cond.true ], [ null, %cond.false ]
  %call7 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %7, i32 %8, %struct._GError* %cond)
  store %struct._GValueArray* %call7, %struct._GValueArray** %return_vals, align 8
  %12 = load i32, i32* %success, align 4
  %tobool8 = icmp ne i32 %12, 0
  br i1 %tobool8, label %if.then.9, label %if.end.12

if.then.9:                                        ; preds = %cond.end
  %13 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values10 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %13, i32 0, i32 1
  %14 = load %struct._GValue*, %struct._GValue** %values10, align 8
  %arrayidx11 = getelementptr inbounds %struct._GValue, %struct._GValue* %14, i64 1
  %15 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_value_set_drawable(%struct._GValue* %arrayidx11, %struct._GimpDrawable* %15)
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.9, %cond.end
  %16 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %16
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @image_pick_color_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  %sample_merged = alloca i32, align 4
  %sample_average = alloca i32, align 4
  %average_radius = alloca double, align 8
  %color = alloca %struct._GimpRGB, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = bitcast %struct._GimpRGB* %color to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* bitcast (%struct._GimpRGB* @image_pick_color_invoker.color to i8*), i64 32, i32 8, i1 false)
  %1 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %1, i32 0, i32 1
  %2 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %2, i64 0
  %3 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call = call %struct._GimpImage* @gimp_value_get_image(%struct._GValue* %arrayidx, %struct._Gimp* %3)
  store %struct._GimpImage* %call, %struct._GimpImage** %image, align 8
  %4 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %4, i32 0, i32 1
  %5 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %5, i64 1
  %6 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call3 = call %struct._GimpDrawable* @gimp_value_get_drawable(%struct._GValue* %arrayidx2, %struct._Gimp* %6)
  store %struct._GimpDrawable* %call3, %struct._GimpDrawable** %drawable, align 8
  %7 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values4 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %7, i32 0, i32 1
  %8 = load %struct._GValue*, %struct._GValue** %values4, align 8
  %arrayidx5 = getelementptr inbounds %struct._GValue, %struct._GValue* %8, i64 2
  %call6 = call double @g_value_get_double(%struct._GValue* %arrayidx5)
  store double %call6, double* %x, align 8
  %9 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values7 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %9, i32 0, i32 1
  %10 = load %struct._GValue*, %struct._GValue** %values7, align 8
  %arrayidx8 = getelementptr inbounds %struct._GValue, %struct._GValue* %10, i64 3
  %call9 = call double @g_value_get_double(%struct._GValue* %arrayidx8)
  store double %call9, double* %y, align 8
  %11 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values10 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %11, i32 0, i32 1
  %12 = load %struct._GValue*, %struct._GValue** %values10, align 8
  %arrayidx11 = getelementptr inbounds %struct._GValue, %struct._GValue* %12, i64 4
  %call12 = call i32 @g_value_get_boolean(%struct._GValue* %arrayidx11)
  store i32 %call12, i32* %sample_merged, align 4
  %13 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values13 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %13, i32 0, i32 1
  %14 = load %struct._GValue*, %struct._GValue** %values13, align 8
  %arrayidx14 = getelementptr inbounds %struct._GValue, %struct._GValue* %14, i64 5
  %call15 = call i32 @g_value_get_boolean(%struct._GValue* %arrayidx14)
  store i32 %call15, i32* %sample_average, align 4
  %15 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values16 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %15, i32 0, i32 1
  %16 = load %struct._GValue*, %struct._GValue** %values16, align 8
  %arrayidx17 = getelementptr inbounds %struct._GValue, %struct._GValue* %16, i64 6
  %call18 = call double @g_value_get_double(%struct._GValue* %arrayidx17)
  store double %call18, double* %average_radius, align 8
  %17 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %17, 0
  br i1 %tobool, label %if.then, label %if.end.47

if.then:                                          ; preds = %entry
  %18 = load i32, i32* %sample_merged, align 4
  %tobool19 = icmp ne i32 %18, 0
  br i1 %tobool19, label %if.end.26, label %if.then.20

if.then.20:                                       ; preds = %if.then
  %19 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %tobool21 = icmp ne %struct._GimpDrawable* %19, null
  br i1 %tobool21, label %lor.lhs.false, label %if.then.25

lor.lhs.false:                                    ; preds = %if.then.20
  %20 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %21 = bitcast %struct._GimpDrawable* %20 to %struct._GTypeInstance*
  %call22 = call i64 @gimp_item_get_type() #6
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call22)
  %22 = bitcast %struct._GTypeInstance* %call23 to %struct._GimpItem*
  %call24 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %22)
  %23 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %cmp = icmp ne %struct._GimpImage* %call24, %23
  br i1 %cmp, label %if.then.25, label %if.end

if.then.25:                                       ; preds = %lor.lhs.false, %if.then.20
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.25, %lor.lhs.false
  br label %if.end.26

if.end.26:                                        ; preds = %if.end, %if.then
  %24 = load i32, i32* %success, align 4
  %tobool27 = icmp ne i32 %24, 0
  br i1 %tobool27, label %land.lhs.true, label %if.end.33

land.lhs.true:                                    ; preds = %if.end.26
  %25 = load i32, i32* %sample_average, align 4
  %tobool28 = icmp ne i32 %25, 0
  br i1 %tobool28, label %if.then.29, label %if.end.33

if.then.29:                                       ; preds = %land.lhs.true
  %26 = load double, double* %average_radius, align 8
  %cmp30 = fcmp ole double %26, 0.000000e+00
  br i1 %cmp30, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.then.29
  store i32 0, i32* %success, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.31, %if.then.29
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %land.lhs.true, %if.end.26
  %27 = load i32, i32* %success, align 4
  %tobool34 = icmp ne i32 %27, 0
  br i1 %tobool34, label %if.then.35, label %if.end.46

if.then.35:                                       ; preds = %if.end.33
  %28 = load i32, i32* %sample_merged, align 4
  %tobool36 = icmp ne i32 %28, 0
  br i1 %tobool36, label %if.then.37, label %if.else

if.then.37:                                       ; preds = %if.then.35
  %29 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call38 = call %struct._GimpProjection* @gimp_image_get_projection(%struct._GimpImage* %29)
  %30 = bitcast %struct._GimpProjection* %call38 to %struct._GTypeInstance*
  %call39 = call i64 @gimp_pickable_interface_get_type() #6
  %call40 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call39)
  %31 = bitcast %struct._GTypeInstance* %call40 to %struct._GimpPickable*
  call void @gimp_pickable_flush(%struct._GimpPickable* %31)
  br label %if.end.43

if.else:                                          ; preds = %if.then.35
  %32 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %33 = bitcast %struct._GimpDrawable* %32 to %struct._GTypeInstance*
  %call41 = call i64 @gimp_pickable_interface_get_type() #6
  %call42 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 %call41)
  %34 = bitcast %struct._GTypeInstance* %call42 to %struct._GimpPickable*
  call void @gimp_pickable_flush(%struct._GimpPickable* %34)
  br label %if.end.43

if.end.43:                                        ; preds = %if.else, %if.then.37
  %35 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %36 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %37 = load double, double* %x, align 8
  %conv = fptosi double %37 to i32
  %38 = load double, double* %y, align 8
  %conv44 = fptosi double %38 to i32
  %39 = load i32, i32* %sample_merged, align 4
  %40 = load i32, i32* %sample_average, align 4
  %41 = load double, double* %average_radius, align 8
  %call45 = call i32 @gimp_image_pick_color(%struct._GimpImage* %35, %struct._GimpDrawable* %36, i32 %conv, i32 %conv44, i32 %39, i32 %40, double %41, i32* null, %struct._GimpRGB* %color, i32* null)
  store i32 %call45, i32* %success, align 4
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.43, %if.end.33
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46, %entry
  %42 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %43 = load i32, i32* %success, align 4
  %44 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool48 = icmp ne %struct._GError** %44, null
  br i1 %tobool48, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.47
  %45 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %46 = load %struct._GError*, %struct._GError** %45, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.47
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %46, %cond.true ], [ null, %cond.false ]
  %call49 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %42, i32 %43, %struct._GError* %cond)
  store %struct._GValueArray* %call49, %struct._GValueArray** %return_vals, align 8
  %47 = load i32, i32* %success, align 4
  %tobool50 = icmp ne i32 %47, 0
  br i1 %tobool50, label %if.then.51, label %if.end.54

if.then.51:                                       ; preds = %cond.end
  %48 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values52 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %48, i32 0, i32 1
  %49 = load %struct._GValue*, %struct._GValue** %values52, align 8
  %arrayidx53 = getelementptr inbounds %struct._GValue, %struct._GValue* %49, i64 1
  call void @gimp_value_set_rgb(%struct._GValue* %arrayidx53, %struct._GimpRGB* %color)
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.51, %cond.end
  %50 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %50
}

declare %struct._GParamSpec* @g_param_spec_double(i8*, i8*, i8*, double, double, double, i32) #1

declare %struct._GParamSpec* @gimp_param_spec_rgb(i8*, i8*, i8*, i32, %struct._GimpRGB*, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @image_pick_correlate_layer_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  %layer = alloca %struct._GimpLayer*, align 8
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
  %9 = load i32, i32* %x, align 4
  %10 = load i32, i32* %y, align 4
  %call7 = call %struct._GimpLayer* @gimp_image_pick_layer(%struct._GimpImage* %8, i32 %9, i32 %10)
  store %struct._GimpLayer* %call7, %struct._GimpLayer** %layer, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %11 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %12 = load i32, i32* %success, align 4
  %13 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool8 = icmp ne %struct._GError** %13, null
  br i1 %tobool8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %14 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %15 = load %struct._GError*, %struct._GError** %14, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %15, %cond.true ], [ null, %cond.false ]
  %call9 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %11, i32 %12, %struct._GError* %cond)
  store %struct._GValueArray* %call9, %struct._GValueArray** %return_vals, align 8
  %16 = load i32, i32* %success, align 4
  %tobool10 = icmp ne i32 %16, 0
  br i1 %tobool10, label %if.then.11, label %if.end.14

if.then.11:                                       ; preds = %cond.end
  %17 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values12 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %17, i32 0, i32 1
  %18 = load %struct._GValue*, %struct._GValue** %values12, align 8
  %arrayidx13 = getelementptr inbounds %struct._GValue, %struct._GValue* %18, i64 1
  %19 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  call void @gimp_value_set_layer(%struct._GValue* %arrayidx13, %struct._GimpLayer* %19)
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.11, %cond.end
  %20 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %20
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @image_add_layer_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %image = alloca %struct._GimpImage*, align 8
  %layer = alloca %struct._GimpLayer*, align 8
  %position = alloca i32, align 4
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
  %5 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call3 = call %struct._GimpLayer* @gimp_value_get_layer(%struct._GValue* %arrayidx2, %struct._Gimp* %5)
  store %struct._GimpLayer* %call3, %struct._GimpLayer** %layer, align 8
  %6 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values4 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %6, i32 0, i32 1
  %7 = load %struct._GValue*, %struct._GValue** %values4, align 8
  %arrayidx5 = getelementptr inbounds %struct._GValue, %struct._GValue* %7, i64 2
  %call6 = call i32 @g_value_get_int(%struct._GValue* %arrayidx5)
  store i32 %call6, i32* %position, align 4
  %8 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then, label %if.end.49

if.then:                                          ; preds = %entry
  %9 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %10 = bitcast %struct._GimpLayer* %9 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_item_get_type() #6
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call7)
  %11 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpItem*
  %12 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %13 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call9 = call i32 @gimp_pdb_item_is_floating(%struct._GimpItem* %11, %struct._GimpImage* %12, %struct._GError** %13)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %14 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %15 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %16 = bitcast %struct._GimpLayer* %15 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_drawable_get_type() #6
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call11)
  %17 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpDrawable*
  %call13 = call i32 @gimp_drawable_type(%struct._GimpDrawable* %17)
  %cmp = icmp eq i32 %call13, 0
  br i1 %cmp, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %18 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %19 = bitcast %struct._GimpLayer* %18 to %struct._GTypeInstance*
  %call14 = call i64 @gimp_drawable_get_type() #6
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call14)
  %20 = bitcast %struct._GTypeInstance* %call15 to %struct._GimpDrawable*
  %call16 = call i32 @gimp_drawable_type(%struct._GimpDrawable* %20)
  %cmp17 = icmp eq i32 %call16, 1
  br i1 %cmp17, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false, %land.lhs.true
  br label %cond.end.38

cond.false:                                       ; preds = %lor.lhs.false
  %21 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %22 = bitcast %struct._GimpLayer* %21 to %struct._GTypeInstance*
  %call18 = call i64 @gimp_drawable_get_type() #6
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call18)
  %23 = bitcast %struct._GTypeInstance* %call19 to %struct._GimpDrawable*
  %call20 = call i32 @gimp_drawable_type(%struct._GimpDrawable* %23)
  %cmp21 = icmp eq i32 %call20, 2
  br i1 %cmp21, label %cond.true.27, label %lor.lhs.false.22

lor.lhs.false.22:                                 ; preds = %cond.false
  %24 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %25 = bitcast %struct._GimpLayer* %24 to %struct._GTypeInstance*
  %call23 = call i64 @gimp_drawable_get_type() #6
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call23)
  %26 = bitcast %struct._GTypeInstance* %call24 to %struct._GimpDrawable*
  %call25 = call i32 @gimp_drawable_type(%struct._GimpDrawable* %26)
  %cmp26 = icmp eq i32 %call25, 3
  br i1 %cmp26, label %cond.true.27, label %cond.false.28

cond.true.27:                                     ; preds = %lor.lhs.false.22, %cond.false
  br label %cond.end

cond.false.28:                                    ; preds = %lor.lhs.false.22
  %27 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %28 = bitcast %struct._GimpLayer* %27 to %struct._GTypeInstance*
  %call29 = call i64 @gimp_drawable_get_type() #6
  %call30 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call29)
  %29 = bitcast %struct._GTypeInstance* %call30 to %struct._GimpDrawable*
  %call31 = call i32 @gimp_drawable_type(%struct._GimpDrawable* %29)
  %cmp32 = icmp eq i32 %call31, 4
  br i1 %cmp32, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %cond.false.28
  %30 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %31 = bitcast %struct._GimpLayer* %30 to %struct._GTypeInstance*
  %call33 = call i64 @gimp_drawable_get_type() #6
  %call34 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 %call33)
  %32 = bitcast %struct._GTypeInstance* %call34 to %struct._GimpDrawable*
  %call35 = call i32 @gimp_drawable_type(%struct._GimpDrawable* %32)
  %cmp36 = icmp eq i32 %call35, 5
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %cond.false.28
  %33 = phi i1 [ true, %cond.false.28 ], [ %cmp36, %lor.rhs ]
  %cond = select i1 %33, i32 2, i32 -1
  br label %cond.end

cond.end:                                         ; preds = %lor.end, %cond.true.27
  %cond37 = phi i32 [ 1, %cond.true.27 ], [ %cond, %lor.end ]
  br label %cond.end.38

cond.end.38:                                      ; preds = %cond.end, %cond.true
  %cond39 = phi i32 [ 0, %cond.true ], [ %cond37, %cond.end ]
  %34 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call40 = call i32 @gimp_pdb_image_is_base_type(%struct._GimpImage* %14, i32 %cond39, %struct._GError** %34)
  %tobool41 = icmp ne i32 %call40, 0
  br i1 %tobool41, label %if.then.42, label %if.else

if.then.42:                                       ; preds = %cond.end.38
  %35 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %36 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %37 = load i32, i32* %position, align 4
  %cmp43 = icmp sgt i32 %37, -1
  br i1 %cmp43, label %cond.true.44, label %cond.false.45

cond.true.44:                                     ; preds = %if.then.42
  %38 = load i32, i32* %position, align 4
  br label %cond.end.46

cond.false.45:                                    ; preds = %if.then.42
  br label %cond.end.46

cond.end.46:                                      ; preds = %cond.false.45, %cond.true.44
  %cond47 = phi i32 [ %38, %cond.true.44 ], [ -1, %cond.false.45 ]
  %call48 = call i32 @gimp_image_add_layer(%struct._GimpImage* %35, %struct._GimpLayer* %36, %struct._GimpLayer* null, i32 %cond47, i32 1)
  store i32 %call48, i32* %success, align 4
  br label %if.end

if.else:                                          ; preds = %cond.end.38, %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %cond.end.46
  br label %if.end.49

if.end.49:                                        ; preds = %if.end, %entry
  %39 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %40 = load i32, i32* %success, align 4
  %41 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool50 = icmp ne %struct._GError** %41, null
  br i1 %tobool50, label %cond.true.51, label %cond.false.52

cond.true.51:                                     ; preds = %if.end.49
  %42 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %43 = load %struct._GError*, %struct._GError** %42, align 8
  br label %cond.end.53

cond.false.52:                                    ; preds = %if.end.49
  br label %cond.end.53

cond.end.53:                                      ; preds = %cond.false.52, %cond.true.51
  %cond54 = phi %struct._GError* [ %43, %cond.true.51 ], [ null, %cond.false.52 ]
  %call55 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %39, i32 %40, %struct._GError* %cond54)
  ret %struct._GValueArray* %call55
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @image_insert_layer_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %image = alloca %struct._GimpImage*, align 8
  %layer = alloca %struct._GimpLayer*, align 8
  %parent = alloca %struct._GimpLayer*, align 8
  %position = alloca i32, align 4
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
  %5 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call3 = call %struct._GimpLayer* @gimp_value_get_layer(%struct._GValue* %arrayidx2, %struct._Gimp* %5)
  store %struct._GimpLayer* %call3, %struct._GimpLayer** %layer, align 8
  %6 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values4 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %6, i32 0, i32 1
  %7 = load %struct._GValue*, %struct._GValue** %values4, align 8
  %arrayidx5 = getelementptr inbounds %struct._GValue, %struct._GValue* %7, i64 2
  %8 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call6 = call %struct._GimpLayer* @gimp_value_get_layer(%struct._GValue* %arrayidx5, %struct._Gimp* %8)
  store %struct._GimpLayer* %call6, %struct._GimpLayer** %parent, align 8
  %9 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values7 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %9, i32 0, i32 1
  %10 = load %struct._GValue*, %struct._GValue** %values7, align 8
  %arrayidx8 = getelementptr inbounds %struct._GValue, %struct._GValue* %10, i64 3
  %call9 = call i32 @g_value_get_int(%struct._GValue* %arrayidx8)
  store i32 %call9, i32* %position, align 4
  %11 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %if.then, label %if.end.69

if.then:                                          ; preds = %entry
  %12 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %13 = bitcast %struct._GimpLayer* %12 to %struct._GTypeInstance*
  %call10 = call i64 @gimp_item_get_type() #6
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call10)
  %14 = bitcast %struct._GTypeInstance* %call11 to %struct._GimpItem*
  %15 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %16 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call12 = call i32 @gimp_pdb_item_is_floating(%struct._GimpItem* %14, %struct._GimpImage* %15, %struct._GError** %16)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %17 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %18 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %19 = bitcast %struct._GimpLayer* %18 to %struct._GTypeInstance*
  %call14 = call i64 @gimp_drawable_get_type() #6
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call14)
  %20 = bitcast %struct._GTypeInstance* %call15 to %struct._GimpDrawable*
  %call16 = call i32 @gimp_drawable_type(%struct._GimpDrawable* %20)
  %cmp = icmp eq i32 %call16, 0
  br i1 %cmp, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %21 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %22 = bitcast %struct._GimpLayer* %21 to %struct._GTypeInstance*
  %call17 = call i64 @gimp_drawable_get_type() #6
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call17)
  %23 = bitcast %struct._GTypeInstance* %call18 to %struct._GimpDrawable*
  %call19 = call i32 @gimp_drawable_type(%struct._GimpDrawable* %23)
  %cmp20 = icmp eq i32 %call19, 1
  br i1 %cmp20, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false, %land.lhs.true
  br label %cond.end.41

cond.false:                                       ; preds = %lor.lhs.false
  %24 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %25 = bitcast %struct._GimpLayer* %24 to %struct._GTypeInstance*
  %call21 = call i64 @gimp_drawable_get_type() #6
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call21)
  %26 = bitcast %struct._GTypeInstance* %call22 to %struct._GimpDrawable*
  %call23 = call i32 @gimp_drawable_type(%struct._GimpDrawable* %26)
  %cmp24 = icmp eq i32 %call23, 2
  br i1 %cmp24, label %cond.true.30, label %lor.lhs.false.25

lor.lhs.false.25:                                 ; preds = %cond.false
  %27 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %28 = bitcast %struct._GimpLayer* %27 to %struct._GTypeInstance*
  %call26 = call i64 @gimp_drawable_get_type() #6
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call26)
  %29 = bitcast %struct._GTypeInstance* %call27 to %struct._GimpDrawable*
  %call28 = call i32 @gimp_drawable_type(%struct._GimpDrawable* %29)
  %cmp29 = icmp eq i32 %call28, 3
  br i1 %cmp29, label %cond.true.30, label %cond.false.31

cond.true.30:                                     ; preds = %lor.lhs.false.25, %cond.false
  br label %cond.end

cond.false.31:                                    ; preds = %lor.lhs.false.25
  %30 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %31 = bitcast %struct._GimpLayer* %30 to %struct._GTypeInstance*
  %call32 = call i64 @gimp_drawable_get_type() #6
  %call33 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 %call32)
  %32 = bitcast %struct._GTypeInstance* %call33 to %struct._GimpDrawable*
  %call34 = call i32 @gimp_drawable_type(%struct._GimpDrawable* %32)
  %cmp35 = icmp eq i32 %call34, 4
  br i1 %cmp35, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %cond.false.31
  %33 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %34 = bitcast %struct._GimpLayer* %33 to %struct._GTypeInstance*
  %call36 = call i64 @gimp_drawable_get_type() #6
  %call37 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 %call36)
  %35 = bitcast %struct._GTypeInstance* %call37 to %struct._GimpDrawable*
  %call38 = call i32 @gimp_drawable_type(%struct._GimpDrawable* %35)
  %cmp39 = icmp eq i32 %call38, 5
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %cond.false.31
  %36 = phi i1 [ true, %cond.false.31 ], [ %cmp39, %lor.rhs ]
  %cond = select i1 %36, i32 2, i32 -1
  br label %cond.end

cond.end:                                         ; preds = %lor.end, %cond.true.30
  %cond40 = phi i32 [ 1, %cond.true.30 ], [ %cond, %lor.end ]
  br label %cond.end.41

cond.end.41:                                      ; preds = %cond.end, %cond.true
  %cond42 = phi i32 [ 0, %cond.true ], [ %cond40, %cond.end ]
  %37 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call43 = call i32 @gimp_pdb_image_is_base_type(%struct._GimpImage* %17, i32 %cond42, %struct._GError** %37)
  %tobool44 = icmp ne i32 %call43, 0
  br i1 %tobool44, label %land.lhs.true.45, label %if.else

land.lhs.true.45:                                 ; preds = %cond.end.41
  %38 = load %struct._GimpLayer*, %struct._GimpLayer** %parent, align 8
  %cmp46 = icmp eq %struct._GimpLayer* %38, null
  br i1 %cmp46, label %if.then.57, label %lor.lhs.false.47

lor.lhs.false.47:                                 ; preds = %land.lhs.true.45
  %39 = load %struct._GimpLayer*, %struct._GimpLayer** %parent, align 8
  %40 = bitcast %struct._GimpLayer* %39 to %struct._GTypeInstance*
  %call48 = call i64 @gimp_item_get_type() #6
  %call49 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %40, i64 %call48)
  %41 = bitcast %struct._GTypeInstance* %call49 to %struct._GimpItem*
  %42 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %43 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call50 = call i32 @gimp_pdb_item_is_in_tree(%struct._GimpItem* %41, %struct._GimpImage* %42, i32 0, %struct._GError** %43)
  %tobool51 = icmp ne i32 %call50, 0
  br i1 %tobool51, label %land.lhs.true.52, label %if.else

land.lhs.true.52:                                 ; preds = %lor.lhs.false.47
  %44 = load %struct._GimpLayer*, %struct._GimpLayer** %parent, align 8
  %45 = bitcast %struct._GimpLayer* %44 to %struct._GTypeInstance*
  %call53 = call i64 @gimp_item_get_type() #6
  %call54 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %45, i64 %call53)
  %46 = bitcast %struct._GTypeInstance* %call54 to %struct._GimpItem*
  %47 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call55 = call i32 @gimp_pdb_item_is_group(%struct._GimpItem* %46, %struct._GError** %47)
  %tobool56 = icmp ne i32 %call55, 0
  br i1 %tobool56, label %if.then.57, label %if.else

if.then.57:                                       ; preds = %land.lhs.true.52, %land.lhs.true.45
  %48 = load i32, i32* %position, align 4
  %cmp58 = icmp eq i32 %48, -1
  br i1 %cmp58, label %land.lhs.true.59, label %if.end

land.lhs.true.59:                                 ; preds = %if.then.57
  %49 = load %struct._GimpLayer*, %struct._GimpLayer** %parent, align 8
  %cmp60 = icmp eq %struct._GimpLayer* %49, null
  br i1 %cmp60, label %if.then.61, label %if.end

if.then.61:                                       ; preds = %land.lhs.true.59
  store %struct._GimpLayer* inttoptr (i64 1 to %struct._GimpLayer*), %struct._GimpLayer** %parent, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.61, %land.lhs.true.59, %if.then.57
  %50 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %51 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %52 = load %struct._GimpLayer*, %struct._GimpLayer** %parent, align 8
  %53 = load i32, i32* %position, align 4
  %cmp62 = icmp sgt i32 %53, -1
  br i1 %cmp62, label %cond.true.63, label %cond.false.64

cond.true.63:                                     ; preds = %if.end
  %54 = load i32, i32* %position, align 4
  br label %cond.end.65

cond.false.64:                                    ; preds = %if.end
  br label %cond.end.65

cond.end.65:                                      ; preds = %cond.false.64, %cond.true.63
  %cond66 = phi i32 [ %54, %cond.true.63 ], [ -1, %cond.false.64 ]
  %call67 = call i32 @gimp_image_add_layer(%struct._GimpImage* %50, %struct._GimpLayer* %51, %struct._GimpLayer* %52, i32 %cond66, i32 1)
  store i32 %call67, i32* %success, align 4
  br label %if.end.68

if.else:                                          ; preds = %land.lhs.true.52, %lor.lhs.false.47, %cond.end.41, %if.then
  store i32 0, i32* %success, align 4
  br label %if.end.68

if.end.68:                                        ; preds = %if.else, %cond.end.65
  br label %if.end.69

if.end.69:                                        ; preds = %if.end.68, %entry
  %55 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %56 = load i32, i32* %success, align 4
  %57 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool70 = icmp ne %struct._GError** %57, null
  br i1 %tobool70, label %cond.true.71, label %cond.false.72

cond.true.71:                                     ; preds = %if.end.69
  %58 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %59 = load %struct._GError*, %struct._GError** %58, align 8
  br label %cond.end.73

cond.false.72:                                    ; preds = %if.end.69
  br label %cond.end.73

cond.end.73:                                      ; preds = %cond.false.72, %cond.true.71
  %cond74 = phi %struct._GError* [ %59, %cond.true.71 ], [ null, %cond.false.72 ]
  %call75 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %55, i32 %56, %struct._GError* %cond74)
  ret %struct._GValueArray* %call75
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @image_remove_layer_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %image = alloca %struct._GimpImage*, align 8
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
  br i1 %tobool, label %if.then, label %if.end.9

if.then:                                          ; preds = %entry
  %7 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %8 = bitcast %struct._GimpLayer* %7 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_item_get_type() #6
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call4)
  %9 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpItem*
  %10 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %11 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call6 = call i32 @gimp_pdb_item_is_attached(%struct._GimpItem* %9, %struct._GimpImage* %10, i32 0, %struct._GError** %11)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.then
  %12 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %13 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  call void @gimp_image_remove_layer(%struct._GimpImage* %12, %struct._GimpLayer* %13, i32 1, %struct._GimpLayer* null)
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.8
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %entry
  %14 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %15 = load i32, i32* %success, align 4
  %16 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool10 = icmp ne %struct._GError** %16, null
  br i1 %tobool10, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.9
  %17 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %18 = load %struct._GError*, %struct._GError** %17, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.9
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %18, %cond.true ], [ null, %cond.false ]
  %call11 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %14, i32 %15, %struct._GError* %cond)
  ret %struct._GValueArray* %call11
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @image_add_channel_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %image = alloca %struct._GimpImage*, align 8
  %channel = alloca %struct._GimpChannel*, align 8
  %position = alloca i32, align 4
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
  %5 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call3 = call %struct._GimpChannel* @gimp_value_get_channel(%struct._GValue* %arrayidx2, %struct._Gimp* %5)
  store %struct._GimpChannel* %call3, %struct._GimpChannel** %channel, align 8
  %6 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values4 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %6, i32 0, i32 1
  %7 = load %struct._GValue*, %struct._GValue** %values4, align 8
  %arrayidx5 = getelementptr inbounds %struct._GValue, %struct._GValue* %7, i64 2
  %call6 = call i32 @g_value_get_int(%struct._GValue* %arrayidx5)
  store i32 %call6, i32* %position, align 4
  %8 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then, label %if.end.13

if.then:                                          ; preds = %entry
  %9 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %10 = bitcast %struct._GimpChannel* %9 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_item_get_type() #6
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call7)
  %11 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpItem*
  %12 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %13 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call9 = call i32 @gimp_pdb_item_is_floating(%struct._GimpItem* %11, %struct._GimpImage* %12, %struct._GError** %13)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %if.then
  %14 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %15 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %16 = load i32, i32* %position, align 4
  %cmp = icmp sgt i32 %16, -1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.11
  %17 = load i32, i32* %position, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then.11
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %17, %cond.true ], [ -1, %cond.false ]
  %call12 = call i32 @gimp_image_add_channel(%struct._GimpImage* %14, %struct._GimpChannel* %15, %struct._GimpChannel* null, i32 %cond, i32 1)
  store i32 %call12, i32* %success, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %cond.end
  br label %if.end.13

if.end.13:                                        ; preds = %if.end, %entry
  %18 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %19 = load i32, i32* %success, align 4
  %20 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool14 = icmp ne %struct._GError** %20, null
  br i1 %tobool14, label %cond.true.15, label %cond.false.16

cond.true.15:                                     ; preds = %if.end.13
  %21 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %22 = load %struct._GError*, %struct._GError** %21, align 8
  br label %cond.end.17

cond.false.16:                                    ; preds = %if.end.13
  br label %cond.end.17

cond.end.17:                                      ; preds = %cond.false.16, %cond.true.15
  %cond18 = phi %struct._GError* [ %22, %cond.true.15 ], [ null, %cond.false.16 ]
  %call19 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %18, i32 %19, %struct._GError* %cond18)
  ret %struct._GValueArray* %call19
}

declare %struct._GParamSpec* @gimp_param_spec_channel_id(i8*, i8*, i8*, %struct._Gimp*, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @image_insert_channel_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %image = alloca %struct._GimpImage*, align 8
  %channel = alloca %struct._GimpChannel*, align 8
  %parent = alloca %struct._GimpChannel*, align 8
  %position = alloca i32, align 4
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
  %5 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call3 = call %struct._GimpChannel* @gimp_value_get_channel(%struct._GValue* %arrayidx2, %struct._Gimp* %5)
  store %struct._GimpChannel* %call3, %struct._GimpChannel** %channel, align 8
  %6 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values4 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %6, i32 0, i32 1
  %7 = load %struct._GValue*, %struct._GValue** %values4, align 8
  %arrayidx5 = getelementptr inbounds %struct._GValue, %struct._GValue* %7, i64 2
  %8 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call6 = call %struct._GimpChannel* @gimp_value_get_channel(%struct._GValue* %arrayidx5, %struct._Gimp* %8)
  store %struct._GimpChannel* %call6, %struct._GimpChannel** %parent, align 8
  %9 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values7 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %9, i32 0, i32 1
  %10 = load %struct._GValue*, %struct._GValue** %values7, align 8
  %arrayidx8 = getelementptr inbounds %struct._GValue, %struct._GValue* %10, i64 3
  %call9 = call i32 @g_value_get_int(%struct._GValue* %arrayidx8)
  store i32 %call9, i32* %position, align 4
  %11 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %if.then, label %if.end.31

if.then:                                          ; preds = %entry
  %12 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %13 = bitcast %struct._GimpChannel* %12 to %struct._GTypeInstance*
  %call10 = call i64 @gimp_item_get_type() #6
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call10)
  %14 = bitcast %struct._GTypeInstance* %call11 to %struct._GimpItem*
  %15 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %16 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call12 = call i32 @gimp_pdb_item_is_floating(%struct._GimpItem* %14, %struct._GimpImage* %15, %struct._GError** %16)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %17 = load %struct._GimpChannel*, %struct._GimpChannel** %parent, align 8
  %cmp = icmp eq %struct._GimpChannel* %17, null
  br i1 %cmp, label %if.then.23, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %18 = load %struct._GimpChannel*, %struct._GimpChannel** %parent, align 8
  %19 = bitcast %struct._GimpChannel* %18 to %struct._GTypeInstance*
  %call14 = call i64 @gimp_item_get_type() #6
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call14)
  %20 = bitcast %struct._GTypeInstance* %call15 to %struct._GimpItem*
  %21 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %22 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call16 = call i32 @gimp_pdb_item_is_in_tree(%struct._GimpItem* %20, %struct._GimpImage* %21, i32 0, %struct._GError** %22)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %land.lhs.true.18, label %if.else

land.lhs.true.18:                                 ; preds = %lor.lhs.false
  %23 = load %struct._GimpChannel*, %struct._GimpChannel** %parent, align 8
  %24 = bitcast %struct._GimpChannel* %23 to %struct._GTypeInstance*
  %call19 = call i64 @gimp_item_get_type() #6
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call19)
  %25 = bitcast %struct._GTypeInstance* %call20 to %struct._GimpItem*
  %26 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call21 = call i32 @gimp_pdb_item_is_group(%struct._GimpItem* %25, %struct._GError** %26)
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.then.23, label %if.else

if.then.23:                                       ; preds = %land.lhs.true.18, %land.lhs.true
  %27 = load i32, i32* %position, align 4
  %cmp24 = icmp eq i32 %27, -1
  br i1 %cmp24, label %land.lhs.true.25, label %if.end

land.lhs.true.25:                                 ; preds = %if.then.23
  %28 = load %struct._GimpChannel*, %struct._GimpChannel** %parent, align 8
  %cmp26 = icmp eq %struct._GimpChannel* %28, null
  br i1 %cmp26, label %if.then.27, label %if.end

if.then.27:                                       ; preds = %land.lhs.true.25
  store %struct._GimpChannel* inttoptr (i64 1 to %struct._GimpChannel*), %struct._GimpChannel** %parent, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.27, %land.lhs.true.25, %if.then.23
  %29 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %30 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %31 = load %struct._GimpChannel*, %struct._GimpChannel** %parent, align 8
  %32 = load i32, i32* %position, align 4
  %cmp28 = icmp sgt i32 %32, -1
  br i1 %cmp28, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %33 = load i32, i32* %position, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %33, %cond.true ], [ -1, %cond.false ]
  %call29 = call i32 @gimp_image_add_channel(%struct._GimpImage* %29, %struct._GimpChannel* %30, %struct._GimpChannel* %31, i32 %cond, i32 1)
  store i32 %call29, i32* %success, align 4
  br label %if.end.30

if.else:                                          ; preds = %land.lhs.true.18, %lor.lhs.false, %if.then
  store i32 0, i32* %success, align 4
  br label %if.end.30

if.end.30:                                        ; preds = %if.else, %cond.end
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30, %entry
  %34 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %35 = load i32, i32* %success, align 4
  %36 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool32 = icmp ne %struct._GError** %36, null
  br i1 %tobool32, label %cond.true.33, label %cond.false.34

cond.true.33:                                     ; preds = %if.end.31
  %37 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %38 = load %struct._GError*, %struct._GError** %37, align 8
  br label %cond.end.35

cond.false.34:                                    ; preds = %if.end.31
  br label %cond.end.35

cond.end.35:                                      ; preds = %cond.false.34, %cond.true.33
  %cond36 = phi %struct._GError* [ %38, %cond.true.33 ], [ null, %cond.false.34 ]
  %call37 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %34, i32 %35, %struct._GError* %cond36)
  ret %struct._GValueArray* %call37
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @image_remove_channel_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %image = alloca %struct._GimpImage*, align 8
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
  %call = call %struct._GimpImage* @gimp_value_get_image(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpImage* %call, %struct._GimpImage** %image, align 8
  %3 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %3, i32 0, i32 1
  %4 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %4, i64 1
  %5 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call3 = call %struct._GimpChannel* @gimp_value_get_channel(%struct._GValue* %arrayidx2, %struct._Gimp* %5)
  store %struct._GimpChannel* %call3, %struct._GimpChannel** %channel, align 8
  %6 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then, label %if.end.9

if.then:                                          ; preds = %entry
  %7 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %8 = bitcast %struct._GimpChannel* %7 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_item_get_type() #6
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call4)
  %9 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpItem*
  %10 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %11 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call6 = call i32 @gimp_pdb_item_is_attached(%struct._GimpItem* %9, %struct._GimpImage* %10, i32 0, %struct._GError** %11)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.then
  %12 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %13 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  call void @gimp_image_remove_channel(%struct._GimpImage* %12, %struct._GimpChannel* %13, i32 1, %struct._GimpChannel* null)
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.8
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %entry
  %14 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %15 = load i32, i32* %success, align 4
  %16 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool10 = icmp ne %struct._GError** %16, null
  br i1 %tobool10, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.9
  %17 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %18 = load %struct._GError*, %struct._GError** %17, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.9
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %18, %cond.true ], [ null, %cond.false ]
  %call11 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %14, i32 %15, %struct._GError* %cond)
  ret %struct._GValueArray* %call11
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @image_add_vectors_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  %position = alloca i32, align 4
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
  %5 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call3 = call %struct._GimpVectors* @gimp_value_get_vectors(%struct._GValue* %arrayidx2, %struct._Gimp* %5)
  store %struct._GimpVectors* %call3, %struct._GimpVectors** %vectors, align 8
  %6 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values4 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %6, i32 0, i32 1
  %7 = load %struct._GValue*, %struct._GValue** %values4, align 8
  %arrayidx5 = getelementptr inbounds %struct._GValue, %struct._GValue* %7, i64 2
  %call6 = call i32 @g_value_get_int(%struct._GValue* %arrayidx5)
  store i32 %call6, i32* %position, align 4
  %8 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then, label %if.end.13

if.then:                                          ; preds = %entry
  %9 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %10 = bitcast %struct._GimpVectors* %9 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_item_get_type() #6
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call7)
  %11 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpItem*
  %12 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %13 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call9 = call i32 @gimp_pdb_item_is_floating(%struct._GimpItem* %11, %struct._GimpImage* %12, %struct._GError** %13)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %if.then
  %14 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %15 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %16 = load i32, i32* %position, align 4
  %cmp = icmp sgt i32 %16, -1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.11
  %17 = load i32, i32* %position, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then.11
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %17, %cond.true ], [ -1, %cond.false ]
  %call12 = call i32 @gimp_image_add_vectors(%struct._GimpImage* %14, %struct._GimpVectors* %15, %struct._GimpVectors* null, i32 %cond, i32 1)
  store i32 %call12, i32* %success, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %cond.end
  br label %if.end.13

if.end.13:                                        ; preds = %if.end, %entry
  %18 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %19 = load i32, i32* %success, align 4
  %20 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool14 = icmp ne %struct._GError** %20, null
  br i1 %tobool14, label %cond.true.15, label %cond.false.16

cond.true.15:                                     ; preds = %if.end.13
  %21 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %22 = load %struct._GError*, %struct._GError** %21, align 8
  br label %cond.end.17

cond.false.16:                                    ; preds = %if.end.13
  br label %cond.end.17

cond.end.17:                                      ; preds = %cond.false.16, %cond.true.15
  %cond18 = phi %struct._GError* [ %22, %cond.true.15 ], [ null, %cond.false.16 ]
  %call19 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %18, i32 %19, %struct._GError* %cond18)
  ret %struct._GValueArray* %call19
}

declare %struct._GParamSpec* @gimp_param_spec_vectors_id(i8*, i8*, i8*, %struct._Gimp*, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @image_insert_vectors_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  %parent = alloca %struct._GimpVectors*, align 8
  %position = alloca i32, align 4
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
  %5 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call3 = call %struct._GimpVectors* @gimp_value_get_vectors(%struct._GValue* %arrayidx2, %struct._Gimp* %5)
  store %struct._GimpVectors* %call3, %struct._GimpVectors** %vectors, align 8
  %6 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values4 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %6, i32 0, i32 1
  %7 = load %struct._GValue*, %struct._GValue** %values4, align 8
  %arrayidx5 = getelementptr inbounds %struct._GValue, %struct._GValue* %7, i64 2
  %8 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call6 = call %struct._GimpVectors* @gimp_value_get_vectors(%struct._GValue* %arrayidx5, %struct._Gimp* %8)
  store %struct._GimpVectors* %call6, %struct._GimpVectors** %parent, align 8
  %9 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values7 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %9, i32 0, i32 1
  %10 = load %struct._GValue*, %struct._GValue** %values7, align 8
  %arrayidx8 = getelementptr inbounds %struct._GValue, %struct._GValue* %10, i64 3
  %call9 = call i32 @g_value_get_int(%struct._GValue* %arrayidx8)
  store i32 %call9, i32* %position, align 4
  %11 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %if.then, label %if.end.31

if.then:                                          ; preds = %entry
  %12 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %13 = bitcast %struct._GimpVectors* %12 to %struct._GTypeInstance*
  %call10 = call i64 @gimp_item_get_type() #6
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call10)
  %14 = bitcast %struct._GTypeInstance* %call11 to %struct._GimpItem*
  %15 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %16 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call12 = call i32 @gimp_pdb_item_is_floating(%struct._GimpItem* %14, %struct._GimpImage* %15, %struct._GError** %16)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %17 = load %struct._GimpVectors*, %struct._GimpVectors** %parent, align 8
  %cmp = icmp eq %struct._GimpVectors* %17, null
  br i1 %cmp, label %if.then.23, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %18 = load %struct._GimpVectors*, %struct._GimpVectors** %parent, align 8
  %19 = bitcast %struct._GimpVectors* %18 to %struct._GTypeInstance*
  %call14 = call i64 @gimp_item_get_type() #6
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call14)
  %20 = bitcast %struct._GTypeInstance* %call15 to %struct._GimpItem*
  %21 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %22 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call16 = call i32 @gimp_pdb_item_is_in_tree(%struct._GimpItem* %20, %struct._GimpImage* %21, i32 0, %struct._GError** %22)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %land.lhs.true.18, label %if.else

land.lhs.true.18:                                 ; preds = %lor.lhs.false
  %23 = load %struct._GimpVectors*, %struct._GimpVectors** %parent, align 8
  %24 = bitcast %struct._GimpVectors* %23 to %struct._GTypeInstance*
  %call19 = call i64 @gimp_item_get_type() #6
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call19)
  %25 = bitcast %struct._GTypeInstance* %call20 to %struct._GimpItem*
  %26 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call21 = call i32 @gimp_pdb_item_is_group(%struct._GimpItem* %25, %struct._GError** %26)
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.then.23, label %if.else

if.then.23:                                       ; preds = %land.lhs.true.18, %land.lhs.true
  %27 = load i32, i32* %position, align 4
  %cmp24 = icmp eq i32 %27, -1
  br i1 %cmp24, label %land.lhs.true.25, label %if.end

land.lhs.true.25:                                 ; preds = %if.then.23
  %28 = load %struct._GimpVectors*, %struct._GimpVectors** %parent, align 8
  %cmp26 = icmp eq %struct._GimpVectors* %28, null
  br i1 %cmp26, label %if.then.27, label %if.end

if.then.27:                                       ; preds = %land.lhs.true.25
  store %struct._GimpVectors* inttoptr (i64 1 to %struct._GimpVectors*), %struct._GimpVectors** %parent, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.27, %land.lhs.true.25, %if.then.23
  %29 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %30 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %31 = load %struct._GimpVectors*, %struct._GimpVectors** %parent, align 8
  %32 = load i32, i32* %position, align 4
  %cmp28 = icmp sgt i32 %32, -1
  br i1 %cmp28, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %33 = load i32, i32* %position, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %33, %cond.true ], [ -1, %cond.false ]
  %call29 = call i32 @gimp_image_add_vectors(%struct._GimpImage* %29, %struct._GimpVectors* %30, %struct._GimpVectors* %31, i32 %cond, i32 1)
  store i32 %call29, i32* %success, align 4
  br label %if.end.30

if.else:                                          ; preds = %land.lhs.true.18, %lor.lhs.false, %if.then
  store i32 0, i32* %success, align 4
  br label %if.end.30

if.end.30:                                        ; preds = %if.else, %cond.end
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30, %entry
  %34 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %35 = load i32, i32* %success, align 4
  %36 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool32 = icmp ne %struct._GError** %36, null
  br i1 %tobool32, label %cond.true.33, label %cond.false.34

cond.true.33:                                     ; preds = %if.end.31
  %37 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %38 = load %struct._GError*, %struct._GError** %37, align 8
  br label %cond.end.35

cond.false.34:                                    ; preds = %if.end.31
  br label %cond.end.35

cond.end.35:                                      ; preds = %cond.false.34, %cond.true.33
  %cond36 = phi %struct._GError* [ %38, %cond.true.33 ], [ null, %cond.false.34 ]
  %call37 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %34, i32 %35, %struct._GError* %cond36)
  ret %struct._GValueArray* %call37
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @image_remove_vectors_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  %5 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call3 = call %struct._GimpVectors* @gimp_value_get_vectors(%struct._GValue* %arrayidx2, %struct._Gimp* %5)
  store %struct._GimpVectors* %call3, %struct._GimpVectors** %vectors, align 8
  %6 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then, label %if.end.9

if.then:                                          ; preds = %entry
  %7 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %8 = bitcast %struct._GimpVectors* %7 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_item_get_type() #6
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call4)
  %9 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpItem*
  %10 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %11 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call6 = call i32 @gimp_pdb_item_is_attached(%struct._GimpItem* %9, %struct._GimpImage* %10, i32 0, %struct._GError** %11)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.then
  %12 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %13 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  call void @gimp_image_remove_vectors(%struct._GimpImage* %12, %struct._GimpVectors* %13, i32 1, %struct._GimpVectors* null)
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.8
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %entry
  %14 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %15 = load i32, i32* %success, align 4
  %16 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool10 = icmp ne %struct._GError** %16, null
  br i1 %tobool10, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.9
  %17 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %18 = load %struct._GError*, %struct._GError** %17, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.9
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %18, %cond.true ], [ null, %cond.false ]
  %call11 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %14, i32 %15, %struct._GError* %cond)
  ret %struct._GValueArray* %call11
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @image_get_item_position_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  %item = alloca %struct._GimpItem*, align 8
  %position = alloca i32, align 4
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store i32 0, i32* %position, align 4
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
  %call3 = call %struct._GimpItem* @gimp_value_get_item(%struct._GValue* %arrayidx2, %struct._Gimp* %5)
  store %struct._GimpItem* %call3, %struct._GimpItem** %item, align 8
  %6 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then, label %if.end.8

if.then:                                          ; preds = %entry
  %7 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %8 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %9 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call4 = call i32 @gimp_pdb_item_is_in_tree(%struct._GimpItem* %7, %struct._GimpImage* %8, i32 0, %struct._GError** %9)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.then
  %10 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call7 = call i32 @gimp_item_get_index(%struct._GimpItem* %10)
  store i32 %call7, i32* %position, align 4
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
  store %struct._GValueArray* %call10, %struct._GValueArray** %return_vals, align 8
  %16 = load i32, i32* %success, align 4
  %tobool11 = icmp ne i32 %16, 0
  br i1 %tobool11, label %if.then.12, label %if.end.15

if.then.12:                                       ; preds = %cond.end
  %17 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values13 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %17, i32 0, i32 1
  %18 = load %struct._GValue*, %struct._GValue** %values13, align 8
  %arrayidx14 = getelementptr inbounds %struct._GValue, %struct._GValue* %18, i64 1
  %19 = load i32, i32* %position, align 4
  call void @g_value_set_int(%struct._GValue* %arrayidx14, i32 %19)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.12, %cond.end
  %20 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %20
}

declare %struct._GParamSpec* @gimp_param_spec_item_id(i8*, i8*, i8*, %struct._Gimp*, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @image_raise_item_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %image = alloca %struct._GimpImage*, align 8
  %item = alloca %struct._GimpItem*, align 8
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
  %5 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call3 = call %struct._GimpItem* @gimp_value_get_item(%struct._GValue* %arrayidx2, %struct._Gimp* %5)
  store %struct._GimpItem* %call3, %struct._GimpItem** %item, align 8
  %6 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then, label %if.end.8

if.then:                                          ; preds = %entry
  %7 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %8 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %9 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call4 = call i32 @gimp_pdb_item_is_in_tree(%struct._GimpItem* %7, %struct._GimpImage* %8, i32 0, %struct._GError** %9)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.then
  %10 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %11 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %12 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call7 = call i32 @gimp_image_raise_item(%struct._GimpImage* %10, %struct._GimpItem* %11, %struct._GError** %12)
  store i32 %call7, i32* %success, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.6
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %entry
  %13 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %14 = load i32, i32* %success, align 4
  %15 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool9 = icmp ne %struct._GError** %15, null
  br i1 %tobool9, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.8
  %16 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %17 = load %struct._GError*, %struct._GError** %16, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %17, %cond.true ], [ null, %cond.false ]
  %call10 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %13, i32 %14, %struct._GError* %cond)
  ret %struct._GValueArray* %call10
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @image_lower_item_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %image = alloca %struct._GimpImage*, align 8
  %item = alloca %struct._GimpItem*, align 8
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
  %5 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call3 = call %struct._GimpItem* @gimp_value_get_item(%struct._GValue* %arrayidx2, %struct._Gimp* %5)
  store %struct._GimpItem* %call3, %struct._GimpItem** %item, align 8
  %6 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then, label %if.end.8

if.then:                                          ; preds = %entry
  %7 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %8 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %9 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call4 = call i32 @gimp_pdb_item_is_in_tree(%struct._GimpItem* %7, %struct._GimpImage* %8, i32 0, %struct._GError** %9)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.then
  %10 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %11 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %12 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call7 = call i32 @gimp_image_lower_item(%struct._GimpImage* %10, %struct._GimpItem* %11, %struct._GError** %12)
  store i32 %call7, i32* %success, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.6
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %entry
  %13 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %14 = load i32, i32* %success, align 4
  %15 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool9 = icmp ne %struct._GError** %15, null
  br i1 %tobool9, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.8
  %16 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %17 = load %struct._GError*, %struct._GError** %16, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %17, %cond.true ], [ null, %cond.false ]
  %call10 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %13, i32 %14, %struct._GError* %cond)
  ret %struct._GValueArray* %call10
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @image_raise_item_to_top_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %image = alloca %struct._GimpImage*, align 8
  %item = alloca %struct._GimpItem*, align 8
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
  %5 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call3 = call %struct._GimpItem* @gimp_value_get_item(%struct._GValue* %arrayidx2, %struct._Gimp* %5)
  store %struct._GimpItem* %call3, %struct._GimpItem** %item, align 8
  %6 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then, label %if.end.8

if.then:                                          ; preds = %entry
  %7 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %8 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %9 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call4 = call i32 @gimp_pdb_item_is_in_tree(%struct._GimpItem* %7, %struct._GimpImage* %8, i32 0, %struct._GError** %9)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.then
  %10 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %11 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call7 = call i32 @gimp_image_raise_item_to_top(%struct._GimpImage* %10, %struct._GimpItem* %11)
  store i32 %call7, i32* %success, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.6
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %entry
  %12 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %13 = load i32, i32* %success, align 4
  %14 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool9 = icmp ne %struct._GError** %14, null
  br i1 %tobool9, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.8
  %15 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %16 = load %struct._GError*, %struct._GError** %15, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %16, %cond.true ], [ null, %cond.false ]
  %call10 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %12, i32 %13, %struct._GError* %cond)
  ret %struct._GValueArray* %call10
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @image_lower_item_to_bottom_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %image = alloca %struct._GimpImage*, align 8
  %item = alloca %struct._GimpItem*, align 8
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
  %5 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call3 = call %struct._GimpItem* @gimp_value_get_item(%struct._GValue* %arrayidx2, %struct._Gimp* %5)
  store %struct._GimpItem* %call3, %struct._GimpItem** %item, align 8
  %6 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then, label %if.end.8

if.then:                                          ; preds = %entry
  %7 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %8 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %9 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call4 = call i32 @gimp_pdb_item_is_in_tree(%struct._GimpItem* %7, %struct._GimpImage* %8, i32 0, %struct._GError** %9)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.then
  %10 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %11 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call7 = call i32 @gimp_image_lower_item_to_bottom(%struct._GimpImage* %10, %struct._GimpItem* %11)
  store i32 %call7, i32* %success, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.6
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %entry
  %12 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %13 = load i32, i32* %success, align 4
  %14 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool9 = icmp ne %struct._GError** %14, null
  br i1 %tobool9, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.8
  %15 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %16 = load %struct._GError*, %struct._GError** %15, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %16, %cond.true ], [ null, %cond.false ]
  %call10 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %12, i32 %13, %struct._GError* %cond)
  ret %struct._GValueArray* %call10
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @image_reorder_item_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %image = alloca %struct._GimpImage*, align 8
  %item = alloca %struct._GimpItem*, align 8
  %parent = alloca %struct._GimpItem*, align 8
  %position = alloca i32, align 4
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
  %5 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call3 = call %struct._GimpItem* @gimp_value_get_item(%struct._GValue* %arrayidx2, %struct._Gimp* %5)
  store %struct._GimpItem* %call3, %struct._GimpItem** %item, align 8
  %6 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values4 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %6, i32 0, i32 1
  %7 = load %struct._GValue*, %struct._GValue** %values4, align 8
  %arrayidx5 = getelementptr inbounds %struct._GValue, %struct._GValue* %7, i64 2
  %8 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call6 = call %struct._GimpItem* @gimp_value_get_item(%struct._GValue* %arrayidx5, %struct._Gimp* %8)
  store %struct._GimpItem* %call6, %struct._GimpItem** %parent, align 8
  %9 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values7 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %9, i32 0, i32 1
  %10 = load %struct._GValue*, %struct._GValue** %values7, align 8
  %arrayidx8 = getelementptr inbounds %struct._GValue, %struct._GValue* %10, i64 3
  %call9 = call i32 @g_value_get_int(%struct._GValue* %arrayidx8)
  store i32 %call9, i32* %position, align 4
  %11 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %if.then, label %if.end.22

if.then:                                          ; preds = %entry
  %12 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %13 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %14 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call10 = call i32 @gimp_pdb_item_is_in_tree(%struct._GimpItem* %12, %struct._GimpImage* %13, i32 0, %struct._GError** %14)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %15 = load %struct._GimpItem*, %struct._GimpItem** %parent, align 8
  %cmp = icmp eq %struct._GimpItem* %15, null
  br i1 %cmp, label %if.then.20, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %16 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %17 = load %struct._GimpItem*, %struct._GimpItem** %parent, align 8
  %18 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %19 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call12 = call i32 @gimp_pdb_item_is_in_same_tree(%struct._GimpItem* %16, %struct._GimpItem* %17, %struct._GimpImage* %18, %struct._GError** %19)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %land.lhs.true.14, label %if.else

land.lhs.true.14:                                 ; preds = %lor.lhs.false
  %20 = load %struct._GimpItem*, %struct._GimpItem** %parent, align 8
  %21 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call15 = call i32 @gimp_pdb_item_is_group(%struct._GimpItem* %20, %struct._GError** %21)
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %land.lhs.true.17, label %if.else

land.lhs.true.17:                                 ; preds = %land.lhs.true.14
  %22 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %23 = load %struct._GimpItem*, %struct._GimpItem** %parent, align 8
  %24 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call18 = call i32 @gimp_pdb_item_is_not_ancestor(%struct._GimpItem* %22, %struct._GimpItem* %23, %struct._GError** %24)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.then.20, label %if.else

if.then.20:                                       ; preds = %land.lhs.true.17, %land.lhs.true
  %25 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %26 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %27 = load %struct._GimpItem*, %struct._GimpItem** %parent, align 8
  %28 = load i32, i32* %position, align 4
  %call21 = call i32 @gimp_image_reorder_item(%struct._GimpImage* %25, %struct._GimpItem* %26, %struct._GimpItem* %27, i32 %28, i32 1, i8* null)
  store i32 %call21, i32* %success, align 4
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.17, %land.lhs.true.14, %lor.lhs.false, %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.20
  br label %if.end.22

if.end.22:                                        ; preds = %if.end, %entry
  %29 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %30 = load i32, i32* %success, align 4
  %31 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool23 = icmp ne %struct._GError** %31, null
  br i1 %tobool23, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.22
  %32 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %33 = load %struct._GError*, %struct._GError** %32, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.22
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %33, %cond.true ], [ null, %cond.false ]
  %call24 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %29, i32 %30, %struct._GError* %cond)
  ret %struct._GValueArray* %call24
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @image_flatten_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  %call = call %struct._GimpImage* @gimp_value_get_image(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpImage* %call, %struct._GimpImage** %image, align 8
  %3 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end.4

if.then:                                          ; preds = %entry
  %4 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %5 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %6 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call1 = call %struct._GimpLayer* @gimp_image_flatten(%struct._GimpImage* %4, %struct._GimpContext* %5, %struct._GError** %6)
  store %struct._GimpLayer* %call1, %struct._GimpLayer** %layer, align 8
  %7 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %tobool2 = icmp ne %struct._GimpLayer* %7, null
  br i1 %tobool2, label %if.end, label %if.then.3

if.then.3:                                        ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %entry
  %8 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %9 = load i32, i32* %success, align 4
  %10 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool5 = icmp ne %struct._GError** %10, null
  br i1 %tobool5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.4
  %11 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %12 = load %struct._GError*, %struct._GError** %11, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.4
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
  %16 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  call void @gimp_value_set_layer(%struct._GValue* %arrayidx10, %struct._GimpLayer* %16)
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.8, %cond.end
  %17 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %17
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @image_merge_visible_layers_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  %merge_type = alloca i32, align 4
  %layer = alloca %struct._GimpLayer*, align 8
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
  %call = call %struct._GimpImage* @gimp_value_get_image(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpImage* %call, %struct._GimpImage** %image, align 8
  %3 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %3, i32 0, i32 1
  %4 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %4, i64 1
  %call3 = call i32 @g_value_get_enum(%struct._GValue* %arrayidx2)
  store i32 %call3, i32* %merge_type, align 4
  %5 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end.7

if.then:                                          ; preds = %entry
  %6 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %7 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %8 = load i32, i32* %merge_type, align 4
  %call4 = call %struct._GimpLayer* @gimp_image_merge_visible_layers(%struct._GimpImage* %6, %struct._GimpContext* %7, i32 %8, i32 0, i32 0)
  store %struct._GimpLayer* %call4, %struct._GimpLayer** %layer, align 8
  %9 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %tobool5 = icmp ne %struct._GimpLayer* %9, null
  br i1 %tobool5, label %if.end, label %if.then.6

if.then.6:                                        ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.6, %if.then
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %entry
  %10 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %11 = load i32, i32* %success, align 4
  %12 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool8 = icmp ne %struct._GError** %12, null
  br i1 %tobool8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.7
  %13 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %14 = load %struct._GError*, %struct._GError** %13, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %14, %cond.true ], [ null, %cond.false ]
  %call9 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %10, i32 %11, %struct._GError* %cond)
  store %struct._GValueArray* %call9, %struct._GValueArray** %return_vals, align 8
  %15 = load i32, i32* %success, align 4
  %tobool10 = icmp ne i32 %15, 0
  br i1 %tobool10, label %if.then.11, label %if.end.14

if.then.11:                                       ; preds = %cond.end
  %16 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values12 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %16, i32 0, i32 1
  %17 = load %struct._GValue*, %struct._GValue** %values12, align 8
  %arrayidx13 = getelementptr inbounds %struct._GValue, %struct._GValue* %17, i64 1
  %18 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  call void @gimp_value_set_layer(%struct._GValue* %arrayidx13, %struct._GimpLayer* %18)
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.11, %cond.end
  %19 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %19
}

; Function Attrs: nounwind readnone
declare i64 @gimp_merge_type_get_type() #2

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @image_merge_down_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  %merge_layer = alloca %struct._GimpLayer*, align 8
  %merge_type = alloca i32, align 4
  %layer = alloca %struct._GimpLayer*, align 8
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
  %call = call %struct._GimpImage* @gimp_value_get_image(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpImage* %call, %struct._GimpImage** %image, align 8
  %3 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %3, i32 0, i32 1
  %4 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %4, i64 1
  %5 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call3 = call %struct._GimpLayer* @gimp_value_get_layer(%struct._GValue* %arrayidx2, %struct._Gimp* %5)
  store %struct._GimpLayer* %call3, %struct._GimpLayer** %merge_layer, align 8
  %6 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values4 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %6, i32 0, i32 1
  %7 = load %struct._GValue*, %struct._GValue** %values4, align 8
  %arrayidx5 = getelementptr inbounds %struct._GValue, %struct._GValue* %7, i64 2
  %call6 = call i32 @g_value_get_enum(%struct._GValue* %arrayidx5)
  store i32 %call6, i32* %merge_type, align 4
  %8 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then, label %if.end.16

if.then:                                          ; preds = %entry
  %9 = load %struct._GimpLayer*, %struct._GimpLayer** %merge_layer, align 8
  %10 = bitcast %struct._GimpLayer* %9 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_item_get_type() #6
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call7)
  %11 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpItem*
  %12 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %13 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call9 = call i32 @gimp_pdb_item_is_attached(%struct._GimpItem* %11, %struct._GimpImage* %12, i32 0, %struct._GError** %13)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %if.then
  %14 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %15 = load %struct._GimpLayer*, %struct._GimpLayer** %merge_layer, align 8
  %16 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %17 = load i32, i32* %merge_type, align 4
  %18 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call12 = call %struct._GimpLayer* @gimp_image_merge_down(%struct._GimpImage* %14, %struct._GimpLayer* %15, %struct._GimpContext* %16, i32 %17, %struct._GError** %18)
  store %struct._GimpLayer* %call12, %struct._GimpLayer** %layer, align 8
  %19 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %tobool13 = icmp ne %struct._GimpLayer* %19, null
  br i1 %tobool13, label %if.end, label %if.then.14

if.then.14:                                       ; preds = %if.then.11
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.14, %if.then.11
  br label %if.end.15

if.else:                                          ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end.15

if.end.15:                                        ; preds = %if.else, %if.end
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15, %entry
  %20 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %21 = load i32, i32* %success, align 4
  %22 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool17 = icmp ne %struct._GError** %22, null
  br i1 %tobool17, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.16
  %23 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %24 = load %struct._GError*, %struct._GError** %23, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.16
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %24, %cond.true ], [ null, %cond.false ]
  %call18 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %20, i32 %21, %struct._GError* %cond)
  store %struct._GValueArray* %call18, %struct._GValueArray** %return_vals, align 8
  %25 = load i32, i32* %success, align 4
  %tobool19 = icmp ne i32 %25, 0
  br i1 %tobool19, label %if.then.20, label %if.end.23

if.then.20:                                       ; preds = %cond.end
  %26 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values21 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %26, i32 0, i32 1
  %27 = load %struct._GValue*, %struct._GValue** %values21, align 8
  %arrayidx22 = getelementptr inbounds %struct._GValue, %struct._GValue* %27, i64 1
  %28 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  call void @gimp_value_set_layer(%struct._GValue* %arrayidx22, %struct._GimpLayer* %28)
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.20, %cond.end
  %29 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %29
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @image_add_layer_mask_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %image = alloca %struct._GimpImage*, align 8
  %layer = alloca %struct._GimpLayer*, align 8
  %mask = alloca %struct._GimpLayerMask*, align 8
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
  %5 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call3 = call %struct._GimpLayer* @gimp_value_get_layer(%struct._GValue* %arrayidx2, %struct._Gimp* %5)
  store %struct._GimpLayer* %call3, %struct._GimpLayer** %layer, align 8
  %6 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values4 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %6, i32 0, i32 1
  %7 = load %struct._GValue*, %struct._GValue** %values4, align 8
  %arrayidx5 = getelementptr inbounds %struct._GValue, %struct._GValue* %7, i64 2
  %8 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call6 = call %struct._GimpLayerMask* @gimp_value_get_layer_mask(%struct._GValue* %arrayidx5, %struct._Gimp* %8)
  store %struct._GimpLayerMask* %call6, %struct._GimpLayerMask** %mask, align 8
  %9 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %if.then, label %if.end.17

if.then:                                          ; preds = %entry
  %10 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask, align 8
  %11 = bitcast %struct._GimpLayerMask* %10 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_item_get_type() #6
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call7)
  %12 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpItem*
  %13 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %14 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call9 = call i32 @gimp_pdb_item_is_floating(%struct._GimpItem* %12, %struct._GimpImage* %13, %struct._GError** %14)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %15 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %16 = bitcast %struct._GimpLayer* %15 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_item_get_type() #6
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call11)
  %17 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpItem*
  %18 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call13 = call i32 @gimp_pdb_item_is_not_group(%struct._GimpItem* %17, %struct._GError** %18)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %land.lhs.true
  %19 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %20 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask, align 8
  %21 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call16 = call %struct._GimpLayerMask* @gimp_layer_add_mask(%struct._GimpLayer* %19, %struct._GimpLayerMask* %20, i32 1, %struct._GError** %21)
  %22 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask, align 8
  %cmp = icmp eq %struct._GimpLayerMask* %call16, %22
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %success, align 4
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.15
  br label %if.end.17

if.end.17:                                        ; preds = %if.end, %entry
  %23 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %24 = load i32, i32* %success, align 4
  %25 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool18 = icmp ne %struct._GError** %25, null
  br i1 %tobool18, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.17
  %26 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %27 = load %struct._GError*, %struct._GError** %26, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.17
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %27, %cond.true ], [ null, %cond.false ]
  %call19 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %23, i32 %24, %struct._GError* %cond)
  ret %struct._GValueArray* %call19
}

declare %struct._GParamSpec* @gimp_param_spec_layer_mask_id(i8*, i8*, i8*, %struct._Gimp*, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @image_remove_layer_mask_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %image = alloca %struct._GimpImage*, align 8
  %layer = alloca %struct._GimpLayer*, align 8
  %mode = alloca i32, align 4
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
  %5 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call3 = call %struct._GimpLayer* @gimp_value_get_layer(%struct._GValue* %arrayidx2, %struct._Gimp* %5)
  store %struct._GimpLayer* %call3, %struct._GimpLayer** %layer, align 8
  %6 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values4 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %6, i32 0, i32 1
  %7 = load %struct._GValue*, %struct._GValue** %values4, align 8
  %arrayidx5 = getelementptr inbounds %struct._GValue, %struct._GValue* %7, i64 2
  %call6 = call i32 @g_value_get_enum(%struct._GValue* %arrayidx5)
  store i32 %call6, i32* %mode, align 4
  %8 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then, label %if.end.14

if.then:                                          ; preds = %entry
  %9 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %10 = bitcast %struct._GimpLayer* %9 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_item_get_type() #6
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call7)
  %11 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpItem*
  %12 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %13 = load i32, i32* %mode, align 4
  %cmp = icmp eq i32 %13, 0
  %conv = zext i1 %cmp to i32
  %14 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call9 = call i32 @gimp_pdb_item_is_attached(%struct._GimpItem* %11, %struct._GimpImage* %12, i32 %conv, %struct._GError** %14)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %15 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %call11 = call %struct._GimpLayerMask* @gimp_layer_get_mask(%struct._GimpLayer* %15)
  %tobool12 = icmp ne %struct._GimpLayerMask* %call11, null
  br i1 %tobool12, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %land.lhs.true
  %16 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %17 = load i32, i32* %mode, align 4
  call void @gimp_layer_apply_mask(%struct._GimpLayer* %16, i32 %17, i32 1)
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.13
  br label %if.end.14

if.end.14:                                        ; preds = %if.end, %entry
  %18 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %19 = load i32, i32* %success, align 4
  %20 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool15 = icmp ne %struct._GError** %20, null
  br i1 %tobool15, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.14
  %21 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %22 = load %struct._GError*, %struct._GError** %21, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.14
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %22, %cond.true ], [ null, %cond.false ]
  %call16 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %18, i32 %19, %struct._GError* %cond)
  ret %struct._GValueArray* %call16
}

; Function Attrs: nounwind readnone
declare i64 @gimp_mask_apply_mode_get_type() #2

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @image_get_colormap_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  %num_bytes = alloca i32, align 4
  %colormap = alloca i8*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store i32 0, i32* %num_bytes, align 4
  store i8* null, i8** %colormap, align 8
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
  %call1 = call i32 @gimp_image_get_colormap_size(%struct._GimpImage* %4)
  %mul = mul nsw i32 3, %call1
  store i32 %mul, i32* %num_bytes, align 4
  %5 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call2 = call i8* @gimp_image_get_colormap(%struct._GimpImage* %5)
  %6 = load i32, i32* %num_bytes, align 4
  %call3 = call noalias i8* @g_memdup(i8* %call2, i32 %6)
  store i8* %call3, i8** %colormap, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %8 = load i32, i32* %success, align 4
  %9 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool4 = icmp ne %struct._GError** %9, null
  br i1 %tobool4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %10 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %11 = load %struct._GError*, %struct._GError** %10, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %11, %cond.true ], [ null, %cond.false ]
  %call5 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %7, i32 %8, %struct._GError* %cond)
  store %struct._GValueArray* %call5, %struct._GValueArray** %return_vals, align 8
  %12 = load i32, i32* %success, align 4
  %tobool6 = icmp ne i32 %12, 0
  br i1 %tobool6, label %if.then.7, label %if.end.12

if.then.7:                                        ; preds = %cond.end
  %13 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values8 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %13, i32 0, i32 1
  %14 = load %struct._GValue*, %struct._GValue** %values8, align 8
  %arrayidx9 = getelementptr inbounds %struct._GValue, %struct._GValue* %14, i64 1
  %15 = load i32, i32* %num_bytes, align 4
  call void @g_value_set_int(%struct._GValue* %arrayidx9, i32 %15)
  %16 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values10 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %16, i32 0, i32 1
  %17 = load %struct._GValue*, %struct._GValue** %values10, align 8
  %arrayidx11 = getelementptr inbounds %struct._GValue, %struct._GValue* %17, i64 2
  %18 = load i8*, i8** %colormap, align 8
  %19 = load i32, i32* %num_bytes, align 4
  %conv = sext i32 %19 to i64
  call void @gimp_value_take_int8array(%struct._GValue* %arrayidx11, i8* %18, i64 %conv)
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.7, %cond.end
  %20 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %20
}

declare %struct._GParamSpec* @gimp_param_spec_int8_array(i8*, i8*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @image_set_colormap_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %image = alloca %struct._GimpImage*, align 8
  %num_bytes = alloca i32, align 4
  %colormap = alloca i8*, align 8
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
  store i32 %call3, i32* %num_bytes, align 4
  %5 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values4 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %5, i32 0, i32 1
  %6 = load %struct._GValue*, %struct._GValue** %values4, align 8
  %arrayidx5 = getelementptr inbounds %struct._GValue, %struct._GValue* %6, i64 2
  %call6 = call i8* @gimp_value_get_int8array(%struct._GValue* %arrayidx5)
  store i8* %call6, i8** %colormap, align 8
  %7 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %9 = load i8*, i8** %colormap, align 8
  %10 = load i32, i32* %num_bytes, align 4
  %div = sdiv i32 %10, 3
  call void @gimp_image_set_colormap(%struct._GimpImage* %8, i8* %9, i32 %div, i32 1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %11 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %12 = load i32, i32* %success, align 4
  %13 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool7 = icmp ne %struct._GError** %13, null
  br i1 %tobool7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %14 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %15 = load %struct._GError*, %struct._GError** %14, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %15, %cond.true ], [ null, %cond.false ]
  %call8 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %11, i32 %12, %struct._GError* %cond)
  ret %struct._GValueArray* %call8
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @image_clean_all_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  call void @gimp_image_clean_all(%struct._GimpImage* %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %6 = load i32, i32* %success, align 4
  %7 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool1 = icmp ne %struct._GError** %7, null
  br i1 %tobool1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %8 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %9 = load %struct._GError*, %struct._GError** %8, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %9, %cond.true ], [ null, %cond.false ]
  %call2 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %5, i32 %6, %struct._GError* %cond)
  ret %struct._GValueArray* %call2
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @image_is_dirty_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  %dirty = alloca i32, align 4
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store i32 0, i32* %dirty, align 4
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
  %call1 = call i32 @gimp_image_is_dirty(%struct._GimpImage* %4)
  store i32 %call1, i32* %dirty, align 4
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
  store %struct._GValueArray* %call3, %struct._GValueArray** %return_vals, align 8
  %10 = load i32, i32* %success, align 4
  %tobool4 = icmp ne i32 %10, 0
  br i1 %tobool4, label %if.then.5, label %if.end.8

if.then.5:                                        ; preds = %cond.end
  %11 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values6 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %11, i32 0, i32 1
  %12 = load %struct._GValue*, %struct._GValue** %values6, align 8
  %arrayidx7 = getelementptr inbounds %struct._GValue, %struct._GValue* %12, i64 1
  %13 = load i32, i32* %dirty, align 4
  call void @g_value_set_boolean(%struct._GValue* %arrayidx7, i32 %13)
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.5, %cond.end
  %14 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %14
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @image_thumbnail_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %actual_width = alloca i32, align 4
  %actual_height = alloca i32, align 4
  %bpp = alloca i32, align 4
  %thumbnail_data_count = alloca i32, align 4
  %thumbnail_data = alloca i8*, align 8
  %buf = alloca %struct._TempBuf*, align 8
  %dwidth = alloca i32, align 4
  %dheight = alloca i32, align 4
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store i32 0, i32* %actual_width, align 4
  store i32 0, i32* %actual_height, align 4
  store i32 0, i32* %bpp, align 4
  store i32 0, i32* %thumbnail_data_count, align 4
  store i8* null, i8** %thumbnail_data, align 8
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
  store i32 %call3, i32* %width, align 4
  %5 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values4 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %5, i32 0, i32 1
  %6 = load %struct._GValue*, %struct._GValue** %values4, align 8
  %arrayidx5 = getelementptr inbounds %struct._GValue, %struct._GValue* %6, i64 2
  %call6 = call i32 @g_value_get_int(%struct._GValue* %arrayidx5)
  store i32 %call6, i32* %height, align 4
  %7 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then, label %if.end.38

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %do.body
  %8 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call7 = call i32 @gimp_image_get_width(%struct._GimpImage* %8)
  store i32 %call7, i32* %dwidth, align 4
  %9 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call8 = call i32 @gimp_image_get_height(%struct._GimpImage* %9)
  store i32 %call8, i32* %dheight, align 4
  %10 = load i32, i32* %dwidth, align 4
  %11 = load i32, i32* %dheight, align 4
  %cmp = icmp sgt i32 %10, %11
  br i1 %cmp, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %do.end
  %12 = load i32, i32* %width, align 4
  %13 = load i32, i32* %dheight, align 4
  %mul = mul nsw i32 %12, %13
  %14 = load i32, i32* %dwidth, align 4
  %div = sdiv i32 %mul, %14
  %cmp10 = icmp sgt i32 1, %div
  br i1 %cmp10, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.9
  br label %cond.end

cond.false:                                       ; preds = %if.then.9
  %15 = load i32, i32* %width, align 4
  %16 = load i32, i32* %dheight, align 4
  %mul11 = mul nsw i32 %15, %16
  %17 = load i32, i32* %dwidth, align 4
  %div12 = sdiv i32 %mul11, %17
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 1, %cond.true ], [ %div12, %cond.false ]
  store i32 %cond, i32* %height, align 4
  br label %if.end

if.else:                                          ; preds = %do.end
  %18 = load i32, i32* %height, align 4
  %19 = load i32, i32* %dwidth, align 4
  %mul13 = mul nsw i32 %18, %19
  %20 = load i32, i32* %dheight, align 4
  %div14 = sdiv i32 %mul13, %20
  %cmp15 = icmp sgt i32 1, %div14
  br i1 %cmp15, label %cond.true.16, label %cond.false.17

cond.true.16:                                     ; preds = %if.else
  br label %cond.end.20

cond.false.17:                                    ; preds = %if.else
  %21 = load i32, i32* %height, align 4
  %22 = load i32, i32* %dwidth, align 4
  %mul18 = mul nsw i32 %21, %22
  %23 = load i32, i32* %dheight, align 4
  %div19 = sdiv i32 %mul18, %23
  br label %cond.end.20

cond.end.20:                                      ; preds = %cond.false.17, %cond.true.16
  %cond21 = phi i32 [ 1, %cond.true.16 ], [ %div19, %cond.false.17 ]
  store i32 %cond21, i32* %width, align 4
  br label %if.end

if.end:                                           ; preds = %cond.end.20, %cond.end
  %24 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call22 = call %struct._GimpProjection* @gimp_image_get_projection(%struct._GimpImage* %24)
  %25 = bitcast %struct._GimpProjection* %call22 to %struct._GTypeInstance*
  %call23 = call i64 @gimp_pickable_interface_get_type() #6
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call23)
  %26 = bitcast %struct._GTypeInstance* %call24 to %struct._GimpPickable*
  call void @gimp_pickable_flush(%struct._GimpPickable* %26)
  %27 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %28 = bitcast %struct._GimpImage* %27 to %struct._GTypeInstance*
  %call25 = call i64 @gimp_viewable_get_type() #6
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call25)
  %29 = bitcast %struct._GTypeInstance* %call26 to %struct._GimpViewable*
  %30 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %31 = load i32, i32* %width, align 4
  %32 = load i32, i32* %height, align 4
  %call27 = call %struct._TempBuf* @gimp_viewable_get_new_preview(%struct._GimpViewable* %29, %struct._GimpContext* %30, i32 %31, i32 %32)
  store %struct._TempBuf* %call27, %struct._TempBuf** %buf, align 8
  %33 = load %struct._TempBuf*, %struct._TempBuf** %buf, align 8
  %tobool28 = icmp ne %struct._TempBuf* %33, null
  br i1 %tobool28, label %if.then.29, label %if.else.36

if.then.29:                                       ; preds = %if.end
  %34 = load %struct._TempBuf*, %struct._TempBuf** %buf, align 8
  %width30 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %34, i32 0, i32 1
  %35 = load i32, i32* %width30, align 4
  store i32 %35, i32* %actual_width, align 4
  %36 = load %struct._TempBuf*, %struct._TempBuf** %buf, align 8
  %height31 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %36, i32 0, i32 2
  %37 = load i32, i32* %height31, align 4
  store i32 %37, i32* %actual_height, align 4
  %38 = load %struct._TempBuf*, %struct._TempBuf** %buf, align 8
  %bytes = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %38, i32 0, i32 0
  %39 = load i32, i32* %bytes, align 4
  store i32 %39, i32* %bpp, align 4
  %40 = load i32, i32* %actual_width, align 4
  %41 = load i32, i32* %actual_height, align 4
  %mul32 = mul nsw i32 %40, %41
  %42 = load i32, i32* %bpp, align 4
  %mul33 = mul nsw i32 %mul32, %42
  store i32 %mul33, i32* %thumbnail_data_count, align 4
  %43 = load %struct._TempBuf*, %struct._TempBuf** %buf, align 8
  %call34 = call i8* @temp_buf_get_data(%struct._TempBuf* %43)
  %44 = load i32, i32* %thumbnail_data_count, align 4
  %call35 = call noalias i8* @g_memdup(i8* %call34, i32 %44)
  store i8* %call35, i8** %thumbnail_data, align 8
  %45 = load %struct._TempBuf*, %struct._TempBuf** %buf, align 8
  call void @temp_buf_free(%struct._TempBuf* %45)
  br label %if.end.37

if.else.36:                                       ; preds = %if.end
  store i32 0, i32* %success, align 4
  br label %if.end.37

if.end.37:                                        ; preds = %if.else.36, %if.then.29
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %entry
  %46 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %47 = load i32, i32* %success, align 4
  %48 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool39 = icmp ne %struct._GError** %48, null
  br i1 %tobool39, label %cond.true.40, label %cond.false.41

cond.true.40:                                     ; preds = %if.end.38
  %49 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %50 = load %struct._GError*, %struct._GError** %49, align 8
  br label %cond.end.42

cond.false.41:                                    ; preds = %if.end.38
  br label %cond.end.42

cond.end.42:                                      ; preds = %cond.false.41, %cond.true.40
  %cond43 = phi %struct._GError* [ %50, %cond.true.40 ], [ null, %cond.false.41 ]
  %call44 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %46, i32 %47, %struct._GError* %cond43)
  store %struct._GValueArray* %call44, %struct._GValueArray** %return_vals, align 8
  %51 = load i32, i32* %success, align 4
  %tobool45 = icmp ne i32 %51, 0
  br i1 %tobool45, label %if.then.46, label %if.end.57

if.then.46:                                       ; preds = %cond.end.42
  %52 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values47 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %52, i32 0, i32 1
  %53 = load %struct._GValue*, %struct._GValue** %values47, align 8
  %arrayidx48 = getelementptr inbounds %struct._GValue, %struct._GValue* %53, i64 1
  %54 = load i32, i32* %actual_width, align 4
  call void @g_value_set_int(%struct._GValue* %arrayidx48, i32 %54)
  %55 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values49 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %55, i32 0, i32 1
  %56 = load %struct._GValue*, %struct._GValue** %values49, align 8
  %arrayidx50 = getelementptr inbounds %struct._GValue, %struct._GValue* %56, i64 2
  %57 = load i32, i32* %actual_height, align 4
  call void @g_value_set_int(%struct._GValue* %arrayidx50, i32 %57)
  %58 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values51 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %58, i32 0, i32 1
  %59 = load %struct._GValue*, %struct._GValue** %values51, align 8
  %arrayidx52 = getelementptr inbounds %struct._GValue, %struct._GValue* %59, i64 3
  %60 = load i32, i32* %bpp, align 4
  call void @g_value_set_int(%struct._GValue* %arrayidx52, i32 %60)
  %61 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values53 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %61, i32 0, i32 1
  %62 = load %struct._GValue*, %struct._GValue** %values53, align 8
  %arrayidx54 = getelementptr inbounds %struct._GValue, %struct._GValue* %62, i64 4
  %63 = load i32, i32* %thumbnail_data_count, align 4
  call void @g_value_set_int(%struct._GValue* %arrayidx54, i32 %63)
  %64 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values55 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %64, i32 0, i32 1
  %65 = load %struct._GValue*, %struct._GValue** %values55, align 8
  %arrayidx56 = getelementptr inbounds %struct._GValue, %struct._GValue* %65, i64 5
  %66 = load i8*, i8** %thumbnail_data, align 8
  %67 = load i32, i32* %thumbnail_data_count, align 4
  %conv = sext i32 %67 to i64
  call void @gimp_value_take_int8array(%struct._GValue* %arrayidx56, i8* %66, i64 %conv)
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.46, %cond.end.42
  %68 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %68
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @image_get_active_layer_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  %active_layer = alloca %struct._GimpLayer*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store %struct._GimpLayer* null, %struct._GimpLayer** %active_layer, align 8
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
  %call1 = call %struct._GimpLayer* @gimp_image_get_active_layer(%struct._GimpImage* %4)
  store %struct._GimpLayer* %call1, %struct._GimpLayer** %active_layer, align 8
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
  store %struct._GValueArray* %call3, %struct._GValueArray** %return_vals, align 8
  %10 = load i32, i32* %success, align 4
  %tobool4 = icmp ne i32 %10, 0
  br i1 %tobool4, label %if.then.5, label %if.end.8

if.then.5:                                        ; preds = %cond.end
  %11 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values6 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %11, i32 0, i32 1
  %12 = load %struct._GValue*, %struct._GValue** %values6, align 8
  %arrayidx7 = getelementptr inbounds %struct._GValue, %struct._GValue* %12, i64 1
  %13 = load %struct._GimpLayer*, %struct._GimpLayer** %active_layer, align 8
  call void @gimp_value_set_layer(%struct._GValue* %arrayidx7, %struct._GimpLayer* %13)
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.5, %cond.end
  %14 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %14
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @image_set_active_layer_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %image = alloca %struct._GimpImage*, align 8
  %active_layer = alloca %struct._GimpLayer*, align 8
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
  %5 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call3 = call %struct._GimpLayer* @gimp_value_get_layer(%struct._GValue* %arrayidx2, %struct._Gimp* %5)
  store %struct._GimpLayer* %call3, %struct._GimpLayer** %active_layer, align 8
  %6 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then, label %if.end.6

if.then:                                          ; preds = %entry
  %7 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %8 = load %struct._GimpLayer*, %struct._GimpLayer** %active_layer, align 8
  %call4 = call %struct._GimpLayer* @gimp_image_set_active_layer(%struct._GimpImage* %7, %struct._GimpLayer* %8)
  %9 = load %struct._GimpLayer*, %struct._GimpLayer** %active_layer, align 8
  %cmp = icmp ne %struct._GimpLayer* %call4, %9
  br i1 %cmp, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.5, %if.then
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %entry
  %10 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %11 = load i32, i32* %success, align 4
  %12 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool7 = icmp ne %struct._GError** %12, null
  br i1 %tobool7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.6
  %13 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %14 = load %struct._GError*, %struct._GError** %13, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %14, %cond.true ], [ null, %cond.false ]
  %call8 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %10, i32 %11, %struct._GError* %cond)
  ret %struct._GValueArray* %call8
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @image_get_active_channel_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  %active_channel = alloca %struct._GimpChannel*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store %struct._GimpChannel* null, %struct._GimpChannel** %active_channel, align 8
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
  %call1 = call %struct._GimpChannel* @gimp_image_get_active_channel(%struct._GimpImage* %4)
  store %struct._GimpChannel* %call1, %struct._GimpChannel** %active_channel, align 8
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
  store %struct._GValueArray* %call3, %struct._GValueArray** %return_vals, align 8
  %10 = load i32, i32* %success, align 4
  %tobool4 = icmp ne i32 %10, 0
  br i1 %tobool4, label %if.then.5, label %if.end.8

if.then.5:                                        ; preds = %cond.end
  %11 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values6 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %11, i32 0, i32 1
  %12 = load %struct._GValue*, %struct._GValue** %values6, align 8
  %arrayidx7 = getelementptr inbounds %struct._GValue, %struct._GValue* %12, i64 1
  %13 = load %struct._GimpChannel*, %struct._GimpChannel** %active_channel, align 8
  call void @gimp_value_set_channel(%struct._GValue* %arrayidx7, %struct._GimpChannel* %13)
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.5, %cond.end
  %14 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %14
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @image_set_active_channel_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %image = alloca %struct._GimpImage*, align 8
  %active_channel = alloca %struct._GimpChannel*, align 8
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
  %5 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call3 = call %struct._GimpChannel* @gimp_value_get_channel(%struct._GValue* %arrayidx2, %struct._Gimp* %5)
  store %struct._GimpChannel* %call3, %struct._GimpChannel** %active_channel, align 8
  %6 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then, label %if.end.6

if.then:                                          ; preds = %entry
  %7 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %8 = load %struct._GimpChannel*, %struct._GimpChannel** %active_channel, align 8
  %call4 = call %struct._GimpChannel* @gimp_image_set_active_channel(%struct._GimpImage* %7, %struct._GimpChannel* %8)
  %9 = load %struct._GimpChannel*, %struct._GimpChannel** %active_channel, align 8
  %cmp = icmp ne %struct._GimpChannel* %call4, %9
  br i1 %cmp, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.5, %if.then
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %entry
  %10 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %11 = load i32, i32* %success, align 4
  %12 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool7 = icmp ne %struct._GError** %12, null
  br i1 %tobool7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.6
  %13 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %14 = load %struct._GError*, %struct._GError** %13, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %14, %cond.true ], [ null, %cond.false ]
  %call8 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %10, i32 %11, %struct._GError* %cond)
  ret %struct._GValueArray* %call8
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @image_get_active_vectors_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  %active_vectors = alloca %struct._GimpVectors*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store %struct._GimpVectors* null, %struct._GimpVectors** %active_vectors, align 8
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
  %call1 = call %struct._GimpVectors* @gimp_image_get_active_vectors(%struct._GimpImage* %4)
  store %struct._GimpVectors* %call1, %struct._GimpVectors** %active_vectors, align 8
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
  store %struct._GValueArray* %call3, %struct._GValueArray** %return_vals, align 8
  %10 = load i32, i32* %success, align 4
  %tobool4 = icmp ne i32 %10, 0
  br i1 %tobool4, label %if.then.5, label %if.end.8

if.then.5:                                        ; preds = %cond.end
  %11 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values6 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %11, i32 0, i32 1
  %12 = load %struct._GValue*, %struct._GValue** %values6, align 8
  %arrayidx7 = getelementptr inbounds %struct._GValue, %struct._GValue* %12, i64 1
  %13 = load %struct._GimpVectors*, %struct._GimpVectors** %active_vectors, align 8
  call void @gimp_value_set_vectors(%struct._GValue* %arrayidx7, %struct._GimpVectors* %13)
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.5, %cond.end
  %14 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %14
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @image_set_active_vectors_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %image = alloca %struct._GimpImage*, align 8
  %active_vectors = alloca %struct._GimpVectors*, align 8
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
  %5 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call3 = call %struct._GimpVectors* @gimp_value_get_vectors(%struct._GValue* %arrayidx2, %struct._Gimp* %5)
  store %struct._GimpVectors* %call3, %struct._GimpVectors** %active_vectors, align 8
  %6 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then, label %if.end.6

if.then:                                          ; preds = %entry
  %7 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %8 = load %struct._GimpVectors*, %struct._GimpVectors** %active_vectors, align 8
  %call4 = call %struct._GimpVectors* @gimp_image_set_active_vectors(%struct._GimpImage* %7, %struct._GimpVectors* %8)
  %9 = load %struct._GimpVectors*, %struct._GimpVectors** %active_vectors, align 8
  %cmp = icmp ne %struct._GimpVectors* %call4, %9
  br i1 %cmp, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.5, %if.then
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %entry
  %10 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %11 = load i32, i32* %success, align 4
  %12 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool7 = icmp ne %struct._GError** %12, null
  br i1 %tobool7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.6
  %13 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %14 = load %struct._GError*, %struct._GError** %13, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %14, %cond.true ], [ null, %cond.false ]
  %call8 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %10, i32 %11, %struct._GError* %cond)
  ret %struct._GValueArray* %call8
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @image_get_selection_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  %selection = alloca %struct._GimpSelection*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store %struct._GimpSelection* null, %struct._GimpSelection** %selection, align 8
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
  %call1 = call %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage* %4)
  %5 = bitcast %struct._GimpChannel* %call1 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_selection_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call2)
  %6 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpSelection*
  store %struct._GimpSelection* %6, %struct._GimpSelection** %selection, align 8
  %7 = load %struct._GimpSelection*, %struct._GimpSelection** %selection, align 8
  %tobool4 = icmp ne %struct._GimpSelection* %7, null
  br i1 %tobool4, label %if.end, label %if.then.5

if.then.5:                                        ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.5, %if.then
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
  %16 = load %struct._GimpSelection*, %struct._GimpSelection** %selection, align 8
  call void @gimp_value_set_selection(%struct._GValue* %arrayidx12, %struct._GimpSelection* %16)
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.10, %cond.end
  %17 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %17
}

declare %struct._GParamSpec* @gimp_param_spec_selection_id(i8*, i8*, i8*, %struct._Gimp*, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @image_get_component_active_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  %component = alloca i32, align 4
  %active = alloca i32, align 4
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store i32 0, i32* %active, align 4
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
  store i32 %call3, i32* %component, align 4
  %5 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end.16

if.then:                                          ; preds = %entry
  %6 = load i32, i32* %component, align 4
  %cmp = icmp eq i32 %6, 3
  br i1 %cmp, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.then
  %7 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %8 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call5 = call i32 @gimp_pdb_image_is_base_type(%struct._GimpImage* %7, i32 1, %struct._GError** %8)
  store i32 %call5, i32* %success, align 4
  br label %if.end.11

if.else:                                          ; preds = %if.then
  %9 = load i32, i32* %component, align 4
  %cmp6 = icmp eq i32 %9, 4
  br i1 %cmp6, label %if.then.7, label %if.else.9

if.then.7:                                        ; preds = %if.else
  %10 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %11 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call8 = call i32 @gimp_pdb_image_is_base_type(%struct._GimpImage* %10, i32 2, %struct._GError** %11)
  store i32 %call8, i32* %success, align 4
  br label %if.end

if.else.9:                                        ; preds = %if.else
  %12 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %13 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call10 = call i32 @gimp_pdb_image_is_base_type(%struct._GimpImage* %12, i32 0, %struct._GError** %13)
  store i32 %call10, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.9, %if.then.7
  br label %if.end.11

if.end.11:                                        ; preds = %if.end, %if.then.4
  %14 = load i32, i32* %success, align 4
  %tobool12 = icmp ne i32 %14, 0
  br i1 %tobool12, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %if.end.11
  %15 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %16 = load i32, i32* %component, align 4
  %call14 = call i32 @gimp_image_get_component_active(%struct._GimpImage* %15, i32 %16)
  store i32 %call14, i32* %active, align 4
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.13, %if.end.11
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15, %entry
  %17 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %18 = load i32, i32* %success, align 4
  %19 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool17 = icmp ne %struct._GError** %19, null
  br i1 %tobool17, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.16
  %20 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %21 = load %struct._GError*, %struct._GError** %20, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.16
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %21, %cond.true ], [ null, %cond.false ]
  %call18 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %17, i32 %18, %struct._GError* %cond)
  store %struct._GValueArray* %call18, %struct._GValueArray** %return_vals, align 8
  %22 = load i32, i32* %success, align 4
  %tobool19 = icmp ne i32 %22, 0
  br i1 %tobool19, label %if.then.20, label %if.end.23

if.then.20:                                       ; preds = %cond.end
  %23 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values21 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %23, i32 0, i32 1
  %24 = load %struct._GValue*, %struct._GValue** %values21, align 8
  %arrayidx22 = getelementptr inbounds %struct._GValue, %struct._GValue* %24, i64 1
  %25 = load i32, i32* %active, align 4
  call void @g_value_set_boolean(%struct._GValue* %arrayidx22, i32 %25)
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.20, %cond.end
  %26 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %26
}

; Function Attrs: nounwind readnone
declare i64 @gimp_channel_type_get_type() #2

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @image_set_component_active_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %image = alloca %struct._GimpImage*, align 8
  %component = alloca i32, align 4
  %active = alloca i32, align 4
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
  store i32 %call3, i32* %component, align 4
  %5 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values4 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %5, i32 0, i32 1
  %6 = load %struct._GValue*, %struct._GValue** %values4, align 8
  %arrayidx5 = getelementptr inbounds %struct._GValue, %struct._GValue* %6, i64 2
  %call6 = call i32 @g_value_get_boolean(%struct._GValue* %arrayidx5)
  store i32 %call6, i32* %active, align 4
  %7 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then, label %if.end.18

if.then:                                          ; preds = %entry
  %8 = load i32, i32* %component, align 4
  %cmp = icmp eq i32 %8, 3
  br i1 %cmp, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.then
  %9 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %10 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call8 = call i32 @gimp_pdb_image_is_base_type(%struct._GimpImage* %9, i32 1, %struct._GError** %10)
  store i32 %call8, i32* %success, align 4
  br label %if.end.14

if.else:                                          ; preds = %if.then
  %11 = load i32, i32* %component, align 4
  %cmp9 = icmp eq i32 %11, 4
  br i1 %cmp9, label %if.then.10, label %if.else.12

if.then.10:                                       ; preds = %if.else
  %12 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %13 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call11 = call i32 @gimp_pdb_image_is_base_type(%struct._GimpImage* %12, i32 2, %struct._GError** %13)
  store i32 %call11, i32* %success, align 4
  br label %if.end

if.else.12:                                       ; preds = %if.else
  %14 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %15 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call13 = call i32 @gimp_pdb_image_is_base_type(%struct._GimpImage* %14, i32 0, %struct._GError** %15)
  store i32 %call13, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.12, %if.then.10
  br label %if.end.14

if.end.14:                                        ; preds = %if.end, %if.then.7
  %16 = load i32, i32* %success, align 4
  %tobool15 = icmp ne i32 %16, 0
  br i1 %tobool15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.end.14
  %17 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %18 = load i32, i32* %component, align 4
  %19 = load i32, i32* %active, align 4
  call void @gimp_image_set_component_active(%struct._GimpImage* %17, i32 %18, i32 %19)
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.16, %if.end.14
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
define internal %struct._GValueArray* @image_get_component_visible_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  %component = alloca i32, align 4
  %visible = alloca i32, align 4
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store i32 0, i32* %visible, align 4
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
  store i32 %call3, i32* %component, align 4
  %5 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end.16

if.then:                                          ; preds = %entry
  %6 = load i32, i32* %component, align 4
  %cmp = icmp eq i32 %6, 3
  br i1 %cmp, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.then
  %7 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %8 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call5 = call i32 @gimp_pdb_image_is_base_type(%struct._GimpImage* %7, i32 1, %struct._GError** %8)
  store i32 %call5, i32* %success, align 4
  br label %if.end.11

if.else:                                          ; preds = %if.then
  %9 = load i32, i32* %component, align 4
  %cmp6 = icmp eq i32 %9, 4
  br i1 %cmp6, label %if.then.7, label %if.else.9

if.then.7:                                        ; preds = %if.else
  %10 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %11 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call8 = call i32 @gimp_pdb_image_is_base_type(%struct._GimpImage* %10, i32 2, %struct._GError** %11)
  store i32 %call8, i32* %success, align 4
  br label %if.end

if.else.9:                                        ; preds = %if.else
  %12 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %13 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call10 = call i32 @gimp_pdb_image_is_base_type(%struct._GimpImage* %12, i32 0, %struct._GError** %13)
  store i32 %call10, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.9, %if.then.7
  br label %if.end.11

if.end.11:                                        ; preds = %if.end, %if.then.4
  %14 = load i32, i32* %success, align 4
  %tobool12 = icmp ne i32 %14, 0
  br i1 %tobool12, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %if.end.11
  %15 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %16 = load i32, i32* %component, align 4
  %call14 = call i32 @gimp_image_get_component_visible(%struct._GimpImage* %15, i32 %16)
  store i32 %call14, i32* %visible, align 4
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.13, %if.end.11
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15, %entry
  %17 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %18 = load i32, i32* %success, align 4
  %19 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool17 = icmp ne %struct._GError** %19, null
  br i1 %tobool17, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.16
  %20 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %21 = load %struct._GError*, %struct._GError** %20, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.16
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %21, %cond.true ], [ null, %cond.false ]
  %call18 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %17, i32 %18, %struct._GError* %cond)
  store %struct._GValueArray* %call18, %struct._GValueArray** %return_vals, align 8
  %22 = load i32, i32* %success, align 4
  %tobool19 = icmp ne i32 %22, 0
  br i1 %tobool19, label %if.then.20, label %if.end.23

if.then.20:                                       ; preds = %cond.end
  %23 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values21 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %23, i32 0, i32 1
  %24 = load %struct._GValue*, %struct._GValue** %values21, align 8
  %arrayidx22 = getelementptr inbounds %struct._GValue, %struct._GValue* %24, i64 1
  %25 = load i32, i32* %visible, align 4
  call void @g_value_set_boolean(%struct._GValue* %arrayidx22, i32 %25)
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.20, %cond.end
  %26 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %26
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @image_set_component_visible_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %image = alloca %struct._GimpImage*, align 8
  %component = alloca i32, align 4
  %visible = alloca i32, align 4
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
  store i32 %call3, i32* %component, align 4
  %5 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values4 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %5, i32 0, i32 1
  %6 = load %struct._GValue*, %struct._GValue** %values4, align 8
  %arrayidx5 = getelementptr inbounds %struct._GValue, %struct._GValue* %6, i64 2
  %call6 = call i32 @g_value_get_boolean(%struct._GValue* %arrayidx5)
  store i32 %call6, i32* %visible, align 4
  %7 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then, label %if.end.18

if.then:                                          ; preds = %entry
  %8 = load i32, i32* %component, align 4
  %cmp = icmp eq i32 %8, 3
  br i1 %cmp, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.then
  %9 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %10 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call8 = call i32 @gimp_pdb_image_is_base_type(%struct._GimpImage* %9, i32 1, %struct._GError** %10)
  store i32 %call8, i32* %success, align 4
  br label %if.end.14

if.else:                                          ; preds = %if.then
  %11 = load i32, i32* %component, align 4
  %cmp9 = icmp eq i32 %11, 4
  br i1 %cmp9, label %if.then.10, label %if.else.12

if.then.10:                                       ; preds = %if.else
  %12 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %13 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call11 = call i32 @gimp_pdb_image_is_base_type(%struct._GimpImage* %12, i32 2, %struct._GError** %13)
  store i32 %call11, i32* %success, align 4
  br label %if.end

if.else.12:                                       ; preds = %if.else
  %14 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %15 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call13 = call i32 @gimp_pdb_image_is_base_type(%struct._GimpImage* %14, i32 0, %struct._GError** %15)
  store i32 %call13, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.12, %if.then.10
  br label %if.end.14

if.end.14:                                        ; preds = %if.end, %if.then.7
  %16 = load i32, i32* %success, align 4
  %tobool15 = icmp ne i32 %16, 0
  br i1 %tobool15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.end.14
  %17 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %18 = load i32, i32* %component, align 4
  %19 = load i32, i32* %visible, align 4
  call void @gimp_image_set_component_visible(%struct._GimpImage* %17, i32 %18, i32 %19)
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.16, %if.end.14
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
define internal %struct._GValueArray* @image_get_filename_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  %uri = alloca i8*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store i8* null, i8** %filename, align 8
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
  %call1 = call i8* @gimp_image_get_any_uri(%struct._GimpImage* %4)
  store i8* %call1, i8** %uri, align 8
  %5 = load i8*, i8** %uri, align 8
  %tobool2 = icmp ne i8* %5, null
  br i1 %tobool2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %6 = load i8*, i8** %uri, align 8
  %call4 = call noalias i8* @g_filename_from_uri(i8* %6, i8** null, %struct._GError** null)
  store i8* %call4, i8** %filename, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %entry
  %7 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %8 = load i32, i32* %success, align 4
  %9 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool6 = icmp ne %struct._GError** %9, null
  br i1 %tobool6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.5
  %10 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %11 = load %struct._GError*, %struct._GError** %10, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %11, %cond.true ], [ null, %cond.false ]
  %call7 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %7, i32 %8, %struct._GError* %cond)
  store %struct._GValueArray* %call7, %struct._GValueArray** %return_vals, align 8
  %12 = load i32, i32* %success, align 4
  %tobool8 = icmp ne i32 %12, 0
  br i1 %tobool8, label %if.then.9, label %if.end.12

if.then.9:                                        ; preds = %cond.end
  %13 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values10 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %13, i32 0, i32 1
  %14 = load %struct._GValue*, %struct._GValue** %values10, align 8
  %arrayidx11 = getelementptr inbounds %struct._GValue, %struct._GValue* %14, i64 1
  %15 = load i8*, i8** %filename, align 8
  call void @g_value_take_string(%struct._GValue* %arrayidx11, i8* %15)
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.9, %cond.end
  %16 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %16
}

declare %struct._GParamSpec* @gimp_param_spec_string(i8*, i8*, i8*, i32, i32, i32, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @image_set_filename_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  %utf8 = alloca i8*, align 8
  %tmp = alloca i8*, align 8
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
  %5 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end.15

if.then:                                          ; preds = %entry
  %6 = load i8*, i8** %filename, align 8
  %7 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call4 = call noalias i8* @g_filename_to_utf8(i8* %6, i64 -1, i64* null, i64* null, %struct._GError** %7)
  store i8* %call4, i8** %utf8, align 8
  %8 = load i8*, i8** %utf8, align 8
  %tobool5 = icmp ne i8* %8, null
  br i1 %tobool5, label %if.then.6, label %if.else.10

if.then.6:                                        ; preds = %if.then
  %9 = load i8*, i8** %utf8, align 8
  %10 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call7 = call noalias i8* @g_filename_from_utf8(i8* %9, i64 -1, i64* null, i64* null, %struct._GError** %10)
  store i8* %call7, i8** %tmp, align 8
  %11 = load i8*, i8** %tmp, align 8
  %tobool8 = icmp ne i8* %11, null
  br i1 %tobool8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.then.6
  %12 = load i8*, i8** %tmp, align 8
  call void @g_free(i8* %12)
  br label %if.end

if.else:                                          ; preds = %if.then.6
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.9
  %13 = load i8*, i8** %utf8, align 8
  call void @g_free(i8* %13)
  br label %if.end.11

if.else.10:                                       ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end.11

if.end.11:                                        ; preds = %if.else.10, %if.end
  %14 = load i32, i32* %success, align 4
  %tobool12 = icmp ne i32 %14, 0
  br i1 %tobool12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end.11
  %15 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %16 = load i8*, i8** %filename, align 8
  call void @gimp_image_set_filename(%struct._GimpImage* %15, i8* %16)
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %if.end.11
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %entry
  %17 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %18 = load i32, i32* %success, align 4
  %19 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool16 = icmp ne %struct._GError** %19, null
  br i1 %tobool16, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.15
  %20 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %21 = load %struct._GError*, %struct._GError** %20, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.15
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %21, %cond.true ], [ null, %cond.false ]
  %call17 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %17, i32 %18, %struct._GError* %cond)
  ret %struct._GValueArray* %call17
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @image_get_uri_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  %uri = alloca i8*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store i8* null, i8** %uri, align 8
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
  %call1 = call i8* @gimp_image_get_any_uri(%struct._GimpImage* %4)
  %call2 = call noalias i8* @g_strdup(i8* %call1)
  store i8* %call2, i8** %uri, align 8
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
  %13 = load i8*, i8** %uri, align 8
  call void @g_value_take_string(%struct._GValue* %arrayidx8, i8* %13)
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.6, %cond.end
  %14 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %14
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @image_get_xcf_uri_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  %uri = alloca i8*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store i8* null, i8** %uri, align 8
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
  %call1 = call i8* @gimp_image_get_uri(%struct._GimpImage* %4)
  %call2 = call noalias i8* @g_strdup(i8* %call1)
  store i8* %call2, i8** %uri, align 8
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
  %13 = load i8*, i8** %uri, align 8
  call void @g_value_take_string(%struct._GValue* %arrayidx8, i8* %13)
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.6, %cond.end
  %14 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %14
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @image_get_imported_uri_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  %uri = alloca i8*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store i8* null, i8** %uri, align 8
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
  %call1 = call i8* @gimp_image_get_imported_uri(%struct._GimpImage* %4)
  %call2 = call noalias i8* @g_strdup(i8* %call1)
  store i8* %call2, i8** %uri, align 8
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
  %13 = load i8*, i8** %uri, align 8
  call void @g_value_take_string(%struct._GValue* %arrayidx8, i8* %13)
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.6, %cond.end
  %14 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %14
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @image_get_exported_uri_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  %uri = alloca i8*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store i8* null, i8** %uri, align 8
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
  %call1 = call i8* @gimp_image_get_exported_uri(%struct._GimpImage* %4)
  %call2 = call noalias i8* @g_strdup(i8* %call1)
  store i8* %call2, i8** %uri, align 8
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
  %13 = load i8*, i8** %uri, align 8
  call void @g_value_take_string(%struct._GValue* %arrayidx8, i8* %13)
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.6, %cond.end
  %14 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %14
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @image_get_name_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call1 = call i8* @gimp_image_get_display_name(%struct._GimpImage* %4)
  %call2 = call noalias i8* @g_strdup(i8* %call1)
  store i8* %call2, i8** %name, align 8
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
  %13 = load i8*, i8** %name, align 8
  call void @g_value_take_string(%struct._GValue* %arrayidx8, i8* %13)
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.6, %cond.end
  %14 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %14
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @image_get_resolution_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  %xresolution = alloca double, align 8
  %yresolution = alloca double, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store double 0.000000e+00, double* %xresolution, align 8
  store double 0.000000e+00, double* %yresolution, align 8
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
  call void @gimp_image_get_resolution(%struct._GimpImage* %4, double* %xresolution, double* %yresolution)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %6 = load i32, i32* %success, align 4
  %7 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool1 = icmp ne %struct._GError** %7, null
  br i1 %tobool1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %8 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %9 = load %struct._GError*, %struct._GError** %8, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %9, %cond.true ], [ null, %cond.false ]
  %call2 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %5, i32 %6, %struct._GError* %cond)
  store %struct._GValueArray* %call2, %struct._GValueArray** %return_vals, align 8
  %10 = load i32, i32* %success, align 4
  %tobool3 = icmp ne i32 %10, 0
  br i1 %tobool3, label %if.then.4, label %if.end.9

if.then.4:                                        ; preds = %cond.end
  %11 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values5 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %11, i32 0, i32 1
  %12 = load %struct._GValue*, %struct._GValue** %values5, align 8
  %arrayidx6 = getelementptr inbounds %struct._GValue, %struct._GValue* %12, i64 1
  %13 = load double, double* %xresolution, align 8
  call void @g_value_set_double(%struct._GValue* %arrayidx6, double %13)
  %14 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values7 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %14, i32 0, i32 1
  %15 = load %struct._GValue*, %struct._GValue** %values7, align 8
  %arrayidx8 = getelementptr inbounds %struct._GValue, %struct._GValue* %15, i64 2
  %16 = load double, double* %yresolution, align 8
  call void @g_value_set_double(%struct._GValue* %arrayidx8, double %16)
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.4, %cond.end
  %17 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %17
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @image_set_resolution_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %image = alloca %struct._GimpImage*, align 8
  %xresolution = alloca double, align 8
  %yresolution = alloca double, align 8
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
  store double %call3, double* %xresolution, align 8
  %5 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values4 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %5, i32 0, i32 1
  %6 = load %struct._GValue*, %struct._GValue** %values4, align 8
  %arrayidx5 = getelementptr inbounds %struct._GValue, %struct._GValue* %6, i64 2
  %call6 = call double @g_value_get_double(%struct._GValue* %arrayidx5)
  store double %call6, double* %yresolution, align 8
  %7 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then, label %if.end.21

if.then:                                          ; preds = %entry
  %8 = load double, double* %xresolution, align 8
  %call7 = call i32 @finite(double %8) #6
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %lor.lhs.false, label %if.then.18

lor.lhs.false:                                    ; preds = %if.then
  %9 = load double, double* %xresolution, align 8
  %cmp = fcmp olt double %9, 5.000000e-03
  br i1 %cmp, label %if.then.18, label %lor.lhs.false.9

lor.lhs.false.9:                                  ; preds = %lor.lhs.false
  %10 = load double, double* %xresolution, align 8
  %cmp10 = fcmp ogt double %10, 6.553600e+04
  br i1 %cmp10, label %if.then.18, label %lor.lhs.false.11

lor.lhs.false.11:                                 ; preds = %lor.lhs.false.9
  %11 = load double, double* %yresolution, align 8
  %call12 = call i32 @finite(double %11) #6
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %lor.lhs.false.14, label %if.then.18

lor.lhs.false.14:                                 ; preds = %lor.lhs.false.11
  %12 = load double, double* %yresolution, align 8
  %cmp15 = fcmp olt double %12, 5.000000e-03
  br i1 %cmp15, label %if.then.18, label %lor.lhs.false.16

lor.lhs.false.16:                                 ; preds = %lor.lhs.false.14
  %13 = load double, double* %yresolution, align 8
  %cmp17 = fcmp ogt double %13, 6.553600e+04
  br i1 %cmp17, label %if.then.18, label %if.else

if.then.18:                                       ; preds = %lor.lhs.false.16, %lor.lhs.false.14, %lor.lhs.false.11, %lor.lhs.false.9, %lor.lhs.false, %if.then
  %14 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call19 = call i32 @gimp_pdb_error_quark() #6
  %call20 = call i8* @gettext(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.497, i32 0, i32 0)) #5
  call void @g_set_error_literal(%struct._GError** %14, i32 %call19, i32 3, i8* %call20)
  store i32 0, i32* %success, align 4
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false.16
  %15 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %16 = load double, double* %xresolution, align 8
  %17 = load double, double* %yresolution, align 8
  call void @gimp_image_set_resolution(%struct._GimpImage* %15, double %16, double %17)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.18
  br label %if.end.21

if.end.21:                                        ; preds = %if.end, %entry
  %18 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %19 = load i32, i32* %success, align 4
  %20 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool22 = icmp ne %struct._GError** %20, null
  br i1 %tobool22, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.21
  %21 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %22 = load %struct._GError*, %struct._GError** %21, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.21
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %22, %cond.true ], [ null, %cond.false ]
  %call23 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %18, i32 %19, %struct._GError* %cond)
  ret %struct._GValueArray* %call23
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @image_get_unit_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  %unit = alloca i32, align 4
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store i32 0, i32* %unit, align 4
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
  %call1 = call i32 @gimp_image_get_unit(%struct._GimpImage* %4)
  store i32 %call1, i32* %unit, align 4
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
  store %struct._GValueArray* %call3, %struct._GValueArray** %return_vals, align 8
  %10 = load i32, i32* %success, align 4
  %tobool4 = icmp ne i32 %10, 0
  br i1 %tobool4, label %if.then.5, label %if.end.8

if.then.5:                                        ; preds = %cond.end
  %11 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values6 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %11, i32 0, i32 1
  %12 = load %struct._GValue*, %struct._GValue** %values6, align 8
  %arrayidx7 = getelementptr inbounds %struct._GValue, %struct._GValue* %12, i64 1
  %13 = load i32, i32* %unit, align 4
  call void @g_value_set_int(%struct._GValue* %arrayidx7, i32 %13)
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.5, %cond.end
  %14 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %14
}

declare %struct._GParamSpec* @gimp_param_spec_unit(i8*, i8*, i8*, i32, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @image_set_unit_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %image = alloca %struct._GimpImage*, align 8
  %unit = alloca i32, align 4
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
  store i32 %call3, i32* %unit, align 4
  %5 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %7 = load i32, i32* %unit, align 4
  call void @gimp_image_set_unit(%struct._GimpImage* %6, i32 %7)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %9 = load i32, i32* %success, align 4
  %10 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool4 = icmp ne %struct._GError** %10, null
  br i1 %tobool4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %11 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %12 = load %struct._GError*, %struct._GError** %11, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %12, %cond.true ], [ null, %cond.false ]
  %call5 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %8, i32 %9, %struct._GError* %cond)
  ret %struct._GValueArray* %call5
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @image_get_tattoo_state_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  %tattoo_state = alloca i32, align 4
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store i32 0, i32* %tattoo_state, align 4
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
  %call1 = call i32 @gimp_image_get_tattoo_state(%struct._GimpImage* %4)
  store i32 %call1, i32* %tattoo_state, align 4
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
  store %struct._GValueArray* %call3, %struct._GValueArray** %return_vals, align 8
  %10 = load i32, i32* %success, align 4
  %tobool4 = icmp ne i32 %10, 0
  br i1 %tobool4, label %if.then.5, label %if.end.8

if.then.5:                                        ; preds = %cond.end
  %11 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values6 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %11, i32 0, i32 1
  %12 = load %struct._GValue*, %struct._GValue** %values6, align 8
  %arrayidx7 = getelementptr inbounds %struct._GValue, %struct._GValue* %12, i64 1
  %13 = load i32, i32* %tattoo_state, align 4
  call void @g_value_set_uint(%struct._GValue* %arrayidx7, i32 %13)
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.5, %cond.end
  %14 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %14
}

declare %struct._GParamSpec* @g_param_spec_uint(i8*, i8*, i8*, i32, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @image_set_tattoo_state_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %image = alloca %struct._GimpImage*, align 8
  %tattoo_state = alloca i32, align 4
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
  %call3 = call i32 @g_value_get_uint(%struct._GValue* %arrayidx2)
  store i32 %call3, i32* %tattoo_state, align 4
  %5 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %7 = load i32, i32* %tattoo_state, align 4
  %call4 = call i32 @gimp_image_set_tattoo_state(%struct._GimpImage* %6, i32 %7)
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
  ret %struct._GValueArray* %call6
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @image_get_layer_by_tattoo_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  %layer = alloca %struct._GimpLayer*, align 8
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
  %call = call %struct._GimpImage* @gimp_value_get_image(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpImage* %call, %struct._GimpImage** %image, align 8
  %3 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %3, i32 0, i32 1
  %4 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %4, i64 1
  %call3 = call i32 @g_value_get_uint(%struct._GValue* %arrayidx2)
  store i32 %call3, i32* %tattoo, align 4
  %5 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %7 = load i32, i32* %tattoo, align 4
  %call4 = call %struct._GimpLayer* @gimp_image_get_layer_by_tattoo(%struct._GimpImage* %6, i32 %7)
  store %struct._GimpLayer* %call4, %struct._GimpLayer** %layer, align 8
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
  %16 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  call void @gimp_value_set_layer(%struct._GValue* %arrayidx10, %struct._GimpLayer* %16)
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.8, %cond.end
  %17 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %17
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @image_get_channel_by_tattoo_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  %3 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %3, i32 0, i32 1
  %4 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %4, i64 1
  %call3 = call i32 @g_value_get_uint(%struct._GValue* %arrayidx2)
  store i32 %call3, i32* %tattoo, align 4
  %5 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %7 = load i32, i32* %tattoo, align 4
  %call4 = call %struct._GimpChannel* @gimp_image_get_channel_by_tattoo(%struct._GimpImage* %6, i32 %7)
  store %struct._GimpChannel* %call4, %struct._GimpChannel** %channel, align 8
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
  %16 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  call void @gimp_value_set_channel(%struct._GValue* %arrayidx10, %struct._GimpChannel* %16)
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.8, %cond.end
  %17 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %17
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @image_get_vectors_by_tattoo_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  %call3 = call i32 @g_value_get_uint(%struct._GValue* %arrayidx2)
  store i32 %call3, i32* %tattoo, align 4
  %5 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %7 = load i32, i32* %tattoo, align 4
  %call4 = call %struct._GimpVectors* @gimp_image_get_vectors_by_tattoo(%struct._GimpImage* %6, i32 %7)
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

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @image_get_layer_by_name_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  %layer = alloca %struct._GimpLayer*, align 8
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
  %call4 = call %struct._GimpLayer* @gimp_image_get_layer_by_name(%struct._GimpImage* %6, i8* %7)
  store %struct._GimpLayer* %call4, %struct._GimpLayer** %layer, align 8
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
  %16 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  call void @gimp_value_set_layer(%struct._GValue* %arrayidx10, %struct._GimpLayer* %16)
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.8, %cond.end
  %17 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %17
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @image_get_channel_by_name_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  %call4 = call %struct._GimpChannel* @gimp_image_get_channel_by_name(%struct._GimpImage* %6, i8* %7)
  store %struct._GimpChannel* %call4, %struct._GimpChannel** %channel, align 8
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
  %16 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  call void @gimp_value_set_channel(%struct._GValue* %arrayidx10, %struct._GimpChannel* %16)
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.8, %cond.end
  %17 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %17
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @image_get_vectors_by_name_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  %call4 = call %struct._GimpVectors* @gimp_image_get_vectors_by_name(%struct._GimpImage* %6, i8* %7)
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

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @image_attach_parasite_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %image = alloca %struct._GimpImage*, align 8
  %parasite = alloca %struct._GimpParasite*, align 8
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
  %call3 = call i8* @g_value_get_boxed(%struct._GValue* %arrayidx2)
  %5 = bitcast i8* %call3 to %struct._GimpParasite*
  store %struct._GimpParasite* %5, %struct._GimpParasite** %parasite, align 8
  %6 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %8 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  call void @gimp_image_parasite_attach(%struct._GimpImage* %7, %struct._GimpParasite* %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %10 = load i32, i32* %success, align 4
  %11 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool4 = icmp ne %struct._GError** %11, null
  br i1 %tobool4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %12 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %13 = load %struct._GError*, %struct._GError** %12, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %13, %cond.true ], [ null, %cond.false ]
  %call5 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %9, i32 %10, %struct._GError* %cond)
  ret %struct._GValueArray* %call5
}

declare %struct._GParamSpec* @gimp_param_spec_parasite(i8*, i8*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @image_detach_parasite_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %7 = load i8*, i8** %name, align 8
  call void @gimp_image_parasite_detach(%struct._GimpImage* %6, i8* %7)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %9 = load i32, i32* %success, align 4
  %10 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool4 = icmp ne %struct._GError** %10, null
  br i1 %tobool4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %11 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %12 = load %struct._GError*, %struct._GError** %11, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %12, %cond.true ], [ null, %cond.false ]
  %call5 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %8, i32 %9, %struct._GError* %cond)
  ret %struct._GValueArray* %call5
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @image_get_parasite_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  %parasite = alloca %struct._GimpParasite*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store %struct._GimpParasite* null, %struct._GimpParasite** %parasite, align 8
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
  %call4 = call %struct._GimpParasite* @gimp_image_parasite_find(%struct._GimpImage* %6, i8* %7)
  %call5 = call %struct._GimpParasite* @gimp_parasite_copy(%struct._GimpParasite* %call4)
  store %struct._GimpParasite* %call5, %struct._GimpParasite** %parasite, align 8
  %8 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  %tobool6 = icmp ne %struct._GimpParasite* %8, null
  br i1 %tobool6, label %if.end, label %if.then.7

if.then.7:                                        ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.7, %if.then
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %entry
  %9 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %10 = load i32, i32* %success, align 4
  %11 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool9 = icmp ne %struct._GError** %11, null
  br i1 %tobool9, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.8
  %12 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %13 = load %struct._GError*, %struct._GError** %12, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %13, %cond.true ], [ null, %cond.false ]
  %call10 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %9, i32 %10, %struct._GError* %cond)
  store %struct._GValueArray* %call10, %struct._GValueArray** %return_vals, align 8
  %14 = load i32, i32* %success, align 4
  %tobool11 = icmp ne i32 %14, 0
  br i1 %tobool11, label %if.then.12, label %if.end.15

if.then.12:                                       ; preds = %cond.end
  %15 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values13 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %15, i32 0, i32 1
  %16 = load %struct._GValue*, %struct._GValue** %values13, align 8
  %arrayidx14 = getelementptr inbounds %struct._GValue, %struct._GValue* %16, i64 1
  %17 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  %18 = bitcast %struct._GimpParasite* %17 to i8*
  call void @g_value_take_boxed(%struct._GValue* %arrayidx14, i8* %18)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.12, %cond.end
  %19 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %19
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @image_get_parasite_list_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  %num_parasites = alloca i32, align 4
  %parasites = alloca i8**, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store i32 0, i32* %num_parasites, align 4
  store i8** null, i8*** %parasites, align 8
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
  %call1 = call i8** @gimp_image_parasite_list(%struct._GimpImage* %4, i32* %num_parasites)
  store i8** %call1, i8*** %parasites, align 8
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
  store %struct._GValueArray* %call3, %struct._GValueArray** %return_vals, align 8
  %10 = load i32, i32* %success, align 4
  %tobool4 = icmp ne i32 %10, 0
  br i1 %tobool4, label %if.then.5, label %if.end.10

if.then.5:                                        ; preds = %cond.end
  %11 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values6 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %11, i32 0, i32 1
  %12 = load %struct._GValue*, %struct._GValue** %values6, align 8
  %arrayidx7 = getelementptr inbounds %struct._GValue, %struct._GValue* %12, i64 1
  %13 = load i32, i32* %num_parasites, align 4
  call void @g_value_set_int(%struct._GValue* %arrayidx7, i32 %13)
  %14 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values8 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %14, i32 0, i32 1
  %15 = load %struct._GValue*, %struct._GValue** %values8, align 8
  %arrayidx9 = getelementptr inbounds %struct._GValue, %struct._GValue* %15, i64 2
  %16 = load i8**, i8*** %parasites, align 8
  %17 = load i32, i32* %num_parasites, align 4
  %conv = sext i32 %17 to i64
  call void @gimp_value_take_stringarray(%struct._GValue* %arrayidx9, i8** %16, i64 %conv)
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.5, %cond.end
  %18 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %18
}

declare %struct._GParamSpec* @gimp_param_spec_string_array(i8*, i8*, i8*, i32) #1

declare %struct._GimpImage* @gimp_value_get_image(%struct._GValue*, %struct._Gimp*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_image_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #3

declare %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure*, i32, %struct._GError*) #1

declare void @g_value_set_boolean(%struct._GValue*, i32) #1

declare %struct._GList* @gimp_get_image_iter(%struct._Gimp*) #1

declare i32 @g_list_length(%struct._GList*) #1

declare noalias i8* @g_malloc_n(i64, i64) #1

declare i32 @gimp_image_get_ID(%struct._GimpImage*) #1

declare void @g_value_set_int(%struct._GValue*, i32) #1

declare void @gimp_value_take_int32array(%struct._GValue*, i32*, i64) #1

declare i32 @g_value_get_int(%struct._GValue*) #1

declare i32 @g_value_get_enum(%struct._GValue*) #1

declare %struct._GimpImage* @gimp_create_image(%struct._Gimp*, i32, i32, i32, i32) #1

declare void @gimp_value_set_image(%struct._GValue*, %struct._GimpImage*) #1

declare %struct._GimpImage* @gimp_image_duplicate(%struct._GimpImage*) #1

declare i32 @gimp_image_get_display_count(%struct._GimpImage*) #1

declare i32 @gimp_image_base_type(%struct._GimpImage*) #1

declare void @g_value_set_enum(%struct._GValue*, i32) #1

declare i32 @gimp_image_get_width(%struct._GimpImage*) #1

declare i32 @gimp_image_get_height(%struct._GimpImage*) #1

declare void @gimp_image_resize(%struct._GimpImage*, %struct._GimpContext*, i32, i32, i32, i32, %struct._GimpProgress*) #1

declare void @gimp_image_resize_to_layers(%struct._GimpImage*, %struct._GimpContext*, %struct._GimpProgress*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_pdb_context_get_type() #2

declare %struct._GimpProgress* @gimp_progress_start(%struct._GimpProgress*, i8*, i32) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

declare void @gimp_image_scale(%struct._GimpImage*, i32, i32, i32, %struct._GimpProgress*) #1

declare void @gimp_progress_end(%struct._GimpProgress*) #1

declare void @gimp_image_crop(%struct._GimpImage*, %struct._GimpContext*, i32, i32, i32, i32, i32, i32) #1

declare void @gimp_image_flip(%struct._GimpImage*, %struct._GimpContext*, i32, %struct._GimpProgress*) #1

declare void @gimp_image_rotate(%struct._GimpImage*, %struct._GimpContext*, i32, %struct._GimpProgress*) #1

declare %struct._GList* @gimp_image_get_layer_iter(%struct._GimpImage*) #1

declare i32 @gimp_item_get_ID(%struct._GimpItem*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_item_get_type() #2

declare %struct._GList* @gimp_image_get_channel_iter(%struct._GimpImage*) #1

declare %struct._GList* @gimp_image_get_vectors_iter(%struct._GimpImage*) #1

declare %struct._GimpDrawable* @gimp_image_get_active_drawable(%struct._GimpImage*) #1

declare void @gimp_value_set_drawable(%struct._GValue*, %struct._GimpDrawable*) #1

declare %struct._GimpChannel* @gimp_image_unset_active_channel(%struct._GimpImage*) #1

declare %struct._GimpLayer* @gimp_image_get_floating_selection(%struct._GimpImage*) #1

declare void @gimp_value_set_layer(%struct._GValue*, %struct._GimpLayer*) #1

declare %struct._GimpDrawable* @gimp_layer_get_floating_sel_drawable(%struct._GimpLayer*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #5

declare %struct._GimpDrawable* @gimp_value_get_drawable(%struct._GValue*, %struct._Gimp*) #1

declare double @g_value_get_double(%struct._GValue*) #1

declare i32 @g_value_get_boolean(%struct._GValue*) #1

declare %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem*) #1

declare void @gimp_pickable_flush(%struct._GimpPickable*) #1

declare %struct._GimpProjection* @gimp_image_get_projection(%struct._GimpImage*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_pickable_interface_get_type() #2

declare i32 @gimp_image_pick_color(%struct._GimpImage*, %struct._GimpDrawable*, i32, i32, i32, i32, double, i32*, %struct._GimpRGB*, i32*) #1

declare void @gimp_value_set_rgb(%struct._GValue*, %struct._GimpRGB*) #1

declare %struct._GimpLayer* @gimp_image_pick_layer(%struct._GimpImage*, i32, i32) #1

declare %struct._GimpLayer* @gimp_value_get_layer(%struct._GValue*, %struct._Gimp*) #1

declare i32 @gimp_pdb_item_is_floating(%struct._GimpItem*, %struct._GimpImage*, %struct._GError**) #1

declare i32 @gimp_pdb_image_is_base_type(%struct._GimpImage*, i32, %struct._GError**) #1

declare i32 @gimp_drawable_type(%struct._GimpDrawable*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_drawable_get_type() #2

declare i32 @gimp_image_add_layer(%struct._GimpImage*, %struct._GimpLayer*, %struct._GimpLayer*, i32, i32) #1

declare i32 @gimp_pdb_item_is_in_tree(%struct._GimpItem*, %struct._GimpImage*, i32, %struct._GError**) #1

declare i32 @gimp_pdb_item_is_group(%struct._GimpItem*, %struct._GError**) #1

declare i32 @gimp_pdb_item_is_attached(%struct._GimpItem*, %struct._GimpImage*, i32, %struct._GError**) #1

declare void @gimp_image_remove_layer(%struct._GimpImage*, %struct._GimpLayer*, i32, %struct._GimpLayer*) #1

declare %struct._GimpChannel* @gimp_value_get_channel(%struct._GValue*, %struct._Gimp*) #1

declare i32 @gimp_image_add_channel(%struct._GimpImage*, %struct._GimpChannel*, %struct._GimpChannel*, i32, i32) #1

declare void @gimp_image_remove_channel(%struct._GimpImage*, %struct._GimpChannel*, i32, %struct._GimpChannel*) #1

declare %struct._GimpVectors* @gimp_value_get_vectors(%struct._GValue*, %struct._Gimp*) #1

declare i32 @gimp_image_add_vectors(%struct._GimpImage*, %struct._GimpVectors*, %struct._GimpVectors*, i32, i32) #1

declare void @gimp_image_remove_vectors(%struct._GimpImage*, %struct._GimpVectors*, i32, %struct._GimpVectors*) #1

declare %struct._GimpItem* @gimp_value_get_item(%struct._GValue*, %struct._Gimp*) #1

declare i32 @gimp_item_get_index(%struct._GimpItem*) #1

declare i32 @gimp_image_raise_item(%struct._GimpImage*, %struct._GimpItem*, %struct._GError**) #1

declare i32 @gimp_image_lower_item(%struct._GimpImage*, %struct._GimpItem*, %struct._GError**) #1

declare i32 @gimp_image_raise_item_to_top(%struct._GimpImage*, %struct._GimpItem*) #1

declare i32 @gimp_image_lower_item_to_bottom(%struct._GimpImage*, %struct._GimpItem*) #1

declare i32 @gimp_pdb_item_is_in_same_tree(%struct._GimpItem*, %struct._GimpItem*, %struct._GimpImage*, %struct._GError**) #1

declare i32 @gimp_pdb_item_is_not_ancestor(%struct._GimpItem*, %struct._GimpItem*, %struct._GError**) #1

declare i32 @gimp_image_reorder_item(%struct._GimpImage*, %struct._GimpItem*, %struct._GimpItem*, i32, i32, i8*) #1

declare %struct._GimpLayer* @gimp_image_flatten(%struct._GimpImage*, %struct._GimpContext*, %struct._GError**) #1

declare %struct._GimpLayer* @gimp_image_merge_visible_layers(%struct._GimpImage*, %struct._GimpContext*, i32, i32, i32) #1

declare %struct._GimpLayer* @gimp_image_merge_down(%struct._GimpImage*, %struct._GimpLayer*, %struct._GimpContext*, i32, %struct._GError**) #1

declare %struct._GimpLayerMask* @gimp_value_get_layer_mask(%struct._GValue*, %struct._Gimp*) #1

declare i32 @gimp_pdb_item_is_not_group(%struct._GimpItem*, %struct._GError**) #1

declare %struct._GimpLayerMask* @gimp_layer_add_mask(%struct._GimpLayer*, %struct._GimpLayerMask*, i32, %struct._GError**) #1

declare %struct._GimpLayerMask* @gimp_layer_get_mask(%struct._GimpLayer*) #1

declare void @gimp_layer_apply_mask(%struct._GimpLayer*, i32, i32) #1

declare i32 @gimp_image_get_colormap_size(%struct._GimpImage*) #1

declare noalias i8* @g_memdup(i8*, i32) #1

declare i8* @gimp_image_get_colormap(%struct._GimpImage*) #1

declare void @gimp_value_take_int8array(%struct._GValue*, i8*, i64) #1

declare i8* @gimp_value_get_int8array(%struct._GValue*) #1

declare void @gimp_image_set_colormap(%struct._GimpImage*, i8*, i32, i32) #1

declare void @gimp_image_clean_all(%struct._GimpImage*) #1

declare i32 @gimp_image_is_dirty(%struct._GimpImage*) #1

declare %struct._TempBuf* @gimp_viewable_get_new_preview(%struct._GimpViewable*, %struct._GimpContext*, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_viewable_get_type() #2

declare i8* @temp_buf_get_data(%struct._TempBuf*) #1

declare void @temp_buf_free(%struct._TempBuf*) #1

declare %struct._GimpLayer* @gimp_image_get_active_layer(%struct._GimpImage*) #1

declare %struct._GimpLayer* @gimp_image_set_active_layer(%struct._GimpImage*, %struct._GimpLayer*) #1

declare %struct._GimpChannel* @gimp_image_get_active_channel(%struct._GimpImage*) #1

declare void @gimp_value_set_channel(%struct._GValue*, %struct._GimpChannel*) #1

declare %struct._GimpChannel* @gimp_image_set_active_channel(%struct._GimpImage*, %struct._GimpChannel*) #1

declare %struct._GimpVectors* @gimp_image_get_active_vectors(%struct._GimpImage*) #1

declare void @gimp_value_set_vectors(%struct._GValue*, %struct._GimpVectors*) #1

declare %struct._GimpVectors* @gimp_image_set_active_vectors(%struct._GimpImage*, %struct._GimpVectors*) #1

declare %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_selection_get_type() #2

declare void @gimp_value_set_selection(%struct._GValue*, %struct._GimpSelection*) #1

declare i32 @gimp_image_get_component_active(%struct._GimpImage*, i32) #1

declare void @gimp_image_set_component_active(%struct._GimpImage*, i32, i32) #1

declare i32 @gimp_image_get_component_visible(%struct._GimpImage*, i32) #1

declare void @gimp_image_set_component_visible(%struct._GimpImage*, i32, i32) #1

declare i8* @gimp_image_get_any_uri(%struct._GimpImage*) #1

declare noalias i8* @g_filename_from_uri(i8*, i8**, %struct._GError**) #1

declare void @g_value_take_string(%struct._GValue*, i8*) #1

declare i8* @g_value_get_string(%struct._GValue*) #1

declare noalias i8* @g_filename_to_utf8(i8*, i64, i64*, i64*, %struct._GError**) #1

declare noalias i8* @g_filename_from_utf8(i8*, i64, i64*, i64*, %struct._GError**) #1

declare void @g_free(i8*) #1

declare void @gimp_image_set_filename(%struct._GimpImage*, i8*) #1

declare noalias i8* @g_strdup(i8*) #1

declare i8* @gimp_image_get_uri(%struct._GimpImage*) #1

declare i8* @gimp_image_get_imported_uri(%struct._GimpImage*) #1

declare i8* @gimp_image_get_exported_uri(%struct._GimpImage*) #1

declare i8* @gimp_image_get_display_name(%struct._GimpImage*) #1

declare void @gimp_image_get_resolution(%struct._GimpImage*, double*, double*) #1

declare void @g_value_set_double(%struct._GValue*, double) #1

; Function Attrs: nounwind readnone
declare i32 @finite(double) #2

declare void @g_set_error_literal(%struct._GError**, i32, i32, i8*) #1

; Function Attrs: nounwind readnone
declare i32 @gimp_pdb_error_quark() #2

declare void @gimp_image_set_resolution(%struct._GimpImage*, double, double) #1

declare i32 @gimp_image_get_unit(%struct._GimpImage*) #1

declare void @gimp_image_set_unit(%struct._GimpImage*, i32) #1

declare i32 @gimp_image_get_tattoo_state(%struct._GimpImage*) #1

declare void @g_value_set_uint(%struct._GValue*, i32) #1

declare i32 @g_value_get_uint(%struct._GValue*) #1

declare i32 @gimp_image_set_tattoo_state(%struct._GimpImage*, i32) #1

declare %struct._GimpLayer* @gimp_image_get_layer_by_tattoo(%struct._GimpImage*, i32) #1

declare %struct._GimpChannel* @gimp_image_get_channel_by_tattoo(%struct._GimpImage*, i32) #1

declare %struct._GimpVectors* @gimp_image_get_vectors_by_tattoo(%struct._GimpImage*, i32) #1

declare %struct._GimpLayer* @gimp_image_get_layer_by_name(%struct._GimpImage*, i8*) #1

declare %struct._GimpChannel* @gimp_image_get_channel_by_name(%struct._GimpImage*, i8*) #1

declare %struct._GimpVectors* @gimp_image_get_vectors_by_name(%struct._GimpImage*, i8*) #1

declare i8* @g_value_get_boxed(%struct._GValue*) #1

declare void @gimp_image_parasite_attach(%struct._GimpImage*, %struct._GimpParasite*) #1

declare void @gimp_image_parasite_detach(%struct._GimpImage*, i8*) #1

declare %struct._GimpParasite* @gimp_parasite_copy(%struct._GimpParasite*) #1

declare %struct._GimpParasite* @gimp_image_parasite_find(%struct._GimpImage*, i8*) #1

declare void @g_value_take_boxed(%struct._GValue*, i8*) #1

declare i8** @gimp_image_parasite_list(%struct._GimpImage*, i32*) #1

declare void @gimp_value_take_stringarray(%struct._GValue*, i8**, i64) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
