; ModuleID = './app/pdb/gradient-cmds.bc'
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
%struct._GimpImage = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GimpParasiteList = type opaque
%struct._GimpPaintInfo = type opaque
%struct._GimpModuleDB = type opaque
%struct._GimpPlugInManager = type opaque
%struct._GimpIdTable = type opaque
%struct._GimpBuffer = type opaque
%struct._GimpDataFactory = type { %struct._GimpObject, %struct._GimpDataFactoryPriv* }
%struct._GimpDataFactoryPriv = type opaque
%struct._GimpTagCache = type opaque
%struct._GimpToolInfo = type opaque
%struct._GimpContainer = type opaque
%struct._GimpTemplate = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpContext = type { %struct._GimpViewable, %struct._Gimp*, %struct._GimpContext*, i32, i32, %struct._GimpImage*, i8*, %struct._GimpToolInfo*, i8*, %struct._GimpPaintInfo*, i8*, %struct._GimpRGB, %struct._GimpRGB, double, i32, %struct._GimpBrush*, i8*, %struct._GimpDynamics*, i8*, %struct._GimpPattern*, i8*, %struct._GimpGradient*, i8*, %struct._GimpPalette*, i8*, %struct._GimpToolPreset*, i8*, %struct._GimpFont*, i8*, %struct._GimpBuffer*, i8*, %struct._GimpImagefile*, i8*, %struct._GimpTemplate*, i8* }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpBrush = type opaque
%struct._GimpDynamics = type opaque
%struct._GimpPattern = type opaque
%struct._GimpGradient = type { %struct._GimpData, %struct._GimpGradientSegment* }
%struct._GimpData = type { %struct._GimpViewable }
%struct._GimpGradientSegment = type { double, double, double, i32, %struct._GimpRGB, i32, %struct._GimpRGB, i32, i32, %struct._GimpGradientSegment*, %struct._GimpGradientSegment* }
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

@.str = private unnamed_addr constant [18 x i8] c"gimp-gradient-new\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Creates a new gradient\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"This procedure creates a new, uninitialized gradient\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"Shlomi Fish <shlomif@iglu.org.il>\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"Shlomi Fish\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"2003\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"The requested name of the new gradient\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"actual-name\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"actual name\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"The actual new gradient name\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"gimp-gradient-duplicate\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"Duplicates a gradient\00", align 1
@.str.13 = private unnamed_addr constant [65 x i8] c"This procedure creates an identical gradient by a different name\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"The gradient name\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"copy-name\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"copy name\00", align 1
@.str.17 = private unnamed_addr constant [32 x i8] c"The name of the gradient's copy\00", align 1
@.str.18 = private unnamed_addr constant [26 x i8] c"gimp-gradient-is-editable\00", align 1
@.str.19 = private unnamed_addr constant [32 x i8] c"Tests if gradient can be edited\00", align 1
@.str.20 = private unnamed_addr constant [59 x i8] c"Returns TRUE if you have permission to change the gradient\00", align 1
@.str.21 = private unnamed_addr constant [43 x i8] c"Bill Skaggs <weskaggs@primate.ucdavis.edu>\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"Bill Skaggs\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"2004\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"editable\00", align 1
@.str.25 = private unnamed_addr constant [35 x i8] c"TRUE if the gradient can be edited\00", align 1
@.str.26 = private unnamed_addr constant [21 x i8] c"gimp-gradient-rename\00", align 1
@.str.27 = private unnamed_addr constant [18 x i8] c"Rename a gradient\00", align 1
@.str.28 = private unnamed_addr constant [34 x i8] c"This procedure renames a gradient\00", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"new-name\00", align 1
@.str.30 = private unnamed_addr constant [9 x i8] c"new name\00", align 1
@.str.31 = private unnamed_addr constant [29 x i8] c"The new name of the gradient\00", align 1
@.str.32 = private unnamed_addr constant [36 x i8] c"The actual new name of the gradient\00", align 1
@.str.33 = private unnamed_addr constant [21 x i8] c"gimp-gradient-delete\00", align 1
@.str.34 = private unnamed_addr constant [19 x i8] c"Deletes a gradient\00", align 1
@.str.35 = private unnamed_addr constant [34 x i8] c"This procedure deletes a gradient\00", align 1
@.str.36 = private unnamed_addr constant [37 x i8] c"gimp-gradient-get-number-of-segments\00", align 1
@.str.37 = private unnamed_addr constant [57 x i8] c"Returns the number of segments of the specified gradient\00", align 1
@.str.38 = private unnamed_addr constant [73 x i8] c"This procedure returns the number of segments of the specified gradient.\00", align 1
@.str.39 = private unnamed_addr constant [37 x i8] c"Lars-Peter Clausen <lars@metafoo.de>\00", align 1
@.str.40 = private unnamed_addr constant [19 x i8] c"Lars-Peter Clausen\00", align 1
@.str.41 = private unnamed_addr constant [5 x i8] c"2008\00", align 1
@.str.42 = private unnamed_addr constant [13 x i8] c"num-segments\00", align 1
@.str.43 = private unnamed_addr constant [13 x i8] c"num segments\00", align 1
@.str.44 = private unnamed_addr constant [19 x i8] c"Number of segments\00", align 1
@.str.45 = private unnamed_addr constant [34 x i8] c"gimp-gradient-get-uniform-samples\00", align 1
@.str.46 = private unnamed_addr constant [39 x i8] c"Sample the specified in uniform parts.\00", align 1
@.str.47 = private unnamed_addr constant [435 x i8] c"This procedure samples the active gradient in the specified number of uniform parts. It returns a list of floating-point values which correspond to the RGBA values for each sample. The minimum number of samples to take is 2, in which case the returned colors will correspond to the { 0.0, 1.0 } positions in the gradient. For example, if the number of samples is 3, the procedure will return the colors at positions { 0.0, 0.5, 1.0 }.\00", align 1
@.str.48 = private unnamed_addr constant [23 x i8] c"Federico Mena Quintero\00", align 1
@.str.49 = private unnamed_addr constant [5 x i8] c"1997\00", align 1
@.str.50 = private unnamed_addr constant [12 x i8] c"num-samples\00", align 1
@.str.51 = private unnamed_addr constant [12 x i8] c"num samples\00", align 1
@.str.52 = private unnamed_addr constant [30 x i8] c"The number of samples to take\00", align 1
@.str.53 = private unnamed_addr constant [8 x i8] c"reverse\00", align 1
@.str.54 = private unnamed_addr constant [25 x i8] c"Use the reverse gradient\00", align 1
@.str.55 = private unnamed_addr constant [18 x i8] c"num-color-samples\00", align 1
@.str.56 = private unnamed_addr constant [18 x i8] c"num color samples\00", align 1
@.str.57 = private unnamed_addr constant [52 x i8] c"Length of the color_samples array (4 * num_samples)\00", align 1
@.str.58 = private unnamed_addr constant [14 x i8] c"color-samples\00", align 1
@.str.59 = private unnamed_addr constant [14 x i8] c"color samples\00", align 1
@.str.60 = private unnamed_addr constant [55 x i8] c"Color samples: { R1, G1, B1, A1, ..., Rn, Gn, Bn, An }\00", align 1
@.str.61 = private unnamed_addr constant [33 x i8] c"gimp-gradient-get-custom-samples\00", align 1
@.str.62 = private unnamed_addr constant [51 x i8] c"Sample the spacified gradient in custom positions.\00", align 1
@.str.63 = private unnamed_addr constant [372 x i8] c"This procedure samples the active gradient in the specified number of points. The procedure will sample the gradient in the specified positions from the list. The left endpoint of the gradient corresponds to position 0.0, and the right endpoint corresponds to 1.0. The procedure returns a list of floating-point values which correspond to the RGBA values for each sample.\00", align 1
@.str.64 = private unnamed_addr constant [10 x i8] c"positions\00", align 1
@.str.65 = private unnamed_addr constant [51 x i8] c"The list of positions to sample along the gradient\00", align 1
@.str.66 = private unnamed_addr constant [37 x i8] c"gimp-gradient-segment-get-left-color\00", align 1
@.str.67 = private unnamed_addr constant [59 x i8] c"Retrieves the left endpoint color of the specified segment\00", align 1
@.str.68 = private unnamed_addr constant [101 x i8] c"This procedure retrieves the left endpoint color of the specified segment of the specified gradient.\00", align 1
@.str.69 = private unnamed_addr constant [8 x i8] c"segment\00", align 1
@.str.70 = private unnamed_addr constant [45 x i8] c"The index of the segment within the gradient\00", align 1
@.str.71 = private unnamed_addr constant [6 x i8] c"color\00", align 1
@.str.72 = private unnamed_addr constant [17 x i8] c"The return color\00", align 1
@.str.73 = private unnamed_addr constant [8 x i8] c"opacity\00", align 1
@.str.74 = private unnamed_addr constant [28 x i8] c"The opacity of the endpoint\00", align 1
@.str.75 = private unnamed_addr constant [37 x i8] c"gimp-gradient-segment-set-left-color\00", align 1
@.str.76 = private unnamed_addr constant [54 x i8] c"Sets the left endpoint color of the specified segment\00", align 1
@.str.77 = private unnamed_addr constant [96 x i8] c"This procedure sets the left endpoint color of the specified segment of the specified gradient.\00", align 1
@.str.78 = private unnamed_addr constant [17 x i8] c"The color to set\00", align 1
@.str.79 = private unnamed_addr constant [36 x i8] c"The opacity to set for the endpoint\00", align 1
@.str.80 = private unnamed_addr constant [38 x i8] c"gimp-gradient-segment-get-right-color\00", align 1
@.str.81 = private unnamed_addr constant [60 x i8] c"Retrieves the right endpoint color of the specified segment\00", align 1
@.str.82 = private unnamed_addr constant [102 x i8] c"This procedure retrieves the right endpoint color of the specified segment of the specified gradient.\00", align 1
@.str.83 = private unnamed_addr constant [38 x i8] c"gimp-gradient-segment-set-right-color\00", align 1
@.str.84 = private unnamed_addr constant [55 x i8] c"Sets the right endpoint color of the specified segment\00", align 1
@.str.85 = private unnamed_addr constant [97 x i8] c"This procedure sets the right endpoint color of the specified segment of the specified gradient.\00", align 1
@.str.86 = private unnamed_addr constant [35 x i8] c"gimp-gradient-segment-get-left-pos\00", align 1
@.str.87 = private unnamed_addr constant [62 x i8] c"Retrieves the left endpoint position of the specified segment\00", align 1
@.str.88 = private unnamed_addr constant [104 x i8] c"This procedure retrieves the left endpoint position of the specified segment of the specified gradient.\00", align 1
@.str.89 = private unnamed_addr constant [4 x i8] c"pos\00", align 1
@.str.90 = private unnamed_addr constant [20 x i8] c"The return position\00", align 1
@.str.91 = private unnamed_addr constant [35 x i8] c"gimp-gradient-segment-set-left-pos\00", align 1
@.str.92 = private unnamed_addr constant [57 x i8] c"Sets the left endpoint position of the specified segment\00", align 1
@.str.93 = private unnamed_addr constant [267 x i8] c"This procedure sets the left endpoint position of the specified segment of the specified gradient. The final position will be between the position of the middle point to the left to the middle point of the current segement. This procedure returns the final position.\00", align 1
@.str.94 = private unnamed_addr constant [38 x i8] c"The position to set the guidepoint to\00", align 1
@.str.95 = private unnamed_addr constant [10 x i8] c"final-pos\00", align 1
@.str.96 = private unnamed_addr constant [10 x i8] c"final pos\00", align 1
@.str.97 = private unnamed_addr constant [37 x i8] c"gimp-gradient-segment-get-middle-pos\00", align 1
@.str.98 = private unnamed_addr constant [61 x i8] c"Retrieves the middle point position of the specified segment\00", align 1
@.str.99 = private unnamed_addr constant [103 x i8] c"This procedure retrieves the middle point position of the specified segment of the specified gradient.\00", align 1
@.str.100 = private unnamed_addr constant [37 x i8] c"gimp-gradient-segment-set-middle-pos\00", align 1
@.str.101 = private unnamed_addr constant [56 x i8] c"Sets the middle point position of the specified segment\00", align 1
@.str.102 = private unnamed_addr constant [210 x i8] c"This procedure sets the middle point position of the specified segment of the specified gradient. The final position will be between the two endpoints of the segment. This procedure returns the final position.\00", align 1
@.str.103 = private unnamed_addr constant [36 x i8] c"gimp-gradient-segment-get-right-pos\00", align 1
@.str.104 = private unnamed_addr constant [63 x i8] c"Retrieves the right endpoint position of the specified segment\00", align 1
@.str.105 = private unnamed_addr constant [105 x i8] c"This procedure retrieves the right endpoint position of the specified segment of the specified gradient.\00", align 1
@.str.106 = private unnamed_addr constant [36 x i8] c"gimp-gradient-segment-set-right-pos\00", align 1
@.str.107 = private unnamed_addr constant [58 x i8] c"Sets the right endpoint position of the specified segment\00", align 1
@.str.108 = private unnamed_addr constant [284 x i8] c"This procedure sets the right endpoint position of the specified segment of the specified gradient. The final position will be between the position of the middle point of the current segment and the middle point of the segment to the right. This procedure returns the final position.\00", align 1
@.str.109 = private unnamed_addr constant [44 x i8] c"gimp-gradient-segment-get-blending-function\00", align 1
@.str.110 = private unnamed_addr constant [51 x i8] c"Retrieves the gradient segment's blending function\00", align 1
@.str.111 = private unnamed_addr constant [112 x i8] c"This procedure retrieves the blending function of the segment at the specified gradient name and segment index.\00", align 1
@.str.112 = private unnamed_addr constant [11 x i8] c"blend-func\00", align 1
@.str.113 = private unnamed_addr constant [11 x i8] c"blend func\00", align 1
@.str.114 = private unnamed_addr constant [37 x i8] c"The blending function of the segment\00", align 1
@.str.115 = private unnamed_addr constant [40 x i8] c"gimp-gradient-segment-get-coloring-type\00", align 1
@.str.116 = private unnamed_addr constant [47 x i8] c"Retrieves the gradient segment's coloring type\00", align 1
@.str.117 = private unnamed_addr constant [108 x i8] c"This procedure retrieves the coloring type of the segment at the specified gradient name and segment index.\00", align 1
@.str.118 = private unnamed_addr constant [14 x i8] c"coloring-type\00", align 1
@.str.119 = private unnamed_addr constant [14 x i8] c"coloring type\00", align 1
@.str.120 = private unnamed_addr constant [33 x i8] c"The coloring type of the segment\00", align 1
@.str.121 = private unnamed_addr constant [50 x i8] c"gimp-gradient-segment-range-set-blending-function\00", align 1
@.str.122 = private unnamed_addr constant [49 x i8] c"Change the blending function of a segments range\00", align 1
@.str.123 = private unnamed_addr constant [99 x i8] c"This function changes the blending function of a segment range to the specified blending function.\00", align 1
@.str.124 = private unnamed_addr constant [14 x i8] c"start-segment\00", align 1
@.str.125 = private unnamed_addr constant [14 x i8] c"start segment\00", align 1
@.str.126 = private unnamed_addr constant [45 x i8] c"The index of the first segment to operate on\00", align 1
@.str.127 = private unnamed_addr constant [12 x i8] c"end-segment\00", align 1
@.str.128 = private unnamed_addr constant [12 x i8] c"end segment\00", align 1
@.str.129 = private unnamed_addr constant [110 x i8] c"The index of the last segment to operate on. If negative, the selection will extend to the end of the string.\00", align 1
@.str.130 = private unnamed_addr constant [18 x i8] c"blending-function\00", align 1
@.str.131 = private unnamed_addr constant [18 x i8] c"blending function\00", align 1
@.str.132 = private unnamed_addr constant [22 x i8] c"The blending function\00", align 1
@.str.133 = private unnamed_addr constant [46 x i8] c"gimp-gradient-segment-range-set-coloring-type\00", align 1
@.str.134 = private unnamed_addr constant [45 x i8] c"Change the coloring type of a segments range\00", align 1
@.str.135 = private unnamed_addr constant [91 x i8] c"This function changes the coloring type of a segment range to the specified coloring type.\00", align 1
@.str.136 = private unnamed_addr constant [18 x i8] c"The coloring type\00", align 1
@.str.137 = private unnamed_addr constant [33 x i8] c"gimp-gradient-segment-range-flip\00", align 1
@.str.138 = private unnamed_addr constant [23 x i8] c"Flip the segment range\00", align 1
@.str.139 = private unnamed_addr constant [37 x i8] c"This function flips a segment range.\00", align 1
@.str.140 = private unnamed_addr constant [38 x i8] c"gimp-gradient-segment-range-replicate\00", align 1
@.str.141 = private unnamed_addr constant [28 x i8] c"Replicate the segment range\00", align 1
@.str.142 = private unnamed_addr constant [170 x i8] c"This function replicates a segment range a given number of times. Instead of the original segment range, several smaller scaled copies of it will appear in equal widths.\00", align 1
@.str.143 = private unnamed_addr constant [16 x i8] c"replicate-times\00", align 1
@.str.144 = private unnamed_addr constant [16 x i8] c"replicate times\00", align 1
@.str.145 = private unnamed_addr constant [33 x i8] c"The number of times to replicate\00", align 1
@.str.146 = private unnamed_addr constant [43 x i8] c"gimp-gradient-segment-range-split-midpoint\00", align 1
@.str.147 = private unnamed_addr constant [53 x i8] c"Splits each segment in the segment range at midpoint\00", align 1
@.str.148 = private unnamed_addr constant [72 x i8] c"This function splits each segment in the segment range at its midpoint.\00", align 1
@.str.149 = private unnamed_addr constant [42 x i8] c"gimp-gradient-segment-range-split-uniform\00", align 1
@.str.150 = private unnamed_addr constant [51 x i8] c"Splits each segment in the segment range uniformly\00", align 1
@.str.151 = private unnamed_addr constant [126 x i8] c"This function splits each segment in the segment range uniformly according to the number of times specified by the parameter.\00", align 1
@.str.152 = private unnamed_addr constant [12 x i8] c"split-parts\00", align 1
@.str.153 = private unnamed_addr constant [12 x i8] c"split parts\00", align 1
@.str.154 = private unnamed_addr constant [57 x i8] c"The number of uniform divisions to split each segment to\00", align 1
@.str.155 = private unnamed_addr constant [35 x i8] c"gimp-gradient-segment-range-delete\00", align 1
@.str.156 = private unnamed_addr constant [25 x i8] c"Delete the segment range\00", align 1
@.str.157 = private unnamed_addr constant [39 x i8] c"This function deletes a segment range.\00", align 1
@.str.158 = private unnamed_addr constant [49 x i8] c"gimp-gradient-segment-range-redistribute-handles\00", align 1
@.str.159 = private unnamed_addr constant [51 x i8] c"Uniformly redistribute the segment range's handles\00", align 1
@.str.160 = private unnamed_addr constant [127 x i8] c"This function redistributes the handles of the specified segment range of the specified gradient, so they'll be evenly spaced.\00", align 1
@.str.161 = private unnamed_addr constant [41 x i8] c"gimp-gradient-segment-range-blend-colors\00", align 1
@.str.162 = private unnamed_addr constant [39 x i8] c"Blend the colors of the segment range.\00", align 1
@.str.163 = private unnamed_addr constant [161 x i8] c"This function blends the colors (but not the opacity) of the segments' range of the gradient. Using it, the colors' transition will be uniform across the range.\00", align 1
@.str.164 = private unnamed_addr constant [42 x i8] c"gimp-gradient-segment-range-blend-opacity\00", align 1
@.str.165 = private unnamed_addr constant [40 x i8] c"Blend the opacity of the segment range.\00", align 1
@.str.166 = private unnamed_addr constant [163 x i8] c"This function blends the opacity (but not the colors) of the segments' range of the gradient. Using it, the opacity's transition will be uniform across the range.\00", align 1
@.str.167 = private unnamed_addr constant [33 x i8] c"gimp-gradient-segment-range-move\00", align 1
@.str.168 = private unnamed_addr constant [57 x i8] c"Move the position of an entire segment range by a delta.\00", align 1
@.str.169 = private unnamed_addr constant [176 x i8] c"This funtions moves the position of an entire segment range by a delta. The actual delta (which is returned) will be limited by the control points of the neighboring segments.\00", align 1
@.str.170 = private unnamed_addr constant [6 x i8] c"delta\00", align 1
@.str.171 = private unnamed_addr constant [36 x i8] c"The delta to move the segment range\00", align 1
@.str.172 = private unnamed_addr constant [17 x i8] c"control-compress\00", align 1
@.str.173 = private unnamed_addr constant [17 x i8] c"control compress\00", align 1
@.str.174 = private unnamed_addr constant [52 x i8] c"Whether or not to compress the neighboring segments\00", align 1
@.str.175 = private unnamed_addr constant [12 x i8] c"final-delta\00", align 1
@.str.176 = private unnamed_addr constant [12 x i8] c"final delta\00", align 1
@.str.177 = private unnamed_addr constant [41 x i8] c"The final delta by which the range moved\00", align 1
@gradient_segment_get_left_color_invoker.color = private unnamed_addr constant %struct._GimpRGB { double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 1.000000e+00 }, align 8
@gradient_segment_get_right_color_invoker.color = private unnamed_addr constant %struct._GimpRGB { double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 1.000000e+00 }, align 8

