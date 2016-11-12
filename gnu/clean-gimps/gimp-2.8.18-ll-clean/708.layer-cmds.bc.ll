; ModuleID = './app/pdb/layer-cmds.bc'
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
%struct._GimpContainer = type opaque
%struct._GimpTemplate = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpContext = type { %struct._GimpViewable, %struct._Gimp*, %struct._GimpContext*, i32, i32, %struct._GimpImage*, i8*, %struct._GimpToolInfo*, i8*, %struct._GimpPaintInfo*, i8*, %struct._GimpRGB, %struct._GimpRGB, double, i32, %struct._GimpBrush*, i8*, %struct._GimpDynamics*, i8*, %struct._GimpPattern*, i8*, %struct._GimpGradient*, i8*, %struct._GimpPalette*, i8*, %struct._GimpToolPreset*, i8*, %struct._GimpFont*, i8*, %struct._GimpBuffer*, i8*, %struct._GimpImagefile*, i8*, %struct._GimpTemplate*, i8* }
%struct._GimpRGB = type { double, double, double, double }
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
%struct._GimpLayer = type { %struct._GimpDrawable, double, i32, i32, %struct._GimpLayerMask*, %struct._GeglNode*, %struct.anon }
%struct._GimpDrawable = type { %struct._GimpItem, %struct._GimpDrawablePrivate* }
%struct._GimpItem = type { %struct._GimpViewable }
%struct._GimpDrawablePrivate = type opaque
%struct._GimpLayerMask = type { %struct._GimpChannel, %struct._GimpLayer*, i32, i32, i32 }
%struct._GimpChannel = type { %struct._GimpDrawable, %struct._GimpRGB, i32, %struct._GeglNode*, %struct._GeglNode*, %struct._GeglNode*, i32, %struct._BoundSeg*, %struct._BoundSeg*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._BoundSeg = type opaque
%struct._GeglNode = type opaque
%struct.anon = type { %struct._GimpDrawable*, i32, %struct._BoundSeg*, i32 }
%struct._GimpPickable = type opaque
%struct._GimpProjection = type opaque
%struct._TileManager = type opaque
%struct._GimpPDBContext = type { %struct._GimpContext, i32, i32, double, double, i32, i32, double, i32, i32, i32, i32, i32, %struct._GimpContainer* }

@.str = private unnamed_addr constant [15 x i8] c"gimp-layer-new\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Create a new layer.\00", align 1
@.str.2 = private unnamed_addr constant [373 x i8] c"This procedure creates a new layer with the specified width, height, and type. Name, opacity, and mode are also supplied parameters. The new layer still needs to be added to the image, as this is not automatic. Add the new layer with the 'gimp-image-insert-layer' command. Other attributes such as layer mask modes, and offsets should be set with explicit procedure calls.\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Spencer Kimball & Peter Mattis\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"1995-1996\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"The image to which to add the layer\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"width\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"The layer width\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"height\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"The layer height\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"The layer type\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"The layer name\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"opacity\00", align 1
@.str.16 = private unnamed_addr constant [18 x i8] c"The layer opacity\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.18 = private unnamed_addr constant [27 x i8] c"The layer combination mode\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"layer\00", align 1
@.str.20 = private unnamed_addr constant [24 x i8] c"The newly created layer\00", align 1
@.str.21 = private unnamed_addr constant [28 x i8] c"gimp-layer-new-from-visible\00", align 1
@.str.22 = private unnamed_addr constant [53 x i8] c"Create a new layer from what is visible in an image.\00", align 1
@.str.23 = private unnamed_addr constant [328 x i8] c"This procedure creates a new layer from what is visible in the given image. The new layer still needs to be added to the destination image, as this is not automatic. Add the new layer with the 'gimp-image-insert-layer' command. Other attributes such as layer mask modes, and offsets should be set with explicit procedure calls.\00", align 1
@.str.24 = private unnamed_addr constant [29 x i8] c"Sven Neumann <sven@gimp.org>\00", align 1
@.str.25 = private unnamed_addr constant [13 x i8] c"Sven Neumann\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"2008\00", align 1
@.str.27 = private unnamed_addr constant [50 x i8] c"The source image from where the content is copied\00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c"dest-image\00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"dest image\00", align 1
@.str.30 = private unnamed_addr constant [48 x i8] c"The destination image to which to add the layer\00", align 1
@.str.31 = private unnamed_addr constant [29 x i8] c"gimp-layer-new-from-drawable\00", align 1
@.str.32 = private unnamed_addr constant [52 x i8] c"Create a new layer by copying an existing drawable.\00", align 1
@.str.33 = private unnamed_addr constant [312 x i8] c"This procedure creates a new layer as a copy of the specified drawable. The new layer still needs to be added to the image, as this is not automatic. Add the new layer with the 'gimp-image-insert-layer' command. Other attributes such as layer mask modes, and offsets should be set with explicit procedure calls.\00", align 1
@.str.34 = private unnamed_addr constant [9 x i8] c"drawable\00", align 1
@.str.35 = private unnamed_addr constant [55 x i8] c"The source drawable from where the new layer is copied\00", align 1
@.str.36 = private unnamed_addr constant [11 x i8] c"layer-copy\00", align 1
@.str.37 = private unnamed_addr constant [11 x i8] c"layer copy\00", align 1
@.str.38 = private unnamed_addr constant [23 x i8] c"The newly copied layer\00", align 1
@.str.39 = private unnamed_addr constant [21 x i8] c"gimp-layer-group-new\00", align 1
@.str.40 = private unnamed_addr constant [26 x i8] c"Create a new layer group.\00", align 1
@.str.41 = private unnamed_addr constant [366 x i8] c"This procedure creates a new layer group. Attributes such as layer mode and opacity should be set with explicit procedure calls. Add the new layer group (which is a kind of layer) with the 'gimp-image-insert-layer' command. Other procedures useful with layer groups: 'gimp-image-reorder-item', 'gimp-item-get-parent', 'gimp-item-get-children', 'gimp-item-is-group'.\00", align 1
@.str.42 = private unnamed_addr constant [42 x i8] c"Barak Itkin <lightningismyname@gmail.com>\00", align 1
@.str.43 = private unnamed_addr constant [12 x i8] c"Barak Itkin\00", align 1
@.str.44 = private unnamed_addr constant [5 x i8] c"2010\00", align 1
@.str.45 = private unnamed_addr constant [42 x i8] c"The image to which to add the layer group\00", align 1
@.str.46 = private unnamed_addr constant [12 x i8] c"layer-group\00", align 1
@.str.47 = private unnamed_addr constant [12 x i8] c"layer group\00", align 1
@.str.48 = private unnamed_addr constant [30 x i8] c"The newly created layer group\00", align 1
@.str.49 = private unnamed_addr constant [16 x i8] c"gimp-layer-copy\00", align 1
@.str.50 = private unnamed_addr constant [14 x i8] c"Copy a layer.\00", align 1
@.str.51 = private unnamed_addr constant [346 x i8] c"This procedure copies the specified layer and returns the copy. The newly copied layer is for use within the original layer's image. It should not be subsequently added to any other image. The copied layer can optionally have an added alpha channel. This is useful if the background layer in an image is being copied and added to the same image.\00", align 1
@.str.52 = private unnamed_addr constant [18 x i8] c"The layer to copy\00", align 1
@.str.53 = private unnamed_addr constant [10 x i8] c"add-alpha\00", align 1
@.str.54 = private unnamed_addr constant [10 x i8] c"add alpha\00", align 1
@.str.55 = private unnamed_addr constant [41 x i8] c"Add an alpha channel to the copied layer\00", align 1
@.str.56 = private unnamed_addr constant [21 x i8] c"gimp-layer-add-alpha\00", align 1
@.str.57 = private unnamed_addr constant [66 x i8] c"Add an alpha channel to the layer if it doesn't already have one.\00", align 1
@.str.58 = private unnamed_addr constant [304 x i8] c"This procedure adds an additional component to the specified layer if it does not already possess an alpha channel. An alpha channel makes it possible to clear and erase to transparency, instead of the background color. This transforms layers of type RGB to RGBA, GRAY to GRAYA, and INDEXED to INDEXEDA.\00", align 1
@.str.59 = private unnamed_addr constant [10 x i8] c"The layer\00", align 1
@.str.60 = private unnamed_addr constant [19 x i8] c"gimp-layer-flatten\00", align 1
@.str.61 = private unnamed_addr constant [55 x i8] c"Remove the alpha channel from the layer if it has one.\00", align 1
@.str.62 = private unnamed_addr constant [226 x i8] c"This procedure removes the alpha channel from a layer, blending all (partially) transparent pixels in the layer against the background color. This transforms layers of type RGBA to RGB, GRAYA to GRAY, and INDEXEDA to INDEXED.\00", align 1
@.str.63 = private unnamed_addr constant [34 x i8] c"Michael Natterer <mitch@gimp.org>\00", align 1
@.str.64 = private unnamed_addr constant [17 x i8] c"Michael Natterer\00", align 1
@.str.65 = private unnamed_addr constant [5 x i8] c"2007\00", align 1
@.str.66 = private unnamed_addr constant [17 x i8] c"gimp-layer-scale\00", align 1
@.str.67 = private unnamed_addr constant [56 x i8] c"Scale the layer using the default interpolation method.\00", align 1
@.str.68 = private unnamed_addr constant [362 x i8] c"This procedure scales the layer so that its new width and height are equal to the supplied parameters. The 'local-origin' parameter specifies whether to scale from the center of the layer, or from the image origin. This operation only works if the layer has been added to an image. The interpolation method used can be set with 'gimp-context-set-interpolation'.\00", align 1
@.str.69 = private unnamed_addr constant [10 x i8] c"new-width\00", align 1
@.str.70 = private unnamed_addr constant [10 x i8] c"new width\00", align 1
@.str.71 = private unnamed_addr constant [16 x i8] c"New layer width\00", align 1
@.str.72 = private unnamed_addr constant [11 x i8] c"new-height\00", align 1
@.str.73 = private unnamed_addr constant [11 x i8] c"new height\00", align 1
@.str.74 = private unnamed_addr constant [17 x i8] c"New layer height\00", align 1
@.str.75 = private unnamed_addr constant [13 x i8] c"local-origin\00", align 1
@.str.76 = private unnamed_addr constant [13 x i8] c"local origin\00", align 1
@.str.77 = private unnamed_addr constant [52 x i8] c"Use a local origin (as opposed to the image origin)\00", align 1
@.str.78 = private unnamed_addr constant [22 x i8] c"gimp-layer-scale-full\00", align 1
@.str.79 = private unnamed_addr constant [44 x i8] c"Deprecated: Use 'gimp-layer-scale' instead.\00", align 1
@.str.80 = private unnamed_addr constant [14 x i8] c"interpolation\00", align 1
@.str.81 = private unnamed_addr constant [22 x i8] c"Type of interpolation\00", align 1
@.str.82 = private unnamed_addr constant [18 x i8] c"gimp-layer-resize\00", align 1
@.str.83 = private unnamed_addr constant [43 x i8] c"Resize the layer to the specified extents.\00", align 1
@.str.84 = private unnamed_addr constant [258 x i8] c"This procedure resizes the layer so that its new width and height are equal to the supplied parameters. Offsets are also provided which describe the position of the previous layer's content. This operation only works if the layer has been added to an image.\00", align 1
@.str.85 = private unnamed_addr constant [5 x i8] c"offx\00", align 1
@.str.86 = private unnamed_addr constant [70 x i8] c"x offset between upper left corner of old and new layers: (old - new)\00", align 1
@.str.87 = private unnamed_addr constant [5 x i8] c"offy\00", align 1
@.str.88 = private unnamed_addr constant [70 x i8] c"y offset between upper left corner of old and new layers: (old - new)\00", align 1
@.str.89 = private unnamed_addr constant [32 x i8] c"gimp-layer-resize-to-image-size\00", align 1
@.str.90 = private unnamed_addr constant [34 x i8] c"Resize a layer to the image size.\00", align 1
@.str.91 = private unnamed_addr constant [125 x i8] c"This procedure resizes the layer so that it's new width and height are equal to the width and height of its image container.\00", align 1
@.str.92 = private unnamed_addr constant [13 x i8] c"Manish Singh\00", align 1
@.str.93 = private unnamed_addr constant [5 x i8] c"2003\00", align 1
@.str.94 = private unnamed_addr constant [20 x i8] c"The layer to resize\00", align 1
@.str.95 = private unnamed_addr constant [21 x i8] c"gimp-layer-translate\00", align 1
@.str.96 = private unnamed_addr constant [46 x i8] c"Translate the layer by the specified offsets.\00", align 1
@.str.97 = private unnamed_addr constant [364 x i8] c"This procedure translates the layer by the amounts specified in the x and y arguments. These can be negative, and are considered offsets from the current position. This command only works if the layer has been added to an image. All additional layers contained in the image which have the linked flag set to TRUE w ill also be translated by the specified offsets.\00", align 1
@.str.98 = private unnamed_addr constant [22 x i8] c"Offset in x direction\00", align 1
@.str.99 = private unnamed_addr constant [22 x i8] c"Offset in y direction\00", align 1
@.str.100 = private unnamed_addr constant [23 x i8] c"gimp-layer-set-offsets\00", align 1
@.str.101 = private unnamed_addr constant [23 x i8] c"Set the layer offsets.\00", align 1
@.str.102 = private unnamed_addr constant [199 x i8] c"This procedure sets the offsets for the specified layer. The offsets are relative to the image origin and can be any values. This operation is valid only on layers which have been added to an image.\00", align 1
@.str.103 = private unnamed_addr constant [23 x i8] c"gimp-layer-create-mask\00", align 1
@.str.104 = private unnamed_addr constant [55 x i8] c"Create a layer mask for the specified specified layer.\00", align 1
@.str.105 = private unnamed_addr constant [631 x i8] c"This procedure creates a layer mask for the specified layer. Layer masks serve as an additional alpha channel for a layer. A number of different types of masks are allowed for initialisation: completely white masks (which will leave the layer fully visible), completely black masks (which will give the layer complete transparency, the layer's already existing alpha channel (which will leave the layer fully visible, but which may be more useful than a white mask), the current selection or a grayscale copy of the layer. The layer mask still needs to be added to the layer. This can be done with a call to 'gimp-layer-add-mask'.\00", align 1
@.str.106 = private unnamed_addr constant [35 x i8] c"The layer to which to add the mask\00", align 1
@.str.107 = private unnamed_addr constant [10 x i8] c"mask-type\00", align 1
@.str.108 = private unnamed_addr constant [10 x i8] c"mask type\00", align 1
@.str.109 = private unnamed_addr constant [17 x i8] c"The type of mask\00", align 1
@.str.110 = private unnamed_addr constant [5 x i8] c"mask\00", align 1
@.str.111 = private unnamed_addr constant [23 x i8] c"The newly created mask\00", align 1
@.str.112 = private unnamed_addr constant [20 x i8] c"gimp-layer-get-mask\00", align 1
@.str.113 = private unnamed_addr constant [45 x i8] c"Get the specified layer's mask if it exists.\00", align 1
@.str.114 = private unnamed_addr constant [73 x i8] c"This procedure returns the specified layer's mask, or -1 if none exists.\00", align 1
@.str.115 = private unnamed_addr constant [15 x i8] c"The layer mask\00", align 1
@.str.116 = private unnamed_addr constant [21 x i8] c"gimp-layer-from-mask\00", align 1
@.str.117 = private unnamed_addr constant [32 x i8] c"Get the specified mask's layer.\00", align 1
@.str.118 = private unnamed_addr constant [74 x i8] c"This procedure returns the specified mask's layer , or -1 if none exists.\00", align 1
@.str.119 = private unnamed_addr constant [15 x i8] c"Geert Jordaens\00", align 1
@.str.120 = private unnamed_addr constant [5 x i8] c"2004\00", align 1
@.str.121 = private unnamed_addr constant [35 x i8] c"Mask for which to return the layer\00", align 1
@.str.122 = private unnamed_addr constant [17 x i8] c"The mask's layer\00", align 1
@.str.123 = private unnamed_addr constant [20 x i8] c"gimp-layer-add-mask\00", align 1
@.str.124 = private unnamed_addr constant [41 x i8] c"Add a layer mask to the specified layer.\00", align 1
@.str.125 = private unnamed_addr constant [449 x i8] c"This procedure adds a layer mask to the specified layer. Layer masks serve as an additional alpha channel for a layer. This procedure will fail if a number of prerequisites aren't met. The layer cannot already have a layer mask. The specified mask must exist and have the same dimensions as the layer. The layer must have been created for use with the specified image and the mask must have been created with the procedure 'gimp-layer-create-mask'.\00", align 1
@.str.126 = private unnamed_addr constant [30 x i8] c"The layer to receive the mask\00", align 1
@.str.127 = private unnamed_addr constant [29 x i8] c"The mask to add to the layer\00", align 1
@.str.128 = private unnamed_addr constant [23 x i8] c"gimp-layer-remove-mask\00", align 1
@.str.129 = private unnamed_addr constant [48 x i8] c"Remove the specified layer mask from the layer.\00", align 1
@.str.130 = private unnamed_addr constant [113 x i8] c"This procedure removes the specified layer mask from the layer. If the mask doesn't exist, an error is returned.\00", align 1
@.str.131 = private unnamed_addr constant [36 x i8] c"The layer from which to remove mask\00", align 1
@.str.132 = private unnamed_addr constant [13 x i8] c"Removal mode\00", align 1
@.str.133 = private unnamed_addr constant [27 x i8] c"gimp-layer-is-floating-sel\00", align 1
@.str.134 = private unnamed_addr constant [45 x i8] c"Is the specified layer a floating selection?\00", align 1
@.str.135 = private unnamed_addr constant [157 x i8] c"This procedure returns whether the layer is a floating selection. Floating selections are special cases of layers which are attached to a specific drawable.\00", align 1
@.str.136 = private unnamed_addr constant [16 x i8] c"is-floating-sel\00", align 1
@.str.137 = private unnamed_addr constant [16 x i8] c"is floating sel\00", align 1
@.str.138 = private unnamed_addr constant [42 x i8] c"TRUE if the layer is a floating selection\00", align 1
@.str.139 = private unnamed_addr constant [26 x i8] c"gimp-layer-get-lock-alpha\00", align 1
@.str.140 = private unnamed_addr constant [59 x i8] c"Get the lock alpha channel setting of the specified layer.\00", align 1
@.str.141 = private unnamed_addr constant [73 x i8] c"This procedure returns the specified layer's lock alpha channel setting.\00", align 1
@.str.142 = private unnamed_addr constant [11 x i8] c"lock-alpha\00", align 1
@.str.143 = private unnamed_addr constant [11 x i8] c"lock alpha\00", align 1
@.str.144 = private unnamed_addr constant [39 x i8] c"The layer's lock alpha channel setting\00", align 1
@.str.145 = private unnamed_addr constant [26 x i8] c"gimp-layer-set-lock-alpha\00", align 1
@.str.146 = private unnamed_addr constant [59 x i8] c"Set the lock alpha channel setting of the specified layer.\00", align 1
@.str.147 = private unnamed_addr constant [70 x i8] c"This procedure sets the specified layer's lock alpha channel setting.\00", align 1
@.str.148 = private unnamed_addr constant [43 x i8] c"The new layer's lock alpha channel setting\00", align 1
@.str.149 = private unnamed_addr constant [26 x i8] c"gimp-layer-get-apply-mask\00", align 1
@.str.150 = private unnamed_addr constant [51 x i8] c"Get the apply mask setting of the specified layer.\00", align 1
@.str.151 = private unnamed_addr constant [184 x i8] c"This procedure returns the specified layer's apply mask setting. If the value is TRUE, then the layer mask for this layer is currently being composited with the layer's alpha channel.\00", align 1
@.str.152 = private unnamed_addr constant [11 x i8] c"apply-mask\00", align 1
@.str.153 = private unnamed_addr constant [11 x i8] c"apply mask\00", align 1
@.str.154 = private unnamed_addr constant [31 x i8] c"The layer's apply mask setting\00", align 1
@.str.155 = private unnamed_addr constant [26 x i8] c"gimp-layer-set-apply-mask\00", align 1
@.str.156 = private unnamed_addr constant [51 x i8] c"Set the apply mask setting of the specified layer.\00", align 1
@.str.157 = private unnamed_addr constant [206 x i8] c"This procedure sets the specified layer's apply mask setting. This controls whether the layer's mask is currently affecting the alpha channel. If there is no layer mask, this function will return an error.\00", align 1
@.str.158 = private unnamed_addr constant [35 x i8] c"The new layer's apply mask setting\00", align 1
@.str.159 = private unnamed_addr constant [25 x i8] c"gimp-layer-get-show-mask\00", align 1
@.str.160 = private unnamed_addr constant [50 x i8] c"Get the show mask setting of the specified layer.\00", align 1
@.str.161 = private unnamed_addr constant [231 x i8] c"This procedure returns the specified layer's show mask setting. This controls whether the layer or its mask is visible. TRUE indicates that the mask should be visible. If the layer has no mask, then this function returns an error.\00", align 1
@.str.162 = private unnamed_addr constant [10 x i8] c"show-mask\00", align 1
@.str.163 = private unnamed_addr constant [10 x i8] c"show mask\00", align 1
@.str.164 = private unnamed_addr constant [30 x i8] c"The layer's show mask setting\00", align 1
@.str.165 = private unnamed_addr constant [25 x i8] c"gimp-layer-set-show-mask\00", align 1
@.str.166 = private unnamed_addr constant [50 x i8] c"Set the show mask setting of the specified layer.\00", align 1
@.str.167 = private unnamed_addr constant [228 x i8] c"This procedure sets the specified layer's show mask setting. This controls whether the layer or its mask is visible. TRUE indicates that the mask should be visible. If there is no layer mask, this function will return an error.\00", align 1
@.str.168 = private unnamed_addr constant [34 x i8] c"The new layer's show mask setting\00", align 1
@.str.169 = private unnamed_addr constant [25 x i8] c"gimp-layer-get-edit-mask\00", align 1
@.str.170 = private unnamed_addr constant [50 x i8] c"Get the edit mask setting of the specified layer.\00", align 1
@.str.171 = private unnamed_addr constant [161 x i8] c"This procedure returns the specified layer's edit mask setting. If the value is TRUE, then the layer mask for this layer is currently active, and not the layer.\00", align 1
@.str.172 = private unnamed_addr constant [10 x i8] c"edit-mask\00", align 1
@.str.173 = private unnamed_addr constant [10 x i8] c"edit mask\00", align 1
@.str.174 = private unnamed_addr constant [30 x i8] c"The layer's edit mask setting\00", align 1
@.str.175 = private unnamed_addr constant [25 x i8] c"gimp-layer-set-edit-mask\00", align 1
@.str.176 = private unnamed_addr constant [50 x i8] c"Set the edit mask setting of the specified layer.\00", align 1
@.str.177 = private unnamed_addr constant [223 x i8] c"This procedure sets the specified layer's edit mask setting. This controls whether the layer or it's mask is currently active for editing. If the specified layer has no layer mask, then this procedure will return an error.\00", align 1
@.str.178 = private unnamed_addr constant [34 x i8] c"The new layer's edit mask setting\00", align 1
@.str.179 = private unnamed_addr constant [23 x i8] c"gimp-layer-get-opacity\00", align 1
@.str.180 = private unnamed_addr constant [40 x i8] c"Get the opacity of the specified layer.\00", align 1
@.str.181 = private unnamed_addr constant [54 x i8] c"This procedure returns the specified layer's opacity.\00", align 1
@.str.182 = private unnamed_addr constant [23 x i8] c"gimp-layer-set-opacity\00", align 1
@.str.183 = private unnamed_addr constant [40 x i8] c"Set the opacity of the specified layer.\00", align 1
@.str.184 = private unnamed_addr constant [51 x i8] c"This procedure sets the specified layer's opacity.\00", align 1
@.str.185 = private unnamed_addr constant [22 x i8] c"The new layer opacity\00", align 1
@.str.186 = private unnamed_addr constant [20 x i8] c"gimp-layer-get-mode\00", align 1
@.str.187 = private unnamed_addr constant [49 x i8] c"Get the combination mode of the specified layer.\00", align 1
@.str.188 = private unnamed_addr constant [63 x i8] c"This procedure returns the specified layer's combination mode.\00", align 1
@.str.189 = private unnamed_addr constant [20 x i8] c"gimp-layer-set-mode\00", align 1
@.str.190 = private unnamed_addr constant [49 x i8] c"Set the combination mode of the specified layer.\00", align 1
@.str.191 = private unnamed_addr constant [60 x i8] c"This procedure sets the specified layer's combination mode.\00", align 1
@.str.192 = private unnamed_addr constant [31 x i8] c"The new layer combination mode\00", align 1
@.str.193 = private unnamed_addr constant [8 x i8] c"Scaling\00", align 1

; Function Attrs: nounwind uwtable
define void @register_layer_procs(%struct._GimpPDB* %pdb) #0 {
entry:
  %pdb.addr = alloca %struct._GimpPDB*, align 8
  %procedure = alloca %struct._GimpProcedure*, align 8
  store %struct._GimpPDB* %pdb, %struct._GimpPDB** %pdb.addr, align 8
  %call = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @layer_new_invoker)
  store %struct._GimpProcedure* %call, %struct._GimpProcedure** %procedure, align 8
  %0 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %1 = bitcast %struct._GimpProcedure* %0 to %struct._GTypeInstance*
  %call1 = call i64 @gimp_object_get_type() #5
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call1)
  %2 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %2, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0))
  %3 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %3, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([373 x i8], [373 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i8* null)
  %4 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %5 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %5, i32 0, i32 1
  %6 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call3 = call %struct._GParamSpec* @gimp_param_spec_image_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i32 0, i32 0), %struct._Gimp* %6, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %4, %struct._GParamSpec* %call3)
  %7 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call4 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i32 0, i32 0), i32 1, i32 262144, i32 1, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %7, %struct._GParamSpec* %call4)
  %8 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call5 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i32 0, i32 0), i32 1, i32 262144, i32 1, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %8, %struct._GParamSpec* %call5)
  %9 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call6 = call i64 @gimp_image_type_get_type() #5
  %call7 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i32 0, i32 0), i64 %call6, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %9, %struct._GParamSpec* %call7)
  %10 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call8 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i32 0, i32 0), i32 0, i32 1, i32 0, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %10, %struct._GParamSpec* %call8)
  %11 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call9 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i32 0, i32 0), double 0.000000e+00, double 1.000000e+02, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %11, %struct._GParamSpec* %call9)
  %12 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call10 = call i64 @gimp_layer_mode_effects_get_type() #5
  %call11 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.18, i32 0, i32 0), i64 %call10, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %12, %struct._GParamSpec* %call11)
  %13 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %14 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp12 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %14, i32 0, i32 1
  %15 = load %struct._Gimp*, %struct._Gimp** %gimp12, align 8
  %call13 = call %struct._GParamSpec* @gimp_param_spec_layer_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.20, i32 0, i32 0), %struct._Gimp* %15, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %13, %struct._GParamSpec* %call13)
  %16 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %17 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %16, %struct._GimpProcedure* %17)
  %18 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %19 = bitcast %struct._GimpProcedure* %18 to i8*
  call void @g_object_unref(i8* %19)
  %call14 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @layer_new_from_visible_invoker)
  store %struct._GimpProcedure* %call14, %struct._GimpProcedure** %procedure, align 8
  %20 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %21 = bitcast %struct._GimpProcedure* %20 to %struct._GTypeInstance*
  %call15 = call i64 @gimp_object_get_type() #5
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call15)
  %22 = bitcast %struct._GTypeInstance* %call16 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %22, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.21, i32 0, i32 0))
  %23 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %23, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([328 x i8], [328 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i32 0, i32 0), i8* null)
  %24 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %25 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp17 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %25, i32 0, i32 1
  %26 = load %struct._Gimp*, %struct._Gimp** %gimp17, align 8
  %call18 = call %struct._GParamSpec* @gimp_param_spec_image_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.27, i32 0, i32 0), %struct._Gimp* %26, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %24, %struct._GParamSpec* %call18)
  %27 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %28 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp19 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %28, i32 0, i32 1
  %29 = load %struct._Gimp*, %struct._Gimp** %gimp19, align 8
  %call20 = call %struct._GParamSpec* @gimp_param_spec_image_id(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.30, i32 0, i32 0), %struct._Gimp* %29, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %27, %struct._GParamSpec* %call20)
  %30 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call21 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i32 0, i32 0), i32 0, i32 1, i32 0, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %30, %struct._GParamSpec* %call21)
  %31 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %32 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp22 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %32, i32 0, i32 1
  %33 = load %struct._Gimp*, %struct._Gimp** %gimp22, align 8
  %call23 = call %struct._GParamSpec* @gimp_param_spec_layer_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.20, i32 0, i32 0), %struct._Gimp* %33, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %31, %struct._GParamSpec* %call23)
  %34 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %35 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %34, %struct._GimpProcedure* %35)
  %36 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %37 = bitcast %struct._GimpProcedure* %36 to i8*
  call void @g_object_unref(i8* %37)
  %call24 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @layer_new_from_drawable_invoker)
  store %struct._GimpProcedure* %call24, %struct._GimpProcedure** %procedure, align 8
  %38 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %39 = bitcast %struct._GimpProcedure* %38 to %struct._GTypeInstance*
  %call25 = call i64 @gimp_object_get_type() #5
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %39, i64 %call25)
  %40 = bitcast %struct._GTypeInstance* %call26 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %40, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.31, i32 0, i32 0))
  %41 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %41, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([312 x i8], [312 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i8* null)
  %42 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %43 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp27 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %43, i32 0, i32 1
  %44 = load %struct._Gimp*, %struct._Gimp** %gimp27, align 8
  %call28 = call %struct._GParamSpec* @gimp_param_spec_drawable_id(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.35, i32 0, i32 0), %struct._Gimp* %44, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %42, %struct._GParamSpec* %call28)
  %45 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %46 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp29 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %46, i32 0, i32 1
  %47 = load %struct._Gimp*, %struct._Gimp** %gimp29, align 8
  %call30 = call %struct._GParamSpec* @gimp_param_spec_image_id(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.30, i32 0, i32 0), %struct._Gimp* %47, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %45, %struct._GParamSpec* %call30)
  %48 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %49 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp31 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %49, i32 0, i32 1
  %50 = load %struct._Gimp*, %struct._Gimp** %gimp31, align 8
  %call32 = call %struct._GParamSpec* @gimp_param_spec_layer_id(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.38, i32 0, i32 0), %struct._Gimp* %50, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %48, %struct._GParamSpec* %call32)
  %51 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %52 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %51, %struct._GimpProcedure* %52)
  %53 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %54 = bitcast %struct._GimpProcedure* %53 to i8*
  call void @g_object_unref(i8* %54)
  %call33 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @layer_group_new_invoker)
  store %struct._GimpProcedure* %call33, %struct._GimpProcedure** %procedure, align 8
  %55 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %56 = bitcast %struct._GimpProcedure* %55 to %struct._GTypeInstance*
  %call34 = call i64 @gimp_object_get_type() #5
  %call35 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %56, i64 %call34)
  %57 = bitcast %struct._GTypeInstance* %call35 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %57, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.39, i32 0, i32 0))
  %58 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %58, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([366 x i8], [366 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.44, i32 0, i32 0), i8* null)
  %59 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %60 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp36 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %60, i32 0, i32 1
  %61 = load %struct._Gimp*, %struct._Gimp** %gimp36, align 8
  %call37 = call %struct._GParamSpec* @gimp_param_spec_image_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.45, i32 0, i32 0), %struct._Gimp* %61, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %59, %struct._GParamSpec* %call37)
  %62 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %63 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp38 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %63, i32 0, i32 1
  %64 = load %struct._Gimp*, %struct._Gimp** %gimp38, align 8
  %call39 = call %struct._GParamSpec* @gimp_param_spec_layer_id(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.48, i32 0, i32 0), %struct._Gimp* %64, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %62, %struct._GParamSpec* %call39)
  %65 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %66 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %65, %struct._GimpProcedure* %66)
  %67 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %68 = bitcast %struct._GimpProcedure* %67 to i8*
  call void @g_object_unref(i8* %68)
  %call40 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @layer_copy_invoker)
  store %struct._GimpProcedure* %call40, %struct._GimpProcedure** %procedure, align 8
  %69 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %70 = bitcast %struct._GimpProcedure* %69 to %struct._GTypeInstance*
  %call41 = call i64 @gimp_object_get_type() #5
  %call42 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %70, i64 %call41)
  %71 = bitcast %struct._GTypeInstance* %call42 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %71, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.49, i32 0, i32 0))
  %72 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %72, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([346 x i8], [346 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i8* null)
  %73 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %74 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp43 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %74, i32 0, i32 1
  %75 = load %struct._Gimp*, %struct._Gimp** %gimp43, align 8
  %call44 = call %struct._GParamSpec* @gimp_param_spec_layer_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.52, i32 0, i32 0), %struct._Gimp* %75, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %73, %struct._GParamSpec* %call44)
  %76 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call45 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.55, i32 0, i32 0), i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %76, %struct._GParamSpec* %call45)
  %77 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %78 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp46 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %78, i32 0, i32 1
  %79 = load %struct._Gimp*, %struct._Gimp** %gimp46, align 8
  %call47 = call %struct._GParamSpec* @gimp_param_spec_layer_id(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.38, i32 0, i32 0), %struct._Gimp* %79, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %77, %struct._GParamSpec* %call47)
  %80 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %81 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %80, %struct._GimpProcedure* %81)
  %82 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %83 = bitcast %struct._GimpProcedure* %82 to i8*
  call void @g_object_unref(i8* %83)
  %call48 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @layer_add_alpha_invoker)
  store %struct._GimpProcedure* %call48, %struct._GimpProcedure** %procedure, align 8
  %84 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %85 = bitcast %struct._GimpProcedure* %84 to %struct._GTypeInstance*
  %call49 = call i64 @gimp_object_get_type() #5
  %call50 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %85, i64 %call49)
  %86 = bitcast %struct._GTypeInstance* %call50 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %86, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.56, i32 0, i32 0))
  %87 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %87, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([304 x i8], [304 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i8* null)
  %88 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %89 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp51 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %89, i32 0, i32 1
  %90 = load %struct._Gimp*, %struct._Gimp** %gimp51, align 8
  %call52 = call %struct._GParamSpec* @gimp_param_spec_layer_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.59, i32 0, i32 0), %struct._Gimp* %90, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %88, %struct._GParamSpec* %call52)
  %91 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %92 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %91, %struct._GimpProcedure* %92)
  %93 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %94 = bitcast %struct._GimpProcedure* %93 to i8*
  call void @g_object_unref(i8* %94)
  %call53 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @layer_flatten_invoker)
  store %struct._GimpProcedure* %call53, %struct._GimpProcedure** %procedure, align 8
  %95 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %96 = bitcast %struct._GimpProcedure* %95 to %struct._GTypeInstance*
  %call54 = call i64 @gimp_object_get_type() #5
  %call55 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %96, i64 %call54)
  %97 = bitcast %struct._GTypeInstance* %call55 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %97, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.60, i32 0, i32 0))
  %98 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %98, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([226 x i8], [226 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.65, i32 0, i32 0), i8* null)
  %99 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %100 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp56 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %100, i32 0, i32 1
  %101 = load %struct._Gimp*, %struct._Gimp** %gimp56, align 8
  %call57 = call %struct._GParamSpec* @gimp_param_spec_layer_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.59, i32 0, i32 0), %struct._Gimp* %101, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %99, %struct._GParamSpec* %call57)
  %102 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %103 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %102, %struct._GimpProcedure* %103)
  %104 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %105 = bitcast %struct._GimpProcedure* %104 to i8*
  call void @g_object_unref(i8* %105)
  %call58 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @layer_scale_invoker)
  store %struct._GimpProcedure* %call58, %struct._GimpProcedure** %procedure, align 8
  %106 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %107 = bitcast %struct._GimpProcedure* %106 to %struct._GTypeInstance*
  %call59 = call i64 @gimp_object_get_type() #5
  %call60 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %107, i64 %call59)
  %108 = bitcast %struct._GTypeInstance* %call60 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %108, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.66, i32 0, i32 0))
  %109 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %109, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([362 x i8], [362 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i8* null)
  %110 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %111 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp61 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %111, i32 0, i32 1
  %112 = load %struct._Gimp*, %struct._Gimp** %gimp61, align 8
  %call62 = call %struct._GParamSpec* @gimp_param_spec_layer_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.59, i32 0, i32 0), %struct._Gimp* %112, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %110, %struct._GParamSpec* %call62)
  %113 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call63 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.71, i32 0, i32 0), i32 1, i32 262144, i32 1, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %113, %struct._GParamSpec* %call63)
  %114 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call64 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.72, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.73, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.74, i32 0, i32 0), i32 1, i32 262144, i32 1, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %114, %struct._GParamSpec* %call64)
  %115 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call65 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.75, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.76, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.77, i32 0, i32 0), i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %115, %struct._GParamSpec* %call65)
  %116 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %117 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %116, %struct._GimpProcedure* %117)
  %118 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %119 = bitcast %struct._GimpProcedure* %118 to i8*
  call void @g_object_unref(i8* %119)
  %call66 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @layer_scale_full_invoker)
  store %struct._GimpProcedure* %call66, %struct._GimpProcedure** %procedure, align 8
  %120 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %121 = bitcast %struct._GimpProcedure* %120 to %struct._GTypeInstance*
  %call67 = call i64 @gimp_object_get_type() #5
  %call68 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %121, i64 %call67)
  %122 = bitcast %struct._GTypeInstance* %call68 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %122, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.78, i32 0, i32 0))
  %123 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %123, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.79, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.79, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.66, i32 0, i32 0))
  %124 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %125 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp69 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %125, i32 0, i32 1
  %126 = load %struct._Gimp*, %struct._Gimp** %gimp69, align 8
  %call70 = call %struct._GParamSpec* @gimp_param_spec_layer_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.59, i32 0, i32 0), %struct._Gimp* %126, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %124, %struct._GParamSpec* %call70)
  %127 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call71 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.71, i32 0, i32 0), i32 1, i32 262144, i32 1, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %127, %struct._GParamSpec* %call71)
  %128 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call72 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.72, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.73, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.74, i32 0, i32 0), i32 1, i32 262144, i32 1, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %128, %struct._GParamSpec* %call72)
  %129 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call73 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.75, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.76, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.77, i32 0, i32 0), i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %129, %struct._GParamSpec* %call73)
  %130 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call74 = call i64 @gimp_interpolation_type_get_type() #5
  %call75 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.80, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.80, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.81, i32 0, i32 0), i64 %call74, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %130, %struct._GParamSpec* %call75)
  %131 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %132 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %131, %struct._GimpProcedure* %132)
  %133 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %134 = bitcast %struct._GimpProcedure* %133 to i8*
  call void @g_object_unref(i8* %134)
  %call76 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @layer_resize_invoker)
  store %struct._GimpProcedure* %call76, %struct._GimpProcedure** %procedure, align 8
  %135 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %136 = bitcast %struct._GimpProcedure* %135 to %struct._GTypeInstance*
  %call77 = call i64 @gimp_object_get_type() #5
  %call78 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %136, i64 %call77)
  %137 = bitcast %struct._GTypeInstance* %call78 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %137, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.82, i32 0, i32 0))
  %138 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %138, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.82, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.83, i32 0, i32 0), i8* getelementptr inbounds ([258 x i8], [258 x i8]* @.str.84, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i8* null)
  %139 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %140 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp79 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %140, i32 0, i32 1
  %141 = load %struct._Gimp*, %struct._Gimp** %gimp79, align 8
  %call80 = call %struct._GParamSpec* @gimp_param_spec_layer_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.59, i32 0, i32 0), %struct._Gimp* %141, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %139, %struct._GParamSpec* %call80)
  %142 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call81 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.71, i32 0, i32 0), i32 1, i32 262144, i32 1, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %142, %struct._GParamSpec* %call81)
  %143 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call82 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.72, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.73, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.74, i32 0, i32 0), i32 1, i32 262144, i32 1, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %143, %struct._GParamSpec* %call82)
  %144 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call83 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.85, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.85, i32 0, i32 0), i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.86, i32 0, i32 0), i32 -2147483648, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %144, %struct._GParamSpec* %call83)
  %145 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call84 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.87, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.87, i32 0, i32 0), i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.88, i32 0, i32 0), i32 -2147483648, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %145, %struct._GParamSpec* %call84)
  %146 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %147 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %146, %struct._GimpProcedure* %147)
  %148 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %149 = bitcast %struct._GimpProcedure* %148 to i8*
  call void @g_object_unref(i8* %149)
  %call85 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @layer_resize_to_image_size_invoker)
  store %struct._GimpProcedure* %call85, %struct._GimpProcedure** %procedure, align 8
  %150 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %151 = bitcast %struct._GimpProcedure* %150 to %struct._GTypeInstance*
  %call86 = call i64 @gimp_object_get_type() #5
  %call87 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %151, i64 %call86)
  %152 = bitcast %struct._GTypeInstance* %call87 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %152, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.89, i32 0, i32 0))
  %153 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %153, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.89, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.90, i32 0, i32 0), i8* getelementptr inbounds ([125 x i8], [125 x i8]* @.str.91, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.92, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.92, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.93, i32 0, i32 0), i8* null)
  %154 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %155 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp88 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %155, i32 0, i32 1
  %156 = load %struct._Gimp*, %struct._Gimp** %gimp88, align 8
  %call89 = call %struct._GParamSpec* @gimp_param_spec_layer_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.94, i32 0, i32 0), %struct._Gimp* %156, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %154, %struct._GParamSpec* %call89)
  %157 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %158 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %157, %struct._GimpProcedure* %158)
  %159 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %160 = bitcast %struct._GimpProcedure* %159 to i8*
  call void @g_object_unref(i8* %160)
  %call90 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @layer_translate_invoker)
  store %struct._GimpProcedure* %call90, %struct._GimpProcedure** %procedure, align 8
  %161 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %162 = bitcast %struct._GimpProcedure* %161 to %struct._GTypeInstance*
  %call91 = call i64 @gimp_object_get_type() #5
  %call92 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %162, i64 %call91)
  %163 = bitcast %struct._GTypeInstance* %call92 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %163, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.95, i32 0, i32 0))
  %164 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %164, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.95, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.96, i32 0, i32 0), i8* getelementptr inbounds ([364 x i8], [364 x i8]* @.str.97, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i8* null)
  %165 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %166 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp93 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %166, i32 0, i32 1
  %167 = load %struct._Gimp*, %struct._Gimp** %gimp93, align 8
  %call94 = call %struct._GParamSpec* @gimp_param_spec_layer_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.59, i32 0, i32 0), %struct._Gimp* %167, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %165, %struct._GParamSpec* %call94)
  %168 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call95 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.85, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.85, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.98, i32 0, i32 0), i32 -2147483648, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %168, %struct._GParamSpec* %call95)
  %169 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call96 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.87, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.87, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.99, i32 0, i32 0), i32 -2147483648, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %169, %struct._GParamSpec* %call96)
  %170 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %171 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %170, %struct._GimpProcedure* %171)
  %172 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %173 = bitcast %struct._GimpProcedure* %172 to i8*
  call void @g_object_unref(i8* %173)
  %call97 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @layer_set_offsets_invoker)
  store %struct._GimpProcedure* %call97, %struct._GimpProcedure** %procedure, align 8
  %174 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %175 = bitcast %struct._GimpProcedure* %174 to %struct._GTypeInstance*
  %call98 = call i64 @gimp_object_get_type() #5
  %call99 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %175, i64 %call98)
  %176 = bitcast %struct._GTypeInstance* %call99 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %176, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.100, i32 0, i32 0))
  %177 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %177, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.100, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.101, i32 0, i32 0), i8* getelementptr inbounds ([199 x i8], [199 x i8]* @.str.102, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i8* null)
  %178 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %179 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp100 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %179, i32 0, i32 1
  %180 = load %struct._Gimp*, %struct._Gimp** %gimp100, align 8
  %call101 = call %struct._GParamSpec* @gimp_param_spec_layer_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.59, i32 0, i32 0), %struct._Gimp* %180, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %178, %struct._GParamSpec* %call101)
  %181 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call102 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.85, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.85, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.98, i32 0, i32 0), i32 -2147483648, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %181, %struct._GParamSpec* %call102)
  %182 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call103 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.87, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.87, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.99, i32 0, i32 0), i32 -2147483648, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %182, %struct._GParamSpec* %call103)
  %183 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %184 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %183, %struct._GimpProcedure* %184)
  %185 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %186 = bitcast %struct._GimpProcedure* %185 to i8*
  call void @g_object_unref(i8* %186)
  %call104 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @layer_create_mask_invoker)
  store %struct._GimpProcedure* %call104, %struct._GimpProcedure** %procedure, align 8
  %187 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %188 = bitcast %struct._GimpProcedure* %187 to %struct._GTypeInstance*
  %call105 = call i64 @gimp_object_get_type() #5
  %call106 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %188, i64 %call105)
  %189 = bitcast %struct._GTypeInstance* %call106 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %189, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.103, i32 0, i32 0))
  %190 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %190, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.103, i32 0, i32 0), i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.104, i32 0, i32 0), i8* getelementptr inbounds ([631 x i8], [631 x i8]* @.str.105, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i8* null)
  %191 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %192 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp107 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %192, i32 0, i32 1
  %193 = load %struct._Gimp*, %struct._Gimp** %gimp107, align 8
  %call108 = call %struct._GParamSpec* @gimp_param_spec_layer_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.106, i32 0, i32 0), %struct._Gimp* %193, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %191, %struct._GParamSpec* %call108)
  %194 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call109 = call i64 @gimp_add_mask_type_get_type() #5
  %call110 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.107, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.108, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.109, i32 0, i32 0), i64 %call109, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %194, %struct._GParamSpec* %call110)
  %195 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %196 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp111 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %196, i32 0, i32 1
  %197 = load %struct._Gimp*, %struct._Gimp** %gimp111, align 8
  %call112 = call %struct._GParamSpec* @gimp_param_spec_layer_mask_id(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.110, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.110, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.111, i32 0, i32 0), %struct._Gimp* %197, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %195, %struct._GParamSpec* %call112)
  %198 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %199 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %198, %struct._GimpProcedure* %199)
  %200 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %201 = bitcast %struct._GimpProcedure* %200 to i8*
  call void @g_object_unref(i8* %201)
  %call113 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @layer_get_mask_invoker)
  store %struct._GimpProcedure* %call113, %struct._GimpProcedure** %procedure, align 8
  %202 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %203 = bitcast %struct._GimpProcedure* %202 to %struct._GTypeInstance*
  %call114 = call i64 @gimp_object_get_type() #5
  %call115 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %203, i64 %call114)
  %204 = bitcast %struct._GTypeInstance* %call115 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %204, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.112, i32 0, i32 0))
  %205 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %205, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.112, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.113, i32 0, i32 0), i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.114, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i8* null)
  %206 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %207 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp116 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %207, i32 0, i32 1
  %208 = load %struct._Gimp*, %struct._Gimp** %gimp116, align 8
  %call117 = call %struct._GParamSpec* @gimp_param_spec_layer_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.59, i32 0, i32 0), %struct._Gimp* %208, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %206, %struct._GParamSpec* %call117)
  %209 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %210 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp118 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %210, i32 0, i32 1
  %211 = load %struct._Gimp*, %struct._Gimp** %gimp118, align 8
  %call119 = call %struct._GParamSpec* @gimp_param_spec_layer_mask_id(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.110, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.110, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.115, i32 0, i32 0), %struct._Gimp* %211, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %209, %struct._GParamSpec* %call119)
  %212 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %213 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %212, %struct._GimpProcedure* %213)
  %214 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %215 = bitcast %struct._GimpProcedure* %214 to i8*
  call void @g_object_unref(i8* %215)
  %call120 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @layer_from_mask_invoker)
  store %struct._GimpProcedure* %call120, %struct._GimpProcedure** %procedure, align 8
  %216 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %217 = bitcast %struct._GimpProcedure* %216 to %struct._GTypeInstance*
  %call121 = call i64 @gimp_object_get_type() #5
  %call122 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %217, i64 %call121)
  %218 = bitcast %struct._GTypeInstance* %call122 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %218, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.116, i32 0, i32 0))
  %219 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %219, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.116, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.117, i32 0, i32 0), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.118, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.119, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.119, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.120, i32 0, i32 0), i8* null)
  %220 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %221 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp123 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %221, i32 0, i32 1
  %222 = load %struct._Gimp*, %struct._Gimp** %gimp123, align 8
  %call124 = call %struct._GParamSpec* @gimp_param_spec_layer_mask_id(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.110, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.110, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.121, i32 0, i32 0), %struct._Gimp* %222, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %220, %struct._GParamSpec* %call124)
  %223 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %224 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp125 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %224, i32 0, i32 1
  %225 = load %struct._Gimp*, %struct._Gimp** %gimp125, align 8
  %call126 = call %struct._GParamSpec* @gimp_param_spec_layer_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.122, i32 0, i32 0), %struct._Gimp* %225, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %223, %struct._GParamSpec* %call126)
  %226 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %227 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %226, %struct._GimpProcedure* %227)
  %228 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %229 = bitcast %struct._GimpProcedure* %228 to i8*
  call void @g_object_unref(i8* %229)
  %call127 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @layer_add_mask_invoker)
  store %struct._GimpProcedure* %call127, %struct._GimpProcedure** %procedure, align 8
  %230 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %231 = bitcast %struct._GimpProcedure* %230 to %struct._GTypeInstance*
  %call128 = call i64 @gimp_object_get_type() #5
  %call129 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %231, i64 %call128)
  %232 = bitcast %struct._GTypeInstance* %call129 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %232, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.123, i32 0, i32 0))
  %233 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %233, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.123, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.124, i32 0, i32 0), i8* getelementptr inbounds ([449 x i8], [449 x i8]* @.str.125, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i8* null)
  %234 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %235 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp130 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %235, i32 0, i32 1
  %236 = load %struct._Gimp*, %struct._Gimp** %gimp130, align 8
  %call131 = call %struct._GParamSpec* @gimp_param_spec_layer_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.126, i32 0, i32 0), %struct._Gimp* %236, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %234, %struct._GParamSpec* %call131)
  %237 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %238 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp132 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %238, i32 0, i32 1
  %239 = load %struct._Gimp*, %struct._Gimp** %gimp132, align 8
  %call133 = call %struct._GParamSpec* @gimp_param_spec_layer_mask_id(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.110, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.110, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.127, i32 0, i32 0), %struct._Gimp* %239, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %237, %struct._GParamSpec* %call133)
  %240 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %241 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %240, %struct._GimpProcedure* %241)
  %242 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %243 = bitcast %struct._GimpProcedure* %242 to i8*
  call void @g_object_unref(i8* %243)
  %call134 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @layer_remove_mask_invoker)
  store %struct._GimpProcedure* %call134, %struct._GimpProcedure** %procedure, align 8
  %244 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %245 = bitcast %struct._GimpProcedure* %244 to %struct._GTypeInstance*
  %call135 = call i64 @gimp_object_get_type() #5
  %call136 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %245, i64 %call135)
  %246 = bitcast %struct._GTypeInstance* %call136 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %246, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.128, i32 0, i32 0))
  %247 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %247, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.128, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.129, i32 0, i32 0), i8* getelementptr inbounds ([113 x i8], [113 x i8]* @.str.130, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i8* null)
  %248 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %249 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp137 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %249, i32 0, i32 1
  %250 = load %struct._Gimp*, %struct._Gimp** %gimp137, align 8
  %call138 = call %struct._GParamSpec* @gimp_param_spec_layer_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.131, i32 0, i32 0), %struct._Gimp* %250, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %248, %struct._GParamSpec* %call138)
  %251 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call139 = call i64 @gimp_mask_apply_mode_get_type() #5
  %call140 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.132, i32 0, i32 0), i64 %call139, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %251, %struct._GParamSpec* %call140)
  %252 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %253 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %252, %struct._GimpProcedure* %253)
  %254 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %255 = bitcast %struct._GimpProcedure* %254 to i8*
  call void @g_object_unref(i8* %255)
  %call141 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @layer_is_floating_sel_invoker)
  store %struct._GimpProcedure* %call141, %struct._GimpProcedure** %procedure, align 8
  %256 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %257 = bitcast %struct._GimpProcedure* %256 to %struct._GTypeInstance*
  %call142 = call i64 @gimp_object_get_type() #5
  %call143 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %257, i64 %call142)
  %258 = bitcast %struct._GTypeInstance* %call143 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %258, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.133, i32 0, i32 0))
  %259 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %259, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.133, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.134, i32 0, i32 0), i8* getelementptr inbounds ([157 x i8], [157 x i8]* @.str.135, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i8* null)
  %260 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %261 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp144 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %261, i32 0, i32 1
  %262 = load %struct._Gimp*, %struct._Gimp** %gimp144, align 8
  %call145 = call %struct._GParamSpec* @gimp_param_spec_layer_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.59, i32 0, i32 0), %struct._Gimp* %262, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %260, %struct._GParamSpec* %call145)
  %263 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call146 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.136, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.137, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.138, i32 0, i32 0), i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %263, %struct._GParamSpec* %call146)
  %264 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %265 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %264, %struct._GimpProcedure* %265)
  %266 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %267 = bitcast %struct._GimpProcedure* %266 to i8*
  call void @g_object_unref(i8* %267)
  %call147 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @layer_get_lock_alpha_invoker)
  store %struct._GimpProcedure* %call147, %struct._GimpProcedure** %procedure, align 8
  %268 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %269 = bitcast %struct._GimpProcedure* %268 to %struct._GTypeInstance*
  %call148 = call i64 @gimp_object_get_type() #5
  %call149 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %269, i64 %call148)
  %270 = bitcast %struct._GTypeInstance* %call149 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %270, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.139, i32 0, i32 0))
  %271 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %271, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.139, i32 0, i32 0), i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.140, i32 0, i32 0), i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.141, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i8* null)
  %272 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %273 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp150 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %273, i32 0, i32 1
  %274 = load %struct._Gimp*, %struct._Gimp** %gimp150, align 8
  %call151 = call %struct._GParamSpec* @gimp_param_spec_layer_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.59, i32 0, i32 0), %struct._Gimp* %274, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %272, %struct._GParamSpec* %call151)
  %275 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call152 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.142, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.143, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.144, i32 0, i32 0), i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %275, %struct._GParamSpec* %call152)
  %276 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %277 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %276, %struct._GimpProcedure* %277)
  %278 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %279 = bitcast %struct._GimpProcedure* %278 to i8*
  call void @g_object_unref(i8* %279)
  %call153 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @layer_set_lock_alpha_invoker)
  store %struct._GimpProcedure* %call153, %struct._GimpProcedure** %procedure, align 8
  %280 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %281 = bitcast %struct._GimpProcedure* %280 to %struct._GTypeInstance*
  %call154 = call i64 @gimp_object_get_type() #5
  %call155 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %281, i64 %call154)
  %282 = bitcast %struct._GTypeInstance* %call155 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %282, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.145, i32 0, i32 0))
  %283 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %283, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.145, i32 0, i32 0), i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.146, i32 0, i32 0), i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.147, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i8* null)
  %284 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %285 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp156 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %285, i32 0, i32 1
  %286 = load %struct._Gimp*, %struct._Gimp** %gimp156, align 8
  %call157 = call %struct._GParamSpec* @gimp_param_spec_layer_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.59, i32 0, i32 0), %struct._Gimp* %286, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %284, %struct._GParamSpec* %call157)
  %287 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call158 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.142, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.143, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.148, i32 0, i32 0), i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %287, %struct._GParamSpec* %call158)
  %288 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %289 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %288, %struct._GimpProcedure* %289)
  %290 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %291 = bitcast %struct._GimpProcedure* %290 to i8*
  call void @g_object_unref(i8* %291)
  %call159 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @layer_get_apply_mask_invoker)
  store %struct._GimpProcedure* %call159, %struct._GimpProcedure** %procedure, align 8
  %292 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %293 = bitcast %struct._GimpProcedure* %292 to %struct._GTypeInstance*
  %call160 = call i64 @gimp_object_get_type() #5
  %call161 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %293, i64 %call160)
  %294 = bitcast %struct._GTypeInstance* %call161 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %294, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.149, i32 0, i32 0))
  %295 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %295, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.149, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.150, i32 0, i32 0), i8* getelementptr inbounds ([184 x i8], [184 x i8]* @.str.151, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i8* null)
  %296 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %297 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp162 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %297, i32 0, i32 1
  %298 = load %struct._Gimp*, %struct._Gimp** %gimp162, align 8
  %call163 = call %struct._GParamSpec* @gimp_param_spec_layer_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.59, i32 0, i32 0), %struct._Gimp* %298, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %296, %struct._GParamSpec* %call163)
  %299 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call164 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.152, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.153, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.154, i32 0, i32 0), i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %299, %struct._GParamSpec* %call164)
  %300 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %301 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %300, %struct._GimpProcedure* %301)
  %302 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %303 = bitcast %struct._GimpProcedure* %302 to i8*
  call void @g_object_unref(i8* %303)
  %call165 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @layer_set_apply_mask_invoker)
  store %struct._GimpProcedure* %call165, %struct._GimpProcedure** %procedure, align 8
  %304 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %305 = bitcast %struct._GimpProcedure* %304 to %struct._GTypeInstance*
  %call166 = call i64 @gimp_object_get_type() #5
  %call167 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %305, i64 %call166)
  %306 = bitcast %struct._GTypeInstance* %call167 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %306, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.155, i32 0, i32 0))
  %307 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %307, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.155, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.156, i32 0, i32 0), i8* getelementptr inbounds ([206 x i8], [206 x i8]* @.str.157, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i8* null)
  %308 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %309 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp168 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %309, i32 0, i32 1
  %310 = load %struct._Gimp*, %struct._Gimp** %gimp168, align 8
  %call169 = call %struct._GParamSpec* @gimp_param_spec_layer_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.59, i32 0, i32 0), %struct._Gimp* %310, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %308, %struct._GParamSpec* %call169)
  %311 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call170 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.152, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.153, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.158, i32 0, i32 0), i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %311, %struct._GParamSpec* %call170)
  %312 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %313 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %312, %struct._GimpProcedure* %313)
  %314 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %315 = bitcast %struct._GimpProcedure* %314 to i8*
  call void @g_object_unref(i8* %315)
  %call171 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @layer_get_show_mask_invoker)
  store %struct._GimpProcedure* %call171, %struct._GimpProcedure** %procedure, align 8
  %316 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %317 = bitcast %struct._GimpProcedure* %316 to %struct._GTypeInstance*
  %call172 = call i64 @gimp_object_get_type() #5
  %call173 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %317, i64 %call172)
  %318 = bitcast %struct._GTypeInstance* %call173 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %318, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.159, i32 0, i32 0))
  %319 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %319, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.159, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.160, i32 0, i32 0), i8* getelementptr inbounds ([231 x i8], [231 x i8]* @.str.161, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i8* null)
  %320 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %321 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp174 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %321, i32 0, i32 1
  %322 = load %struct._Gimp*, %struct._Gimp** %gimp174, align 8
  %call175 = call %struct._GParamSpec* @gimp_param_spec_layer_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.59, i32 0, i32 0), %struct._Gimp* %322, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %320, %struct._GParamSpec* %call175)
  %323 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call176 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.162, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.163, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.164, i32 0, i32 0), i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %323, %struct._GParamSpec* %call176)
  %324 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %325 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %324, %struct._GimpProcedure* %325)
  %326 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %327 = bitcast %struct._GimpProcedure* %326 to i8*
  call void @g_object_unref(i8* %327)
  %call177 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @layer_set_show_mask_invoker)
  store %struct._GimpProcedure* %call177, %struct._GimpProcedure** %procedure, align 8
  %328 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %329 = bitcast %struct._GimpProcedure* %328 to %struct._GTypeInstance*
  %call178 = call i64 @gimp_object_get_type() #5
  %call179 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %329, i64 %call178)
  %330 = bitcast %struct._GTypeInstance* %call179 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %330, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.165, i32 0, i32 0))
  %331 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %331, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.165, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.166, i32 0, i32 0), i8* getelementptr inbounds ([228 x i8], [228 x i8]* @.str.167, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i8* null)
  %332 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %333 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp180 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %333, i32 0, i32 1
  %334 = load %struct._Gimp*, %struct._Gimp** %gimp180, align 8
  %call181 = call %struct._GParamSpec* @gimp_param_spec_layer_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.59, i32 0, i32 0), %struct._Gimp* %334, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %332, %struct._GParamSpec* %call181)
  %335 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call182 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.162, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.163, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.168, i32 0, i32 0), i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %335, %struct._GParamSpec* %call182)
  %336 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %337 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %336, %struct._GimpProcedure* %337)
  %338 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %339 = bitcast %struct._GimpProcedure* %338 to i8*
  call void @g_object_unref(i8* %339)
  %call183 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @layer_get_edit_mask_invoker)
  store %struct._GimpProcedure* %call183, %struct._GimpProcedure** %procedure, align 8
  %340 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %341 = bitcast %struct._GimpProcedure* %340 to %struct._GTypeInstance*
  %call184 = call i64 @gimp_object_get_type() #5
  %call185 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %341, i64 %call184)
  %342 = bitcast %struct._GTypeInstance* %call185 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %342, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.169, i32 0, i32 0))
  %343 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %343, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.169, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.170, i32 0, i32 0), i8* getelementptr inbounds ([161 x i8], [161 x i8]* @.str.171, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i8* null)
  %344 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %345 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp186 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %345, i32 0, i32 1
  %346 = load %struct._Gimp*, %struct._Gimp** %gimp186, align 8
  %call187 = call %struct._GParamSpec* @gimp_param_spec_layer_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.59, i32 0, i32 0), %struct._Gimp* %346, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %344, %struct._GParamSpec* %call187)
  %347 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call188 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.172, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.173, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.174, i32 0, i32 0), i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %347, %struct._GParamSpec* %call188)
  %348 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %349 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %348, %struct._GimpProcedure* %349)
  %350 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %351 = bitcast %struct._GimpProcedure* %350 to i8*
  call void @g_object_unref(i8* %351)
  %call189 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @layer_set_edit_mask_invoker)
  store %struct._GimpProcedure* %call189, %struct._GimpProcedure** %procedure, align 8
  %352 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %353 = bitcast %struct._GimpProcedure* %352 to %struct._GTypeInstance*
  %call190 = call i64 @gimp_object_get_type() #5
  %call191 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %353, i64 %call190)
  %354 = bitcast %struct._GTypeInstance* %call191 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %354, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.175, i32 0, i32 0))
  %355 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %355, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.175, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.176, i32 0, i32 0), i8* getelementptr inbounds ([223 x i8], [223 x i8]* @.str.177, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i8* null)
  %356 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %357 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp192 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %357, i32 0, i32 1
  %358 = load %struct._Gimp*, %struct._Gimp** %gimp192, align 8
  %call193 = call %struct._GParamSpec* @gimp_param_spec_layer_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.59, i32 0, i32 0), %struct._Gimp* %358, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %356, %struct._GParamSpec* %call193)
  %359 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call194 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.172, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.173, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.178, i32 0, i32 0), i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %359, %struct._GParamSpec* %call194)
  %360 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %361 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %360, %struct._GimpProcedure* %361)
  %362 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %363 = bitcast %struct._GimpProcedure* %362 to i8*
  call void @g_object_unref(i8* %363)
  %call195 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @layer_get_opacity_invoker)
  store %struct._GimpProcedure* %call195, %struct._GimpProcedure** %procedure, align 8
  %364 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %365 = bitcast %struct._GimpProcedure* %364 to %struct._GTypeInstance*
  %call196 = call i64 @gimp_object_get_type() #5
  %call197 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %365, i64 %call196)
  %366 = bitcast %struct._GTypeInstance* %call197 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %366, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.179, i32 0, i32 0))
  %367 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %367, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.179, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.180, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.181, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i8* null)
  %368 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %369 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp198 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %369, i32 0, i32 1
  %370 = load %struct._Gimp*, %struct._Gimp** %gimp198, align 8
  %call199 = call %struct._GParamSpec* @gimp_param_spec_layer_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.59, i32 0, i32 0), %struct._Gimp* %370, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %368, %struct._GParamSpec* %call199)
  %371 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call200 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i32 0, i32 0), double 0.000000e+00, double 1.000000e+02, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %371, %struct._GParamSpec* %call200)
  %372 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %373 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %372, %struct._GimpProcedure* %373)
  %374 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %375 = bitcast %struct._GimpProcedure* %374 to i8*
  call void @g_object_unref(i8* %375)
  %call201 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @layer_set_opacity_invoker)
  store %struct._GimpProcedure* %call201, %struct._GimpProcedure** %procedure, align 8
  %376 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %377 = bitcast %struct._GimpProcedure* %376 to %struct._GTypeInstance*
  %call202 = call i64 @gimp_object_get_type() #5
  %call203 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %377, i64 %call202)
  %378 = bitcast %struct._GTypeInstance* %call203 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %378, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.182, i32 0, i32 0))
  %379 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %379, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.182, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.183, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.184, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i8* null)
  %380 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %381 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp204 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %381, i32 0, i32 1
  %382 = load %struct._Gimp*, %struct._Gimp** %gimp204, align 8
  %call205 = call %struct._GParamSpec* @gimp_param_spec_layer_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.59, i32 0, i32 0), %struct._Gimp* %382, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %380, %struct._GParamSpec* %call205)
  %383 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call206 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.185, i32 0, i32 0), double 0.000000e+00, double 1.000000e+02, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %383, %struct._GParamSpec* %call206)
  %384 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %385 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %384, %struct._GimpProcedure* %385)
  %386 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %387 = bitcast %struct._GimpProcedure* %386 to i8*
  call void @g_object_unref(i8* %387)
  %call207 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @layer_get_mode_invoker)
  store %struct._GimpProcedure* %call207, %struct._GimpProcedure** %procedure, align 8
  %388 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %389 = bitcast %struct._GimpProcedure* %388 to %struct._GTypeInstance*
  %call208 = call i64 @gimp_object_get_type() #5
  %call209 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %389, i64 %call208)
  %390 = bitcast %struct._GTypeInstance* %call209 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %390, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.186, i32 0, i32 0))
  %391 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %391, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.186, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.187, i32 0, i32 0), i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.188, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i8* null)
  %392 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %393 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp210 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %393, i32 0, i32 1
  %394 = load %struct._Gimp*, %struct._Gimp** %gimp210, align 8
  %call211 = call %struct._GParamSpec* @gimp_param_spec_layer_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.59, i32 0, i32 0), %struct._Gimp* %394, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %392, %struct._GParamSpec* %call211)
  %395 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call212 = call i64 @gimp_layer_mode_effects_get_type() #5
  %call213 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.18, i32 0, i32 0), i64 %call212, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %395, %struct._GParamSpec* %call213)
  %396 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %397 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %396, %struct._GimpProcedure* %397)
  %398 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %399 = bitcast %struct._GimpProcedure* %398 to i8*
  call void @g_object_unref(i8* %399)
  %call214 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @layer_set_mode_invoker)
  store %struct._GimpProcedure* %call214, %struct._GimpProcedure** %procedure, align 8
  %400 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %401 = bitcast %struct._GimpProcedure* %400 to %struct._GTypeInstance*
  %call215 = call i64 @gimp_object_get_type() #5
  %call216 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %401, i64 %call215)
  %402 = bitcast %struct._GTypeInstance* %call216 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %402, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.189, i32 0, i32 0))
  %403 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %403, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.189, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.190, i32 0, i32 0), i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.191, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i8* null)
  %404 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %405 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp217 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %405, i32 0, i32 1
  %406 = load %struct._Gimp*, %struct._Gimp** %gimp217, align 8
  %call218 = call %struct._GParamSpec* @gimp_param_spec_layer_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.59, i32 0, i32 0), %struct._Gimp* %406, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %404, %struct._GParamSpec* %call218)
  %407 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call219 = call i64 @gimp_layer_mode_effects_get_type() #5
  %call220 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.192, i32 0, i32 0), i64 %call219, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %407, %struct._GParamSpec* %call220)
  %408 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %409 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %408, %struct._GimpProcedure* %409)
  %410 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %411 = bitcast %struct._GimpProcedure* %410 to i8*
  call void @g_object_unref(i8* %411)
  ret void
}

