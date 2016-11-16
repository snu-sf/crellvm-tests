; ModuleID = './app/pdb/drawable-cmds.bc'
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
%struct._GimpPlugInManager = type { %struct._GimpObject, %struct._Gimp*, %struct._GSList*, i32, %struct._GSList*, %struct._GSList*, %struct._GSList*, %struct._GSList*, %struct._GSList*, %struct._GSList*, %struct._GSList*, %struct._GimpPlugIn*, %struct._GSList*, %struct._GSList*, %struct._GSList*, %struct._GimpPlugInShm*, %struct._GimpInterpreterDB*, %struct._GimpEnvironTable*, %struct._GimpPlugInDebug*, %struct._GList* }
%struct._GimpPlugIn = type { %struct._GimpObject, %struct._GimpPlugInManager*, i8*, i32, i8, i32, %struct._GIOChannel*, %struct._GIOChannel*, %struct._GIOChannel*, %struct._GIOChannel*, i32, [512 x i8], i32, %struct._GSList*, %struct._GMainLoop*, %struct._GimpPlugInProcFrame, %struct._GList*, %struct._GimpPlugInDef* }
%struct._GIOChannel = type { i32, %struct._GIOFuncs*, i8*, %struct._GIConv*, %struct._GIConv*, i8*, i32, i64, %struct._GString*, %struct._GString*, %struct._GString*, [6 x i8], i8, i8*, i8* }
%struct._GIOFuncs = type { i32 (%struct._GIOChannel*, i8*, i64, i64*, %struct._GError**)*, i32 (%struct._GIOChannel*, i8*, i64, i64*, %struct._GError**)*, i32 (%struct._GIOChannel*, i64, i32, %struct._GError**)*, i32 (%struct._GIOChannel*, %struct._GError**)*, %struct._GSource* (%struct._GIOChannel*, i32)*, void (%struct._GIOChannel*)*, i32 (%struct._GIOChannel*, i32, %struct._GError**)*, i32 (%struct._GIOChannel*)* }
%struct._GError = type { i32, i32, i8* }
%struct._GSource = type { i8*, %struct._GSourceCallbackFuncs*, %struct._GSourceFuncs*, i32, %struct._GMainContext*, i32, i32, i32, %struct._GSList*, %struct._GSource*, %struct._GSource*, i8*, %struct._GSourcePrivate* }
%struct._GSourceCallbackFuncs = type { void (i8*)*, void (i8*)*, void (i8*, %struct._GSource*, i32 (i8*)**, i8**)* }
%struct._GSourceFuncs = type { i32 (%struct._GSource*, i32*)*, i32 (%struct._GSource*)*, i32 (%struct._GSource*, i32 (i8*)*, i8*)*, void (%struct._GSource*)*, i32 (i8*)*, void ()* }
%struct._GMainContext = type opaque
%struct._GSourcePrivate = type opaque
%struct._GIConv = type opaque
%struct._GString = type { i8*, i64, i64 }
%struct._GMainLoop = type opaque
%struct._GimpPlugInProcFrame = type { i32, %struct._GimpContext*, %struct._GList*, %struct._GimpProcedure*, %struct._GMainLoop*, %struct._GValueArray*, %struct._GimpProgress*, i32, i64, i32, %struct._GList*, %struct._GList* }
%struct._GimpProcedure = type { %struct._GimpObject, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, %struct._GParamSpec**, i32, %struct._GParamSpec**, %struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* }
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
%struct._GValueArray = type { i32, %struct._GValue*, i32 }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GimpPlugInDef = type opaque
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GimpPlugInShm = type opaque
%struct._GimpInterpreterDB = type opaque
%struct._GimpEnvironTable = type opaque
%struct._GimpPlugInDebug = type opaque
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
%struct._GimpParamSpecEnum = type { %struct._GParamSpecEnum, %struct._GSList* }
%struct._GParamSpecEnum = type { %struct._GParamSpec, %struct._GEnumClass*, i32 }
%struct._GEnumClass = type { %struct._GTypeClass, i32, i32, i32, %struct._GEnumValue* }
%struct._GEnumValue = type { i32, i8*, i8* }
%struct._GimpDrawable = type { %struct._GimpItem, %struct._GimpDrawablePrivate* }
%struct._GimpItem = type { %struct._GimpViewable }
%struct._GimpDrawablePrivate = type opaque
%struct._Tile = type opaque
%struct._TileManager = type opaque
%struct._TempBuf = type { i32, i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [19 x i8] c"gimp-drawable-type\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Returns the drawable's type.\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"This procedure returns the drawable's type.\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Spencer Kimball & Peter Mattis\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"1995-1996\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"drawable\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"The drawable\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"The drawable's type\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"gimp-drawable-type-with-alpha\00", align 1
@.str.10 = private unnamed_addr constant [40 x i8] c"Returns the drawable's type with alpha.\00", align 1
@.str.11 = private unnamed_addr constant [236 x i8] c"This procedure returns the drawable's type as if had an alpha channel. If the type is currently Gray, for instance, the returned type would be GrayA. If the drawable already has an alpha channel, the drawable's type is simply returned.\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"type-with-alpha\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"type with alpha\00", align 1
@.str.14 = private unnamed_addr constant [31 x i8] c"The drawable's type with alpha\00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"gimp-drawable-has-alpha\00", align 1
@.str.16 = private unnamed_addr constant [51 x i8] c"Returns TRUE if the drawable has an alpha channel.\00", align 1
@.str.17 = private unnamed_addr constant [178 x i8] c"This procedure returns whether the specified drawable has an alpha channel. This can only be true for layers, and the associated type will be one of: { RGBA , GRAYA, INDEXEDA }.\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"has-alpha\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"has alpha\00", align 1
@.str.20 = private unnamed_addr constant [41 x i8] c"Does the drawable have an alpha channel?\00", align 1
@.str.21 = private unnamed_addr constant [21 x i8] c"gimp-drawable-is-rgb\00", align 1
@.str.22 = private unnamed_addr constant [45 x i8] c"Returns whether the drawable is an RGB type.\00", align 1
@.str.23 = private unnamed_addr constant [80 x i8] c"This procedure returns TRUE if the specified drawable is of type { RGB, RGBA }.\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"is-rgb\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"is rgb\00", align 1
@.str.26 = private unnamed_addr constant [36 x i8] c"TRUE if the drawable is an RGB type\00", align 1
@.str.27 = private unnamed_addr constant [22 x i8] c"gimp-drawable-is-gray\00", align 1
@.str.28 = private unnamed_addr constant [50 x i8] c"Returns whether the drawable is a grayscale type.\00", align 1
@.str.29 = private unnamed_addr constant [82 x i8] c"This procedure returns TRUE if the specified drawable is of type { Gray, GrayA }.\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"is-gray\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"is gray\00", align 1
@.str.32 = private unnamed_addr constant [41 x i8] c"TRUE if the drawable is a grayscale type\00", align 1
@.str.33 = private unnamed_addr constant [25 x i8] c"gimp-drawable-is-indexed\00", align 1
@.str.34 = private unnamed_addr constant [49 x i8] c"Returns whether the drawable is an indexed type.\00", align 1
@.str.35 = private unnamed_addr constant [88 x i8] c"This procedure returns TRUE if the specified drawable is of type { Indexed, IndexedA }.\00", align 1
@.str.36 = private unnamed_addr constant [11 x i8] c"is-indexed\00", align 1
@.str.37 = private unnamed_addr constant [11 x i8] c"is indexed\00", align 1
@.str.38 = private unnamed_addr constant [40 x i8] c"TRUE if the drawable is an indexed type\00", align 1
@.str.39 = private unnamed_addr constant [18 x i8] c"gimp-drawable-bpp\00", align 1
@.str.40 = private unnamed_addr constant [29 x i8] c"Returns the bytes per pixel.\00", align 1
@.str.41 = private unnamed_addr constant [109 x i8] c"This procedure returns the number of bytes per pixel (or the number of channels) for the specified drawable.\00", align 1
@.str.42 = private unnamed_addr constant [4 x i8] c"bpp\00", align 1
@.str.43 = private unnamed_addr constant [16 x i8] c"Bytes per pixel\00", align 1
@.str.44 = private unnamed_addr constant [20 x i8] c"gimp-drawable-width\00", align 1
@.str.45 = private unnamed_addr constant [35 x i8] c"Returns the width of the drawable.\00", align 1
@.str.46 = private unnamed_addr constant [65 x i8] c"This procedure returns the specified drawable's width in pixels.\00", align 1
@.str.47 = private unnamed_addr constant [6 x i8] c"width\00", align 1
@.str.48 = private unnamed_addr constant [18 x i8] c"Width of drawable\00", align 1
@.str.49 = private unnamed_addr constant [21 x i8] c"gimp-drawable-height\00", align 1
@.str.50 = private unnamed_addr constant [36 x i8] c"Returns the height of the drawable.\00", align 1
@.str.51 = private unnamed_addr constant [66 x i8] c"This procedure returns the specified drawable's height in pixels.\00", align 1
@.str.52 = private unnamed_addr constant [7 x i8] c"height\00", align 1
@.str.53 = private unnamed_addr constant [19 x i8] c"Height of drawable\00", align 1
@.str.54 = private unnamed_addr constant [22 x i8] c"gimp-drawable-offsets\00", align 1
@.str.55 = private unnamed_addr constant [38 x i8] c"Returns the offsets for the drawable.\00", align 1
@.str.56 = private unnamed_addr constant [183 x i8] c"This procedure returns the specified drawable's offsets. This only makes sense if the drawable is a layer since channels are anchored. The offsets of a channel will be returned as 0.\00", align 1
@.str.57 = private unnamed_addr constant [9 x i8] c"offset-x\00", align 1
@.str.58 = private unnamed_addr constant [9 x i8] c"offset x\00", align 1
@.str.59 = private unnamed_addr constant [21 x i8] c"x offset of drawable\00", align 1
@.str.60 = private unnamed_addr constant [9 x i8] c"offset-y\00", align 1
@.str.61 = private unnamed_addr constant [9 x i8] c"offset y\00", align 1
@.str.62 = private unnamed_addr constant [21 x i8] c"y offset of drawable\00", align 1
@.str.63 = private unnamed_addr constant [24 x i8] c"gimp-drawable-set-image\00", align 1
@.str.64 = private unnamed_addr constant [56 x i8] c"Deprecated: There is no replacement for this procedure.\00", align 1
@.str.65 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.66 = private unnamed_addr constant [5 x i8] c"NONE\00", align 1
@.str.67 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.68 = private unnamed_addr constant [10 x i8] c"The image\00", align 1
@.str.69 = private unnamed_addr constant [26 x i8] c"gimp-drawable-mask-bounds\00", align 1
@.str.70 = private unnamed_addr constant [86 x i8] c"Find the bounding box of the current selection in relation to the specified drawable.\00", align 1
@.str.71 = private unnamed_addr constant [778 x i8] c"This procedure returns whether there is a selection. If there is one, the upper left and lower right-hand corners of its bounding box are returned. These coordinates are specified relative to the drawable's origin, and bounded by the drawable's extents. Please note that the pixel specified by the lower right-hand coordinate of the bounding box is not part of the selection. The selection ends at the upper left corner of this pixel. This means the width of the selection can be calculated as (x2 - x1), its height as (y2 - y1). Note that the returned boolean does NOT correspond with the returned region being empty or not, it always returns whether the selection is non_empty. See 'gimp-drawable-mask-intersect' for a boolean return value which is more useful in most cases.\00", align 1
@.str.72 = private unnamed_addr constant [10 x i8] c"non-empty\00", align 1
@.str.73 = private unnamed_addr constant [10 x i8] c"non empty\00", align 1
@.str.74 = private unnamed_addr constant [29 x i8] c"TRUE if there is a selection\00", align 1
@.str.75 = private unnamed_addr constant [3 x i8] c"x1\00", align 1
@.str.76 = private unnamed_addr constant [58 x i8] c"x coordinate of the upper left corner of selection bounds\00", align 1
@.str.77 = private unnamed_addr constant [3 x i8] c"y1\00", align 1
@.str.78 = private unnamed_addr constant [58 x i8] c"y coordinate of the upper left corner of selection bounds\00", align 1
@.str.79 = private unnamed_addr constant [3 x i8] c"x2\00", align 1
@.str.80 = private unnamed_addr constant [59 x i8] c"x coordinate of the lower right corner of selection bounds\00", align 1
@.str.81 = private unnamed_addr constant [3 x i8] c"y2\00", align 1
@.str.82 = private unnamed_addr constant [59 x i8] c"y coordinate of the lower right corner of selection bounds\00", align 1
@.str.83 = private unnamed_addr constant [29 x i8] c"gimp-drawable-mask-intersect\00", align 1
@.str.84 = private unnamed_addr constant [310 x i8] c"This procedure returns whether there is an intersection between the drawable and the selection. Unlike 'gimp-drawable-mask-bounds', the intersection's bounds are returned as x, y, width, height. If there is no selection this function returns TRUE and the returned bounds are the extents of the whole drawable.\00", align 1
@.str.85 = private unnamed_addr constant [34 x i8] c"Michael Natterer <mitch@gimp.org>\00", align 1
@.str.86 = private unnamed_addr constant [17 x i8] c"Michael Natterer\00", align 1
@.str.87 = private unnamed_addr constant [5 x i8] c"2004\00", align 1
@.str.88 = private unnamed_addr constant [39 x i8] c"TRUE if the returned area is not empty\00", align 1
@.str.89 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.90 = private unnamed_addr constant [58 x i8] c"x coordinate of the upper left corner of the intersection\00", align 1
@.str.91 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str.92 = private unnamed_addr constant [58 x i8] c"y coordinate of the upper left corner of the intersection\00", align 1
@.str.93 = private unnamed_addr constant [26 x i8] c"width of the intersection\00", align 1
@.str.94 = private unnamed_addr constant [27 x i8] c"height of the intersection\00", align 1
@.str.95 = private unnamed_addr constant [27 x i8] c"gimp-drawable-merge-shadow\00", align 1
@.str.96 = private unnamed_addr constant [53 x i8] c"Merge the shadow buffer with the specified drawable.\00", align 1
@.str.97 = private unnamed_addr constant [271 x i8] c"This procedure combines the contents of the drawable's shadow buffer (for temporary processing) with the specified drawable. The 'undo' parameter specifies whether to add an undo step for the operation. Requesting no undo is useful for such applications as 'auto-apply'.\00", align 1
@.str.98 = private unnamed_addr constant [5 x i8] c"undo\00", align 1
@.str.99 = private unnamed_addr constant [26 x i8] c"Push merge to undo stack?\00", align 1
@.str.100 = private unnamed_addr constant [26 x i8] c"gimp-drawable-free-shadow\00", align 1
@.str.101 = private unnamed_addr constant [58 x i8] c"Free the specified drawable's shadow data (if it exists).\00", align 1
@.str.102 = private unnamed_addr constant [229 x i8] c"This procedure is intended as a memory saving device. If any shadow memory has been allocated, it will be freed automatically when the drawable is removed from the image, or when the plug-in procedure which allocated it returns.\00", align 1
@.str.103 = private unnamed_addr constant [5 x i8] c"2008\00", align 1
@.str.104 = private unnamed_addr constant [21 x i8] c"gimp-drawable-update\00", align 1
@.str.105 = private unnamed_addr constant [45 x i8] c"Update the specified region of the drawable.\00", align 1
@.str.106 = private unnamed_addr constant [226 x i8] c"This procedure updates the specified region of the drawable. The (x, y) coordinate pair is relative to the drawable's origin, not to the image origin. Therefore, the entire drawable can be updated using (0, 0, width, height).\00", align 1
@.str.107 = private unnamed_addr constant [51 x i8] c"x coordinate of upper left corner of update region\00", align 1
@.str.108 = private unnamed_addr constant [51 x i8] c"y coordinate of upper left corner of update region\00", align 1
@.str.109 = private unnamed_addr constant [23 x i8] c"Width of update region\00", align 1
@.str.110 = private unnamed_addr constant [24 x i8] c"Height of update region\00", align 1
@.str.111 = private unnamed_addr constant [24 x i8] c"gimp-drawable-get-pixel\00", align 1
@.str.112 = private unnamed_addr constant [58 x i8] c"Gets the value of the pixel at the specified coordinates.\00", align 1
@.str.113 = private unnamed_addr constant [172 x i8] c"This procedure gets the pixel value at the specified coordinates. The 'num_channels' argument must always be equal to the bytes-per-pixel value for the specified drawable.\00", align 1
@.str.114 = private unnamed_addr constant [5 x i8] c"1997\00", align 1
@.str.115 = private unnamed_addr constant [8 x i8] c"x-coord\00", align 1
@.str.116 = private unnamed_addr constant [8 x i8] c"x coord\00", align 1
@.str.117 = private unnamed_addr constant [17 x i8] c"The x coordinate\00", align 1
@.str.118 = private unnamed_addr constant [8 x i8] c"y-coord\00", align 1
@.str.119 = private unnamed_addr constant [8 x i8] c"y coord\00", align 1
@.str.120 = private unnamed_addr constant [17 x i8] c"The y coordinate\00", align 1
@.str.121 = private unnamed_addr constant [13 x i8] c"num-channels\00", align 1
@.str.122 = private unnamed_addr constant [13 x i8] c"num channels\00", align 1
@.str.123 = private unnamed_addr constant [37 x i8] c"The number of channels for the pixel\00", align 1
@.str.124 = private unnamed_addr constant [6 x i8] c"pixel\00", align 1
@.str.125 = private unnamed_addr constant [16 x i8] c"The pixel value\00", align 1
@.str.126 = private unnamed_addr constant [24 x i8] c"gimp-drawable-set-pixel\00", align 1
@.str.127 = private unnamed_addr constant [58 x i8] c"Sets the value of the pixel at the specified coordinates.\00", align 1
@.str.128 = private unnamed_addr constant [276 x i8] c"This procedure sets the pixel value at the specified coordinates. The 'num_channels' argument must always be equal to the bytes-per-pixel value for the specified drawable. Note that this function is not undoable, you should use it only on drawables you just created yourself.\00", align 1
@.str.129 = private unnamed_addr constant [19 x i8] c"gimp-drawable-fill\00", align 1
@.str.130 = private unnamed_addr constant [48 x i8] c"Fill the drawable with the specified fill mode.\00", align 1
@.str.131 = private unnamed_addr constant [674 x i8] c"This procedure fills the drawable. If the fill mode is foreground the current foreground color is used. If the fill mode is background, the current background color is used. If the fill type is white, then white is used. Transparent fill only affects layers with an alpha channel, in which case the alpha channel is set to transparent. If the drawable has no alpha channel, it is filled to white. No fill leaves the drawable's contents undefined. This procedure is unlike 'gimp-edit-fill' or the bucket fill tool because it fills regardless of a selection. Its main purpose is to fill a newly created drawable before adding it to the image. This operation cannot be undone.\00", align 1
@.str.132 = private unnamed_addr constant [10 x i8] c"fill-type\00", align 1
@.str.133 = private unnamed_addr constant [10 x i8] c"fill type\00", align 1
@.str.134 = private unnamed_addr constant [17 x i8] c"The type of fill\00", align 1
@.str.135 = private unnamed_addr constant [21 x i8] c"gimp-drawable-offset\00", align 1
@.str.136 = private unnamed_addr constant [71 x i8] c"Offset the drawable by the specified amounts in the X and Y directions\00", align 1
@.str.137 = private unnamed_addr constant [368 x i8] c"This procedure offsets the specified drawable by the amounts specified by 'offset_x' and 'offset_y'. If 'wrap_around' is set to TRUE, then portions of the drawable which are offset out of bounds are wrapped around. Alternatively, the undefined regions of the drawable can be filled with transparency or the background color, as specified by the 'fill-type' parameter.\00", align 1
@.str.138 = private unnamed_addr constant [23 x i8] c"The drawable to offset\00", align 1
@.str.139 = private unnamed_addr constant [12 x i8] c"wrap-around\00", align 1
@.str.140 = private unnamed_addr constant [12 x i8] c"wrap around\00", align 1
@.str.141 = private unnamed_addr constant [42 x i8] c"wrap image around or fill vacated regions\00", align 1
@.str.142 = private unnamed_addr constant [64 x i8] c"fill vacated regions of drawable with background or transparent\00", align 1
@.str.143 = private unnamed_addr constant [37 x i8] c"offset by this amount in X direction\00", align 1
@.str.144 = private unnamed_addr constant [37 x i8] c"offset by this amount in Y direction\00", align 1
@.str.145 = private unnamed_addr constant [24 x i8] c"gimp-drawable-thumbnail\00", align 1
@.str.146 = private unnamed_addr constant [31 x i8] c"Get a thumbnail of a drawable.\00", align 1
@.str.147 = private unnamed_addr constant [240 x i8] c"This function gets data from which a thumbnail of a drawable preview can be created. Maximum x or y dimension is 1024 pixels. The pixels are returned in RGB[A] or GRAY[A] format. The bpp return value gives the number of bytes in the image.\00", align 1
@.str.148 = private unnamed_addr constant [12 x i8] c"Andy Thomas\00", align 1
@.str.149 = private unnamed_addr constant [5 x i8] c"1999\00", align 1
@.str.150 = private unnamed_addr constant [30 x i8] c"The requested thumbnail width\00", align 1
@.str.151 = private unnamed_addr constant [31 x i8] c"The requested thumbnail height\00", align 1
@.str.152 = private unnamed_addr constant [13 x i8] c"actual-width\00", align 1
@.str.153 = private unnamed_addr constant [13 x i8] c"actual width\00", align 1
@.str.154 = private unnamed_addr constant [19 x i8] c"The previews width\00", align 1
@.str.155 = private unnamed_addr constant [14 x i8] c"actual-height\00", align 1
@.str.156 = private unnamed_addr constant [14 x i8] c"actual height\00", align 1
@.str.157 = private unnamed_addr constant [20 x i8] c"The previews height\00", align 1
@.str.158 = private unnamed_addr constant [17 x i8] c"The previews bpp\00", align 1
@.str.159 = private unnamed_addr constant [21 x i8] c"thumbnail-data-count\00", align 1
@.str.160 = private unnamed_addr constant [21 x i8] c"thumbnail data count\00", align 1
@.str.161 = private unnamed_addr constant [38 x i8] c"The number of bytes in thumbnail data\00", align 1
@.str.162 = private unnamed_addr constant [15 x i8] c"thumbnail-data\00", align 1
@.str.163 = private unnamed_addr constant [15 x i8] c"thumbnail data\00", align 1
@.str.164 = private unnamed_addr constant [19 x i8] c"The thumbnail data\00", align 1
@.str.165 = private unnamed_addr constant [28 x i8] c"gimp-drawable-sub-thumbnail\00", align 1
@.str.166 = private unnamed_addr constant [54 x i8] c"Get a thumbnail of a sub-area of a drawable drawable.\00", align 1
@.str.167 = private unnamed_addr constant [6 x i8] c"src-x\00", align 1
@.str.168 = private unnamed_addr constant [6 x i8] c"src x\00", align 1
@.str.169 = private unnamed_addr constant [29 x i8] c"The x coordinate of the area\00", align 1
@.str.170 = private unnamed_addr constant [6 x i8] c"src-y\00", align 1
@.str.171 = private unnamed_addr constant [6 x i8] c"src y\00", align 1
@.str.172 = private unnamed_addr constant [29 x i8] c"The y coordinate of the area\00", align 1
@.str.173 = private unnamed_addr constant [10 x i8] c"src-width\00", align 1
@.str.174 = private unnamed_addr constant [10 x i8] c"src width\00", align 1
@.str.175 = private unnamed_addr constant [22 x i8] c"The width of the area\00", align 1
@.str.176 = private unnamed_addr constant [11 x i8] c"src-height\00", align 1
@.str.177 = private unnamed_addr constant [11 x i8] c"src height\00", align 1
@.str.178 = private unnamed_addr constant [23 x i8] c"The height of the area\00", align 1
@.str.179 = private unnamed_addr constant [11 x i8] c"dest-width\00", align 1
@.str.180 = private unnamed_addr constant [11 x i8] c"dest width\00", align 1
@.str.181 = private unnamed_addr constant [20 x i8] c"The thumbnail width\00", align 1
@.str.182 = private unnamed_addr constant [12 x i8] c"dest-height\00", align 1
@.str.183 = private unnamed_addr constant [12 x i8] c"dest height\00", align 1
@.str.184 = private unnamed_addr constant [21 x i8] c"The thumbnail height\00", align 1
@.str.185 = private unnamed_addr constant [33 x i8] c"gimp-drawable-foreground-extract\00", align 1
@.str.186 = private unnamed_addr constant [59 x i8] c"Extract the foreground of a drawable using a given trimap.\00", align 1
@.str.187 = private unnamed_addr constant [105 x i8] c"Image Segmentation by Uniform Color Clustering, see http://www.inf.fu-berlin.de/inst/pubs/tr-b-05-07.pdf\00", align 1
@.str.188 = private unnamed_addr constant [113 x i8] c"Gerald Friedland <fland@inf.fu-berlin.de>, Kristian Jantz <jantz@inf.fu-berlin.de>, Sven Neumann <sven@gimp.org>\00", align 1
@.str.189 = private unnamed_addr constant [17 x i8] c"Gerald Friedland\00", align 1
@.str.190 = private unnamed_addr constant [5 x i8] c"2005\00", align 1
@.str.191 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.192 = private unnamed_addr constant [21 x i8] c"The algorithm to use\00", align 1
@.str.193 = private unnamed_addr constant [5 x i8] c"mask\00", align 1
@.str.194 = private unnamed_addr constant [8 x i8] c"Tri-Map\00", align 1
@.str.195 = private unnamed_addr constant [8 x i8] c"Plug-In\00", align 1

; Function Attrs: nounwind uwtable
define void @register_drawable_procs(%struct._GimpPDB* %pdb) #0 {
entry:
  %pdb.addr = alloca %struct._GimpPDB*, align 8
  %procedure = alloca %struct._GimpProcedure*, align 8
  store %struct._GimpPDB* %pdb, %struct._GimpPDB** %pdb.addr, align 8
  %call = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @drawable_type_invoker)
  store %struct._GimpProcedure* %call, %struct._GimpProcedure** %procedure, align 8
  %0 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %1 = bitcast %struct._GimpProcedure* %0 to %struct._GTypeInstance*
  %call1 = call i64 @gimp_object_get_type() #4
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call1)
  %2 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %2, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0))
  %3 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %3, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i8* null)
  %4 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %5 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %5, i32 0, i32 1
  %6 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call3 = call %struct._GParamSpec* @gimp_param_spec_drawable_id(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), %struct._Gimp* %6, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %4, %struct._GParamSpec* %call3)
  %7 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call4 = call i64 @gimp_image_type_get_type() #4
  %call5 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i32 0, i32 0), i64 %call4, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %7, %struct._GParamSpec* %call5)
  %8 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %9 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %8, %struct._GimpProcedure* %9)
  %10 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %11 = bitcast %struct._GimpProcedure* %10 to i8*
  call void @g_object_unref(i8* %11)
  %call6 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @drawable_type_with_alpha_invoker)
  store %struct._GimpProcedure* %call6, %struct._GimpProcedure** %procedure, align 8
  %12 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %13 = bitcast %struct._GimpProcedure* %12 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_object_get_type() #4
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call7)
  %14 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %14, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i32 0, i32 0))
  %15 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %15, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([236 x i8], [236 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i8* null)
  %16 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %17 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp9 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %17, i32 0, i32 1
  %18 = load %struct._Gimp*, %struct._Gimp** %gimp9, align 8
  %call10 = call %struct._GParamSpec* @gimp_param_spec_drawable_id(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), %struct._Gimp* %18, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %16, %struct._GParamSpec* %call10)
  %19 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call11 = call i64 @gimp_image_type_get_type() #4
  %call12 = call %struct._GParamSpec* @gimp_param_spec_enum(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.14, i32 0, i32 0), i64 %call11, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %19, %struct._GParamSpec* %call12)
  %20 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %values = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %20, i32 0, i32 13
  %21 = load %struct._GParamSpec**, %struct._GParamSpec*** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GParamSpec*, %struct._GParamSpec** %21, i64 0
  %22 = load %struct._GParamSpec*, %struct._GParamSpec** %arrayidx, align 8
  %23 = bitcast %struct._GParamSpec* %22 to %struct._GTypeInstance*
  %call13 = call i64 @gimp_param_enum_get_type() #4
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call13)
  %24 = bitcast %struct._GTypeInstance* %call14 to %struct._GimpParamSpecEnum*
  call void @gimp_param_spec_enum_exclude_value(%struct._GimpParamSpecEnum* %24, i32 0)
  %25 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %values15 = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %25, i32 0, i32 13
  %26 = load %struct._GParamSpec**, %struct._GParamSpec*** %values15, align 8
  %arrayidx16 = getelementptr inbounds %struct._GParamSpec*, %struct._GParamSpec** %26, i64 0
  %27 = load %struct._GParamSpec*, %struct._GParamSpec** %arrayidx16, align 8
  %28 = bitcast %struct._GParamSpec* %27 to %struct._GTypeInstance*
  %call17 = call i64 @gimp_param_enum_get_type() #4
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call17)
  %29 = bitcast %struct._GTypeInstance* %call18 to %struct._GimpParamSpecEnum*
  call void @gimp_param_spec_enum_exclude_value(%struct._GimpParamSpecEnum* %29, i32 2)
  %30 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %values19 = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %30, i32 0, i32 13
  %31 = load %struct._GParamSpec**, %struct._GParamSpec*** %values19, align 8
  %arrayidx20 = getelementptr inbounds %struct._GParamSpec*, %struct._GParamSpec** %31, i64 0
  %32 = load %struct._GParamSpec*, %struct._GParamSpec** %arrayidx20, align 8
  %33 = bitcast %struct._GParamSpec* %32 to %struct._GTypeInstance*
  %call21 = call i64 @gimp_param_enum_get_type() #4
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 %call21)
  %34 = bitcast %struct._GTypeInstance* %call22 to %struct._GimpParamSpecEnum*
  call void @gimp_param_spec_enum_exclude_value(%struct._GimpParamSpecEnum* %34, i32 4)
  %35 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %36 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %35, %struct._GimpProcedure* %36)
  %37 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %38 = bitcast %struct._GimpProcedure* %37 to i8*
  call void @g_object_unref(i8* %38)
  %call23 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @drawable_has_alpha_invoker)
  store %struct._GimpProcedure* %call23, %struct._GimpProcedure** %procedure, align 8
  %39 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %40 = bitcast %struct._GimpProcedure* %39 to %struct._GTypeInstance*
  %call24 = call i64 @gimp_object_get_type() #4
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %40, i64 %call24)
  %41 = bitcast %struct._GTypeInstance* %call25 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %41, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.15, i32 0, i32 0))
  %42 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %42, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([178 x i8], [178 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i8* null)
  %43 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %44 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp26 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %44, i32 0, i32 1
  %45 = load %struct._Gimp*, %struct._Gimp** %gimp26, align 8
  %call27 = call %struct._GParamSpec* @gimp_param_spec_drawable_id(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), %struct._Gimp* %45, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %43, %struct._GParamSpec* %call27)
  %46 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call28 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.20, i32 0, i32 0), i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %46, %struct._GParamSpec* %call28)
  %47 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %48 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %47, %struct._GimpProcedure* %48)
  %49 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %50 = bitcast %struct._GimpProcedure* %49 to i8*
  call void @g_object_unref(i8* %50)
  %call29 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @drawable_is_rgb_invoker)
  store %struct._GimpProcedure* %call29, %struct._GimpProcedure** %procedure, align 8
  %51 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %52 = bitcast %struct._GimpProcedure* %51 to %struct._GTypeInstance*
  %call30 = call i64 @gimp_object_get_type() #4
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %52, i64 %call30)
  %53 = bitcast %struct._GTypeInstance* %call31 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %53, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.21, i32 0, i32 0))
  %54 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %54, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i8* null)
  %55 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %56 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp32 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %56, i32 0, i32 1
  %57 = load %struct._Gimp*, %struct._Gimp** %gimp32, align 8
  %call33 = call %struct._GParamSpec* @gimp_param_spec_drawable_id(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), %struct._Gimp* %57, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %55, %struct._GParamSpec* %call33)
  %58 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call34 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.26, i32 0, i32 0), i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %58, %struct._GParamSpec* %call34)
  %59 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %60 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %59, %struct._GimpProcedure* %60)
  %61 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %62 = bitcast %struct._GimpProcedure* %61 to i8*
  call void @g_object_unref(i8* %62)
  %call35 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @drawable_is_gray_invoker)
  store %struct._GimpProcedure* %call35, %struct._GimpProcedure** %procedure, align 8
  %63 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %64 = bitcast %struct._GimpProcedure* %63 to %struct._GTypeInstance*
  %call36 = call i64 @gimp_object_get_type() #4
  %call37 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %64, i64 %call36)
  %65 = bitcast %struct._GTypeInstance* %call37 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %65, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.27, i32 0, i32 0))
  %66 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %66, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i8* null)
  %67 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %68 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp38 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %68, i32 0, i32 1
  %69 = load %struct._Gimp*, %struct._Gimp** %gimp38, align 8
  %call39 = call %struct._GParamSpec* @gimp_param_spec_drawable_id(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), %struct._Gimp* %69, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %67, %struct._GParamSpec* %call39)
  %70 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call40 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.32, i32 0, i32 0), i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %70, %struct._GParamSpec* %call40)
  %71 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %72 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %71, %struct._GimpProcedure* %72)
  %73 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %74 = bitcast %struct._GimpProcedure* %73 to i8*
  call void @g_object_unref(i8* %74)
  %call41 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @drawable_is_indexed_invoker)
  store %struct._GimpProcedure* %call41, %struct._GimpProcedure** %procedure, align 8
  %75 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %76 = bitcast %struct._GimpProcedure* %75 to %struct._GTypeInstance*
  %call42 = call i64 @gimp_object_get_type() #4
  %call43 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %76, i64 %call42)
  %77 = bitcast %struct._GTypeInstance* %call43 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %77, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.33, i32 0, i32 0))
  %78 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %78, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i8* null)
  %79 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %80 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp44 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %80, i32 0, i32 1
  %81 = load %struct._Gimp*, %struct._Gimp** %gimp44, align 8
  %call45 = call %struct._GParamSpec* @gimp_param_spec_drawable_id(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), %struct._Gimp* %81, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %79, %struct._GParamSpec* %call45)
  %82 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call46 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.38, i32 0, i32 0), i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %82, %struct._GParamSpec* %call46)
  %83 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %84 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %83, %struct._GimpProcedure* %84)
  %85 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %86 = bitcast %struct._GimpProcedure* %85 to i8*
  call void @g_object_unref(i8* %86)
  %call47 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @drawable_bpp_invoker)
  store %struct._GimpProcedure* %call47, %struct._GimpProcedure** %procedure, align 8
  %87 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %88 = bitcast %struct._GimpProcedure* %87 to %struct._GTypeInstance*
  %call48 = call i64 @gimp_object_get_type() #4
  %call49 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %88, i64 %call48)
  %89 = bitcast %struct._GTypeInstance* %call49 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %89, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.39, i32 0, i32 0))
  %90 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %90, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i8* null)
  %91 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %92 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp50 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %92, i32 0, i32 1
  %93 = load %struct._Gimp*, %struct._Gimp** %gimp50, align 8
  %call51 = call %struct._GParamSpec* @gimp_param_spec_drawable_id(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), %struct._Gimp* %93, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %91, %struct._GParamSpec* %call51)
  %94 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call52 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.43, i32 0, i32 0), i32 -2147483648, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %94, %struct._GParamSpec* %call52)
  %95 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %96 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %95, %struct._GimpProcedure* %96)
  %97 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %98 = bitcast %struct._GimpProcedure* %97 to i8*
  call void @g_object_unref(i8* %98)
  %call53 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @drawable_width_invoker)
  store %struct._GimpProcedure* %call53, %struct._GimpProcedure** %procedure, align 8
  %99 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %100 = bitcast %struct._GimpProcedure* %99 to %struct._GTypeInstance*
  %call54 = call i64 @gimp_object_get_type() #4
  %call55 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %100, i64 %call54)
  %101 = bitcast %struct._GTypeInstance* %call55 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %101, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.44, i32 0, i32 0))
  %102 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %102, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i8* null)
  %103 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %104 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp56 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %104, i32 0, i32 1
  %105 = load %struct._Gimp*, %struct._Gimp** %gimp56, align 8
  %call57 = call %struct._GParamSpec* @gimp_param_spec_drawable_id(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), %struct._Gimp* %105, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %103, %struct._GParamSpec* %call57)
  %106 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call58 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.48, i32 0, i32 0), i32 -2147483648, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %106, %struct._GParamSpec* %call58)
  %107 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %108 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %107, %struct._GimpProcedure* %108)
  %109 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %110 = bitcast %struct._GimpProcedure* %109 to i8*
  call void @g_object_unref(i8* %110)
  %call59 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @drawable_height_invoker)
  store %struct._GimpProcedure* %call59, %struct._GimpProcedure** %procedure, align 8
  %111 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %112 = bitcast %struct._GimpProcedure* %111 to %struct._GTypeInstance*
  %call60 = call i64 @gimp_object_get_type() #4
  %call61 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %112, i64 %call60)
  %113 = bitcast %struct._GTypeInstance* %call61 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %113, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.49, i32 0, i32 0))
  %114 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %114, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i8* null)
  %115 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %116 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp62 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %116, i32 0, i32 1
  %117 = load %struct._Gimp*, %struct._Gimp** %gimp62, align 8
  %call63 = call %struct._GParamSpec* @gimp_param_spec_drawable_id(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), %struct._Gimp* %117, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %115, %struct._GParamSpec* %call63)
  %118 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call64 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.53, i32 0, i32 0), i32 -2147483648, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %118, %struct._GParamSpec* %call64)
  %119 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %120 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %119, %struct._GimpProcedure* %120)
  %121 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %122 = bitcast %struct._GimpProcedure* %121 to i8*
  call void @g_object_unref(i8* %122)
  %call65 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @drawable_offsets_invoker)
  store %struct._GimpProcedure* %call65, %struct._GimpProcedure** %procedure, align 8
  %123 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %124 = bitcast %struct._GimpProcedure* %123 to %struct._GTypeInstance*
  %call66 = call i64 @gimp_object_get_type() #4
  %call67 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %124, i64 %call66)
  %125 = bitcast %struct._GTypeInstance* %call67 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %125, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.54, i32 0, i32 0))
  %126 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %126, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([183 x i8], [183 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i8* null)
  %127 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %128 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp68 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %128, i32 0, i32 1
  %129 = load %struct._Gimp*, %struct._Gimp** %gimp68, align 8
  %call69 = call %struct._GParamSpec* @gimp_param_spec_drawable_id(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), %struct._Gimp* %129, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %127, %struct._GParamSpec* %call69)
  %130 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call70 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.59, i32 0, i32 0), i32 -2147483648, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %130, %struct._GParamSpec* %call70)
  %131 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call71 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.62, i32 0, i32 0), i32 -2147483648, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %131, %struct._GParamSpec* %call71)
  %132 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %133 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %132, %struct._GimpProcedure* %133)
  %134 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %135 = bitcast %struct._GimpProcedure* %134 to i8*
  call void @g_object_unref(i8* %135)
  %call72 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @drawable_set_image_invoker)
  store %struct._GimpProcedure* %call72, %struct._GimpProcedure** %procedure, align 8
  %136 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %137 = bitcast %struct._GimpProcedure* %136 to %struct._GTypeInstance*
  %call73 = call i64 @gimp_object_get_type() #4
  %call74 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %137, i64 %call73)
  %138 = bitcast %struct._GTypeInstance* %call74 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %138, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.63, i32 0, i32 0))
  %139 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %139, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.66, i32 0, i32 0))
  %140 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %141 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp75 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %141, i32 0, i32 1
  %142 = load %struct._Gimp*, %struct._Gimp** %gimp75, align 8
  %call76 = call %struct._GParamSpec* @gimp_param_spec_drawable_id(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), %struct._Gimp* %142, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %140, %struct._GParamSpec* %call76)
  %143 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %144 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp77 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %144, i32 0, i32 1
  %145 = load %struct._Gimp*, %struct._Gimp** %gimp77, align 8
  %call78 = call %struct._GParamSpec* @gimp_param_spec_image_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.68, i32 0, i32 0), %struct._Gimp* %145, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %143, %struct._GParamSpec* %call78)
  %146 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %147 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %146, %struct._GimpProcedure* %147)
  %148 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %149 = bitcast %struct._GimpProcedure* %148 to i8*
  call void @g_object_unref(i8* %149)
  %call79 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @drawable_mask_bounds_invoker)
  store %struct._GimpProcedure* %call79, %struct._GimpProcedure** %procedure, align 8
  %150 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %151 = bitcast %struct._GimpProcedure* %150 to %struct._GTypeInstance*
  %call80 = call i64 @gimp_object_get_type() #4
  %call81 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %151, i64 %call80)
  %152 = bitcast %struct._GTypeInstance* %call81 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %152, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.69, i32 0, i32 0))
  %153 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %153, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([778 x i8], [778 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i8* null)
  %154 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %155 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp82 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %155, i32 0, i32 1
  %156 = load %struct._Gimp*, %struct._Gimp** %gimp82, align 8
  %call83 = call %struct._GParamSpec* @gimp_param_spec_drawable_id(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), %struct._Gimp* %156, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %154, %struct._GParamSpec* %call83)
  %157 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call84 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.72, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.73, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.74, i32 0, i32 0), i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %157, %struct._GParamSpec* %call84)
  %158 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call85 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.75, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.75, i32 0, i32 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.76, i32 0, i32 0), i32 -2147483648, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %158, %struct._GParamSpec* %call85)
  %159 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call86 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.77, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.77, i32 0, i32 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.78, i32 0, i32 0), i32 -2147483648, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %159, %struct._GParamSpec* %call86)
  %160 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call87 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.79, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.79, i32 0, i32 0), i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.80, i32 0, i32 0), i32 -2147483648, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %160, %struct._GParamSpec* %call87)
  %161 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call88 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.81, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.81, i32 0, i32 0), i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.82, i32 0, i32 0), i32 -2147483648, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %161, %struct._GParamSpec* %call88)
  %162 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %163 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %162, %struct._GimpProcedure* %163)
  %164 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %165 = bitcast %struct._GimpProcedure* %164 to i8*
  call void @g_object_unref(i8* %165)
  %call89 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @drawable_mask_intersect_invoker)
  store %struct._GimpProcedure* %call89, %struct._GimpProcedure** %procedure, align 8
  %166 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %167 = bitcast %struct._GimpProcedure* %166 to %struct._GTypeInstance*
  %call90 = call i64 @gimp_object_get_type() #4
  %call91 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %167, i64 %call90)
  %168 = bitcast %struct._GTypeInstance* %call91 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %168, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.83, i32 0, i32 0))
  %169 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %169, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.83, i32 0, i32 0), i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([310 x i8], [310 x i8]* @.str.84, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.85, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.86, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.87, i32 0, i32 0), i8* null)
  %170 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %171 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp92 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %171, i32 0, i32 1
  %172 = load %struct._Gimp*, %struct._Gimp** %gimp92, align 8
  %call93 = call %struct._GParamSpec* @gimp_param_spec_drawable_id(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), %struct._Gimp* %172, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %170, %struct._GParamSpec* %call93)
  %173 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call94 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.72, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.73, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.88, i32 0, i32 0), i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %173, %struct._GParamSpec* %call94)
  %174 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call95 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.89, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.89, i32 0, i32 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.90, i32 0, i32 0), i32 -2147483648, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %174, %struct._GParamSpec* %call95)
  %175 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call96 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.91, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.91, i32 0, i32 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.92, i32 0, i32 0), i32 -2147483648, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %175, %struct._GParamSpec* %call96)
  %176 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call97 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.93, i32 0, i32 0), i32 -2147483648, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %176, %struct._GParamSpec* %call97)
  %177 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call98 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.94, i32 0, i32 0), i32 -2147483648, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %177, %struct._GParamSpec* %call98)
  %178 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %179 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %178, %struct._GimpProcedure* %179)
  %180 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %181 = bitcast %struct._GimpProcedure* %180 to i8*
  call void @g_object_unref(i8* %181)
  %call99 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @drawable_merge_shadow_invoker)
  store %struct._GimpProcedure* %call99, %struct._GimpProcedure** %procedure, align 8
  %182 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %183 = bitcast %struct._GimpProcedure* %182 to %struct._GTypeInstance*
  %call100 = call i64 @gimp_object_get_type() #4
  %call101 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %183, i64 %call100)
  %184 = bitcast %struct._GTypeInstance* %call101 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %184, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.95, i32 0, i32 0))
  %185 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %185, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.95, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.96, i32 0, i32 0), i8* getelementptr inbounds ([271 x i8], [271 x i8]* @.str.97, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i8* null)
  %186 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %187 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp102 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %187, i32 0, i32 1
  %188 = load %struct._Gimp*, %struct._Gimp** %gimp102, align 8
  %call103 = call %struct._GParamSpec* @gimp_param_spec_drawable_id(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), %struct._Gimp* %188, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %186, %struct._GParamSpec* %call103)
  %189 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call104 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.98, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.98, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.99, i32 0, i32 0), i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %189, %struct._GParamSpec* %call104)
  %190 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %191 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %190, %struct._GimpProcedure* %191)
  %192 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %193 = bitcast %struct._GimpProcedure* %192 to i8*
  call void @g_object_unref(i8* %193)
  %call105 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @drawable_free_shadow_invoker)
  store %struct._GimpProcedure* %call105, %struct._GimpProcedure** %procedure, align 8
  %194 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %195 = bitcast %struct._GimpProcedure* %194 to %struct._GTypeInstance*
  %call106 = call i64 @gimp_object_get_type() #4
  %call107 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %195, i64 %call106)
  %196 = bitcast %struct._GTypeInstance* %call107 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %196, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.100, i32 0, i32 0))
  %197 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %197, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.100, i32 0, i32 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.101, i32 0, i32 0), i8* getelementptr inbounds ([229 x i8], [229 x i8]* @.str.102, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.85, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.86, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.103, i32 0, i32 0), i8* null)
  %198 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %199 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp108 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %199, i32 0, i32 1
  %200 = load %struct._Gimp*, %struct._Gimp** %gimp108, align 8
  %call109 = call %struct._GParamSpec* @gimp_param_spec_drawable_id(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), %struct._Gimp* %200, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %198, %struct._GParamSpec* %call109)
  %201 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %202 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %201, %struct._GimpProcedure* %202)
  %203 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %204 = bitcast %struct._GimpProcedure* %203 to i8*
  call void @g_object_unref(i8* %204)
  %call110 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @drawable_update_invoker)
  store %struct._GimpProcedure* %call110, %struct._GimpProcedure** %procedure, align 8
  %205 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %206 = bitcast %struct._GimpProcedure* %205 to %struct._GTypeInstance*
  %call111 = call i64 @gimp_object_get_type() #4
  %call112 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %206, i64 %call111)
  %207 = bitcast %struct._GTypeInstance* %call112 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %207, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.104, i32 0, i32 0))
  %208 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %208, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.104, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.105, i32 0, i32 0), i8* getelementptr inbounds ([226 x i8], [226 x i8]* @.str.106, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i8* null)
  %209 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %210 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp113 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %210, i32 0, i32 1
  %211 = load %struct._Gimp*, %struct._Gimp** %gimp113, align 8
  %call114 = call %struct._GParamSpec* @gimp_param_spec_drawable_id(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), %struct._Gimp* %211, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %209, %struct._GParamSpec* %call114)
  %212 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call115 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.89, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.89, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.107, i32 0, i32 0), i32 -2147483648, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %212, %struct._GParamSpec* %call115)
  %213 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call116 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.91, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.91, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.108, i32 0, i32 0), i32 -2147483648, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %213, %struct._GParamSpec* %call116)
  %214 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call117 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.109, i32 0, i32 0), i32 -2147483648, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %214, %struct._GParamSpec* %call117)
  %215 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call118 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.110, i32 0, i32 0), i32 -2147483648, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %215, %struct._GParamSpec* %call118)
  %216 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %217 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %216, %struct._GimpProcedure* %217)
  %218 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %219 = bitcast %struct._GimpProcedure* %218 to i8*
  call void @g_object_unref(i8* %219)
  %call119 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @drawable_get_pixel_invoker)
  store %struct._GimpProcedure* %call119, %struct._GimpProcedure** %procedure, align 8
  %220 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %221 = bitcast %struct._GimpProcedure* %220 to %struct._GTypeInstance*
  %call120 = call i64 @gimp_object_get_type() #4
  %call121 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %221, i64 %call120)
  %222 = bitcast %struct._GTypeInstance* %call121 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %222, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.111, i32 0, i32 0))
  %223 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %223, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.111, i32 0, i32 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.112, i32 0, i32 0), i8* getelementptr inbounds ([172 x i8], [172 x i8]* @.str.113, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.114, i32 0, i32 0), i8* null)
  %224 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %225 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp122 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %225, i32 0, i32 1
  %226 = load %struct._Gimp*, %struct._Gimp** %gimp122, align 8
  %call123 = call %struct._GParamSpec* @gimp_param_spec_drawable_id(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), %struct._Gimp* %226, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %224, %struct._GParamSpec* %call123)
  %227 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call124 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.115, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.116, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.117, i32 0, i32 0), i32 0, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %227, %struct._GParamSpec* %call124)
  %228 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call125 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.118, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.119, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.120, i32 0, i32 0), i32 0, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %228, %struct._GParamSpec* %call125)
  %229 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call126 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.121, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.122, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.123, i32 0, i32 0), i32 0, i32 2147483647, i32 0, i32 16611)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %229, %struct._GParamSpec* %call126)
  %230 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call127 = call %struct._GParamSpec* @gimp_param_spec_int8_array(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.124, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.124, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.125, i32 0, i32 0), i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %230, %struct._GParamSpec* %call127)
  %231 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %232 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %231, %struct._GimpProcedure* %232)
  %233 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %234 = bitcast %struct._GimpProcedure* %233 to i8*
  call void @g_object_unref(i8* %234)
  %call128 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @drawable_set_pixel_invoker)
  store %struct._GimpProcedure* %call128, %struct._GimpProcedure** %procedure, align 8
  %235 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %236 = bitcast %struct._GimpProcedure* %235 to %struct._GTypeInstance*
  %call129 = call i64 @gimp_object_get_type() #4
  %call130 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %236, i64 %call129)
  %237 = bitcast %struct._GTypeInstance* %call130 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %237, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.126, i32 0, i32 0))
  %238 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %238, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.126, i32 0, i32 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.127, i32 0, i32 0), i8* getelementptr inbounds ([276 x i8], [276 x i8]* @.str.128, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.114, i32 0, i32 0), i8* null)
  %239 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %240 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp131 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %240, i32 0, i32 1
  %241 = load %struct._Gimp*, %struct._Gimp** %gimp131, align 8
  %call132 = call %struct._GParamSpec* @gimp_param_spec_drawable_id(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), %struct._Gimp* %241, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %239, %struct._GParamSpec* %call132)
  %242 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call133 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.115, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.116, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.117, i32 0, i32 0), i32 0, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %242, %struct._GParamSpec* %call133)
  %243 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call134 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.118, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.119, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.120, i32 0, i32 0), i32 0, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %243, %struct._GParamSpec* %call134)
  %244 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call135 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.121, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.122, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.123, i32 0, i32 0), i32 0, i32 2147483647, i32 0, i32 16611)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %244, %struct._GParamSpec* %call135)
  %245 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call136 = call %struct._GParamSpec* @gimp_param_spec_int8_array(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.124, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.124, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.125, i32 0, i32 0), i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %245, %struct._GParamSpec* %call136)
  %246 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %247 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %246, %struct._GimpProcedure* %247)
  %248 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %249 = bitcast %struct._GimpProcedure* %248 to i8*
  call void @g_object_unref(i8* %249)
  %call137 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @drawable_fill_invoker)
  store %struct._GimpProcedure* %call137, %struct._GimpProcedure** %procedure, align 8
  %250 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %251 = bitcast %struct._GimpProcedure* %250 to %struct._GTypeInstance*
  %call138 = call i64 @gimp_object_get_type() #4
  %call139 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %251, i64 %call138)
  %252 = bitcast %struct._GTypeInstance* %call139 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %252, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.129, i32 0, i32 0))
  %253 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %253, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.129, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.130, i32 0, i32 0), i8* getelementptr inbounds ([674 x i8], [674 x i8]* @.str.131, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i8* null)
  %254 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %255 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp140 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %255, i32 0, i32 1
  %256 = load %struct._Gimp*, %struct._Gimp** %gimp140, align 8
  %call141 = call %struct._GParamSpec* @gimp_param_spec_drawable_id(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), %struct._Gimp* %256, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %254, %struct._GParamSpec* %call141)
  %257 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call142 = call i64 @gimp_fill_type_get_type() #4
  %call143 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.132, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.133, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.134, i32 0, i32 0), i64 %call142, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %257, %struct._GParamSpec* %call143)
  %258 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %259 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %258, %struct._GimpProcedure* %259)
  %260 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %261 = bitcast %struct._GimpProcedure* %260 to i8*
  call void @g_object_unref(i8* %261)
  %call144 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @drawable_offset_invoker)
  store %struct._GimpProcedure* %call144, %struct._GimpProcedure** %procedure, align 8
  %262 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %263 = bitcast %struct._GimpProcedure* %262 to %struct._GTypeInstance*
  %call145 = call i64 @gimp_object_get_type() #4
  %call146 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %263, i64 %call145)
  %264 = bitcast %struct._GTypeInstance* %call146 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %264, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.135, i32 0, i32 0))
  %265 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %265, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.135, i32 0, i32 0), i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.136, i32 0, i32 0), i8* getelementptr inbounds ([368 x i8], [368 x i8]* @.str.137, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.114, i32 0, i32 0), i8* null)
  %266 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %267 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp147 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %267, i32 0, i32 1
  %268 = load %struct._Gimp*, %struct._Gimp** %gimp147, align 8
  %call148 = call %struct._GParamSpec* @gimp_param_spec_drawable_id(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.138, i32 0, i32 0), %struct._Gimp* %268, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %266, %struct._GParamSpec* %call148)
  %269 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call149 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.139, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.140, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.141, i32 0, i32 0), i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %269, %struct._GParamSpec* %call149)
  %270 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call150 = call i64 @gimp_offset_type_get_type() #4
  %call151 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.132, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.133, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.142, i32 0, i32 0), i64 %call150, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %270, %struct._GParamSpec* %call151)
  %271 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call152 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.143, i32 0, i32 0), i32 -2147483648, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %271, %struct._GParamSpec* %call152)
  %272 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call153 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.144, i32 0, i32 0), i32 -2147483648, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %272, %struct._GParamSpec* %call153)
  %273 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %274 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %273, %struct._GimpProcedure* %274)
  %275 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %276 = bitcast %struct._GimpProcedure* %275 to i8*
  call void @g_object_unref(i8* %276)
  %call154 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @drawable_thumbnail_invoker)
  store %struct._GimpProcedure* %call154, %struct._GimpProcedure** %procedure, align 8
  %277 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %278 = bitcast %struct._GimpProcedure* %277 to %struct._GTypeInstance*
  %call155 = call i64 @gimp_object_get_type() #4
  %call156 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %278, i64 %call155)
  %279 = bitcast %struct._GTypeInstance* %call156 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %279, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.145, i32 0, i32 0))
  %280 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %280, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.145, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.146, i32 0, i32 0), i8* getelementptr inbounds ([240 x i8], [240 x i8]* @.str.147, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.148, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.148, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.149, i32 0, i32 0), i8* null)
  %281 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %282 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp157 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %282, i32 0, i32 1
  %283 = load %struct._Gimp*, %struct._Gimp** %gimp157, align 8
  %call158 = call %struct._GParamSpec* @gimp_param_spec_drawable_id(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), %struct._Gimp* %283, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %281, %struct._GParamSpec* %call158)
  %284 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call159 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.150, i32 0, i32 0), i32 1, i32 1024, i32 1, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %284, %struct._GParamSpec* %call159)
  %285 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call160 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.151, i32 0, i32 0), i32 1, i32 1024, i32 1, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %285, %struct._GParamSpec* %call160)
  %286 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call161 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.152, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.153, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.154, i32 0, i32 0), i32 -2147483648, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %286, %struct._GParamSpec* %call161)
  %287 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call162 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.155, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.156, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.157, i32 0, i32 0), i32 -2147483648, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %287, %struct._GParamSpec* %call162)
  %288 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call163 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.158, i32 0, i32 0), i32 -2147483648, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %288, %struct._GParamSpec* %call163)
  %289 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call164 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.159, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.160, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.161, i32 0, i32 0), i32 0, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %289, %struct._GParamSpec* %call164)
  %290 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call165 = call %struct._GParamSpec* @gimp_param_spec_int8_array(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.162, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.163, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.164, i32 0, i32 0), i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %290, %struct._GParamSpec* %call165)
  %291 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %292 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %291, %struct._GimpProcedure* %292)
  %293 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %294 = bitcast %struct._GimpProcedure* %293 to i8*
  call void @g_object_unref(i8* %294)
  %call166 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @drawable_sub_thumbnail_invoker)
  store %struct._GimpProcedure* %call166, %struct._GimpProcedure** %procedure, align 8
  %295 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %296 = bitcast %struct._GimpProcedure* %295 to %struct._GTypeInstance*
  %call167 = call i64 @gimp_object_get_type() #4
  %call168 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %296, i64 %call167)
  %297 = bitcast %struct._GTypeInstance* %call168 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %297, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.165, i32 0, i32 0))
  %298 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %298, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.165, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.166, i32 0, i32 0), i8* getelementptr inbounds ([240 x i8], [240 x i8]* @.str.147, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.85, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.86, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.87, i32 0, i32 0), i8* null)
  %299 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %300 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp169 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %300, i32 0, i32 1
  %301 = load %struct._Gimp*, %struct._Gimp** %gimp169, align 8
  %call170 = call %struct._GParamSpec* @gimp_param_spec_drawable_id(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), %struct._Gimp* %301, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %299, %struct._GParamSpec* %call170)
  %302 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call171 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.167, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.168, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.169, i32 0, i32 0), i32 0, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %302, %struct._GParamSpec* %call171)
  %303 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call172 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.170, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.171, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.172, i32 0, i32 0), i32 0, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %303, %struct._GParamSpec* %call172)
  %304 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call173 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.173, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.174, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.175, i32 0, i32 0), i32 1, i32 2147483647, i32 1, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %304, %struct._GParamSpec* %call173)
  %305 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call174 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.176, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.177, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.178, i32 0, i32 0), i32 1, i32 2147483647, i32 1, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %305, %struct._GParamSpec* %call174)
  %306 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call175 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.179, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.180, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.181, i32 0, i32 0), i32 1, i32 1024, i32 1, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %306, %struct._GParamSpec* %call175)
  %307 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call176 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.182, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.183, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.184, i32 0, i32 0), i32 1, i32 1024, i32 1, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %307, %struct._GParamSpec* %call176)
  %308 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call177 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.154, i32 0, i32 0), i32 -2147483648, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %308, %struct._GParamSpec* %call177)
  %309 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call178 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.157, i32 0, i32 0), i32 -2147483648, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %309, %struct._GParamSpec* %call178)
  %310 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call179 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.158, i32 0, i32 0), i32 -2147483648, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %310, %struct._GParamSpec* %call179)
  %311 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call180 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.159, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.160, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.161, i32 0, i32 0), i32 0, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %311, %struct._GParamSpec* %call180)
  %312 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call181 = call %struct._GParamSpec* @gimp_param_spec_int8_array(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.162, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.163, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.164, i32 0, i32 0), i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %312, %struct._GParamSpec* %call181)
  %313 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %314 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %313, %struct._GimpProcedure* %314)
  %315 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %316 = bitcast %struct._GimpProcedure* %315 to i8*
  call void @g_object_unref(i8* %316)
  %call182 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @drawable_foreground_extract_invoker)
  store %struct._GimpProcedure* %call182, %struct._GimpProcedure** %procedure, align 8
  %317 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %318 = bitcast %struct._GimpProcedure* %317 to %struct._GTypeInstance*
  %call183 = call i64 @gimp_object_get_type() #4
  %call184 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %318, i64 %call183)
  %319 = bitcast %struct._GTypeInstance* %call184 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %319, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.185, i32 0, i32 0))
  %320 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %320, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.185, i32 0, i32 0), i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.186, i32 0, i32 0), i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str.187, i32 0, i32 0), i8* getelementptr inbounds ([113 x i8], [113 x i8]* @.str.188, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.189, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.190, i32 0, i32 0), i8* null)
  %321 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %322 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp185 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %322, i32 0, i32 1
  %323 = load %struct._Gimp*, %struct._Gimp** %gimp185, align 8
  %call186 = call %struct._GParamSpec* @gimp_param_spec_drawable_id(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), %struct._Gimp* %323, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %321, %struct._GParamSpec* %call186)
  %324 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call187 = call i64 @gimp_foreground_extract_mode_get_type() #4
  %call188 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.191, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.191, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.192, i32 0, i32 0), i64 %call187, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %324, %struct._GParamSpec* %call188)
  %325 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %326 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp189 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %326, i32 0, i32 1
  %327 = load %struct._Gimp*, %struct._Gimp** %gimp189, align 8
  %call190 = call %struct._GParamSpec* @gimp_param_spec_drawable_id(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.193, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.193, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.194, i32 0, i32 0), %struct._Gimp* %327, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %325, %struct._GParamSpec* %call190)
  %328 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %329 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %328, %struct._GimpProcedure* %329)
  %330 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %331 = bitcast %struct._GimpProcedure* %330 to i8*
  call void @g_object_unref(i8* %331)
  ret void
}