; Function Attrs: nounwind uwtable
define void @register_gradient_procs(%struct._GimpPDB* %pdb) #0 {
entry:
  %pdb.addr = alloca %struct._GimpPDB*, align 8
  %procedure = alloca %struct._GimpProcedure*, align 8
  store %struct._GimpPDB* %pdb, %struct._GimpPDB** %pdb.addr, align 8
  %call = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @gradient_new_invoker)
  store %struct._GimpProcedure* %call, %struct._GimpProcedure** %procedure, align 8
  %0 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %1 = bitcast %struct._GimpProcedure* %0 to %struct._GTypeInstance*
  %call1 = call i64 @gimp_object_get_type() #4
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call1)
  %2 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %2, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0))
  %3 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %3, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* null)
  %4 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call3 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i32 0, i32 0), i32 0, i32 0, i32 1, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %4, %struct._GParamSpec* %call3)
  %5 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call4 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i32 0, i32 0), i32 0, i32 0, i32 0, i8* null, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %5, %struct._GParamSpec* %call4)
  %6 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %7 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %6, %struct._GimpProcedure* %7)
  %8 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %9 = bitcast %struct._GimpProcedure* %8 to i8*
  call void @g_object_unref(i8* %9)
  %call5 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @gradient_duplicate_invoker)
  store %struct._GimpProcedure* %call5, %struct._GimpProcedure** %procedure, align 8
  %10 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %11 = bitcast %struct._GimpProcedure* %10 to %struct._GTypeInstance*
  %call6 = call i64 @gimp_object_get_type() #4
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call6)
  %12 = bitcast %struct._GTypeInstance* %call7 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %12, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i32 0, i32 0))
  %13 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %13, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* null)
  %14 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call8 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i32 0, i32 0), i32 0, i32 0, i32 1, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %14, %struct._GParamSpec* %call8)
  %15 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call9 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.17, i32 0, i32 0), i32 0, i32 0, i32 0, i8* null, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %15, %struct._GParamSpec* %call9)
  %16 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %17 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %16, %struct._GimpProcedure* %17)
  %18 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %19 = bitcast %struct._GimpProcedure* %18 to i8*
  call void @g_object_unref(i8* %19)
  %call10 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @gradient_is_editable_invoker)
  store %struct._GimpProcedure* %call10, %struct._GimpProcedure** %procedure, align 8
  %20 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %21 = bitcast %struct._GimpProcedure* %20 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_object_get_type() #4
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call11)
  %22 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %22, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.18, i32 0, i32 0))
  %23 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %23, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i32 0, i32 0), i8* null)
  %24 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call13 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i32 0, i32 0), i32 0, i32 0, i32 1, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %24, %struct._GParamSpec* %call13)
  %25 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call14 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.25, i32 0, i32 0), i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %25, %struct._GParamSpec* %call14)
  %26 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %27 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %26, %struct._GimpProcedure* %27)
  %28 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %29 = bitcast %struct._GimpProcedure* %28 to i8*
  call void @g_object_unref(i8* %29)
  %call15 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @gradient_rename_invoker)
  store %struct._GimpProcedure* %call15, %struct._GimpProcedure** %procedure, align 8
  %30 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %31 = bitcast %struct._GimpProcedure* %30 to %struct._GTypeInstance*
  %call16 = call i64 @gimp_object_get_type() #4
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 %call16)
  %32 = bitcast %struct._GTypeInstance* %call17 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %32, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.26, i32 0, i32 0))
  %33 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %33, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* null)
  %34 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call18 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i32 0, i32 0), i32 0, i32 0, i32 1, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %34, %struct._GParamSpec* %call18)
  %35 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call19 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.31, i32 0, i32 0), i32 0, i32 0, i32 1, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %35, %struct._GParamSpec* %call19)
  %36 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call20 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.32, i32 0, i32 0), i32 0, i32 0, i32 0, i8* null, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %36, %struct._GParamSpec* %call20)
  %37 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %38 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %37, %struct._GimpProcedure* %38)
  %39 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %40 = bitcast %struct._GimpProcedure* %39 to i8*
  call void @g_object_unref(i8* %40)
  %call21 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @gradient_delete_invoker)
  store %struct._GimpProcedure* %call21, %struct._GimpProcedure** %procedure, align 8
  %41 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %42 = bitcast %struct._GimpProcedure* %41 to %struct._GTypeInstance*
  %call22 = call i64 @gimp_object_get_type() #4
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %42, i64 %call22)
  %43 = bitcast %struct._GTypeInstance* %call23 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %43, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.33, i32 0, i32 0))
  %44 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %44, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* null)
  %45 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call24 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i32 0, i32 0), i32 0, i32 0, i32 1, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %45, %struct._GParamSpec* %call24)
  %46 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %47 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %46, %struct._GimpProcedure* %47)
  %48 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %49 = bitcast %struct._GimpProcedure* %48 to i8*
  call void @g_object_unref(i8* %49)
  %call25 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @gradient_get_number_of_segments_invoker)
  store %struct._GimpProcedure* %call25, %struct._GimpProcedure** %procedure, align 8
  %50 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %51 = bitcast %struct._GimpProcedure* %50 to %struct._GTypeInstance*
  %call26 = call i64 @gimp_object_get_type() #4
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %51, i64 %call26)
  %52 = bitcast %struct._GTypeInstance* %call27 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %52, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.36, i32 0, i32 0))
  %53 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %53, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.41, i32 0, i32 0), i8* null)
  %54 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call28 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i32 0, i32 0), i32 0, i32 0, i32 1, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %54, %struct._GParamSpec* %call28)
  %55 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call29 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.44, i32 0, i32 0), i32 -2147483648, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %55, %struct._GParamSpec* %call29)
  %56 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %57 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %56, %struct._GimpProcedure* %57)
  %58 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %59 = bitcast %struct._GimpProcedure* %58 to i8*
  call void @g_object_unref(i8* %59)
  %call30 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @gradient_get_uniform_samples_invoker)
  store %struct._GimpProcedure* %call30, %struct._GimpProcedure** %procedure, align 8
  %60 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %61 = bitcast %struct._GimpProcedure* %60 to %struct._GTypeInstance*
  %call31 = call i64 @gimp_object_get_type() #4
  %call32 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %61, i64 %call31)
  %62 = bitcast %struct._GTypeInstance* %call32 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %62, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.45, i32 0, i32 0))
  %63 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %63, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([435 x i8], [435 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.49, i32 0, i32 0), i8* null)
  %64 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call33 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i32 0, i32 0), i32 0, i32 0, i32 1, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %64, %struct._GParamSpec* %call33)
  %65 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call34 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.52, i32 0, i32 0), i32 2, i32 2147483647, i32 2, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %65, %struct._GParamSpec* %call34)
  %66 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call35 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.54, i32 0, i32 0), i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %66, %struct._GParamSpec* %call35)
  %67 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call36 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.57, i32 0, i32 0), i32 0, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %67, %struct._GParamSpec* %call36)
  %68 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call37 = call %struct._GParamSpec* @gimp_param_spec_float_array(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.60, i32 0, i32 0), i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %68, %struct._GParamSpec* %call37)
  %69 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %70 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %69, %struct._GimpProcedure* %70)
  %71 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %72 = bitcast %struct._GimpProcedure* %71 to i8*
  call void @g_object_unref(i8* %72)
  %call38 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @gradient_get_custom_samples_invoker)
  store %struct._GimpProcedure* %call38, %struct._GimpProcedure** %procedure, align 8
  %73 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %74 = bitcast %struct._GimpProcedure* %73 to %struct._GTypeInstance*
  %call39 = call i64 @gimp_object_get_type() #4
  %call40 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %74, i64 %call39)
  %75 = bitcast %struct._GTypeInstance* %call40 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %75, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.61, i32 0, i32 0))
  %76 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %76, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([372 x i8], [372 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.49, i32 0, i32 0), i8* null)
  %77 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call41 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i32 0, i32 0), i32 0, i32 0, i32 1, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %77, %struct._GParamSpec* %call41)
  %78 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call42 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.52, i32 0, i32 0), i32 1, i32 2147483647, i32 1, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %78, %struct._GParamSpec* %call42)
  %79 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call43 = call %struct._GParamSpec* @gimp_param_spec_float_array(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.65, i32 0, i32 0), i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %79, %struct._GParamSpec* %call43)
  %80 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call44 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.54, i32 0, i32 0), i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %80, %struct._GParamSpec* %call44)
  %81 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call45 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.57, i32 0, i32 0), i32 0, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %81, %struct._GParamSpec* %call45)
  %82 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call46 = call %struct._GParamSpec* @gimp_param_spec_float_array(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.60, i32 0, i32 0), i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %82, %struct._GParamSpec* %call46)
  %83 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %84 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %83, %struct._GimpProcedure* %84)
  %85 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %86 = bitcast %struct._GimpProcedure* %85 to i8*
  call void @g_object_unref(i8* %86)
  %call47 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @gradient_segment_get_left_color_invoker)
  store %struct._GimpProcedure* %call47, %struct._GimpProcedure** %procedure, align 8
  %87 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %88 = bitcast %struct._GimpProcedure* %87 to %struct._GTypeInstance*
  %call48 = call i64 @gimp_object_get_type() #4
  %call49 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %88, i64 %call48)
  %89 = bitcast %struct._GTypeInstance* %call49 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %89, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.66, i32 0, i32 0))
  %90 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %90, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([101 x i8], [101 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* null)
  %91 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call50 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i32 0, i32 0), i32 0, i32 0, i32 1, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %91, %struct._GParamSpec* %call50)
  %92 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call51 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.70, i32 0, i32 0), i32 0, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %92, %struct._GParamSpec* %call51)
  %93 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call52 = call %struct._GParamSpec* @gimp_param_spec_rgb(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.72, i32 0, i32 0), i32 0, %struct._GimpRGB* null, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %93, %struct._GParamSpec* %call52)
  %94 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call53 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.73, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.73, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.74, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %94, %struct._GParamSpec* %call53)
  %95 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %96 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %95, %struct._GimpProcedure* %96)
  %97 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %98 = bitcast %struct._GimpProcedure* %97 to i8*
  call void @g_object_unref(i8* %98)
  %call54 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @gradient_segment_set_left_color_invoker)
  store %struct._GimpProcedure* %call54, %struct._GimpProcedure** %procedure, align 8
  %99 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %100 = bitcast %struct._GimpProcedure* %99 to %struct._GTypeInstance*
  %call55 = call i64 @gimp_object_get_type() #4
  %call56 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %100, i64 %call55)
  %101 = bitcast %struct._GTypeInstance* %call56 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %101, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.75, i32 0, i32 0))
  %102 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %102, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.75, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.76, i32 0, i32 0), i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.77, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* null)
  %103 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call57 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i32 0, i32 0), i32 0, i32 0, i32 1, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %103, %struct._GParamSpec* %call57)
  %104 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call58 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.70, i32 0, i32 0), i32 0, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %104, %struct._GParamSpec* %call58)
  %105 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call59 = call %struct._GParamSpec* @gimp_param_spec_rgb(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.78, i32 0, i32 0), i32 0, %struct._GimpRGB* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %105, %struct._GParamSpec* %call59)
  %106 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call60 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.73, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.73, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.79, i32 0, i32 0), double 0.000000e+00, double 1.000000e+02, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %106, %struct._GParamSpec* %call60)
  %107 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %108 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %107, %struct._GimpProcedure* %108)
  %109 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %110 = bitcast %struct._GimpProcedure* %109 to i8*
  call void @g_object_unref(i8* %110)
  %call61 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @gradient_segment_get_right_color_invoker)
  store %struct._GimpProcedure* %call61, %struct._GimpProcedure** %procedure, align 8
  %111 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %112 = bitcast %struct._GimpProcedure* %111 to %struct._GTypeInstance*
  %call62 = call i64 @gimp_object_get_type() #4
  %call63 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %112, i64 %call62)
  %113 = bitcast %struct._GTypeInstance* %call63 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %113, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.80, i32 0, i32 0))
  %114 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %114, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.80, i32 0, i32 0), i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.81, i32 0, i32 0), i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str.82, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* null)
  %115 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call64 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i32 0, i32 0), i32 0, i32 0, i32 1, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %115, %struct._GParamSpec* %call64)
  %116 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call65 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.70, i32 0, i32 0), i32 0, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %116, %struct._GParamSpec* %call65)
  %117 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call66 = call %struct._GParamSpec* @gimp_param_spec_rgb(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.72, i32 0, i32 0), i32 0, %struct._GimpRGB* null, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %117, %struct._GParamSpec* %call66)
  %118 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call67 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.73, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.73, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.74, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %118, %struct._GParamSpec* %call67)
  %119 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %120 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %119, %struct._GimpProcedure* %120)
  %121 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %122 = bitcast %struct._GimpProcedure* %121 to i8*
  call void @g_object_unref(i8* %122)
  %call68 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @gradient_segment_set_right_color_invoker)
  store %struct._GimpProcedure* %call68, %struct._GimpProcedure** %procedure, align 8
  %123 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %124 = bitcast %struct._GimpProcedure* %123 to %struct._GTypeInstance*
  %call69 = call i64 @gimp_object_get_type() #4
  %call70 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %124, i64 %call69)
  %125 = bitcast %struct._GTypeInstance* %call70 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %125, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.83, i32 0, i32 0))
  %126 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %126, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.83, i32 0, i32 0), i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.84, i32 0, i32 0), i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.85, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* null)
  %127 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call71 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i32 0, i32 0), i32 0, i32 0, i32 1, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %127, %struct._GParamSpec* %call71)
  %128 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call72 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.70, i32 0, i32 0), i32 0, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %128, %struct._GParamSpec* %call72)
  %129 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call73 = call %struct._GParamSpec* @gimp_param_spec_rgb(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.78, i32 0, i32 0), i32 0, %struct._GimpRGB* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %129, %struct._GParamSpec* %call73)
  %130 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call74 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.73, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.73, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.79, i32 0, i32 0), double 0.000000e+00, double 1.000000e+02, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %130, %struct._GParamSpec* %call74)
  %131 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %132 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %131, %struct._GimpProcedure* %132)
  %133 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %134 = bitcast %struct._GimpProcedure* %133 to i8*
  call void @g_object_unref(i8* %134)
  %call75 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @gradient_segment_get_left_pos_invoker)
  store %struct._GimpProcedure* %call75, %struct._GimpProcedure** %procedure, align 8
  %135 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %136 = bitcast %struct._GimpProcedure* %135 to %struct._GTypeInstance*
  %call76 = call i64 @gimp_object_get_type() #4
  %call77 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %136, i64 %call76)
  %137 = bitcast %struct._GTypeInstance* %call77 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %137, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.86, i32 0, i32 0))
  %138 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %138, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.86, i32 0, i32 0), i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.87, i32 0, i32 0), i8* getelementptr inbounds ([104 x i8], [104 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* null)
  %139 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call78 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i32 0, i32 0), i32 0, i32 0, i32 1, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %139, %struct._GParamSpec* %call78)
  %140 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call79 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.70, i32 0, i32 0), i32 0, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %140, %struct._GParamSpec* %call79)
  %141 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call80 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.89, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.89, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.90, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %141, %struct._GParamSpec* %call80)
  %142 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %143 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %142, %struct._GimpProcedure* %143)
  %144 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %145 = bitcast %struct._GimpProcedure* %144 to i8*
  call void @g_object_unref(i8* %145)
  %call81 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @gradient_segment_set_left_pos_invoker)
  store %struct._GimpProcedure* %call81, %struct._GimpProcedure** %procedure, align 8
  %146 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %147 = bitcast %struct._GimpProcedure* %146 to %struct._GTypeInstance*
  %call82 = call i64 @gimp_object_get_type() #4
  %call83 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %147, i64 %call82)
  %148 = bitcast %struct._GTypeInstance* %call83 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %148, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.91, i32 0, i32 0))
  %149 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %149, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.91, i32 0, i32 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.92, i32 0, i32 0), i8* getelementptr inbounds ([267 x i8], [267 x i8]* @.str.93, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* null)
  %150 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call84 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i32 0, i32 0), i32 0, i32 0, i32 1, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %150, %struct._GParamSpec* %call84)
  %151 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call85 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.70, i32 0, i32 0), i32 0, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %151, %struct._GParamSpec* %call85)
  %152 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call86 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.89, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.89, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.94, i32 0, i32 0), double 0.000000e+00, double 1.000000e+00, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %152, %struct._GParamSpec* %call86)
  %153 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call87 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.95, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.96, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.90, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %153, %struct._GParamSpec* %call87)
  %154 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %155 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %154, %struct._GimpProcedure* %155)
  %156 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %157 = bitcast %struct._GimpProcedure* %156 to i8*
  call void @g_object_unref(i8* %157)
  %call88 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @gradient_segment_get_middle_pos_invoker)
  store %struct._GimpProcedure* %call88, %struct._GimpProcedure** %procedure, align 8
  %158 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %159 = bitcast %struct._GimpProcedure* %158 to %struct._GTypeInstance*
  %call89 = call i64 @gimp_object_get_type() #4
  %call90 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %159, i64 %call89)
  %160 = bitcast %struct._GTypeInstance* %call90 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %160, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.97, i32 0, i32 0))
  %161 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %161, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.97, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.98, i32 0, i32 0), i8* getelementptr inbounds ([103 x i8], [103 x i8]* @.str.99, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* null)
  %162 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call91 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i32 0, i32 0), i32 0, i32 0, i32 1, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %162, %struct._GParamSpec* %call91)
  %163 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call92 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.70, i32 0, i32 0), i32 0, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %163, %struct._GParamSpec* %call92)
  %164 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call93 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.89, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.89, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.90, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %164, %struct._GParamSpec* %call93)
  %165 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %166 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %165, %struct._GimpProcedure* %166)
  %167 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %168 = bitcast %struct._GimpProcedure* %167 to i8*
  call void @g_object_unref(i8* %168)
  %call94 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @gradient_segment_set_middle_pos_invoker)
  store %struct._GimpProcedure* %call94, %struct._GimpProcedure** %procedure, align 8
  %169 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %170 = bitcast %struct._GimpProcedure* %169 to %struct._GTypeInstance*
  %call95 = call i64 @gimp_object_get_type() #4
  %call96 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %170, i64 %call95)
  %171 = bitcast %struct._GTypeInstance* %call96 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %171, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.100, i32 0, i32 0))
  %172 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %172, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.100, i32 0, i32 0), i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.101, i32 0, i32 0), i8* getelementptr inbounds ([210 x i8], [210 x i8]* @.str.102, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* null)
  %173 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call97 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i32 0, i32 0), i32 0, i32 0, i32 1, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %173, %struct._GParamSpec* %call97)
  %174 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call98 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.70, i32 0, i32 0), i32 0, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %174, %struct._GParamSpec* %call98)
  %175 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call99 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.89, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.89, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.94, i32 0, i32 0), double 0.000000e+00, double 1.000000e+00, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %175, %struct._GParamSpec* %call99)
  %176 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call100 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.95, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.96, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.90, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %176, %struct._GParamSpec* %call100)
  %177 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %178 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %177, %struct._GimpProcedure* %178)
  %179 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %180 = bitcast %struct._GimpProcedure* %179 to i8*
  call void @g_object_unref(i8* %180)
  %call101 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @gradient_segment_get_right_pos_invoker)
  store %struct._GimpProcedure* %call101, %struct._GimpProcedure** %procedure, align 8
  %181 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %182 = bitcast %struct._GimpProcedure* %181 to %struct._GTypeInstance*
  %call102 = call i64 @gimp_object_get_type() #4
  %call103 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %182, i64 %call102)
  %183 = bitcast %struct._GTypeInstance* %call103 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %183, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.103, i32 0, i32 0))
  %184 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %184, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.103, i32 0, i32 0), i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.104, i32 0, i32 0), i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str.105, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* null)
  %185 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call104 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i32 0, i32 0), i32 0, i32 0, i32 1, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %185, %struct._GParamSpec* %call104)
  %186 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call105 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.70, i32 0, i32 0), i32 0, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %186, %struct._GParamSpec* %call105)
  %187 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call106 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.89, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.89, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.90, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %187, %struct._GParamSpec* %call106)
  %188 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %189 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %188, %struct._GimpProcedure* %189)
  %190 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %191 = bitcast %struct._GimpProcedure* %190 to i8*
  call void @g_object_unref(i8* %191)
  %call107 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @gradient_segment_set_right_pos_invoker)
  store %struct._GimpProcedure* %call107, %struct._GimpProcedure** %procedure, align 8
  %192 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %193 = bitcast %struct._GimpProcedure* %192 to %struct._GTypeInstance*
  %call108 = call i64 @gimp_object_get_type() #4
  %call109 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %193, i64 %call108)
  %194 = bitcast %struct._GTypeInstance* %call109 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %194, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.106, i32 0, i32 0))
  %195 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %195, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.106, i32 0, i32 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.107, i32 0, i32 0), i8* getelementptr inbounds ([284 x i8], [284 x i8]* @.str.108, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* null)
  %196 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call110 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i32 0, i32 0), i32 0, i32 0, i32 1, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %196, %struct._GParamSpec* %call110)
  %197 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call111 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.70, i32 0, i32 0), i32 0, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %197, %struct._GParamSpec* %call111)
  %198 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call112 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.89, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.89, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.94, i32 0, i32 0), double 0.000000e+00, double 1.000000e+00, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %198, %struct._GParamSpec* %call112)
  %199 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call113 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.95, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.96, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.90, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %199, %struct._GParamSpec* %call113)
  %200 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %201 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %200, %struct._GimpProcedure* %201)
  %202 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %203 = bitcast %struct._GimpProcedure* %202 to i8*
  call void @g_object_unref(i8* %203)
  %call114 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @gradient_segment_get_blending_function_invoker)
  store %struct._GimpProcedure* %call114, %struct._GimpProcedure** %procedure, align 8
  %204 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %205 = bitcast %struct._GimpProcedure* %204 to %struct._GTypeInstance*
  %call115 = call i64 @gimp_object_get_type() #4
  %call116 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %205, i64 %call115)
  %206 = bitcast %struct._GTypeInstance* %call116 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %206, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.109, i32 0, i32 0))
  %207 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %207, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.109, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.110, i32 0, i32 0), i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.111, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* null)
  %208 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call117 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i32 0, i32 0), i32 0, i32 0, i32 1, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %208, %struct._GParamSpec* %call117)
  %209 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call118 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.70, i32 0, i32 0), i32 0, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %209, %struct._GParamSpec* %call118)
  %210 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call119 = call i64 @gimp_gradient_segment_type_get_type() #4
  %call120 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.112, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.113, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.114, i32 0, i32 0), i64 %call119, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %210, %struct._GParamSpec* %call120)
  %211 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %212 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %211, %struct._GimpProcedure* %212)
  %213 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %214 = bitcast %struct._GimpProcedure* %213 to i8*
  call void @g_object_unref(i8* %214)
  %call121 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @gradient_segment_get_coloring_type_invoker)
  store %struct._GimpProcedure* %call121, %struct._GimpProcedure** %procedure, align 8
  %215 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %216 = bitcast %struct._GimpProcedure* %215 to %struct._GTypeInstance*
  %call122 = call i64 @gimp_object_get_type() #4
  %call123 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %216, i64 %call122)
  %217 = bitcast %struct._GTypeInstance* %call123 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %217, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.115, i32 0, i32 0))
  %218 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %218, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.115, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.116, i32 0, i32 0), i8* getelementptr inbounds ([108 x i8], [108 x i8]* @.str.117, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* null)
  %219 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call124 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i32 0, i32 0), i32 0, i32 0, i32 1, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %219, %struct._GParamSpec* %call124)
  %220 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call125 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.70, i32 0, i32 0), i32 0, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %220, %struct._GParamSpec* %call125)
  %221 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call126 = call i64 @gimp_gradient_segment_color_get_type() #4
  %call127 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.118, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.119, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.120, i32 0, i32 0), i64 %call126, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %221, %struct._GParamSpec* %call127)
  %222 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %223 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %222, %struct._GimpProcedure* %223)
  %224 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %225 = bitcast %struct._GimpProcedure* %224 to i8*
  call void @g_object_unref(i8* %225)
  %call128 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @gradient_segment_range_set_blending_function_invoker)
  store %struct._GimpProcedure* %call128, %struct._GimpProcedure** %procedure, align 8
  %226 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %227 = bitcast %struct._GimpProcedure* %226 to %struct._GTypeInstance*
  %call129 = call i64 @gimp_object_get_type() #4
  %call130 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %227, i64 %call129)
  %228 = bitcast %struct._GTypeInstance* %call130 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %228, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.121, i32 0, i32 0))
  %229 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %229, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.121, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.122, i32 0, i32 0), i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str.123, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* null)
  %230 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call131 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i32 0, i32 0), i32 0, i32 0, i32 1, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %230, %struct._GParamSpec* %call131)
  %231 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call132 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.124, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.125, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.126, i32 0, i32 0), i32 0, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %231, %struct._GParamSpec* %call132)
  %232 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call133 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.127, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.128, i32 0, i32 0), i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str.129, i32 0, i32 0), i32 -2147483648, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %232, %struct._GParamSpec* %call133)
  %233 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call134 = call i64 @gimp_gradient_segment_type_get_type() #4
  %call135 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.130, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.131, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.132, i32 0, i32 0), i64 %call134, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %233, %struct._GParamSpec* %call135)
  %234 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %235 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %234, %struct._GimpProcedure* %235)
  %236 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %237 = bitcast %struct._GimpProcedure* %236 to i8*
  call void @g_object_unref(i8* %237)
  %call136 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @gradient_segment_range_set_coloring_type_invoker)
  store %struct._GimpProcedure* %call136, %struct._GimpProcedure** %procedure, align 8
  %238 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %239 = bitcast %struct._GimpProcedure* %238 to %struct._GTypeInstance*
  %call137 = call i64 @gimp_object_get_type() #4
  %call138 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %239, i64 %call137)
  %240 = bitcast %struct._GTypeInstance* %call138 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %240, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.133, i32 0, i32 0))
  %241 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %241, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.133, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.134, i32 0, i32 0), i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.135, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* null)
  %242 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call139 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i32 0, i32 0), i32 0, i32 0, i32 1, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %242, %struct._GParamSpec* %call139)
  %243 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call140 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.124, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.125, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.126, i32 0, i32 0), i32 0, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %243, %struct._GParamSpec* %call140)
  %244 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call141 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.127, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.128, i32 0, i32 0), i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str.129, i32 0, i32 0), i32 -2147483648, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %244, %struct._GParamSpec* %call141)
  %245 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call142 = call i64 @gimp_gradient_segment_color_get_type() #4
  %call143 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.118, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.119, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.136, i32 0, i32 0), i64 %call142, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %245, %struct._GParamSpec* %call143)
  %246 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %247 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %246, %struct._GimpProcedure* %247)
  %248 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %249 = bitcast %struct._GimpProcedure* %248 to i8*
  call void @g_object_unref(i8* %249)
  %call144 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @gradient_segment_range_flip_invoker)
  store %struct._GimpProcedure* %call144, %struct._GimpProcedure** %procedure, align 8
  %250 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %251 = bitcast %struct._GimpProcedure* %250 to %struct._GTypeInstance*
  %call145 = call i64 @gimp_object_get_type() #4
  %call146 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %251, i64 %call145)
  %252 = bitcast %struct._GTypeInstance* %call146 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %252, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.137, i32 0, i32 0))
  %253 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %253, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.137, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.138, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.139, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* null)
  %254 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call147 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i32 0, i32 0), i32 0, i32 0, i32 1, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %254, %struct._GParamSpec* %call147)
  %255 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call148 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.124, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.125, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.126, i32 0, i32 0), i32 0, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %255, %struct._GParamSpec* %call148)
  %256 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call149 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.127, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.128, i32 0, i32 0), i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str.129, i32 0, i32 0), i32 -2147483648, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %256, %struct._GParamSpec* %call149)
  %257 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %258 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %257, %struct._GimpProcedure* %258)
  %259 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %260 = bitcast %struct._GimpProcedure* %259 to i8*
  call void @g_object_unref(i8* %260)
  %call150 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @gradient_segment_range_replicate_invoker)
  store %struct._GimpProcedure* %call150, %struct._GimpProcedure** %procedure, align 8
  %261 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %262 = bitcast %struct._GimpProcedure* %261 to %struct._GTypeInstance*
  %call151 = call i64 @gimp_object_get_type() #4
  %call152 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %262, i64 %call151)
  %263 = bitcast %struct._GTypeInstance* %call152 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %263, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.140, i32 0, i32 0))
  %264 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %264, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.140, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.141, i32 0, i32 0), i8* getelementptr inbounds ([170 x i8], [170 x i8]* @.str.142, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* null)
  %265 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call153 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i32 0, i32 0), i32 0, i32 0, i32 1, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %265, %struct._GParamSpec* %call153)
  %266 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call154 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.124, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.125, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.126, i32 0, i32 0), i32 0, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %266, %struct._GParamSpec* %call154)
  %267 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call155 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.127, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.128, i32 0, i32 0), i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str.129, i32 0, i32 0), i32 -2147483648, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %267, %struct._GParamSpec* %call155)
  %268 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call156 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.143, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.144, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.145, i32 0, i32 0), i32 2, i32 20, i32 2, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %268, %struct._GParamSpec* %call156)
  %269 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %270 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %269, %struct._GimpProcedure* %270)
  %271 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %272 = bitcast %struct._GimpProcedure* %271 to i8*
  call void @g_object_unref(i8* %272)
  %call157 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @gradient_segment_range_split_midpoint_invoker)
  store %struct._GimpProcedure* %call157, %struct._GimpProcedure** %procedure, align 8
  %273 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %274 = bitcast %struct._GimpProcedure* %273 to %struct._GTypeInstance*
  %call158 = call i64 @gimp_object_get_type() #4
  %call159 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %274, i64 %call158)
  %275 = bitcast %struct._GTypeInstance* %call159 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %275, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.146, i32 0, i32 0))
  %276 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %276, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.146, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.147, i32 0, i32 0), i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.148, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* null)
  %277 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call160 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i32 0, i32 0), i32 0, i32 0, i32 1, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %277, %struct._GParamSpec* %call160)
  %278 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call161 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.124, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.125, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.126, i32 0, i32 0), i32 0, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %278, %struct._GParamSpec* %call161)
  %279 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call162 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.127, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.128, i32 0, i32 0), i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str.129, i32 0, i32 0), i32 -2147483648, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %279, %struct._GParamSpec* %call162)
  %280 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %281 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %280, %struct._GimpProcedure* %281)
  %282 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %283 = bitcast %struct._GimpProcedure* %282 to i8*
  call void @g_object_unref(i8* %283)
  %call163 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @gradient_segment_range_split_uniform_invoker)
  store %struct._GimpProcedure* %call163, %struct._GimpProcedure** %procedure, align 8
  %284 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %285 = bitcast %struct._GimpProcedure* %284 to %struct._GTypeInstance*
  %call164 = call i64 @gimp_object_get_type() #4
  %call165 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %285, i64 %call164)
  %286 = bitcast %struct._GTypeInstance* %call165 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %286, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.149, i32 0, i32 0))
  %287 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %287, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.149, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.150, i32 0, i32 0), i8* getelementptr inbounds ([126 x i8], [126 x i8]* @.str.151, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* null)
  %288 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call166 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i32 0, i32 0), i32 0, i32 0, i32 1, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %288, %struct._GParamSpec* %call166)
  %289 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call167 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.124, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.125, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.126, i32 0, i32 0), i32 0, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %289, %struct._GParamSpec* %call167)
  %290 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call168 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.127, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.128, i32 0, i32 0), i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str.129, i32 0, i32 0), i32 -2147483648, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %290, %struct._GParamSpec* %call168)
  %291 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call169 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.152, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.153, i32 0, i32 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.154, i32 0, i32 0), i32 2, i32 1024, i32 2, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %291, %struct._GParamSpec* %call169)
  %292 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %293 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %292, %struct._GimpProcedure* %293)
  %294 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %295 = bitcast %struct._GimpProcedure* %294 to i8*
  call void @g_object_unref(i8* %295)
  %call170 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @gradient_segment_range_delete_invoker)
  store %struct._GimpProcedure* %call170, %struct._GimpProcedure** %procedure, align 8
  %296 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %297 = bitcast %struct._GimpProcedure* %296 to %struct._GTypeInstance*
  %call171 = call i64 @gimp_object_get_type() #4
  %call172 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %297, i64 %call171)
  %298 = bitcast %struct._GTypeInstance* %call172 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %298, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.155, i32 0, i32 0))
  %299 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %299, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.155, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.156, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.157, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* null)
  %300 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call173 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i32 0, i32 0), i32 0, i32 0, i32 1, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %300, %struct._GParamSpec* %call173)
  %301 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call174 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.124, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.125, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.126, i32 0, i32 0), i32 0, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %301, %struct._GParamSpec* %call174)
  %302 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call175 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.127, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.128, i32 0, i32 0), i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str.129, i32 0, i32 0), i32 -2147483648, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %302, %struct._GParamSpec* %call175)
  %303 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %304 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %303, %struct._GimpProcedure* %304)
  %305 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %306 = bitcast %struct._GimpProcedure* %305 to i8*
  call void @g_object_unref(i8* %306)
  %call176 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @gradient_segment_range_redistribute_handles_invoker)
  store %struct._GimpProcedure* %call176, %struct._GimpProcedure** %procedure, align 8
  %307 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %308 = bitcast %struct._GimpProcedure* %307 to %struct._GTypeInstance*
  %call177 = call i64 @gimp_object_get_type() #4
  %call178 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %308, i64 %call177)
  %309 = bitcast %struct._GTypeInstance* %call178 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %309, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.158, i32 0, i32 0))
  %310 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %310, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.158, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.159, i32 0, i32 0), i8* getelementptr inbounds ([127 x i8], [127 x i8]* @.str.160, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* null)
  %311 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call179 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i32 0, i32 0), i32 0, i32 0, i32 1, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %311, %struct._GParamSpec* %call179)
  %312 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call180 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.124, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.125, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.126, i32 0, i32 0), i32 0, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %312, %struct._GParamSpec* %call180)
  %313 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call181 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.127, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.128, i32 0, i32 0), i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str.129, i32 0, i32 0), i32 -2147483648, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %313, %struct._GParamSpec* %call181)
  %314 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %315 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %314, %struct._GimpProcedure* %315)
  %316 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %317 = bitcast %struct._GimpProcedure* %316 to i8*
  call void @g_object_unref(i8* %317)
  %call182 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @gradient_segment_range_blend_colors_invoker)
  store %struct._GimpProcedure* %call182, %struct._GimpProcedure** %procedure, align 8
  %318 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %319 = bitcast %struct._GimpProcedure* %318 to %struct._GTypeInstance*
  %call183 = call i64 @gimp_object_get_type() #4
  %call184 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %319, i64 %call183)
  %320 = bitcast %struct._GTypeInstance* %call184 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %320, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.161, i32 0, i32 0))
  %321 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %321, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.161, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.162, i32 0, i32 0), i8* getelementptr inbounds ([161 x i8], [161 x i8]* @.str.163, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* null)
  %322 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call185 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i32 0, i32 0), i32 0, i32 0, i32 1, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %322, %struct._GParamSpec* %call185)
  %323 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call186 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.124, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.125, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.126, i32 0, i32 0), i32 0, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %323, %struct._GParamSpec* %call186)
  %324 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call187 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.127, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.128, i32 0, i32 0), i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str.129, i32 0, i32 0), i32 -2147483648, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %324, %struct._GParamSpec* %call187)
  %325 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %326 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %325, %struct._GimpProcedure* %326)
  %327 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %328 = bitcast %struct._GimpProcedure* %327 to i8*
  call void @g_object_unref(i8* %328)
  %call188 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @gradient_segment_range_blend_opacity_invoker)
  store %struct._GimpProcedure* %call188, %struct._GimpProcedure** %procedure, align 8
  %329 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %330 = bitcast %struct._GimpProcedure* %329 to %struct._GTypeInstance*
  %call189 = call i64 @gimp_object_get_type() #4
  %call190 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %330, i64 %call189)
  %331 = bitcast %struct._GTypeInstance* %call190 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %331, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.164, i32 0, i32 0))
  %332 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %332, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.164, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.165, i32 0, i32 0), i8* getelementptr inbounds ([163 x i8], [163 x i8]* @.str.166, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* null)
  %333 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call191 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i32 0, i32 0), i32 0, i32 0, i32 1, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %333, %struct._GParamSpec* %call191)
  %334 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call192 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.124, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.125, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.126, i32 0, i32 0), i32 0, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %334, %struct._GParamSpec* %call192)
  %335 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call193 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.127, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.128, i32 0, i32 0), i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str.129, i32 0, i32 0), i32 -2147483648, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %335, %struct._GParamSpec* %call193)
  %336 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %337 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %336, %struct._GimpProcedure* %337)
  %338 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %339 = bitcast %struct._GimpProcedure* %338 to i8*
  call void @g_object_unref(i8* %339)
  %call194 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @gradient_segment_range_move_invoker)
  store %struct._GimpProcedure* %call194, %struct._GimpProcedure** %procedure, align 8
  %340 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %341 = bitcast %struct._GimpProcedure* %340 to %struct._GTypeInstance*
  %call195 = call i64 @gimp_object_get_type() #4
  %call196 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %341, i64 %call195)
  %342 = bitcast %struct._GTypeInstance* %call196 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %342, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.167, i32 0, i32 0))
  %343 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %343, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.167, i32 0, i32 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.168, i32 0, i32 0), i8* getelementptr inbounds ([176 x i8], [176 x i8]* @.str.169, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* null)
  %344 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call197 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i32 0, i32 0), i32 0, i32 0, i32 1, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %344, %struct._GParamSpec* %call197)
  %345 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call198 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.124, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.125, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.126, i32 0, i32 0), i32 0, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %345, %struct._GParamSpec* %call198)
  %346 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call199 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.127, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.128, i32 0, i32 0), i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str.129, i32 0, i32 0), i32 -2147483648, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %346, %struct._GParamSpec* %call199)
  %347 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call200 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.170, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.170, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.171, i32 0, i32 0), double -1.000000e+00, double 1.000000e+00, double -1.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %347, %struct._GParamSpec* %call200)
  %348 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call201 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.172, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.173, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.174, i32 0, i32 0), i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %348, %struct._GParamSpec* %call201)
  %349 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call202 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.175, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.176, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.177, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %349, %struct._GParamSpec* %call202)
  %350 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %351 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %350, %struct._GimpProcedure* %351)
  %352 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %353 = bitcast %struct._GimpProcedure* %352 to i8*
  call void @g_object_unref(i8* %353)
  ret void
}

