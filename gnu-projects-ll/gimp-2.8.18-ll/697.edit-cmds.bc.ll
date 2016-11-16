; ModuleID = './app/pdb/edit-cmds.bc'
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
%struct._GimpDrawable = type { %struct._GimpItem, %struct._GimpDrawablePrivate* }
%struct._GimpItem = type { %struct._GimpViewable }
%struct._GimpDrawablePrivate = type opaque
%struct._GimpLayer = type { %struct._GimpDrawable, double, i32, i32, %struct._GimpLayerMask*, %struct._GeglNode*, %struct.anon }
%struct._GimpLayerMask = type opaque
%struct._GeglNode = type opaque
%struct.anon = type { %struct._GimpDrawable*, i32, %struct._BoundSeg*, i32 }
%struct._BoundSeg = type opaque
%struct._GimpChannel = type { %struct._GimpDrawable, %struct._GimpRGB, i32, %struct._GeglNode*, %struct._GeglNode*, %struct._GeglNode*, i32, %struct._BoundSeg*, %struct._BoundSeg*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GimpStrokeOptions = type { %struct._GimpFillOptions }
%struct._GimpFillOptions = type { %struct._GimpContext }
%struct._GimpPaintOptions = type opaque
%struct._GimpPDBContext = type { %struct._GimpContext, i32, i32, double, double, i32, i32, double, i32, i32, i32, i32, i32, %struct._GimpContainer* }
%struct._GimpConfig = type opaque
%struct._GimpVectors = type { %struct._GimpItem, %struct._GList*, i32, i32, double, i8**, i32, i32, double, double, double, double }

@.str = private unnamed_addr constant [14 x i8] c"gimp-edit-cut\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Cut from the specified drawable.\00", align 1
@.str.2 = private unnamed_addr constant [496 x i8] c"If there is a selection in the image, then the area specified by the selection is cut from the specified drawable and placed in an internal GIMP edit buffer. It can subsequently be retrieved using the 'gimp-edit-paste' command. If there is no selection, then the specified drawable will be removed and its contents stored in the internal GIMP edit buffer. This procedure will fail if the selected area lies completely outside the bounds of the current drawable and there is nothing to copy from.\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Spencer Kimball & Peter Mattis\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"1995-1996\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"drawable\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"The drawable to cut from\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"non-empty\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"non empty\00", align 1
@.str.9 = private unnamed_addr constant [72 x i8] c"TRUE if the cut was successful, FALSE if there was nothing to copy from\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"gimp-edit-copy\00", align 1
@.str.11 = private unnamed_addr constant [34 x i8] c"Copy from the specified drawable.\00", align 1
@.str.12 = private unnamed_addr constant [485 x i8] c"If there is a selection in the image, then the area specified by the selection is copied from the specified drawable and placed in an internal GIMP edit buffer. It can subsequently be retrieved using the 'gimp-edit-paste' command. If there is no selection, then the specified drawable's contents will be stored in the internal GIMP edit buffer. This procedure will fail if the selected area lies completely outside the bounds of the current drawable and there is nothing to copy from.\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"The drawable to copy from\00", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c"gimp-edit-copy-visible\00", align 1
@.str.15 = private unnamed_addr constant [26 x i8] c"Copy from the projection.\00", align 1
@.str.16 = private unnamed_addr constant [329 x i8] c"If there is a selection in the image, then the area specified by the selection is copied from the projection and placed in an internal GIMP edit buffer. It can subsequently be retrieved using the 'gimp-edit-paste' command. If there is no selection, then the projection's contents will be stored in the internal GIMP edit buffer.\00", align 1
@.str.17 = private unnamed_addr constant [34 x i8] c"Michael Natterer <mitch@gimp.org>\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"Michael Natterer\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"2004\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.21 = private unnamed_addr constant [23 x i8] c"The image to copy from\00", align 1
@.str.22 = private unnamed_addr constant [32 x i8] c"TRUE if the copy was successful\00", align 1
@.str.23 = private unnamed_addr constant [16 x i8] c"gimp-edit-paste\00", align 1
@.str.24 = private unnamed_addr constant [40 x i8] c"Paste buffer to the specified drawable.\00", align 1
@.str.25 = private unnamed_addr constant [944 x i8] c"This procedure pastes a copy of the internal GIMP edit buffer to the specified drawable. The GIMP edit buffer will be empty unless a call was previously made to either 'gimp-edit-cut' or 'gimp-edit-copy'. The \22paste_into\22 option specifies whether to clear the current image selection, or to paste the buffer \22behind\22 the selection. This allows the selection to act as a mask for the pasted buffer. Anywhere that the selection mask is non-zero, the pasted buffer will show through. The pasted buffer will be a new layer in the image which is designated as the image floating selection. If the image has a floating selection at the time of pasting, the old floating selection will be anchored to it's drawable before the new floating selection is added. This procedure returns the new floating layer. The resulting floating selection will already be attached to the specified drawable, and a subsequent call to floating_sel_attach is not needed.\00", align 1
@.str.26 = private unnamed_addr constant [25 x i8] c"The drawable to paste to\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"paste-into\00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c"paste into\00", align 1
@.str.29 = private unnamed_addr constant [37 x i8] c"Clear selection, or paste behind it?\00", align 1
@.str.30 = private unnamed_addr constant [13 x i8] c"floating-sel\00", align 1
@.str.31 = private unnamed_addr constant [13 x i8] c"floating sel\00", align 1
@.str.32 = private unnamed_addr constant [27 x i8] c"The new floating selection\00", align 1
@.str.33 = private unnamed_addr constant [23 x i8] c"gimp-edit-paste-as-new\00", align 1
@.str.34 = private unnamed_addr constant [29 x i8] c"Paste buffer to a new image.\00", align 1
@.str.35 = private unnamed_addr constant [267 x i8] c"This procedure pastes a copy of the internal GIMP edit buffer to a new image. The GIMP edit buffer will be empty unless a call was previously made to either 'gimp-edit-cut' or 'gimp-edit-copy'. This procedure returns the new image or -1 if the edit buffer was empty.\00", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c"2005\00", align 1
@.str.37 = private unnamed_addr constant [14 x i8] c"The new image\00", align 1
@.str.38 = private unnamed_addr constant [20 x i8] c"gimp-edit-named-cut\00", align 1
@.str.39 = private unnamed_addr constant [25 x i8] c"Cut into a named buffer.\00", align 1
@.str.40 = private unnamed_addr constant [201 x i8] c"This procedure works like 'gimp-edit-cut', but additionally stores the cut buffer into a named buffer that will stay available for later pasting, regardless of any intermediate copy or cut operations.\00", align 1
@.str.41 = private unnamed_addr constant [12 x i8] c"buffer-name\00", align 1
@.str.42 = private unnamed_addr constant [12 x i8] c"buffer name\00", align 1
@.str.43 = private unnamed_addr constant [33 x i8] c"The name of the buffer to create\00", align 1
@.str.44 = private unnamed_addr constant [10 x i8] c"real-name\00", align 1
@.str.45 = private unnamed_addr constant [10 x i8] c"real name\00", align 1
@.str.46 = private unnamed_addr constant [61 x i8] c"The real name given to the buffer, or NULL if the cut failed\00", align 1
@.str.47 = private unnamed_addr constant [21 x i8] c"gimp-edit-named-copy\00", align 1
@.str.48 = private unnamed_addr constant [26 x i8] c"Copy into a named buffer.\00", align 1
@.str.49 = private unnamed_addr constant [205 x i8] c"This procedure works like 'gimp-edit-copy', but additionally stores the copied buffer into a named buffer that will stay available for later pasting, regardless of any intermediate copy or cut operations.\00", align 1
@.str.50 = private unnamed_addr constant [62 x i8] c"The real name given to the buffer, or NULL if the copy failed\00", align 1
@.str.51 = private unnamed_addr constant [29 x i8] c"gimp-edit-named-copy-visible\00", align 1
@.str.52 = private unnamed_addr constant [46 x i8] c"Copy from the projection into a named buffer.\00", align 1
@.str.53 = private unnamed_addr constant [213 x i8] c"This procedure works like 'gimp-edit-copy-visible', but additionally stores the copied buffer into a named buffer that will stay available for later pasting, regardless of any intermediate copy or cut operations.\00", align 1
@.str.54 = private unnamed_addr constant [22 x i8] c"gimp-edit-named-paste\00", align 1
@.str.55 = private unnamed_addr constant [46 x i8] c"Paste named buffer to the specified drawable.\00", align 1
@.str.56 = private unnamed_addr constant [100 x i8] c"This procedure works like 'gimp-edit-paste' but pastes a named buffer instead of the global buffer.\00", align 1
@.str.57 = private unnamed_addr constant [32 x i8] c"The name of the buffer to paste\00", align 1
@.str.58 = private unnamed_addr constant [29 x i8] c"gimp-edit-named-paste-as-new\00", align 1
@.str.59 = private unnamed_addr constant [35 x i8] c"Paste named buffer to a new image.\00", align 1
@.str.60 = private unnamed_addr constant [107 x i8] c"This procedure works like 'gimp-edit-paste-as-new' but pastes a named buffer instead of the global buffer.\00", align 1
@.str.61 = private unnamed_addr constant [16 x i8] c"gimp-edit-clear\00", align 1
@.str.62 = private unnamed_addr constant [33 x i8] c"Clear selected area of drawable.\00", align 1
@.str.63 = private unnamed_addr constant [315 x i8] c"This procedure clears the specified drawable. If the drawable has an alpha channel, the cleared pixels will become transparent. If the drawable does not have an alpha channel, cleared pixels will be set to the background color. This procedure only affects regions within a selection if there is a selection active.\00", align 1
@.str.64 = private unnamed_addr constant [27 x i8] c"The drawable to clear from\00", align 1
@.str.65 = private unnamed_addr constant [15 x i8] c"gimp-edit-fill\00", align 1
@.str.66 = private unnamed_addr constant [32 x i8] c"Fill selected area of drawable.\00", align 1
@.str.67 = private unnamed_addr constant [423 x i8] c"This procedure fills the specified drawable with the fill mode. If the fill mode is foreground, the current foreground color is used. If the fill mode is background, the current background color is used. Other fill modes should not be used. This procedure only affects regions within a selection if there is a selection active. If you want to fill the whole drawable, regardless of the selection, use 'gimp-drawable-fill'.\00", align 1
@.str.68 = private unnamed_addr constant [48 x i8] c"Spencer Kimball & Peter Mattis & Raphael Quinet\00", align 1
@.str.69 = private unnamed_addr constant [10 x i8] c"1995-2000\00", align 1
@.str.70 = private unnamed_addr constant [24 x i8] c"The drawable to fill to\00", align 1
@.str.71 = private unnamed_addr constant [10 x i8] c"fill-type\00", align 1
@.str.72 = private unnamed_addr constant [10 x i8] c"fill type\00", align 1
@.str.73 = private unnamed_addr constant [17 x i8] c"The type of fill\00", align 1
@.str.74 = private unnamed_addr constant [22 x i8] c"gimp-edit-bucket-fill\00", align 1
@.str.75 = private unnamed_addr constant [130 x i8] c"Fill the area specified either by the current selection if there is one, or by a seed fill starting at the specified coordinates.\00", align 1
@.str.76 = private unnamed_addr constant [760 x i8] c"This tool requires information on the paint application mode, and the fill mode, which can either be in the foreground color, or in the currently active pattern. If there is no selection, a seed fill is executed at the specified coordinates and extends outward in keeping with the threshold parameter. If there is a selection in the target image, the threshold, sample merged, x, and y arguments are unused. If the sample_merged parameter is TRUE, the data of the composite image will be used instead of that for the specified drawable. This is equivalent to sampling for colors after merging all visible layers. In the case of merged sampling, the x and y coordinates are relative to the image's origin; otherwise, they are relative to the drawable's origin.\00", align 1
@.str.77 = private unnamed_addr constant [22 x i8] c"The affected drawable\00", align 1
@.str.78 = private unnamed_addr constant [10 x i8] c"fill-mode\00", align 1
@.str.79 = private unnamed_addr constant [10 x i8] c"fill mode\00", align 1
@.str.80 = private unnamed_addr constant [11 x i8] c"paint-mode\00", align 1
@.str.81 = private unnamed_addr constant [11 x i8] c"paint mode\00", align 1
@.str.82 = private unnamed_addr constant [27 x i8] c"The paint application mode\00", align 1
@.str.83 = private unnamed_addr constant [8 x i8] c"opacity\00", align 1
@.str.84 = private unnamed_addr constant [37 x i8] c"The opacity of the final bucket fill\00", align 1
@.str.85 = private unnamed_addr constant [10 x i8] c"threshold\00", align 1
@.str.86 = private unnamed_addr constant [196 x i8] c"The threshold determines how extensive the seed fill will be. It's value is specified in terms of intensity levels. This parameter is only valid when there is no selection in the specified image.\00", align 1
@.str.87 = private unnamed_addr constant [14 x i8] c"sample-merged\00", align 1
@.str.88 = private unnamed_addr constant [14 x i8] c"sample merged\00", align 1
@.str.89 = private unnamed_addr constant [42 x i8] c"Use the composite image, not the drawable\00", align 1
@.str.90 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.91 = private unnamed_addr constant [132 x i8] c"The x coordinate of this bucket fill's application. This parameter is only valid when there is no selection in the specified image.\00", align 1
@.str.92 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str.93 = private unnamed_addr constant [132 x i8] c"The y coordinate of this bucket fill's application. This parameter is only valid when there is no selection in the specified image.\00", align 1
@.str.94 = private unnamed_addr constant [27 x i8] c"gimp-edit-bucket-fill-full\00", align 1
@.str.95 = private unnamed_addr constant [13 x i8] c"David Gowers\00", align 1
@.str.96 = private unnamed_addr constant [5 x i8] c"2006\00", align 1
@.str.97 = private unnamed_addr constant [17 x i8] c"fill-transparent\00", align 1
@.str.98 = private unnamed_addr constant [17 x i8] c"fill transparent\00", align 1
@.str.99 = private unnamed_addr constant [116 x i8] c"Whether to consider transparent pixels for filling. If TRUE, transparency is considered as a unique fillable color.\00", align 1
@.str.100 = private unnamed_addr constant [17 x i8] c"select-criterion\00", align 1
@.str.101 = private unnamed_addr constant [17 x i8] c"select criterion\00", align 1
@.str.102 = private unnamed_addr constant [101 x i8] c"The criterion used to determine color similarity. SELECT_CRITERION_COMPOSITE is the standard choice.\00", align 1
@.str.103 = private unnamed_addr constant [16 x i8] c"gimp-edit-blend\00", align 1
@.str.104 = private unnamed_addr constant [99 x i8] c"Blend between the starting and ending coordinates with the specified blend mode and gradient type.\00", align 1
@.str.105 = private unnamed_addr constant [220 x i8] c"This tool requires information on the paint application mode, the blend mode, and the gradient type. It creates the specified variety of blend using the starting and ending coordinates as defined for each gradient type.\00", align 1
@.str.106 = private unnamed_addr constant [11 x i8] c"blend-mode\00", align 1
@.str.107 = private unnamed_addr constant [11 x i8] c"blend mode\00", align 1
@.str.108 = private unnamed_addr constant [18 x i8] c"The type of blend\00", align 1
@.str.109 = private unnamed_addr constant [14 x i8] c"gradient-type\00", align 1
@.str.110 = private unnamed_addr constant [14 x i8] c"gradient type\00", align 1
@.str.111 = private unnamed_addr constant [21 x i8] c"The type of gradient\00", align 1
@.str.112 = private unnamed_addr constant [31 x i8] c"The opacity of the final blend\00", align 1
@.str.113 = private unnamed_addr constant [7 x i8] c"offset\00", align 1
@.str.114 = private unnamed_addr constant [113 x i8] c"Offset relates to the starting and ending coordinates specified for the blend. This parameter is mode dependent.\00", align 1
@.str.115 = private unnamed_addr constant [7 x i8] c"repeat\00", align 1
@.str.116 = private unnamed_addr constant [12 x i8] c"Repeat mode\00", align 1
@.str.117 = private unnamed_addr constant [8 x i8] c"reverse\00", align 1
@.str.118 = private unnamed_addr constant [25 x i8] c"Use the reverse gradient\00", align 1
@.str.119 = private unnamed_addr constant [12 x i8] c"supersample\00", align 1
@.str.120 = private unnamed_addr constant [26 x i8] c"Do adaptive supersampling\00", align 1
@.str.121 = private unnamed_addr constant [10 x i8] c"max-depth\00", align 1
@.str.122 = private unnamed_addr constant [10 x i8] c"max depth\00", align 1
@.str.123 = private unnamed_addr constant [43 x i8] c"Maximum recursion levels for supersampling\00", align 1
@.str.124 = private unnamed_addr constant [24 x i8] c"Supersampling threshold\00", align 1
@.str.125 = private unnamed_addr constant [7 x i8] c"dither\00", align 1
@.str.126 = private unnamed_addr constant [32 x i8] c"Use dithering to reduce banding\00", align 1
@.str.127 = private unnamed_addr constant [3 x i8] c"x1\00", align 1
@.str.128 = private unnamed_addr constant [48 x i8] c"The x coordinate of this blend's starting point\00", align 1
@.str.129 = private unnamed_addr constant [3 x i8] c"y1\00", align 1
@.str.130 = private unnamed_addr constant [48 x i8] c"The y coordinate of this blend's starting point\00", align 1
@.str.131 = private unnamed_addr constant [3 x i8] c"x2\00", align 1
@.str.132 = private unnamed_addr constant [46 x i8] c"The x coordinate of this blend's ending point\00", align 1
@.str.133 = private unnamed_addr constant [3 x i8] c"y2\00", align 1
@.str.134 = private unnamed_addr constant [46 x i8] c"The y coordinate of this blend's ending point\00", align 1
@.str.135 = private unnamed_addr constant [17 x i8] c"gimp-edit-stroke\00", align 1
@.str.136 = private unnamed_addr constant [29 x i8] c"Stroke the current selection\00", align 1
@.str.137 = private unnamed_addr constant [211 x i8] c"This procedure strokes the current selection, painting along the selection boundary with the active brush and foreground color. The paint is applied to the specified drawable regardless of the active selection.\00", align 1
@.str.138 = private unnamed_addr constant [26 x i8] c"The drawable to stroke to\00", align 1
@.str.139 = private unnamed_addr constant [25 x i8] c"gimp-edit-stroke-vectors\00", align 1
@.str.140 = private unnamed_addr constant [36 x i8] c"Stroke the specified vectors object\00", align 1
@.str.141 = private unnamed_addr constant [121 x i8] c"This procedure strokes the specified vectors object, painting along the path with the active brush and foreground color.\00", align 1
@.str.142 = private unnamed_addr constant [12 x i8] c"Simon Budig\00", align 1
@.str.143 = private unnamed_addr constant [8 x i8] c"vectors\00", align 1
@.str.144 = private unnamed_addr constant [19 x i8] c"The vectors object\00", align 1
@.str.145 = private unnamed_addr constant [9 x i8] c"Blending\00", align 1
@.str.146 = private unnamed_addr constant [7 x i8] c"method\00", align 1

; Function Attrs: nounwind uwtable
define void @register_edit_procs(%struct._GimpPDB* %pdb) #0 {
entry:
  %pdb.addr = alloca %struct._GimpPDB*, align 8
  %procedure = alloca %struct._GimpProcedure*, align 8
  store %struct._GimpPDB* %pdb, %struct._GimpPDB** %pdb.addr, align 8
  %call = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @edit_cut_invoker)
  store %struct._GimpProcedure* %call, %struct._GimpProcedure** %procedure, align 8
  %0 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %1 = bitcast %struct._GimpProcedure* %0 to %struct._GTypeInstance*
  %call1 = call i64 @gimp_object_get_type() #4
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call1)
  %2 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %2, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0))
  %3 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([496 x i8], [496 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i8* null)
  %4 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %5 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %5, i32 0, i32 1
  %6 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call3 = call %struct._GParamSpec* @gimp_param_spec_drawable_id(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i32 0, i32 0), %struct._Gimp* %6, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %4, %struct._GParamSpec* %call3)
  %7 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call4 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.9, i32 0, i32 0), i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %7, %struct._GParamSpec* %call4)
  %8 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %9 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %8, %struct._GimpProcedure* %9)
  %10 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %11 = bitcast %struct._GimpProcedure* %10 to i8*
  call void @g_object_unref(i8* %11)
  %call5 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @edit_copy_invoker)
  store %struct._GimpProcedure* %call5, %struct._GimpProcedure** %procedure, align 8
  %12 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %13 = bitcast %struct._GimpProcedure* %12 to %struct._GTypeInstance*
  %call6 = call i64 @gimp_object_get_type() #4
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call6)
  %14 = bitcast %struct._GTypeInstance* %call7 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %14, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0))
  %15 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %15, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([485 x i8], [485 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i8* null)
  %16 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %17 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp8 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %17, i32 0, i32 1
  %18 = load %struct._Gimp*, %struct._Gimp** %gimp8, align 8
  %call9 = call %struct._GParamSpec* @gimp_param_spec_drawable_id(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i32 0, i32 0), %struct._Gimp* %18, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %16, %struct._GParamSpec* %call9)
  %19 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call10 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.9, i32 0, i32 0), i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %19, %struct._GParamSpec* %call10)
  %20 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %21 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %20, %struct._GimpProcedure* %21)
  %22 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %23 = bitcast %struct._GimpProcedure* %22 to i8*
  call void @g_object_unref(i8* %23)
  %call11 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @edit_copy_visible_invoker)
  store %struct._GimpProcedure* %call11, %struct._GimpProcedure** %procedure, align 8
  %24 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %25 = bitcast %struct._GimpProcedure* %24 to %struct._GTypeInstance*
  %call12 = call i64 @gimp_object_get_type() #4
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call12)
  %26 = bitcast %struct._GTypeInstance* %call13 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %26, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i32 0, i32 0))
  %27 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %27, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([329 x i8], [329 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0), i8* null)
  %28 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %29 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp14 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %29, i32 0, i32 1
  %30 = load %struct._Gimp*, %struct._Gimp** %gimp14, align 8
  %call15 = call %struct._GParamSpec* @gimp_param_spec_image_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.21, i32 0, i32 0), %struct._Gimp* %30, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %28, %struct._GParamSpec* %call15)
  %31 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call16 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.22, i32 0, i32 0), i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %31, %struct._GParamSpec* %call16)
  %32 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %33 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %32, %struct._GimpProcedure* %33)
  %34 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %35 = bitcast %struct._GimpProcedure* %34 to i8*
  call void @g_object_unref(i8* %35)
  %call17 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @edit_paste_invoker)
  store %struct._GimpProcedure* %call17, %struct._GimpProcedure** %procedure, align 8
  %36 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %37 = bitcast %struct._GimpProcedure* %36 to %struct._GTypeInstance*
  %call18 = call i64 @gimp_object_get_type() #4
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %37, i64 %call18)
  %38 = bitcast %struct._GTypeInstance* %call19 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %38, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.23, i32 0, i32 0))
  %39 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %39, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([944 x i8], [944 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i8* null)
  %40 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %41 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp20 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %41, i32 0, i32 1
  %42 = load %struct._Gimp*, %struct._Gimp** %gimp20, align 8
  %call21 = call %struct._GParamSpec* @gimp_param_spec_drawable_id(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.26, i32 0, i32 0), %struct._Gimp* %42, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %40, %struct._GParamSpec* %call21)
  %43 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call22 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.29, i32 0, i32 0), i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %43, %struct._GParamSpec* %call22)
  %44 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %45 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp23 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %45, i32 0, i32 1
  %46 = load %struct._Gimp*, %struct._Gimp** %gimp23, align 8
  %call24 = call %struct._GParamSpec* @gimp_param_spec_layer_id(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.32, i32 0, i32 0), %struct._Gimp* %46, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %44, %struct._GParamSpec* %call24)
  %47 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %48 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %47, %struct._GimpProcedure* %48)
  %49 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %50 = bitcast %struct._GimpProcedure* %49 to i8*
  call void @g_object_unref(i8* %50)
  %call25 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @edit_paste_as_new_invoker)
  store %struct._GimpProcedure* %call25, %struct._GimpProcedure** %procedure, align 8
  %51 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %52 = bitcast %struct._GimpProcedure* %51 to %struct._GTypeInstance*
  %call26 = call i64 @gimp_object_get_type() #4
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %52, i64 %call26)
  %53 = bitcast %struct._GTypeInstance* %call27 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %53, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.33, i32 0, i32 0))
  %54 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %54, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([267 x i8], [267 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i32 0, i32 0), i8* null)
  %55 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %56 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp28 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %56, i32 0, i32 1
  %57 = load %struct._Gimp*, %struct._Gimp** %gimp28, align 8
  %call29 = call %struct._GParamSpec* @gimp_param_spec_image_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.37, i32 0, i32 0), %struct._Gimp* %57, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %55, %struct._GParamSpec* %call29)
  %58 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %59 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %58, %struct._GimpProcedure* %59)
  %60 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %61 = bitcast %struct._GimpProcedure* %60 to i8*
  call void @g_object_unref(i8* %61)
  %call30 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @edit_named_cut_invoker)
  store %struct._GimpProcedure* %call30, %struct._GimpProcedure** %procedure, align 8
  %62 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %63 = bitcast %struct._GimpProcedure* %62 to %struct._GTypeInstance*
  %call31 = call i64 @gimp_object_get_type() #4
  %call32 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %63, i64 %call31)
  %64 = bitcast %struct._GTypeInstance* %call32 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %64, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.38, i32 0, i32 0))
  %65 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %65, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([201 x i8], [201 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i32 0, i32 0), i8* null)
  %66 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %67 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp33 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %67, i32 0, i32 1
  %68 = load %struct._Gimp*, %struct._Gimp** %gimp33, align 8
  %call34 = call %struct._GParamSpec* @gimp_param_spec_drawable_id(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i32 0, i32 0), %struct._Gimp* %68, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %66, %struct._GParamSpec* %call34)
  %69 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call35 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.43, i32 0, i32 0), i32 0, i32 0, i32 1, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %69, %struct._GParamSpec* %call35)
  %70 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call36 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.46, i32 0, i32 0), i32 0, i32 0, i32 0, i8* null, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %70, %struct._GParamSpec* %call36)
  %71 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %72 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %71, %struct._GimpProcedure* %72)
  %73 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %74 = bitcast %struct._GimpProcedure* %73 to i8*
  call void @g_object_unref(i8* %74)
  %call37 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @edit_named_copy_invoker)
  store %struct._GimpProcedure* %call37, %struct._GimpProcedure** %procedure, align 8
  %75 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %76 = bitcast %struct._GimpProcedure* %75 to %struct._GTypeInstance*
  %call38 = call i64 @gimp_object_get_type() #4
  %call39 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %76, i64 %call38)
  %77 = bitcast %struct._GTypeInstance* %call39 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %77, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.47, i32 0, i32 0))
  %78 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %78, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([205 x i8], [205 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i32 0, i32 0), i8* null)
  %79 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %80 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp40 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %80, i32 0, i32 1
  %81 = load %struct._Gimp*, %struct._Gimp** %gimp40, align 8
  %call41 = call %struct._GParamSpec* @gimp_param_spec_drawable_id(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i32 0, i32 0), %struct._Gimp* %81, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %79, %struct._GParamSpec* %call41)
  %82 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call42 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.43, i32 0, i32 0), i32 0, i32 0, i32 1, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %82, %struct._GParamSpec* %call42)
  %83 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call43 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.50, i32 0, i32 0), i32 0, i32 0, i32 0, i8* null, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %83, %struct._GParamSpec* %call43)
  %84 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %85 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %84, %struct._GimpProcedure* %85)
  %86 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %87 = bitcast %struct._GimpProcedure* %86 to i8*
  call void @g_object_unref(i8* %87)
  %call44 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @edit_named_copy_visible_invoker)
  store %struct._GimpProcedure* %call44, %struct._GimpProcedure** %procedure, align 8
  %88 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %89 = bitcast %struct._GimpProcedure* %88 to %struct._GTypeInstance*
  %call45 = call i64 @gimp_object_get_type() #4
  %call46 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %89, i64 %call45)
  %90 = bitcast %struct._GTypeInstance* %call46 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %90, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.51, i32 0, i32 0))
  %91 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %91, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([213 x i8], [213 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i32 0, i32 0), i8* null)
  %92 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %93 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp47 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %93, i32 0, i32 1
  %94 = load %struct._Gimp*, %struct._Gimp** %gimp47, align 8
  %call48 = call %struct._GParamSpec* @gimp_param_spec_image_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.21, i32 0, i32 0), %struct._Gimp* %94, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %92, %struct._GParamSpec* %call48)
  %95 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call49 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.43, i32 0, i32 0), i32 0, i32 0, i32 1, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %95, %struct._GParamSpec* %call49)
  %96 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call50 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.50, i32 0, i32 0), i32 0, i32 0, i32 0, i8* null, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %96, %struct._GParamSpec* %call50)
  %97 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %98 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %97, %struct._GimpProcedure* %98)
  %99 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %100 = bitcast %struct._GimpProcedure* %99 to i8*
  call void @g_object_unref(i8* %100)
  %call51 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @edit_named_paste_invoker)
  store %struct._GimpProcedure* %call51, %struct._GimpProcedure** %procedure, align 8
  %101 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %102 = bitcast %struct._GimpProcedure* %101 to %struct._GTypeInstance*
  %call52 = call i64 @gimp_object_get_type() #4
  %call53 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %102, i64 %call52)
  %103 = bitcast %struct._GTypeInstance* %call53 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %103, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.54, i32 0, i32 0))
  %104 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %104, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i32 0, i32 0), i8* null)
  %105 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %106 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp54 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %106, i32 0, i32 1
  %107 = load %struct._Gimp*, %struct._Gimp** %gimp54, align 8
  %call55 = call %struct._GParamSpec* @gimp_param_spec_drawable_id(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.26, i32 0, i32 0), %struct._Gimp* %107, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %105, %struct._GParamSpec* %call55)
  %108 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call56 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.57, i32 0, i32 0), i32 0, i32 0, i32 0, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %108, %struct._GParamSpec* %call56)
  %109 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call57 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.29, i32 0, i32 0), i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %109, %struct._GParamSpec* %call57)
  %110 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %111 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp58 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %111, i32 0, i32 1
  %112 = load %struct._Gimp*, %struct._Gimp** %gimp58, align 8
  %call59 = call %struct._GParamSpec* @gimp_param_spec_layer_id(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.32, i32 0, i32 0), %struct._Gimp* %112, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %110, %struct._GParamSpec* %call59)
  %113 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %114 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %113, %struct._GimpProcedure* %114)
  %115 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %116 = bitcast %struct._GimpProcedure* %115 to i8*
  call void @g_object_unref(i8* %116)
  %call60 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @edit_named_paste_as_new_invoker)
  store %struct._GimpProcedure* %call60, %struct._GimpProcedure** %procedure, align 8
  %117 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %118 = bitcast %struct._GimpProcedure* %117 to %struct._GTypeInstance*
  %call61 = call i64 @gimp_object_get_type() #4
  %call62 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %118, i64 %call61)
  %119 = bitcast %struct._GTypeInstance* %call62 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %119, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.58, i32 0, i32 0))
  %120 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %120, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i32 0, i32 0), i8* null)
  %121 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call63 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.57, i32 0, i32 0), i32 0, i32 0, i32 0, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %121, %struct._GParamSpec* %call63)
  %122 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %123 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp64 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %123, i32 0, i32 1
  %124 = load %struct._Gimp*, %struct._Gimp** %gimp64, align 8
  %call65 = call %struct._GParamSpec* @gimp_param_spec_image_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.37, i32 0, i32 0), %struct._Gimp* %124, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %122, %struct._GParamSpec* %call65)
  %125 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %126 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %125, %struct._GimpProcedure* %126)
  %127 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %128 = bitcast %struct._GimpProcedure* %127 to i8*
  call void @g_object_unref(i8* %128)
  %call66 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @edit_clear_invoker)
  store %struct._GimpProcedure* %call66, %struct._GimpProcedure** %procedure, align 8
  %129 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %130 = bitcast %struct._GimpProcedure* %129 to %struct._GTypeInstance*
  %call67 = call i64 @gimp_object_get_type() #4
  %call68 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %130, i64 %call67)
  %131 = bitcast %struct._GTypeInstance* %call68 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %131, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.61, i32 0, i32 0))
  %132 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %132, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([315 x i8], [315 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i8* null)
  %133 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %134 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp69 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %134, i32 0, i32 1
  %135 = load %struct._Gimp*, %struct._Gimp** %gimp69, align 8
  %call70 = call %struct._GParamSpec* @gimp_param_spec_drawable_id(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.64, i32 0, i32 0), %struct._Gimp* %135, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %133, %struct._GParamSpec* %call70)
  %136 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %137 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %136, %struct._GimpProcedure* %137)
  %138 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %139 = bitcast %struct._GimpProcedure* %138 to i8*
  call void @g_object_unref(i8* %139)
  %call71 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @edit_fill_invoker)
  store %struct._GimpProcedure* %call71, %struct._GimpProcedure** %procedure, align 8
  %140 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %141 = bitcast %struct._GimpProcedure* %140 to %struct._GTypeInstance*
  %call72 = call i64 @gimp_object_get_type() #4
  %call73 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %141, i64 %call72)
  %142 = bitcast %struct._GTypeInstance* %call73 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %142, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.65, i32 0, i32 0))
  %143 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %143, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([423 x i8], [423 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.69, i32 0, i32 0), i8* null)
  %144 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %145 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp74 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %145, i32 0, i32 1
  %146 = load %struct._Gimp*, %struct._Gimp** %gimp74, align 8
  %call75 = call %struct._GParamSpec* @gimp_param_spec_drawable_id(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.70, i32 0, i32 0), %struct._Gimp* %146, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %144, %struct._GParamSpec* %call75)
  %147 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call76 = call i64 @gimp_fill_type_get_type() #4
  %call77 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.72, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.73, i32 0, i32 0), i64 %call76, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %147, %struct._GParamSpec* %call77)
  %148 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %149 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %148, %struct._GimpProcedure* %149)
  %150 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %151 = bitcast %struct._GimpProcedure* %150 to i8*
  call void @g_object_unref(i8* %151)
  %call78 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @edit_bucket_fill_invoker)
  store %struct._GimpProcedure* %call78, %struct._GimpProcedure** %procedure, align 8
  %152 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %153 = bitcast %struct._GimpProcedure* %152 to %struct._GTypeInstance*
  %call79 = call i64 @gimp_object_get_type() #4
  %call80 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %153, i64 %call79)
  %154 = bitcast %struct._GTypeInstance* %call80 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %154, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.74, i32 0, i32 0))
  %155 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %155, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.74, i32 0, i32 0), i8* getelementptr inbounds ([130 x i8], [130 x i8]* @.str.75, i32 0, i32 0), i8* getelementptr inbounds ([760 x i8], [760 x i8]* @.str.76, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i8* null)
  %156 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %157 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp81 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %157, i32 0, i32 1
  %158 = load %struct._Gimp*, %struct._Gimp** %gimp81, align 8
  %call82 = call %struct._GParamSpec* @gimp_param_spec_drawable_id(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.77, i32 0, i32 0), %struct._Gimp* %158, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %156, %struct._GParamSpec* %call82)
  %159 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call83 = call i64 @gimp_bucket_fill_mode_get_type() #4
  %call84 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.79, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.73, i32 0, i32 0), i64 %call83, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %159, %struct._GParamSpec* %call84)
  %160 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call85 = call i64 @gimp_layer_mode_effects_get_type() #4
  %call86 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.80, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.81, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.82, i32 0, i32 0), i64 %call85, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %160, %struct._GParamSpec* %call86)
  %161 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call87 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.83, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.83, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.84, i32 0, i32 0), double 0.000000e+00, double 1.000000e+02, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %161, %struct._GParamSpec* %call87)
  %162 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call88 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.85, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.85, i32 0, i32 0), i8* getelementptr inbounds ([196 x i8], [196 x i8]* @.str.86, i32 0, i32 0), double 0.000000e+00, double 2.550000e+02, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %162, %struct._GParamSpec* %call88)
  %163 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call89 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.87, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.89, i32 0, i32 0), i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %163, %struct._GParamSpec* %call89)
  %164 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call90 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.90, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.90, i32 0, i32 0), i8* getelementptr inbounds ([132 x i8], [132 x i8]* @.str.91, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %164, %struct._GParamSpec* %call90)
  %165 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call91 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.92, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.92, i32 0, i32 0), i8* getelementptr inbounds ([132 x i8], [132 x i8]* @.str.93, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %165, %struct._GParamSpec* %call91)
  %166 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %167 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %166, %struct._GimpProcedure* %167)
  %168 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %169 = bitcast %struct._GimpProcedure* %168 to i8*
  call void @g_object_unref(i8* %169)
  %call92 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @edit_bucket_fill_full_invoker)
  store %struct._GimpProcedure* %call92, %struct._GimpProcedure** %procedure, align 8
  %170 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %171 = bitcast %struct._GimpProcedure* %170 to %struct._GTypeInstance*
  %call93 = call i64 @gimp_object_get_type() #4
  %call94 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %171, i64 %call93)
  %172 = bitcast %struct._GTypeInstance* %call94 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %172, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.94, i32 0, i32 0))
  %173 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %173, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.94, i32 0, i32 0), i8* getelementptr inbounds ([130 x i8], [130 x i8]* @.str.75, i32 0, i32 0), i8* getelementptr inbounds ([760 x i8], [760 x i8]* @.str.76, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.95, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.95, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.96, i32 0, i32 0), i8* null)
  %174 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %175 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp95 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %175, i32 0, i32 1
  %176 = load %struct._Gimp*, %struct._Gimp** %gimp95, align 8
  %call96 = call %struct._GParamSpec* @gimp_param_spec_drawable_id(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.77, i32 0, i32 0), %struct._Gimp* %176, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %174, %struct._GParamSpec* %call96)
  %177 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call97 = call i64 @gimp_bucket_fill_mode_get_type() #4
  %call98 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.79, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.73, i32 0, i32 0), i64 %call97, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %177, %struct._GParamSpec* %call98)
  %178 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call99 = call i64 @gimp_layer_mode_effects_get_type() #4
  %call100 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.80, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.81, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.82, i32 0, i32 0), i64 %call99, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %178, %struct._GParamSpec* %call100)
  %179 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call101 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.83, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.83, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.84, i32 0, i32 0), double 0.000000e+00, double 1.000000e+02, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %179, %struct._GParamSpec* %call101)
  %180 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call102 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.85, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.85, i32 0, i32 0), i8* getelementptr inbounds ([196 x i8], [196 x i8]* @.str.86, i32 0, i32 0), double 0.000000e+00, double 2.550000e+02, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %180, %struct._GParamSpec* %call102)
  %181 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call103 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.87, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.89, i32 0, i32 0), i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %181, %struct._GParamSpec* %call103)
  %182 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call104 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.97, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.98, i32 0, i32 0), i8* getelementptr inbounds ([116 x i8], [116 x i8]* @.str.99, i32 0, i32 0), i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %182, %struct._GParamSpec* %call104)
  %183 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call105 = call i64 @gimp_select_criterion_get_type() #4
  %call106 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.100, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.101, i32 0, i32 0), i8* getelementptr inbounds ([101 x i8], [101 x i8]* @.str.102, i32 0, i32 0), i64 %call105, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %183, %struct._GParamSpec* %call106)
  %184 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call107 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.90, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.90, i32 0, i32 0), i8* getelementptr inbounds ([132 x i8], [132 x i8]* @.str.91, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %184, %struct._GParamSpec* %call107)
  %185 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call108 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.92, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.92, i32 0, i32 0), i8* getelementptr inbounds ([132 x i8], [132 x i8]* @.str.93, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %185, %struct._GParamSpec* %call108)
  %186 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %187 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %186, %struct._GimpProcedure* %187)
  %188 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %189 = bitcast %struct._GimpProcedure* %188 to i8*
  call void @g_object_unref(i8* %189)
  %call109 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @edit_blend_invoker)
  store %struct._GimpProcedure* %call109, %struct._GimpProcedure** %procedure, align 8
  %190 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %191 = bitcast %struct._GimpProcedure* %190 to %struct._GTypeInstance*
  %call110 = call i64 @gimp_object_get_type() #4
  %call111 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %191, i64 %call110)
  %192 = bitcast %struct._GTypeInstance* %call111 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %192, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.103, i32 0, i32 0))
  %193 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %193, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.103, i32 0, i32 0), i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str.104, i32 0, i32 0), i8* getelementptr inbounds ([220 x i8], [220 x i8]* @.str.105, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i8* null)
  %194 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %195 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp112 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %195, i32 0, i32 1
  %196 = load %struct._Gimp*, %struct._Gimp** %gimp112, align 8
  %call113 = call %struct._GParamSpec* @gimp_param_spec_drawable_id(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.77, i32 0, i32 0), %struct._Gimp* %196, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %194, %struct._GParamSpec* %call113)
  %197 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call114 = call i64 @gimp_blend_mode_get_type() #4
  %call115 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.106, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.107, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.108, i32 0, i32 0), i64 %call114, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %197, %struct._GParamSpec* %call115)
  %198 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call116 = call i64 @gimp_layer_mode_effects_get_type() #4
  %call117 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.80, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.81, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.82, i32 0, i32 0), i64 %call116, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %198, %struct._GParamSpec* %call117)
  %199 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call118 = call i64 @gimp_gradient_type_get_type() #4
  %call119 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.109, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.110, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.111, i32 0, i32 0), i64 %call118, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %199, %struct._GParamSpec* %call119)
  %200 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call120 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.83, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.83, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.112, i32 0, i32 0), double 0.000000e+00, double 1.000000e+02, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %200, %struct._GParamSpec* %call120)
  %201 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call121 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.113, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.113, i32 0, i32 0), i8* getelementptr inbounds ([113 x i8], [113 x i8]* @.str.114, i32 0, i32 0), double 0.000000e+00, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %201, %struct._GParamSpec* %call121)
  %202 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call122 = call i64 @gimp_repeat_mode_get_type() #4
  %call123 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.115, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.115, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.116, i32 0, i32 0), i64 %call122, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %202, %struct._GParamSpec* %call123)
  %203 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call124 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.117, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.117, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.118, i32 0, i32 0), i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %203, %struct._GParamSpec* %call124)
  %204 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call125 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.119, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.119, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.120, i32 0, i32 0), i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %204, %struct._GParamSpec* %call125)
  %205 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call126 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.121, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.122, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.123, i32 0, i32 0), i32 1, i32 9, i32 1, i32 16611)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %205, %struct._GParamSpec* %call126)
  %206 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call127 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.85, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.85, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.124, i32 0, i32 0), double 0.000000e+00, double 4.000000e+00, double 0.000000e+00, i32 16611)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %206, %struct._GParamSpec* %call127)
  %207 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call128 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.125, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.125, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.126, i32 0, i32 0), i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %207, %struct._GParamSpec* %call128)
  %208 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call129 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.127, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.127, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.128, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %208, %struct._GParamSpec* %call129)
  %209 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call130 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.129, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.129, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.130, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %209, %struct._GParamSpec* %call130)
  %210 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call131 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.131, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.131, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.132, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %210, %struct._GParamSpec* %call131)
  %211 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call132 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.133, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.133, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.134, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %211, %struct._GParamSpec* %call132)
  %212 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %213 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %212, %struct._GimpProcedure* %213)
  %214 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %215 = bitcast %struct._GimpProcedure* %214 to i8*
  call void @g_object_unref(i8* %215)
  %call133 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @edit_stroke_invoker)
  store %struct._GimpProcedure* %call133, %struct._GimpProcedure** %procedure, align 8
  %216 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %217 = bitcast %struct._GimpProcedure* %216 to %struct._GTypeInstance*
  %call134 = call i64 @gimp_object_get_type() #4
  %call135 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %217, i64 %call134)
  %218 = bitcast %struct._GTypeInstance* %call135 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %218, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.135, i32 0, i32 0))
  %219 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %219, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.135, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.136, i32 0, i32 0), i8* getelementptr inbounds ([211 x i8], [211 x i8]* @.str.137, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i8* null)
  %220 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %221 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp136 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %221, i32 0, i32 1
  %222 = load %struct._Gimp*, %struct._Gimp** %gimp136, align 8
  %call137 = call %struct._GParamSpec* @gimp_param_spec_drawable_id(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.138, i32 0, i32 0), %struct._Gimp* %222, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %220, %struct._GParamSpec* %call137)
  %223 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %224 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %223, %struct._GimpProcedure* %224)
  %225 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %226 = bitcast %struct._GimpProcedure* %225 to i8*
  call void @g_object_unref(i8* %226)
  %call138 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @edit_stroke_vectors_invoker)
  store %struct._GimpProcedure* %call138, %struct._GimpProcedure** %procedure, align 8
  %227 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %228 = bitcast %struct._GimpProcedure* %227 to %struct._GTypeInstance*
  %call139 = call i64 @gimp_object_get_type() #4
  %call140 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %228, i64 %call139)
  %229 = bitcast %struct._GTypeInstance* %call140 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %229, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.139, i32 0, i32 0))
  %230 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %230, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.139, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.140, i32 0, i32 0), i8* getelementptr inbounds ([121 x i8], [121 x i8]* @.str.141, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.142, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.142, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.96, i32 0, i32 0), i8* null)
  %231 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %232 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp141 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %232, i32 0, i32 1
  %233 = load %struct._Gimp*, %struct._Gimp** %gimp141, align 8
  %call142 = call %struct._GParamSpec* @gimp_param_spec_drawable_id(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.138, i32 0, i32 0), %struct._Gimp* %233, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %231, %struct._GParamSpec* %call142)
  %234 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %235 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp143 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %235, i32 0, i32 1
  %236 = load %struct._Gimp*, %struct._Gimp** %gimp143, align 8
  %call144 = call %struct._GParamSpec* @gimp_param_spec_vectors_id(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.143, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.143, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.144, i32 0, i32 0), %struct._Gimp* %236, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %234, %struct._GParamSpec* %call144)
  %237 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %238 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %237, %struct._GimpProcedure* %238)
  %239 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %240 = bitcast %struct._GimpProcedure* %239 to i8*
  call void @g_object_unref(i8* %240)
  ret void
}