declare %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)*) #1

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @layer_new_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  %type = alloca i32, align 4
  %name = alloca i8*, align 8
  %opacity = alloca double, align 8
  %mode = alloca i32, align 4
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
  store i32 %call3, i32* %width, align 4
  %5 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values4 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %5, i32 0, i32 1
  %6 = load %struct._GValue*, %struct._GValue** %values4, align 8
  %arrayidx5 = getelementptr inbounds %struct._GValue, %struct._GValue* %6, i64 2
  %call6 = call i32 @g_value_get_int(%struct._GValue* %arrayidx5)
  store i32 %call6, i32* %height, align 4
  %7 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values7 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %7, i32 0, i32 1
  %8 = load %struct._GValue*, %struct._GValue** %values7, align 8
  %arrayidx8 = getelementptr inbounds %struct._GValue, %struct._GValue* %8, i64 3
  %call9 = call i32 @g_value_get_enum(%struct._GValue* %arrayidx8)
  store i32 %call9, i32* %type, align 4
  %9 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values10 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %9, i32 0, i32 1
  %10 = load %struct._GValue*, %struct._GValue** %values10, align 8
  %arrayidx11 = getelementptr inbounds %struct._GValue, %struct._GValue* %10, i64 4
  %call12 = call i8* @g_value_get_string(%struct._GValue* %arrayidx11)
  store i8* %call12, i8** %name, align 8
  %11 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values13 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %11, i32 0, i32 1
  %12 = load %struct._GValue*, %struct._GValue** %values13, align 8
  %arrayidx14 = getelementptr inbounds %struct._GValue, %struct._GValue* %12, i64 5
  %call15 = call double @g_value_get_double(%struct._GValue* %arrayidx14)
  store double %call15, double* %opacity, align 8
  %13 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values16 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %13, i32 0, i32 1
  %14 = load %struct._GValue*, %struct._GValue** %values16, align 8
  %arrayidx17 = getelementptr inbounds %struct._GValue, %struct._GValue* %14, i64 6
  %call18 = call i32 @g_value_get_enum(%struct._GValue* %arrayidx17)
  store i32 %call18, i32* %mode, align 4
  %15 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %15, 0
  br i1 %tobool, label %if.then, label %if.end.22