declare %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)*) #1

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @gradient_new_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %return_vals = alloca %struct._GValueArray*, align 8
  %name = alloca i8*, align 8
  %actual_name = alloca i8*, align 8
  %data = alloca %struct._GimpData*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store i8* null, i8** %actual_name, align 8
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %call = call i8* @g_value_get_string(%struct._GValue* %arrayidx)
  store i8* %call, i8** %name, align 8
  %2 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end.6

if.then:                                          ; preds = %entry
  %3 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %gradient_factory = getelementptr inbounds %struct._Gimp, %struct._Gimp* %3, i32 0, i32 40
  %4 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %gradient_factory, align 8
  %5 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %6 = load i8*, i8** %name, align 8
  %call1 = call %struct._GimpData* @gimp_data_factory_data_new(%struct._GimpDataFactory* %4, %struct._GimpContext* %5, i8* %6)
  store %struct._GimpData* %call1, %struct._GimpData** %data, align 8
  %7 = load %struct._GimpData*, %struct._GimpData** %data, align 8
  %tobool2 = icmp ne %struct._GimpData* %7, null
  br i1 %tobool2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  %8 = load %struct._GimpData*, %struct._GimpData** %data, align 8
  %9 = bitcast %struct._GimpData* %8 to i8*
  %call4 = call i8* @gimp_object_get_name(i8* %9)
  %call5 = call noalias i8* @g_strdup(i8* %call4)
  store i8* %call5, i8** %actual_name, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
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
  store %struct._GValueArray* %call8, %struct._GValueArray** %return_vals, align 8
  %15 = load i32, i32* %success, align 4
  %tobool9 = icmp ne i32 %15, 0
  br i1 %tobool9, label %if.then.10, label %if.end.13

if.then.10:                                       ; preds = %cond.end
  %16 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values11 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %16, i32 0, i32 1
  %17 = load %struct._GValue*, %struct._GValue** %values11, align 8
  %arrayidx12 = getelementptr inbounds %struct._GValue, %struct._GValue* %17, i64 1
  %18 = load i8*, i8** %actual_name, align 8
  call void @g_value_take_string(%struct._GValue* %arrayidx12, i8* %18)
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.10, %cond.end
  %19 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %19
}