declare %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)*) #1

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @edit_cut_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  %image = alloca %struct._GimpImage*, align 8
  %my_error = alloca %struct._GError*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store i32 0, i32* %non_empty, align 4
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %2 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call = call %struct._GimpDrawable* @gimp_value_get_drawable(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpDrawable* %call, %struct._GimpDrawable** %drawable, align 8
  %3 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end.18

if.then:                                          ; preds = %entry
  %4 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %5 = bitcast %struct._GimpDrawable* %4 to %struct._GTypeInstance*
  %call1 = call i64 @gimp_item_get_type() #4
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call1)
  %6 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpItem*
  %7 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call3 = call i32 @gimp_pdb_item_is_attached(%struct._GimpItem* %6, %struct._GimpImage* null, i32 1, %struct._GError** %7)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %8 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %9 = bitcast %struct._GimpDrawable* %8 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_item_get_type() #4
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call5)
  %10 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpItem*
  %11 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call7 = call i32 @gimp_pdb_item_is_not_group(%struct._GimpItem* %10, %struct._GError** %11)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %land.lhs.true
  %12 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %13 = bitcast %struct._GimpDrawable* %12 to %struct._GTypeInstance*
  %call10 = call i64 @gimp_item_get_type() #4
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call10)
  %14 = bitcast %struct._GTypeInstance* %call11 to %struct._GimpItem*
  %call12 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %14)
  store %struct._GimpImage* %call12, %struct._GimpImage** %image, align 8
  store %struct._GError* null, %struct._GError** %my_error, align 8
  %15 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %16 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %17 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %call13 = call %struct._GimpBuffer* @gimp_edit_cut(%struct._GimpImage* %15, %struct._GimpDrawable* %16, %struct._GimpContext* %17, %struct._GError** %my_error)
  %cmp = icmp ne %struct._GimpBuffer* %call13, null
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %non_empty, align 4
  %18 = load i32, i32* %non_empty, align 4
  %tobool14 = icmp ne i32 %18, 0
  br i1 %tobool14, label %if.end, label %if.then.15