if.then:                                          ; preds = %entry
  %16 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %17 = load i32, i32* %width, align 4
  %18 = load i32, i32* %height, align 4
  %19 = load i32, i32* %type, align 4
  %20 = load i8*, i8** %name, align 8
  %21 = load double, double* %opacity, align 8
  %div = fdiv double %21, 1.000000e+02
  %22 = load i32, i32* %mode, align 4
  %call19 = call %struct._GimpLayer* @gimp_layer_new(%struct._GimpImage* %16, i32 %17, i32 %18, i32 %19, i8* %20, double %div, i32 %22)
  store %struct._GimpLayer* %call19, %struct._GimpLayer** %layer, align 8
  %23 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %tobool20 = icmp ne %struct._GimpLayer* %23, null
  br i1 %tobool20, label %if.end, label %if.then.21

if.then.21:                                       ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.21, %if.then
  br label %if.end.22

if.end.22:                                        ; preds = %if.end, %entry
  %24 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %25 = load i32, i32* %success, align 4
  %26 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool23 = icmp ne %struct._GError** %26, null
  br i1 %tobool23, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.22
  %27 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %28 = load %struct._GError*, %struct._GError** %27, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.22
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %28, %cond.true ], [ null, %cond.false ]
  %call24 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %24, i32 %25, %struct._GError* %cond)
  store %struct._GValueArray* %call24, %struct._GValueArray** %return_vals, align 8
  %29 = load i32, i32* %success, align 4
  %tobool25 = icmp ne i32 %29, 0
  br i1 %tobool25, label %if.then.26, label %if.end.29