declare void @gimp_object_set_static_name(%struct._GimpObject*, i8*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #2

declare void @gimp_procedure_set_static_strings(%struct._GimpProcedure*, i8*, i8*, i8*, i8*, i8*, i8*, i8*) #1

declare void @gimp_procedure_add_argument(%struct._GimpProcedure*, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @gimp_param_spec_string(i8*, i8*, i8*, i32, i32, i32, i8*, i32) #1

declare void @gimp_procedure_add_return_value(%struct._GimpProcedure*, %struct._GParamSpec*) #1

declare void @gimp_pdb_register_procedure(%struct._GimpPDB*, %struct._GimpProcedure*) #1

declare void @g_object_unref(i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @gradient_duplicate_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %return_vals = alloca %struct._GValueArray*, align 8
  %name = alloca i8*, align 8
  %copy_name = alloca i8*, align 8
  %gradient = alloca %struct._GimpGradient*, align 8
  %gradient_copy = alloca %struct._GimpGradient*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store i8* null, i8** %copy_name, align 8
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %call = call i8* @g_value_get_string(%struct._GValue* %arrayidx)
  store i8* %call, i8** %name, align 8
  %2 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end.13

if.then:                                          ; preds = %entry
  %3 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %4 = load i8*, i8** %name, align 8
  %5 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call1 = call %struct._GimpGradient* @gimp_pdb_get_gradient(%struct._Gimp* %3, i8* %4, i32 0, %struct._GError** %5)
  store %struct._GimpGradient* %call1, %struct._GimpGradient** %gradient, align 8
  %6 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %tobool2 = icmp ne %struct._GimpGradient* %6, null
  br i1 %tobool2, label %if.then.3, label %if.else.11

if.then.3:                                        ; preds = %if.then
  %7 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %gradient_factory = getelementptr inbounds %struct._Gimp, %struct._Gimp* %7, i32 0, i32 40
  %8 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %gradient_factory, align 8
  %9 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %10 = bitcast %struct._GimpGradient* %9 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_data_get_type() #4
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call4)
  %11 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpData*
  %call6 = call %struct._GimpData* @gimp_data_factory_data_duplicate(%struct._GimpDataFactory* %8, %struct._GimpData* %11)
  %12 = bitcast %struct._GimpData* %call6 to %struct._GimpGradient*
  store %struct._GimpGradient* %12, %struct._GimpGradient** %gradient_copy, align 8
  %13 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient_copy, align 8
  %tobool7 = icmp ne %struct._GimpGradient* %13, null
  br i1 %tobool7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.then.3
  %14 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient_copy, align 8
  %15 = bitcast %struct._GimpGradient* %14 to i8*
  %call9 = call i8* @gimp_object_get_name(i8* %15)
  %call10 = call noalias i8* @g_strdup(i8* %call9)
  store i8* %call10, i8** %copy_name, align 8
  br label %if.end

if.else:                                          ; preds = %if.then.3
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.8
  br label %if.end.12

if.else.11:                                       ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end.12

if.end.12:                                        ; preds = %if.else.11, %if.end
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %entry
  %16 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %17 = load i32, i32* %success, align 4
  %18 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool14 = icmp ne %struct._GError** %18, null
  br i1 %tobool14, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.13
  %19 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %20 = load %struct._GError*, %struct._GError** %19, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.13
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %20, %cond.true ], [ null, %cond.false ]
  %call15 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %16, i32 %17, %struct._GError* %cond)
  store %struct._GValueArray* %call15, %struct._GValueArray** %return_vals, align 8
  %21 = load i32, i32* %success, align 4
  %tobool16 = icmp ne i32 %21, 0
  br i1 %tobool16, label %if.then.17, label %if.end.20

if.then.17:                                       ; preds = %cond.end
  %22 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values18 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %22, i32 0, i32 1
  %23 = load %struct._GValue*, %struct._GValue** %values18, align 8
  %arrayidx19 = getelementptr inbounds %struct._GValue, %struct._GValue* %23, i64 1
  %24 = load i8*, i8** %copy_name, align 8
  call void @g_value_take_string(%struct._GValue* %arrayidx19, i8* %24)
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.17, %cond.end
  %25 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %25
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @gradient_is_editable_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %return_vals = alloca %struct._GValueArray*, align 8
  %name = alloca i8*, align 8
  %editable = alloca i32, align 4
  %gradient = alloca %struct._GimpGradient*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store i32 0, i32* %editable, align 4
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %call = call i8* @g_value_get_string(%struct._GValue* %arrayidx)
  store i8* %call, i8** %name, align 8
  %2 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end.7

if.then:                                          ; preds = %entry
  %3 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %4 = load i8*, i8** %name, align 8
  %5 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call1 = call %struct._GimpGradient* @gimp_pdb_get_gradient(%struct._Gimp* %3, i8* %4, i32 0, %struct._GError** %5)
  store %struct._GimpGradient* %call1, %struct._GimpGradient** %gradient, align 8
  %6 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %tobool2 = icmp ne %struct._GimpGradient* %6, null
  br i1 %tobool2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  %7 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %8 = bitcast %struct._GimpGradient* %7 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_data_get_type() #4
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call4)
  %9 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpData*
  %call6 = call i32 @gimp_data_is_writable(%struct._GimpData* %9)
  store i32 %call6, i32* %editable, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
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
  %18 = load i32, i32* %editable, align 4
  call void @g_value_set_boolean(%struct._GValue* %arrayidx13, i32 %18)
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.11, %cond.end
  %19 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %19
}

declare %struct._GParamSpec* @g_param_spec_boolean(i8*, i8*, i8*, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @gradient_rename_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %return_vals = alloca %struct._GValueArray*, align 8
  %name = alloca i8*, align 8
  %new_name = alloca i8*, align 8
  %actual_name = alloca i8*, align 8
  %gradient = alloca %struct._GimpGradient*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store i8* null, i8** %actual_name, align 8
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %call = call i8* @g_value_get_string(%struct._GValue* %arrayidx)
  store i8* %call, i8** %name, align 8
  %2 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %2, i32 0, i32 1
  %3 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %3, i64 1
  %call3 = call i8* @g_value_get_string(%struct._GValue* %arrayidx2)
  store i8* %call3, i8** %new_name, align 8
  %4 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.end.11

if.then:                                          ; preds = %entry
  %5 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %6 = load i8*, i8** %name, align 8
  %7 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call4 = call %struct._GimpGradient* @gimp_pdb_get_gradient(%struct._Gimp* %5, i8* %6, i32 1, %struct._GError** %7)
  store %struct._GimpGradient* %call4, %struct._GimpGradient** %gradient, align 8
  %8 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %tobool5 = icmp ne %struct._GimpGradient* %8, null
  br i1 %tobool5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.then
  %9 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %10 = bitcast %struct._GimpGradient* %9 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_object_get_type() #4
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call7)
  %11 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpObject*
  %12 = load i8*, i8** %new_name, align 8
  call void @gimp_object_set_name(%struct._GimpObject* %11, i8* %12)
  %13 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %14 = bitcast %struct._GimpGradient* %13 to i8*
  %call9 = call i8* @gimp_object_get_name(i8* %14)
  %call10 = call noalias i8* @g_strdup(i8* %call9)
  store i8* %call10, i8** %actual_name, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.6
  br label %if.end.11

if.end.11:                                        ; preds = %if.end, %entry
  %15 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %16 = load i32, i32* %success, align 4
  %17 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool12 = icmp ne %struct._GError** %17, null
  br i1 %tobool12, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.11
  %18 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %19 = load %struct._GError*, %struct._GError** %18, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.11
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %19, %cond.true ], [ null, %cond.false ]
  %call13 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %15, i32 %16, %struct._GError* %cond)
  store %struct._GValueArray* %call13, %struct._GValueArray** %return_vals, align 8
  %20 = load i32, i32* %success, align 4
  %tobool14 = icmp ne i32 %20, 0
  br i1 %tobool14, label %if.then.15, label %if.end.18

if.then.15:                                       ; preds = %cond.end
  %21 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values16 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %21, i32 0, i32 1
  %22 = load %struct._GValue*, %struct._GValue** %values16, align 8
  %arrayidx17 = getelementptr inbounds %struct._GValue, %struct._GValue* %22, i64 1
  %23 = load i8*, i8** %actual_name, align 8
  call void @g_value_take_string(%struct._GValue* %arrayidx17, i8* %23)
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.15, %cond.end
  %24 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %24
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @gradient_delete_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %name = alloca i8*, align 8
  %gradient = alloca %struct._GimpGradient*, align 8
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
  %call = call i8* @g_value_get_string(%struct._GValue* %arrayidx)
  store i8* %call, i8** %name, align 8
  %2 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end.11

if.then:                                          ; preds = %entry
  %3 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %4 = load i8*, i8** %name, align 8
  %5 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call1 = call %struct._GimpGradient* @gimp_pdb_get_gradient(%struct._Gimp* %3, i8* %4, i32 0, %struct._GError** %5)
  store %struct._GimpGradient* %call1, %struct._GimpGradient** %gradient, align 8
  %6 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %tobool2 = icmp ne %struct._GimpGradient* %6, null
  br i1 %tobool2, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %7 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %8 = bitcast %struct._GimpGradient* %7 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_data_get_type() #4
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call3)
  %9 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpData*
  %call5 = call i32 @gimp_data_is_deletable(%struct._GimpData* %9)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %land.lhs.true
  %10 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %gradient_factory = getelementptr inbounds %struct._Gimp, %struct._Gimp* %10, i32 0, i32 40
  %11 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %gradient_factory, align 8
  %12 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %13 = bitcast %struct._GimpGradient* %12 to %struct._GTypeInstance*
  %call8 = call i64 @gimp_data_get_type() #4
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call8)
  %14 = bitcast %struct._GTypeInstance* %call9 to %struct._GimpData*
  %15 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call10 = call i32 @gimp_data_factory_data_delete(%struct._GimpDataFactory* %11, %struct._GimpData* %14, i32 1, %struct._GError** %15)
  store i32 %call10, i32* %success, align 4
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.7
  br label %if.end.11

if.end.11:                                        ; preds = %if.end, %entry
  %16 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %17 = load i32, i32* %success, align 4
  %18 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool12 = icmp ne %struct._GError** %18, null
  br i1 %tobool12, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.11
  %19 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %20 = load %struct._GError*, %struct._GError** %19, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.11
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %20, %cond.true ], [ null, %cond.false ]
  %call13 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %16, i32 %17, %struct._GError* %cond)
  ret %struct._GValueArray* %call13
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @gradient_get_number_of_segments_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %return_vals = alloca %struct._GValueArray*, align 8
  %name = alloca i8*, align 8
  %num_segments = alloca i32, align 4
  %gradient = alloca %struct._GimpGradient*, align 8
  %seg = alloca %struct._GimpGradientSegment*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store i32 0, i32* %num_segments, align 4
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %call = call i8* @g_value_get_string(%struct._GValue* %arrayidx)
  store i8* %call, i8** %name, align 8
  %2 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end.5

if.then:                                          ; preds = %entry
  %3 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %4 = load i8*, i8** %name, align 8
  %5 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call1 = call %struct._GimpGradient* @gimp_pdb_get_gradient(%struct._Gimp* %3, i8* %4, i32 0, %struct._GError** %5)
  store %struct._GimpGradient* %call1, %struct._GimpGradient** %gradient, align 8
  %6 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %tobool2 = icmp ne %struct._GimpGradient* %6, null
  br i1 %tobool2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  %7 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %segments = getelementptr inbounds %struct._GimpGradient, %struct._GimpGradient* %7, i32 0, i32 1
  %8 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %segments, align 8
  store %struct._GimpGradientSegment* %8, %struct._GimpGradientSegment** %seg, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.3
  %9 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %tobool4 = icmp ne %struct._GimpGradientSegment* %9, null
  br i1 %tobool4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %num_segments, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %num_segments, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %next = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %11, i32 0, i32 10
  %12 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %next, align 8
  store %struct._GimpGradientSegment* %12, %struct._GimpGradientSegment** %seg, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
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
  %21 = load i32, i32* %num_segments, align 4
  call void @g_value_set_int(%struct._GValue* %arrayidx11, i32 %21)
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.9, %cond.end
  %22 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %22
}

declare %struct._GParamSpec* @gimp_param_spec_int32(i8*, i8*, i8*, i32, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @gradient_get_uniform_samples_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %return_vals = alloca %struct._GValueArray*, align 8
  %name = alloca i8*, align 8
  %num_samples = alloca i32, align 4
  %reverse = alloca i32, align 4
  %num_color_samples = alloca i32, align 4
  %color_samples = alloca double*, align 8
  %gradient = alloca %struct._GimpGradient*, align 8
  %seg = alloca %struct._GimpGradientSegment*, align 8
  %pos = alloca double, align 8
  %delta = alloca double, align 8
  %sample = alloca double*, align 8
  %color = alloca %struct._GimpRGB, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store i32 0, i32* %num_color_samples, align 4
  store double* null, double** %color_samples, align 8
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %call = call i8* @g_value_get_string(%struct._GValue* %arrayidx)
  store i8* %call, i8** %name, align 8
  %2 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %2, i32 0, i32 1
  %3 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %3, i64 1
  %call3 = call i32 @g_value_get_int(%struct._GValue* %arrayidx2)
  store i32 %call3, i32* %num_samples, align 4
  %4 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values4 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %4, i32 0, i32 1
  %5 = load %struct._GValue*, %struct._GValue** %values4, align 8
  %arrayidx5 = getelementptr inbounds %struct._GValue, %struct._GValue* %5, i64 2
  %call6 = call i32 @g_value_get_boolean(%struct._GValue* %arrayidx5)
  store i32 %call6, i32* %reverse, align 4
  %6 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then, label %if.end.17

if.then:                                          ; preds = %entry
  %7 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %8 = load i8*, i8** %name, align 8
  %9 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call7 = call %struct._GimpGradient* @gimp_pdb_get_gradient(%struct._Gimp* %7, i8* %8, i32 0, %struct._GError** %9)
  store %struct._GimpGradient* %call7, %struct._GimpGradient** %gradient, align 8
  %10 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %tobool8 = icmp ne %struct._GimpGradient* %10, null
  br i1 %tobool8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.then
  store %struct._GimpGradientSegment* null, %struct._GimpGradientSegment** %seg, align 8
  store double 0.000000e+00, double* %pos, align 8
  %11 = load i32, i32* %num_samples, align 4
  %sub = sub nsw i32 %11, 1
  %conv = sitofp i32 %sub to double
  %div = fdiv double 1.000000e+00, %conv
  store double %div, double* %delta, align 8
  %12 = load i32, i32* %num_samples, align 4
  %mul = mul nsw i32 %12, 4
  store i32 %mul, i32* %num_color_samples, align 4
  %13 = load i32, i32* %num_color_samples, align 4
  %conv10 = sext i32 %13 to i64
  %call11 = call noalias i8* @g_malloc_n(i64 %conv10, i64 8)
  %14 = bitcast i8* %call11 to double*
  store double* %14, double** %color_samples, align 8
  store double* %14, double** %sample, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.9
  %15 = load i32, i32* %num_samples, align 4
  %dec = add nsw i32 %15, -1
  store i32 %dec, i32* %num_samples, align 4
  %tobool12 = icmp ne i32 %15, 0
  br i1 %tobool12, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %16 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %17 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %18 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %19 = load double, double* %pos, align 8
  %20 = load i32, i32* %reverse, align 4
  %call13 = call %struct._GimpGradientSegment* @gimp_gradient_get_color_at(%struct._GimpGradient* %16, %struct._GimpContext* %17, %struct._GimpGradientSegment* %18, double %19, i32 %20, %struct._GimpRGB* %color)
  store %struct._GimpGradientSegment* %call13, %struct._GimpGradientSegment** %seg, align 8
  %r = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color, i32 0, i32 0
  %21 = load double, double* %r, align 8
  %22 = load double*, double** %sample, align 8
  %incdec.ptr = getelementptr inbounds double, double* %22, i32 1
  store double* %incdec.ptr, double** %sample, align 8
  store double %21, double* %22, align 8
  %g = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color, i32 0, i32 1
  %23 = load double, double* %g, align 8
  %24 = load double*, double** %sample, align 8
  %incdec.ptr14 = getelementptr inbounds double, double* %24, i32 1
  store double* %incdec.ptr14, double** %sample, align 8
  store double %23, double* %24, align 8
  %b = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color, i32 0, i32 2
  %25 = load double, double* %b, align 8
  %26 = load double*, double** %sample, align 8
  %incdec.ptr15 = getelementptr inbounds double, double* %26, i32 1
  store double* %incdec.ptr15, double** %sample, align 8
  store double %25, double* %26, align 8
  %a = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color, i32 0, i32 3
  %27 = load double, double* %a, align 8
  %28 = load double*, double** %sample, align 8
  %incdec.ptr16 = getelementptr inbounds double, double* %28, i32 1
  store double* %incdec.ptr16, double** %sample, align 8
  store double %27, double* %28, align 8
  %29 = load double, double* %delta, align 8
  %30 = load double, double* %pos, align 8
  %add = fadd double %30, %29
  store double %add, double* %pos, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %while.end
  br label %if.end.17

if.end.17:                                        ; preds = %if.end, %entry
  %31 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %32 = load i32, i32* %success, align 4
  %33 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool18 = icmp ne %struct._GError** %33, null
  br i1 %tobool18, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.17
  %34 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %35 = load %struct._GError*, %struct._GError** %34, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.17
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %35, %cond.true ], [ null, %cond.false ]
  %call19 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %31, i32 %32, %struct._GError* %cond)
  store %struct._GValueArray* %call19, %struct._GValueArray** %return_vals, align 8
  %36 = load i32, i32* %success, align 4
  %tobool20 = icmp ne i32 %36, 0
  br i1 %tobool20, label %if.then.21, label %if.end.27

if.then.21:                                       ; preds = %cond.end
  %37 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values22 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %37, i32 0, i32 1
  %38 = load %struct._GValue*, %struct._GValue** %values22, align 8
  %arrayidx23 = getelementptr inbounds %struct._GValue, %struct._GValue* %38, i64 1
  %39 = load i32, i32* %num_color_samples, align 4
  call void @g_value_set_int(%struct._GValue* %arrayidx23, i32 %39)
  %40 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values24 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %40, i32 0, i32 1
  %41 = load %struct._GValue*, %struct._GValue** %values24, align 8
  %arrayidx25 = getelementptr inbounds %struct._GValue, %struct._GValue* %41, i64 2
  %42 = load double*, double** %color_samples, align 8
  %43 = load i32, i32* %num_color_samples, align 4
  %conv26 = sext i32 %43 to i64
  call void @gimp_value_take_floatarray(%struct._GValue* %arrayidx25, double* %42, i64 %conv26)
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.21, %cond.end
  %44 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %44
}