declare %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)*) #1

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @drawable_type_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  %type = alloca i32, align 4
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store i32 0, i32* %type, align 4
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %2 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call = call %struct._GimpDrawable* @gimp_value_get_drawable(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpDrawable* %call, %struct._GimpDrawable** %drawable, align 8
  %3 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call1 = call i32 @gimp_drawable_type(%struct._GimpDrawable* %4)
  store i32 %call1, i32* %type, align 4
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
  %13 = load i32, i32* %type, align 4
  call void @g_value_set_enum(%struct._GValue* %arrayidx7, i32 %13)
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.5, %cond.end
  %14 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %14
}

declare void @gimp_object_set_static_name(%struct._GimpObject*, i8*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #2

declare void @gimp_procedure_set_static_strings(%struct._GimpProcedure*, i8*, i8*, i8*, i8*, i8*, i8*, i8*) #1

declare void @gimp_procedure_add_argument(%struct._GimpProcedure*, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @gimp_param_spec_drawable_id(i8*, i8*, i8*, %struct._Gimp*, i32, i32) #1

declare void @gimp_procedure_add_return_value(%struct._GimpProcedure*, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_enum(i8*, i8*, i8*, i64, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_image_type_get_type() #2

declare void @gimp_pdb_register_procedure(%struct._GimpPDB*, %struct._GimpProcedure*) #1

declare void @g_object_unref(i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @drawable_type_with_alpha_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  %type_with_alpha = alloca i32, align 4
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store i32 0, i32* %type_with_alpha, align 4
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %2 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call = call %struct._GimpDrawable* @gimp_value_get_drawable(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpDrawable* %call, %struct._GimpDrawable** %drawable, align 8
  %3 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call1 = call i32 @gimp_drawable_type_with_alpha(%struct._GimpDrawable* %4)
  store i32 %call1, i32* %type_with_alpha, align 4
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
  %13 = load i32, i32* %type_with_alpha, align 4
  call void @g_value_set_enum(%struct._GValue* %arrayidx7, i32 %13)
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.5, %cond.end
  %14 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %14
}

declare %struct._GParamSpec* @gimp_param_spec_enum(i8*, i8*, i8*, i64, i32, i32) #1

declare void @gimp_param_spec_enum_exclude_value(%struct._GimpParamSpecEnum*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_param_enum_get_type() #2

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @drawable_has_alpha_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  %has_alpha = alloca i32, align 4
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store i32 0, i32* %has_alpha, align 4
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %2 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call = call %struct._GimpDrawable* @gimp_value_get_drawable(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpDrawable* %call, %struct._GimpDrawable** %drawable, align 8
  %3 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call1 = call i32 @gimp_drawable_has_alpha(%struct._GimpDrawable* %4)
  store i32 %call1, i32* %has_alpha, align 4
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
  %13 = load i32, i32* %has_alpha, align 4
  call void @g_value_set_boolean(%struct._GValue* %arrayidx7, i32 %13)
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.5, %cond.end
  %14 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %14
}

declare %struct._GParamSpec* @g_param_spec_boolean(i8*, i8*, i8*, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @drawable_is_rgb_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  %is_rgb = alloca i32, align 4
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store i32 0, i32* %is_rgb, align 4
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %2 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call = call %struct._GimpDrawable* @gimp_value_get_drawable(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpDrawable* %call, %struct._GimpDrawable** %drawable, align 8
  %3 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call1 = call i32 @gimp_drawable_is_rgb(%struct._GimpDrawable* %4)
  store i32 %call1, i32* %is_rgb, align 4
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
  %13 = load i32, i32* %is_rgb, align 4
  call void @g_value_set_boolean(%struct._GValue* %arrayidx7, i32 %13)
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.5, %cond.end
  %14 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %14
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @drawable_is_gray_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  %is_gray = alloca i32, align 4
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store i32 0, i32* %is_gray, align 4
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %2 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call = call %struct._GimpDrawable* @gimp_value_get_drawable(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpDrawable* %call, %struct._GimpDrawable** %drawable, align 8
  %3 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call1 = call i32 @gimp_drawable_is_gray(%struct._GimpDrawable* %4)
  store i32 %call1, i32* %is_gray, align 4
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
  %13 = load i32, i32* %is_gray, align 4
  call void @g_value_set_boolean(%struct._GValue* %arrayidx7, i32 %13)
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.5, %cond.end
  %14 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %14
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @drawable_is_indexed_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  %is_indexed = alloca i32, align 4
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store i32 0, i32* %is_indexed, align 4
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %2 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call = call %struct._GimpDrawable* @gimp_value_get_drawable(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpDrawable* %call, %struct._GimpDrawable** %drawable, align 8
  %3 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call1 = call i32 @gimp_drawable_is_indexed(%struct._GimpDrawable* %4)
  store i32 %call1, i32* %is_indexed, align 4
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
  %13 = load i32, i32* %is_indexed, align 4
  call void @g_value_set_boolean(%struct._GValue* %arrayidx7, i32 %13)
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.5, %cond.end
  %14 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %14
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @drawable_bpp_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  %bpp = alloca i32, align 4
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store i32 0, i32* %bpp, align 4
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %2 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call = call %struct._GimpDrawable* @gimp_value_get_drawable(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpDrawable* %call, %struct._GimpDrawable** %drawable, align 8
  %3 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call1 = call i32 @gimp_drawable_bytes(%struct._GimpDrawable* %4)
  store i32 %call1, i32* %bpp, align 4
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
  %13 = load i32, i32* %bpp, align 4
  call void @g_value_set_int(%struct._GValue* %arrayidx7, i32 %13)
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.5, %cond.end
  %14 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %14
}

declare %struct._GParamSpec* @gimp_param_spec_int32(i8*, i8*, i8*, i32, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @drawable_width_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  %call = call %struct._GimpDrawable* @gimp_value_get_drawable(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpDrawable* %call, %struct._GimpDrawable** %drawable, align 8
  %3 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %5 = bitcast %struct._GimpDrawable* %4 to %struct._GTypeInstance*
  %call1 = call i64 @gimp_item_get_type() #4
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call1)
  %6 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpItem*
  %call3 = call i32 @gimp_item_get_width(%struct._GimpItem* %6)
  store i32 %call3, i32* %width, align 4
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
  br i1 %tobool6, label %if.then.7, label %if.end.10

if.then.7:                                        ; preds = %cond.end
  %13 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values8 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %13, i32 0, i32 1
  %14 = load %struct._GValue*, %struct._GValue** %values8, align 8
  %arrayidx9 = getelementptr inbounds %struct._GValue, %struct._GValue* %14, i64 1
  %15 = load i32, i32* %width, align 4
  call void @g_value_set_int(%struct._GValue* %arrayidx9, i32 %15)
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.7, %cond.end
  %16 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %16
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @drawable_height_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  %call = call %struct._GimpDrawable* @gimp_value_get_drawable(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpDrawable* %call, %struct._GimpDrawable** %drawable, align 8
  %3 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %5 = bitcast %struct._GimpDrawable* %4 to %struct._GTypeInstance*
  %call1 = call i64 @gimp_item_get_type() #4
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call1)
  %6 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpItem*
  %call3 = call i32 @gimp_item_get_height(%struct._GimpItem* %6)
  store i32 %call3, i32* %height, align 4
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
  br i1 %tobool6, label %if.then.7, label %if.end.10

if.then.7:                                        ; preds = %cond.end
  %13 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values8 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %13, i32 0, i32 1
  %14 = load %struct._GValue*, %struct._GValue** %values8, align 8
  %arrayidx9 = getelementptr inbounds %struct._GValue, %struct._GValue* %14, i64 1
  %15 = load i32, i32* %height, align 4
  call void @g_value_set_int(%struct._GValue* %arrayidx9, i32 %15)
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.7, %cond.end
  %16 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %16
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @drawable_offsets_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  %offset_x = alloca i32, align 4
  %offset_y = alloca i32, align 4
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store i32 0, i32* %offset_x, align 4
  store i32 0, i32* %offset_y, align 4
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %2 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call = call %struct._GimpDrawable* @gimp_value_get_drawable(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpDrawable* %call, %struct._GimpDrawable** %drawable, align 8
  %3 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %5 = bitcast %struct._GimpDrawable* %4 to %struct._GTypeInstance*
  %call1 = call i64 @gimp_item_get_type() #4
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call1)
  %6 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpItem*
  call void @gimp_item_get_offset(%struct._GimpItem* %6, i32* %offset_x, i32* %offset_y)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %8 = load i32, i32* %success, align 4
  %9 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool3 = icmp ne %struct._GError** %9, null
  br i1 %tobool3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %10 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %11 = load %struct._GError*, %struct._GError** %10, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %11, %cond.true ], [ null, %cond.false ]
  %call4 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %7, i32 %8, %struct._GError* %cond)
  store %struct._GValueArray* %call4, %struct._GValueArray** %return_vals, align 8
  %12 = load i32, i32* %success, align 4
  %tobool5 = icmp ne i32 %12, 0
  br i1 %tobool5, label %if.then.6, label %if.end.11

if.then.6:                                        ; preds = %cond.end
  %13 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values7 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %13, i32 0, i32 1
  %14 = load %struct._GValue*, %struct._GValue** %values7, align 8
  %arrayidx8 = getelementptr inbounds %struct._GValue, %struct._GValue* %14, i64 1
  %15 = load i32, i32* %offset_x, align 4
  call void @g_value_set_int(%struct._GValue* %arrayidx8, i32 %15)
  %16 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values9 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %16, i32 0, i32 1
  %17 = load %struct._GValue*, %struct._GValue** %values9, align 8
  %arrayidx10 = getelementptr inbounds %struct._GValue, %struct._GValue* %17, i64 2
  %18 = load i32, i32* %offset_y, align 4
  call void @g_value_set_int(%struct._GValue* %arrayidx10, i32 %18)
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.6, %cond.end
  %19 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %19
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @drawable_set_image_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %drawable = alloca %struct._GimpDrawable*, align 8
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
  %5 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call3 = call %struct._GimpImage* @gimp_value_get_image(%struct._GValue* %arrayidx2, %struct._Gimp* %5)
  store %struct._GimpImage* %call3, %struct._GimpImage** %image, align 8
  %6 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then, label %if.end.8

if.then:                                          ; preds = %entry
  %7 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %8 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %9 = bitcast %struct._GimpDrawable* %8 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_item_get_type() #4
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call4)
  %10 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpItem*
  %call6 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %10)
  %cmp = icmp ne %struct._GimpImage* %7, %call6
  br i1 %cmp, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.7, %if.then
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

declare %struct._GParamSpec* @gimp_param_spec_image_id(i8*, i8*, i8*, %struct._Gimp*, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @drawable_mask_bounds_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  %call = call %struct._GimpDrawable* @gimp_value_get_drawable(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpDrawable* %call, %struct._GimpDrawable** %drawable, align 8
  %3 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end.9

if.then:                                          ; preds = %entry
  %4 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %5 = bitcast %struct._GimpDrawable* %4 to %struct._GTypeInstance*
  %call1 = call i64 @gimp_item_get_type() #4
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call1)
  %6 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpItem*
  %7 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call3 = call i32 @gimp_pdb_item_is_attached(%struct._GimpItem* %6, %struct._GimpImage* null, i32 0, %struct._GError** %7)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.then
  %8 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %9 = bitcast %struct._GimpDrawable* %8 to %struct._GTypeInstance*
  %call6 = call i64 @gimp_item_get_type() #4
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call6)
  %10 = bitcast %struct._GTypeInstance* %call7 to %struct._GimpItem*
  %call8 = call i32 @gimp_item_mask_bounds(%struct._GimpItem* %10, i32* %x1, i32* %y1, i32* %x2, i32* %y2)
  store i32 %call8, i32* %non_empty, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.5
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
  br i1 %tobool12, label %if.then.13, label %if.end.24

if.then.13:                                       ; preds = %cond.end
  %17 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values14 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %17, i32 0, i32 1
  %18 = load %struct._GValue*, %struct._GValue** %values14, align 8
  %arrayidx15 = getelementptr inbounds %struct._GValue, %struct._GValue* %18, i64 1
  %19 = load i32, i32* %non_empty, align 4
  call void @g_value_set_boolean(%struct._GValue* %arrayidx15, i32 %19)
  %20 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values16 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %20, i32 0, i32 1
  %21 = load %struct._GValue*, %struct._GValue** %values16, align 8
  %arrayidx17 = getelementptr inbounds %struct._GValue, %struct._GValue* %21, i64 2
  %22 = load i32, i32* %x1, align 4
  call void @g_value_set_int(%struct._GValue* %arrayidx17, i32 %22)
  %23 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values18 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %23, i32 0, i32 1
  %24 = load %struct._GValue*, %struct._GValue** %values18, align 8
  %arrayidx19 = getelementptr inbounds %struct._GValue, %struct._GValue* %24, i64 3
  %25 = load i32, i32* %y1, align 4
  call void @g_value_set_int(%struct._GValue* %arrayidx19, i32 %25)
  %26 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values20 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %26, i32 0, i32 1
  %27 = load %struct._GValue*, %struct._GValue** %values20, align 8
  %arrayidx21 = getelementptr inbounds %struct._GValue, %struct._GValue* %27, i64 4
  %28 = load i32, i32* %x2, align 4
  call void @g_value_set_int(%struct._GValue* %arrayidx21, i32 %28)
  %29 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values22 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %29, i32 0, i32 1
  %30 = load %struct._GValue*, %struct._GValue** %values22, align 8
  %arrayidx23 = getelementptr inbounds %struct._GValue, %struct._GValue* %30, i64 5
  %31 = load i32, i32* %y2, align 4
  call void @g_value_set_int(%struct._GValue* %arrayidx23, i32 %31)
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.13, %cond.end
  %32 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %32
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @drawable_mask_intersect_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  %non_empty = alloca i32, align 4
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
  store i32 0, i32* %non_empty, align 4
  store i32 0, i32* %x, align 4
  store i32 0, i32* %y, align 4
  store i32 0, i32* %width, align 4
  store i32 0, i32* %height, align 4
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %2 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call = call %struct._GimpDrawable* @gimp_value_get_drawable(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpDrawable* %call, %struct._GimpDrawable** %drawable, align 8
  %3 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end.9

if.then:                                          ; preds = %entry
  %4 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %5 = bitcast %struct._GimpDrawable* %4 to %struct._GTypeInstance*
  %call1 = call i64 @gimp_item_get_type() #4
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call1)
  %6 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpItem*
  %7 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call3 = call i32 @gimp_pdb_item_is_attached(%struct._GimpItem* %6, %struct._GimpImage* null, i32 0, %struct._GError** %7)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.then
  %8 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %9 = bitcast %struct._GimpDrawable* %8 to %struct._GTypeInstance*
  %call6 = call i64 @gimp_item_get_type() #4
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call6)
  %10 = bitcast %struct._GTypeInstance* %call7 to %struct._GimpItem*
  %call8 = call i32 @gimp_item_mask_intersect(%struct._GimpItem* %10, i32* %x, i32* %y, i32* %width, i32* %height)
  store i32 %call8, i32* %non_empty, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.5
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
  br i1 %tobool12, label %if.then.13, label %if.end.24

if.then.13:                                       ; preds = %cond.end
  %17 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values14 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %17, i32 0, i32 1
  %18 = load %struct._GValue*, %struct._GValue** %values14, align 8
  %arrayidx15 = getelementptr inbounds %struct._GValue, %struct._GValue* %18, i64 1
  %19 = load i32, i32* %non_empty, align 4
  call void @g_value_set_boolean(%struct._GValue* %arrayidx15, i32 %19)
  %20 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values16 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %20, i32 0, i32 1
  %21 = load %struct._GValue*, %struct._GValue** %values16, align 8
  %arrayidx17 = getelementptr inbounds %struct._GValue, %struct._GValue* %21, i64 2
  %22 = load i32, i32* %x, align 4
  call void @g_value_set_int(%struct._GValue* %arrayidx17, i32 %22)
  %23 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values18 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %23, i32 0, i32 1
  %24 = load %struct._GValue*, %struct._GValue** %values18, align 8
  %arrayidx19 = getelementptr inbounds %struct._GValue, %struct._GValue* %24, i64 3
  %25 = load i32, i32* %y, align 4
  call void @g_value_set_int(%struct._GValue* %arrayidx19, i32 %25)
  %26 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values20 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %26, i32 0, i32 1
  %27 = load %struct._GValue*, %struct._GValue** %values20, align 8
  %arrayidx21 = getelementptr inbounds %struct._GValue, %struct._GValue* %27, i64 4
  %28 = load i32, i32* %width, align 4
  call void @g_value_set_int(%struct._GValue* %arrayidx21, i32 %28)
  %29 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values22 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %29, i32 0, i32 1
  %30 = load %struct._GValue*, %struct._GValue** %values22, align 8
  %arrayidx23 = getelementptr inbounds %struct._GValue, %struct._GValue* %30, i64 5
  %31 = load i32, i32* %height, align 4
  call void @g_value_set_int(%struct._GValue* %arrayidx23, i32 %31)
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.13, %cond.end
  %32 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %32
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @drawable_merge_shadow_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %drawable = alloca %struct._GimpDrawable*, align 8
  %undo = alloca i32, align 4
  %undo_desc = alloca i8*, align 8
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
  store i32 %call3, i32* %undo, align 4
  %5 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end.20

if.then:                                          ; preds = %entry
  %6 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %7 = bitcast %struct._GimpDrawable* %6 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_item_get_type() #4
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call4)
  %8 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpItem*
  %9 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call6 = call i32 @gimp_pdb_item_is_attached(%struct._GimpItem* %8, %struct._GimpImage* null, i32 1, %struct._GError** %9)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %10 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %11 = bitcast %struct._GimpDrawable* %10 to %struct._GTypeInstance*
  %call8 = call i64 @gimp_item_get_type() #4
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call8)
  %12 = bitcast %struct._GTypeInstance* %call9 to %struct._GimpItem*
  %13 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call10 = call i32 @gimp_pdb_item_is_not_group(%struct._GimpItem* %12, %struct._GError** %13)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %land.lhs.true
  %call13 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.195, i32 0, i32 0)) #5
  store i8* %call13, i8** %undo_desc, align 8
  %14 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %plug_in_manager = getelementptr inbounds %struct._Gimp, %struct._Gimp* %14, i32 0, i32 25
  %15 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %plug_in_manager, align 8
  %current_plug_in = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %15, i32 0, i32 11
  %16 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %current_plug_in, align 8
  %tobool14 = icmp ne %struct._GimpPlugIn* %16, null
  br i1 %tobool14, label %if.then.15, label %if.end

if.then.15:                                       ; preds = %if.then.12
  %17 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %plug_in_manager16 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %17, i32 0, i32 25
  %18 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %plug_in_manager16, align 8
  %current_plug_in17 = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %18, i32 0, i32 11
  %19 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %current_plug_in17, align 8
  %call18 = call i8* @gimp_plug_in_get_undo_desc(%struct._GimpPlugIn* %19)
  store i8* %call18, i8** %undo_desc, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.15, %if.then.12
  %20 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %21 = load i32, i32* %undo, align 4
  %22 = load i8*, i8** %undo_desc, align 8
  call void @gimp_drawable_merge_shadow_tiles(%struct._GimpDrawable* %20, i32 %21, i8* %22)
  br label %if.end.19

if.else:                                          ; preds = %land.lhs.true, %if.then
  store i32 0, i32* %success, align 4
  br label %if.end.19

if.end.19:                                        ; preds = %if.else, %if.end
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.19, %entry
  %23 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %24 = load i32, i32* %success, align 4
  %25 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool21 = icmp ne %struct._GError** %25, null
  br i1 %tobool21, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.20
  %26 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %27 = load %struct._GError*, %struct._GError** %26, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.20
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %27, %cond.true ], [ null, %cond.false ]
  %call22 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %23, i32 %24, %struct._GError* %cond)
  ret %struct._GValueArray* %call22
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @drawable_free_shadow_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
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
  %call = call %struct._GimpDrawable* @gimp_value_get_drawable(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpDrawable* %call, %struct._GimpDrawable** %drawable, align 8
  %3 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end.6

if.then:                                          ; preds = %entry
  %4 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %plug_in_manager = getelementptr inbounds %struct._Gimp, %struct._Gimp* %4, i32 0, i32 25
  %5 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %plug_in_manager, align 8
  %current_plug_in = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %5, i32 0, i32 11
  %6 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %current_plug_in, align 8
  %tobool1 = icmp ne %struct._GimpPlugIn* %6, null
  br i1 %tobool1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %7 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %plug_in_manager3 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %7, i32 0, i32 25
  %8 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %plug_in_manager3, align 8
  %current_plug_in4 = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %8, i32 0, i32 11
  %9 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %current_plug_in4, align 8
  %10 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call5 = call i32 @gimp_plug_in_cleanup_remove_shadow(%struct._GimpPlugIn* %9, %struct._GimpDrawable* %10)
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  %11 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_free_shadow_tiles(%struct._GimpDrawable* %11)
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %entry
  %12 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %13 = load i32, i32* %success, align 4
  %14 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool7 = icmp ne %struct._GError** %14, null
  br i1 %tobool7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.6
  %15 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %16 = load %struct._GError*, %struct._GError** %15, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %16, %cond.true ], [ null, %cond.false ]
  %call8 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %12, i32 %13, %struct._GError* %cond)
  ret %struct._GValueArray* %call8
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @drawable_update_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %drawable = alloca %struct._GimpDrawable*, align 8
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
  %call3 = call i32 @g_value_get_int(%struct._GValue* %arrayidx2)
  store i32 %call3, i32* %x, align 4
  %5 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values4 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %5, i32 0, i32 1
  %6 = load %struct._GValue*, %struct._GValue** %values4, align 8
  %arrayidx5 = getelementptr inbounds %struct._GValue, %struct._GValue* %6, i64 2
  %call6 = call i32 @g_value_get_int(%struct._GValue* %arrayidx5)
  store i32 %call6, i32* %y, align 4
  %7 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values7 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %7, i32 0, i32 1
  %8 = load %struct._GValue*, %struct._GValue** %values7, align 8
  %arrayidx8 = getelementptr inbounds %struct._GValue, %struct._GValue* %8, i64 3
  %call9 = call i32 @g_value_get_int(%struct._GValue* %arrayidx8)
  store i32 %call9, i32* %width, align 4
  %9 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values10 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %9, i32 0, i32 1
  %10 = load %struct._GValue*, %struct._GValue** %values10, align 8
  %arrayidx11 = getelementptr inbounds %struct._GValue, %struct._GValue* %10, i64 4
  %call12 = call i32 @g_value_get_int(%struct._GValue* %arrayidx11)
  store i32 %call12, i32* %height, align 4
  %11 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %12 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %13 = load i32, i32* %x, align 4
  %14 = load i32, i32* %y, align 4
  %15 = load i32, i32* %width, align 4
  %16 = load i32, i32* %height, align 4
  call void @gimp_drawable_update(%struct._GimpDrawable* %12, i32 %13, i32 %14, i32 %15, i32 %16)
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
  ret %struct._GValueArray* %call14
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @drawable_get_pixel_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  %x_coord = alloca i32, align 4
  %y_coord = alloca i32, align 4
  %num_channels = alloca i32, align 4
  %pixel = alloca i8*, align 8
  %tile = alloca %struct._Tile*, align 8
  %p = alloca i8*, align 8
  %b = alloca i32, align 4
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store i32 0, i32* %num_channels, align 4
  store i8* null, i8** %pixel, align 8
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
  store i32 %call3, i32* %x_coord, align 4
  %5 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values4 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %5, i32 0, i32 1
  %6 = load %struct._GValue*, %struct._GValue** %values4, align 8
  %arrayidx5 = getelementptr inbounds %struct._GValue, %struct._GValue* %6, i64 2
  %call6 = call i32 @g_value_get_int(%struct._GValue* %arrayidx5)
  store i32 %call6, i32* %y_coord, align 4
  %7 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then, label %if.end.26