if.then.26:                                       ; preds = %cond.end
  %30 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values27 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %30, i32 0, i32 1
  %31 = load %struct._GValue*, %struct._GValue** %values27, align 8
  %arrayidx28 = getelementptr inbounds %struct._GValue, %struct._GValue* %31, i64 1
  %32 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  call void @gimp_value_set_layer(%struct._GValue* %arrayidx28, %struct._GimpLayer* %32)
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.26, %cond.end
  %33 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %33
}

declare void @gimp_object_set_static_name(%struct._GimpObject*, i8*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #2

declare void @gimp_procedure_set_static_strings(%struct._GimpProcedure*, i8*, i8*, i8*, i8*, i8*, i8*, i8*) #1

declare void @gimp_procedure_add_argument(%struct._GimpProcedure*, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @gimp_param_spec_image_id(i8*, i8*, i8*, %struct._Gimp*, i32, i32) #1

declare %struct._GParamSpec* @gimp_param_spec_int32(i8*, i8*, i8*, i32, i32, i32, i32) #1

declare %struct._GParamSpec* @g_param_spec_enum(i8*, i8*, i8*, i64, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_image_type_get_type() #2

declare %struct._GParamSpec* @gimp_param_spec_string(i8*, i8*, i8*, i32, i32, i32, i8*, i32) #1

declare %struct._GParamSpec* @g_param_spec_double(i8*, i8*, i8*, double, double, double, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_layer_mode_effects_get_type() #2

declare void @gimp_procedure_add_return_value(%struct._GimpProcedure*, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @gimp_param_spec_layer_id(i8*, i8*, i8*, %struct._Gimp*, i32, i32) #1

declare void @gimp_pdb_register_procedure(%struct._GimpPDB*, %struct._GimpProcedure*) #1

declare void @g_object_unref(i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @layer_new_from_visible_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  %dest_image = alloca %struct._GimpImage*, align 8
  %name = alloca i8*, align 8
  %layer = alloca %struct._GimpLayer*, align 8
  %pickable = alloca %struct._GimpPickable*, align 8
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
  %call3 = call %struct._GimpImage* @gimp_value_get_image(%struct._GValue* %arrayidx2, %struct._Gimp* %5)
  store %struct._GimpImage* %call3, %struct._GimpImage** %dest_image, align 8
  %6 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values4 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %6, i32 0, i32 1
  %7 = load %struct._GValue*, %struct._GValue** %values4, align 8
  %arrayidx5 = getelementptr inbounds %struct._GValue, %struct._GValue* %7, i64 2
  %call6 = call i8* @g_value_get_string(%struct._GValue* %arrayidx5)
  store i8* %call6, i8** %name, align 8
  %8 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call7 = call %struct._GimpProjection* @gimp_image_get_projection(%struct._GimpImage* %9)
  %10 = bitcast %struct._GimpProjection* %call7 to %struct._GTypeInstance*
  %call8 = call i64 @gimp_pickable_interface_get_type() #5
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call8)
  %11 = bitcast %struct._GTypeInstance* %call9 to %struct._GimpPickable*
  store %struct._GimpPickable* %11, %struct._GimpPickable** %pickable, align 8
  %12 = load %struct._GimpPickable*, %struct._GimpPickable** %pickable, align 8
  call void @gimp_pickable_flush(%struct._GimpPickable* %12)
  %13 = load %struct._GimpPickable*, %struct._GimpPickable** %pickable, align 8
  %call10 = call %struct._TileManager* @gimp_pickable_get_tiles(%struct._GimpPickable* %13)
  %14 = load %struct._GimpImage*, %struct._GimpImage** %dest_image, align 8
  %15 = load %struct._GimpImage*, %struct._GimpImage** %dest_image, align 8
  %call11 = call i32 @gimp_image_base_type_with_alpha(%struct._GimpImage* %15)
  %16 = load i8*, i8** %name, align 8
  %call12 = call %struct._GimpLayer* @gimp_layer_new_from_tiles(%struct._TileManager* %call10, %struct._GimpImage* %14, i32 %call11, i8* %16, double 1.000000e+00, i32 0)
  store %struct._GimpLayer* %call12, %struct._GimpLayer** %layer, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %17 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %18 = load i32, i32* %success, align 4
  %19 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool13 = icmp ne %struct._GError** %19, null
  br i1 %tobool13, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %20 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %21 = load %struct._GError*, %struct._GError** %20, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %21, %cond.true ], [ null, %cond.false ]
  %call14 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %17, i32 %18, %struct._GError* %cond)
  store %struct._GValueArray* %call14, %struct._GValueArray** %return_vals, align 8
  %22 = load i32, i32* %success, align 4
  %tobool15 = icmp ne i32 %22, 0
  br i1 %tobool15, label %if.then.16, label %if.end.19

if.then.16:                                       ; preds = %cond.end
  %23 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values17 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %23, i32 0, i32 1
  %24 = load %struct._GValue*, %struct._GValue** %values17, align 8
  %arrayidx18 = getelementptr inbounds %struct._GValue, %struct._GValue* %24, i64 1
  %25 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  call void @gimp_value_set_layer(%struct._GValue* %arrayidx18, %struct._GimpLayer* %25)
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.16, %cond.end
  %26 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %26
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @layer_new_from_drawable_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  %dest_image = alloca %struct._GimpImage*, align 8
  %layer_copy = alloca %struct._GimpLayer*, align 8
  %new_type = alloca i64, align 8
  %new_item = alloca %struct._GimpItem*, align 8
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
  store i32 1, i32* %success, align 4
  store %struct._GimpLayer* null, %struct._GimpLayer** %layer_copy, align 8
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
  %5 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call3 = call %struct._GimpImage* @gimp_value_get_image(%struct._GValue* %arrayidx2, %struct._Gimp* %5)
  store %struct._GimpImage* %call3, %struct._GimpImage** %dest_image, align 8
  %6 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then, label %if.end.29

if.then:                                          ; preds = %entry
  %7 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %8 = bitcast %struct._GimpDrawable* %7 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %8, %struct._GTypeInstance** %__inst, align 8
  %call4 = call i64 @gimp_layer_get_type() #5
  store i64 %call4, i64* %__t, align 8
  %9 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool5 = icmp ne %struct._GTypeInstance* %9, null
  br i1 %tobool5, label %if.else, label %if.then.6

if.then.6:                                        ; preds = %if.then
  store i32 0, i32* %__r, align 4
  br label %if.end.12

if.else:                                          ; preds = %if.then
  %10 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %10, i32 0, i32 0
  %11 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool7 = icmp ne %struct._GTypeClass* %11, null
  br i1 %tobool7, label %land.lhs.true, label %if.else.10

land.lhs.true:                                    ; preds = %if.else
  %12 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class8 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %12, i32 0, i32 0
  %13 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class8, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %13, i32 0, i32 0
  %14 = load i64, i64* %g_type, align 8
  %15 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %14, %15
  br i1 %cmp, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.10:                                       ; preds = %land.lhs.true, %if.else
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %17 = load i64, i64* %__t, align 8
  %call11 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %16, i64 %17) #6
  store i32 %call11, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.10, %if.then.9
  br label %if.end.12

if.end.12:                                        ; preds = %if.end, %if.then.6
  %18 = load i32, i32* %__r, align 4
  store i32 %18, i32* %tmp
  %19 = load i32, i32* %tmp
  %tobool13 = icmp ne i32 %19, 0
  br i1 %tobool13, label %if.then.14, label %if.else.17

if.then.14:                                       ; preds = %if.end.12
  %20 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %21 = bitcast %struct._GimpDrawable* %20 to %struct._GTypeInstance*
  %g_class15 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %21, i32 0, i32 0
  %22 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class15, align 8
  %g_type16 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %22, i32 0, i32 0
  %23 = load i64, i64* %g_type16, align 8
  store i64 %23, i64* %new_type, align 8
  br label %if.end.19

if.else.17:                                       ; preds = %if.end.12
  %call18 = call i64 @gimp_layer_get_type() #5
  store i64 %call18, i64* %new_type, align 8
  br label %if.end.19

if.end.19:                                        ; preds = %if.else.17, %if.then.14
  %24 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %25 = bitcast %struct._GimpDrawable* %24 to %struct._GTypeInstance*
  %call20 = call i64 @gimp_item_get_type() #5
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call20)
  %26 = bitcast %struct._GTypeInstance* %call21 to %struct._GimpItem*
  %27 = load %struct._GimpImage*, %struct._GimpImage** %dest_image, align 8
  %28 = load i64, i64* %new_type, align 8
  %call22 = call %struct._GimpItem* @gimp_item_convert(%struct._GimpItem* %26, %struct._GimpImage* %27, i64 %28)
  store %struct._GimpItem* %call22, %struct._GimpItem** %new_item, align 8
  %29 = load %struct._GimpItem*, %struct._GimpItem** %new_item, align 8
  %tobool23 = icmp ne %struct._GimpItem* %29, null
  br i1 %tobool23, label %if.then.24, label %if.else.27

if.then.24:                                       ; preds = %if.end.19
  %30 = load %struct._GimpItem*, %struct._GimpItem** %new_item, align 8
  %31 = bitcast %struct._GimpItem* %30 to %struct._GTypeInstance*
  %call25 = call i64 @gimp_layer_get_type() #5
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 %call25)
  %32 = bitcast %struct._GTypeInstance* %call26 to %struct._GimpLayer*
  store %struct._GimpLayer* %32, %struct._GimpLayer** %layer_copy, align 8
  br label %if.end.28