declare %struct._GParamSpec* @gimp_param_spec_float_array(i8*, i8*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @gradient_get_custom_samples_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %return_vals = alloca %struct._GValueArray*, align 8
  %name = alloca i8*, align 8
  %num_samples = alloca i32, align 4
  %positions = alloca double*, align 8
  %reverse = alloca i32, align 4
  %num_color_samples = alloca i32, align 4
  %color_samples = alloca double*, align 8
  %gradient = alloca %struct._GimpGradient*, align 8
  %seg = alloca %struct._GimpGradientSegment*, align 8
  %sample = alloca double*, align 8
  %color = alloca %struct._GimpRGB, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store i32 0, i32* %num_color_samples, align 4
  store double* null, double** %color_samples, align 8
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %call = call i8* @g_value_get_string(%struct._GValue* %arrayidx)
  store i8* %call, i8** %name, align 8
  %2 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %2, i32 0, i32 1
  %3 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %3, i64 1
  %call3 = call i32 @g_value_get_int(%struct._GValue* %arrayidx2)
  store i32 %call3, i32* %num_samples, align 4
  %4 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values4 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %4, i32 0, i32 1
  %5 = load %struct._GValue*, %struct._GValue** %values4, align 8
  %arrayidx5 = getelementptr inbounds %struct._GValue, %struct._GValue* %5, i64 2
  %call6 = call double* @gimp_value_get_floatarray(%struct._GValue* %arrayidx5)
  store double* %call6, double** %positions, align 8
  %6 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values7 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %6, i32 0, i32 1
  %7 = load %struct._GValue*, %struct._GValue** %values7, align 8
  %arrayidx8 = getelementptr inbounds %struct._GValue, %struct._GValue* %7, i64 3
  %call9 = call i32 @g_value_get_boolean(%struct._GValue* %arrayidx8)
  store i32 %call9, i32* %reverse, align 4
  %8 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then, label %if.end.20

if.then:                                          ; preds = %entry
  %9 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %10 = load i8*, i8** %name, align 8
  %11 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call10 = call %struct._GimpGradient* @gimp_pdb_get_gradient(%struct._Gimp* %9, i8* %10, i32 0, %struct._GError** %11)
  store %struct._GimpGradient* %call10, %struct._GimpGradient** %gradient, align 8
  %12 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %tobool11 = icmp ne %struct._GimpGradient* %12, null
  br i1 %tobool11, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %if.then
  store %struct._GimpGradientSegment* null, %struct._GimpGradientSegment** %seg, align 8
  %13 = load i32, i32* %num_samples, align 4
  %mul = mul nsw i32 %13, 4
  store i32 %mul, i32* %num_color_samples, align 4
  %14 = load i32, i32* %num_color_samples, align 4
  %conv = sext i32 %14 to i64
  %call13 = call noalias i8* @g_malloc_n(i64 %conv, i64 8)
  %15 = bitcast i8* %call13 to double*
  store double* %15, double** %color_samples, align 8
  store double* %15, double** %sample, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.12
  %16 = load i32, i32* %num_samples, align 4
  %dec = add nsw i32 %16, -1
  store i32 %dec, i32* %num_samples, align 4
  %tobool14 = icmp ne i32 %16, 0
  br i1 %tobool14, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %17 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %18 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %19 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %20 = load double*, double** %positions, align 8
  %21 = load double, double* %20, align 8
  %22 = load i32, i32* %reverse, align 4
  %call15 = call %struct._GimpGradientSegment* @gimp_gradient_get_color_at(%struct._GimpGradient* %17, %struct._GimpContext* %18, %struct._GimpGradientSegment* %19, double %21, i32 %22, %struct._GimpRGB* %color)
  store %struct._GimpGradientSegment* %call15, %struct._GimpGradientSegment** %seg, align 8
  %r = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color, i32 0, i32 0
  %23 = load double, double* %r, align 8
  %24 = load double*, double** %sample, align 8
  %incdec.ptr = getelementptr inbounds double, double* %24, i32 1
  store double* %incdec.ptr, double** %sample, align 8
  store double %23, double* %24, align 8
  %g = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color, i32 0, i32 1
  %25 = load double, double* %g, align 8
  %26 = load double*, double** %sample, align 8
  %incdec.ptr16 = getelementptr inbounds double, double* %26, i32 1
  store double* %incdec.ptr16, double** %sample, align 8
  store double %25, double* %26, align 8
  %b = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color, i32 0, i32 2
  %27 = load double, double* %b, align 8
  %28 = load double*, double** %sample, align 8
  %incdec.ptr17 = getelementptr inbounds double, double* %28, i32 1
  store double* %incdec.ptr17, double** %sample, align 8
  store double %27, double* %28, align 8
  %a = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color, i32 0, i32 3
  %29 = load double, double* %a, align 8
  %30 = load double*, double** %sample, align 8
  %incdec.ptr18 = getelementptr inbounds double, double* %30, i32 1
  store double* %incdec.ptr18, double** %sample, align 8
  store double %29, double* %30, align 8
  %31 = load double*, double** %positions, align 8
  %incdec.ptr19 = getelementptr inbounds double, double* %31, i32 1
  store double* %incdec.ptr19, double** %positions, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %while.end
  br label %if.end.20

if.end.20:                                        ; preds = %if.end, %entry
  %32 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %33 = load i32, i32* %success, align 4
  %34 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool21 = icmp ne %struct._GError** %34, null
  br i1 %tobool21, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.20
  %35 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %36 = load %struct._GError*, %struct._GError** %35, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.20
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %36, %cond.true ], [ null, %cond.false ]
  %call22 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %32, i32 %33, %struct._GError* %cond)
  store %struct._GValueArray* %call22, %struct._GValueArray** %return_vals, align 8
  %37 = load i32, i32* %success, align 4
  %tobool23 = icmp ne i32 %37, 0
  br i1 %tobool23, label %if.then.24, label %if.end.30

if.then.24:                                       ; preds = %cond.end
  %38 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values25 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %38, i32 0, i32 1
  %39 = load %struct._GValue*, %struct._GValue** %values25, align 8
  %arrayidx26 = getelementptr inbounds %struct._GValue, %struct._GValue* %39, i64 1
  %40 = load i32, i32* %num_color_samples, align 4
  call void @g_value_set_int(%struct._GValue* %arrayidx26, i32 %40)
  %41 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values27 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %41, i32 0, i32 1
  %42 = load %struct._GValue*, %struct._GValue** %values27, align 8
  %arrayidx28 = getelementptr inbounds %struct._GValue, %struct._GValue* %42, i64 2
  %43 = load double*, double** %color_samples, align 8
  %44 = load i32, i32* %num_color_samples, align 4
  %conv29 = sext i32 %44 to i64
  call void @gimp_value_take_floatarray(%struct._GValue* %arrayidx28, double* %43, i64 %conv29)
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.24, %cond.end
  %45 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %45
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @gradient_segment_get_left_color_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %return_vals = alloca %struct._GValueArray*, align 8
  %name = alloca i8*, align 8
  %segment = alloca i32, align 4
  %color = alloca %struct._GimpRGB, align 8
  %opacity = alloca double, align 8
  %gradient = alloca %struct._GimpGradient*, align 8
  %seg = alloca %struct._GimpGradientSegment*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = bitcast %struct._GimpRGB* %color to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* bitcast (%struct._GimpRGB* @gradient_segment_get_left_color_invoker.color to i8*), i64 32, i32 8, i1 false)
  store double 0.000000e+00, double* %opacity, align 8
  %1 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %1, i32 0, i32 1
  %2 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %2, i64 0
  %call = call i8* @g_value_get_string(%struct._GValue* %arrayidx)
  store i8* %call, i8** %name, align 8
  %3 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %3, i32 0, i32 1
  %4 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %4, i64 1
  %call3 = call i32 @g_value_get_int(%struct._GValue* %arrayidx2)
  store i32 %call3, i32* %segment, align 4
  %5 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end.7

if.then:                                          ; preds = %entry
  %6 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %7 = load i8*, i8** %name, align 8
  %8 = load i32, i32* %segment, align 4
  %9 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call4 = call %struct._GimpGradient* @gradient_get(%struct._Gimp* %6, i8* %7, i32 0, i32 %8, %struct._GimpGradientSegment** %seg, %struct._GError** %9)
  store %struct._GimpGradient* %call4, %struct._GimpGradient** %gradient, align 8
  %10 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %tobool5 = icmp ne %struct._GimpGradientSegment* %10, null
  br i1 %tobool5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.then
  %11 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %12 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  call void @gimp_gradient_segment_get_left_color(%struct._GimpGradient* %11, %struct._GimpGradientSegment* %12, %struct._GimpRGB* %color)
  %a = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color, i32 0, i32 3
  %13 = load double, double* %a, align 8
  %mul = fmul double %13, 1.000000e+02
  store double %mul, double* %opacity, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.6
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %entry
  %14 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %15 = load i32, i32* %success, align 4
  %16 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool8 = icmp ne %struct._GError** %16, null
  br i1 %tobool8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.7
  %17 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %18 = load %struct._GError*, %struct._GError** %17, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %18, %cond.true ], [ null, %cond.false ]
  %call9 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %14, i32 %15, %struct._GError* %cond)
  store %struct._GValueArray* %call9, %struct._GValueArray** %return_vals, align 8
  %19 = load i32, i32* %success, align 4
  %tobool10 = icmp ne i32 %19, 0
  br i1 %tobool10, label %if.then.11, label %if.end.16

if.then.11:                                       ; preds = %cond.end
  %20 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values12 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %20, i32 0, i32 1
  %21 = load %struct._GValue*, %struct._GValue** %values12, align 8
  %arrayidx13 = getelementptr inbounds %struct._GValue, %struct._GValue* %21, i64 1
  call void @gimp_value_set_rgb(%struct._GValue* %arrayidx13, %struct._GimpRGB* %color)
  %22 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values14 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %22, i32 0, i32 1
  %23 = load %struct._GValue*, %struct._GValue** %values14, align 8
  %arrayidx15 = getelementptr inbounds %struct._GValue, %struct._GValue* %23, i64 2
  %24 = load double, double* %opacity, align 8
  call void @g_value_set_double(%struct._GValue* %arrayidx15, double %24)
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.11, %cond.end
  %25 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %25
}

declare %struct._GParamSpec* @gimp_param_spec_rgb(i8*, i8*, i8*, i32, %struct._GimpRGB*, i32) #1

declare %struct._GParamSpec* @g_param_spec_double(i8*, i8*, i8*, double, double, double, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @gradient_segment_set_left_color_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %name = alloca i8*, align 8
  %segment = alloca i32, align 4
  %color = alloca %struct._GimpRGB, align 8
  %opacity = alloca double, align 8
  %gradient = alloca %struct._GimpGradient*, align 8
  %seg = alloca %struct._GimpGradientSegment*, align 8
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
  %call = call i8* @g_value_get_string(%struct._GValue* %arrayidx)
  store i8* %call, i8** %name, align 8
  %2 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %2, i32 0, i32 1
  %3 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %3, i64 1
  %call3 = call i32 @g_value_get_int(%struct._GValue* %arrayidx2)
  store i32 %call3, i32* %segment, align 4
  %4 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values4 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %4, i32 0, i32 1
  %5 = load %struct._GValue*, %struct._GValue** %values4, align 8
  %arrayidx5 = getelementptr inbounds %struct._GValue, %struct._GValue* %5, i64 2
  call void @gimp_value_get_rgb(%struct._GValue* %arrayidx5, %struct._GimpRGB* %color)
  %6 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values6 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %6, i32 0, i32 1
  %7 = load %struct._GValue*, %struct._GValue** %values6, align 8
  %arrayidx7 = getelementptr inbounds %struct._GValue, %struct._GValue* %7, i64 3
  %call8 = call double @g_value_get_double(%struct._GValue* %arrayidx7)
  store double %call8, double* %opacity, align 8
  %8 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then, label %if.end.12

if.then:                                          ; preds = %entry
  %9 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %10 = load i8*, i8** %name, align 8
  %11 = load i32, i32* %segment, align 4
  %12 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call9 = call %struct._GimpGradient* @gradient_get(%struct._Gimp* %9, i8* %10, i32 1, i32 %11, %struct._GimpGradientSegment** %seg, %struct._GError** %12)
  store %struct._GimpGradient* %call9, %struct._GimpGradient** %gradient, align 8
  %13 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %tobool10 = icmp ne %struct._GimpGradientSegment* %13, null
  br i1 %tobool10, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %if.then
  %14 = load double, double* %opacity, align 8
  %div = fdiv double %14, 1.000000e+02
  %a = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color, i32 0, i32 3
  store double %div, double* %a, align 8
  %15 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %16 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  call void @gimp_gradient_segment_set_left_color(%struct._GimpGradient* %15, %struct._GimpGradientSegment* %16, %struct._GimpRGB* %color)
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

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @gradient_segment_get_right_color_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %return_vals = alloca %struct._GValueArray*, align 8
  %name = alloca i8*, align 8
  %segment = alloca i32, align 4
  %color = alloca %struct._GimpRGB, align 8
  %opacity = alloca double, align 8
  %gradient = alloca %struct._GimpGradient*, align 8
  %seg = alloca %struct._GimpGradientSegment*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = bitcast %struct._GimpRGB* %color to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* bitcast (%struct._GimpRGB* @gradient_segment_get_right_color_invoker.color to i8*), i64 32, i32 8, i1 false)
  store double 0.000000e+00, double* %opacity, align 8
  %1 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %1, i32 0, i32 1
  %2 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %2, i64 0
  %call = call i8* @g_value_get_string(%struct._GValue* %arrayidx)
  store i8* %call, i8** %name, align 8
  %3 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %3, i32 0, i32 1
  %4 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %4, i64 1
  %call3 = call i32 @g_value_get_int(%struct._GValue* %arrayidx2)
  store i32 %call3, i32* %segment, align 4
  %5 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end.7

if.then:                                          ; preds = %entry
  %6 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %7 = load i8*, i8** %name, align 8
  %8 = load i32, i32* %segment, align 4
  %9 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call4 = call %struct._GimpGradient* @gradient_get(%struct._Gimp* %6, i8* %7, i32 0, i32 %8, %struct._GimpGradientSegment** %seg, %struct._GError** %9)
  store %struct._GimpGradient* %call4, %struct._GimpGradient** %gradient, align 8
  %10 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %tobool5 = icmp ne %struct._GimpGradientSegment* %10, null
  br i1 %tobool5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.then
  %11 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %12 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  call void @gimp_gradient_segment_get_right_color(%struct._GimpGradient* %11, %struct._GimpGradientSegment* %12, %struct._GimpRGB* %color)
  %a = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color, i32 0, i32 3
  %13 = load double, double* %a, align 8
  %mul = fmul double %13, 1.000000e+02
  store double %mul, double* %opacity, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.6
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %entry
  %14 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %15 = load i32, i32* %success, align 4
  %16 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool8 = icmp ne %struct._GError** %16, null
  br i1 %tobool8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.7
  %17 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %18 = load %struct._GError*, %struct._GError** %17, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %18, %cond.true ], [ null, %cond.false ]
  %call9 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %14, i32 %15, %struct._GError* %cond)
  store %struct._GValueArray* %call9, %struct._GValueArray** %return_vals, align 8
  %19 = load i32, i32* %success, align 4
  %tobool10 = icmp ne i32 %19, 0
  br i1 %tobool10, label %if.then.11, label %if.end.16

if.then.11:                                       ; preds = %cond.end
  %20 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values12 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %20, i32 0, i32 1
  %21 = load %struct._GValue*, %struct._GValue** %values12, align 8
  %arrayidx13 = getelementptr inbounds %struct._GValue, %struct._GValue* %21, i64 1
  call void @gimp_value_set_rgb(%struct._GValue* %arrayidx13, %struct._GimpRGB* %color)
  %22 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values14 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %22, i32 0, i32 1
  %23 = load %struct._GValue*, %struct._GValue** %values14, align 8
  %arrayidx15 = getelementptr inbounds %struct._GValue, %struct._GValue* %23, i64 2
  %24 = load double, double* %opacity, align 8
  call void @g_value_set_double(%struct._GValue* %arrayidx15, double %24)
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.11, %cond.end
  %25 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %25
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @gradient_segment_set_right_color_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %name = alloca i8*, align 8
  %segment = alloca i32, align 4
  %color = alloca %struct._GimpRGB, align 8
  %opacity = alloca double, align 8
  %gradient = alloca %struct._GimpGradient*, align 8
  %seg = alloca %struct._GimpGradientSegment*, align 8
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
  %call = call i8* @g_value_get_string(%struct._GValue* %arrayidx)
  store i8* %call, i8** %name, align 8
  %2 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %2, i32 0, i32 1
  %3 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %3, i64 1
  %call3 = call i32 @g_value_get_int(%struct._GValue* %arrayidx2)
  store i32 %call3, i32* %segment, align 4
  %4 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values4 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %4, i32 0, i32 1
  %5 = load %struct._GValue*, %struct._GValue** %values4, align 8
  %arrayidx5 = getelementptr inbounds %struct._GValue, %struct._GValue* %5, i64 2
  call void @gimp_value_get_rgb(%struct._GValue* %arrayidx5, %struct._GimpRGB* %color)
  %6 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values6 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %6, i32 0, i32 1
  %7 = load %struct._GValue*, %struct._GValue** %values6, align 8
  %arrayidx7 = getelementptr inbounds %struct._GValue, %struct._GValue* %7, i64 3
  %call8 = call double @g_value_get_double(%struct._GValue* %arrayidx7)
  store double %call8, double* %opacity, align 8
  %8 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then, label %if.end.12

if.then:                                          ; preds = %entry
  %9 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %10 = load i8*, i8** %name, align 8
  %11 = load i32, i32* %segment, align 4
  %12 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call9 = call %struct._GimpGradient* @gradient_get(%struct._Gimp* %9, i8* %10, i32 1, i32 %11, %struct._GimpGradientSegment** %seg, %struct._GError** %12)
  store %struct._GimpGradient* %call9, %struct._GimpGradient** %gradient, align 8
  %13 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %tobool10 = icmp ne %struct._GimpGradientSegment* %13, null
  br i1 %tobool10, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %if.then
  %14 = load double, double* %opacity, align 8
  %div = fdiv double %14, 1.000000e+02
  %a = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color, i32 0, i32 3
  store double %div, double* %a, align 8
  %15 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %16 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  call void @gimp_gradient_segment_set_right_color(%struct._GimpGradient* %15, %struct._GimpGradientSegment* %16, %struct._GimpRGB* %color)
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

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @gradient_segment_get_left_pos_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %return_vals = alloca %struct._GValueArray*, align 8
  %name = alloca i8*, align 8
  %segment = alloca i32, align 4
  %pos = alloca double, align 8
  %gradient = alloca %struct._GimpGradient*, align 8
  %seg = alloca %struct._GimpGradientSegment*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store double 0.000000e+00, double* %pos, align 8
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %call = call i8* @g_value_get_string(%struct._GValue* %arrayidx)
  store i8* %call, i8** %name, align 8
  %2 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %2, i32 0, i32 1
  %3 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %3, i64 1
  %call3 = call i32 @g_value_get_int(%struct._GValue* %arrayidx2)
  store i32 %call3, i32* %segment, align 4
  %4 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.end.8

if.then:                                          ; preds = %entry
  %5 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %6 = load i8*, i8** %name, align 8
  %7 = load i32, i32* %segment, align 4
  %8 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call4 = call %struct._GimpGradient* @gradient_get(%struct._Gimp* %5, i8* %6, i32 0, i32 %7, %struct._GimpGradientSegment** %seg, %struct._GError** %8)
  store %struct._GimpGradient* %call4, %struct._GimpGradient** %gradient, align 8
  %9 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %tobool5 = icmp ne %struct._GimpGradientSegment* %9, null
  br i1 %tobool5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.then
  %10 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %11 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %call7 = call double @gimp_gradient_segment_get_left_pos(%struct._GimpGradient* %10, %struct._GimpGradientSegment* %11)
  store double %call7, double* %pos, align 8
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
  store %struct._GValueArray* %call10, %struct._GValueArray** %return_vals, align 8
  %17 = load i32, i32* %success, align 4
  %tobool11 = icmp ne i32 %17, 0
  br i1 %tobool11, label %if.then.12, label %if.end.15

if.then.12:                                       ; preds = %cond.end
  %18 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values13 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %18, i32 0, i32 1
  %19 = load %struct._GValue*, %struct._GValue** %values13, align 8
  %arrayidx14 = getelementptr inbounds %struct._GValue, %struct._GValue* %19, i64 1
  %20 = load double, double* %pos, align 8
  call void @g_value_set_double(%struct._GValue* %arrayidx14, double %20)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.12, %cond.end
  %21 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %21
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @gradient_segment_set_left_pos_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %return_vals = alloca %struct._GValueArray*, align 8
  %name = alloca i8*, align 8
  %segment = alloca i32, align 4
  %pos = alloca double, align 8
  %final_pos = alloca double, align 8
  %gradient = alloca %struct._GimpGradient*, align 8
  %seg = alloca %struct._GimpGradientSegment*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store double 0.000000e+00, double* %final_pos, align 8
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %call = call i8* @g_value_get_string(%struct._GValue* %arrayidx)
  store i8* %call, i8** %name, align 8
  %2 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %2, i32 0, i32 1
  %3 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %3, i64 1
  %call3 = call i32 @g_value_get_int(%struct._GValue* %arrayidx2)
  store i32 %call3, i32* %segment, align 4
  %4 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values4 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %4, i32 0, i32 1
  %5 = load %struct._GValue*, %struct._GValue** %values4, align 8
  %arrayidx5 = getelementptr inbounds %struct._GValue, %struct._GValue* %5, i64 2
  %call6 = call double @g_value_get_double(%struct._GValue* %arrayidx5)
  store double %call6, double* %pos, align 8
  %6 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then, label %if.end.11

if.then:                                          ; preds = %entry
  %7 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %8 = load i8*, i8** %name, align 8
  %9 = load i32, i32* %segment, align 4
  %10 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call7 = call %struct._GimpGradient* @gradient_get(%struct._Gimp* %7, i8* %8, i32 1, i32 %9, %struct._GimpGradientSegment** %seg, %struct._GError** %10)
  store %struct._GimpGradient* %call7, %struct._GimpGradient** %gradient, align 8
  %11 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %tobool8 = icmp ne %struct._GimpGradientSegment* %11, null
  br i1 %tobool8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.then
  %12 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %13 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %14 = load double, double* %pos, align 8
  %call10 = call double @gimp_gradient_segment_set_left_pos(%struct._GimpGradient* %12, %struct._GimpGradientSegment* %13, double %14)
  store double %call10, double* %final_pos, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.9
  br label %if.end.11