if.then:                                          ; preds = %entry
  %8 = load i32, i32* %x_coord, align 4
  %9 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %10 = bitcast %struct._GimpDrawable* %9 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_item_get_type() #4
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call7)
  %11 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpItem*
  %call9 = call i32 @gimp_item_get_width(%struct._GimpItem* %11)
  %cmp = icmp slt i32 %8, %call9
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %12 = load i32, i32* %y_coord, align 4
  %13 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %14 = bitcast %struct._GimpDrawable* %13 to %struct._GTypeInstance*
  %call10 = call i64 @gimp_item_get_type() #4
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call10)
  %15 = bitcast %struct._GTypeInstance* %call11 to %struct._GimpItem*
  %call12 = call i32 @gimp_item_get_height(%struct._GimpItem* %15)
  %cmp13 = icmp slt i32 %12, %call12
  br i1 %cmp13, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %land.lhs.true
  %16 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call15 = call i32 @gimp_drawable_bytes(%struct._GimpDrawable* %16)
  store i32 %call15, i32* %num_channels, align 4
  %17 = load i32, i32* %num_channels, align 4
  %conv = sext i32 %17 to i64
  %call16 = call noalias i8* @g_malloc_n(i64 %conv, i64 1)
  store i8* %call16, i8** %pixel, align 8
  %18 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call17 = call %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable* %18)
  %19 = load i32, i32* %x_coord, align 4
  %20 = load i32, i32* %y_coord, align 4
  %call18 = call %struct._Tile* @tile_manager_get_tile(%struct._TileManager* %call17, i32 %19, i32 %20, i32 1, i32 1)
  store %struct._Tile* %call18, %struct._Tile** %tile, align 8
  %21 = load i32, i32* %x_coord, align 4
  %rem = srem i32 %21, 64
  store i32 %rem, i32* %x_coord, align 4
  %22 = load i32, i32* %y_coord, align 4
  %rem19 = srem i32 %22, 64
  store i32 %rem19, i32* %y_coord, align 4
  %23 = load %struct._Tile*, %struct._Tile** %tile, align 8
  %24 = load i32, i32* %x_coord, align 4
  %25 = load i32, i32* %y_coord, align 4
  %call20 = call i8* @tile_data_pointer(%struct._Tile* %23, i32 %24, i32 %25)
  store i8* %call20, i8** %p, align 8
  store i32 0, i32* %b, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.14
  %26 = load i32, i32* %b, align 4
  %27 = load i32, i32* %num_channels, align 4
  %cmp21 = icmp slt i32 %26, %27
  br i1 %cmp21, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %28 = load i32, i32* %b, align 4
  %idxprom = sext i32 %28 to i64
  %29 = load i8*, i8** %p, align 8
  %arrayidx23 = getelementptr inbounds i8, i8* %29, i64 %idxprom
  %30 = load i8, i8* %arrayidx23, align 1
  %31 = load i32, i32* %b, align 4
  %idxprom24 = sext i32 %31 to i64
  %32 = load i8*, i8** %pixel, align 8
  %arrayidx25 = getelementptr inbounds i8, i8* %32, i64 %idxprom24
  store i8 %30, i8* %arrayidx25, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %33 = load i32, i32* %b, align 4
  %inc = add nsw i32 %33, 1
  store i32 %inc, i32* %b, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %34 = load %struct._Tile*, %struct._Tile** %tile, align 8
  call void @tile_release(%struct._Tile* %34, i32 0)
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  br label %if.end.26