if.then.15:                                       ; preds = %if.then.9
  %19 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %20 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %21 = bitcast %struct._GimpProgress* %20 to %struct._GTypeInstance*
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 80)
  %22 = bitcast %struct._GTypeInstance* %call16 to %struct._GObject*
  %23 = load %struct._GError*, %struct._GError** %my_error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %23, i32 0, i32 2
  %24 = load i8*, i8** %message, align 8
  call void @gimp_message_literal(%struct._Gimp* %19, %struct._GObject* %22, i32 1, i8* %24)
  call void @g_clear_error(%struct._GError** %my_error)
  br label %if.end

if.end:                                           ; preds = %if.then.15, %if.then.9
  br label %if.end.17

if.else:                                          ; preds = %land.lhs.true, %if.then
  store i32 0, i32* %success, align 4
  br label %if.end.17

if.end.17:                                        ; preds = %if.else, %if.end
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %entry
  %25 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %26 = load i32, i32* %success, align 4
  %27 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool19 = icmp ne %struct._GError** %27, null
  br i1 %tobool19, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.18
  %28 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %29 = load %struct._GError*, %struct._GError** %28, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.18
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %29, %cond.true ], [ null, %cond.false ]
  %call20 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %25, i32 %26, %struct._GError* %cond)
  store %struct._GValueArray* %call20, %struct._GValueArray** %return_vals, align 8
  %30 = load i32, i32* %success, align 4
  %tobool21 = icmp ne i32 %30, 0
  br i1 %tobool21, label %if.then.22, label %if.end.25