if.else.27:                                       ; preds = %if.end.19
  store i32 0, i32* %success, align 4
  br label %if.end.28

if.end.28:                                        ; preds = %if.else.27, %if.then.24
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %entry
  %33 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %34 = load i32, i32* %success, align 4
  %35 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool30 = icmp ne %struct._GError** %35, null
  br i1 %tobool30, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.29
  %36 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %37 = load %struct._GError*, %struct._GError** %36, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.29
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %37, %cond.true ], [ null, %cond.false ]
  %call31 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %33, i32 %34, %struct._GError* %cond)
  store %struct._GValueArray* %call31, %struct._GValueArray** %return_vals, align 8
  %38 = load i32, i32* %success, align 4
  %tobool32 = icmp ne i32 %38, 0
  br i1 %tobool32, label %if.then.33, label %if.end.36

if.then.33:                                       ; preds = %cond.end
  %39 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values34 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %39, i32 0, i32 1
  %40 = load %struct._GValue*, %struct._GValue** %values34, align 8
  %arrayidx35 = getelementptr inbounds %struct._GValue, %struct._GValue* %40, i64 1
  %41 = load %struct._GimpLayer*, %struct._GimpLayer** %layer_copy, align 8
  call void @gimp_value_set_layer(%struct._GValue* %arrayidx35, %struct._GimpLayer* %41)
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.33, %cond.end
  %42 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %42
}