if.end.26:                                        ; preds = %if.end, %entry
  %35 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %36 = load i32, i32* %success, align 4
  %37 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool27 = icmp ne %struct._GError** %37, null
  br i1 %tobool27, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.26
  %38 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %39 = load %struct._GError*, %struct._GError** %38, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.26
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %39, %cond.true ], [ null, %cond.false ]
  %call28 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %35, i32 %36, %struct._GError* %cond)
  store %struct._GValueArray* %call28, %struct._GValueArray** %return_vals, align 8
  %40 = load i32, i32* %success, align 4
  %tobool29 = icmp ne i32 %40, 0
  br i1 %tobool29, label %if.then.30, label %if.end.36

if.then.30:                                       ; preds = %cond.end
  %41 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values31 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %41, i32 0, i32 1
  %42 = load %struct._GValue*, %struct._GValue** %values31, align 8
  %arrayidx32 = getelementptr inbounds %struct._GValue, %struct._GValue* %42, i64 1
  %43 = load i32, i32* %num_channels, align 4
  call void @g_value_set_int(%struct._GValue* %arrayidx32, i32 %43)
  %44 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values33 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %44, i32 0, i32 1
  %45 = load %struct._GValue*, %struct._GValue** %values33, align 8
  %arrayidx34 = getelementptr inbounds %struct._GValue, %struct._GValue* %45, i64 2
  %46 = load i8*, i8** %pixel, align 8
  %47 = load i32, i32* %num_channels, align 4
  %conv35 = sext i32 %47 to i64
  call void @gimp_value_take_int8array(%struct._GValue* %arrayidx34, i8* %46, i64 %conv35)
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.30, %cond.end
  %48 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %48
}