if.then.22:                                       ; preds = %cond.end
  %31 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values23 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %31, i32 0, i32 1
  %32 = load %struct._GValue*, %struct._GValue** %values23, align 8
  %arrayidx24 = getelementptr inbounds %struct._GValue, %struct._GValue* %32, i64 1
  %33 = load i32, i32* %non_empty, align 4
  call void @g_value_set_boolean(%struct._GValue* %arrayidx24, i32 %33)
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.22, %cond.end
  %34 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %34
}

declare void @gimp_object_set_static_name(%struct._GimpObject*, i8*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #2

declare void @gimp_procedure_set_static_strings(%struct._GimpProcedure*, i8*, i8*, i8*, i8*, i8*, i8*, i8*) #1

declare void @gimp_procedure_add_argument(%struct._GimpProcedure*, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @gimp_param_spec_drawable_id(i8*, i8*, i8*, %struct._Gimp*, i32, i32) #1

declare void @gimp_procedure_add_return_value(%struct._GimpProcedure*, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_boolean(i8*, i8*, i8*, i32, i32) #1

declare void @gimp_pdb_register_procedure(%struct._GimpPDB*, %struct._GimpProcedure*) #1

declare void @g_object_unref(i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @edit_copy_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  %image = alloca %struct._GimpImage*, align 8
  %my_error = alloca %struct._GError*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store i32 0, i32* %non_empty, align 4
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %2 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call = call %struct._GimpDrawable* @gimp_value_get_drawable(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpDrawable* %call, %struct._GimpDrawable** %drawable, align 8
  %3 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end.14

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
  %call8 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %10)
  store %struct._GimpImage* %call8, %struct._GimpImage** %image, align 8
  store %struct._GError* null, %struct._GError** %my_error, align 8
  %11 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %12 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %13 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %call9 = call %struct._GimpBuffer* @gimp_edit_copy(%struct._GimpImage* %11, %struct._GimpDrawable* %12, %struct._GimpContext* %13, %struct._GError** %my_error)
  %cmp = icmp ne %struct._GimpBuffer* %call9, null
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %non_empty, align 4
  %14 = load i32, i32* %non_empty, align 4
  %tobool10 = icmp ne i32 %14, 0
  br i1 %tobool10, label %if.end, label %if.then.11

if.then.11:                                       ; preds = %if.then.5
  %15 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %16 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %17 = bitcast %struct._GimpProgress* %16 to %struct._GTypeInstance*
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 80)
  %18 = bitcast %struct._GTypeInstance* %call12 to %struct._GObject*
  %19 = load %struct._GError*, %struct._GError** %my_error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %19, i32 0, i32 2
  %20 = load i8*, i8** %message, align 8
  call void @gimp_message_literal(%struct._Gimp* %15, %struct._GObject* %18, i32 1, i8* %20)
  call void @g_clear_error(%struct._GError** %my_error)
  br label %if.end

if.end:                                           ; preds = %if.then.11, %if.then.5
  br label %if.end.13

if.else:                                          ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end.13

if.end.13:                                        ; preds = %if.else, %if.end
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %entry
  %21 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %22 = load i32, i32* %success, align 4
  %23 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool15 = icmp ne %struct._GError** %23, null
  br i1 %tobool15, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.14
  %24 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %25 = load %struct._GError*, %struct._GError** %24, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.14
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %25, %cond.true ], [ null, %cond.false ]
  %call16 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %21, i32 %22, %struct._GError* %cond)
  store %struct._GValueArray* %call16, %struct._GValueArray** %return_vals, align 8
  %26 = load i32, i32* %success, align 4
  %tobool17 = icmp ne i32 %26, 0
  br i1 %tobool17, label %if.then.18, label %if.end.21

if.then.18:                                       ; preds = %cond.end
  %27 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values19 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %27, i32 0, i32 1
  %28 = load %struct._GValue*, %struct._GValue** %values19, align 8
  %arrayidx20 = getelementptr inbounds %struct._GValue, %struct._GValue* %28, i64 1
  %29 = load i32, i32* %non_empty, align 4
  call void @g_value_set_boolean(%struct._GValue* %arrayidx20, i32 %29)
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.18, %cond.end
  %30 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %30
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @edit_copy_visible_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  %my_error = alloca %struct._GError*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store i32 0, i32* %non_empty, align 4
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
  store %struct._GError* null, %struct._GError** %my_error, align 8
  %4 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %5 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %call1 = call %struct._GimpBuffer* @gimp_edit_copy_visible(%struct._GimpImage* %4, %struct._GimpContext* %5, %struct._GError** %my_error)
  %cmp = icmp ne %struct._GimpBuffer* %call1, null
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %non_empty, align 4
  %6 = load i32, i32* %non_empty, align 4
  %tobool2 = icmp ne i32 %6, 0
  br i1 %tobool2, label %if.end, label %if.then.3

if.then.3:                                        ; preds = %if.then
  %7 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %8 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %9 = bitcast %struct._GimpProgress* %8 to %struct._GTypeInstance*
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 80)
  %10 = bitcast %struct._GTypeInstance* %call4 to %struct._GObject*
  %11 = load %struct._GError*, %struct._GError** %my_error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %11, i32 0, i32 2
  %12 = load i8*, i8** %message, align 8
  call void @gimp_message_literal(%struct._Gimp* %7, %struct._GObject* %10, i32 1, i8* %12)
  call void @g_clear_error(%struct._GError** %my_error)
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %entry
  %13 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %14 = load i32, i32* %success, align 4
  %15 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool6 = icmp ne %struct._GError** %15, null
  br i1 %tobool6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.5
  %16 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %17 = load %struct._GError*, %struct._GError** %16, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %17, %cond.true ], [ null, %cond.false ]
  %call7 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %13, i32 %14, %struct._GError* %cond)
  store %struct._GValueArray* %call7, %struct._GValueArray** %return_vals, align 8
  %18 = load i32, i32* %success, align 4
  %tobool8 = icmp ne i32 %18, 0
  br i1 %tobool8, label %if.then.9, label %if.end.12

if.then.9:                                        ; preds = %cond.end
  %19 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values10 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %19, i32 0, i32 1
  %20 = load %struct._GValue*, %struct._GValue** %values10, align 8
  %arrayidx11 = getelementptr inbounds %struct._GValue, %struct._GValue* %20, i64 1
  %21 = load i32, i32* %non_empty, align 4
  call void @g_value_set_boolean(%struct._GValue* %arrayidx11, i32 %21)
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.9, %cond.end
  %22 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %22
}

declare %struct._GParamSpec* @gimp_param_spec_image_id(i8*, i8*, i8*, %struct._Gimp*, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @edit_paste_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  %paste_into = alloca i32, align 4
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
  %call = call %struct._GimpDrawable* @gimp_value_get_drawable(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpDrawable* %call, %struct._GimpDrawable** %drawable, align 8
  %3 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %3, i32 0, i32 1
  %4 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %4, i64 1
  %call3 = call i32 @g_value_get_boolean(%struct._GValue* %arrayidx2)
  store i32 %call3, i32* %paste_into, align 4
  %5 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end.23

if.then:                                          ; preds = %entry
  %6 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %global_buffer = getelementptr inbounds %struct._Gimp, %struct._Gimp* %6, i32 0, i32 34
  %7 = load %struct._GimpBuffer*, %struct._GimpBuffer** %global_buffer, align 8
  %tobool4 = icmp ne %struct._GimpBuffer* %7, null
  br i1 %tobool4, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %8 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %9 = bitcast %struct._GimpDrawable* %8 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_item_get_type() #4
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call5)
  %10 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpItem*
  %11 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call7 = call i32 @gimp_pdb_item_is_attached(%struct._GimpItem* %10, %struct._GimpImage* null, i32 1, %struct._GError** %11)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %land.lhs.true.9, label %if.else

land.lhs.true.9:                                  ; preds = %land.lhs.true
  %12 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %13 = bitcast %struct._GimpDrawable* %12 to %struct._GTypeInstance*
  %call10 = call i64 @gimp_item_get_type() #4
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call10)
  %14 = bitcast %struct._GTypeInstance* %call11 to %struct._GimpItem*
  %15 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call12 = call i32 @gimp_pdb_item_is_not_group(%struct._GimpItem* %14, %struct._GError** %15)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %land.lhs.true.9
  %16 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %17 = bitcast %struct._GimpDrawable* %16 to %struct._GTypeInstance*
  %call15 = call i64 @gimp_item_get_type() #4
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call15)
  %18 = bitcast %struct._GTypeInstance* %call16 to %struct._GimpItem*
  %call17 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %18)
  %19 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %20 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %global_buffer18 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %20, i32 0, i32 34
  %21 = load %struct._GimpBuffer*, %struct._GimpBuffer** %global_buffer18, align 8
  %22 = load i32, i32* %paste_into, align 4
  %call19 = call %struct._GimpLayer* @gimp_edit_paste(%struct._GimpImage* %call17, %struct._GimpDrawable* %19, %struct._GimpBuffer* %21, i32 %22, i32 -1, i32 -1, i32 -1, i32 -1)
  store %struct._GimpLayer* %call19, %struct._GimpLayer** %floating_sel, align 8
  %23 = load %struct._GimpLayer*, %struct._GimpLayer** %floating_sel, align 8
  %tobool20 = icmp ne %struct._GimpLayer* %23, null
  br i1 %tobool20, label %if.end, label %if.then.21

if.then.21:                                       ; preds = %if.then.14
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.21, %if.then.14
  br label %if.end.22

if.else:                                          ; preds = %land.lhs.true.9, %land.lhs.true, %if.then
  store i32 0, i32* %success, align 4
  br label %if.end.22

if.end.22:                                        ; preds = %if.else, %if.end
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %entry
  %24 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %25 = load i32, i32* %success, align 4
  %26 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool24 = icmp ne %struct._GError** %26, null
  br i1 %tobool24, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.23
  %27 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %28 = load %struct._GError*, %struct._GError** %27, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.23
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %28, %cond.true ], [ null, %cond.false ]
  %call25 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %24, i32 %25, %struct._GError* %cond)
  store %struct._GValueArray* %call25, %struct._GValueArray** %return_vals, align 8
  %29 = load i32, i32* %success, align 4
  %tobool26 = icmp ne i32 %29, 0
  br i1 %tobool26, label %if.then.27, label %if.end.30

if.then.27:                                       ; preds = %cond.end
  %30 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values28 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %30, i32 0, i32 1
  %31 = load %struct._GValue*, %struct._GValue** %values28, align 8
  %arrayidx29 = getelementptr inbounds %struct._GValue, %struct._GValue* %31, i64 1
  %32 = load %struct._GimpLayer*, %struct._GimpLayer** %floating_sel, align 8
  call void @gimp_value_set_layer(%struct._GValue* %arrayidx29, %struct._GimpLayer* %32)
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.27, %cond.end
  %33 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %33
}

declare %struct._GParamSpec* @gimp_param_spec_layer_id(i8*, i8*, i8*, %struct._Gimp*, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @edit_paste_as_new_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store %struct._GimpImage* null, %struct._GimpImage** %image, align 8
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %global_buffer = getelementptr inbounds %struct._Gimp, %struct._Gimp* %0, i32 0, i32 34
  %1 = load %struct._GimpBuffer*, %struct._GimpBuffer** %global_buffer, align 8
  %tobool = icmp ne %struct._GimpBuffer* %1, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %3 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %global_buffer1 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %3, i32 0, i32 34
  %4 = load %struct._GimpBuffer*, %struct._GimpBuffer** %global_buffer1, align 8
  %call = call %struct._GimpImage* @gimp_image_new_from_buffer(%struct._Gimp* %2, %struct._GimpImage* null, %struct._GimpBuffer* %4)
  store %struct._GimpImage* %call, %struct._GimpImage** %image, align 8
  %5 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool2 = icmp ne %struct._GimpImage* %5, null
  br i1 %tobool2, label %if.end, label %if.then.3

if.then.3:                                        ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  br label %if.end.4

if.else:                                          ; preds = %entry
  store %struct._GimpImage* null, %struct._GimpImage** %image, align 8
  br label %if.end.4

if.end.4:                                         ; preds = %if.else, %if.end
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
  br i1 %tobool7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %cond.end
  %12 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %12, i32 0, i32 1
  %13 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %13, i64 1
  %14 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_value_set_image(%struct._GValue* %arrayidx, %struct._GimpImage* %14)
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %cond.end
  %15 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %15
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @edit_named_cut_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  %buffer_name = alloca i8*, align 8
  %real_name = alloca i8*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %my_error = alloca %struct._GError*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store i8* null, i8** %real_name, align 8
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
  %call3 = call i8* @g_value_get_string(%struct._GValue* %arrayidx2)
  store i8* %call3, i8** %buffer_name, align 8
  %5 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end.23

if.then:                                          ; preds = %entry
  %6 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %7 = bitcast %struct._GimpDrawable* %6 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_item_get_type() #4
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call4)
  %8 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpItem*
  %9 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call6 = call i32 @gimp_pdb_item_is_attached(%struct._GimpItem* %8, %struct._GimpImage* null, i32 1, %struct._GError** %9)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %land.lhs.true, label %if.else.21