declare %struct._GParamSpec* @gimp_param_spec_drawable_id(i8*, i8*, i8*, %struct._Gimp*, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @layer_group_new_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  %layer_group = alloca %struct._GimpLayer*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store %struct._GimpLayer* null, %struct._GimpLayer** %layer_group, align 8
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
  %call1 = call %struct._GimpLayer* @gimp_group_layer_new(%struct._GimpImage* %4)
  store %struct._GimpLayer* %call1, %struct._GimpLayer** %layer_group, align 8
  %5 = load %struct._GimpLayer*, %struct._GimpLayer** %layer_group, align 8
  %tobool2 = icmp ne %struct._GimpLayer* %5, null
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
  %14 = load %struct._GimpLayer*, %struct._GimpLayer** %layer_group, align 8
  call void @gimp_value_set_layer(%struct._GValue* %arrayidx10, %struct._GimpLayer* %14)
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.8, %cond.end
  %15 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %15
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @layer_copy_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %return_vals = alloca %struct._GValueArray*, align 8
  %layer = alloca %struct._GimpLayer*, align 8
  %add_alpha = alloca i32, align 4
  %layer_copy = alloca %struct._GimpLayer*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store %struct._GimpLayer* null, %struct._GimpLayer** %layer_copy, align 8
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %2 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call = call %struct._GimpLayer* @gimp_value_get_layer(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpLayer* %call, %struct._GimpLayer** %layer, align 8
  %3 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %3, i32 0, i32 1
  %4 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %4, i64 1
  %call3 = call i32 @g_value_get_boolean(%struct._GValue* %arrayidx2)
  store i32 %call3, i32* %add_alpha, align 4
  %5 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end.14

if.then:                                          ; preds = %entry
  %6 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %7 = bitcast %struct._GimpLayer* %6 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_item_get_type() #5
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call4)
  %8 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpItem*
  %9 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %10 = bitcast %struct._GimpLayer* %9 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %10, i32 0, i32 0
  %11 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %11, i32 0, i32 0
  %12 = load i64, i64* %g_type, align 8
  %call6 = call %struct._GimpItem* @gimp_item_duplicate(%struct._GimpItem* %8, i64 %12)
  %13 = bitcast %struct._GimpItem* %call6 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_layer_get_type() #5
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call7)
  %14 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpLayer*
  store %struct._GimpLayer* %14, %struct._GimpLayer** %layer_copy, align 8
  %15 = load %struct._GimpLayer*, %struct._GimpLayer** %layer_copy, align 8
  %tobool9 = icmp ne %struct._GimpLayer* %15, null
  br i1 %tobool9, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %if.then
  %16 = load i32, i32* %add_alpha, align 4
  %tobool11 = icmp ne i32 %16, 0
  br i1 %tobool11, label %if.then.12, label %if.end

if.then.12:                                       ; preds = %if.then.10
  %17 = load %struct._GimpLayer*, %struct._GimpLayer** %layer_copy, align 8
  call void @gimp_layer_add_alpha(%struct._GimpLayer* %17)
  br label %if.end

if.end:                                           ; preds = %if.then.12, %if.then.10
  br label %if.end.13

if.else:                                          ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end.13

if.end.13:                                        ; preds = %if.else, %if.end
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %entry
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
  store %struct._GValueArray* %call16, %struct._GValueArray** %return_vals, align 8
  %23 = load i32, i32* %success, align 4
  %tobool17 = icmp ne i32 %23, 0
  br i1 %tobool17, label %if.then.18, label %if.end.21

if.then.18:                                       ; preds = %cond.end
  %24 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values19 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %24, i32 0, i32 1
  %25 = load %struct._GValue*, %struct._GValue** %values19, align 8
  %arrayidx20 = getelementptr inbounds %struct._GValue, %struct._GValue* %25, i64 1
  %26 = load %struct._GimpLayer*, %struct._GimpLayer** %layer_copy, align 8
  call void @gimp_value_set_layer(%struct._GValue* %arrayidx20, %struct._GimpLayer* %26)
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.18, %cond.end
  %27 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %27
}

declare %struct._GParamSpec* @g_param_spec_boolean(i8*, i8*, i8*, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @layer_add_alpha_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  br i1 %tobool, label %if.then, label %if.end.10

if.then:                                          ; preds = %entry
  %4 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %5 = bitcast %struct._GimpLayer* %4 to %struct._GTypeInstance*
  %call1 = call i64 @gimp_item_get_type() #5
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call1)
  %6 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpItem*
  %7 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call3 = call i32 @gimp_pdb_item_is_writable(%struct._GimpItem* %6, %struct._GError** %7)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %8 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %9 = bitcast %struct._GimpLayer* %8 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_item_get_type() #5
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call5)
  %10 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpItem*
  %11 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call7 = call i32 @gimp_pdb_item_is_not_group(%struct._GimpItem* %10, %struct._GError** %11)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %land.lhs.true
  %12 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  call void @gimp_layer_add_alpha(%struct._GimpLayer* %12)
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.9
  br label %if.end.10

if.end.10:                                        ; preds = %if.end, %entry
  %13 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %14 = load i32, i32* %success, align 4
  %15 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool11 = icmp ne %struct._GError** %15, null
  br i1 %tobool11, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.10
  %16 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %17 = load %struct._GError*, %struct._GError** %16, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.10
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %17, %cond.true ], [ null, %cond.false ]
  %call12 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %13, i32 %14, %struct._GError* %cond)
  ret %struct._GValueArray* %call12
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @layer_flatten_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  br i1 %tobool, label %if.then, label %if.end.10

if.then:                                          ; preds = %entry
  %4 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %5 = bitcast %struct._GimpLayer* %4 to %struct._GTypeInstance*
  %call1 = call i64 @gimp_item_get_type() #5
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call1)
  %6 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpItem*
  %7 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call3 = call i32 @gimp_pdb_item_is_writable(%struct._GimpItem* %6, %struct._GError** %7)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %8 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %9 = bitcast %struct._GimpLayer* %8 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_item_get_type() #5
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call5)
  %10 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpItem*
  %11 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call7 = call i32 @gimp_pdb_item_is_not_group(%struct._GimpItem* %10, %struct._GError** %11)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %land.lhs.true
  %12 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %13 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  call void @gimp_layer_flatten(%struct._GimpLayer* %12, %struct._GimpContext* %13)
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.9
  br label %if.end.10

if.end.10:                                        ; preds = %if.end, %entry
  %14 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %15 = load i32, i32* %success, align 4
  %16 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool11 = icmp ne %struct._GError** %16, null
  br i1 %tobool11, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.10
  %17 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %18 = load %struct._GError*, %struct._GError** %17, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.10
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %18, %cond.true ], [ null, %cond.false ]
  %call12 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %14, i32 %15, %struct._GError* %cond)
  ret %struct._GValueArray* %call12
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @layer_scale_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %layer = alloca %struct._GimpLayer*, align 8
  %new_width = alloca i32, align 4
  %new_height = alloca i32, align 4
  %local_origin = alloca i32, align 4
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
  %call = call %struct._GimpLayer* @gimp_value_get_layer(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpLayer* %call, %struct._GimpLayer** %layer, align 8
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
  %call9 = call i32 @g_value_get_boolean(%struct._GValue* %arrayidx8)
  store i32 %call9, i32* %local_origin, align 4
  %9 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %if.then, label %if.end.27

if.then:                                          ; preds = %entry
  %10 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %11 = bitcast %struct._GimpLayer* %10 to %struct._GTypeInstance*
  %call10 = call i64 @gimp_item_get_type() #5
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call10)
  %12 = bitcast %struct._GTypeInstance* %call11 to %struct._GimpItem*
  %13 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call12 = call i32 @gimp_pdb_item_is_attached(%struct._GimpItem* %12, %struct._GimpImage* null, i32 1, %struct._GError** %13)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %if.then
  %14 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %15 = bitcast %struct._GimpContext* %14 to %struct._GTypeInstance*
  %call15 = call i64 @gimp_pdb_context_get_type() #5
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call15)
  %16 = bitcast %struct._GTypeInstance* %call16 to %struct._GimpPDBContext*
  store %struct._GimpPDBContext* %16, %struct._GimpPDBContext** %pdb_context, align 8
  %17 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %tobool17 = icmp ne %struct._GimpProgress* %17, null
  br i1 %tobool17, label %if.then.18, label %if.end

if.then.18:                                       ; preds = %if.then.14
  %18 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %call19 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.193, i32 0, i32 0)) #7
  %call20 = call %struct._GimpProgress* @gimp_progress_start(%struct._GimpProgress* %18, i8* %call19, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then.18, %if.then.14
  %19 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %20 = bitcast %struct._GimpLayer* %19 to %struct._GTypeInstance*
  %call21 = call i64 @gimp_item_get_type() #5
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call21)
  %21 = bitcast %struct._GTypeInstance* %call22 to %struct._GimpItem*
  %22 = load i32, i32* %new_width, align 4
  %23 = load i32, i32* %new_height, align 4
  %24 = load %struct._GimpPDBContext*, %struct._GimpPDBContext** %pdb_context, align 8
  %interpolation = getelementptr inbounds %struct._GimpPDBContext, %struct._GimpPDBContext* %24, i32 0, i32 9
  %25 = load i32, i32* %interpolation, align 4
  %26 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %27 = load i32, i32* %local_origin, align 4
  call void @gimp_item_scale_by_origin(%struct._GimpItem* %21, i32 %22, i32 %23, i32 %25, %struct._GimpProgress* %26, i32 %27)
  %28 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %tobool23 = icmp ne %struct._GimpProgress* %28, null
  br i1 %tobool23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.end
  %29 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  call void @gimp_progress_end(%struct._GimpProgress* %29)
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.24, %if.end
  br label %if.end.26

if.else:                                          ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end.26

if.end.26:                                        ; preds = %if.else, %if.end.25
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %entry
  %30 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %31 = load i32, i32* %success, align 4
  %32 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool28 = icmp ne %struct._GError** %32, null
  br i1 %tobool28, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.27
  %33 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %34 = load %struct._GError*, %struct._GError** %33, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.27
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %34, %cond.true ], [ null, %cond.false ]
  %call29 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %30, i32 %31, %struct._GError* %cond)
  ret %struct._GValueArray* %call29
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @layer_scale_full_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %layer = alloca %struct._GimpLayer*, align 8
  %new_width = alloca i32, align 4
  %new_height = alloca i32, align 4
  %local_origin = alloca i32, align 4
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
  %call = call %struct._GimpLayer* @gimp_value_get_layer(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpLayer* %call, %struct._GimpLayer** %layer, align 8
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
  %call9 = call i32 @g_value_get_boolean(%struct._GValue* %arrayidx8)
  store i32 %call9, i32* %local_origin, align 4
  %9 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values10 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %9, i32 0, i32 1
  %10 = load %struct._GValue*, %struct._GValue** %values10, align 8
  %arrayidx11 = getelementptr inbounds %struct._GValue, %struct._GValue* %10, i64 4
  %call12 = call i32 @g_value_get_enum(%struct._GValue* %arrayidx11)
  store i32 %call12, i32* %interpolation, align 4
  %11 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %if.then, label %if.end.28

if.then:                                          ; preds = %entry
  %12 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %13 = bitcast %struct._GimpLayer* %12 to %struct._GTypeInstance*
  %call13 = call i64 @gimp_item_get_type() #5
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call13)
  %14 = bitcast %struct._GTypeInstance* %call14 to %struct._GimpItem*
  %15 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call15 = call i32 @gimp_pdb_item_is_attached(%struct._GimpItem* %14, %struct._GimpImage* null, i32 1, %struct._GError** %15)
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.then.17, label %if.else

if.then.17:                                       ; preds = %if.then
  %16 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %tobool18 = icmp ne %struct._GimpProgress* %16, null
  br i1 %tobool18, label %if.then.19, label %if.end

if.then.19:                                       ; preds = %if.then.17
  %17 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %call20 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.193, i32 0, i32 0)) #7
  %call21 = call %struct._GimpProgress* @gimp_progress_start(%struct._GimpProgress* %17, i8* %call20, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then.19, %if.then.17
  %18 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %19 = bitcast %struct._GimpLayer* %18 to %struct._GTypeInstance*
  %call22 = call i64 @gimp_item_get_type() #5
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call22)
  %20 = bitcast %struct._GTypeInstance* %call23 to %struct._GimpItem*
  %21 = load i32, i32* %new_width, align 4
  %22 = load i32, i32* %new_height, align 4
  %23 = load i32, i32* %interpolation, align 4
  %24 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %25 = load i32, i32* %local_origin, align 4
  call void @gimp_item_scale_by_origin(%struct._GimpItem* %20, i32 %21, i32 %22, i32 %23, %struct._GimpProgress* %24, i32 %25)
  %26 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %tobool24 = icmp ne %struct._GimpProgress* %26, null
  br i1 %tobool24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.end
  %27 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  call void @gimp_progress_end(%struct._GimpProgress* %27)
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.25, %if.end
  br label %if.end.27

if.else:                                          ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end.27

if.end.27:                                        ; preds = %if.else, %if.end.26
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %entry
  %28 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %29 = load i32, i32* %success, align 4
  %30 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool29 = icmp ne %struct._GError** %30, null
  br i1 %tobool29, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.28
  %31 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %32 = load %struct._GError*, %struct._GError** %31, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.28
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %32, %cond.true ], [ null, %cond.false ]
  %call30 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %28, i32 %29, %struct._GError* %cond)
  ret %struct._GValueArray* %call30
}

; Function Attrs: nounwind readnone
declare i64 @gimp_interpolation_type_get_type() #2

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @layer_resize_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %layer = alloca %struct._GimpLayer*, align 8
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
  %call = call %struct._GimpLayer* @gimp_value_get_layer(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpLayer* %call, %struct._GimpLayer** %layer, align 8
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
  br i1 %tobool, label %if.then, label %if.end.20

if.then:                                          ; preds = %entry
  %12 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %13 = bitcast %struct._GimpLayer* %12 to %struct._GTypeInstance*
  %call13 = call i64 @gimp_item_get_type() #5
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call13)
  %14 = bitcast %struct._GTypeInstance* %call14 to %struct._GimpItem*
  %15 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call15 = call i32 @gimp_pdb_item_is_attached(%struct._GimpItem* %14, %struct._GimpImage* null, i32 1, %struct._GError** %15)
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.then.17, label %if.else

if.then.17:                                       ; preds = %if.then
  %16 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %17 = bitcast %struct._GimpLayer* %16 to %struct._GTypeInstance*
  %call18 = call i64 @gimp_item_get_type() #5
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call18)
  %18 = bitcast %struct._GTypeInstance* %call19 to %struct._GimpItem*
  %19 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %20 = load i32, i32* %new_width, align 4
  %21 = load i32, i32* %new_height, align 4
  %22 = load i32, i32* %offx, align 4
  %23 = load i32, i32* %offy, align 4
  call void @gimp_item_resize(%struct._GimpItem* %18, %struct._GimpContext* %19, i32 %20, i32 %21, i32 %22, i32 %23)
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.17
  br label %if.end.20

if.end.20:                                        ; preds = %if.end, %entry
  %24 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %25 = load i32, i32* %success, align 4
  %26 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool21 = icmp ne %struct._GError** %26, null
  br i1 %tobool21, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.20
  %27 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %28 = load %struct._GError*, %struct._GError** %27, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.20
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %28, %cond.true ], [ null, %cond.false ]
  %call22 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %24, i32 %25, %struct._GError* %cond)
  ret %struct._GValueArray* %call22
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @layer_resize_to_image_size_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  br i1 %tobool, label %if.then, label %if.end.6

if.then:                                          ; preds = %entry
  %4 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %5 = bitcast %struct._GimpLayer* %4 to %struct._GTypeInstance*
  %call1 = call i64 @gimp_item_get_type() #5
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call1)
  %6 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpItem*
  %7 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call3 = call i32 @gimp_pdb_item_is_attached(%struct._GimpItem* %6, %struct._GimpImage* null, i32 1, %struct._GError** %7)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.then
  %8 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %9 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  call void @gimp_layer_resize_to_image(%struct._GimpLayer* %8, %struct._GimpContext* %9)
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.5
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
define internal %struct._GValueArray* @layer_translate_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %layer = alloca %struct._GimpLayer*, align 8
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
  %call = call %struct._GimpLayer* @gimp_value_get_layer(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpLayer* %call, %struct._GimpLayer** %layer, align 8
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
  br i1 %tobool, label %if.then, label %if.end.16

if.then:                                          ; preds = %entry
  %8 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %9 = bitcast %struct._GimpLayer* %8 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_item_get_type() #5
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call7)
  %10 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpItem*
  %call9 = call i32 @gimp_item_get_linked(%struct._GimpItem* %10)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %if.then
  %11 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %12 = bitcast %struct._GimpLayer* %11 to %struct._GTypeInstance*
  %call12 = call i64 @gimp_item_get_type() #5
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call12)
  %13 = bitcast %struct._GTypeInstance* %call13 to %struct._GimpItem*
  %14 = load i32, i32* %offx, align 4
  %15 = load i32, i32* %offy, align 4
  call void @gimp_item_linked_translate(%struct._GimpItem* %13, i32 %14, i32 %15, i32 1)
  br label %if.end