declare %struct._GParamSpec* @gimp_param_spec_int8_array(i8*, i8*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @drawable_set_pixel_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %drawable = alloca %struct._GimpDrawable*, align 8
  %x_coord = alloca i32, align 4
  %y_coord = alloca i32, align 4
  %num_channels = alloca i32, align 4
  %pixel = alloca i8*, align 8
  %tile = alloca %struct._Tile*, align 8
  %p = alloca i8*, align 8
  %b = alloca i32, align 4
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
  %call3 = call i32 @g_value_get_int(%struct._GValue* %arrayidx2)
  store i32 %call3, i32* %x_coord, align 4
  %5 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values4 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %5, i32 0, i32 1
  %6 = load %struct._GValue*, %struct._GValue** %values4, align 8
  %arrayidx5 = getelementptr inbounds %struct._GValue, %struct._GValue* %6, i64 2
  %call6 = call i32 @g_value_get_int(%struct._GValue* %arrayidx5)
  store i32 %call6, i32* %y_coord, align 4
  %7 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values7 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %7, i32 0, i32 1
  %8 = load %struct._GValue*, %struct._GValue** %values7, align 8
  %arrayidx8 = getelementptr inbounds %struct._GValue, %struct._GValue* %8, i64 3
  %call9 = call i32 @g_value_get_int(%struct._GValue* %arrayidx8)
  store i32 %call9, i32* %num_channels, align 4
  %9 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values10 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %9, i32 0, i32 1
  %10 = load %struct._GValue*, %struct._GValue** %values10, align 8
  %arrayidx11 = getelementptr inbounds %struct._GValue, %struct._GValue* %10, i64 4
  %call12 = call i8* @gimp_value_get_int8array(%struct._GValue* %arrayidx11)
  store i8* %call12, i8** %pixel, align 8
  %11 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %if.then, label %if.end.40

if.then:                                          ; preds = %entry
  %12 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %13 = bitcast %struct._GimpDrawable* %12 to %struct._GTypeInstance*
  %call13 = call i64 @gimp_item_get_type() #4
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call13)
  %14 = bitcast %struct._GTypeInstance* %call14 to %struct._GimpItem*
  %15 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call15 = call i32 @gimp_pdb_item_is_writable(%struct._GimpItem* %14, %struct._GError** %15)
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %16 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %17 = bitcast %struct._GimpDrawable* %16 to %struct._GTypeInstance*
  %call17 = call i64 @gimp_item_get_type() #4
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call17)
  %18 = bitcast %struct._GTypeInstance* %call18 to %struct._GimpItem*
  %19 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call19 = call i32 @gimp_pdb_item_is_not_group(%struct._GimpItem* %18, %struct._GError** %19)
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %land.lhs.true.21, label %if.else