land.lhs.true:                                    ; preds = %if.then
  %10 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %11 = bitcast %struct._GimpDrawable* %10 to %struct._GTypeInstance*
  %call8 = call i64 @gimp_item_get_type() #4
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call8)
  %12 = bitcast %struct._GTypeInstance* %call9 to %struct._GimpItem*
  %13 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call10 = call i32 @gimp_pdb_item_is_not_group(%struct._GimpItem* %12, %struct._GError** %13)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.then.12, label %if.else.21

if.then.12:                                       ; preds = %land.lhs.true
  %14 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %15 = bitcast %struct._GimpDrawable* %14 to %struct._GTypeInstance*
  %call13 = call i64 @gimp_item_get_type() #4
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call13)
  %16 = bitcast %struct._GTypeInstance* %call14 to %struct._GimpItem*
  %call15 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %16)
  store %struct._GimpImage* %call15, %struct._GimpImage** %image, align 8
  store %struct._GError* null, %struct._GError** %my_error, align 8
  %17 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %18 = load i8*, i8** %buffer_name, align 8
  %19 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %20 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %call16 = call i8* @gimp_edit_named_cut(%struct._GimpImage* %17, i8* %18, %struct._GimpDrawable* %19, %struct._GimpContext* %20, %struct._GError** %my_error)
  store i8* %call16, i8** %real_name, align 8
  %21 = load i8*, i8** %real_name, align 8
  %tobool17 = icmp ne i8* %21, null
  br i1 %tobool17, label %if.then.18, label %if.else

if.then.18:                                       ; preds = %if.then.12
  %22 = load i8*, i8** %real_name, align 8
  %call19 = call noalias i8* @g_strdup(i8* %22)
  store i8* %call19, i8** %real_name, align 8
  br label %if.end

if.else:                                          ; preds = %if.then.12
  %23 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %24 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %25 = bitcast %struct._GimpProgress* %24 to %struct._GTypeInstance*
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 80)
  %26 = bitcast %struct._GTypeInstance* %call20 to %struct._GObject*
  %27 = load %struct._GError*, %struct._GError** %my_error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %27, i32 0, i32 2
  %28 = load i8*, i8** %message, align 8
  call void @gimp_message_literal(%struct._Gimp* %23, %struct._GObject* %26, i32 1, i8* %28)
  call void @g_clear_error(%struct._GError** %my_error)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.18
  br label %if.end.22

if.else.21:                                       ; preds = %land.lhs.true, %if.then
  store i32 0, i32* %success, align 4
  br label %if.end.22

if.end.22:                                        ; preds = %if.else.21, %if.end
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %entry
  %29 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %30 = load i32, i32* %success, align 4
  %31 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool24 = icmp ne %struct._GError** %31, null
  br i1 %tobool24, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.23
  %32 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %33 = load %struct._GError*, %struct._GError** %32, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.23
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %33, %cond.true ], [ null, %cond.false ]
  %call25 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %29, i32 %30, %struct._GError* %cond)
  store %struct._GValueArray* %call25, %struct._GValueArray** %return_vals, align 8
  %34 = load i32, i32* %success, align 4
  %tobool26 = icmp ne i32 %34, 0
  br i1 %tobool26, label %if.then.27, label %if.end.30

if.then.27:                                       ; preds = %cond.end
  %35 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values28 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %35, i32 0, i32 1
  %36 = load %struct._GValue*, %struct._GValue** %values28, align 8
  %arrayidx29 = getelementptr inbounds %struct._GValue, %struct._GValue* %36, i64 1
  %37 = load i8*, i8** %real_name, align 8
  call void @g_value_take_string(%struct._GValue* %arrayidx29, i8* %37)
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.27, %cond.end
  %38 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %38
}

declare %struct._GParamSpec* @gimp_param_spec_string(i8*, i8*, i8*, i32, i32, i32, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @edit_named_copy_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  %buffer_name = alloca i8*, align 8
  %real_name = alloca i8*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %my_error = alloca %struct._GError*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store i8* null, i8** %real_name, align 8
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
  %call3 = call i8* @g_value_get_string(%struct._GValue* %arrayidx2)
  store i8* %call3, i8** %buffer_name, align 8
  %5 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end.19

if.then:                                          ; preds = %entry
  %6 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %7 = bitcast %struct._GimpDrawable* %6 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_item_get_type() #4
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call4)
  %8 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpItem*
  %9 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call6 = call i32 @gimp_pdb_item_is_attached(%struct._GimpItem* %8, %struct._GimpImage* null, i32 0, %struct._GError** %9)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.then.8, label %if.else.17

if.then.8:                                        ; preds = %if.then
  %10 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %11 = bitcast %struct._GimpDrawable* %10 to %struct._GTypeInstance*
  %call9 = call i64 @gimp_item_get_type() #4
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call9)
  %12 = bitcast %struct._GTypeInstance* %call10 to %struct._GimpItem*
  %call11 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %12)
  store %struct._GimpImage* %call11, %struct._GimpImage** %image, align 8
  store %struct._GError* null, %struct._GError** %my_error, align 8
  %13 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %14 = load i8*, i8** %buffer_name, align 8
  %15 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %16 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %call12 = call i8* @gimp_edit_named_copy(%struct._GimpImage* %13, i8* %14, %struct._GimpDrawable* %15, %struct._GimpContext* %16, %struct._GError** %my_error)
  store i8* %call12, i8** %real_name, align 8
  %17 = load i8*, i8** %real_name, align 8
  %tobool13 = icmp ne i8* %17, null
  br i1 %tobool13, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %if.then.8
  %18 = load i8*, i8** %real_name, align 8
  %call15 = call noalias i8* @g_strdup(i8* %18)
  store i8* %call15, i8** %real_name, align 8
  br label %if.end

if.else:                                          ; preds = %if.then.8
  %19 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %20 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %21 = bitcast %struct._GimpProgress* %20 to %struct._GTypeInstance*
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 80)
  %22 = bitcast %struct._GTypeInstance* %call16 to %struct._GObject*
  %23 = load %struct._GError*, %struct._GError** %my_error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %23, i32 0, i32 2
  %24 = load i8*, i8** %message, align 8
  call void @gimp_message_literal(%struct._Gimp* %19, %struct._GObject* %22, i32 1, i8* %24)
  call void @g_clear_error(%struct._GError** %my_error)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.14
  br label %if.end.18

if.else.17:                                       ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end.18

if.end.18:                                        ; preds = %if.else.17, %if.end
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %entry
  %25 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %26 = load i32, i32* %success, align 4
  %27 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool20 = icmp ne %struct._GError** %27, null
  br i1 %tobool20, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.19
  %28 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %29 = load %struct._GError*, %struct._GError** %28, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.19
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %29, %cond.true ], [ null, %cond.false ]
  %call21 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %25, i32 %26, %struct._GError* %cond)
  store %struct._GValueArray* %call21, %struct._GValueArray** %return_vals, align 8
  %30 = load i32, i32* %success, align 4
  %tobool22 = icmp ne i32 %30, 0
  br i1 %tobool22, label %if.then.23, label %if.end.26

if.then.23:                                       ; preds = %cond.end
  %31 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values24 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %31, i32 0, i32 1
  %32 = load %struct._GValue*, %struct._GValue** %values24, align 8
  %arrayidx25 = getelementptr inbounds %struct._GValue, %struct._GValue* %32, i64 1
  %33 = load i8*, i8** %real_name, align 8
  call void @g_value_take_string(%struct._GValue* %arrayidx25, i8* %33)
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.23, %cond.end
  %34 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %34
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @edit_named_copy_visible_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  %buffer_name = alloca i8*, align 8
  %real_name = alloca i8*, align 8
  %my_error = alloca %struct._GError*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store i8* null, i8** %real_name, align 8
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
  store i8* %call3, i8** %buffer_name, align 8
  %5 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end.9

if.then:                                          ; preds = %entry
  store %struct._GError* null, %struct._GError** %my_error, align 8
  %6 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %7 = load i8*, i8** %buffer_name, align 8
  %8 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %call4 = call i8* @gimp_edit_named_copy_visible(%struct._GimpImage* %6, i8* %7, %struct._GimpContext* %8, %struct._GError** %my_error)
  store i8* %call4, i8** %real_name, align 8
  %9 = load i8*, i8** %real_name, align 8
  %tobool5 = icmp ne i8* %9, null
  br i1 %tobool5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.then
  %10 = load i8*, i8** %real_name, align 8
  %call7 = call noalias i8* @g_strdup(i8* %10)
  store i8* %call7, i8** %real_name, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  %11 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %12 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %13 = bitcast %struct._GimpProgress* %12 to %struct._GTypeInstance*
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 80)
  %14 = bitcast %struct._GTypeInstance* %call8 to %struct._GObject*
  %15 = load %struct._GError*, %struct._GError** %my_error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %15, i32 0, i32 2
  %16 = load i8*, i8** %message, align 8
  call void @gimp_message_literal(%struct._Gimp* %11, %struct._GObject* %14, i32 1, i8* %16)
  call void @g_clear_error(%struct._GError** %my_error)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.6
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %entry
  %17 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %18 = load i32, i32* %success, align 4
  %19 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool10 = icmp ne %struct._GError** %19, null
  br i1 %tobool10, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.9
  %20 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %21 = load %struct._GError*, %struct._GError** %20, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.9
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %21, %cond.true ], [ null, %cond.false ]
  %call11 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %17, i32 %18, %struct._GError* %cond)
  store %struct._GValueArray* %call11, %struct._GValueArray** %return_vals, align 8
  %22 = load i32, i32* %success, align 4
  %tobool12 = icmp ne i32 %22, 0
  br i1 %tobool12, label %if.then.13, label %if.end.16

if.then.13:                                       ; preds = %cond.end
  %23 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values14 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %23, i32 0, i32 1
  %24 = load %struct._GValue*, %struct._GValue** %values14, align 8
  %arrayidx15 = getelementptr inbounds %struct._GValue, %struct._GValue* %24, i64 1
  %25 = load i8*, i8** %real_name, align 8
  call void @g_value_take_string(%struct._GValue* %arrayidx15, i8* %25)
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.13, %cond.end
  %26 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %26
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @edit_named_paste_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  %buffer_name = alloca i8*, align 8
  %paste_into = alloca i32, align 4
  %floating_sel = alloca %struct._GimpLayer*, align 8
  %buffer = alloca %struct._GimpBuffer*, align 8
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
  %call = call %struct._GimpDrawable* @gimp_value_get_drawable(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpDrawable* %call, %struct._GimpDrawable** %drawable, align 8
  %3 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %3, i32 0, i32 1
  %4 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %4, i64 1
  %call3 = call i8* @g_value_get_string(%struct._GValue* %arrayidx2)
  store i8* %call3, i8** %buffer_name, align 8
  %5 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values4 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %5, i32 0, i32 1
  %6 = load %struct._GValue*, %struct._GValue** %values4, align 8
  %arrayidx5 = getelementptr inbounds %struct._GValue, %struct._GValue* %6, i64 2
  %call6 = call i32 @g_value_get_boolean(%struct._GValue* %arrayidx5)
  store i32 %call6, i32* %paste_into, align 4
  %7 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then, label %if.end.26

if.then:                                          ; preds = %entry
  %8 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %9 = load i8*, i8** %buffer_name, align 8
  %10 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call7 = call %struct._GimpBuffer* @gimp_pdb_get_buffer(%struct._Gimp* %8, i8* %9, %struct._GError** %10)
  store %struct._GimpBuffer* %call7, %struct._GimpBuffer** %buffer, align 8
  %11 = load %struct._GimpBuffer*, %struct._GimpBuffer** %buffer, align 8
  %tobool8 = icmp ne %struct._GimpBuffer* %11, null
  br i1 %tobool8, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %12 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %13 = bitcast %struct._GimpDrawable* %12 to %struct._GTypeInstance*
  %call9 = call i64 @gimp_item_get_type() #4
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call9)
  %14 = bitcast %struct._GTypeInstance* %call10 to %struct._GimpItem*
  %15 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call11 = call i32 @gimp_pdb_item_is_attached(%struct._GimpItem* %14, %struct._GimpImage* null, i32 1, %struct._GError** %15)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %land.lhs.true.13, label %if.else

land.lhs.true.13:                                 ; preds = %land.lhs.true
  %16 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %17 = bitcast %struct._GimpDrawable* %16 to %struct._GTypeInstance*
  %call14 = call i64 @gimp_item_get_type() #4
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call14)
  %18 = bitcast %struct._GTypeInstance* %call15 to %struct._GimpItem*
  %19 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call16 = call i32 @gimp_pdb_item_is_not_group(%struct._GimpItem* %18, %struct._GError** %19)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.then.18, label %if.else

if.then.18:                                       ; preds = %land.lhs.true.13
  %20 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %21 = bitcast %struct._GimpDrawable* %20 to %struct._GTypeInstance*
  %call19 = call i64 @gimp_item_get_type() #4
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call19)
  %22 = bitcast %struct._GTypeInstance* %call20 to %struct._GimpItem*
  %call21 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %22)
  %23 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %24 = load %struct._GimpBuffer*, %struct._GimpBuffer** %buffer, align 8
  %25 = load i32, i32* %paste_into, align 4
  %call22 = call %struct._GimpLayer* @gimp_edit_paste(%struct._GimpImage* %call21, %struct._GimpDrawable* %23, %struct._GimpBuffer* %24, i32 %25, i32 -1, i32 -1, i32 -1, i32 -1)
  store %struct._GimpLayer* %call22, %struct._GimpLayer** %floating_sel, align 8
  %26 = load %struct._GimpLayer*, %struct._GimpLayer** %floating_sel, align 8
  %tobool23 = icmp ne %struct._GimpLayer* %26, null
  br i1 %tobool23, label %if.end, label %if.then.24

if.then.24:                                       ; preds = %if.then.18
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.24, %if.then.18
  br label %if.end.25

if.else:                                          ; preds = %land.lhs.true.13, %land.lhs.true, %if.then
  store i32 0, i32* %success, align 4
  br label %if.end.25

if.end.25:                                        ; preds = %if.else, %if.end
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %entry
  %27 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %28 = load i32, i32* %success, align 4
  %29 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool27 = icmp ne %struct._GError** %29, null
  br i1 %tobool27, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.26
  %30 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %31 = load %struct._GError*, %struct._GError** %30, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.26
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %31, %cond.true ], [ null, %cond.false ]
  %call28 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %27, i32 %28, %struct._GError* %cond)
  store %struct._GValueArray* %call28, %struct._GValueArray** %return_vals, align 8
  %32 = load i32, i32* %success, align 4
  %tobool29 = icmp ne i32 %32, 0
  br i1 %tobool29, label %if.then.30, label %if.end.33