if.end.11:                                        ; preds = %if.end, %entry
  %15 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %16 = load i32, i32* %success, align 4
  %17 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool12 = icmp ne %struct._GError** %17, null
  br i1 %tobool12, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.11
  %18 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %19 = load %struct._GError*, %struct._GError** %18, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.11
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %19, %cond.true ], [ null, %cond.false ]
  %call13 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %15, i32 %16, %struct._GError* %cond)
  store %struct._GValueArray* %call13, %struct._GValueArray** %return_vals, align 8
  %20 = load i32, i32* %success, align 4
  %tobool14 = icmp ne i32 %20, 0
  br i1 %tobool14, label %if.then.15, label %if.end.18

if.then.15:                                       ; preds = %cond.end
  %21 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values16 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %21, i32 0, i32 1
  %22 = load %struct._GValue*, %struct._GValue** %values16, align 8
  %arrayidx17 = getelementptr inbounds %struct._GValue, %struct._GValue* %22, i64 1
  %23 = load double, double* %final_pos, align 8
  call void @g_value_set_double(%struct._GValue* %arrayidx17, double %23)
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.15, %cond.end
  %24 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %24
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @gradient_segment_get_middle_pos_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %return_vals = alloca %struct._GValueArray*, align 8
  %name = alloca i8*, align 8
  %segment = alloca i32, align 4
  %pos = alloca double, align 8
  %gradient = alloca %struct._GimpGradient*, align 8
  %seg = alloca %struct._GimpGradientSegment*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store double 0.000000e+00, double* %pos, align 8
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %call = call i8* @g_value_get_string(%struct._GValue* %arrayidx)
  store i8* %call, i8** %name, align 8
  %2 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %2, i32 0, i32 1
  %3 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %3, i64 1
  %call3 = call i32 @g_value_get_int(%struct._GValue* %arrayidx2)
  store i32 %call3, i32* %segment, align 4
  %4 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.end.8

if.then:                                          ; preds = %entry
  %5 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %6 = load i8*, i8** %name, align 8
  %7 = load i32, i32* %segment, align 4
  %8 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call4 = call %struct._GimpGradient* @gradient_get(%struct._Gimp* %5, i8* %6, i32 0, i32 %7, %struct._GimpGradientSegment** %seg, %struct._GError** %8)
  store %struct._GimpGradient* %call4, %struct._GimpGradient** %gradient, align 8
  %9 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %tobool5 = icmp ne %struct._GimpGradientSegment* %9, null
  br i1 %tobool5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.then
  %10 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %11 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %call7 = call double @gimp_gradient_segment_get_middle_pos(%struct._GimpGradient* %10, %struct._GimpGradientSegment* %11)
  store double %call7, double* %pos, align 8
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
  store %struct._GValueArray* %call10, %struct._GValueArray** %return_vals, align 8
  %17 = load i32, i32* %success, align 4
  %tobool11 = icmp ne i32 %17, 0
  br i1 %tobool11, label %if.then.12, label %if.end.15

if.then.12:                                       ; preds = %cond.end
  %18 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values13 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %18, i32 0, i32 1
  %19 = load %struct._GValue*, %struct._GValue** %values13, align 8
  %arrayidx14 = getelementptr inbounds %struct._GValue, %struct._GValue* %19, i64 1
  %20 = load double, double* %pos, align 8
  call void @g_value_set_double(%struct._GValue* %arrayidx14, double %20)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.12, %cond.end
  %21 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %21
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @gradient_segment_set_middle_pos_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %return_vals = alloca %struct._GValueArray*, align 8
  %name = alloca i8*, align 8
  %segment = alloca i32, align 4
  %pos = alloca double, align 8
  %final_pos = alloca double, align 8
  %gradient = alloca %struct._GimpGradient*, align 8
  %seg = alloca %struct._GimpGradientSegment*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store double 0.000000e+00, double* %final_pos, align 8
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %call = call i8* @g_value_get_string(%struct._GValue* %arrayidx)
  store i8* %call, i8** %name, align 8
  %2 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %2, i32 0, i32 1
  %3 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %3, i64 1
  %call3 = call i32 @g_value_get_int(%struct._GValue* %arrayidx2)
  store i32 %call3, i32* %segment, align 4
  %4 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values4 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %4, i32 0, i32 1
  %5 = load %struct._GValue*, %struct._GValue** %values4, align 8
  %arrayidx5 = getelementptr inbounds %struct._GValue, %struct._GValue* %5, i64 2
  %call6 = call double @g_value_get_double(%struct._GValue* %arrayidx5)
  store double %call6, double* %pos, align 8
  %6 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then, label %if.end.11

if.then:                                          ; preds = %entry
  %7 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %8 = load i8*, i8** %name, align 8
  %9 = load i32, i32* %segment, align 4
  %10 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call7 = call %struct._GimpGradient* @gradient_get(%struct._Gimp* %7, i8* %8, i32 1, i32 %9, %struct._GimpGradientSegment** %seg, %struct._GError** %10)
  store %struct._GimpGradient* %call7, %struct._GimpGradient** %gradient, align 8
  %11 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %tobool8 = icmp ne %struct._GimpGradientSegment* %11, null
  br i1 %tobool8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.then
  %12 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %13 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %14 = load double, double* %pos, align 8
  %call10 = call double @gimp_gradient_segment_set_middle_pos(%struct._GimpGradient* %12, %struct._GimpGradientSegment* %13, double %14)
  store double %call10, double* %final_pos, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.9
  br label %if.end.11

if.end.11:                                        ; preds = %if.end, %entry
  %15 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %16 = load i32, i32* %success, align 4
  %17 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool12 = icmp ne %struct._GError** %17, null
  br i1 %tobool12, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.11
  %18 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %19 = load %struct._GError*, %struct._GError** %18, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.11
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %19, %cond.true ], [ null, %cond.false ]
  %call13 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %15, i32 %16, %struct._GError* %cond)
  store %struct._GValueArray* %call13, %struct._GValueArray** %return_vals, align 8
  %20 = load i32, i32* %success, align 4
  %tobool14 = icmp ne i32 %20, 0
  br i1 %tobool14, label %if.then.15, label %if.end.18

if.then.15:                                       ; preds = %cond.end
  %21 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values16 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %21, i32 0, i32 1
  %22 = load %struct._GValue*, %struct._GValue** %values16, align 8
  %arrayidx17 = getelementptr inbounds %struct._GValue, %struct._GValue* %22, i64 1
  %23 = load double, double* %final_pos, align 8
  call void @g_value_set_double(%struct._GValue* %arrayidx17, double %23)
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.15, %cond.end
  %24 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %24
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @gradient_segment_get_right_pos_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %return_vals = alloca %struct._GValueArray*, align 8
  %name = alloca i8*, align 8
  %segment = alloca i32, align 4
  %pos = alloca double, align 8
  %gradient = alloca %struct._GimpGradient*, align 8
  %seg = alloca %struct._GimpGradientSegment*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store double 0.000000e+00, double* %pos, align 8
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %call = call i8* @g_value_get_string(%struct._GValue* %arrayidx)
  store i8* %call, i8** %name, align 8
  %2 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %2, i32 0, i32 1
  %3 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %3, i64 1
  %call3 = call i32 @g_value_get_int(%struct._GValue* %arrayidx2)
  store i32 %call3, i32* %segment, align 4
  %4 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.end.8

if.then:                                          ; preds = %entry
  %5 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %6 = load i8*, i8** %name, align 8
  %7 = load i32, i32* %segment, align 4
  %8 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call4 = call %struct._GimpGradient* @gradient_get(%struct._Gimp* %5, i8* %6, i32 0, i32 %7, %struct._GimpGradientSegment** %seg, %struct._GError** %8)
  store %struct._GimpGradient* %call4, %struct._GimpGradient** %gradient, align 8
  %9 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %tobool5 = icmp ne %struct._GimpGradientSegment* %9, null
  br i1 %tobool5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.then
  %10 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %11 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %call7 = call double @gimp_gradient_segment_get_right_pos(%struct._GimpGradient* %10, %struct._GimpGradientSegment* %11)
  store double %call7, double* %pos, align 8
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
  store %struct._GValueArray* %call10, %struct._GValueArray** %return_vals, align 8
  %17 = load i32, i32* %success, align 4
  %tobool11 = icmp ne i32 %17, 0
  br i1 %tobool11, label %if.then.12, label %if.end.15

if.then.12:                                       ; preds = %cond.end
  %18 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values13 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %18, i32 0, i32 1
  %19 = load %struct._GValue*, %struct._GValue** %values13, align 8
  %arrayidx14 = getelementptr inbounds %struct._GValue, %struct._GValue* %19, i64 1
  %20 = load double, double* %pos, align 8
  call void @g_value_set_double(%struct._GValue* %arrayidx14, double %20)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.12, %cond.end
  %21 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %21
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @gradient_segment_set_right_pos_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %return_vals = alloca %struct._GValueArray*, align 8
  %name = alloca i8*, align 8
  %segment = alloca i32, align 4
  %pos = alloca double, align 8
  %final_pos = alloca double, align 8
  %gradient = alloca %struct._GimpGradient*, align 8
  %seg = alloca %struct._GimpGradientSegment*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store double 0.000000e+00, double* %final_pos, align 8
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %call = call i8* @g_value_get_string(%struct._GValue* %arrayidx)
  store i8* %call, i8** %name, align 8
  %2 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %2, i32 0, i32 1
  %3 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %3, i64 1
  %call3 = call i32 @g_value_get_int(%struct._GValue* %arrayidx2)
  store i32 %call3, i32* %segment, align 4
  %4 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values4 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %4, i32 0, i32 1
  %5 = load %struct._GValue*, %struct._GValue** %values4, align 8
  %arrayidx5 = getelementptr inbounds %struct._GValue, %struct._GValue* %5, i64 2
  %call6 = call double @g_value_get_double(%struct._GValue* %arrayidx5)
  store double %call6, double* %pos, align 8
  %6 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then, label %if.end.11

if.then:                                          ; preds = %entry
  %7 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %8 = load i8*, i8** %name, align 8
  %9 = load i32, i32* %segment, align 4
  %10 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call7 = call %struct._GimpGradient* @gradient_get(%struct._Gimp* %7, i8* %8, i32 1, i32 %9, %struct._GimpGradientSegment** %seg, %struct._GError** %10)
  store %struct._GimpGradient* %call7, %struct._GimpGradient** %gradient, align 8
  %11 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %tobool8 = icmp ne %struct._GimpGradientSegment* %11, null
  br i1 %tobool8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.then
  %12 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %13 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %14 = load double, double* %pos, align 8
  %call10 = call double @gimp_gradient_segment_set_right_pos(%struct._GimpGradient* %12, %struct._GimpGradientSegment* %13, double %14)
  store double %call10, double* %final_pos, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.9
  br label %if.end.11

if.end.11:                                        ; preds = %if.end, %entry
  %15 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %16 = load i32, i32* %success, align 4
  %17 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool12 = icmp ne %struct._GError** %17, null
  br i1 %tobool12, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.11
  %18 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %19 = load %struct._GError*, %struct._GError** %18, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.11
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %19, %cond.true ], [ null, %cond.false ]
  %call13 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %15, i32 %16, %struct._GError* %cond)
  store %struct._GValueArray* %call13, %struct._GValueArray** %return_vals, align 8
  %20 = load i32, i32* %success, align 4
  %tobool14 = icmp ne i32 %20, 0
  br i1 %tobool14, label %if.then.15, label %if.end.18

if.then.15:                                       ; preds = %cond.end
  %21 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values16 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %21, i32 0, i32 1
  %22 = load %struct._GValue*, %struct._GValue** %values16, align 8
  %arrayidx17 = getelementptr inbounds %struct._GValue, %struct._GValue* %22, i64 1
  %23 = load double, double* %final_pos, align 8
  call void @g_value_set_double(%struct._GValue* %arrayidx17, double %23)
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.15, %cond.end
  %24 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %24
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @gradient_segment_get_blending_function_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %return_vals = alloca %struct._GValueArray*, align 8
  %name = alloca i8*, align 8
  %segment = alloca i32, align 4
  %blend_func = alloca i32, align 4
  %gradient = alloca %struct._GimpGradient*, align 8
  %seg = alloca %struct._GimpGradientSegment*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store i32 0, i32* %blend_func, align 4
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %call = call i8* @g_value_get_string(%struct._GValue* %arrayidx)
  store i8* %call, i8** %name, align 8
  %2 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %2, i32 0, i32 1
  %3 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %3, i64 1
  %call3 = call i32 @g_value_get_int(%struct._GValue* %arrayidx2)
  store i32 %call3, i32* %segment, align 4
  %4 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.end.8

if.then:                                          ; preds = %entry
  %5 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %6 = load i8*, i8** %name, align 8
  %7 = load i32, i32* %segment, align 4
  %8 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call4 = call %struct._GimpGradient* @gradient_get(%struct._Gimp* %5, i8* %6, i32 0, i32 %7, %struct._GimpGradientSegment** %seg, %struct._GError** %8)
  store %struct._GimpGradient* %call4, %struct._GimpGradient** %gradient, align 8
  %9 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %tobool5 = icmp ne %struct._GimpGradientSegment* %9, null
  br i1 %tobool5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.then
  %10 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %11 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %call7 = call i32 @gimp_gradient_segment_get_blending_function(%struct._GimpGradient* %10, %struct._GimpGradientSegment* %11)
  store i32 %call7, i32* %blend_func, align 4
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
  store %struct._GValueArray* %call10, %struct._GValueArray** %return_vals, align 8
  %17 = load i32, i32* %success, align 4
  %tobool11 = icmp ne i32 %17, 0
  br i1 %tobool11, label %if.then.12, label %if.end.15

if.then.12:                                       ; preds = %cond.end
  %18 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values13 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %18, i32 0, i32 1
  %19 = load %struct._GValue*, %struct._GValue** %values13, align 8
  %arrayidx14 = getelementptr inbounds %struct._GValue, %struct._GValue* %19, i64 1
  %20 = load i32, i32* %blend_func, align 4
  call void @g_value_set_enum(%struct._GValue* %arrayidx14, i32 %20)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.12, %cond.end
  %21 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %21
}

declare %struct._GParamSpec* @g_param_spec_enum(i8*, i8*, i8*, i64, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_gradient_segment_type_get_type() #2

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @gradient_segment_get_coloring_type_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %return_vals = alloca %struct._GValueArray*, align 8
  %name = alloca i8*, align 8
  %segment = alloca i32, align 4
  %coloring_type = alloca i32, align 4
  %gradient = alloca %struct._GimpGradient*, align 8
  %seg = alloca %struct._GimpGradientSegment*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store i32 0, i32* %coloring_type, align 4
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %call = call i8* @g_value_get_string(%struct._GValue* %arrayidx)
  store i8* %call, i8** %name, align 8
  %2 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %2, i32 0, i32 1
  %3 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %3, i64 1
  %call3 = call i32 @g_value_get_int(%struct._GValue* %arrayidx2)
  store i32 %call3, i32* %segment, align 4
  %4 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.end.8

if.then:                                          ; preds = %entry
  %5 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %6 = load i8*, i8** %name, align 8
  %7 = load i32, i32* %segment, align 4
  %8 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call4 = call %struct._GimpGradient* @gradient_get(%struct._Gimp* %5, i8* %6, i32 0, i32 %7, %struct._GimpGradientSegment** %seg, %struct._GError** %8)
  store %struct._GimpGradient* %call4, %struct._GimpGradient** %gradient, align 8
  %9 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %tobool5 = icmp ne %struct._GimpGradientSegment* %9, null
  br i1 %tobool5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.then
  %10 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %11 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %call7 = call i32 @gimp_gradient_segment_get_coloring_type(%struct._GimpGradient* %10, %struct._GimpGradientSegment* %11)
  store i32 %call7, i32* %coloring_type, align 4
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
  store %struct._GValueArray* %call10, %struct._GValueArray** %return_vals, align 8
  %17 = load i32, i32* %success, align 4
  %tobool11 = icmp ne i32 %17, 0
  br i1 %tobool11, label %if.then.12, label %if.end.15

if.then.12:                                       ; preds = %cond.end
  %18 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values13 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %18, i32 0, i32 1
  %19 = load %struct._GValue*, %struct._GValue** %values13, align 8
  %arrayidx14 = getelementptr inbounds %struct._GValue, %struct._GValue* %19, i64 1
  %20 = load i32, i32* %coloring_type, align 4
  call void @g_value_set_enum(%struct._GValue* %arrayidx14, i32 %20)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.12, %cond.end
  %21 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %21
}

; Function Attrs: nounwind readnone
declare i64 @gimp_gradient_segment_color_get_type() #2

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @gradient_segment_range_set_blending_function_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %name = alloca i8*, align 8
  %start_segment = alloca i32, align 4
  %end_segment = alloca i32, align 4
  %blending_function = alloca i32, align 4
  %gradient = alloca %struct._GimpGradient*, align 8
  %start_seg = alloca %struct._GimpGradientSegment*, align 8
  %end_seg = alloca %struct._GimpGradientSegment*, align 8
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
  %call = call i8* @g_value_get_string(%struct._GValue* %arrayidx)
  store i8* %call, i8** %name, align 8
  %2 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %2, i32 0, i32 1
  %3 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %3, i64 1
  %call3 = call i32 @g_value_get_int(%struct._GValue* %arrayidx2)
  store i32 %call3, i32* %start_segment, align 4
  %4 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values4 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %4, i32 0, i32 1
  %5 = load %struct._GValue*, %struct._GValue** %values4, align 8
  %arrayidx5 = getelementptr inbounds %struct._GValue, %struct._GValue* %5, i64 2
  %call6 = call i32 @g_value_get_int(%struct._GValue* %arrayidx5)
  store i32 %call6, i32* %end_segment, align 4
  %6 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values7 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %6, i32 0, i32 1
  %7 = load %struct._GValue*, %struct._GValue** %values7, align 8
  %arrayidx8 = getelementptr inbounds %struct._GValue, %struct._GValue* %7, i64 3
  %call9 = call i32 @g_value_get_enum(%struct._GValue* %arrayidx8)
  store i32 %call9, i32* %blending_function, align 4
  %8 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then, label %if.end.13

if.then:                                          ; preds = %entry
  %9 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %10 = load i8*, i8** %name, align 8
  %11 = load i32, i32* %start_segment, align 4
  %12 = load i32, i32* %end_segment, align 4
  %13 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call10 = call %struct._GimpGradient* @gradient_get_range(%struct._Gimp* %9, i8* %10, i32 %11, i32 %12, %struct._GimpGradientSegment** %start_seg, %struct._GimpGradientSegment** %end_seg, %struct._GError** %13)
  store %struct._GimpGradient* %call10, %struct._GimpGradient** %gradient, align 8
  %14 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %start_seg, align 8
  %tobool11 = icmp ne %struct._GimpGradientSegment* %14, null
  br i1 %tobool11, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %if.then
  %15 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %16 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %start_seg, align 8
  %17 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %end_seg, align 8
  %18 = load i32, i32* %blending_function, align 4
  call void @gimp_gradient_segment_range_set_blending_function(%struct._GimpGradient* %15, %struct._GimpGradientSegment* %16, %struct._GimpGradientSegment* %17, i32 %18)
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.12
  br label %if.end.13

if.end.13:                                        ; preds = %if.end, %entry
  %19 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %20 = load i32, i32* %success, align 4
  %21 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool14 = icmp ne %struct._GError** %21, null
  br i1 %tobool14, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.13
  %22 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %23 = load %struct._GError*, %struct._GError** %22, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.13
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %23, %cond.true ], [ null, %cond.false ]
  %call15 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %19, i32 %20, %struct._GError* %cond)
  ret %struct._GValueArray* %call15
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @gradient_segment_range_set_coloring_type_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %name = alloca i8*, align 8
  %start_segment = alloca i32, align 4
  %end_segment = alloca i32, align 4
  %coloring_type = alloca i32, align 4
  %gradient = alloca %struct._GimpGradient*, align 8
  %start_seg = alloca %struct._GimpGradientSegment*, align 8
  %end_seg = alloca %struct._GimpGradientSegment*, align 8
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
  %call = call i8* @g_value_get_string(%struct._GValue* %arrayidx)
  store i8* %call, i8** %name, align 8
  %2 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %2, i32 0, i32 1
  %3 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %3, i64 1
  %call3 = call i32 @g_value_get_int(%struct._GValue* %arrayidx2)
  store i32 %call3, i32* %start_segment, align 4
  %4 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values4 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %4, i32 0, i32 1
  %5 = load %struct._GValue*, %struct._GValue** %values4, align 8
  %arrayidx5 = getelementptr inbounds %struct._GValue, %struct._GValue* %5, i64 2
  %call6 = call i32 @g_value_get_int(%struct._GValue* %arrayidx5)
  store i32 %call6, i32* %end_segment, align 4
  %6 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values7 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %6, i32 0, i32 1
  %7 = load %struct._GValue*, %struct._GValue** %values7, align 8
  %arrayidx8 = getelementptr inbounds %struct._GValue, %struct._GValue* %7, i64 3
  %call9 = call i32 @g_value_get_enum(%struct._GValue* %arrayidx8)
  store i32 %call9, i32* %coloring_type, align 4
  %8 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then, label %if.end.13