land.lhs.true.21:                                 ; preds = %land.lhs.true
  %20 = load i32, i32* %x_coord, align 4
  %21 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %22 = bitcast %struct._GimpDrawable* %21 to %struct._GTypeInstance*
  %call22 = call i64 @gimp_item_get_type() #4
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call22)
  %23 = bitcast %struct._GTypeInstance* %call23 to %struct._GimpItem*
  %call24 = call i32 @gimp_item_get_width(%struct._GimpItem* %23)
  %cmp = icmp slt i32 %20, %call24
  br i1 %cmp, label %land.lhs.true.25, label %if.else

land.lhs.true.25:                                 ; preds = %land.lhs.true.21
  %24 = load i32, i32* %y_coord, align 4
  %25 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %26 = bitcast %struct._GimpDrawable* %25 to %struct._GTypeInstance*
  %call26 = call i64 @gimp_item_get_type() #4
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %26, i64 %call26)
  %27 = bitcast %struct._GTypeInstance* %call27 to %struct._GimpItem*
  %call28 = call i32 @gimp_item_get_height(%struct._GimpItem* %27)
  %cmp29 = icmp slt i32 %24, %call28
  br i1 %cmp29, label %land.lhs.true.30, label %if.else

land.lhs.true.30:                                 ; preds = %land.lhs.true.25
  %28 = load i32, i32* %num_channels, align 4
  %29 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call31 = call i32 @gimp_drawable_bytes(%struct._GimpDrawable* %29)
  %cmp32 = icmp eq i32 %28, %call31
  br i1 %cmp32, label %if.then.33, label %if.else

if.then.33:                                       ; preds = %land.lhs.true.30
  %30 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call34 = call %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable* %30)
  %31 = load i32, i32* %x_coord, align 4
  %32 = load i32, i32* %y_coord, align 4
  %call35 = call %struct._Tile* @tile_manager_get_tile(%struct._TileManager* %call34, i32 %31, i32 %32, i32 1, i32 1)
  store %struct._Tile* %call35, %struct._Tile** %tile, align 8
  %33 = load i32, i32* %x_coord, align 4
  %rem = srem i32 %33, 64
  store i32 %rem, i32* %x_coord, align 4
  %34 = load i32, i32* %y_coord, align 4
  %rem36 = srem i32 %34, 64
  store i32 %rem36, i32* %y_coord, align 4
  %35 = load %struct._Tile*, %struct._Tile** %tile, align 8
  %36 = load i32, i32* %x_coord, align 4
  %37 = load i32, i32* %y_coord, align 4
  %call37 = call i8* @tile_data_pointer(%struct._Tile* %35, i32 %36, i32 %37)
  store i8* %call37, i8** %p, align 8
  store i32 0, i32* %b, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.33
  %38 = load i32, i32* %b, align 4
  %39 = load i32, i32* %num_channels, align 4
  %cmp38 = icmp slt i32 %38, %39
  br i1 %cmp38, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %40 = load i8*, i8** %pixel, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %incdec.ptr, i8** %pixel, align 8
  %41 = load i8, i8* %40, align 1
  %42 = load i8*, i8** %p, align 8
  %incdec.ptr39 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %incdec.ptr39, i8** %p, align 8
  store i8 %41, i8* %42, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %43 = load i32, i32* %b, align 4
  %inc = add nsw i32 %43, 1
  store i32 %inc, i32* %b, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %44 = load %struct._Tile*, %struct._Tile** %tile, align 8
  call void @tile_release(%struct._Tile* %44, i32 1)
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.30, %land.lhs.true.25, %land.lhs.true.21, %land.lhs.true, %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  br label %if.end.40

if.end.40:                                        ; preds = %if.end, %entry
  %45 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %46 = load i32, i32* %success, align 4
  %47 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool41 = icmp ne %struct._GError** %47, null
  br i1 %tobool41, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.40
  %48 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %49 = load %struct._GError*, %struct._GError** %48, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.40
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %49, %cond.true ], [ null, %cond.false ]
  %call42 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %45, i32 %46, %struct._GError* %cond)
  ret %struct._GValueArray* %call42
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @drawable_fill_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %drawable = alloca %struct._GimpDrawable*, align 8
  %fill_type = alloca i32, align 4
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
  store i32 %call3, i32* %fill_type, align 4
  %5 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end.13

if.then:                                          ; preds = %entry
  %6 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %7 = bitcast %struct._GimpDrawable* %6 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_item_get_type() #4
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call4)
  %8 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpItem*
  %9 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call6 = call i32 @gimp_pdb_item_is_writable(%struct._GimpItem* %8, %struct._GError** %9)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %10 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %11 = bitcast %struct._GimpDrawable* %10 to %struct._GTypeInstance*
  %call8 = call i64 @gimp_item_get_type() #4
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call8)
  %12 = bitcast %struct._GTypeInstance* %call9 to %struct._GimpItem*
  %13 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call10 = call i32 @gimp_pdb_item_is_not_group(%struct._GimpItem* %12, %struct._GError** %13)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %land.lhs.true
  %14 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %15 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %16 = load i32, i32* %fill_type, align 4
  call void @gimp_drawable_fill_by_type(%struct._GimpDrawable* %14, %struct._GimpContext* %15, i32 %16)
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.12
  br label %if.end.13

if.end.13:                                        ; preds = %if.end, %entry
  %17 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %18 = load i32, i32* %success, align 4
  %19 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool14 = icmp ne %struct._GError** %19, null
  br i1 %tobool14, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.13
  %20 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %21 = load %struct._GError*, %struct._GError** %20, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.13
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %21, %cond.true ], [ null, %cond.false ]
  %call15 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %17, i32 %18, %struct._GError* %cond)
  ret %struct._GValueArray* %call15
}