if.then.30:                                       ; preds = %cond.end
  %33 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values31 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %33, i32 0, i32 1
  %34 = load %struct._GValue*, %struct._GValue** %values31, align 8
  %arrayidx32 = getelementptr inbounds %struct._GValue, %struct._GValue* %34, i64 1
  %35 = load %struct._GimpLayer*, %struct._GimpLayer** %floating_sel, align 8
  call void @gimp_value_set_layer(%struct._GValue* %arrayidx32, %struct._GimpLayer* %35)
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.30, %cond.end
  %36 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %36
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @edit_named_paste_as_new_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %return_vals = alloca %struct._GValueArray*, align 8
  %buffer_name = alloca i8*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %buffer = alloca %struct._GimpBuffer*, align 8
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
  %call = call i8* @g_value_get_string(%struct._GValue* %arrayidx)
  store i8* %call, i8** %buffer_name, align 8
  %2 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end.8

if.then:                                          ; preds = %entry
  %3 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %4 = load i8*, i8** %buffer_name, align 8
  %5 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call1 = call %struct._GimpBuffer* @gimp_pdb_get_buffer(%struct._Gimp* %3, i8* %4, %struct._GError** %5)
  store %struct._GimpBuffer* %call1, %struct._GimpBuffer** %buffer, align 8
  %6 = load %struct._GimpBuffer*, %struct._GimpBuffer** %buffer, align 8
  %tobool2 = icmp ne %struct._GimpBuffer* %6, null
  br i1 %tobool2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  %7 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %8 = load %struct._GimpBuffer*, %struct._GimpBuffer** %buffer, align 8
  %call4 = call %struct._GimpImage* @gimp_image_new_from_buffer(%struct._Gimp* %7, %struct._GimpImage* null, %struct._GimpBuffer* %8)
  store %struct._GimpImage* %call4, %struct._GimpImage** %image, align 8
  %9 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool5 = icmp ne %struct._GimpImage* %9, null
  br i1 %tobool5, label %if.end, label %if.then.6

if.then.6:                                        ; preds = %if.then.3
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.6, %if.then.3
  br label %if.end.7

if.else:                                          ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end.7

if.end.7:                                         ; preds = %if.else, %if.end
  br label %if.end.8

if.end.8:                                         ; preds = %if.end.7, %entry
  %10 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %11 = load i32, i32* %success, align 4
  %12 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool9 = icmp ne %struct._GError** %12, null
  br i1 %tobool9, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.8
  %13 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %14 = load %struct._GError*, %struct._GError** %13, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %14, %cond.true ], [ null, %cond.false ]
  %call10 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %10, i32 %11, %struct._GError* %cond)
  store %struct._GValueArray* %call10, %struct._GValueArray** %return_vals, align 8
  %15 = load i32, i32* %success, align 4
  %tobool11 = icmp ne i32 %15, 0
  br i1 %tobool11, label %if.then.12, label %if.end.15

if.then.12:                                       ; preds = %cond.end
  %16 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values13 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %16, i32 0, i32 1
  %17 = load %struct._GValue*, %struct._GValue** %values13, align 8
  %arrayidx14 = getelementptr inbounds %struct._GValue, %struct._GValue* %17, i64 1
  %18 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_value_set_image(%struct._GValue* %arrayidx14, %struct._GimpImage* %18)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.12, %cond.end
  %19 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %19
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @edit_clear_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  %3 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end.14

if.then:                                          ; preds = %entry
  %4 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %5 = bitcast %struct._GimpDrawable* %4 to %struct._GTypeInstance*
  %call1 = call i64 @gimp_item_get_type() #4
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call1)
  %6 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpItem*
  %7 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call3 = call i32 @gimp_pdb_item_is_attached(%struct._GimpItem* %6, %struct._GimpImage* null, i32 1, %struct._GError** %7)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %8 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %9 = bitcast %struct._GimpDrawable* %8 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_item_get_type() #4
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call5)
  %10 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpItem*
  %11 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call7 = call i32 @gimp_pdb_item_is_not_group(%struct._GimpItem* %10, %struct._GError** %11)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %land.lhs.true
  %12 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %13 = bitcast %struct._GimpDrawable* %12 to %struct._GTypeInstance*
  %call10 = call i64 @gimp_item_get_type() #4
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call10)
  %14 = bitcast %struct._GTypeInstance* %call11 to %struct._GimpItem*
  %call12 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %14)
  store %struct._GimpImage* %call12, %struct._GimpImage** %image, align 8
  %15 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %16 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %17 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %call13 = call i32 @gimp_edit_clear(%struct._GimpImage* %15, %struct._GimpDrawable* %16, %struct._GimpContext* %17)
  store i32 %call13, i32* %success, align 4
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.9
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

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @edit_fill_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  %call3 = call i32 @g_value_get_enum(%struct._GValue* %arrayidx2)
  store i32 %call3, i32* %fill_type, align 4
  %5 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end.17

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
  %14 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %15 = bitcast %struct._GimpDrawable* %14 to %struct._GTypeInstance*
  %call13 = call i64 @gimp_item_get_type() #4
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call13)
  %16 = bitcast %struct._GTypeInstance* %call14 to %struct._GimpItem*
  %call15 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %16)
  store %struct._GimpImage* %call15, %struct._GimpImage** %image, align 8
  %17 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %18 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %19 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %20 = load i32, i32* %fill_type, align 4
  %call16 = call i32 @gimp_edit_fill(%struct._GimpImage* %17, %struct._GimpDrawable* %18, %struct._GimpContext* %19, i32 %20)
  store i32 %call16, i32* %success, align 4
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.12
  br label %if.end.17

if.end.17:                                        ; preds = %if.end, %entry
  %21 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %22 = load i32, i32* %success, align 4
  %23 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool18 = icmp ne %struct._GError** %23, null
  br i1 %tobool18, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.17
  %24 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %25 = load %struct._GError*, %struct._GError** %24, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.17
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %25, %cond.true ], [ null, %cond.false ]
  %call19 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %21, i32 %22, %struct._GError* %cond)
  ret %struct._GValueArray* %call19
}

declare %struct._GParamSpec* @g_param_spec_enum(i8*, i8*, i8*, i64, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_fill_type_get_type() #2

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @edit_bucket_fill_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %drawable = alloca %struct._GimpDrawable*, align 8
  %fill_mode = alloca i32, align 4
  %paint_mode = alloca i32, align 4
  %opacity = alloca double, align 8
  %threshold = alloca double, align 8
  %sample_merged = alloca i32, align 4
  %x = alloca double, align 8
  %y = alloca double, align 8
  %image = alloca %struct._GimpImage*, align 8
  %do_seed_fill = alloca i32, align 4
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
  store i32 %call3, i32* %fill_mode, align 4
  %5 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values4 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %5, i32 0, i32 1
  %6 = load %struct._GValue*, %struct._GValue** %values4, align 8
  %arrayidx5 = getelementptr inbounds %struct._GValue, %struct._GValue* %6, i64 2
  %call6 = call i32 @g_value_get_enum(%struct._GValue* %arrayidx5)
  store i32 %call6, i32* %paint_mode, align 4
  %7 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values7 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %7, i32 0, i32 1
  %8 = load %struct._GValue*, %struct._GValue** %values7, align 8
  %arrayidx8 = getelementptr inbounds %struct._GValue, %struct._GValue* %8, i64 3
  %call9 = call double @g_value_get_double(%struct._GValue* %arrayidx8)
  store double %call9, double* %opacity, align 8
  %9 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values10 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %9, i32 0, i32 1
  %10 = load %struct._GValue*, %struct._GValue** %values10, align 8
  %arrayidx11 = getelementptr inbounds %struct._GValue, %struct._GValue* %10, i64 4
  %call12 = call double @g_value_get_double(%struct._GValue* %arrayidx11)
  store double %call12, double* %threshold, align 8
  %11 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values13 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %11, i32 0, i32 1
  %12 = load %struct._GValue*, %struct._GValue** %values13, align 8
  %arrayidx14 = getelementptr inbounds %struct._GValue, %struct._GValue* %12, i64 5
  %call15 = call i32 @g_value_get_boolean(%struct._GValue* %arrayidx14)
  store i32 %call15, i32* %sample_merged, align 4
  %13 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values16 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %13, i32 0, i32 1
  %14 = load %struct._GValue*, %struct._GValue** %values16, align 8
  %arrayidx17 = getelementptr inbounds %struct._GValue, %struct._GValue* %14, i64 6
  %call18 = call double @g_value_get_double(%struct._GValue* %arrayidx17)
  store double %call18, double* %x, align 8
  %15 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values19 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %15, i32 0, i32 1
  %16 = load %struct._GValue*, %struct._GValue** %values19, align 8
  %arrayidx20 = getelementptr inbounds %struct._GValue, %struct._GValue* %16, i64 7
  %call21 = call double @g_value_get_double(%struct._GValue* %arrayidx20)
  store double %call21, double* %y, align 8
  %17 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %17, 0
  br i1 %tobool, label %if.then, label %if.end.37

if.then:                                          ; preds = %entry
  %18 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %19 = bitcast %struct._GimpDrawable* %18 to %struct._GTypeInstance*
  %call22 = call i64 @gimp_item_get_type() #4
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call22)
  %20 = bitcast %struct._GTypeInstance* %call23 to %struct._GimpItem*
  %21 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call24 = call i32 @gimp_pdb_item_is_attached(%struct._GimpItem* %20, %struct._GimpImage* null, i32 1, %struct._GError** %21)
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %22 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %23 = bitcast %struct._GimpDrawable* %22 to %struct._GTypeInstance*
  %call26 = call i64 @gimp_item_get_type() #4
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call26)
  %24 = bitcast %struct._GTypeInstance* %call27 to %struct._GimpItem*
  %25 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call28 = call i32 @gimp_pdb_item_is_not_group(%struct._GimpItem* %24, %struct._GError** %25)
  %tobool29 = icmp ne i32 %call28, 0
  br i1 %tobool29, label %if.then.30, label %if.else

if.then.30:                                       ; preds = %land.lhs.true
  %26 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %27 = bitcast %struct._GimpDrawable* %26 to %struct._GTypeInstance*
  %call31 = call i64 @gimp_item_get_type() #4
  %call32 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call31)
  %28 = bitcast %struct._GTypeInstance* %call32 to %struct._GimpItem*
  %call33 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %28)
  store %struct._GimpImage* %call33, %struct._GimpImage** %image, align 8
  %29 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call34 = call %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage* %29)
  %call35 = call i32 @gimp_channel_is_empty(%struct._GimpChannel* %call34)
  store i32 %call35, i32* %do_seed_fill, align 4
  %30 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %31 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %32 = load i32, i32* %fill_mode, align 4
  %33 = load i32, i32* %paint_mode, align 4
  %34 = load double, double* %opacity, align 8
  %div = fdiv double %34, 1.000000e+02
  %35 = load i32, i32* %do_seed_fill, align 4
  %36 = load double, double* %threshold, align 8
  %37 = load i32, i32* %sample_merged, align 4
  %38 = load double, double* %x, align 8
  %39 = load double, double* %y, align 8
  %40 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call36 = call i32 @gimp_drawable_bucket_fill(%struct._GimpDrawable* %30, %struct._GimpContext* %31, i32 %32, i32 %33, double %div, i32 %35, i32 0, i32 0, double %36, i32 %37, double %38, double %39, %struct._GError** %40)
  store i32 %call36, i32* %success, align 4
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.30
  br label %if.end.37

if.end.37:                                        ; preds = %if.end, %entry
  %41 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %42 = load i32, i32* %success, align 4
  %43 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool38 = icmp ne %struct._GError** %43, null
  br i1 %tobool38, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.37
  %44 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %45 = load %struct._GError*, %struct._GError** %44, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.37
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %45, %cond.true ], [ null, %cond.false ]
  %call39 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %41, i32 %42, %struct._GError* %cond)
  ret %struct._GValueArray* %call39
}

; Function Attrs: nounwind readnone
declare i64 @gimp_bucket_fill_mode_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_layer_mode_effects_get_type() #2

declare %struct._GParamSpec* @g_param_spec_double(i8*, i8*, i8*, double, double, double, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @edit_bucket_fill_full_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %drawable = alloca %struct._GimpDrawable*, align 8
  %fill_mode = alloca i32, align 4
  %paint_mode = alloca i32, align 4
  %opacity = alloca double, align 8
  %threshold = alloca double, align 8
  %sample_merged = alloca i32, align 4
  %fill_transparent = alloca i32, align 4
  %select_criterion = alloca i32, align 4
  %x = alloca double, align 8
  %y = alloca double, align 8
  %image = alloca %struct._GimpImage*, align 8
  %do_seed_fill = alloca i32, align 4
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
  store i32 %call3, i32* %fill_mode, align 4
  %5 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values4 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %5, i32 0, i32 1
  %6 = load %struct._GValue*, %struct._GValue** %values4, align 8
  %arrayidx5 = getelementptr inbounds %struct._GValue, %struct._GValue* %6, i64 2
  %call6 = call i32 @g_value_get_enum(%struct._GValue* %arrayidx5)
  store i32 %call6, i32* %paint_mode, align 4
  %7 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values7 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %7, i32 0, i32 1
  %8 = load %struct._GValue*, %struct._GValue** %values7, align 8
  %arrayidx8 = getelementptr inbounds %struct._GValue, %struct._GValue* %8, i64 3
  %call9 = call double @g_value_get_double(%struct._GValue* %arrayidx8)
  store double %call9, double* %opacity, align 8
  %9 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values10 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %9, i32 0, i32 1
  %10 = load %struct._GValue*, %struct._GValue** %values10, align 8
  %arrayidx11 = getelementptr inbounds %struct._GValue, %struct._GValue* %10, i64 4
  %call12 = call double @g_value_get_double(%struct._GValue* %arrayidx11)
  store double %call12, double* %threshold, align 8
  %11 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values13 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %11, i32 0, i32 1
  %12 = load %struct._GValue*, %struct._GValue** %values13, align 8
  %arrayidx14 = getelementptr inbounds %struct._GValue, %struct._GValue* %12, i64 5
  %call15 = call i32 @g_value_get_boolean(%struct._GValue* %arrayidx14)
  store i32 %call15, i32* %sample_merged, align 4
  %13 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values16 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %13, i32 0, i32 1
  %14 = load %struct._GValue*, %struct._GValue** %values16, align 8
  %arrayidx17 = getelementptr inbounds %struct._GValue, %struct._GValue* %14, i64 6
  %call18 = call i32 @g_value_get_boolean(%struct._GValue* %arrayidx17)
  store i32 %call18, i32* %fill_transparent, align 4
  %15 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values19 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %15, i32 0, i32 1
  %16 = load %struct._GValue*, %struct._GValue** %values19, align 8
  %arrayidx20 = getelementptr inbounds %struct._GValue, %struct._GValue* %16, i64 7
  %call21 = call i32 @g_value_get_enum(%struct._GValue* %arrayidx20)
  store i32 %call21, i32* %select_criterion, align 4
  %17 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values22 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %17, i32 0, i32 1
  %18 = load %struct._GValue*, %struct._GValue** %values22, align 8
  %arrayidx23 = getelementptr inbounds %struct._GValue, %struct._GValue* %18, i64 8
  %call24 = call double @g_value_get_double(%struct._GValue* %arrayidx23)
  store double %call24, double* %x, align 8
  %19 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values25 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %19, i32 0, i32 1
  %20 = load %struct._GValue*, %struct._GValue** %values25, align 8
  %arrayidx26 = getelementptr inbounds %struct._GValue, %struct._GValue* %20, i64 9
  %call27 = call double @g_value_get_double(%struct._GValue* %arrayidx26)
  store double %call27, double* %y, align 8
  %21 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %21, 0
  br i1 %tobool, label %if.then, label %if.end.43

if.then:                                          ; preds = %entry
  %22 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %23 = bitcast %struct._GimpDrawable* %22 to %struct._GTypeInstance*
  %call28 = call i64 @gimp_item_get_type() #4
  %call29 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call28)
  %24 = bitcast %struct._GTypeInstance* %call29 to %struct._GimpItem*
  %25 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call30 = call i32 @gimp_pdb_item_is_attached(%struct._GimpItem* %24, %struct._GimpImage* null, i32 1, %struct._GError** %25)
  %tobool31 = icmp ne i32 %call30, 0
  br i1 %tobool31, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %26 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %27 = bitcast %struct._GimpDrawable* %26 to %struct._GTypeInstance*
  %call32 = call i64 @gimp_item_get_type() #4
  %call33 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call32)
  %28 = bitcast %struct._GTypeInstance* %call33 to %struct._GimpItem*
  %29 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call34 = call i32 @gimp_pdb_item_is_not_group(%struct._GimpItem* %28, %struct._GError** %29)
  %tobool35 = icmp ne i32 %call34, 0
  br i1 %tobool35, label %if.then.36, label %if.else