if.then:                                          ; preds = %entry
  %9 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %10 = load i8*, i8** %name, align 8
  %11 = load i32, i32* %start_segment, align 4
  %12 = load i32, i32* %end_segment, align 4
  %13 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call10 = call %struct._GimpGradient* @gradient_get_range(%struct._Gimp* %9, i8* %10, i32 %11, i32 %12, %struct._GimpGradientSegment** %start_seg, %struct._GimpGradientSegment** %end_seg, %struct._GError** %13)
  store %struct._GimpGradient* %call10, %struct._GimpGradient** %gradient, align 8
  %14 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %start_seg, align 8
  %tobool11 = icmp ne %struct._GimpGradientSegment* %14, null
  br i1 %tobool11, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %if.then
  %15 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %16 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %start_seg, align 8
  %17 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %end_seg, align 8
  %18 = load i32, i32* %coloring_type, align 4
  call void @gimp_gradient_segment_range_set_coloring_type(%struct._GimpGradient* %15, %struct._GimpGradientSegment* %16, %struct._GimpGradientSegment* %17, i32 %18)
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.12
  br label %if.end.13

if.end.13:                                        ; preds = %if.end, %entry
  %19 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %20 = load i32, i32* %success, align 4
  %21 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool14 = icmp ne %struct._GError** %21, null
  br i1 %tobool14, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.13
  %22 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %23 = load %struct._GError*, %struct._GError** %22, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.13
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %23, %cond.true ], [ null, %cond.false ]
  %call15 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %19, i32 %20, %struct._GError* %cond)
  ret %struct._GValueArray* %call15
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @gradient_segment_range_flip_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %name = alloca i8*, align 8
  %start_segment = alloca i32, align 4
  %end_segment = alloca i32, align 4
  %gradient = alloca %struct._GimpGradient*, align 8
  %start_seg = alloca %struct._GimpGradientSegment*, align 8
  %end_seg = alloca %struct._GimpGradientSegment*, align 8
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
  %call = call i8* @g_value_get_string(%struct._GValue* %arrayidx)
  store i8* %call, i8** %name, align 8
  %2 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %2, i32 0, i32 1
  %3 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %3, i64 1
  %call3 = call i32 @g_value_get_int(%struct._GValue* %arrayidx2)
  store i32 %call3, i32* %start_segment, align 4
  %4 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values4 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %4, i32 0, i32 1
  %5 = load %struct._GValue*, %struct._GValue** %values4, align 8
  %arrayidx5 = getelementptr inbounds %struct._GValue, %struct._GValue* %5, i64 2
  %call6 = call i32 @g_value_get_int(%struct._GValue* %arrayidx5)
  store i32 %call6, i32* %end_segment, align 4
  %6 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then, label %if.end.10

if.then:                                          ; preds = %entry
  %7 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %8 = load i8*, i8** %name, align 8
  %9 = load i32, i32* %start_segment, align 4
  %10 = load i32, i32* %end_segment, align 4
  %11 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call7 = call %struct._GimpGradient* @gradient_get_range(%struct._Gimp* %7, i8* %8, i32 %9, i32 %10, %struct._GimpGradientSegment** %start_seg, %struct._GimpGradientSegment** %end_seg, %struct._GError** %11)
  store %struct._GimpGradient* %call7, %struct._GimpGradient** %gradient, align 8
  %12 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %start_seg, align 8
  %tobool8 = icmp ne %struct._GimpGradientSegment* %12, null
  br i1 %tobool8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.then
  %13 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %14 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %start_seg, align 8
  %15 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %end_seg, align 8
  call void @gimp_gradient_segment_range_flip(%struct._GimpGradient* %13, %struct._GimpGradientSegment* %14, %struct._GimpGradientSegment* %15, %struct._GimpGradientSegment** null, %struct._GimpGradientSegment** null)
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.9
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
  ret %struct._GValueArray* %call12
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @gradient_segment_range_replicate_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %name = alloca i8*, align 8
  %start_segment = alloca i32, align 4
  %end_segment = alloca i32, align 4
  %replicate_times = alloca i32, align 4
  %gradient = alloca %struct._GimpGradient*, align 8
  %start_seg = alloca %struct._GimpGradientSegment*, align 8
  %end_seg = alloca %struct._GimpGradientSegment*, align 8
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
  %call = call i8* @g_value_get_string(%struct._GValue* %arrayidx)
  store i8* %call, i8** %name, align 8
  %2 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %2, i32 0, i32 1
  %3 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %3, i64 1
  %call3 = call i32 @g_value_get_int(%struct._GValue* %arrayidx2)
  store i32 %call3, i32* %start_segment, align 4
  %4 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values4 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %4, i32 0, i32 1
  %5 = load %struct._GValue*, %struct._GValue** %values4, align 8
  %arrayidx5 = getelementptr inbounds %struct._GValue, %struct._GValue* %5, i64 2
  %call6 = call i32 @g_value_get_int(%struct._GValue* %arrayidx5)
  store i32 %call6, i32* %end_segment, align 4
  %6 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values7 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %6, i32 0, i32 1
  %7 = load %struct._GValue*, %struct._GValue** %values7, align 8
  %arrayidx8 = getelementptr inbounds %struct._GValue, %struct._GValue* %7, i64 3
  %call9 = call i32 @g_value_get_int(%struct._GValue* %arrayidx8)
  store i32 %call9, i32* %replicate_times, align 4
  %8 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then, label %if.end.17

if.then:                                          ; preds = %entry
  %9 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %10 = load i8*, i8** %name, align 8
  %11 = load i32, i32* %start_segment, align 4
  %12 = load i32, i32* %end_segment, align 4
  %13 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call10 = call %struct._GimpGradient* @gradient_get_range(%struct._Gimp* %9, i8* %10, i32 %11, i32 %12, %struct._GimpGradientSegment** %start_seg, %struct._GimpGradientSegment** %end_seg, %struct._GError** %13)
  store %struct._GimpGradient* %call10, %struct._GimpGradient** %gradient, align 8
  %14 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %start_seg, align 8
  %tobool11 = icmp ne %struct._GimpGradientSegment* %14, null
  br i1 %tobool11, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %15 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %16 = bitcast %struct._GimpGradient* %15 to %struct._GTypeInstance*
  %call12 = call i64 @gimp_data_get_type() #4
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call12)
  %17 = bitcast %struct._GTypeInstance* %call13 to %struct._GimpData*
  %call14 = call i32 @gimp_data_is_writable(%struct._GimpData* %17)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.then.16, label %if.else

if.then.16:                                       ; preds = %land.lhs.true
  %18 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %19 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %start_seg, align 8
  %20 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %end_seg, align 8
  %21 = load i32, i32* %replicate_times, align 4
  call void @gimp_gradient_segment_range_replicate(%struct._GimpGradient* %18, %struct._GimpGradientSegment* %19, %struct._GimpGradientSegment* %20, i32 %21, %struct._GimpGradientSegment** null, %struct._GimpGradientSegment** null)
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.16
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
define internal %struct._GValueArray* @gradient_segment_range_split_midpoint_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %name = alloca i8*, align 8
  %start_segment = alloca i32, align 4
  %end_segment = alloca i32, align 4
  %gradient = alloca %struct._GimpGradient*, align 8
  %start_seg = alloca %struct._GimpGradientSegment*, align 8
  %end_seg = alloca %struct._GimpGradientSegment*, align 8
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
  %call = call i8* @g_value_get_string(%struct._GValue* %arrayidx)
  store i8* %call, i8** %name, align 8
  %2 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %2, i32 0, i32 1
  %3 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %3, i64 1
  %call3 = call i32 @g_value_get_int(%struct._GValue* %arrayidx2)
  store i32 %call3, i32* %start_segment, align 4
  %4 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values4 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %4, i32 0, i32 1
  %5 = load %struct._GValue*, %struct._GValue** %values4, align 8
  %arrayidx5 = getelementptr inbounds %struct._GValue, %struct._GValue* %5, i64 2
  %call6 = call i32 @g_value_get_int(%struct._GValue* %arrayidx5)
  store i32 %call6, i32* %end_segment, align 4
  %6 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then, label %if.end.10

if.then:                                          ; preds = %entry
  %7 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %8 = load i8*, i8** %name, align 8
  %9 = load i32, i32* %start_segment, align 4
  %10 = load i32, i32* %end_segment, align 4
  %11 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call7 = call %struct._GimpGradient* @gradient_get_range(%struct._Gimp* %7, i8* %8, i32 %9, i32 %10, %struct._GimpGradientSegment** %start_seg, %struct._GimpGradientSegment** %end_seg, %struct._GError** %11)
  store %struct._GimpGradient* %call7, %struct._GimpGradient** %gradient, align 8
  %12 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %start_seg, align 8
  %tobool8 = icmp ne %struct._GimpGradientSegment* %12, null
  br i1 %tobool8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.then
  %13 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %14 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %15 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %start_seg, align 8
  %16 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %end_seg, align 8
  call void @gimp_gradient_segment_range_split_midpoint(%struct._GimpGradient* %13, %struct._GimpContext* %14, %struct._GimpGradientSegment* %15, %struct._GimpGradientSegment* %16, %struct._GimpGradientSegment** null, %struct._GimpGradientSegment** null)
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.9
  br label %if.end.10

if.end.10:                                        ; preds = %if.end, %entry
  %17 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %18 = load i32, i32* %success, align 4
  %19 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool11 = icmp ne %struct._GError** %19, null
  br i1 %tobool11, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.10
  %20 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %21 = load %struct._GError*, %struct._GError** %20, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.10
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %21, %cond.true ], [ null, %cond.false ]
  %call12 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %17, i32 %18, %struct._GError* %cond)
  ret %struct._GValueArray* %call12
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @gradient_segment_range_split_uniform_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %name = alloca i8*, align 8
  %start_segment = alloca i32, align 4
  %end_segment = alloca i32, align 4
  %split_parts = alloca i32, align 4
  %gradient = alloca %struct._GimpGradient*, align 8
  %start_seg = alloca %struct._GimpGradientSegment*, align 8
  %end_seg = alloca %struct._GimpGradientSegment*, align 8
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
  %call = call i8* @g_value_get_string(%struct._GValue* %arrayidx)
  store i8* %call, i8** %name, align 8
  %2 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %2, i32 0, i32 1
  %3 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %3, i64 1
  %call3 = call i32 @g_value_get_int(%struct._GValue* %arrayidx2)
  store i32 %call3, i32* %start_segment, align 4
  %4 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values4 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %4, i32 0, i32 1
  %5 = load %struct._GValue*, %struct._GValue** %values4, align 8
  %arrayidx5 = getelementptr inbounds %struct._GValue, %struct._GValue* %5, i64 2
  %call6 = call i32 @g_value_get_int(%struct._GValue* %arrayidx5)
  store i32 %call6, i32* %end_segment, align 4
  %6 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values7 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %6, i32 0, i32 1
  %7 = load %struct._GValue*, %struct._GValue** %values7, align 8
  %arrayidx8 = getelementptr inbounds %struct._GValue, %struct._GValue* %7, i64 3
  %call9 = call i32 @g_value_get_int(%struct._GValue* %arrayidx8)
  store i32 %call9, i32* %split_parts, align 4
  %8 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then, label %if.end.13

if.then:                                          ; preds = %entry
  %9 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %10 = load i8*, i8** %name, align 8
  %11 = load i32, i32* %start_segment, align 4
  %12 = load i32, i32* %end_segment, align 4
  %13 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call10 = call %struct._GimpGradient* @gradient_get_range(%struct._Gimp* %9, i8* %10, i32 %11, i32 %12, %struct._GimpGradientSegment** %start_seg, %struct._GimpGradientSegment** %end_seg, %struct._GError** %13)
  store %struct._GimpGradient* %call10, %struct._GimpGradient** %gradient, align 8
  %14 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %start_seg, align 8
  %tobool11 = icmp ne %struct._GimpGradientSegment* %14, null
  br i1 %tobool11, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %if.then
  %15 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %16 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %17 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %start_seg, align 8
  %18 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %end_seg, align 8
  %19 = load i32, i32* %split_parts, align 4
  call void @gimp_gradient_segment_range_split_uniform(%struct._GimpGradient* %15, %struct._GimpContext* %16, %struct._GimpGradientSegment* %17, %struct._GimpGradientSegment* %18, i32 %19, %struct._GimpGradientSegment** null, %struct._GimpGradientSegment** null)
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.12
  br label %if.end.13

if.end.13:                                        ; preds = %if.end, %entry
  %20 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %21 = load i32, i32* %success, align 4
  %22 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool14 = icmp ne %struct._GError** %22, null
  br i1 %tobool14, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.13
  %23 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %24 = load %struct._GError*, %struct._GError** %23, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.13
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %24, %cond.true ], [ null, %cond.false ]
  %call15 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %20, i32 %21, %struct._GError* %cond)
  ret %struct._GValueArray* %call15
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @gradient_segment_range_delete_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %name = alloca i8*, align 8
  %start_segment = alloca i32, align 4
  %end_segment = alloca i32, align 4
  %gradient = alloca %struct._GimpGradient*, align 8
  %start_seg = alloca %struct._GimpGradientSegment*, align 8
  %end_seg = alloca %struct._GimpGradientSegment*, align 8
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
  %call = call i8* @g_value_get_string(%struct._GValue* %arrayidx)
  store i8* %call, i8** %name, align 8
  %2 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %2, i32 0, i32 1
  %3 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %3, i64 1
  %call3 = call i32 @g_value_get_int(%struct._GValue* %arrayidx2)
  store i32 %call3, i32* %start_segment, align 4
  %4 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values4 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %4, i32 0, i32 1
  %5 = load %struct._GValue*, %struct._GValue** %values4, align 8
  %arrayidx5 = getelementptr inbounds %struct._GValue, %struct._GValue* %5, i64 2
  %call6 = call i32 @g_value_get_int(%struct._GValue* %arrayidx5)
  store i32 %call6, i32* %end_segment, align 4
  %6 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then, label %if.end.10

if.then:                                          ; preds = %entry
  %7 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %8 = load i8*, i8** %name, align 8
  %9 = load i32, i32* %start_segment, align 4
  %10 = load i32, i32* %end_segment, align 4
  %11 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call7 = call %struct._GimpGradient* @gradient_get_range(%struct._Gimp* %7, i8* %8, i32 %9, i32 %10, %struct._GimpGradientSegment** %start_seg, %struct._GimpGradientSegment** %end_seg, %struct._GError** %11)
  store %struct._GimpGradient* %call7, %struct._GimpGradient** %gradient, align 8
  %12 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %start_seg, align 8
  %tobool8 = icmp ne %struct._GimpGradientSegment* %12, null
  br i1 %tobool8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.then
  %13 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %14 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %start_seg, align 8
  %15 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %end_seg, align 8
  call void @gimp_gradient_segment_range_delete(%struct._GimpGradient* %13, %struct._GimpGradientSegment* %14, %struct._GimpGradientSegment* %15, %struct._GimpGradientSegment** null, %struct._GimpGradientSegment** null)
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.9
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
  ret %struct._GValueArray* %call12
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @gradient_segment_range_redistribute_handles_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %name = alloca i8*, align 8
  %start_segment = alloca i32, align 4
  %end_segment = alloca i32, align 4
  %gradient = alloca %struct._GimpGradient*, align 8
  %start_seg = alloca %struct._GimpGradientSegment*, align 8
  %end_seg = alloca %struct._GimpGradientSegment*, align 8
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
  %call = call i8* @g_value_get_string(%struct._GValue* %arrayidx)
  store i8* %call, i8** %name, align 8
  %2 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %2, i32 0, i32 1
  %3 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %3, i64 1
  %call3 = call i32 @g_value_get_int(%struct._GValue* %arrayidx2)
  store i32 %call3, i32* %start_segment, align 4
  %4 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values4 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %4, i32 0, i32 1
  %5 = load %struct._GValue*, %struct._GValue** %values4, align 8
  %arrayidx5 = getelementptr inbounds %struct._GValue, %struct._GValue* %5, i64 2
  %call6 = call i32 @g_value_get_int(%struct._GValue* %arrayidx5)
  store i32 %call6, i32* %end_segment, align 4
  %6 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then, label %if.end.10

if.then:                                          ; preds = %entry
  %7 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %8 = load i8*, i8** %name, align 8
  %9 = load i32, i32* %start_segment, align 4
  %10 = load i32, i32* %end_segment, align 4
  %11 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call7 = call %struct._GimpGradient* @gradient_get_range(%struct._Gimp* %7, i8* %8, i32 %9, i32 %10, %struct._GimpGradientSegment** %start_seg, %struct._GimpGradientSegment** %end_seg, %struct._GError** %11)
  store %struct._GimpGradient* %call7, %struct._GimpGradient** %gradient, align 8
  %12 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %start_seg, align 8
  %tobool8 = icmp ne %struct._GimpGradientSegment* %12, null
  br i1 %tobool8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.then
  %13 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %14 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %start_seg, align 8
  %15 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %end_seg, align 8
  call void @gimp_gradient_segment_range_redistribute_handles(%struct._GimpGradient* %13, %struct._GimpGradientSegment* %14, %struct._GimpGradientSegment* %15)
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.9
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
  ret %struct._GValueArray* %call12
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @gradient_segment_range_blend_colors_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %name = alloca i8*, align 8
  %start_segment = alloca i32, align 4
  %end_segment = alloca i32, align 4
  %gradient = alloca %struct._GimpGradient*, align 8
  %start_seg = alloca %struct._GimpGradientSegment*, align 8
  %end_seg = alloca %struct._GimpGradientSegment*, align 8
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
  %call = call i8* @g_value_get_string(%struct._GValue* %arrayidx)
  store i8* %call, i8** %name, align 8
  %2 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %2, i32 0, i32 1
  %3 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %3, i64 1
  %call3 = call i32 @g_value_get_int(%struct._GValue* %arrayidx2)
  store i32 %call3, i32* %start_segment, align 4
  %4 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values4 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %4, i32 0, i32 1
  %5 = load %struct._GValue*, %struct._GValue** %values4, align 8
  %arrayidx5 = getelementptr inbounds %struct._GValue, %struct._GValue* %5, i64 2
  %call6 = call i32 @g_value_get_int(%struct._GValue* %arrayidx5)
  store i32 %call6, i32* %end_segment, align 4
  %6 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then, label %if.end.14

if.then:                                          ; preds = %entry
  %7 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %8 = load i8*, i8** %name, align 8
  %9 = load i32, i32* %start_segment, align 4
  %10 = load i32, i32* %end_segment, align 4
  %11 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call7 = call %struct._GimpGradient* @gradient_get_range(%struct._Gimp* %7, i8* %8, i32 %9, i32 %10, %struct._GimpGradientSegment** %start_seg, %struct._GimpGradientSegment** %end_seg, %struct._GError** %11)
  store %struct._GimpGradient* %call7, %struct._GimpGradient** %gradient, align 8
  %12 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %start_seg, align 8
  %tobool8 = icmp ne %struct._GimpGradientSegment* %12, null
  br i1 %tobool8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.then
  %13 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %end_seg, align 8
  %tobool10 = icmp ne %struct._GimpGradientSegment* %13, null
  br i1 %tobool10, label %if.end, label %if.then.11

if.then.11:                                       ; preds = %if.then.9
  %14 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %start_seg, align 8
  %call12 = call %struct._GimpGradientSegment* @gimp_gradient_segment_get_last(%struct._GimpGradientSegment* %14)
  store %struct._GimpGradientSegment* %call12, %struct._GimpGradientSegment** %end_seg, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.11, %if.then.9
  %15 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %16 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %start_seg, align 8
  %17 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %end_seg, align 8
  %18 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %start_seg, align 8
  %left_color = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %18, i32 0, i32 4
  %19 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %end_seg, align 8
  %right_color = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %19, i32 0, i32 6
  call void @gimp_gradient_segment_range_blend(%struct._GimpGradient* %15, %struct._GimpGradientSegment* %16, %struct._GimpGradientSegment* %17, %struct._GimpRGB* %left_color, %struct._GimpRGB* %right_color, i32 1, i32 0)
  br label %if.end.13

if.else:                                          ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end.13