; Function Attrs: nounwind readnone
declare i64 @gimp_fill_type_get_type() #2

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @drawable_offset_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %drawable = alloca %struct._GimpDrawable*, align 8
  %wrap_around = alloca i32, align 4
  %fill_type = alloca i32, align 4
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
  %call = call %struct._GimpDrawable* @gimp_value_get_drawable(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpDrawable* %call, %struct._GimpDrawable** %drawable, align 8
  %3 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %3, i32 0, i32 1
  %4 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %4, i64 1
  %call3 = call i32 @g_value_get_boolean(%struct._GValue* %arrayidx2)
  store i32 %call3, i32* %wrap_around, align 4
  %5 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values4 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %5, i32 0, i32 1
  %6 = load %struct._GValue*, %struct._GValue** %values4, align 8
  %arrayidx5 = getelementptr inbounds %struct._GValue, %struct._GValue* %6, i64 2
  %call6 = call i32 @g_value_get_enum(%struct._GValue* %arrayidx5)
  store i32 %call6, i32* %fill_type, align 4
  %7 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values7 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %7, i32 0, i32 1
  %8 = load %struct._GValue*, %struct._GValue** %values7, align 8
  %arrayidx8 = getelementptr inbounds %struct._GValue, %struct._GValue* %8, i64 3
  %call9 = call i32 @g_value_get_int(%struct._GValue* %arrayidx8)
  store i32 %call9, i32* %offset_x, align 4
  %9 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values10 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %9, i32 0, i32 1
  %10 = load %struct._GValue*, %struct._GValue** %values10, align 8
  %arrayidx11 = getelementptr inbounds %struct._GValue, %struct._GValue* %10, i64 4
  %call12 = call i32 @g_value_get_int(%struct._GValue* %arrayidx11)
  store i32 %call12, i32* %offset_y, align 4
  %11 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %if.then, label %if.end.22

if.then:                                          ; preds = %entry
  %12 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %13 = bitcast %struct._GimpDrawable* %12 to %struct._GTypeInstance*
  %call13 = call i64 @gimp_item_get_type() #4
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call13)
  %14 = bitcast %struct._GTypeInstance* %call14 to %struct._GimpItem*
  %15 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call15 = call i32 @gimp_pdb_item_is_attached(%struct._GimpItem* %14, %struct._GimpImage* null, i32 1, %struct._GError** %15)
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %16 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %17 = bitcast %struct._GimpDrawable* %16 to %struct._GTypeInstance*
  %call17 = call i64 @gimp_item_get_type() #4
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call17)
  %18 = bitcast %struct._GTypeInstance* %call18 to %struct._GimpItem*
  %19 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call19 = call i32 @gimp_pdb_item_is_not_group(%struct._GimpItem* %18, %struct._GError** %19)
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %if.then.21, label %if.else

if.then.21:                                       ; preds = %land.lhs.true
  %20 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %21 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %22 = load i32, i32* %wrap_around, align 4
  %23 = load i32, i32* %fill_type, align 4
  %24 = load i32, i32* %offset_x, align 4
  %25 = load i32, i32* %offset_y, align 4
  call void @gimp_drawable_offset(%struct._GimpDrawable* %20, %struct._GimpContext* %21, i32 %22, i32 %23, i32 %24, i32 %25)
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.21
  br label %if.end.22

if.end.22:                                        ; preds = %if.end, %entry
  %26 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %27 = load i32, i32* %success, align 4
  %28 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool23 = icmp ne %struct._GError** %28, null
  br i1 %tobool23, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.22
  %29 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %30 = load %struct._GError*, %struct._GError** %29, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.22
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %30, %cond.true ], [ null, %cond.false ]
  %call24 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %26, i32 %27, %struct._GError* %cond)
  ret %struct._GValueArray* %call24
}

; Function Attrs: nounwind readnone
declare i64 @gimp_offset_type_get_type() #2

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @drawable_thumbnail_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %actual_width = alloca i32, align 4
  %actual_height = alloca i32, align 4
  %bpp = alloca i32, align 4
  %thumbnail_data_count = alloca i32, align 4
  %thumbnail_data = alloca i8*, align 8
  %image = alloca %struct._GimpImage*, align 8
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
  %call = call %struct._GimpDrawable* @gimp_value_get_drawable(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpDrawable* %call, %struct._GimpDrawable** %drawable, align 8
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
  br i1 %tobool, label %if.then, label %if.end.53

if.then:                                          ; preds = %entry
  %8 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %9 = bitcast %struct._GimpDrawable* %8 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_item_get_type() #4
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call7)
  %10 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpItem*
  %call9 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %10)
  store %struct._GimpImage* %call9, %struct._GimpImage** %image, align 8
  br label %do.body

do.body:                                          ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %do.body
  %11 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %12 = bitcast %struct._GimpDrawable* %11 to %struct._GTypeInstance*
  %call10 = call i64 @gimp_item_get_type() #4
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call10)
  %13 = bitcast %struct._GTypeInstance* %call11 to %struct._GimpItem*
  %call12 = call i32 @gimp_item_get_width(%struct._GimpItem* %13)
  store i32 %call12, i32* %dwidth, align 4
  %14 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %15 = bitcast %struct._GimpDrawable* %14 to %struct._GTypeInstance*
  %call13 = call i64 @gimp_item_get_type() #4
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call13)
  %16 = bitcast %struct._GTypeInstance* %call14 to %struct._GimpItem*
  %call15 = call i32 @gimp_item_get_height(%struct._GimpItem* %16)
  store i32 %call15, i32* %dheight, align 4
  %17 = load i32, i32* %dwidth, align 4
  %18 = load i32, i32* %dheight, align 4
  %cmp = icmp sgt i32 %17, %18
  br i1 %cmp, label %if.then.16, label %if.else

if.then.16:                                       ; preds = %do.end
  %19 = load i32, i32* %width, align 4
  %20 = load i32, i32* %dheight, align 4
  %mul = mul nsw i32 %19, %20
  %21 = load i32, i32* %dwidth, align 4
  %div = sdiv i32 %mul, %21
  %cmp17 = icmp sgt i32 1, %div
  br i1 %cmp17, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.16
  br label %cond.end

cond.false:                                       ; preds = %if.then.16
  %22 = load i32, i32* %width, align 4
  %23 = load i32, i32* %dheight, align 4
  %mul18 = mul nsw i32 %22, %23
  %24 = load i32, i32* %dwidth, align 4
  %div19 = sdiv i32 %mul18, %24
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 1, %cond.true ], [ %div19, %cond.false ]
  store i32 %cond, i32* %height, align 4
  br label %if.end

if.else:                                          ; preds = %do.end
  %25 = load i32, i32* %height, align 4
  %26 = load i32, i32* %dwidth, align 4
  %mul20 = mul nsw i32 %25, %26
  %27 = load i32, i32* %dheight, align 4
  %div21 = sdiv i32 %mul20, %27
  %cmp22 = icmp sgt i32 1, %div21
  br i1 %cmp22, label %cond.true.23, label %cond.false.24

cond.true.23:                                     ; preds = %if.else
  br label %cond.end.27

cond.false.24:                                    ; preds = %if.else
  %28 = load i32, i32* %height, align 4
  %29 = load i32, i32* %dwidth, align 4
  %mul25 = mul nsw i32 %28, %29
  %30 = load i32, i32* %dheight, align 4
  %div26 = sdiv i32 %mul25, %30
  br label %cond.end.27

cond.end.27:                                      ; preds = %cond.false.24, %cond.true.23
  %cond28 = phi i32 [ 1, %cond.true.23 ], [ %div26, %cond.false.24 ]
  store i32 %cond28, i32* %width, align 4
  br label %if.end

if.end:                                           ; preds = %cond.end.27, %cond.end
  %31 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %gimp29 = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %31, i32 0, i32 1
  %32 = load %struct._Gimp*, %struct._Gimp** %gimp29, align 8
  %config = getelementptr inbounds %struct._Gimp, %struct._Gimp* %32, i32 0, i32 1
  %33 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config, align 8
  %layer_previews = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %33, i32 0, i32 42
  %34 = load i32, i32* %layer_previews, align 4
  %tobool30 = icmp ne i32 %34, 0
  br i1 %tobool30, label %if.then.31, label %if.else.35

if.then.31:                                       ; preds = %if.end
  %35 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %36 = bitcast %struct._GimpDrawable* %35 to %struct._GTypeInstance*
  %call32 = call i64 @gimp_viewable_get_type() #4
  %call33 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %36, i64 %call32)
  %37 = bitcast %struct._GTypeInstance* %call33 to %struct._GimpViewable*
  %38 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %39 = load i32, i32* %width, align 4
  %40 = load i32, i32* %height, align 4
  %call34 = call %struct._TempBuf* @gimp_viewable_get_new_preview(%struct._GimpViewable* %37, %struct._GimpContext* %38, i32 %39, i32 %40)
  store %struct._TempBuf* %call34, %struct._TempBuf** %buf, align 8
  br label %if.end.42

if.else.35:                                       ; preds = %if.end
  %41 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %42 = bitcast %struct._GimpDrawable* %41 to %struct._GTypeInstance*
  %call36 = call i64 @gimp_viewable_get_type() #4
  %call37 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %42, i64 %call36)
  %43 = bitcast %struct._GTypeInstance* %call37 to %struct._GimpViewable*
  %44 = load i32, i32* %width, align 4
  %45 = load i32, i32* %height, align 4
  %46 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call38 = call i32 @gimp_drawable_has_alpha(%struct._GimpDrawable* %46)
  %tobool39 = icmp ne i32 %call38, 0
  %cond40 = select i1 %tobool39, i32 4, i32 3
  %call41 = call %struct._TempBuf* @gimp_viewable_get_dummy_preview(%struct._GimpViewable* %43, i32 %44, i32 %45, i32 %cond40)
  store %struct._TempBuf* %call41, %struct._TempBuf** %buf, align 8
  br label %if.end.42

if.end.42:                                        ; preds = %if.else.35, %if.then.31
  %47 = load %struct._TempBuf*, %struct._TempBuf** %buf, align 8
  %tobool43 = icmp ne %struct._TempBuf* %47, null
  br i1 %tobool43, label %if.then.44, label %if.else.51

if.then.44:                                       ; preds = %if.end.42
  %48 = load %struct._TempBuf*, %struct._TempBuf** %buf, align 8
  %width45 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %48, i32 0, i32 1
  %49 = load i32, i32* %width45, align 4
  store i32 %49, i32* %actual_width, align 4
  %50 = load %struct._TempBuf*, %struct._TempBuf** %buf, align 8
  %height46 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %50, i32 0, i32 2
  %51 = load i32, i32* %height46, align 4
  store i32 %51, i32* %actual_height, align 4
  %52 = load %struct._TempBuf*, %struct._TempBuf** %buf, align 8
  %bytes = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %52, i32 0, i32 0
  %53 = load i32, i32* %bytes, align 4
  store i32 %53, i32* %bpp, align 4
  %54 = load i32, i32* %actual_width, align 4
  %55 = load i32, i32* %actual_height, align 4
  %mul47 = mul nsw i32 %54, %55
  %56 = load i32, i32* %bpp, align 4
  %mul48 = mul nsw i32 %mul47, %56
  store i32 %mul48, i32* %thumbnail_data_count, align 4
  %57 = load %struct._TempBuf*, %struct._TempBuf** %buf, align 8
  %call49 = call i8* @temp_buf_get_data(%struct._TempBuf* %57)
  %58 = load i32, i32* %thumbnail_data_count, align 4
  %call50 = call noalias i8* @g_memdup(i8* %call49, i32 %58)
  store i8* %call50, i8** %thumbnail_data, align 8
  %59 = load %struct._TempBuf*, %struct._TempBuf** %buf, align 8
  call void @temp_buf_free(%struct._TempBuf* %59)
  br label %if.end.52

if.else.51:                                       ; preds = %if.end.42
  store i32 0, i32* %success, align 4
  br label %if.end.52

if.end.52:                                        ; preds = %if.else.51, %if.then.44
  br label %if.end.53

if.end.53:                                        ; preds = %if.end.52, %entry
  %60 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %61 = load i32, i32* %success, align 4
  %62 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool54 = icmp ne %struct._GError** %62, null
  br i1 %tobool54, label %cond.true.55, label %cond.false.56

cond.true.55:                                     ; preds = %if.end.53
  %63 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %64 = load %struct._GError*, %struct._GError** %63, align 8
  br label %cond.end.57

cond.false.56:                                    ; preds = %if.end.53
  br label %cond.end.57

cond.end.57:                                      ; preds = %cond.false.56, %cond.true.55
  %cond58 = phi %struct._GError* [ %64, %cond.true.55 ], [ null, %cond.false.56 ]
  %call59 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %60, i32 %61, %struct._GError* %cond58)
  store %struct._GValueArray* %call59, %struct._GValueArray** %return_vals, align 8
  %65 = load i32, i32* %success, align 4
  %tobool60 = icmp ne i32 %65, 0
  br i1 %tobool60, label %if.then.61, label %if.end.72

if.then.61:                                       ; preds = %cond.end.57
  %66 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values62 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %66, i32 0, i32 1
  %67 = load %struct._GValue*, %struct._GValue** %values62, align 8
  %arrayidx63 = getelementptr inbounds %struct._GValue, %struct._GValue* %67, i64 1
  %68 = load i32, i32* %actual_width, align 4
  call void @g_value_set_int(%struct._GValue* %arrayidx63, i32 %68)
  %69 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values64 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %69, i32 0, i32 1
  %70 = load %struct._GValue*, %struct._GValue** %values64, align 8
  %arrayidx65 = getelementptr inbounds %struct._GValue, %struct._GValue* %70, i64 2
  %71 = load i32, i32* %actual_height, align 4
  call void @g_value_set_int(%struct._GValue* %arrayidx65, i32 %71)
  %72 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values66 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %72, i32 0, i32 1
  %73 = load %struct._GValue*, %struct._GValue** %values66, align 8
  %arrayidx67 = getelementptr inbounds %struct._GValue, %struct._GValue* %73, i64 3
  %74 = load i32, i32* %bpp, align 4
  call void @g_value_set_int(%struct._GValue* %arrayidx67, i32 %74)
  %75 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values68 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %75, i32 0, i32 1
  %76 = load %struct._GValue*, %struct._GValue** %values68, align 8
  %arrayidx69 = getelementptr inbounds %struct._GValue, %struct._GValue* %76, i64 4
  %77 = load i32, i32* %thumbnail_data_count, align 4
  call void @g_value_set_int(%struct._GValue* %arrayidx69, i32 %77)
  %78 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values70 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %78, i32 0, i32 1
  %79 = load %struct._GValue*, %struct._GValue** %values70, align 8
  %arrayidx71 = getelementptr inbounds %struct._GValue, %struct._GValue* %79, i64 5
  %80 = load i8*, i8** %thumbnail_data, align 8
  %81 = load i32, i32* %thumbnail_data_count, align 4
  %conv = sext i32 %81 to i64
  call void @gimp_value_take_int8array(%struct._GValue* %arrayidx71, i8* %80, i64 %conv)
  br label %if.end.72

if.end.72:                                        ; preds = %if.then.61, %cond.end.57
  %82 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %82
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @drawable_sub_thumbnail_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  %src_x = alloca i32, align 4
  %src_y = alloca i32, align 4
  %src_width = alloca i32, align 4
  %src_height = alloca i32, align 4
  %dest_width = alloca i32, align 4
  %dest_height = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %bpp = alloca i32, align 4
  %thumbnail_data_count = alloca i32, align 4
  %thumbnail_data = alloca i8*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %buf = alloca %struct._TempBuf*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store i32 0, i32* %width, align 4
  store i32 0, i32* %height, align 4
  store i32 0, i32* %bpp, align 4
  store i32 0, i32* %thumbnail_data_count, align 4
  store i8* null, i8** %thumbnail_data, align 8
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
  store i32 %call3, i32* %src_x, align 4
  %5 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values4 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %5, i32 0, i32 1
  %6 = load %struct._GValue*, %struct._GValue** %values4, align 8
  %arrayidx5 = getelementptr inbounds %struct._GValue, %struct._GValue* %6, i64 2
  %call6 = call i32 @g_value_get_int(%struct._GValue* %arrayidx5)
  store i32 %call6, i32* %src_y, align 4
  %7 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values7 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %7, i32 0, i32 1
  %8 = load %struct._GValue*, %struct._GValue** %values7, align 8
  %arrayidx8 = getelementptr inbounds %struct._GValue, %struct._GValue* %8, i64 3
  %call9 = call i32 @g_value_get_int(%struct._GValue* %arrayidx8)
  store i32 %call9, i32* %src_width, align 4
  %9 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values10 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %9, i32 0, i32 1
  %10 = load %struct._GValue*, %struct._GValue** %values10, align 8
  %arrayidx11 = getelementptr inbounds %struct._GValue, %struct._GValue* %10, i64 4
  %call12 = call i32 @g_value_get_int(%struct._GValue* %arrayidx11)
  store i32 %call12, i32* %src_height, align 4
  %11 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values13 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %11, i32 0, i32 1
  %12 = load %struct._GValue*, %struct._GValue** %values13, align 8
  %arrayidx14 = getelementptr inbounds %struct._GValue, %struct._GValue* %12, i64 5
  %call15 = call i32 @g_value_get_int(%struct._GValue* %arrayidx14)
  store i32 %call15, i32* %dest_width, align 4
  %13 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values16 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %13, i32 0, i32 1
  %14 = load %struct._GValue*, %struct._GValue** %values16, align 8
  %arrayidx17 = getelementptr inbounds %struct._GValue, %struct._GValue* %14, i64 6
  %call18 = call i32 @g_value_get_int(%struct._GValue* %arrayidx17)
  store i32 %call18, i32* %dest_height, align 4
  %15 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %15, 0
  br i1 %tobool, label %if.then, label %if.end.54