if.else:                                          ; preds = %if.then
  %16 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %17 = bitcast %struct._GimpLayer* %16 to %struct._GTypeInstance*
  %call14 = call i64 @gimp_item_get_type() #5
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call14)
  %18 = bitcast %struct._GTypeInstance* %call15 to %struct._GimpItem*
  %19 = load i32, i32* %offx, align 4
  %20 = load i32, i32* %offy, align 4
  call void @gimp_item_translate(%struct._GimpItem* %18, i32 %19, i32 %20, i32 1)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.11
  br label %if.end.16

if.end.16:                                        ; preds = %if.end, %entry
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
define internal %struct._GValueArray* @layer_set_offsets_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %layer = alloca %struct._GimpLayer*, align 8
  %offx = alloca i32, align 4
  %offy = alloca i32, align 4
  %offset_x = alloca i32, align 4
  %offset_y = alloca i32, align 4
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
  br i1 %tobool, label %if.then, label %if.end.19

if.then:                                          ; preds = %entry
  %8 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %9 = bitcast %struct._GimpLayer* %8 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_item_get_type() #5
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call7)
  %10 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpItem*
  call void @gimp_item_get_offset(%struct._GimpItem* %10, i32* %offset_x, i32* %offset_y)
  %11 = load i32, i32* %offset_x, align 4
  %12 = load i32, i32* %offx, align 4
  %sub = sub nsw i32 %12, %11
  store i32 %sub, i32* %offx, align 4
  %13 = load i32, i32* %offset_y, align 4
  %14 = load i32, i32* %offy, align 4
  %sub9 = sub nsw i32 %14, %13
  store i32 %sub9, i32* %offy, align 4
  %15 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %16 = bitcast %struct._GimpLayer* %15 to %struct._GTypeInstance*
  %call10 = call i64 @gimp_item_get_type() #5
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call10)
  %17 = bitcast %struct._GTypeInstance* %call11 to %struct._GimpItem*
  %call12 = call i32 @gimp_item_get_linked(%struct._GimpItem* %17)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %if.then
  %18 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %19 = bitcast %struct._GimpLayer* %18 to %struct._GTypeInstance*
  %call15 = call i64 @gimp_item_get_type() #5
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call15)
  %20 = bitcast %struct._GTypeInstance* %call16 to %struct._GimpItem*
  %21 = load i32, i32* %offx, align 4
  %22 = load i32, i32* %offy, align 4
  call void @gimp_item_linked_translate(%struct._GimpItem* %20, i32 %21, i32 %22, i32 1)
  br label %if.end

if.else:                                          ; preds = %if.then
  %23 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %24 = bitcast %struct._GimpLayer* %23 to %struct._GTypeInstance*
  %call17 = call i64 @gimp_item_get_type() #5
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call17)
  %25 = bitcast %struct._GTypeInstance* %call18 to %struct._GimpItem*
  %26 = load i32, i32* %offx, align 4
  %27 = load i32, i32* %offy, align 4
  call void @gimp_item_translate(%struct._GimpItem* %25, i32 %26, i32 %27, i32 1)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.14
  br label %if.end.19

if.end.19:                                        ; preds = %if.end, %entry
  %28 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %29 = load i32, i32* %success, align 4
  %30 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool20 = icmp ne %struct._GError** %30, null
  br i1 %tobool20, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.19
  %31 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %32 = load %struct._GError*, %struct._GError** %31, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.19
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %32, %cond.true ], [ null, %cond.false ]
  %call21 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %28, i32 %29, %struct._GError* %cond)
  ret %struct._GValueArray* %call21
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @layer_create_mask_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %return_vals = alloca %struct._GValueArray*, align 8
  %layer = alloca %struct._GimpLayer*, align 8
  %mask_type = alloca i32, align 4
  %mask = alloca %struct._GimpLayerMask*, align 8
  %channel = alloca %struct._GimpChannel*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store %struct._GimpLayerMask* null, %struct._GimpLayerMask** %mask, align 8
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %2 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call = call %struct._GimpLayer* @gimp_value_get_layer(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpLayer* %call, %struct._GimpLayer** %layer, align 8
  %3 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %3, i32 0, i32 1
  %4 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %4, i64 1
  %call3 = call i32 @g_value_get_enum(%struct._GValue* %arrayidx2)
  store i32 %call3, i32* %mask_type, align 4
  %5 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end.19

if.then:                                          ; preds = %entry
  store %struct._GimpChannel* null, %struct._GimpChannel** %channel, align 8
  %6 = load i32, i32* %mask_type, align 4
  %cmp = icmp eq i32 %6, 6
  br i1 %cmp, label %if.then.4, label %if.end.11

if.then.4:                                        ; preds = %if.then
  %7 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %8 = bitcast %struct._GimpLayer* %7 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_item_get_type() #5
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call5)
  %9 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpItem*
  %call7 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %9)
  %call8 = call %struct._GimpChannel* @gimp_image_get_active_channel(%struct._GimpImage* %call7)
  store %struct._GimpChannel* %call8, %struct._GimpChannel** %channel, align 8
  %10 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %tobool9 = icmp ne %struct._GimpChannel* %10, null
  br i1 %tobool9, label %if.end, label %if.then.10

if.then.10:                                       ; preds = %if.then.4
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.10, %if.then.4
  br label %if.end.11

if.end.11:                                        ; preds = %if.end, %if.then
  %11 = load i32, i32* %success, align 4
  %tobool12 = icmp ne i32 %11, 0
  br i1 %tobool12, label %if.then.13, label %if.end.18

if.then.13:                                       ; preds = %if.end.11
  %12 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %13 = load i32, i32* %mask_type, align 4
  %14 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %call14 = call %struct._GimpLayerMask* @gimp_layer_create_mask(%struct._GimpLayer* %12, i32 %13, %struct._GimpChannel* %14)
  store %struct._GimpLayerMask* %call14, %struct._GimpLayerMask** %mask, align 8
  %15 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask, align 8
  %tobool15 = icmp ne %struct._GimpLayerMask* %15, null
  br i1 %tobool15, label %if.end.17, label %if.then.16

if.then.16:                                       ; preds = %if.then.13
  store i32 0, i32* %success, align 4
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.16, %if.then.13
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %if.end.11
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %entry
  %16 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %17 = load i32, i32* %success, align 4
  %18 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool20 = icmp ne %struct._GError** %18, null
  br i1 %tobool20, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.19
  %19 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %20 = load %struct._GError*, %struct._GError** %19, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.19
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %20, %cond.true ], [ null, %cond.false ]
  %call21 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %16, i32 %17, %struct._GError* %cond)
  store %struct._GValueArray* %call21, %struct._GValueArray** %return_vals, align 8
  %21 = load i32, i32* %success, align 4
  %tobool22 = icmp ne i32 %21, 0
  br i1 %tobool22, label %if.then.23, label %if.end.26

if.then.23:                                       ; preds = %cond.end
  %22 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values24 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %22, i32 0, i32 1
  %23 = load %struct._GValue*, %struct._GValue** %values24, align 8
  %arrayidx25 = getelementptr inbounds %struct._GValue, %struct._GValue* %23, i64 1
  %24 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask, align 8
  call void @gimp_value_set_layer_mask(%struct._GValue* %arrayidx25, %struct._GimpLayerMask* %24)
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.23, %cond.end
  %25 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %25
}

; Function Attrs: nounwind readnone
declare i64 @gimp_add_mask_type_get_type() #2

declare %struct._GParamSpec* @gimp_param_spec_layer_mask_id(i8*, i8*, i8*, %struct._Gimp*, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @layer_get_mask_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %return_vals = alloca %struct._GValueArray*, align 8
  %layer = alloca %struct._GimpLayer*, align 8
  %mask = alloca %struct._GimpLayerMask*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store %struct._GimpLayerMask* null, %struct._GimpLayerMask** %mask, align 8
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %2 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call = call %struct._GimpLayer* @gimp_value_get_layer(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpLayer* %call, %struct._GimpLayer** %layer, align 8
  %3 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %call1 = call %struct._GimpLayerMask* @gimp_layer_get_mask(%struct._GimpLayer* %4)
  store %struct._GimpLayerMask* %call1, %struct._GimpLayerMask** %mask, align 8
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
  %13 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask, align 8
  call void @gimp_value_set_layer_mask(%struct._GValue* %arrayidx7, %struct._GimpLayerMask* %13)
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.5, %cond.end
  %14 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %14
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @layer_from_mask_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %return_vals = alloca %struct._GValueArray*, align 8
  %mask = alloca %struct._GimpLayerMask*, align 8
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
  %call = call %struct._GimpLayerMask* @gimp_value_get_layer_mask(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpLayerMask* %call, %struct._GimpLayerMask** %mask, align 8
  %3 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask, align 8
  %call1 = call %struct._GimpLayer* @gimp_layer_mask_get_layer(%struct._GimpLayerMask* %4)
  store %struct._GimpLayer* %call1, %struct._GimpLayer** %layer, align 8
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
  %13 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  call void @gimp_value_set_layer(%struct._GValue* %arrayidx7, %struct._GimpLayer* %13)
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.5, %cond.end
  %14 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %14
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @layer_add_mask_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
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
  %call = call %struct._GimpLayer* @gimp_value_get_layer(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpLayer* %call, %struct._GimpLayer** %layer, align 8
  %3 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %3, i32 0, i32 1
  %4 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %4, i64 1
  %5 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call3 = call %struct._GimpLayerMask* @gimp_value_get_layer_mask(%struct._GValue* %arrayidx2, %struct._Gimp* %5)
  store %struct._GimpLayerMask* %call3, %struct._GimpLayerMask** %mask, align 8
  %6 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then, label %if.end.17

if.then:                                          ; preds = %entry
  %7 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask, align 8
  %8 = bitcast %struct._GimpLayerMask* %7 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_item_get_type() #5
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call4)
  %9 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpItem*
  %10 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %11 = bitcast %struct._GimpLayer* %10 to %struct._GTypeInstance*
  %call6 = call i64 @gimp_item_get_type() #5
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call6)
  %12 = bitcast %struct._GTypeInstance* %call7 to %struct._GimpItem*
  %call8 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %12)
  %13 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call9 = call i32 @gimp_pdb_item_is_floating(%struct._GimpItem* %9, %struct._GimpImage* %call8, %struct._GError** %13)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %14 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %15 = bitcast %struct._GimpLayer* %14 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_item_get_type() #5
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call11)
  %16 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpItem*
  %17 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call13 = call i32 @gimp_pdb_item_is_not_group(%struct._GimpItem* %16, %struct._GError** %17)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %land.lhs.true
  %18 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %19 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask, align 8
  %20 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call16 = call %struct._GimpLayerMask* @gimp_layer_add_mask(%struct._GimpLayer* %18, %struct._GimpLayerMask* %19, i32 1, %struct._GError** %20)
  %21 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask, align 8
  %cmp = icmp eq %struct._GimpLayerMask* %call16, %21
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %success, align 4
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.15
  br label %if.end.17

if.end.17:                                        ; preds = %if.end, %entry
  %22 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %23 = load i32, i32* %success, align 4
  %24 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool18 = icmp ne %struct._GError** %24, null
  br i1 %tobool18, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.17
  %25 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %26 = load %struct._GError*, %struct._GError** %25, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.17
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %26, %cond.true ], [ null, %cond.false ]
  %call19 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %22, i32 %23, %struct._GError* %cond)
  ret %struct._GValueArray* %call19
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @layer_remove_mask_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
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
  %call = call %struct._GimpLayer* @gimp_value_get_layer(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpLayer* %call, %struct._GimpLayer** %layer, align 8
  %3 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %3, i32 0, i32 1
  %4 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %4, i64 1
  %call3 = call i32 @g_value_get_enum(%struct._GValue* %arrayidx2)
  store i32 %call3, i32* %mode, align 4
  %5 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end.11

if.then:                                          ; preds = %entry
  %6 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %7 = bitcast %struct._GimpLayer* %6 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_item_get_type() #5
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call4)
  %8 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpItem*
  %9 = load i32, i32* %mode, align 4
  %cmp = icmp eq i32 %9, 0
  %conv = zext i1 %cmp to i32
  %10 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call6 = call i32 @gimp_pdb_item_is_attached(%struct._GimpItem* %8, %struct._GimpImage* null, i32 %conv, %struct._GError** %10)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %11 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %call8 = call %struct._GimpLayerMask* @gimp_layer_get_mask(%struct._GimpLayer* %11)
  %tobool9 = icmp ne %struct._GimpLayerMask* %call8, null
  br i1 %tobool9, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %land.lhs.true
  %12 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %13 = load i32, i32* %mode, align 4
  call void @gimp_layer_apply_mask(%struct._GimpLayer* %12, i32 %13, i32 1)
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.10
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

; Function Attrs: nounwind readnone
declare i64 @gimp_mask_apply_mode_get_type() #2

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @layer_is_floating_sel_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %return_vals = alloca %struct._GValueArray*, align 8
  %layer = alloca %struct._GimpLayer*, align 8
  %is_floating_sel = alloca i32, align 4
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store i32 0, i32* %is_floating_sel, align 4
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %2 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call = call %struct._GimpLayer* @gimp_value_get_layer(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpLayer* %call, %struct._GimpLayer** %layer, align 8
  %3 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %call1 = call i32 @gimp_layer_is_floating_sel(%struct._GimpLayer* %4)
  store i32 %call1, i32* %is_floating_sel, align 4
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
  %13 = load i32, i32* %is_floating_sel, align 4
  call void @g_value_set_boolean(%struct._GValue* %arrayidx7, i32 %13)
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.5, %cond.end
  %14 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %14
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @layer_get_lock_alpha_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %return_vals = alloca %struct._GValueArray*, align 8
  %layer = alloca %struct._GimpLayer*, align 8
  %lock_alpha = alloca i32, align 4
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store i32 0, i32* %lock_alpha, align 4
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %2 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call = call %struct._GimpLayer* @gimp_value_get_layer(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpLayer* %call, %struct._GimpLayer** %layer, align 8
  %3 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %call1 = call i32 @gimp_layer_get_lock_alpha(%struct._GimpLayer* %4)
  store i32 %call1, i32* %lock_alpha, align 4
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
  %13 = load i32, i32* %lock_alpha, align 4
  call void @g_value_set_boolean(%struct._GValue* %arrayidx7, i32 %13)
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.5, %cond.end
  %14 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %14
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @layer_set_lock_alpha_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %layer = alloca %struct._GimpLayer*, align 8
  %lock_alpha = alloca i32, align 4
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
  %3 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %3, i32 0, i32 1
  %4 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %4, i64 1
  %call3 = call i32 @g_value_get_boolean(%struct._GValue* %arrayidx2)
  store i32 %call3, i32* %lock_alpha, align 4
  %5 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end.7

if.then:                                          ; preds = %entry
  %6 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %call4 = call i32 @gimp_layer_can_lock_alpha(%struct._GimpLayer* %6)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.then
  %7 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %8 = load i32, i32* %lock_alpha, align 4
  call void @gimp_layer_set_lock_alpha(%struct._GimpLayer* %7, i32 %8, i32 1)
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.6
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %entry
  %9 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %10 = load i32, i32* %success, align 4
  %11 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool8 = icmp ne %struct._GError** %11, null
  br i1 %tobool8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.7
  %12 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %13 = load %struct._GError*, %struct._GError** %12, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %13, %cond.true ], [ null, %cond.false ]
  %call9 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %9, i32 %10, %struct._GError* %cond)
  ret %struct._GValueArray* %call9
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @layer_get_apply_mask_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %return_vals = alloca %struct._GValueArray*, align 8
  %layer = alloca %struct._GimpLayer*, align 8
  %apply_mask = alloca i32, align 4
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store i32 0, i32* %apply_mask, align 4
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %2 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call = call %struct._GimpLayer* @gimp_value_get_layer(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpLayer* %call, %struct._GimpLayer** %layer, align 8
  %3 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end.5

if.then:                                          ; preds = %entry
  %4 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %mask = getelementptr inbounds %struct._GimpLayer, %struct._GimpLayer* %4, i32 0, i32 4
  %5 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask, align 8
  %tobool1 = icmp ne %struct._GimpLayerMask* %5, null
  br i1 %tobool1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  %6 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %mask3 = getelementptr inbounds %struct._GimpLayer, %struct._GimpLayer* %6, i32 0, i32 4
  %7 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask3, align 8
  %call4 = call i32 @gimp_layer_mask_get_apply(%struct._GimpLayerMask* %7)
  store i32 %call4, i32* %apply_mask, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %apply_mask, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.2
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %entry
  %8 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %9 = load i32, i32* %success, align 4
  %10 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool6 = icmp ne %struct._GError** %10, null
  br i1 %tobool6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.5
  %11 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %12 = load %struct._GError*, %struct._GError** %11, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %12, %cond.true ], [ null, %cond.false ]
  %call7 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %8, i32 %9, %struct._GError* %cond)
  store %struct._GValueArray* %call7, %struct._GValueArray** %return_vals, align 8
  %13 = load i32, i32* %success, align 4
  %tobool8 = icmp ne i32 %13, 0
  br i1 %tobool8, label %if.then.9, label %if.end.12