if.end.13:                                        ; preds = %if.else, %if.end
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %entry
  %20 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %21 = load i32, i32* %success, align 4
  %22 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool15 = icmp ne %struct._GError** %22, null
  br i1 %tobool15, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.14
  %23 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %24 = load %struct._GError*, %struct._GError** %23, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.14
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %24, %cond.true ], [ null, %cond.false ]
  %call16 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %20, i32 %21, %struct._GError* %cond)
  ret %struct._GValueArray* %call16
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @gradient_segment_range_blend_opacity_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %name = alloca i8*, align 8
  %start_segment = alloca i32, align 4
  %end_segment = alloca i32, align 4
  %gradient = alloca %struct._GimpGradient*, align 8
  %start_seg = alloca %struct._GimpGradientSegment*, align 8
  %end_seg = alloca %struct._GimpGradientSegment*, align 8
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
  %call = call i8* @g_value_get_string(%struct._GValue* %arrayidx)
  store i8* %call, i8** %name, align 8
  %2 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %2, i32 0, i32 1
  %3 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %3, i64 1
  %call3 = call i32 @g_value_get_int(%struct._GValue* %arrayidx2)
  store i32 %call3, i32* %start_segment, align 4
  %4 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values4 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %4, i32 0, i32 1
  %5 = load %struct._GValue*, %struct._GValue** %values4, align 8
  %arrayidx5 = getelementptr inbounds %struct._GValue, %struct._GValue* %5, i64 2
  %call6 = call i32 @g_value_get_int(%struct._GValue* %arrayidx5)
  store i32 %call6, i32* %end_segment, align 4
  %6 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then, label %if.end.14

if.then:                                          ; preds = %entry
  %7 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %8 = load i8*, i8** %name, align 8
  %9 = load i32, i32* %start_segment, align 4
  %10 = load i32, i32* %end_segment, align 4
  %11 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call7 = call %struct._GimpGradient* @gradient_get_range(%struct._Gimp* %7, i8* %8, i32 %9, i32 %10, %struct._GimpGradientSegment** %start_seg, %struct._GimpGradientSegment** %end_seg, %struct._GError** %11)
  store %struct._GimpGradient* %call7, %struct._GimpGradient** %gradient, align 8
  %12 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %start_seg, align 8
  %tobool8 = icmp ne %struct._GimpGradientSegment* %12, null
  br i1 %tobool8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.then
  %13 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %end_seg, align 8
  %tobool10 = icmp ne %struct._GimpGradientSegment* %13, null
  br i1 %tobool10, label %if.end, label %if.then.11

if.then.11:                                       ; preds = %if.then.9
  %14 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %start_seg, align 8
  %call12 = call %struct._GimpGradientSegment* @gimp_gradient_segment_get_last(%struct._GimpGradientSegment* %14)
  store %struct._GimpGradientSegment* %call12, %struct._GimpGradientSegment** %end_seg, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.11, %if.then.9
  %15 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %16 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %start_seg, align 8
  %17 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %end_seg, align 8
  %18 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %start_seg, align 8
  %left_color = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %18, i32 0, i32 4
  %19 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %end_seg, align 8
  %right_color = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %19, i32 0, i32 6
  call void @gimp_gradient_segment_range_blend(%struct._GimpGradient* %15, %struct._GimpGradientSegment* %16, %struct._GimpGradientSegment* %17, %struct._GimpRGB* %left_color, %struct._GimpRGB* %right_color, i32 0, i32 1)
  br label %if.end.13

if.else:                                          ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end.13

if.end.13:                                        ; preds = %if.else, %if.end
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %entry
  %20 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %21 = load i32, i32* %success, align 4
  %22 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool15 = icmp ne %struct._GError** %22, null
  br i1 %tobool15, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.14
  %23 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %24 = load %struct._GError*, %struct._GError** %23, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.14
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %24, %cond.true ], [ null, %cond.false ]
  %call16 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %20, i32 %21, %struct._GError* %cond)
  ret %struct._GValueArray* %call16
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @gradient_segment_range_move_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %return_vals = alloca %struct._GValueArray*, align 8
  %name = alloca i8*, align 8
  %start_segment = alloca i32, align 4
  %end_segment = alloca i32, align 4
  %delta = alloca double, align 8
  %control_compress = alloca i32, align 4
  %final_delta = alloca double, align 8
  %gradient = alloca %struct._GimpGradient*, align 8
  %start_seg = alloca %struct._GimpGradientSegment*, align 8
  %end_seg = alloca %struct._GimpGradientSegment*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store double 0.000000e+00, double* %final_delta, align 8
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %call = call i8* @g_value_get_string(%struct._GValue* %arrayidx)
  store i8* %call, i8** %name, align 8
  %2 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %2, i32 0, i32 1
  %3 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %3, i64 1
  %call3 = call i32 @g_value_get_int(%struct._GValue* %arrayidx2)
  store i32 %call3, i32* %start_segment, align 4
  %4 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values4 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %4, i32 0, i32 1
  %5 = load %struct._GValue*, %struct._GValue** %values4, align 8
  %arrayidx5 = getelementptr inbounds %struct._GValue, %struct._GValue* %5, i64 2
  %call6 = call i32 @g_value_get_int(%struct._GValue* %arrayidx5)
  store i32 %call6, i32* %end_segment, align 4
  %6 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values7 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %6, i32 0, i32 1
  %7 = load %struct._GValue*, %struct._GValue** %values7, align 8
  %arrayidx8 = getelementptr inbounds %struct._GValue, %struct._GValue* %7, i64 3
  %call9 = call double @g_value_get_double(%struct._GValue* %arrayidx8)
  store double %call9, double* %delta, align 8
  %8 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values10 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %8, i32 0, i32 1
  %9 = load %struct._GValue*, %struct._GValue** %values10, align 8
  %arrayidx11 = getelementptr inbounds %struct._GValue, %struct._GValue* %9, i64 4
  %call12 = call i32 @g_value_get_boolean(%struct._GValue* %arrayidx11)
  store i32 %call12, i32* %control_compress, align 4
  %10 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %if.then, label %if.end.17

if.then:                                          ; preds = %entry
  %11 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %12 = load i8*, i8** %name, align 8
  %13 = load i32, i32* %start_segment, align 4
  %14 = load i32, i32* %end_segment, align 4
  %15 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call13 = call %struct._GimpGradient* @gradient_get_range(%struct._Gimp* %11, i8* %12, i32 %13, i32 %14, %struct._GimpGradientSegment** %start_seg, %struct._GimpGradientSegment** %end_seg, %struct._GError** %15)
  store %struct._GimpGradient* %call13, %struct._GimpGradient** %gradient, align 8
  %16 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %start_seg, align 8
  %tobool14 = icmp ne %struct._GimpGradientSegment* %16, null
  br i1 %tobool14, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %if.then
  %17 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %18 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %start_seg, align 8
  %19 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %end_seg, align 8
  %20 = load double, double* %delta, align 8
  %21 = load i32, i32* %control_compress, align 4
  %call16 = call double @gimp_gradient_segment_range_move(%struct._GimpGradient* %17, %struct._GimpGradientSegment* %18, %struct._GimpGradientSegment* %19, double %20, i32 %21)
  store double %call16, double* %final_delta, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
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
  store %struct._GValueArray* %call19, %struct._GValueArray** %return_vals, align 8
  %27 = load i32, i32* %success, align 4
  %tobool20 = icmp ne i32 %27, 0
  br i1 %tobool20, label %if.then.21, label %if.end.24

if.then.21:                                       ; preds = %cond.end
  %28 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values22 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %28, i32 0, i32 1
  %29 = load %struct._GValue*, %struct._GValue** %values22, align 8
  %arrayidx23 = getelementptr inbounds %struct._GValue, %struct._GValue* %29, i64 1
  %30 = load double, double* %final_delta, align 8
  call void @g_value_set_double(%struct._GValue* %arrayidx23, double %30)
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.21, %cond.end
  %31 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %31
}

declare i8* @g_value_get_string(%struct._GValue*) #1

declare %struct._GimpData* @gimp_data_factory_data_new(%struct._GimpDataFactory*, %struct._GimpContext*, i8*) #1

declare noalias i8* @g_strdup(i8*) #1

declare i8* @gimp_object_get_name(i8*) #1

declare %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure*, i32, %struct._GError*) #1

declare void @g_value_take_string(%struct._GValue*, i8*) #1

declare %struct._GimpGradient* @gimp_pdb_get_gradient(%struct._Gimp*, i8*, i32, %struct._GError**) #1

declare %struct._GimpData* @gimp_data_factory_data_duplicate(%struct._GimpDataFactory*, %struct._GimpData*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_data_get_type() #2

declare i32 @gimp_data_is_writable(%struct._GimpData*) #1

declare void @g_value_set_boolean(%struct._GValue*, i32) #1

declare void @gimp_object_set_name(%struct._GimpObject*, i8*) #1

declare i32 @gimp_data_is_deletable(%struct._GimpData*) #1

declare i32 @gimp_data_factory_data_delete(%struct._GimpDataFactory*, %struct._GimpData*, i32, %struct._GError**) #1

declare void @g_value_set_int(%struct._GValue*, i32) #1

declare i32 @g_value_get_int(%struct._GValue*) #1

declare i32 @g_value_get_boolean(%struct._GValue*) #1

declare noalias i8* @g_malloc_n(i64, i64) #1

declare %struct._GimpGradientSegment* @gimp_gradient_get_color_at(%struct._GimpGradient*, %struct._GimpContext*, %struct._GimpGradientSegment*, double, i32, %struct._GimpRGB*) #1

declare void @gimp_value_take_floatarray(%struct._GValue*, double*, i64) #1

declare double* @gimp_value_get_floatarray(%struct._GValue*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

; Function Attrs: nounwind uwtable
define internal %struct._GimpGradient* @gradient_get(%struct._Gimp* %gimp, i8* %name, i32 %writable, i32 %segment, %struct._GimpGradientSegment** %seg, %struct._GError** %error) #0 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  %name.addr = alloca i8*, align 8
  %writable.addr = alloca i32, align 4
  %segment.addr = alloca i32, align 4
  %seg.addr = alloca %struct._GimpGradientSegment**, align 8
  %error.addr = alloca %struct._GError**, align 8
  %gradient = alloca %struct._GimpGradient*, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store i32 %writable, i32* %writable.addr, align 4
  store i32 %segment, i32* %segment.addr, align 4
  store %struct._GimpGradientSegment** %seg, %struct._GimpGradientSegment*** %seg.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = load i8*, i8** %name.addr, align 8
  %2 = load i32, i32* %writable.addr, align 4
  %3 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call = call %struct._GimpGradient* @gimp_pdb_get_gradient(%struct._Gimp* %0, i8* %1, i32 %2, %struct._GError** %3)
  store %struct._GimpGradient* %call, %struct._GimpGradient** %gradient, align 8
  %4 = load %struct._GimpGradientSegment**, %struct._GimpGradientSegment*** %seg.addr, align 8
  store %struct._GimpGradientSegment* null, %struct._GimpGradientSegment** %4, align 8
  %5 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %tobool = icmp ne %struct._GimpGradient* %5, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %segments = getelementptr inbounds %struct._GimpGradient, %struct._GimpGradient* %6, i32 0, i32 1
  %7 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %segments, align 8
  %8 = load i32, i32* %segment.addr, align 4
  %call1 = call %struct._GimpGradientSegment* @gimp_gradient_segment_get_nth(%struct._GimpGradientSegment* %7, i32 %8)
  %9 = load %struct._GimpGradientSegment**, %struct._GimpGradientSegment*** %seg.addr, align 8
  store %struct._GimpGradientSegment* %call1, %struct._GimpGradientSegment** %9, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  ret %struct._GimpGradient* %10
}

declare void @gimp_gradient_segment_get_left_color(%struct._GimpGradient*, %struct._GimpGradientSegment*, %struct._GimpRGB*) #1

declare void @gimp_value_set_rgb(%struct._GValue*, %struct._GimpRGB*) #1

declare void @g_value_set_double(%struct._GValue*, double) #1

declare %struct._GimpGradientSegment* @gimp_gradient_segment_get_nth(%struct._GimpGradientSegment*, i32) #1

declare void @gimp_value_get_rgb(%struct._GValue*, %struct._GimpRGB*) #1

declare double @g_value_get_double(%struct._GValue*) #1

declare void @gimp_gradient_segment_set_left_color(%struct._GimpGradient*, %struct._GimpGradientSegment*, %struct._GimpRGB*) #1

declare void @gimp_gradient_segment_get_right_color(%struct._GimpGradient*, %struct._GimpGradientSegment*, %struct._GimpRGB*) #1

declare void @gimp_gradient_segment_set_right_color(%struct._GimpGradient*, %struct._GimpGradientSegment*, %struct._GimpRGB*) #1

declare double @gimp_gradient_segment_get_left_pos(%struct._GimpGradient*, %struct._GimpGradientSegment*) #1

declare double @gimp_gradient_segment_set_left_pos(%struct._GimpGradient*, %struct._GimpGradientSegment*, double) #1

declare double @gimp_gradient_segment_get_middle_pos(%struct._GimpGradient*, %struct._GimpGradientSegment*) #1

declare double @gimp_gradient_segment_set_middle_pos(%struct._GimpGradient*, %struct._GimpGradientSegment*, double) #1

declare double @gimp_gradient_segment_get_right_pos(%struct._GimpGradient*, %struct._GimpGradientSegment*) #1

declare double @gimp_gradient_segment_set_right_pos(%struct._GimpGradient*, %struct._GimpGradientSegment*, double) #1

declare i32 @gimp_gradient_segment_get_blending_function(%struct._GimpGradient*, %struct._GimpGradientSegment*) #1

declare void @g_value_set_enum(%struct._GValue*, i32) #1

declare i32 @gimp_gradient_segment_get_coloring_type(%struct._GimpGradient*, %struct._GimpGradientSegment*) #1

declare i32 @g_value_get_enum(%struct._GValue*) #1

; Function Attrs: nounwind uwtable
define internal %struct._GimpGradient* @gradient_get_range(%struct._Gimp* %gimp, i8* %name, i32 %start_segment, i32 %end_segment, %struct._GimpGradientSegment** %start_seg, %struct._GimpGradientSegment** %end_seg, %struct._GError** %error) #0 {
entry:
  %retval = alloca %struct._GimpGradient*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %name.addr = alloca i8*, align 8
  %start_segment.addr = alloca i32, align 4
  %end_segment.addr = alloca i32, align 4
  %start_seg.addr = alloca %struct._GimpGradientSegment**, align 8
  %end_seg.addr = alloca %struct._GimpGradientSegment**, align 8
  %error.addr = alloca %struct._GError**, align 8
  %gradient = alloca %struct._GimpGradient*, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store i32 %start_segment, i32* %start_segment.addr, align 4
  store i32 %end_segment, i32* %end_segment.addr, align 4
  store %struct._GimpGradientSegment** %start_seg, %struct._GimpGradientSegment*** %start_seg.addr, align 8
  store %struct._GimpGradientSegment** %end_seg, %struct._GimpGradientSegment*** %end_seg.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = load i8*, i8** %name.addr, align 8
  %2 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call = call %struct._GimpGradient* @gimp_pdb_get_gradient(%struct._Gimp* %0, i8* %1, i32 1, %struct._GError** %2)
  store %struct._GimpGradient* %call, %struct._GimpGradient** %gradient, align 8
  %3 = load %struct._GimpGradientSegment**, %struct._GimpGradientSegment*** %start_seg.addr, align 8
  store %struct._GimpGradientSegment* null, %struct._GimpGradientSegment** %3, align 8
  %4 = load %struct._GimpGradientSegment**, %struct._GimpGradientSegment*** %end_seg.addr, align 8
  store %struct._GimpGradientSegment* null, %struct._GimpGradientSegment** %4, align 8
  %5 = load i32, i32* %end_segment.addr, align 4
  %cmp = icmp sge i32 %5, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %6 = load i32, i32* %end_segment.addr, align 4
  %7 = load i32, i32* %start_segment.addr, align 4
  %cmp1 = icmp slt i32 %6, %7
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store %struct._GimpGradient* null, %struct._GimpGradient** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %8 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %tobool = icmp ne %struct._GimpGradient* %8, null
  br i1 %tobool, label %if.then.2, label %if.end.10

if.then.2:                                        ; preds = %if.end
  %9 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %segments = getelementptr inbounds %struct._GimpGradient, %struct._GimpGradient* %9, i32 0, i32 1
  %10 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %segments, align 8
  %11 = load i32, i32* %start_segment.addr, align 4
  %call3 = call %struct._GimpGradientSegment* @gimp_gradient_segment_get_nth(%struct._GimpGradientSegment* %10, i32 %11)
  %12 = load %struct._GimpGradientSegment**, %struct._GimpGradientSegment*** %start_seg.addr, align 8
  store %struct._GimpGradientSegment* %call3, %struct._GimpGradientSegment** %12, align 8
  %13 = load %struct._GimpGradientSegment**, %struct._GimpGradientSegment*** %start_seg.addr, align 8
  %14 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %13, align 8
  %tobool4 = icmp ne %struct._GimpGradientSegment* %14, null
  br i1 %tobool4, label %land.lhs.true.5, label %if.end.9

land.lhs.true.5:                                  ; preds = %if.then.2
  %15 = load i32, i32* %end_segment.addr, align 4
  %cmp6 = icmp sge i32 %15, 0
  br i1 %cmp6, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %land.lhs.true.5
  %16 = load %struct._GimpGradientSegment**, %struct._GimpGradientSegment*** %start_seg.addr, align 8
  %17 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %16, align 8
  %18 = load i32, i32* %end_segment.addr, align 4
  %19 = load i32, i32* %start_segment.addr, align 4
  %sub = sub nsw i32 %18, %19
  %call8 = call %struct._GimpGradientSegment* @gimp_gradient_segment_get_nth(%struct._GimpGradientSegment* %17, i32 %sub)
  %20 = load %struct._GimpGradientSegment**, %struct._GimpGradientSegment*** %end_seg.addr, align 8
  store %struct._GimpGradientSegment* %call8, %struct._GimpGradientSegment** %20, align 8
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.7, %land.lhs.true.5, %if.then.2
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.9, %if.end
  %21 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  store %struct._GimpGradient* %21, %struct._GimpGradient** %retval
  br label %return

return:                                           ; preds = %if.end.10, %if.then
  %22 = load %struct._GimpGradient*, %struct._GimpGradient** %retval
  ret %struct._GimpGradient* %22
}

declare void @gimp_gradient_segment_range_set_blending_function(%struct._GimpGradient*, %struct._GimpGradientSegment*, %struct._GimpGradientSegment*, i32) #1

declare void @gimp_gradient_segment_range_set_coloring_type(%struct._GimpGradient*, %struct._GimpGradientSegment*, %struct._GimpGradientSegment*, i32) #1

declare void @gimp_gradient_segment_range_flip(%struct._GimpGradient*, %struct._GimpGradientSegment*, %struct._GimpGradientSegment*, %struct._GimpGradientSegment**, %struct._GimpGradientSegment**) #1

declare void @gimp_gradient_segment_range_replicate(%struct._GimpGradient*, %struct._GimpGradientSegment*, %struct._GimpGradientSegment*, i32, %struct._GimpGradientSegment**, %struct._GimpGradientSegment**) #1

declare void @gimp_gradient_segment_range_split_midpoint(%struct._GimpGradient*, %struct._GimpContext*, %struct._GimpGradientSegment*, %struct._GimpGradientSegment*, %struct._GimpGradientSegment**, %struct._GimpGradientSegment**) #1

declare void @gimp_gradient_segment_range_split_uniform(%struct._GimpGradient*, %struct._GimpContext*, %struct._GimpGradientSegment*, %struct._GimpGradientSegment*, i32, %struct._GimpGradientSegment**, %struct._GimpGradientSegment**) #1

declare void @gimp_gradient_segment_range_delete(%struct._GimpGradient*, %struct._GimpGradientSegment*, %struct._GimpGradientSegment*, %struct._GimpGradientSegment**, %struct._GimpGradientSegment**) #1

declare void @gimp_gradient_segment_range_redistribute_handles(%struct._GimpGradient*, %struct._GimpGradientSegment*, %struct._GimpGradientSegment*) #1

declare %struct._GimpGradientSegment* @gimp_gradient_segment_get_last(%struct._GimpGradientSegment*) #1

declare void @gimp_gradient_segment_range_blend(%struct._GimpGradient*, %struct._GimpGradientSegment*, %struct._GimpGradientSegment*, %struct._GimpRGB*, %struct._GimpRGB*, i32, i32) #1

declare double @gimp_gradient_segment_range_move(%struct._GimpGradient*, %struct._GimpGradientSegment*, %struct._GimpGradientSegment*, double, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