if.then.36:                                       ; preds = %land.lhs.true
  %30 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %31 = bitcast %struct._GimpDrawable* %30 to %struct._GTypeInstance*
  %call37 = call i64 @gimp_item_get_type() #4
  %call38 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 %call37)
  %32 = bitcast %struct._GTypeInstance* %call38 to %struct._GimpItem*
  %call39 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %32)
  store %struct._GimpImage* %call39, %struct._GimpImage** %image, align 8
  %33 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call40 = call %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage* %33)
  %call41 = call i32 @gimp_channel_is_empty(%struct._GimpChannel* %call40)
  store i32 %call41, i32* %do_seed_fill, align 4
  %34 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %35 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %36 = load i32, i32* %fill_mode, align 4
  %37 = load i32, i32* %paint_mode, align 4
  %38 = load double, double* %opacity, align 8
  %div = fdiv double %38, 1.000000e+02
  %39 = load i32, i32* %do_seed_fill, align 4
  %40 = load i32, i32* %fill_transparent, align 4
  %41 = load i32, i32* %select_criterion, align 4
  %42 = load double, double* %threshold, align 8
  %43 = load i32, i32* %sample_merged, align 4
  %44 = load double, double* %x, align 8
  %45 = load double, double* %y, align 8
  %46 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call42 = call i32 @gimp_drawable_bucket_fill(%struct._GimpDrawable* %34, %struct._GimpContext* %35, i32 %36, i32 %37, double %div, i32 %39, i32 %40, i32 %41, double %42, i32 %43, double %44, double %45, %struct._GError** %46)
  store i32 %call42, i32* %success, align 4
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.36
  br label %if.end.43

if.end.43:                                        ; preds = %if.end, %entry
  %47 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %48 = load i32, i32* %success, align 4
  %49 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool44 = icmp ne %struct._GError** %49, null
  br i1 %tobool44, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.43
  %50 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %51 = load %struct._GError*, %struct._GError** %50, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.43
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %51, %cond.true ], [ null, %cond.false ]
  %call45 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %47, i32 %48, %struct._GError* %cond)
  ret %struct._GValueArray* %call45
}

; Function Attrs: nounwind readnone
declare i64 @gimp_select_criterion_get_type() #2

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @edit_blend_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %drawable = alloca %struct._GimpDrawable*, align 8
  %blend_mode = alloca i32, align 4
  %paint_mode = alloca i32, align 4
  %gradient_type = alloca i32, align 4
  %opacity = alloca double, align 8
  %offset = alloca double, align 8
  %repeat = alloca i32, align 4
  %reverse = alloca i32, align 4
  %supersample = alloca i32, align 4
  %max_depth = alloca i32, align 4
  %threshold = alloca double, align 8
  %dither = alloca i32, align 4
  %x1 = alloca double, align 8
  %y1 = alloca double, align 8
  %x2 = alloca double, align 8
  %y2 = alloca double, align 8
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
  store i32 %call3, i32* %blend_mode, align 4
  %5 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values4 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %5, i32 0, i32 1
  %6 = load %struct._GValue*, %struct._GValue** %values4, align 8
  %arrayidx5 = getelementptr inbounds %struct._GValue, %struct._GValue* %6, i64 2
  %call6 = call i32 @g_value_get_enum(%struct._GValue* %arrayidx5)
  store i32 %call6, i32* %paint_mode, align 4
  %7 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values7 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %7, i32 0, i32 1
  %8 = load %struct._GValue*, %struct._GValue** %values7, align 8
  %arrayidx8 = getelementptr inbounds %struct._GValue, %struct._GValue* %8, i64 3
  %call9 = call i32 @g_value_get_enum(%struct._GValue* %arrayidx8)
  store i32 %call9, i32* %gradient_type, align 4
  %9 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values10 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %9, i32 0, i32 1
  %10 = load %struct._GValue*, %struct._GValue** %values10, align 8
  %arrayidx11 = getelementptr inbounds %struct._GValue, %struct._GValue* %10, i64 4
  %call12 = call double @g_value_get_double(%struct._GValue* %arrayidx11)
  store double %call12, double* %opacity, align 8
  %11 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values13 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %11, i32 0, i32 1
  %12 = load %struct._GValue*, %struct._GValue** %values13, align 8
  %arrayidx14 = getelementptr inbounds %struct._GValue, %struct._GValue* %12, i64 5
  %call15 = call double @g_value_get_double(%struct._GValue* %arrayidx14)
  store double %call15, double* %offset, align 8
  %13 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values16 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %13, i32 0, i32 1
  %14 = load %struct._GValue*, %struct._GValue** %values16, align 8
  %arrayidx17 = getelementptr inbounds %struct._GValue, %struct._GValue* %14, i64 6
  %call18 = call i32 @g_value_get_enum(%struct._GValue* %arrayidx17)
  store i32 %call18, i32* %repeat, align 4
  %15 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values19 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %15, i32 0, i32 1
  %16 = load %struct._GValue*, %struct._GValue** %values19, align 8
  %arrayidx20 = getelementptr inbounds %struct._GValue, %struct._GValue* %16, i64 7
  %call21 = call i32 @g_value_get_boolean(%struct._GValue* %arrayidx20)
  store i32 %call21, i32* %reverse, align 4
  %17 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values22 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %17, i32 0, i32 1
  %18 = load %struct._GValue*, %struct._GValue** %values22, align 8
  %arrayidx23 = getelementptr inbounds %struct._GValue, %struct._GValue* %18, i64 8
  %call24 = call i32 @g_value_get_boolean(%struct._GValue* %arrayidx23)
  store i32 %call24, i32* %supersample, align 4
  %19 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values25 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %19, i32 0, i32 1
  %20 = load %struct._GValue*, %struct._GValue** %values25, align 8
  %arrayidx26 = getelementptr inbounds %struct._GValue, %struct._GValue* %20, i64 9
  %call27 = call i32 @g_value_get_int(%struct._GValue* %arrayidx26)
  store i32 %call27, i32* %max_depth, align 4
  %21 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values28 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %21, i32 0, i32 1
  %22 = load %struct._GValue*, %struct._GValue** %values28, align 8
  %arrayidx29 = getelementptr inbounds %struct._GValue, %struct._GValue* %22, i64 10
  %call30 = call double @g_value_get_double(%struct._GValue* %arrayidx29)
  store double %call30, double* %threshold, align 8
  %23 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values31 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %23, i32 0, i32 1
  %24 = load %struct._GValue*, %struct._GValue** %values31, align 8
  %arrayidx32 = getelementptr inbounds %struct._GValue, %struct._GValue* %24, i64 11
  %call33 = call i32 @g_value_get_boolean(%struct._GValue* %arrayidx32)
  store i32 %call33, i32* %dither, align 4
  %25 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values34 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %25, i32 0, i32 1
  %26 = load %struct._GValue*, %struct._GValue** %values34, align 8
  %arrayidx35 = getelementptr inbounds %struct._GValue, %struct._GValue* %26, i64 12
  %call36 = call double @g_value_get_double(%struct._GValue* %arrayidx35)
  store double %call36, double* %x1, align 8
  %27 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values37 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %27, i32 0, i32 1
  %28 = load %struct._GValue*, %struct._GValue** %values37, align 8
  %arrayidx38 = getelementptr inbounds %struct._GValue, %struct._GValue* %28, i64 13
  %call39 = call double @g_value_get_double(%struct._GValue* %arrayidx38)
  store double %call39, double* %y1, align 8
  %29 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values40 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %29, i32 0, i32 1
  %30 = load %struct._GValue*, %struct._GValue** %values40, align 8
  %arrayidx41 = getelementptr inbounds %struct._GValue, %struct._GValue* %30, i64 14
  %call42 = call double @g_value_get_double(%struct._GValue* %arrayidx41)
  store double %call42, double* %x2, align 8
  %31 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values43 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %31, i32 0, i32 1
  %32 = load %struct._GValue*, %struct._GValue** %values43, align 8
  %arrayidx44 = getelementptr inbounds %struct._GValue, %struct._GValue* %32, i64 15
  %call45 = call double @g_value_get_double(%struct._GValue* %arrayidx44)
  store double %call45, double* %y2, align 8
  %33 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %33, 0
  br i1 %tobool, label %if.then, label %if.end.76

if.then:                                          ; preds = %entry
  %34 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %35 = bitcast %struct._GimpDrawable* %34 to %struct._GTypeInstance*
  %call46 = call i64 @gimp_item_get_type() #4
  %call47 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %35, i64 %call46)
  %36 = bitcast %struct._GTypeInstance* %call47 to %struct._GimpItem*
  %37 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call48 = call i32 @gimp_pdb_item_is_attached(%struct._GimpItem* %36, %struct._GimpImage* null, i32 1, %struct._GError** %37)
  %tobool49 = icmp ne i32 %call48, 0
  br i1 %tobool49, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.then
  %38 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %39 = bitcast %struct._GimpDrawable* %38 to %struct._GTypeInstance*
  %call50 = call i64 @gimp_item_get_type() #4
  %call51 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %39, i64 %call50)
  %40 = bitcast %struct._GTypeInstance* %call51 to %struct._GimpItem*
  %41 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call52 = call i32 @gimp_pdb_item_is_not_group(%struct._GimpItem* %40, %struct._GError** %41)
  %tobool53 = icmp ne i32 %call52, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then
  %42 = phi i1 [ false, %if.then ], [ %tobool53, %land.rhs ]
  %land.ext = zext i1 %42 to i32
  store i32 %land.ext, i32* %success, align 4
  %43 = load i32, i32* %success, align 4
  %tobool54 = icmp ne i32 %43, 0
  br i1 %tobool54, label %land.lhs.true, label %if.end.64

land.lhs.true:                                    ; preds = %land.end
  %44 = load i32, i32* %supersample, align 4
  %tobool55 = icmp ne i32 %44, 0
  br i1 %tobool55, label %if.then.56, label %if.end.64

if.then.56:                                       ; preds = %land.lhs.true
  %45 = load i32, i32* %max_depth, align 4
  %cmp = icmp slt i32 %45, 1
  br i1 %cmp, label %if.then.58, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.56
  %46 = load i32, i32* %max_depth, align 4
  %cmp57 = icmp sgt i32 %46, 9
  br i1 %cmp57, label %if.then.58, label %if.end

if.then.58:                                       ; preds = %lor.lhs.false, %if.then.56
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.58, %lor.lhs.false
  %47 = load double, double* %threshold, align 8
  %cmp59 = fcmp olt double %47, 0.000000e+00
  br i1 %cmp59, label %if.then.62, label %lor.lhs.false.60

lor.lhs.false.60:                                 ; preds = %if.end
  %48 = load double, double* %threshold, align 8
  %cmp61 = fcmp ogt double %48, 4.000000e+00
  br i1 %cmp61, label %if.then.62, label %if.end.63

if.then.62:                                       ; preds = %lor.lhs.false.60, %if.end
  store i32 0, i32* %success, align 4
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.62, %lor.lhs.false.60
  br label %if.end.64

if.end.64:                                        ; preds = %if.end.63, %land.lhs.true, %land.end
  %49 = load i32, i32* %success, align 4
  %tobool65 = icmp ne i32 %49, 0
  br i1 %tobool65, label %if.then.66, label %if.end.75

if.then.66:                                       ; preds = %if.end.64
  %50 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %tobool67 = icmp ne %struct._GimpProgress* %50, null
  br i1 %tobool67, label %if.then.68, label %if.end.71

if.then.68:                                       ; preds = %if.then.66
  %51 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %call69 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.145, i32 0, i32 0)) #5
  %call70 = call %struct._GimpProgress* @gimp_progress_start(%struct._GimpProgress* %51, i8* %call69, i32 0)
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.68, %if.then.66
  %52 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %53 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %54 = load i32, i32* %blend_mode, align 4
  %55 = load i32, i32* %paint_mode, align 4
  %56 = load i32, i32* %gradient_type, align 4
  %57 = load double, double* %opacity, align 8
  %div = fdiv double %57, 1.000000e+02
  %58 = load double, double* %offset, align 8
  %59 = load i32, i32* %repeat, align 4
  %60 = load i32, i32* %reverse, align 4
  %61 = load i32, i32* %supersample, align 4
  %62 = load i32, i32* %max_depth, align 4
  %63 = load double, double* %threshold, align 8
  %64 = load i32, i32* %dither, align 4
  %65 = load double, double* %x1, align 8
  %66 = load double, double* %y1, align 8
  %67 = load double, double* %x2, align 8
  %68 = load double, double* %y2, align 8
  %69 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  call void @gimp_drawable_blend(%struct._GimpDrawable* %52, %struct._GimpContext* %53, i32 %54, i32 %55, i32 %56, double %div, double %58, i32 %59, i32 %60, i32 %61, i32 %62, double %63, i32 %64, double %65, double %66, double %67, double %68, %struct._GimpProgress* %69)
  %70 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %tobool72 = icmp ne %struct._GimpProgress* %70, null
  br i1 %tobool72, label %if.then.73, label %if.end.74

if.then.73:                                       ; preds = %if.end.71
  %71 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  call void @gimp_progress_end(%struct._GimpProgress* %71)
  br label %if.end.74

if.end.74:                                        ; preds = %if.then.73, %if.end.71
  br label %if.end.75

if.end.75:                                        ; preds = %if.end.74, %if.end.64
  br label %if.end.76

if.end.76:                                        ; preds = %if.end.75, %entry
  %72 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %73 = load i32, i32* %success, align 4
  %74 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool77 = icmp ne %struct._GError** %74, null
  br i1 %tobool77, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.76
  %75 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %76 = load %struct._GError*, %struct._GError** %75, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.76
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %76, %cond.true ], [ null, %cond.false ]
  %call78 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %72, i32 %73, %struct._GError* %cond)
  ret %struct._GValueArray* %call78
}

; Function Attrs: nounwind readnone
declare i64 @gimp_blend_mode_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_gradient_type_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_repeat_mode_get_type() #2