if.then.9:                                        ; preds = %cond.end
  %14 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values10 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %14, i32 0, i32 1
  %15 = load %struct._GValue*, %struct._GValue** %values10, align 8
  %arrayidx11 = getelementptr inbounds %struct._GValue, %struct._GValue* %15, i64 1
  %16 = load i32, i32* %apply_mask, align 4
  call void @g_value_set_boolean(%struct._GValue* %arrayidx11, i32 %16)
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.9, %cond.end
  %17 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %17
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @layer_set_apply_mask_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %layer = alloca %struct._GimpLayer*, align 8
  %apply_mask = alloca i32, align 4
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
  %3 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %3, i32 0, i32 1
  %4 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %4, i64 1
  %call3 = call i32 @g_value_get_boolean(%struct._GValue* %arrayidx2)
  store i32 %call3, i32* %apply_mask, align 4
  %5 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end.7

if.then:                                          ; preds = %entry
  %6 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %mask = getelementptr inbounds %struct._GimpLayer, %struct._GimpLayer* %6, i32 0, i32 4
  %7 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask, align 8
  %tobool4 = icmp ne %struct._GimpLayerMask* %7, null
  br i1 %tobool4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.then
  %8 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %mask6 = getelementptr inbounds %struct._GimpLayer, %struct._GimpLayer* %8, i32 0, i32 4
  %9 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask6, align 8
  %10 = load i32, i32* %apply_mask, align 4
  call void @gimp_layer_mask_set_apply(%struct._GimpLayerMask* %9, i32 %10, i32 1)
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.5
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
define internal %struct._GValueArray* @layer_get_show_mask_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %return_vals = alloca %struct._GValueArray*, align 8
  %layer = alloca %struct._GimpLayer*, align 8
  %show_mask = alloca i32, align 4
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store i32 0, i32* %show_mask, align 4
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %2 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call = call %struct._GimpLayer* @gimp_value_get_layer(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpLayer* %call, %struct._GimpLayer** %layer, align 8
  %3 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end.5

if.then:                                          ; preds = %entry
  %4 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %mask = getelementptr inbounds %struct._GimpLayer, %struct._GimpLayer* %4, i32 0, i32 4
  %5 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask, align 8
  %tobool1 = icmp ne %struct._GimpLayerMask* %5, null
  br i1 %tobool1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  %6 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %mask3 = getelementptr inbounds %struct._GimpLayer, %struct._GimpLayer* %6, i32 0, i32 4
  %7 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask3, align 8
  %call4 = call i32 @gimp_layer_mask_get_show(%struct._GimpLayerMask* %7)
  store i32 %call4, i32* %show_mask, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %show_mask, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.2
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %entry
  %8 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %9 = load i32, i32* %success, align 4
  %10 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool6 = icmp ne %struct._GError** %10, null
  br i1 %tobool6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.5
  %11 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %12 = load %struct._GError*, %struct._GError** %11, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %12, %cond.true ], [ null, %cond.false ]
  %call7 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %8, i32 %9, %struct._GError* %cond)
  store %struct._GValueArray* %call7, %struct._GValueArray** %return_vals, align 8
  %13 = load i32, i32* %success, align 4
  %tobool8 = icmp ne i32 %13, 0
  br i1 %tobool8, label %if.then.9, label %if.end.12

if.then.9:                                        ; preds = %cond.end
  %14 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values10 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %14, i32 0, i32 1
  %15 = load %struct._GValue*, %struct._GValue** %values10, align 8
  %arrayidx11 = getelementptr inbounds %struct._GValue, %struct._GValue* %15, i64 1
  %16 = load i32, i32* %show_mask, align 4
  call void @g_value_set_boolean(%struct._GValue* %arrayidx11, i32 %16)
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.9, %cond.end
  %17 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %17
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @layer_set_show_mask_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %layer = alloca %struct._GimpLayer*, align 8
  %show_mask = alloca i32, align 4
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
  %3 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %3, i32 0, i32 1
  %4 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %4, i64 1
  %call3 = call i32 @g_value_get_boolean(%struct._GValue* %arrayidx2)
  store i32 %call3, i32* %show_mask, align 4
  %5 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end.7

if.then:                                          ; preds = %entry
  %6 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %mask = getelementptr inbounds %struct._GimpLayer, %struct._GimpLayer* %6, i32 0, i32 4
  %7 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask, align 8
  %tobool4 = icmp ne %struct._GimpLayerMask* %7, null
  br i1 %tobool4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.then
  %8 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %mask6 = getelementptr inbounds %struct._GimpLayer, %struct._GimpLayer* %8, i32 0, i32 4
  %9 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask6, align 8
  %10 = load i32, i32* %show_mask, align 4
  call void @gimp_layer_mask_set_show(%struct._GimpLayerMask* %9, i32 %10, i32 1)
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.5
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
define internal %struct._GValueArray* @layer_get_edit_mask_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %return_vals = alloca %struct._GValueArray*, align 8
  %layer = alloca %struct._GimpLayer*, align 8
  %edit_mask = alloca i32, align 4
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store i32 0, i32* %edit_mask, align 4
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %2 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call = call %struct._GimpLayer* @gimp_value_get_layer(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpLayer* %call, %struct._GimpLayer** %layer, align 8
  %3 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end.5

if.then:                                          ; preds = %entry
  %4 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %mask = getelementptr inbounds %struct._GimpLayer, %struct._GimpLayer* %4, i32 0, i32 4
  %5 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask, align 8
  %tobool1 = icmp ne %struct._GimpLayerMask* %5, null
  br i1 %tobool1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  %6 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %mask3 = getelementptr inbounds %struct._GimpLayer, %struct._GimpLayer* %6, i32 0, i32 4
  %7 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask3, align 8
  %call4 = call i32 @gimp_layer_mask_get_edit(%struct._GimpLayerMask* %7)
  store i32 %call4, i32* %edit_mask, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %edit_mask, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.2
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %entry
  %8 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %9 = load i32, i32* %success, align 4
  %10 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool6 = icmp ne %struct._GError** %10, null
  br i1 %tobool6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.5
  %11 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %12 = load %struct._GError*, %struct._GError** %11, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %12, %cond.true ], [ null, %cond.false ]
  %call7 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %8, i32 %9, %struct._GError* %cond)
  store %struct._GValueArray* %call7, %struct._GValueArray** %return_vals, align 8
  %13 = load i32, i32* %success, align 4
  %tobool8 = icmp ne i32 %13, 0
  br i1 %tobool8, label %if.then.9, label %if.end.12

if.then.9:                                        ; preds = %cond.end
  %14 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values10 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %14, i32 0, i32 1
  %15 = load %struct._GValue*, %struct._GValue** %values10, align 8
  %arrayidx11 = getelementptr inbounds %struct._GValue, %struct._GValue* %15, i64 1
  %16 = load i32, i32* %edit_mask, align 4
  call void @g_value_set_boolean(%struct._GValue* %arrayidx11, i32 %16)
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.9, %cond.end
  %17 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %17
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @layer_set_edit_mask_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %layer = alloca %struct._GimpLayer*, align 8
  %edit_mask = alloca i32, align 4
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
  %3 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %3, i32 0, i32 1
  %4 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %4, i64 1
  %call3 = call i32 @g_value_get_boolean(%struct._GValue* %arrayidx2)
  store i32 %call3, i32* %edit_mask, align 4
  %5 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end.7

if.then:                                          ; preds = %entry
  %6 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %mask = getelementptr inbounds %struct._GimpLayer, %struct._GimpLayer* %6, i32 0, i32 4
  %7 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask, align 8
  %tobool4 = icmp ne %struct._GimpLayerMask* %7, null
  br i1 %tobool4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.then
  %8 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %mask6 = getelementptr inbounds %struct._GimpLayer, %struct._GimpLayer* %8, i32 0, i32 4
  %9 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask6, align 8
  %10 = load i32, i32* %edit_mask, align 4
  call void @gimp_layer_mask_set_edit(%struct._GimpLayerMask* %9, i32 %10)
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.5
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
define internal %struct._GValueArray* @layer_get_opacity_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %return_vals = alloca %struct._GValueArray*, align 8
  %layer = alloca %struct._GimpLayer*, align 8
  %opacity = alloca double, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store double 0.000000e+00, double* %opacity, align 8
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %2 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call = call %struct._GimpLayer* @gimp_value_get_layer(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpLayer* %call, %struct._GimpLayer** %layer, align 8
  %3 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %call1 = call double @gimp_layer_get_opacity(%struct._GimpLayer* %4)
  %mul = fmul double %call1, 1.000000e+02
  store double %mul, double* %opacity, align 8
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
  %13 = load double, double* %opacity, align 8
  call void @g_value_set_double(%struct._GValue* %arrayidx7, double %13)
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.5, %cond.end
  %14 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %14
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @layer_set_opacity_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %layer = alloca %struct._GimpLayer*, align 8
  %opacity = alloca double, align 8
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
  %3 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %3, i32 0, i32 1
  %4 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %4, i64 1
  %call3 = call double @g_value_get_double(%struct._GValue* %arrayidx2)
  store double %call3, double* %opacity, align 8
  %5 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %7 = load double, double* %opacity, align 8
  %div = fdiv double %7, 1.000000e+02
  call void @gimp_layer_set_opacity(%struct._GimpLayer* %6, double %div, i32 1)
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
define internal %struct._GValueArray* @layer_get_mode_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %return_vals = alloca %struct._GValueArray*, align 8
  %layer = alloca %struct._GimpLayer*, align 8
  %mode = alloca i32, align 4
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store i32 0, i32* %mode, align 4
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %2 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call = call %struct._GimpLayer* @gimp_value_get_layer(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpLayer* %call, %struct._GimpLayer** %layer, align 8
  %3 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %call1 = call i32 @gimp_layer_get_mode(%struct._GimpLayer* %4)
  store i32 %call1, i32* %mode, align 4
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
  %13 = load i32, i32* %mode, align 4
  call void @g_value_set_enum(%struct._GValue* %arrayidx7, i32 %13)
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.5, %cond.end
  %14 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %14
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @layer_set_mode_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
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
  %call = call %struct._GimpLayer* @gimp_value_get_layer(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpLayer* %call, %struct._GimpLayer** %layer, align 8
  %3 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %3, i32 0, i32 1
  %4 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %4, i64 1
  %call3 = call i32 @g_value_get_enum(%struct._GValue* %arrayidx2)
  store i32 %call3, i32* %mode, align 4
  %5 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %7 = load i32, i32* %mode, align 4
  call void @gimp_layer_set_mode(%struct._GimpLayer* %6, i32 %7, i32 1)
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

declare %struct._GimpImage* @gimp_value_get_image(%struct._GValue*, %struct._Gimp*) #1

declare i32 @g_value_get_int(%struct._GValue*) #1

declare i32 @g_value_get_enum(%struct._GValue*) #1

declare i8* @g_value_get_string(%struct._GValue*) #1

declare double @g_value_get_double(%struct._GValue*) #1

declare %struct._GimpLayer* @gimp_layer_new(%struct._GimpImage*, i32, i32, i32, i8*, double, i32) #1

declare %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure*, i32, %struct._GError*) #1

declare void @gimp_value_set_layer(%struct._GValue*, %struct._GimpLayer*) #1

declare %struct._GimpProjection* @gimp_image_get_projection(%struct._GimpImage*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_pickable_interface_get_type() #2

declare void @gimp_pickable_flush(%struct._GimpPickable*) #1

declare %struct._GimpLayer* @gimp_layer_new_from_tiles(%struct._TileManager*, %struct._GimpImage*, i32, i8*, double, i32) #1

declare %struct._TileManager* @gimp_pickable_get_tiles(%struct._GimpPickable*) #1

declare i32 @gimp_image_base_type_with_alpha(%struct._GimpImage*) #1

declare %struct._GimpDrawable* @gimp_value_get_drawable(%struct._GValue*, %struct._Gimp*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_layer_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #3

declare %struct._GimpItem* @gimp_item_convert(%struct._GimpItem*, %struct._GimpImage*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_item_get_type() #2

declare %struct._GimpLayer* @gimp_group_layer_new(%struct._GimpImage*) #1

declare %struct._GimpLayer* @gimp_value_get_layer(%struct._GValue*, %struct._Gimp*) #1

declare i32 @g_value_get_boolean(%struct._GValue*) #1

declare %struct._GimpItem* @gimp_item_duplicate(%struct._GimpItem*, i64) #1

declare void @gimp_layer_add_alpha(%struct._GimpLayer*) #1

declare i32 @gimp_pdb_item_is_writable(%struct._GimpItem*, %struct._GError**) #1

declare i32 @gimp_pdb_item_is_not_group(%struct._GimpItem*, %struct._GError**) #1

declare void @gimp_layer_flatten(%struct._GimpLayer*, %struct._GimpContext*) #1

declare i32 @gimp_pdb_item_is_attached(%struct._GimpItem*, %struct._GimpImage*, i32, %struct._GError**) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_pdb_context_get_type() #2

declare %struct._GimpProgress* @gimp_progress_start(%struct._GimpProgress*, i8*, i32) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

declare void @gimp_item_scale_by_origin(%struct._GimpItem*, i32, i32, i32, %struct._GimpProgress*, i32) #1

declare void @gimp_progress_end(%struct._GimpProgress*) #1

declare void @gimp_item_resize(%struct._GimpItem*, %struct._GimpContext*, i32, i32, i32, i32) #1

declare void @gimp_layer_resize_to_image(%struct._GimpLayer*, %struct._GimpContext*) #1

declare i32 @gimp_item_get_linked(%struct._GimpItem*) #1

declare void @gimp_item_linked_translate(%struct._GimpItem*, i32, i32, i32) #1

declare void @gimp_item_translate(%struct._GimpItem*, i32, i32, i32) #1

declare void @gimp_item_get_offset(%struct._GimpItem*, i32*, i32*) #1

declare %struct._GimpChannel* @gimp_image_get_active_channel(%struct._GimpImage*) #1

declare %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem*) #1

declare %struct._GimpLayerMask* @gimp_layer_create_mask(%struct._GimpLayer*, i32, %struct._GimpChannel*) #1

declare void @gimp_value_set_layer_mask(%struct._GValue*, %struct._GimpLayerMask*) #1

declare %struct._GimpLayerMask* @gimp_layer_get_mask(%struct._GimpLayer*) #1

declare %struct._GimpLayerMask* @gimp_value_get_layer_mask(%struct._GValue*, %struct._Gimp*) #1

declare %struct._GimpLayer* @gimp_layer_mask_get_layer(%struct._GimpLayerMask*) #1

declare i32 @gimp_pdb_item_is_floating(%struct._GimpItem*, %struct._GimpImage*, %struct._GError**) #1

declare %struct._GimpLayerMask* @gimp_layer_add_mask(%struct._GimpLayer*, %struct._GimpLayerMask*, i32, %struct._GError**) #1

declare void @gimp_layer_apply_mask(%struct._GimpLayer*, i32, i32) #1

declare i32 @gimp_layer_is_floating_sel(%struct._GimpLayer*) #1

declare void @g_value_set_boolean(%struct._GValue*, i32) #1

declare i32 @gimp_layer_get_lock_alpha(%struct._GimpLayer*) #1

declare i32 @gimp_layer_can_lock_alpha(%struct._GimpLayer*) #1

declare void @gimp_layer_set_lock_alpha(%struct._GimpLayer*, i32, i32) #1

declare i32 @gimp_layer_mask_get_apply(%struct._GimpLayerMask*) #1

declare void @gimp_layer_mask_set_apply(%struct._GimpLayerMask*, i32, i32) #1

declare i32 @gimp_layer_mask_get_show(%struct._GimpLayerMask*) #1

declare void @gimp_layer_mask_set_show(%struct._GimpLayerMask*, i32, i32) #1

declare i32 @gimp_layer_mask_get_edit(%struct._GimpLayerMask*) #1

declare void @gimp_layer_mask_set_edit(%struct._GimpLayerMask*, i32) #1

declare double @gimp_layer_get_opacity(%struct._GimpLayer*) #1

declare void @g_value_set_double(%struct._GValue*, double) #1

declare void @gimp_layer_set_opacity(%struct._GimpLayer*, double, i32) #1

declare i32 @gimp_layer_get_mode(%struct._GimpLayer*) #1

declare void @g_value_set_enum(%struct._GValue*, i32) #1

declare void @gimp_layer_set_mode(%struct._GimpLayer*, i32, i32) #1

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