if.then:                                          ; preds = %entry
  %16 = load i32, i32* %src_x, align 4
  %17 = load i32, i32* %src_width, align 4
  %add = add nsw i32 %16, %17
  %18 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %19 = bitcast %struct._GimpDrawable* %18 to %struct._GTypeInstance*
  %call19 = call i64 @gimp_item_get_type() #4
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call19)
  %20 = bitcast %struct._GTypeInstance* %call20 to %struct._GimpItem*
  %call21 = call i32 @gimp_item_get_width(%struct._GimpItem* %20)
  %cmp = icmp sle i32 %add, %call21
  br i1 %cmp, label %land.lhs.true, label %if.else.52

land.lhs.true:                                    ; preds = %if.then
  %21 = load i32, i32* %src_y, align 4
  %22 = load i32, i32* %src_height, align 4
  %add22 = add nsw i32 %21, %22
  %23 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %24 = bitcast %struct._GimpDrawable* %23 to %struct._GTypeInstance*
  %call23 = call i64 @gimp_item_get_type() #4
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call23)
  %25 = bitcast %struct._GTypeInstance* %call24 to %struct._GimpItem*
  %call25 = call i32 @gimp_item_get_height(%struct._GimpItem* %25)
  %cmp26 = icmp sle i32 %add22, %call25
  br i1 %cmp26, label %if.then.27, label %if.else.52

if.then.27:                                       ; preds = %land.lhs.true
  %26 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %27 = bitcast %struct._GimpDrawable* %26 to %struct._GTypeInstance*
  %call28 = call i64 @gimp_item_get_type() #4
  %call29 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call28)
  %28 = bitcast %struct._GTypeInstance* %call29 to %struct._GimpItem*
  %call30 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %28)
  store %struct._GimpImage* %call30, %struct._GimpImage** %image, align 8
  %29 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %gimp31 = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %29, i32 0, i32 1
  %30 = load %struct._Gimp*, %struct._Gimp** %gimp31, align 8
  %config = getelementptr inbounds %struct._Gimp, %struct._Gimp* %30, i32 0, i32 1
  %31 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config, align 8
  %layer_previews = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %31, i32 0, i32 42
  %32 = load i32, i32* %layer_previews, align 4
  %tobool32 = icmp ne i32 %32, 0
  br i1 %tobool32, label %if.then.33, label %if.else

if.then.33:                                       ; preds = %if.then.27
  %33 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %34 = load i32, i32* %src_x, align 4
  %35 = load i32, i32* %src_y, align 4
  %36 = load i32, i32* %src_width, align 4
  %37 = load i32, i32* %src_height, align 4
  %38 = load i32, i32* %dest_width, align 4
  %39 = load i32, i32* %dest_height, align 4
  %call34 = call %struct._TempBuf* @gimp_drawable_get_sub_preview(%struct._GimpDrawable* %33, i32 %34, i32 %35, i32 %36, i32 %37, i32 %38, i32 %39)
  store %struct._TempBuf* %call34, %struct._TempBuf** %buf, align 8
  br label %if.end

if.else:                                          ; preds = %if.then.27
  %40 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %41 = bitcast %struct._GimpDrawable* %40 to %struct._GTypeInstance*
  %call35 = call i64 @gimp_viewable_get_type() #4
  %call36 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %41, i64 %call35)
  %42 = bitcast %struct._GTypeInstance* %call36 to %struct._GimpViewable*
  %43 = load i32, i32* %dest_width, align 4
  %44 = load i32, i32* %dest_height, align 4
  %45 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call37 = call i32 @gimp_drawable_has_alpha(%struct._GimpDrawable* %45)
  %tobool38 = icmp ne i32 %call37, 0
  %cond = select i1 %tobool38, i32 4, i32 3
  %call39 = call %struct._TempBuf* @gimp_viewable_get_dummy_preview(%struct._GimpViewable* %42, i32 %43, i32 %44, i32 %cond)
  store %struct._TempBuf* %call39, %struct._TempBuf** %buf, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.33
  %46 = load %struct._TempBuf*, %struct._TempBuf** %buf, align 8
  %tobool40 = icmp ne %struct._TempBuf* %46, null
  br i1 %tobool40, label %if.then.41, label %if.else.50

if.then.41:                                       ; preds = %if.end
  %47 = load %struct._TempBuf*, %struct._TempBuf** %buf, align 8
  %width42 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %47, i32 0, i32 1
  %48 = load i32, i32* %width42, align 4
  store i32 %48, i32* %width, align 4
  %49 = load %struct._TempBuf*, %struct._TempBuf** %buf, align 8
  %height43 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %49, i32 0, i32 2
  %50 = load i32, i32* %height43, align 4
  store i32 %50, i32* %height, align 4
  %51 = load %struct._TempBuf*, %struct._TempBuf** %buf, align 8
  %bytes = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %51, i32 0, i32 0
  %52 = load i32, i32* %bytes, align 4
  store i32 %52, i32* %bpp, align 4
  %53 = load %struct._TempBuf*, %struct._TempBuf** %buf, align 8
  %height44 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %53, i32 0, i32 2
  %54 = load i32, i32* %height44, align 4
  %55 = load %struct._TempBuf*, %struct._TempBuf** %buf, align 8
  %width45 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %55, i32 0, i32 1
  %56 = load i32, i32* %width45, align 4
  %mul = mul nsw i32 %54, %56
  %57 = load %struct._TempBuf*, %struct._TempBuf** %buf, align 8
  %bytes46 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %57, i32 0, i32 0
  %58 = load i32, i32* %bytes46, align 4
  %mul47 = mul nsw i32 %mul, %58
  store i32 %mul47, i32* %thumbnail_data_count, align 4
  %59 = load %struct._TempBuf*, %struct._TempBuf** %buf, align 8
  %call48 = call i8* @temp_buf_get_data(%struct._TempBuf* %59)
  %60 = load i32, i32* %thumbnail_data_count, align 4
  %call49 = call noalias i8* @g_memdup(i8* %call48, i32 %60)
  store i8* %call49, i8** %thumbnail_data, align 8
  %61 = load %struct._TempBuf*, %struct._TempBuf** %buf, align 8
  call void @temp_buf_free(%struct._TempBuf* %61)
  br label %if.end.51

if.else.50:                                       ; preds = %if.end
  store i32 0, i32* %success, align 4
  br label %if.end.51

if.end.51:                                        ; preds = %if.else.50, %if.then.41
  br label %if.end.53

if.else.52:                                       ; preds = %land.lhs.true, %if.then
  store i32 0, i32* %success, align 4
  br label %if.end.53

if.end.53:                                        ; preds = %if.else.52, %if.end.51
  br label %if.end.54

if.end.54:                                        ; preds = %if.end.53, %entry
  %62 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %63 = load i32, i32* %success, align 4
  %64 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool55 = icmp ne %struct._GError** %64, null
  br i1 %tobool55, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.54
  %65 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %66 = load %struct._GError*, %struct._GError** %65, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.54
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond56 = phi %struct._GError* [ %66, %cond.true ], [ null, %cond.false ]
  %call57 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %62, i32 %63, %struct._GError* %cond56)
  store %struct._GValueArray* %call57, %struct._GValueArray** %return_vals, align 8
  %67 = load i32, i32* %success, align 4
  %tobool58 = icmp ne i32 %67, 0
  br i1 %tobool58, label %if.then.59, label %if.end.70

if.then.59:                                       ; preds = %cond.end
  %68 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values60 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %68, i32 0, i32 1
  %69 = load %struct._GValue*, %struct._GValue** %values60, align 8
  %arrayidx61 = getelementptr inbounds %struct._GValue, %struct._GValue* %69, i64 1
  %70 = load i32, i32* %width, align 4
  call void @g_value_set_int(%struct._GValue* %arrayidx61, i32 %70)
  %71 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values62 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %71, i32 0, i32 1
  %72 = load %struct._GValue*, %struct._GValue** %values62, align 8
  %arrayidx63 = getelementptr inbounds %struct._GValue, %struct._GValue* %72, i64 2
  %73 = load i32, i32* %height, align 4
  call void @g_value_set_int(%struct._GValue* %arrayidx63, i32 %73)
  %74 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values64 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %74, i32 0, i32 1
  %75 = load %struct._GValue*, %struct._GValue** %values64, align 8
  %arrayidx65 = getelementptr inbounds %struct._GValue, %struct._GValue* %75, i64 3
  %76 = load i32, i32* %bpp, align 4
  call void @g_value_set_int(%struct._GValue* %arrayidx65, i32 %76)
  %77 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values66 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %77, i32 0, i32 1
  %78 = load %struct._GValue*, %struct._GValue** %values66, align 8
  %arrayidx67 = getelementptr inbounds %struct._GValue, %struct._GValue* %78, i64 4
  %79 = load i32, i32* %thumbnail_data_count, align 4
  call void @g_value_set_int(%struct._GValue* %arrayidx67, i32 %79)
  %80 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values68 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %80, i32 0, i32 1
  %81 = load %struct._GValue*, %struct._GValue** %values68, align 8
  %arrayidx69 = getelementptr inbounds %struct._GValue, %struct._GValue* %81, i64 5
  %82 = load i8*, i8** %thumbnail_data, align 8
  %83 = load i32, i32* %thumbnail_data_count, align 4
  %conv = sext i32 %83 to i64
  call void @gimp_value_take_int8array(%struct._GValue* %arrayidx69, i8* %82, i64 %conv)
  br label %if.end.70

if.end.70:                                        ; preds = %if.then.59, %cond.end
  %84 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %84
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @drawable_foreground_extract_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %drawable = alloca %struct._GimpDrawable*, align 8
  %mode = alloca i32, align 4
  %mask = alloca %struct._GimpDrawable*, align 8
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
  store i32 %call3, i32* %mode, align 4
  %5 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values4 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %5, i32 0, i32 1
  %6 = load %struct._GValue*, %struct._GValue** %values4, align 8
  %arrayidx5 = getelementptr inbounds %struct._GValue, %struct._GValue* %6, i64 2
  %7 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call6 = call %struct._GimpDrawable* @gimp_value_get_drawable(%struct._GValue* %arrayidx5, %struct._Gimp* %7)
  store %struct._GimpDrawable* %call6, %struct._GimpDrawable** %mask, align 8
  %8 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then, label %if.end.12

if.then:                                          ; preds = %entry
  %9 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %10 = bitcast %struct._GimpDrawable* %9 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_item_get_type() #4
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call7)
  %11 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpItem*
  %12 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call9 = call i32 @gimp_pdb_item_is_attached(%struct._GimpItem* %11, %struct._GimpImage* null, i32 0, %struct._GError** %12)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %if.then
  %13 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %14 = load i32, i32* %mode, align 4
  %15 = load %struct._GimpDrawable*, %struct._GimpDrawable** %mask, align 8
  %16 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  call void @gimp_drawable_foreground_extract(%struct._GimpDrawable* %13, i32 %14, %struct._GimpDrawable* %15, %struct._GimpProgress* %16)
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.11
  br label %if.end.12

if.end.12:                                        ; preds = %if.end, %entry
  %17 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %18 = load i32, i32* %success, align 4
  %19 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool13 = icmp ne %struct._GError** %19, null
  br i1 %tobool13, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.12
  %20 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %21 = load %struct._GError*, %struct._GError** %20, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.12
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %21, %cond.true ], [ null, %cond.false ]
  %call14 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %17, i32 %18, %struct._GError* %cond)
  ret %struct._GValueArray* %call14
}

; Function Attrs: nounwind readnone
declare i64 @gimp_foreground_extract_mode_get_type() #2

declare %struct._GimpDrawable* @gimp_value_get_drawable(%struct._GValue*, %struct._Gimp*) #1

declare i32 @gimp_drawable_type(%struct._GimpDrawable*) #1

declare %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure*, i32, %struct._GError*) #1

declare void @g_value_set_enum(%struct._GValue*, i32) #1

declare i32 @gimp_drawable_type_with_alpha(%struct._GimpDrawable*) #1

declare i32 @gimp_drawable_has_alpha(%struct._GimpDrawable*) #1

declare void @g_value_set_boolean(%struct._GValue*, i32) #1

declare i32 @gimp_drawable_is_rgb(%struct._GimpDrawable*) #1

declare i32 @gimp_drawable_is_gray(%struct._GimpDrawable*) #1

declare i32 @gimp_drawable_is_indexed(%struct._GimpDrawable*) #1

declare i32 @gimp_drawable_bytes(%struct._GimpDrawable*) #1

declare void @g_value_set_int(%struct._GValue*, i32) #1

declare i32 @gimp_item_get_width(%struct._GimpItem*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_item_get_type() #2

declare i32 @gimp_item_get_height(%struct._GimpItem*) #1

declare void @gimp_item_get_offset(%struct._GimpItem*, i32*, i32*) #1

declare %struct._GimpImage* @gimp_value_get_image(%struct._GValue*, %struct._Gimp*) #1

declare %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem*) #1

declare i32 @gimp_pdb_item_is_attached(%struct._GimpItem*, %struct._GimpImage*, i32, %struct._GError**) #1

declare i32 @gimp_item_mask_bounds(%struct._GimpItem*, i32*, i32*, i32*, i32*) #1

declare i32 @gimp_item_mask_intersect(%struct._GimpItem*, i32*, i32*, i32*, i32*) #1

declare i32 @g_value_get_boolean(%struct._GValue*) #1

declare i32 @gimp_pdb_item_is_not_group(%struct._GimpItem*, %struct._GError**) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #3

declare i8* @gimp_plug_in_get_undo_desc(%struct._GimpPlugIn*) #1

declare void @gimp_drawable_merge_shadow_tiles(%struct._GimpDrawable*, i32, i8*) #1

declare i32 @gimp_plug_in_cleanup_remove_shadow(%struct._GimpPlugIn*, %struct._GimpDrawable*) #1

declare void @gimp_drawable_free_shadow_tiles(%struct._GimpDrawable*) #1

declare i32 @g_value_get_int(%struct._GValue*) #1

declare void @gimp_drawable_update(%struct._GimpDrawable*, i32, i32, i32, i32) #1

declare noalias i8* @g_malloc_n(i64, i64) #1

declare %struct._Tile* @tile_manager_get_tile(%struct._TileManager*, i32, i32, i32, i32) #1

declare %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable*) #1

declare i8* @tile_data_pointer(%struct._Tile*, i32, i32) #1

declare void @tile_release(%struct._Tile*, i32) #1

declare void @gimp_value_take_int8array(%struct._GValue*, i8*, i64) #1

declare i8* @gimp_value_get_int8array(%struct._GValue*) #1

declare i32 @gimp_pdb_item_is_writable(%struct._GimpItem*, %struct._GError**) #1

declare i32 @g_value_get_enum(%struct._GValue*) #1

declare void @gimp_drawable_fill_by_type(%struct._GimpDrawable*, %struct._GimpContext*, i32) #1

declare void @gimp_drawable_offset(%struct._GimpDrawable*, %struct._GimpContext*, i32, i32, i32, i32) #1

declare %struct._TempBuf* @gimp_viewable_get_new_preview(%struct._GimpViewable*, %struct._GimpContext*, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_viewable_get_type() #2

declare %struct._TempBuf* @gimp_viewable_get_dummy_preview(%struct._GimpViewable*, i32, i32, i32) #1

declare noalias i8* @g_memdup(i8*, i32) #1

declare i8* @temp_buf_get_data(%struct._TempBuf*) #1

declare void @temp_buf_free(%struct._TempBuf*) #1

declare %struct._TempBuf* @gimp_drawable_get_sub_preview(%struct._GimpDrawable*, i32, i32, i32, i32, i32, i32) #1

declare void @gimp_drawable_foreground_extract(%struct._GimpDrawable*, i32, %struct._GimpDrawable*, %struct._GimpProgress*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