declare %struct._GParamSpec* @gimp_param_spec_int32(i8*, i8*, i8*, i32, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @edit_stroke_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  %call = call %struct._GimpDrawable* @gimp_value_get_drawable(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpDrawable* %call, %struct._GimpDrawable** %drawable, align 8
  %3 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end.25

if.then:                                          ; preds = %entry
  %4 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %5 = bitcast %struct._GimpDrawable* %4 to %struct._GTypeInstance*
  %call1 = call i64 @gimp_item_get_type() #4
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call1)
  %6 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpItem*
  %7 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call3 = call i32 @gimp_pdb_item_is_attached(%struct._GimpItem* %6, %struct._GimpImage* null, i32 1, %struct._GError** %7)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %8 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %9 = bitcast %struct._GimpDrawable* %8 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_item_get_type() #4
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call5)
  %10 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpItem*
  %11 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call7 = call i32 @gimp_pdb_item_is_not_group(%struct._GimpItem* %10, %struct._GError** %11)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %land.lhs.true
  %12 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %13 = bitcast %struct._GimpDrawable* %12 to %struct._GTypeInstance*
  %call10 = call i64 @gimp_item_get_type() #4
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call10)
  %14 = bitcast %struct._GTypeInstance* %call11 to %struct._GimpItem*
  %call12 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %14)
  store %struct._GimpImage* %call12, %struct._GimpImage** %image, align 8
  %15 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %16 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %call13 = call %struct._GimpStrokeOptions* @gimp_stroke_options_new(%struct._Gimp* %15, %struct._GimpContext* %16, i32 1)
  store %struct._GimpStrokeOptions* %call13, %struct._GimpStrokeOptions** %options, align 8
  %17 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %18 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %call14 = call %struct._GimpStrokeOptions* @gimp_stroke_options_new(%struct._Gimp* %17, %struct._GimpContext* %18, i32 1)
  store %struct._GimpStrokeOptions* %call14, %struct._GimpStrokeOptions** %options, align 8
  %19 = load %struct._GimpStrokeOptions*, %struct._GimpStrokeOptions** %options, align 8
  %20 = bitcast %struct._GimpStrokeOptions* %19 to i8*
  call void (i8*, i8*, ...) @g_object_set(i8* %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.146, i32 0, i32 0), i32 1, i8* null)
  %21 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %22 = bitcast %struct._GimpContext* %21 to %struct._GTypeInstance*
  %call15 = call i64 @gimp_pdb_context_get_type() #4
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call15)
  %23 = bitcast %struct._GTypeInstance* %call16 to %struct._GimpPDBContext*
  %call17 = call %struct._GimpPaintOptions* @gimp_pdb_context_get_paint_options(%struct._GimpPDBContext* %23, i8* null)
  store %struct._GimpPaintOptions* %call17, %struct._GimpPaintOptions** %paint_options, align 8
  %24 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options, align 8
  %25 = bitcast %struct._GimpPaintOptions* %24 to %struct._GTypeInstance*
  %call18 = call i64 @gimp_config_interface_get_type() #4
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call18)
  %26 = bitcast %struct._GTypeInstance* %call19 to %struct._GimpConfig*
  %call20 = call i8* @gimp_config_duplicate(%struct._GimpConfig* %26)
  %27 = bitcast i8* %call20 to %struct._GimpPaintOptions*
  store %struct._GimpPaintOptions* %27, %struct._GimpPaintOptions** %paint_options, align 8
  %28 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call21 = call %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage* %28)
  %29 = bitcast %struct._GimpChannel* %call21 to %struct._GTypeInstance*
  %call22 = call i64 @gimp_item_get_type() #4
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 %call22)
  %30 = bitcast %struct._GTypeInstance* %call23 to %struct._GimpItem*
  %31 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %32 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %33 = load %struct._GimpStrokeOptions*, %struct._GimpStrokeOptions** %options, align 8
  %34 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options, align 8
  %35 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %36 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call24 = call i32 @gimp_item_stroke(%struct._GimpItem* %30, %struct._GimpDrawable* %31, %struct._GimpContext* %32, %struct._GimpStrokeOptions* %33, %struct._GimpPaintOptions* %34, i32 1, %struct._GimpProgress* %35, %struct._GError** %36)
  store i32 %call24, i32* %success, align 4
  %37 = load %struct._GimpStrokeOptions*, %struct._GimpStrokeOptions** %options, align 8
  %38 = bitcast %struct._GimpStrokeOptions* %37 to i8*
  call void @g_object_unref(i8* %38)
  %39 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options, align 8
  %40 = bitcast %struct._GimpPaintOptions* %39 to i8*
  call void @g_object_unref(i8* %40)
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.9
  br label %if.end.25

if.end.25:                                        ; preds = %if.end, %entry
  %41 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %42 = load i32, i32* %success, align 4
  %43 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool26 = icmp ne %struct._GError** %43, null
  br i1 %tobool26, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.25
  %44 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %45 = load %struct._GError*, %struct._GError** %44, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.25
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %45, %cond.true ], [ null, %cond.false ]
  %call27 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %41, i32 %42, %struct._GError* %cond)
  ret %struct._GValueArray* %call27
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @edit_stroke_vectors_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %drawable = alloca %struct._GimpDrawable*, align 8
  %vectors = alloca %struct._GimpVectors*, align 8
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
  %call = call %struct._GimpDrawable* @gimp_value_get_drawable(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpDrawable* %call, %struct._GimpDrawable** %drawable, align 8
  %3 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %3, i32 0, i32 1
  %4 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %4, i64 1
  %5 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call3 = call %struct._GimpVectors* @gimp_value_get_vectors(%struct._GValue* %arrayidx2, %struct._Gimp* %5)
  store %struct._GimpVectors* %call3, %struct._GimpVectors** %vectors, align 8
  %6 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then, label %if.end.31

if.then:                                          ; preds = %entry
  %7 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %8 = bitcast %struct._GimpDrawable* %7 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_item_get_type() #4
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call4)
  %9 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpItem*
  %10 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call6 = call i32 @gimp_pdb_item_is_attached(%struct._GimpItem* %9, %struct._GimpImage* null, i32 1, %struct._GError** %10)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %11 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %12 = bitcast %struct._GimpDrawable* %11 to %struct._GTypeInstance*
  %call8 = call i64 @gimp_item_get_type() #4
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call8)
  %13 = bitcast %struct._GTypeInstance* %call9 to %struct._GimpItem*
  %14 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call10 = call i32 @gimp_pdb_item_is_not_group(%struct._GimpItem* %13, %struct._GError** %14)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %land.lhs.true.12, label %if.else

land.lhs.true.12:                                 ; preds = %land.lhs.true
  %15 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %16 = bitcast %struct._GimpVectors* %15 to %struct._GTypeInstance*
  %call13 = call i64 @gimp_item_get_type() #4
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call13)
  %17 = bitcast %struct._GTypeInstance* %call14 to %struct._GimpItem*
  %18 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %19 = bitcast %struct._GimpDrawable* %18 to %struct._GTypeInstance*
  %call15 = call i64 @gimp_item_get_type() #4
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call15)
  %20 = bitcast %struct._GTypeInstance* %call16 to %struct._GimpItem*
  %call17 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %20)
  %21 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call18 = call i32 @gimp_pdb_item_is_attached(%struct._GimpItem* %17, %struct._GimpImage* %call17, i32 0, %struct._GError** %21)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.then.20, label %if.else

if.then.20:                                       ; preds = %land.lhs.true.12
  %22 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %23 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %call21 = call %struct._GimpStrokeOptions* @gimp_stroke_options_new(%struct._Gimp* %22, %struct._GimpContext* %23, i32 1)
  store %struct._GimpStrokeOptions* %call21, %struct._GimpStrokeOptions** %options, align 8
  %24 = load %struct._GimpStrokeOptions*, %struct._GimpStrokeOptions** %options, align 8
  %25 = bitcast %struct._GimpStrokeOptions* %24 to i8*
  call void (i8*, i8*, ...) @g_object_set(i8* %25, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.146, i32 0, i32 0), i32 1, i8* null)
  %26 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %27 = bitcast %struct._GimpContext* %26 to %struct._GTypeInstance*
  %call22 = call i64 @gimp_pdb_context_get_type() #4
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call22)
  %28 = bitcast %struct._GTypeInstance* %call23 to %struct._GimpPDBContext*
  %call24 = call %struct._GimpPaintOptions* @gimp_pdb_context_get_paint_options(%struct._GimpPDBContext* %28, i8* null)
  store %struct._GimpPaintOptions* %call24, %struct._GimpPaintOptions** %paint_options, align 8
  %29 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options, align 8
  %30 = bitcast %struct._GimpPaintOptions* %29 to %struct._GTypeInstance*
  %call25 = call i64 @gimp_config_interface_get_type() #4
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call25)
  %31 = bitcast %struct._GTypeInstance* %call26 to %struct._GimpConfig*
  %call27 = call i8* @gimp_config_duplicate(%struct._GimpConfig* %31)
  %32 = bitcast i8* %call27 to %struct._GimpPaintOptions*
  store %struct._GimpPaintOptions* %32, %struct._GimpPaintOptions** %paint_options, align 8
  %33 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %34 = bitcast %struct._GimpVectors* %33 to %struct._GTypeInstance*
  %call28 = call i64 @gimp_item_get_type() #4
  %call29 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 %call28)
  %35 = bitcast %struct._GTypeInstance* %call29 to %struct._GimpItem*
  %36 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %37 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %38 = load %struct._GimpStrokeOptions*, %struct._GimpStrokeOptions** %options, align 8
  %39 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options, align 8
  %40 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %41 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call30 = call i32 @gimp_item_stroke(%struct._GimpItem* %35, %struct._GimpDrawable* %36, %struct._GimpContext* %37, %struct._GimpStrokeOptions* %38, %struct._GimpPaintOptions* %39, i32 1, %struct._GimpProgress* %40, %struct._GError** %41)
  store i32 %call30, i32* %success, align 4
  %42 = load %struct._GimpStrokeOptions*, %struct._GimpStrokeOptions** %options, align 8
  %43 = bitcast %struct._GimpStrokeOptions* %42 to i8*
  call void @g_object_unref(i8* %43)
  %44 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options, align 8
  %45 = bitcast %struct._GimpPaintOptions* %44 to i8*
  call void @g_object_unref(i8* %45)
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.12, %land.lhs.true, %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.20
  br label %if.end.31

if.end.31:                                        ; preds = %if.end, %entry
  %46 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %47 = load i32, i32* %success, align 4
  %48 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool32 = icmp ne %struct._GError** %48, null
  br i1 %tobool32, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.31
  %49 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %50 = load %struct._GError*, %struct._GError** %49, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.31
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %50, %cond.true ], [ null, %cond.false ]
  %call33 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %46, i32 %47, %struct._GError* %cond)
  ret %struct._GValueArray* %call33
}

declare %struct._GParamSpec* @gimp_param_spec_vectors_id(i8*, i8*, i8*, %struct._Gimp*, i32, i32) #1

declare %struct._GimpDrawable* @gimp_value_get_drawable(%struct._GValue*, %struct._Gimp*) #1

declare i32 @gimp_pdb_item_is_attached(%struct._GimpItem*, %struct._GimpImage*, i32, %struct._GError**) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_item_get_type() #2

declare i32 @gimp_pdb_item_is_not_group(%struct._GimpItem*, %struct._GError**) #1

declare %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem*) #1

declare %struct._GimpBuffer* @gimp_edit_cut(%struct._GimpImage*, %struct._GimpDrawable*, %struct._GimpContext*, %struct._GError**) #1

declare void @gimp_message_literal(%struct._Gimp*, %struct._GObject*, i32, i8*) #1

declare void @g_clear_error(%struct._GError**) #1

declare %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure*, i32, %struct._GError*) #1

declare void @g_value_set_boolean(%struct._GValue*, i32) #1

declare %struct._GimpBuffer* @gimp_edit_copy(%struct._GimpImage*, %struct._GimpDrawable*, %struct._GimpContext*, %struct._GError**) #1

declare %struct._GimpImage* @gimp_value_get_image(%struct._GValue*, %struct._Gimp*) #1

declare %struct._GimpBuffer* @gimp_edit_copy_visible(%struct._GimpImage*, %struct._GimpContext*, %struct._GError**) #1

declare i32 @g_value_get_boolean(%struct._GValue*) #1

declare %struct._GimpLayer* @gimp_edit_paste(%struct._GimpImage*, %struct._GimpDrawable*, %struct._GimpBuffer*, i32, i32, i32, i32, i32) #1

declare void @gimp_value_set_layer(%struct._GValue*, %struct._GimpLayer*) #1

declare %struct._GimpImage* @gimp_image_new_from_buffer(%struct._Gimp*, %struct._GimpImage*, %struct._GimpBuffer*) #1

declare void @gimp_value_set_image(%struct._GValue*, %struct._GimpImage*) #1

declare i8* @g_value_get_string(%struct._GValue*) #1

declare i8* @gimp_edit_named_cut(%struct._GimpImage*, i8*, %struct._GimpDrawable*, %struct._GimpContext*, %struct._GError**) #1

declare noalias i8* @g_strdup(i8*) #1

declare void @g_value_take_string(%struct._GValue*, i8*) #1

declare i8* @gimp_edit_named_copy(%struct._GimpImage*, i8*, %struct._GimpDrawable*, %struct._GimpContext*, %struct._GError**) #1

declare i8* @gimp_edit_named_copy_visible(%struct._GimpImage*, i8*, %struct._GimpContext*, %struct._GError**) #1

declare %struct._GimpBuffer* @gimp_pdb_get_buffer(%struct._Gimp*, i8*, %struct._GError**) #1

declare i32 @gimp_edit_clear(%struct._GimpImage*, %struct._GimpDrawable*, %struct._GimpContext*) #1

declare i32 @g_value_get_enum(%struct._GValue*) #1

declare i32 @gimp_edit_fill(%struct._GimpImage*, %struct._GimpDrawable*, %struct._GimpContext*, i32) #1

declare double @g_value_get_double(%struct._GValue*) #1

declare i32 @gimp_channel_is_empty(%struct._GimpChannel*) #1

declare %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage*) #1

declare i32 @gimp_drawable_bucket_fill(%struct._GimpDrawable*, %struct._GimpContext*, i32, i32, double, i32, i32, i32, double, i32, double, double, %struct._GError**) #1

declare i32 @g_value_get_int(%struct._GValue*) #1

declare %struct._GimpProgress* @gimp_progress_start(%struct._GimpProgress*, i8*, i32) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #3

declare void @gimp_drawable_blend(%struct._GimpDrawable*, %struct._GimpContext*, i32, i32, i32, double, double, i32, i32, i32, i32, double, i32, double, double, double, double, %struct._GimpProgress*) #1

declare void @gimp_progress_end(%struct._GimpProgress*) #1

declare %struct._GimpStrokeOptions* @gimp_stroke_options_new(%struct._Gimp*, %struct._GimpContext*, i32) #1

declare void @g_object_set(i8*, i8*, ...) #1

declare %struct._GimpPaintOptions* @gimp_pdb_context_get_paint_options(%struct._GimpPDBContext*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_pdb_context_get_type() #2

declare i8* @gimp_config_duplicate(%struct._GimpConfig*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_config_interface_get_type() #2

declare i32 @gimp_item_stroke(%struct._GimpItem*, %struct._GimpDrawable*, %struct._GimpContext*, %struct._GimpStrokeOptions*, %struct._GimpPaintOptions*, i32, %struct._GimpProgress*, %struct._GError**) #1

declare %struct._GimpVectors* @gimp_value_get_vectors(%struct._GValue*, %struct._Gimp*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
