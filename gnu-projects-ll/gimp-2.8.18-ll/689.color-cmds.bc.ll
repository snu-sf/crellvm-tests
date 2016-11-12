; ModuleID = './app/pdb/color-cmds.bc'
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
%struct._GimpDrawable = type { %struct._GimpItem, %struct._GimpDrawablePrivate* }
%struct._GimpItem = type { %struct._GimpViewable }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpDrawablePrivate = type opaque
%struct._GimpImage = type opaque
%struct._GimpHistogram = type opaque

@.str = private unnamed_addr constant [25 x i8] c"gimp-brightness-contrast\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"Modify brightness/contrast in the specified drawable.\00", align 1
@.str.2 = private unnamed_addr constant [171 x i8] c"This procedures allows the brightness and contrast of the specified drawable to be modified. Both 'brightness' and 'contrast' parameters are defined between -127 and 127.\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Spencer Kimball & Peter Mattis\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"1997\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"drawable\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"The drawable\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"brightness\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"Brightness adjustment\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"contrast\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"Contrast adjustment\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"gimp-levels\00", align 1
@.str.12 = private unnamed_addr constant [53 x i8] c"Modifies intensity levels in the specified drawable.\00", align 1
@.str.13 = private unnamed_addr constant [768 x i8] c"This tool allows intensity levels in the specified drawable to be remapped according to a set of parameters. The low/high input levels specify an initial mapping from the source intensities. The gamma value determines how intensities between the low and high input intensities are interpolated. A gamma value of 1.0 results in a linear interpolation. Higher gamma values result in more high-level intensities. Lower gamma values result in more low-level intensities. The low/high output levels constrain the final intensity mapping--that is, no final intensity will be lower than the low output level and no final intensity will be higher than the high output level. This tool is only valid on RGB color and grayscale images. It will not operate on indexed drawables.\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"1995-1996\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"channel\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"The channel to modify\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"low-input\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"low input\00", align 1
@.str.19 = private unnamed_addr constant [26 x i8] c"Intensity of lowest input\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"high-input\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"high input\00", align 1
@.str.22 = private unnamed_addr constant [27 x i8] c"Intensity of highest input\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"gamma\00", align 1
@.str.24 = private unnamed_addr constant [24 x i8] c"Gamma correction factor\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"low-output\00", align 1
@.str.26 = private unnamed_addr constant [11 x i8] c"low output\00", align 1
@.str.27 = private unnamed_addr constant [27 x i8] c"Intensity of lowest output\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c"high-output\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c"high output\00", align 1
@.str.30 = private unnamed_addr constant [28 x i8] c"Intensity of highest output\00", align 1
@.str.31 = private unnamed_addr constant [17 x i8] c"gimp-levels-auto\00", align 1
@.str.32 = private unnamed_addr constant [47 x i8] c"Deprecated: Use 'gimp-levels-stretch' instead.\00", align 1
@.str.33 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.34 = private unnamed_addr constant [20 x i8] c"gimp-levels-stretch\00", align 1
@.str.35 = private unnamed_addr constant [67 x i8] c"Automatically modifies intensity levels in the specified drawable.\00", align 1
@.str.36 = private unnamed_addr constant [295 x i8] c"This procedure allows intensity levels in the specified drawable to be remapped according to a set of guessed parameters. It is equivalent to clicking the \22Auto\22 button in the Levels tool. This procedure is only valid on RGB color and grayscale images. It will not operate on indexed drawables.\00", align 1
@.str.37 = private unnamed_addr constant [31 x i8] c"Joao S.O. Bueno, Shawn Willden\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"2003\00", align 1
@.str.39 = private unnamed_addr constant [15 x i8] c"gimp-posterize\00", align 1
@.str.40 = private unnamed_addr constant [34 x i8] c"Posterize the specified drawable.\00", align 1
@.str.41 = private unnamed_addr constant [115 x i8] c"This procedures reduces the number of shades allows in each intensity channel to the specified 'levels' parameter.\00", align 1
@.str.42 = private unnamed_addr constant [7 x i8] c"levels\00", align 1
@.str.43 = private unnamed_addr constant [24 x i8] c"Levels of posterization\00", align 1
@.str.44 = private unnamed_addr constant [16 x i8] c"gimp-desaturate\00", align 1
@.str.45 = private unnamed_addr constant [51 x i8] c"Desaturate the contents of the specified drawable.\00", align 1
@.str.46 = private unnamed_addr constant [125 x i8] c"This procedure desaturates the contents of the specified drawable. This procedure only works on drawables of type RGB color.\00", align 1
@.str.47 = private unnamed_addr constant [21 x i8] c"gimp-desaturate-full\00", align 1
@.str.48 = private unnamed_addr constant [79 x i8] c"Desaturate the contents of the specified drawable, with the specified formula.\00", align 1
@.str.49 = private unnamed_addr constant [153 x i8] c"This procedure desaturates the contents of the specified drawable, with the specified formula. This procedure only works on drawables of type RGB color.\00", align 1
@.str.50 = private unnamed_addr constant [15 x i8] c"Karine Delvare\00", align 1
@.str.51 = private unnamed_addr constant [5 x i8] c"2005\00", align 1
@.str.52 = private unnamed_addr constant [16 x i8] c"desaturate-mode\00", align 1
@.str.53 = private unnamed_addr constant [16 x i8] c"desaturate mode\00", align 1
@.str.54 = private unnamed_addr constant [33 x i8] c"The formula to use to desaturate\00", align 1
@.str.55 = private unnamed_addr constant [14 x i8] c"gimp-equalize\00", align 1
@.str.56 = private unnamed_addr constant [49 x i8] c"Equalize the contents of the specified drawable.\00", align 1
@.str.57 = private unnamed_addr constant [506 x i8] c"This procedure equalizes the contents of the specified drawable. Each intensity channel is equalized independently. The equalized intensity is given as inten' = (255 - inten). Indexed color drawables are not valid for this operation. The 'mask_only' option specifies whether to adjust only the area of the image within the selection bounds, or the entire image based on the histogram of the selected area. If there is no selection, the entire image is adjusted based on the histogram for the entire image.\00", align 1
@.str.58 = private unnamed_addr constant [10 x i8] c"mask-only\00", align 1
@.str.59 = private unnamed_addr constant [10 x i8] c"mask only\00", align 1
@.str.60 = private unnamed_addr constant [20 x i8] c"Equalization option\00", align 1
@.str.61 = private unnamed_addr constant [12 x i8] c"gimp-invert\00", align 1
@.str.62 = private unnamed_addr constant [47 x i8] c"Invert the contents of the specified drawable.\00", align 1
@.str.63 = private unnamed_addr constant [230 x i8] c"This procedure inverts the contents of the specified drawable. Each intensity channel is inverted independently. The inverted intensity is given as inten' = (255 - inten). Indexed color drawables are not valid for this operation.\00", align 1
@.str.64 = private unnamed_addr constant [19 x i8] c"gimp-curves-spline\00", align 1
@.str.65 = private unnamed_addr constant [56 x i8] c"Modifies the intensity curve(s) for specified drawable.\00", align 1
@.str.66 = private unnamed_addr constant [432 x i8] c"Modifies the intensity mapping for one channel in the specified drawable. The drawable must be either grayscale or RGB, and the channel can be either an intensity component, or the value. The 'control_pts' parameter is an array of integers which define a set of control points which describe a Catmull Rom spline which yields the final intensity curve. Use the 'gimp-curves-explicit' function to explicitly modify intensity levels.\00", align 1
@.str.67 = private unnamed_addr constant [11 x i8] c"num-points\00", align 1
@.str.68 = private unnamed_addr constant [11 x i8] c"num points\00", align 1
@.str.69 = private unnamed_addr constant [48 x i8] c"The number of values in the control point array\00", align 1
@.str.70 = private unnamed_addr constant [12 x i8] c"control-pts\00", align 1
@.str.71 = private unnamed_addr constant [12 x i8] c"control pts\00", align 1
@.str.72 = private unnamed_addr constant [63 x i8] c"The spline control points: { cp1.x, cp1.y, cp2.x, cp2.y, ... }\00", align 1
@.str.73 = private unnamed_addr constant [21 x i8] c"gimp-curves-explicit\00", align 1
@.str.74 = private unnamed_addr constant [402 x i8] c"Modifies the intensity mapping for one channel in the specified drawable. The drawable must be either grayscale or RGB, and the channel can be either an intensity component, or the value. The 'curve' parameter is an array of bytes which explicitly defines how each pixel value in the drawable will be modified. Use the 'gimp-curves-spline' function to modify intensity levels with Catmull Rom splines.\00", align 1
@.str.75 = private unnamed_addr constant [10 x i8] c"num-bytes\00", align 1
@.str.76 = private unnamed_addr constant [10 x i8] c"num bytes\00", align 1
@.str.77 = private unnamed_addr constant [50 x i8] c"The number of bytes in the new curve (always 256)\00", align 1
@.str.78 = private unnamed_addr constant [6 x i8] c"curve\00", align 1
@.str.79 = private unnamed_addr constant [19 x i8] c"The explicit curve\00", align 1
@.str.80 = private unnamed_addr constant [19 x i8] c"gimp-color-balance\00", align 1
@.str.81 = private unnamed_addr constant [52 x i8] c"Modify the color balance of the specified drawable.\00", align 1
@.str.82 = private unnamed_addr constant [490 x i8] c"Modify the color balance of the specified drawable. There are three axis which can be modified: cyan-red, magenta-green, and yellow-blue. Negative values increase the amount of the former, positive values increase the amount of the latter. Color balance can be controlled with the 'transfer_mode' setting, which allows shadows, mid-tones, and highlights in an image to be affected differently. The 'preserve-lum' parameter, if TRUE, ensures that the luminosity of each pixel remains fixed.\00", align 1
@.str.83 = private unnamed_addr constant [14 x i8] c"transfer-mode\00", align 1
@.str.84 = private unnamed_addr constant [14 x i8] c"transfer mode\00", align 1
@.str.85 = private unnamed_addr constant [14 x i8] c"Transfer mode\00", align 1
@.str.86 = private unnamed_addr constant [13 x i8] c"preserve-lum\00", align 1
@.str.87 = private unnamed_addr constant [13 x i8] c"preserve lum\00", align 1
@.str.88 = private unnamed_addr constant [41 x i8] c"Preserve luminosity values at each pixel\00", align 1
@.str.89 = private unnamed_addr constant [9 x i8] c"cyan-red\00", align 1
@.str.90 = private unnamed_addr constant [9 x i8] c"cyan red\00", align 1
@.str.91 = private unnamed_addr constant [23 x i8] c"Cyan-Red color balance\00", align 1
@.str.92 = private unnamed_addr constant [14 x i8] c"magenta-green\00", align 1
@.str.93 = private unnamed_addr constant [14 x i8] c"magenta green\00", align 1
@.str.94 = private unnamed_addr constant [28 x i8] c"Magenta-Green color balance\00", align 1
@.str.95 = private unnamed_addr constant [12 x i8] c"yellow-blue\00", align 1
@.str.96 = private unnamed_addr constant [12 x i8] c"yellow blue\00", align 1
@.str.97 = private unnamed_addr constant [26 x i8] c"Yellow-Blue color balance\00", align 1
@.str.98 = private unnamed_addr constant [14 x i8] c"gimp-colorize\00", align 1
@.str.99 = private unnamed_addr constant [71 x i8] c"Render the drawable as a grayscale image seen through a colored glass.\00", align 1
@.str.100 = private unnamed_addr constant [166 x i8] c"Desaturates the drawable, then tints it with the specified color. This tool is only valid on RGB color images. It will not operate on grayscale or indexed drawables.\00", align 1
@.str.101 = private unnamed_addr constant [29 x i8] c"Sven Neumann <sven@gimp.org>\00", align 1
@.str.102 = private unnamed_addr constant [13 x i8] c"Sven Neumann\00", align 1
@.str.103 = private unnamed_addr constant [5 x i8] c"2004\00", align 1
@.str.104 = private unnamed_addr constant [4 x i8] c"hue\00", align 1
@.str.105 = private unnamed_addr constant [15 x i8] c"Hue in degrees\00", align 1
@.str.106 = private unnamed_addr constant [11 x i8] c"saturation\00", align 1
@.str.107 = private unnamed_addr constant [22 x i8] c"Saturation in percent\00", align 1
@.str.108 = private unnamed_addr constant [10 x i8] c"lightness\00", align 1
@.str.109 = private unnamed_addr constant [21 x i8] c"Lightness in percent\00", align 1
@.str.110 = private unnamed_addr constant [15 x i8] c"gimp-histogram\00", align 1
@.str.111 = private unnamed_addr constant [75 x i8] c"Returns information on the intensity histogram for the specified drawable.\00", align 1
@.str.112 = private unnamed_addr constant [845 x i8] c"This tool makes it possible to gather information about the intensity histogram of a drawable. A channel to examine is first specified. This can be either value, red, green, or blue, depending on whether the drawable is of type color or grayscale. The drawable may not be indexed. Second, a range of intensities are specified. The 'gimp-histogram' function returns statistics based on the pixels in the drawable that fall under this range of values. Mean, standard deviation, median, number of pixels, and percentile are all returned. Additionally, the total count of pixels in the image is returned. Counts of pixels are weighted by any associated alpha values and by the current selection mask. That is, pixels that lie outside an active selection mask will not be counted. Similarly, pixels with transparent alpha values will not be counted.\00", align 1
@.str.113 = private unnamed_addr constant [12 x i8] c"start-range\00", align 1
@.str.114 = private unnamed_addr constant [12 x i8] c"start range\00", align 1
@.str.115 = private unnamed_addr constant [41 x i8] c"Start of the intensity measurement range\00", align 1
@.str.116 = private unnamed_addr constant [10 x i8] c"end-range\00", align 1
@.str.117 = private unnamed_addr constant [10 x i8] c"end range\00", align 1
@.str.118 = private unnamed_addr constant [39 x i8] c"End of the intensity measurement range\00", align 1
@.str.119 = private unnamed_addr constant [5 x i8] c"mean\00", align 1
@.str.120 = private unnamed_addr constant [21 x i8] c"Mean intensity value\00", align 1
@.str.121 = private unnamed_addr constant [8 x i8] c"std-dev\00", align 1
@.str.122 = private unnamed_addr constant [8 x i8] c"std dev\00", align 1
@.str.123 = private unnamed_addr constant [39 x i8] c"Standard deviation of intensity values\00", align 1
@.str.124 = private unnamed_addr constant [7 x i8] c"median\00", align 1
@.str.125 = private unnamed_addr constant [23 x i8] c"Median intensity value\00", align 1
@.str.126 = private unnamed_addr constant [7 x i8] c"pixels\00", align 1
@.str.127 = private unnamed_addr constant [44 x i8] c"Alpha-weighted pixel count for entire image\00", align 1
@.str.128 = private unnamed_addr constant [6 x i8] c"count\00", align 1
@.str.129 = private unnamed_addr constant [37 x i8] c"Alpha-weighted pixel count for range\00", align 1
@.str.130 = private unnamed_addr constant [11 x i8] c"percentile\00", align 1
@.str.131 = private unnamed_addr constant [34 x i8] c"Percentile that range falls under\00", align 1
@.str.132 = private unnamed_addr constant [20 x i8] c"gimp-hue-saturation\00", align 1
@.str.133 = private unnamed_addr constant [65 x i8] c"Modify hue, lightness, and saturation in the specified drawable.\00", align 1
@.str.134 = private unnamed_addr constant [183 x i8] c"This procedures allows the hue, lightness, and saturation in the specified drawable to be modified. The 'hue-range' parameter provides the capability to limit range of affected hues.\00", align 1
@.str.135 = private unnamed_addr constant [10 x i8] c"hue-range\00", align 1
@.str.136 = private unnamed_addr constant [10 x i8] c"hue range\00", align 1
@.str.137 = private unnamed_addr constant [23 x i8] c"Range of affected hues\00", align 1
@.str.138 = private unnamed_addr constant [11 x i8] c"hue-offset\00", align 1
@.str.139 = private unnamed_addr constant [11 x i8] c"hue offset\00", align 1
@.str.140 = private unnamed_addr constant [22 x i8] c"Hue offset in degrees\00", align 1
@.str.141 = private unnamed_addr constant [23 x i8] c"Lightness modification\00", align 1
@.str.142 = private unnamed_addr constant [24 x i8] c"Saturation modification\00", align 1
@.str.143 = private unnamed_addr constant [15 x i8] c"gimp-threshold\00", align 1
@.str.144 = private unnamed_addr constant [34 x i8] c"Threshold the specified drawable.\00", align 1
@.str.145 = private unnamed_addr constant [197 x i8] c"This procedures generates a threshold map of the specified drawable. All pixels between the values of 'low_threshold' and 'high_threshold' are replaced with white, and all other pixels with black.\00", align 1
@.str.146 = private unnamed_addr constant [14 x i8] c"low-threshold\00", align 1
@.str.147 = private unnamed_addr constant [14 x i8] c"low threshold\00", align 1
@.str.148 = private unnamed_addr constant [24 x i8] c"The low threshold value\00", align 1
@.str.149 = private unnamed_addr constant [15 x i8] c"high-threshold\00", align 1
@.str.150 = private unnamed_addr constant [15 x i8] c"high threshold\00", align 1
@.str.151 = private unnamed_addr constant [25 x i8] c"The high threshold value\00", align 1

; Function Attrs: nounwind uwtable
define void @register_color_procs(%struct._GimpPDB* %pdb) #0 {
entry:
  %pdb.addr = alloca %struct._GimpPDB*, align 8
  %procedure = alloca %struct._GimpProcedure*, align 8
  store %struct._GimpPDB* %pdb, %struct._GimpPDB** %pdb.addr, align 8
  %call = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @brightness_contrast_invoker)
  store %struct._GimpProcedure* %call, %struct._GimpProcedure** %procedure, align 8
  %0 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %1 = bitcast %struct._GimpProcedure* %0 to %struct._GTypeInstance*
  %call1 = call i64 @gimp_object_get_type() #3
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call1)
  %2 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %2, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i32 0, i32 0))
  %3 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %3, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([171 x i8], [171 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* null)
  %4 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %5 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %5, i32 0, i32 1
  %6 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call3 = call %struct._GParamSpec* @gimp_param_spec_drawable_id(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), %struct._Gimp* %6, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %4, %struct._GParamSpec* %call3)
  %7 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call4 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i32 0, i32 0), i32 -127, i32 127, i32 -127, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %7, %struct._GParamSpec* %call4)
  %8 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call5 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i32 0, i32 0), i32 -127, i32 127, i32 -127, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %8, %struct._GParamSpec* %call5)
  %9 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %10 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %9, %struct._GimpProcedure* %10)
  %11 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %12 = bitcast %struct._GimpProcedure* %11 to i8*
  call void @g_object_unref(i8* %12)
  %call6 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @levels_invoker)
  store %struct._GimpProcedure* %call6, %struct._GimpProcedure** %procedure, align 8
  %13 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %14 = bitcast %struct._GimpProcedure* %13 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_object_get_type() #3
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call7)
  %15 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %15, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i32 0, i32 0))
  %16 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %16, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([768 x i8], [768 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0), i8* null)
  %17 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %18 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp9 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %18, i32 0, i32 1
  %19 = load %struct._Gimp*, %struct._Gimp** %gimp9, align 8
  %call10 = call %struct._GParamSpec* @gimp_param_spec_drawable_id(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), %struct._Gimp* %19, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %17, %struct._GParamSpec* %call10)
  %20 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call11 = call i64 @gimp_histogram_channel_get_type() #3
  %call12 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i32 0, i32 0), i64 %call11, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %20, %struct._GParamSpec* %call12)
  %21 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call13 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.19, i32 0, i32 0), i32 0, i32 255, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %21, %struct._GParamSpec* %call13)
  %22 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call14 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.22, i32 0, i32 0), i32 0, i32 255, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %22, %struct._GParamSpec* %call14)
  %23 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call15 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.24, i32 0, i32 0), double 1.000000e-01, double 1.000000e+01, double 1.000000e-01, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %23, %struct._GParamSpec* %call15)
  %24 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call16 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.27, i32 0, i32 0), i32 0, i32 255, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %24, %struct._GParamSpec* %call16)
  %25 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call17 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.30, i32 0, i32 0), i32 0, i32 255, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %25, %struct._GParamSpec* %call17)
  %26 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %27 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %26, %struct._GimpProcedure* %27)
  %28 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %29 = bitcast %struct._GimpProcedure* %28 to i8*
  call void @g_object_unref(i8* %29)
  %call18 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @levels_auto_invoker)
  store %struct._GimpProcedure* %call18, %struct._GimpProcedure** %procedure, align 8
  %30 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %31 = bitcast %struct._GimpProcedure* %30 to %struct._GTypeInstance*
  %call19 = call i64 @gimp_object_get_type() #3
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 %call19)
  %32 = bitcast %struct._GTypeInstance* %call20 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %32, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.31, i32 0, i32 0))
  %33 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %33, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.34, i32 0, i32 0))
  %34 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %35 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp21 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %35, i32 0, i32 1
  %36 = load %struct._Gimp*, %struct._Gimp** %gimp21, align 8
  %call22 = call %struct._GParamSpec* @gimp_param_spec_drawable_id(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), %struct._Gimp* %36, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %34, %struct._GParamSpec* %call22)
  %37 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %38 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %37, %struct._GimpProcedure* %38)
  %39 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %40 = bitcast %struct._GimpProcedure* %39 to i8*
  call void @g_object_unref(i8* %40)
  %call23 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @levels_stretch_invoker)
  store %struct._GimpProcedure* %call23, %struct._GimpProcedure** %procedure, align 8
  %41 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %42 = bitcast %struct._GimpProcedure* %41 to %struct._GTypeInstance*
  %call24 = call i64 @gimp_object_get_type() #3
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %42, i64 %call24)
  %43 = bitcast %struct._GTypeInstance* %call25 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %43, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.34, i32 0, i32 0))
  %44 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %44, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([295 x i8], [295 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i32 0, i32 0), i8* null)
  %45 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %46 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp26 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %46, i32 0, i32 1
  %47 = load %struct._Gimp*, %struct._Gimp** %gimp26, align 8
  %call27 = call %struct._GParamSpec* @gimp_param_spec_drawable_id(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), %struct._Gimp* %47, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %45, %struct._GParamSpec* %call27)
  %48 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %49 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %48, %struct._GimpProcedure* %49)
  %50 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %51 = bitcast %struct._GimpProcedure* %50 to i8*
  call void @g_object_unref(i8* %51)
  %call28 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @posterize_invoker)
  store %struct._GimpProcedure* %call28, %struct._GimpProcedure** %procedure, align 8
  %52 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %53 = bitcast %struct._GimpProcedure* %52 to %struct._GTypeInstance*
  %call29 = call i64 @gimp_object_get_type() #3
  %call30 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %53, i64 %call29)
  %54 = bitcast %struct._GTypeInstance* %call30 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %54, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.39, i32 0, i32 0))
  %55 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %55, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([115 x i8], [115 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* null)
  %56 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %57 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp31 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %57, i32 0, i32 1
  %58 = load %struct._Gimp*, %struct._Gimp** %gimp31, align 8
  %call32 = call %struct._GParamSpec* @gimp_param_spec_drawable_id(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), %struct._Gimp* %58, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %56, %struct._GParamSpec* %call32)
  %59 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call33 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.43, i32 0, i32 0), i32 2, i32 255, i32 2, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %59, %struct._GParamSpec* %call33)
  %60 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %61 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %60, %struct._GimpProcedure* %61)
  %62 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %63 = bitcast %struct._GimpProcedure* %62 to i8*
  call void @g_object_unref(i8* %63)
  %call34 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @desaturate_invoker)
  store %struct._GimpProcedure* %call34, %struct._GimpProcedure** %procedure, align 8
  %64 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %65 = bitcast %struct._GimpProcedure* %64 to %struct._GTypeInstance*
  %call35 = call i64 @gimp_object_get_type() #3
  %call36 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %65, i64 %call35)
  %66 = bitcast %struct._GTypeInstance* %call36 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %66, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.44, i32 0, i32 0))
  %67 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %67, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([125 x i8], [125 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0), i8* null)
  %68 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %69 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp37 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %69, i32 0, i32 1
  %70 = load %struct._Gimp*, %struct._Gimp** %gimp37, align 8
  %call38 = call %struct._GParamSpec* @gimp_param_spec_drawable_id(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), %struct._Gimp* %70, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %68, %struct._GParamSpec* %call38)
  %71 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %72 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %71, %struct._GimpProcedure* %72)
  %73 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %74 = bitcast %struct._GimpProcedure* %73 to i8*
  call void @g_object_unref(i8* %74)
  %call39 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @desaturate_full_invoker)
  store %struct._GimpProcedure* %call39, %struct._GimpProcedure** %procedure, align 8
  %75 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %76 = bitcast %struct._GimpProcedure* %75 to %struct._GTypeInstance*
  %call40 = call i64 @gimp_object_get_type() #3
  %call41 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %76, i64 %call40)
  %77 = bitcast %struct._GTypeInstance* %call41 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %77, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.47, i32 0, i32 0))
  %78 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %78, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([153 x i8], [153 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.51, i32 0, i32 0), i8* null)
  %79 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %80 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp42 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %80, i32 0, i32 1
  %81 = load %struct._Gimp*, %struct._Gimp** %gimp42, align 8
  %call43 = call %struct._GParamSpec* @gimp_param_spec_drawable_id(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), %struct._Gimp* %81, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %79, %struct._GParamSpec* %call43)
  %82 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call44 = call i64 @gimp_desaturate_mode_get_type() #3
  %call45 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.54, i32 0, i32 0), i64 %call44, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %82, %struct._GParamSpec* %call45)
  %83 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %84 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %83, %struct._GimpProcedure* %84)
  %85 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %86 = bitcast %struct._GimpProcedure* %85 to i8*
  call void @g_object_unref(i8* %86)
  %call46 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @equalize_invoker)
  store %struct._GimpProcedure* %call46, %struct._GimpProcedure** %procedure, align 8
  %87 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %88 = bitcast %struct._GimpProcedure* %87 to %struct._GTypeInstance*
  %call47 = call i64 @gimp_object_get_type() #3
  %call48 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %88, i64 %call47)
  %89 = bitcast %struct._GTypeInstance* %call48 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %89, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.55, i32 0, i32 0))
  %90 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %90, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([506 x i8], [506 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0), i8* null)
  %91 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %92 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp49 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %92, i32 0, i32 1
  %93 = load %struct._Gimp*, %struct._Gimp** %gimp49, align 8
  %call50 = call %struct._GParamSpec* @gimp_param_spec_drawable_id(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), %struct._Gimp* %93, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %91, %struct._GParamSpec* %call50)
  %94 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call51 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.60, i32 0, i32 0), i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %94, %struct._GParamSpec* %call51)
  %95 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %96 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %95, %struct._GimpProcedure* %96)
  %97 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %98 = bitcast %struct._GimpProcedure* %97 to i8*
  call void @g_object_unref(i8* %98)
  %call52 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @invert_invoker)
  store %struct._GimpProcedure* %call52, %struct._GimpProcedure** %procedure, align 8
  %99 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %100 = bitcast %struct._GimpProcedure* %99 to %struct._GTypeInstance*
  %call53 = call i64 @gimp_object_get_type() #3
  %call54 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %100, i64 %call53)
  %101 = bitcast %struct._GTypeInstance* %call54 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %101, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.61, i32 0, i32 0))
  %102 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %102, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([230 x i8], [230 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0), i8* null)
  %103 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %104 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp55 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %104, i32 0, i32 1
  %105 = load %struct._Gimp*, %struct._Gimp** %gimp55, align 8
  %call56 = call %struct._GParamSpec* @gimp_param_spec_drawable_id(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), %struct._Gimp* %105, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %103, %struct._GParamSpec* %call56)
  %106 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %107 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %106, %struct._GimpProcedure* %107)
  %108 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %109 = bitcast %struct._GimpProcedure* %108 to i8*
  call void @g_object_unref(i8* %109)
  %call57 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @curves_spline_invoker)
  store %struct._GimpProcedure* %call57, %struct._GimpProcedure** %procedure, align 8
  %110 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %111 = bitcast %struct._GimpProcedure* %110 to %struct._GTypeInstance*
  %call58 = call i64 @gimp_object_get_type() #3
  %call59 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %111, i64 %call58)
  %112 = bitcast %struct._GTypeInstance* %call59 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %112, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.64, i32 0, i32 0))
  %113 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %113, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([432 x i8], [432 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0), i8* null)
  %114 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %115 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp60 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %115, i32 0, i32 1
  %116 = load %struct._Gimp*, %struct._Gimp** %gimp60, align 8
  %call61 = call %struct._GParamSpec* @gimp_param_spec_drawable_id(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), %struct._Gimp* %116, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %114, %struct._GParamSpec* %call61)
  %117 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call62 = call i64 @gimp_histogram_channel_get_type() #3
  %call63 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i32 0, i32 0), i64 %call62, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %117, %struct._GParamSpec* %call63)
  %118 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call64 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.69, i32 0, i32 0), i32 4, i32 34, i32 4, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %118, %struct._GParamSpec* %call64)
  %119 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call65 = call %struct._GParamSpec* @gimp_param_spec_int8_array(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.72, i32 0, i32 0), i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %119, %struct._GParamSpec* %call65)
  %120 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %121 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %120, %struct._GimpProcedure* %121)
  %122 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %123 = bitcast %struct._GimpProcedure* %122 to i8*
  call void @g_object_unref(i8* %123)
  %call66 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @curves_explicit_invoker)
  store %struct._GimpProcedure* %call66, %struct._GimpProcedure** %procedure, align 8
  %124 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %125 = bitcast %struct._GimpProcedure* %124 to %struct._GTypeInstance*
  %call67 = call i64 @gimp_object_get_type() #3
  %call68 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %125, i64 %call67)
  %126 = bitcast %struct._GTypeInstance* %call68 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %126, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.73, i32 0, i32 0))
  %127 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %127, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.73, i32 0, i32 0), i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([402 x i8], [402 x i8]* @.str.74, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0), i8* null)
  %128 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %129 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp69 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %129, i32 0, i32 1
  %130 = load %struct._Gimp*, %struct._Gimp** %gimp69, align 8
  %call70 = call %struct._GParamSpec* @gimp_param_spec_drawable_id(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), %struct._Gimp* %130, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %128, %struct._GParamSpec* %call70)
  %131 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call71 = call i64 @gimp_histogram_channel_get_type() #3
  %call72 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i32 0, i32 0), i64 %call71, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %131, %struct._GParamSpec* %call72)
  %132 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call73 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.75, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.76, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.77, i32 0, i32 0), i32 0, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %132, %struct._GParamSpec* %call73)
  %133 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call74 = call %struct._GParamSpec* @gimp_param_spec_int8_array(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.79, i32 0, i32 0), i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %133, %struct._GParamSpec* %call74)
  %134 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %135 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %134, %struct._GimpProcedure* %135)
  %136 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %137 = bitcast %struct._GimpProcedure* %136 to i8*
  call void @g_object_unref(i8* %137)
  %call75 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @color_balance_invoker)
  store %struct._GimpProcedure* %call75, %struct._GimpProcedure** %procedure, align 8
  %138 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %139 = bitcast %struct._GimpProcedure* %138 to %struct._GTypeInstance*
  %call76 = call i64 @gimp_object_get_type() #3
  %call77 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %139, i64 %call76)
  %140 = bitcast %struct._GTypeInstance* %call77 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %140, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.80, i32 0, i32 0))
  %141 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %141, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.80, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.81, i32 0, i32 0), i8* getelementptr inbounds ([490 x i8], [490 x i8]* @.str.82, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* null)
  %142 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %143 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp78 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %143, i32 0, i32 1
  %144 = load %struct._Gimp*, %struct._Gimp** %gimp78, align 8
  %call79 = call %struct._GParamSpec* @gimp_param_spec_drawable_id(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), %struct._Gimp* %144, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %142, %struct._GParamSpec* %call79)
  %145 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call80 = call i64 @gimp_transfer_mode_get_type() #3
  %call81 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.83, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.84, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.85, i32 0, i32 0), i64 %call80, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %145, %struct._GParamSpec* %call81)
  %146 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call82 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.86, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.87, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.88, i32 0, i32 0), i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %146, %struct._GParamSpec* %call82)
  %147 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call83 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.89, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.90, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.91, i32 0, i32 0), double -1.000000e+02, double 1.000000e+02, double -1.000000e+02, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %147, %struct._GParamSpec* %call83)
  %148 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call84 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.92, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.93, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.94, i32 0, i32 0), double -1.000000e+02, double 1.000000e+02, double -1.000000e+02, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %148, %struct._GParamSpec* %call84)
  %149 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call85 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.95, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.96, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.97, i32 0, i32 0), double -1.000000e+02, double 1.000000e+02, double -1.000000e+02, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %149, %struct._GParamSpec* %call85)
  %150 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %151 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %150, %struct._GimpProcedure* %151)
  %152 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %153 = bitcast %struct._GimpProcedure* %152 to i8*
  call void @g_object_unref(i8* %153)
  %call86 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @colorize_invoker)
  store %struct._GimpProcedure* %call86, %struct._GimpProcedure** %procedure, align 8
  %154 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %155 = bitcast %struct._GimpProcedure* %154 to %struct._GTypeInstance*
  %call87 = call i64 @gimp_object_get_type() #3
  %call88 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %155, i64 %call87)
  %156 = bitcast %struct._GTypeInstance* %call88 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %156, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.98, i32 0, i32 0))
  %157 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %157, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.98, i32 0, i32 0), i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.99, i32 0, i32 0), i8* getelementptr inbounds ([166 x i8], [166 x i8]* @.str.100, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.101, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.102, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.103, i32 0, i32 0), i8* null)
  %158 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %159 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp89 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %159, i32 0, i32 1
  %160 = load %struct._Gimp*, %struct._Gimp** %gimp89, align 8
  %call90 = call %struct._GParamSpec* @gimp_param_spec_drawable_id(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), %struct._Gimp* %160, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %158, %struct._GParamSpec* %call90)
  %161 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call91 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.104, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.104, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.105, i32 0, i32 0), double 0.000000e+00, double 3.600000e+02, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %161, %struct._GParamSpec* %call91)
  %162 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call92 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.106, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.106, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.107, i32 0, i32 0), double 0.000000e+00, double 1.000000e+02, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %162, %struct._GParamSpec* %call92)
  %163 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call93 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.108, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.108, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.109, i32 0, i32 0), double -1.000000e+02, double 1.000000e+02, double -1.000000e+02, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %163, %struct._GParamSpec* %call93)
  %164 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %165 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %164, %struct._GimpProcedure* %165)
  %166 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %167 = bitcast %struct._GimpProcedure* %166 to i8*
  call void @g_object_unref(i8* %167)
  %call94 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @histogram_invoker)
  store %struct._GimpProcedure* %call94, %struct._GimpProcedure** %procedure, align 8
  %168 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %169 = bitcast %struct._GimpProcedure* %168 to %struct._GTypeInstance*
  %call95 = call i64 @gimp_object_get_type() #3
  %call96 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %169, i64 %call95)
  %170 = bitcast %struct._GTypeInstance* %call96 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %170, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.110, i32 0, i32 0))
  %171 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %171, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.110, i32 0, i32 0), i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.111, i32 0, i32 0), i8* getelementptr inbounds ([845 x i8], [845 x i8]* @.str.112, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0), i8* null)
  %172 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %173 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp97 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %173, i32 0, i32 1
  %174 = load %struct._Gimp*, %struct._Gimp** %gimp97, align 8
  %call98 = call %struct._GParamSpec* @gimp_param_spec_drawable_id(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), %struct._Gimp* %174, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %172, %struct._GParamSpec* %call98)
  %175 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call99 = call i64 @gimp_histogram_channel_get_type() #3
  %call100 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i32 0, i32 0), i64 %call99, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %175, %struct._GParamSpec* %call100)
  %176 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call101 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.113, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.114, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.115, i32 0, i32 0), i32 0, i32 255, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %176, %struct._GParamSpec* %call101)
  %177 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call102 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.116, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.117, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.118, i32 0, i32 0), i32 0, i32 255, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %177, %struct._GParamSpec* %call102)
  %178 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call103 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.119, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.119, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.120, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %178, %struct._GParamSpec* %call103)
  %179 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call104 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.121, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.122, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.123, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %179, %struct._GParamSpec* %call104)
  %180 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call105 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.124, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.124, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.125, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %180, %struct._GParamSpec* %call105)
  %181 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call106 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.126, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.126, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.127, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %181, %struct._GParamSpec* %call106)
  %182 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call107 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.128, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.128, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.129, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %182, %struct._GParamSpec* %call107)
  %183 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call108 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.130, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.130, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.131, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %183, %struct._GParamSpec* %call108)
  %184 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %185 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %184, %struct._GimpProcedure* %185)
  %186 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %187 = bitcast %struct._GimpProcedure* %186 to i8*
  call void @g_object_unref(i8* %187)
  %call109 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @hue_saturation_invoker)
  store %struct._GimpProcedure* %call109, %struct._GimpProcedure** %procedure, align 8
  %188 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %189 = bitcast %struct._GimpProcedure* %188 to %struct._GTypeInstance*
  %call110 = call i64 @gimp_object_get_type() #3
  %call111 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %189, i64 %call110)
  %190 = bitcast %struct._GTypeInstance* %call111 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %190, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.132, i32 0, i32 0))
  %191 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %191, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.132, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.133, i32 0, i32 0), i8* getelementptr inbounds ([183 x i8], [183 x i8]* @.str.134, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* null)
  %192 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %193 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp112 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %193, i32 0, i32 1
  %194 = load %struct._Gimp*, %struct._Gimp** %gimp112, align 8
  %call113 = call %struct._GParamSpec* @gimp_param_spec_drawable_id(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), %struct._Gimp* %194, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %192, %struct._GParamSpec* %call113)
  %195 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call114 = call i64 @gimp_hue_range_get_type() #3
  %call115 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.135, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.136, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.137, i32 0, i32 0), i64 %call114, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %195, %struct._GParamSpec* %call115)
  %196 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call116 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.138, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.139, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.140, i32 0, i32 0), double -1.800000e+02, double 1.800000e+02, double -1.800000e+02, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %196, %struct._GParamSpec* %call116)
  %197 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call117 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.108, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.108, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.141, i32 0, i32 0), double -1.000000e+02, double 1.000000e+02, double -1.000000e+02, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %197, %struct._GParamSpec* %call117)
  %198 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call118 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.106, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.106, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.142, i32 0, i32 0), double -1.000000e+02, double 1.000000e+02, double -1.000000e+02, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %198, %struct._GParamSpec* %call118)
  %199 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %200 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %199, %struct._GimpProcedure* %200)
  %201 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %202 = bitcast %struct._GimpProcedure* %201 to i8*
  call void @g_object_unref(i8* %202)
  %call119 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @threshold_invoker)
  store %struct._GimpProcedure* %call119, %struct._GimpProcedure** %procedure, align 8
  %203 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %204 = bitcast %struct._GimpProcedure* %203 to %struct._GTypeInstance*
  %call120 = call i64 @gimp_object_get_type() #3
  %call121 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %204, i64 %call120)
  %205 = bitcast %struct._GTypeInstance* %call121 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %205, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.143, i32 0, i32 0))
  %206 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %206, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.143, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.144, i32 0, i32 0), i8* getelementptr inbounds ([197 x i8], [197 x i8]* @.str.145, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* null)
  %207 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %208 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp122 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %208, i32 0, i32 1
  %209 = load %struct._Gimp*, %struct._Gimp** %gimp122, align 8
  %call123 = call %struct._GParamSpec* @gimp_param_spec_drawable_id(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), %struct._Gimp* %209, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %207, %struct._GParamSpec* %call123)
  %210 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call124 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.146, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.147, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.148, i32 0, i32 0), i32 0, i32 255, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %210, %struct._GParamSpec* %call124)
  %211 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call125 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.149, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.150, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.151, i32 0, i32 0), i32 0, i32 255, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %211, %struct._GParamSpec* %call125)
  %212 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %213 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %212, %struct._GimpProcedure* %213)
  %214 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %215 = bitcast %struct._GimpProcedure* %214 to i8*
  call void @g_object_unref(i8* %215)
  ret void
}

declare %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)*) #1

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @brightness_contrast_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %drawable = alloca %struct._GimpDrawable*, align 8
  %brightness = alloca i32, align 4
  %contrast = alloca i32, align 4
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
  store i32 %call3, i32* %brightness, align 4
  %5 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values4 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %5, i32 0, i32 1
  %6 = load %struct._GValue*, %struct._GValue** %values4, align 8
  %arrayidx5 = getelementptr inbounds %struct._GValue, %struct._GValue* %6, i64 2
  %call6 = call i32 @g_value_get_int(%struct._GValue* %arrayidx5)
  store i32 %call6, i32* %contrast, align 4
  %7 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then, label %if.end.22

if.then:                                          ; preds = %entry
  %8 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %9 = bitcast %struct._GimpDrawable* %8 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_item_get_type() #3
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call7)
  %10 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpItem*
  %11 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call9 = call i32 @gimp_pdb_item_is_attached(%struct._GimpItem* %10, %struct._GimpImage* null, i32 1, %struct._GError** %11)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %lor.lhs.false, label %if.then.18

lor.lhs.false:                                    ; preds = %if.then
  %12 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %13 = bitcast %struct._GimpDrawable* %12 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_item_get_type() #3
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call11)
  %14 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpItem*
  %15 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call13 = call i32 @gimp_pdb_item_is_not_group(%struct._GimpItem* %14, %struct._GError** %15)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %lor.lhs.false.15, label %if.then.18

lor.lhs.false.15:                                 ; preds = %lor.lhs.false
  %16 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call16 = call i32 @gimp_drawable_is_indexed(%struct._GimpDrawable* %16)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.then.18, label %if.end

if.then.18:                                       ; preds = %lor.lhs.false.15, %lor.lhs.false, %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.18, %lor.lhs.false.15
  %17 = load i32, i32* %success, align 4
  %tobool19 = icmp ne i32 %17, 0
  br i1 %tobool19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.end
  %18 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %19 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %20 = load i32, i32* %brightness, align 4
  %21 = load i32, i32* %contrast, align 4
  call void @gimp_drawable_brightness_contrast(%struct._GimpDrawable* %18, %struct._GimpProgress* %19, i32 %20, i32 %21)
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.20, %if.end
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %entry
  %22 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %23 = load i32, i32* %success, align 4
  %24 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool23 = icmp ne %struct._GError** %24, null
  br i1 %tobool23, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.22
  %25 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %26 = load %struct._GError*, %struct._GError** %25, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.22
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %26, %cond.true ], [ null, %cond.false ]
  %call24 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %22, i32 %23, %struct._GError* %cond)
  ret %struct._GValueArray* %call24
}

declare void @gimp_object_set_static_name(%struct._GimpObject*, i8*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #2

declare void @gimp_procedure_set_static_strings(%struct._GimpProcedure*, i8*, i8*, i8*, i8*, i8*, i8*, i8*) #1

declare void @gimp_procedure_add_argument(%struct._GimpProcedure*, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @gimp_param_spec_drawable_id(i8*, i8*, i8*, %struct._Gimp*, i32, i32) #1

declare %struct._GParamSpec* @gimp_param_spec_int32(i8*, i8*, i8*, i32, i32, i32, i32) #1

declare void @gimp_pdb_register_procedure(%struct._GimpPDB*, %struct._GimpProcedure*) #1

declare void @g_object_unref(i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @levels_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %drawable = alloca %struct._GimpDrawable*, align 8
  %channel = alloca i32, align 4
  %low_input = alloca i32, align 4
  %high_input = alloca i32, align 4
  %gamma = alloca double, align 8
  %low_output = alloca i32, align 4
  %high_output = alloca i32, align 4
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
  store i32 %call3, i32* %channel, align 4
  %5 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values4 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %5, i32 0, i32 1
  %6 = load %struct._GValue*, %struct._GValue** %values4, align 8
  %arrayidx5 = getelementptr inbounds %struct._GValue, %struct._GValue* %6, i64 2
  %call6 = call i32 @g_value_get_int(%struct._GValue* %arrayidx5)
  store i32 %call6, i32* %low_input, align 4
  %7 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values7 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %7, i32 0, i32 1
  %8 = load %struct._GValue*, %struct._GValue** %values7, align 8
  %arrayidx8 = getelementptr inbounds %struct._GValue, %struct._GValue* %8, i64 3
  %call9 = call i32 @g_value_get_int(%struct._GValue* %arrayidx8)
  store i32 %call9, i32* %high_input, align 4
  %9 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values10 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %9, i32 0, i32 1
  %10 = load %struct._GValue*, %struct._GValue** %values10, align 8
  %arrayidx11 = getelementptr inbounds %struct._GValue, %struct._GValue* %10, i64 4
  %call12 = call double @g_value_get_double(%struct._GValue* %arrayidx11)
  store double %call12, double* %gamma, align 8
  %11 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values13 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %11, i32 0, i32 1
  %12 = load %struct._GValue*, %struct._GValue** %values13, align 8
  %arrayidx14 = getelementptr inbounds %struct._GValue, %struct._GValue* %12, i64 5
  %call15 = call i32 @g_value_get_int(%struct._GValue* %arrayidx14)
  store i32 %call15, i32* %low_output, align 4
  %13 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values16 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %13, i32 0, i32 1
  %14 = load %struct._GValue*, %struct._GValue** %values16, align 8
  %arrayidx17 = getelementptr inbounds %struct._GValue, %struct._GValue* %14, i64 6
  %call18 = call i32 @g_value_get_int(%struct._GValue* %arrayidx17)
  store i32 %call18, i32* %high_output, align 4
  %15 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %15, 0
  br i1 %tobool, label %if.then, label %if.end.44

if.then:                                          ; preds = %entry
  %16 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %17 = bitcast %struct._GimpDrawable* %16 to %struct._GTypeInstance*
  %call19 = call i64 @gimp_item_get_type() #3
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call19)
  %18 = bitcast %struct._GTypeInstance* %call20 to %struct._GimpItem*
  %19 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call21 = call i32 @gimp_pdb_item_is_attached(%struct._GimpItem* %18, %struct._GimpImage* null, i32 1, %struct._GError** %19)
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %lor.lhs.false, label %if.then.40

lor.lhs.false:                                    ; preds = %if.then
  %20 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %21 = bitcast %struct._GimpDrawable* %20 to %struct._GTypeInstance*
  %call23 = call i64 @gimp_item_get_type() #3
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call23)
  %22 = bitcast %struct._GTypeInstance* %call24 to %struct._GimpItem*
  %23 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call25 = call i32 @gimp_pdb_item_is_not_group(%struct._GimpItem* %22, %struct._GError** %23)
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %lor.lhs.false.27, label %if.then.40

lor.lhs.false.27:                                 ; preds = %lor.lhs.false
  %24 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call28 = call i32 @gimp_drawable_is_indexed(%struct._GimpDrawable* %24)
  %tobool29 = icmp ne i32 %call28, 0
  br i1 %tobool29, label %if.then.40, label %lor.lhs.false.30

lor.lhs.false.30:                                 ; preds = %lor.lhs.false.27
  %25 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call31 = call i32 @gimp_drawable_has_alpha(%struct._GimpDrawable* %25)
  %tobool32 = icmp ne i32 %call31, 0
  br i1 %tobool32, label %lor.lhs.false.33, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false.30
  %26 = load i32, i32* %channel, align 4
  %cmp = icmp eq i32 %26, 4
  br i1 %cmp, label %if.then.40, label %lor.lhs.false.33

lor.lhs.false.33:                                 ; preds = %land.lhs.true, %lor.lhs.false.30
  %27 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call34 = call i32 @gimp_drawable_is_gray(%struct._GimpDrawable* %27)
  %tobool35 = icmp ne i32 %call34, 0
  br i1 %tobool35, label %land.lhs.true.36, label %if.end

land.lhs.true.36:                                 ; preds = %lor.lhs.false.33
  %28 = load i32, i32* %channel, align 4
  %cmp37 = icmp ne i32 %28, 0
  br i1 %cmp37, label %land.lhs.true.38, label %if.end

land.lhs.true.38:                                 ; preds = %land.lhs.true.36
  %29 = load i32, i32* %channel, align 4
  %cmp39 = icmp ne i32 %29, 4
  br i1 %cmp39, label %if.then.40, label %if.end

if.then.40:                                       ; preds = %land.lhs.true.38, %land.lhs.true, %lor.lhs.false.27, %lor.lhs.false, %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.40, %land.lhs.true.38, %land.lhs.true.36, %lor.lhs.false.33
  %30 = load i32, i32* %success, align 4
  %tobool41 = icmp ne i32 %30, 0
  br i1 %tobool41, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %if.end
  %31 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %32 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %33 = load i32, i32* %channel, align 4
  %34 = load i32, i32* %low_input, align 4
  %35 = load i32, i32* %high_input, align 4
  %36 = load double, double* %gamma, align 8
  %37 = load i32, i32* %low_output, align 4
  %38 = load i32, i32* %high_output, align 4
  call void @gimp_drawable_levels(%struct._GimpDrawable* %31, %struct._GimpProgress* %32, i32 %33, i32 %34, i32 %35, double %36, i32 %37, i32 %38)
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.42, %if.end
  br label %if.end.44

if.end.44:                                        ; preds = %if.end.43, %entry
  %39 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %40 = load i32, i32* %success, align 4
  %41 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool45 = icmp ne %struct._GError** %41, null
  br i1 %tobool45, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.44
  %42 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %43 = load %struct._GError*, %struct._GError** %42, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.44
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %43, %cond.true ], [ null, %cond.false ]
  %call46 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %39, i32 %40, %struct._GError* %cond)
  ret %struct._GValueArray* %call46
}

declare %struct._GParamSpec* @g_param_spec_enum(i8*, i8*, i8*, i64, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_histogram_channel_get_type() #2

declare %struct._GParamSpec* @g_param_spec_double(i8*, i8*, i8*, double, double, double, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @levels_auto_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  br i1 %tobool, label %if.then, label %if.end.16

if.then:                                          ; preds = %entry
  %4 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %5 = bitcast %struct._GimpDrawable* %4 to %struct._GTypeInstance*
  %call1 = call i64 @gimp_item_get_type() #3
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call1)
  %6 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpItem*
  %7 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call3 = call i32 @gimp_pdb_item_is_attached(%struct._GimpItem* %6, %struct._GimpImage* null, i32 1, %struct._GError** %7)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %lor.lhs.false, label %if.then.12

lor.lhs.false:                                    ; preds = %if.then
  %8 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %9 = bitcast %struct._GimpDrawable* %8 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_item_get_type() #3
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call5)
  %10 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpItem*
  %11 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call7 = call i32 @gimp_pdb_item_is_not_group(%struct._GimpItem* %10, %struct._GError** %11)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %lor.lhs.false.9, label %if.then.12

lor.lhs.false.9:                                  ; preds = %lor.lhs.false
  %12 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call10 = call i32 @gimp_drawable_is_indexed(%struct._GimpDrawable* %12)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.then.12, label %if.end

if.then.12:                                       ; preds = %lor.lhs.false.9, %lor.lhs.false, %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.12, %lor.lhs.false.9
  %13 = load i32, i32* %success, align 4
  %tobool13 = icmp ne i32 %13, 0
  br i1 %tobool13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end
  %14 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %15 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  call void @gimp_drawable_levels_stretch(%struct._GimpDrawable* %14, %struct._GimpProgress* %15)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.14, %if.end
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15, %entry
  %16 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %17 = load i32, i32* %success, align 4
  %18 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool17 = icmp ne %struct._GError** %18, null
  br i1 %tobool17, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.16
  %19 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %20 = load %struct._GError*, %struct._GError** %19, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.16
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %20, %cond.true ], [ null, %cond.false ]
  %call18 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %16, i32 %17, %struct._GError* %cond)
  ret %struct._GValueArray* %call18
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @levels_stretch_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  br i1 %tobool, label %if.then, label %if.end.16

if.then:                                          ; preds = %entry
  %4 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %5 = bitcast %struct._GimpDrawable* %4 to %struct._GTypeInstance*
  %call1 = call i64 @gimp_item_get_type() #3
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call1)
  %6 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpItem*
  %7 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call3 = call i32 @gimp_pdb_item_is_attached(%struct._GimpItem* %6, %struct._GimpImage* null, i32 1, %struct._GError** %7)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %lor.lhs.false, label %if.then.12

lor.lhs.false:                                    ; preds = %if.then
  %8 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %9 = bitcast %struct._GimpDrawable* %8 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_item_get_type() #3
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call5)
  %10 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpItem*
  %11 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call7 = call i32 @gimp_pdb_item_is_not_group(%struct._GimpItem* %10, %struct._GError** %11)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %lor.lhs.false.9, label %if.then.12

lor.lhs.false.9:                                  ; preds = %lor.lhs.false
  %12 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call10 = call i32 @gimp_drawable_is_indexed(%struct._GimpDrawable* %12)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.then.12, label %if.end

if.then.12:                                       ; preds = %lor.lhs.false.9, %lor.lhs.false, %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.12, %lor.lhs.false.9
  %13 = load i32, i32* %success, align 4
  %tobool13 = icmp ne i32 %13, 0
  br i1 %tobool13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end
  %14 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %15 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  call void @gimp_drawable_levels_stretch(%struct._GimpDrawable* %14, %struct._GimpProgress* %15)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.14, %if.end
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15, %entry
  %16 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %17 = load i32, i32* %success, align 4
  %18 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool17 = icmp ne %struct._GError** %18, null
  br i1 %tobool17, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.16
  %19 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %20 = load %struct._GError*, %struct._GError** %19, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.16
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %20, %cond.true ], [ null, %cond.false ]
  %call18 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %16, i32 %17, %struct._GError* %cond)
  ret %struct._GValueArray* %call18
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @posterize_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %drawable = alloca %struct._GimpDrawable*, align 8
  %levels = alloca i32, align 4
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
  store i32 %call3, i32* %levels, align 4
  %5 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end.19

if.then:                                          ; preds = %entry
  %6 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %7 = bitcast %struct._GimpDrawable* %6 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_item_get_type() #3
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call4)
  %8 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpItem*
  %9 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call6 = call i32 @gimp_pdb_item_is_attached(%struct._GimpItem* %8, %struct._GimpImage* null, i32 1, %struct._GError** %9)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %lor.lhs.false, label %if.then.15

lor.lhs.false:                                    ; preds = %if.then
  %10 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %11 = bitcast %struct._GimpDrawable* %10 to %struct._GTypeInstance*
  %call8 = call i64 @gimp_item_get_type() #3
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call8)
  %12 = bitcast %struct._GTypeInstance* %call9 to %struct._GimpItem*
  %13 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call10 = call i32 @gimp_pdb_item_is_not_group(%struct._GimpItem* %12, %struct._GError** %13)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %lor.lhs.false.12, label %if.then.15

lor.lhs.false.12:                                 ; preds = %lor.lhs.false
  %14 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call13 = call i32 @gimp_drawable_is_indexed(%struct._GimpDrawable* %14)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then.15, label %if.end

if.then.15:                                       ; preds = %lor.lhs.false.12, %lor.lhs.false, %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.15, %lor.lhs.false.12
  %15 = load i32, i32* %success, align 4
  %tobool16 = icmp ne i32 %15, 0
  br i1 %tobool16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end
  %16 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %17 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %18 = load i32, i32* %levels, align 4
  call void @gimp_drawable_posterize(%struct._GimpDrawable* %16, %struct._GimpProgress* %17, i32 %18)
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.17, %if.end
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %entry
  %19 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %20 = load i32, i32* %success, align 4
  %21 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool20 = icmp ne %struct._GError** %21, null
  br i1 %tobool20, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.19
  %22 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %23 = load %struct._GError*, %struct._GError** %22, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.19
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %23, %cond.true ], [ null, %cond.false ]
  %call21 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %19, i32 %20, %struct._GError* %cond)
  ret %struct._GValueArray* %call21
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @desaturate_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  br i1 %tobool, label %if.then, label %if.end.16

if.then:                                          ; preds = %entry
  %4 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %5 = bitcast %struct._GimpDrawable* %4 to %struct._GTypeInstance*
  %call1 = call i64 @gimp_item_get_type() #3
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call1)
  %6 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpItem*
  %7 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call3 = call i32 @gimp_pdb_item_is_attached(%struct._GimpItem* %6, %struct._GimpImage* null, i32 1, %struct._GError** %7)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %lor.lhs.false, label %if.then.12

lor.lhs.false:                                    ; preds = %if.then
  %8 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %9 = bitcast %struct._GimpDrawable* %8 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_item_get_type() #3
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call5)
  %10 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpItem*
  %11 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call7 = call i32 @gimp_pdb_item_is_not_group(%struct._GimpItem* %10, %struct._GError** %11)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %lor.lhs.false.9, label %if.then.12

lor.lhs.false.9:                                  ; preds = %lor.lhs.false
  %12 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call10 = call i32 @gimp_drawable_is_rgb(%struct._GimpDrawable* %12)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.end, label %if.then.12

if.then.12:                                       ; preds = %lor.lhs.false.9, %lor.lhs.false, %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.12, %lor.lhs.false.9
  %13 = load i32, i32* %success, align 4
  %tobool13 = icmp ne i32 %13, 0
  br i1 %tobool13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end
  %14 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %15 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  call void @gimp_drawable_desaturate(%struct._GimpDrawable* %14, %struct._GimpProgress* %15, i32 0)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.14, %if.end
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15, %entry
  %16 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %17 = load i32, i32* %success, align 4
  %18 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool17 = icmp ne %struct._GError** %18, null
  br i1 %tobool17, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.16
  %19 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %20 = load %struct._GError*, %struct._GError** %19, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.16
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %20, %cond.true ], [ null, %cond.false ]
  %call18 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %16, i32 %17, %struct._GError* %cond)
  ret %struct._GValueArray* %call18
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @desaturate_full_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %drawable = alloca %struct._GimpDrawable*, align 8
  %desaturate_mode = alloca i32, align 4
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
  store i32 %call3, i32* %desaturate_mode, align 4
  %5 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end.19

if.then:                                          ; preds = %entry
  %6 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %7 = bitcast %struct._GimpDrawable* %6 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_item_get_type() #3
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call4)
  %8 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpItem*
  %9 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call6 = call i32 @gimp_pdb_item_is_attached(%struct._GimpItem* %8, %struct._GimpImage* null, i32 1, %struct._GError** %9)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %lor.lhs.false, label %if.then.15

lor.lhs.false:                                    ; preds = %if.then
  %10 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %11 = bitcast %struct._GimpDrawable* %10 to %struct._GTypeInstance*
  %call8 = call i64 @gimp_item_get_type() #3
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call8)
  %12 = bitcast %struct._GTypeInstance* %call9 to %struct._GimpItem*
  %13 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call10 = call i32 @gimp_pdb_item_is_not_group(%struct._GimpItem* %12, %struct._GError** %13)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %lor.lhs.false.12, label %if.then.15

lor.lhs.false.12:                                 ; preds = %lor.lhs.false
  %14 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call13 = call i32 @gimp_drawable_is_rgb(%struct._GimpDrawable* %14)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.end, label %if.then.15

if.then.15:                                       ; preds = %lor.lhs.false.12, %lor.lhs.false, %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.15, %lor.lhs.false.12
  %15 = load i32, i32* %success, align 4
  %tobool16 = icmp ne i32 %15, 0
  br i1 %tobool16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end
  %16 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %17 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %18 = load i32, i32* %desaturate_mode, align 4
  call void @gimp_drawable_desaturate(%struct._GimpDrawable* %16, %struct._GimpProgress* %17, i32 %18)
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.17, %if.end
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %entry
  %19 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %20 = load i32, i32* %success, align 4
  %21 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool20 = icmp ne %struct._GError** %21, null
  br i1 %tobool20, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.19
  %22 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %23 = load %struct._GError*, %struct._GError** %22, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.19
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %23, %cond.true ], [ null, %cond.false ]
  %call21 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %19, i32 %20, %struct._GError* %cond)
  ret %struct._GValueArray* %call21
}

; Function Attrs: nounwind readnone
declare i64 @gimp_desaturate_mode_get_type() #2

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @equalize_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %drawable = alloca %struct._GimpDrawable*, align 8
  %mask_only = alloca i32, align 4
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
  store i32 %call3, i32* %mask_only, align 4
  %5 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end.19

if.then:                                          ; preds = %entry
  %6 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %7 = bitcast %struct._GimpDrawable* %6 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_item_get_type() #3
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call4)
  %8 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpItem*
  %9 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call6 = call i32 @gimp_pdb_item_is_attached(%struct._GimpItem* %8, %struct._GimpImage* null, i32 1, %struct._GError** %9)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %lor.lhs.false, label %if.then.15

lor.lhs.false:                                    ; preds = %if.then
  %10 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %11 = bitcast %struct._GimpDrawable* %10 to %struct._GTypeInstance*
  %call8 = call i64 @gimp_item_get_type() #3
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call8)
  %12 = bitcast %struct._GTypeInstance* %call9 to %struct._GimpItem*
  %13 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call10 = call i32 @gimp_pdb_item_is_not_group(%struct._GimpItem* %12, %struct._GError** %13)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %lor.lhs.false.12, label %if.then.15

lor.lhs.false.12:                                 ; preds = %lor.lhs.false
  %14 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call13 = call i32 @gimp_drawable_is_indexed(%struct._GimpDrawable* %14)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then.15, label %if.end

if.then.15:                                       ; preds = %lor.lhs.false.12, %lor.lhs.false, %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.15, %lor.lhs.false.12
  %15 = load i32, i32* %success, align 4
  %tobool16 = icmp ne i32 %15, 0
  br i1 %tobool16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end
  %16 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %17 = load i32, i32* %mask_only, align 4
  call void @gimp_drawable_equalize(%struct._GimpDrawable* %16, i32 %17)
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.17, %if.end
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %entry
  %18 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %19 = load i32, i32* %success, align 4
  %20 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool20 = icmp ne %struct._GError** %20, null
  br i1 %tobool20, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.19
  %21 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %22 = load %struct._GError*, %struct._GError** %21, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.19
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %22, %cond.true ], [ null, %cond.false ]
  %call21 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %18, i32 %19, %struct._GError* %cond)
  ret %struct._GValueArray* %call21
}

declare %struct._GParamSpec* @g_param_spec_boolean(i8*, i8*, i8*, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @invert_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  br i1 %tobool, label %if.then, label %if.end.16

if.then:                                          ; preds = %entry
  %4 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %5 = bitcast %struct._GimpDrawable* %4 to %struct._GTypeInstance*
  %call1 = call i64 @gimp_item_get_type() #3
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call1)
  %6 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpItem*
  %7 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call3 = call i32 @gimp_pdb_item_is_attached(%struct._GimpItem* %6, %struct._GimpImage* null, i32 1, %struct._GError** %7)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %lor.lhs.false, label %if.then.12

lor.lhs.false:                                    ; preds = %if.then
  %8 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %9 = bitcast %struct._GimpDrawable* %8 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_item_get_type() #3
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call5)
  %10 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpItem*
  %11 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call7 = call i32 @gimp_pdb_item_is_not_group(%struct._GimpItem* %10, %struct._GError** %11)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %lor.lhs.false.9, label %if.then.12

lor.lhs.false.9:                                  ; preds = %lor.lhs.false
  %12 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call10 = call i32 @gimp_drawable_is_indexed(%struct._GimpDrawable* %12)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.then.12, label %if.end

if.then.12:                                       ; preds = %lor.lhs.false.9, %lor.lhs.false, %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.12, %lor.lhs.false.9
  %13 = load i32, i32* %success, align 4
  %tobool13 = icmp ne i32 %13, 0
  br i1 %tobool13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end
  %14 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %15 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  call void @gimp_drawable_invert(%struct._GimpDrawable* %14, %struct._GimpProgress* %15)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.14, %if.end
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15, %entry
  %16 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %17 = load i32, i32* %success, align 4
  %18 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool17 = icmp ne %struct._GError** %18, null
  br i1 %tobool17, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.16
  %19 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %20 = load %struct._GError*, %struct._GError** %19, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.16
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %20, %cond.true ], [ null, %cond.false ]
  %call18 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %16, i32 %17, %struct._GError* %cond)
  ret %struct._GValueArray* %call18
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @curves_spline_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %drawable = alloca %struct._GimpDrawable*, align 8
  %channel = alloca i32, align 4
  %num_points = alloca i32, align 4
  %control_pts = alloca i8*, align 8
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
  store i32 %call3, i32* %channel, align 4
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
  %call9 = call i8* @gimp_value_get_int8array(%struct._GValue* %arrayidx8)
  store i8* %call9, i8** %control_pts, align 8
  %9 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %if.then, label %if.end.37

if.then:                                          ; preds = %entry
  %10 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %11 = bitcast %struct._GimpDrawable* %10 to %struct._GTypeInstance*
  %call10 = call i64 @gimp_item_get_type() #3
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call10)
  %12 = bitcast %struct._GTypeInstance* %call11 to %struct._GimpItem*
  %13 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call12 = call i32 @gimp_pdb_item_is_attached(%struct._GimpItem* %12, %struct._GimpImage* null, i32 1, %struct._GError** %13)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %lor.lhs.false, label %if.then.33

lor.lhs.false:                                    ; preds = %if.then
  %14 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %15 = bitcast %struct._GimpDrawable* %14 to %struct._GTypeInstance*
  %call14 = call i64 @gimp_item_get_type() #3
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call14)
  %16 = bitcast %struct._GTypeInstance* %call15 to %struct._GimpItem*
  %17 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call16 = call i32 @gimp_pdb_item_is_not_group(%struct._GimpItem* %16, %struct._GError** %17)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %lor.lhs.false.18, label %if.then.33

lor.lhs.false.18:                                 ; preds = %lor.lhs.false
  %18 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call19 = call i32 @gimp_drawable_is_indexed(%struct._GimpDrawable* %18)
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %if.then.33, label %lor.lhs.false.21

lor.lhs.false.21:                                 ; preds = %lor.lhs.false.18
  %19 = load i32, i32* %num_points, align 4
  %and = and i32 %19, 1
  %tobool22 = icmp ne i32 %and, 0
  br i1 %tobool22, label %if.then.33, label %lor.lhs.false.23

lor.lhs.false.23:                                 ; preds = %lor.lhs.false.21
  %20 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call24 = call i32 @gimp_drawable_has_alpha(%struct._GimpDrawable* %20)
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %lor.lhs.false.26, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false.23
  %21 = load i32, i32* %channel, align 4
  %cmp = icmp eq i32 %21, 4
  br i1 %cmp, label %if.then.33, label %lor.lhs.false.26

lor.lhs.false.26:                                 ; preds = %land.lhs.true, %lor.lhs.false.23
  %22 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call27 = call i32 @gimp_drawable_is_gray(%struct._GimpDrawable* %22)
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %land.lhs.true.29, label %if.end

land.lhs.true.29:                                 ; preds = %lor.lhs.false.26
  %23 = load i32, i32* %channel, align 4
  %cmp30 = icmp ne i32 %23, 0
  br i1 %cmp30, label %land.lhs.true.31, label %if.end

land.lhs.true.31:                                 ; preds = %land.lhs.true.29
  %24 = load i32, i32* %channel, align 4
  %cmp32 = icmp ne i32 %24, 4
  br i1 %cmp32, label %if.then.33, label %if.end

if.then.33:                                       ; preds = %land.lhs.true.31, %land.lhs.true, %lor.lhs.false.21, %lor.lhs.false.18, %lor.lhs.false, %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.33, %land.lhs.true.31, %land.lhs.true.29, %lor.lhs.false.26
  %25 = load i32, i32* %success, align 4
  %tobool34 = icmp ne i32 %25, 0
  br i1 %tobool34, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %if.end
  %26 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %27 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %28 = load i32, i32* %channel, align 4
  %29 = load i8*, i8** %control_pts, align 8
  %30 = load i32, i32* %num_points, align 4
  call void @gimp_drawable_curves_spline(%struct._GimpDrawable* %26, %struct._GimpProgress* %27, i32 %28, i8* %29, i32 %30)
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.35, %if.end
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %entry
  %31 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %32 = load i32, i32* %success, align 4
  %33 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool38 = icmp ne %struct._GError** %33, null
  br i1 %tobool38, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.37
  %34 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %35 = load %struct._GError*, %struct._GError** %34, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.37
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %35, %cond.true ], [ null, %cond.false ]
  %call39 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %31, i32 %32, %struct._GError* %cond)
  ret %struct._GValueArray* %call39
}

declare %struct._GParamSpec* @gimp_param_spec_int8_array(i8*, i8*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @curves_explicit_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %drawable = alloca %struct._GimpDrawable*, align 8
  %channel = alloca i32, align 4
  %num_bytes = alloca i32, align 4
  %curve = alloca i8*, align 8
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
  store i32 %call3, i32* %channel, align 4
  %5 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values4 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %5, i32 0, i32 1
  %6 = load %struct._GValue*, %struct._GValue** %values4, align 8
  %arrayidx5 = getelementptr inbounds %struct._GValue, %struct._GValue* %6, i64 2
  %call6 = call i32 @g_value_get_int(%struct._GValue* %arrayidx5)
  store i32 %call6, i32* %num_bytes, align 4
  %7 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values7 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %7, i32 0, i32 1
  %8 = load %struct._GValue*, %struct._GValue** %values7, align 8
  %arrayidx8 = getelementptr inbounds %struct._GValue, %struct._GValue* %8, i64 3
  %call9 = call i8* @gimp_value_get_int8array(%struct._GValue* %arrayidx8)
  store i8* %call9, i8** %curve, align 8
  %9 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %if.then, label %if.end.37

if.then:                                          ; preds = %entry
  %10 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %11 = bitcast %struct._GimpDrawable* %10 to %struct._GTypeInstance*
  %call10 = call i64 @gimp_item_get_type() #3
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call10)
  %12 = bitcast %struct._GTypeInstance* %call11 to %struct._GimpItem*
  %13 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call12 = call i32 @gimp_pdb_item_is_attached(%struct._GimpItem* %12, %struct._GimpImage* null, i32 1, %struct._GError** %13)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %lor.lhs.false, label %if.then.33

lor.lhs.false:                                    ; preds = %if.then
  %14 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %15 = bitcast %struct._GimpDrawable* %14 to %struct._GTypeInstance*
  %call14 = call i64 @gimp_item_get_type() #3
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call14)
  %16 = bitcast %struct._GTypeInstance* %call15 to %struct._GimpItem*
  %17 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call16 = call i32 @gimp_pdb_item_is_not_group(%struct._GimpItem* %16, %struct._GError** %17)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %lor.lhs.false.18, label %if.then.33

lor.lhs.false.18:                                 ; preds = %lor.lhs.false
  %18 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call19 = call i32 @gimp_drawable_is_indexed(%struct._GimpDrawable* %18)
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %if.then.33, label %lor.lhs.false.21

lor.lhs.false.21:                                 ; preds = %lor.lhs.false.18
  %19 = load i32, i32* %num_bytes, align 4
  %cmp = icmp ne i32 %19, 256
  br i1 %cmp, label %if.then.33, label %lor.lhs.false.22

lor.lhs.false.22:                                 ; preds = %lor.lhs.false.21
  %20 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call23 = call i32 @gimp_drawable_has_alpha(%struct._GimpDrawable* %20)
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %lor.lhs.false.26, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false.22
  %21 = load i32, i32* %channel, align 4
  %cmp25 = icmp eq i32 %21, 4
  br i1 %cmp25, label %if.then.33, label %lor.lhs.false.26

lor.lhs.false.26:                                 ; preds = %land.lhs.true, %lor.lhs.false.22
  %22 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call27 = call i32 @gimp_drawable_is_gray(%struct._GimpDrawable* %22)
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %land.lhs.true.29, label %if.end

land.lhs.true.29:                                 ; preds = %lor.lhs.false.26
  %23 = load i32, i32* %channel, align 4
  %cmp30 = icmp ne i32 %23, 0
  br i1 %cmp30, label %land.lhs.true.31, label %if.end

land.lhs.true.31:                                 ; preds = %land.lhs.true.29
  %24 = load i32, i32* %channel, align 4
  %cmp32 = icmp ne i32 %24, 4
  br i1 %cmp32, label %if.then.33, label %if.end

if.then.33:                                       ; preds = %land.lhs.true.31, %land.lhs.true, %lor.lhs.false.21, %lor.lhs.false.18, %lor.lhs.false, %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.33, %land.lhs.true.31, %land.lhs.true.29, %lor.lhs.false.26
  %25 = load i32, i32* %success, align 4
  %tobool34 = icmp ne i32 %25, 0
  br i1 %tobool34, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %if.end
  %26 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %27 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %28 = load i32, i32* %channel, align 4
  %29 = load i8*, i8** %curve, align 8
  %30 = load i32, i32* %num_bytes, align 4
  call void @gimp_drawable_curves_explicit(%struct._GimpDrawable* %26, %struct._GimpProgress* %27, i32 %28, i8* %29, i32 %30)
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.35, %if.end
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %entry
  %31 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %32 = load i32, i32* %success, align 4
  %33 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool38 = icmp ne %struct._GError** %33, null
  br i1 %tobool38, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.37
  %34 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %35 = load %struct._GError*, %struct._GError** %34, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.37
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %35, %cond.true ], [ null, %cond.false ]
  %call39 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %31, i32 %32, %struct._GError* %cond)
  ret %struct._GValueArray* %call39
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @color_balance_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %drawable = alloca %struct._GimpDrawable*, align 8
  %transfer_mode = alloca i32, align 4
  %preserve_lum = alloca i32, align 4
  %cyan_red = alloca double, align 8
  %magenta_green = alloca double, align 8
  %yellow_blue = alloca double, align 8
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
  store i32 %call3, i32* %transfer_mode, align 4
  %5 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values4 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %5, i32 0, i32 1
  %6 = load %struct._GValue*, %struct._GValue** %values4, align 8
  %arrayidx5 = getelementptr inbounds %struct._GValue, %struct._GValue* %6, i64 2
  %call6 = call i32 @g_value_get_boolean(%struct._GValue* %arrayidx5)
  store i32 %call6, i32* %preserve_lum, align 4
  %7 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values7 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %7, i32 0, i32 1
  %8 = load %struct._GValue*, %struct._GValue** %values7, align 8
  %arrayidx8 = getelementptr inbounds %struct._GValue, %struct._GValue* %8, i64 3
  %call9 = call double @g_value_get_double(%struct._GValue* %arrayidx8)
  store double %call9, double* %cyan_red, align 8
  %9 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values10 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %9, i32 0, i32 1
  %10 = load %struct._GValue*, %struct._GValue** %values10, align 8
  %arrayidx11 = getelementptr inbounds %struct._GValue, %struct._GValue* %10, i64 4
  %call12 = call double @g_value_get_double(%struct._GValue* %arrayidx11)
  store double %call12, double* %magenta_green, align 8
  %11 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values13 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %11, i32 0, i32 1
  %12 = load %struct._GValue*, %struct._GValue** %values13, align 8
  %arrayidx14 = getelementptr inbounds %struct._GValue, %struct._GValue* %12, i64 5
  %call15 = call double @g_value_get_double(%struct._GValue* %arrayidx14)
  store double %call15, double* %yellow_blue, align 8
  %13 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %13, 0
  br i1 %tobool, label %if.then, label %if.end.31

if.then:                                          ; preds = %entry
  %14 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %15 = bitcast %struct._GimpDrawable* %14 to %struct._GTypeInstance*
  %call16 = call i64 @gimp_item_get_type() #3
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call16)
  %16 = bitcast %struct._GTypeInstance* %call17 to %struct._GimpItem*
  %17 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call18 = call i32 @gimp_pdb_item_is_attached(%struct._GimpItem* %16, %struct._GimpImage* null, i32 1, %struct._GError** %17)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %lor.lhs.false, label %if.then.27

lor.lhs.false:                                    ; preds = %if.then
  %18 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %19 = bitcast %struct._GimpDrawable* %18 to %struct._GTypeInstance*
  %call20 = call i64 @gimp_item_get_type() #3
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call20)
  %20 = bitcast %struct._GTypeInstance* %call21 to %struct._GimpItem*
  %21 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call22 = call i32 @gimp_pdb_item_is_not_group(%struct._GimpItem* %20, %struct._GError** %21)
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %lor.lhs.false.24, label %if.then.27

lor.lhs.false.24:                                 ; preds = %lor.lhs.false
  %22 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call25 = call i32 @gimp_drawable_is_indexed(%struct._GimpDrawable* %22)
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %if.then.27, label %if.end

if.then.27:                                       ; preds = %lor.lhs.false.24, %lor.lhs.false, %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.27, %lor.lhs.false.24
  %23 = load i32, i32* %success, align 4
  %tobool28 = icmp ne i32 %23, 0
  br i1 %tobool28, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.end
  %24 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %25 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %26 = load i32, i32* %transfer_mode, align 4
  %27 = load double, double* %cyan_red, align 8
  %28 = load double, double* %magenta_green, align 8
  %29 = load double, double* %yellow_blue, align 8
  %30 = load i32, i32* %preserve_lum, align 4
  call void @gimp_drawable_color_balance(%struct._GimpDrawable* %24, %struct._GimpProgress* %25, i32 %26, double %27, double %28, double %29, i32 %30)
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.29, %if.end
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30, %entry
  %31 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %32 = load i32, i32* %success, align 4
  %33 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool32 = icmp ne %struct._GError** %33, null
  br i1 %tobool32, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.31
  %34 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %35 = load %struct._GError*, %struct._GError** %34, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.31
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %35, %cond.true ], [ null, %cond.false ]
  %call33 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %31, i32 %32, %struct._GError* %cond)
  ret %struct._GValueArray* %call33
}

; Function Attrs: nounwind readnone
declare i64 @gimp_transfer_mode_get_type() #2

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @colorize_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %drawable = alloca %struct._GimpDrawable*, align 8
  %hue = alloca double, align 8
  %saturation = alloca double, align 8
  %lightness = alloca double, align 8
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
  store double %call3, double* %hue, align 8
  %5 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values4 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %5, i32 0, i32 1
  %6 = load %struct._GValue*, %struct._GValue** %values4, align 8
  %arrayidx5 = getelementptr inbounds %struct._GValue, %struct._GValue* %6, i64 2
  %call6 = call double @g_value_get_double(%struct._GValue* %arrayidx5)
  store double %call6, double* %saturation, align 8
  %7 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values7 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %7, i32 0, i32 1
  %8 = load %struct._GValue*, %struct._GValue** %values7, align 8
  %arrayidx8 = getelementptr inbounds %struct._GValue, %struct._GValue* %8, i64 3
  %call9 = call double @g_value_get_double(%struct._GValue* %arrayidx8)
  store double %call9, double* %lightness, align 8
  %9 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %if.then, label %if.end.25

if.then:                                          ; preds = %entry
  %10 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %11 = bitcast %struct._GimpDrawable* %10 to %struct._GTypeInstance*
  %call10 = call i64 @gimp_item_get_type() #3
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call10)
  %12 = bitcast %struct._GTypeInstance* %call11 to %struct._GimpItem*
  %13 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call12 = call i32 @gimp_pdb_item_is_attached(%struct._GimpItem* %12, %struct._GimpImage* null, i32 1, %struct._GError** %13)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %lor.lhs.false, label %if.then.21

lor.lhs.false:                                    ; preds = %if.then
  %14 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %15 = bitcast %struct._GimpDrawable* %14 to %struct._GTypeInstance*
  %call14 = call i64 @gimp_item_get_type() #3
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call14)
  %16 = bitcast %struct._GTypeInstance* %call15 to %struct._GimpItem*
  %17 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call16 = call i32 @gimp_pdb_item_is_not_group(%struct._GimpItem* %16, %struct._GError** %17)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %lor.lhs.false.18, label %if.then.21

lor.lhs.false.18:                                 ; preds = %lor.lhs.false
  %18 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call19 = call i32 @gimp_drawable_is_rgb(%struct._GimpDrawable* %18)
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %if.end, label %if.then.21

if.then.21:                                       ; preds = %lor.lhs.false.18, %lor.lhs.false, %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.21, %lor.lhs.false.18
  %19 = load i32, i32* %success, align 4
  %tobool22 = icmp ne i32 %19, 0
  br i1 %tobool22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.end
  %20 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %21 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %22 = load double, double* %hue, align 8
  %23 = load double, double* %saturation, align 8
  %24 = load double, double* %lightness, align 8
  call void @gimp_drawable_colorize(%struct._GimpDrawable* %20, %struct._GimpProgress* %21, double %22, double %23, double %24)
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.23, %if.end
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %entry
  %25 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %26 = load i32, i32* %success, align 4
  %27 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool26 = icmp ne %struct._GError** %27, null
  br i1 %tobool26, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.25
  %28 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %29 = load %struct._GError*, %struct._GError** %28, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.25
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %29, %cond.true ], [ null, %cond.false ]
  %call27 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %25, i32 %26, %struct._GError* %cond)
  ret %struct._GValueArray* %call27
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @histogram_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
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
  %channel = alloca i32, align 4
  %start_range = alloca i32, align 4
  %end_range = alloca i32, align 4
  %mean = alloca double, align 8
  %std_dev = alloca double, align 8
  %median = alloca double, align 8
  %pixels = alloca double, align 8
  %count = alloca double, align 8
  %percentile = alloca double, align 8
  %histogram = alloca %struct._GimpHistogram*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store double 0.000000e+00, double* %mean, align 8
  store double 0.000000e+00, double* %std_dev, align 8
  store double 0.000000e+00, double* %median, align 8
  store double 0.000000e+00, double* %pixels, align 8
  store double 0.000000e+00, double* %count, align 8
  store double 0.000000e+00, double* %percentile, align 8
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
  store i32 %call3, i32* %channel, align 4
  %5 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values4 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %5, i32 0, i32 1
  %6 = load %struct._GValue*, %struct._GValue** %values4, align 8
  %arrayidx5 = getelementptr inbounds %struct._GValue, %struct._GValue* %6, i64 2
  %call6 = call i32 @g_value_get_int(%struct._GValue* %arrayidx5)
  store i32 %call6, i32* %start_range, align 4
  %7 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values7 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %7, i32 0, i32 1
  %8 = load %struct._GValue*, %struct._GValue** %values7, align 8
  %arrayidx8 = getelementptr inbounds %struct._GValue, %struct._GValue* %8, i64 3
  %call9 = call i32 @g_value_get_int(%struct._GValue* %arrayidx8)
  store i32 %call9, i32* %end_range, align 4
  %9 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %if.then, label %if.end.36

if.then:                                          ; preds = %entry
  %10 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %11 = bitcast %struct._GimpDrawable* %10 to %struct._GTypeInstance*
  %call10 = call i64 @gimp_item_get_type() #3
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call10)
  %12 = bitcast %struct._GTypeInstance* %call11 to %struct._GimpItem*
  %13 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call12 = call i32 @gimp_pdb_item_is_attached(%struct._GimpItem* %12, %struct._GimpImage* null, i32 0, %struct._GError** %13)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %lor.lhs.false, label %if.then.26

lor.lhs.false:                                    ; preds = %if.then
  %14 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call14 = call i32 @gimp_drawable_is_indexed(%struct._GimpDrawable* %14)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.then.26, label %lor.lhs.false.16

lor.lhs.false.16:                                 ; preds = %lor.lhs.false
  %15 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call17 = call i32 @gimp_drawable_has_alpha(%struct._GimpDrawable* %15)
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %lor.lhs.false.19, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false.16
  %16 = load i32, i32* %channel, align 4
  %cmp = icmp eq i32 %16, 4
  br i1 %cmp, label %if.then.26, label %lor.lhs.false.19

lor.lhs.false.19:                                 ; preds = %land.lhs.true, %lor.lhs.false.16
  %17 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call20 = call i32 @gimp_drawable_is_gray(%struct._GimpDrawable* %17)
  %tobool21 = icmp ne i32 %call20, 0
  br i1 %tobool21, label %land.lhs.true.22, label %if.end

land.lhs.true.22:                                 ; preds = %lor.lhs.false.19
  %18 = load i32, i32* %channel, align 4
  %cmp23 = icmp ne i32 %18, 0
  br i1 %cmp23, label %land.lhs.true.24, label %if.end

land.lhs.true.24:                                 ; preds = %land.lhs.true.22
  %19 = load i32, i32* %channel, align 4
  %cmp25 = icmp ne i32 %19, 4
  br i1 %cmp25, label %if.then.26, label %if.end

if.then.26:                                       ; preds = %land.lhs.true.24, %land.lhs.true, %lor.lhs.false, %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.26, %land.lhs.true.24, %land.lhs.true.22, %lor.lhs.false.19
  %20 = load i32, i32* %success, align 4
  %tobool27 = icmp ne i32 %20, 0
  br i1 %tobool27, label %if.then.28, label %if.end.35

if.then.28:                                       ; preds = %if.end
  %call29 = call %struct._GimpHistogram* @gimp_histogram_new()
  store %struct._GimpHistogram* %call29, %struct._GimpHistogram** %histogram, align 8
  %21 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %22 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram, align 8
  call void @gimp_drawable_calculate_histogram(%struct._GimpDrawable* %21, %struct._GimpHistogram* %22)
  %23 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram, align 8
  %24 = load i32, i32* %channel, align 4
  %25 = load i32, i32* %start_range, align 4
  %26 = load i32, i32* %end_range, align 4
  %call30 = call double @gimp_histogram_get_mean(%struct._GimpHistogram* %23, i32 %24, i32 %25, i32 %26)
  store double %call30, double* %mean, align 8
  %27 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram, align 8
  %28 = load i32, i32* %channel, align 4
  %29 = load i32, i32* %start_range, align 4
  %30 = load i32, i32* %end_range, align 4
  %call31 = call double @gimp_histogram_get_std_dev(%struct._GimpHistogram* %27, i32 %28, i32 %29, i32 %30)
  store double %call31, double* %std_dev, align 8
  %31 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram, align 8
  %32 = load i32, i32* %channel, align 4
  %33 = load i32, i32* %start_range, align 4
  %34 = load i32, i32* %end_range, align 4
  %call32 = call i32 @gimp_histogram_get_median(%struct._GimpHistogram* %31, i32 %32, i32 %33, i32 %34)
  %conv = sitofp i32 %call32 to double
  store double %conv, double* %median, align 8
  %35 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram, align 8
  %36 = load i32, i32* %channel, align 4
  %call33 = call double @gimp_histogram_get_count(%struct._GimpHistogram* %35, i32 %36, i32 0, i32 255)
  store double %call33, double* %pixels, align 8
  %37 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram, align 8
  %38 = load i32, i32* %channel, align 4
  %39 = load i32, i32* %start_range, align 4
  %40 = load i32, i32* %end_range, align 4
  %call34 = call double @gimp_histogram_get_count(%struct._GimpHistogram* %37, i32 %38, i32 %39, i32 %40)
  store double %call34, double* %count, align 8
  %41 = load double, double* %count, align 8
  %42 = load double, double* %pixels, align 8
  %div = fdiv double %41, %42
  store double %div, double* %percentile, align 8
  %43 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram, align 8
  call void @gimp_histogram_unref(%struct._GimpHistogram* %43)
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.28, %if.end
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %entry
  %44 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %45 = load i32, i32* %success, align 4
  %46 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool37 = icmp ne %struct._GError** %46, null
  br i1 %tobool37, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.36
  %47 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %48 = load %struct._GError*, %struct._GError** %47, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.36
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %48, %cond.true ], [ null, %cond.false ]
  %call38 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %44, i32 %45, %struct._GError* %cond)
  store %struct._GValueArray* %call38, %struct._GValueArray** %return_vals, align 8
  %49 = load i32, i32* %success, align 4
  %tobool39 = icmp ne i32 %49, 0
  br i1 %tobool39, label %if.then.40, label %if.end.53

if.then.40:                                       ; preds = %cond.end
  %50 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values41 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %50, i32 0, i32 1
  %51 = load %struct._GValue*, %struct._GValue** %values41, align 8
  %arrayidx42 = getelementptr inbounds %struct._GValue, %struct._GValue* %51, i64 1
  %52 = load double, double* %mean, align 8
  call void @g_value_set_double(%struct._GValue* %arrayidx42, double %52)
  %53 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values43 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %53, i32 0, i32 1
  %54 = load %struct._GValue*, %struct._GValue** %values43, align 8
  %arrayidx44 = getelementptr inbounds %struct._GValue, %struct._GValue* %54, i64 2
  %55 = load double, double* %std_dev, align 8
  call void @g_value_set_double(%struct._GValue* %arrayidx44, double %55)
  %56 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values45 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %56, i32 0, i32 1
  %57 = load %struct._GValue*, %struct._GValue** %values45, align 8
  %arrayidx46 = getelementptr inbounds %struct._GValue, %struct._GValue* %57, i64 3
  %58 = load double, double* %median, align 8
  call void @g_value_set_double(%struct._GValue* %arrayidx46, double %58)
  %59 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values47 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %59, i32 0, i32 1
  %60 = load %struct._GValue*, %struct._GValue** %values47, align 8
  %arrayidx48 = getelementptr inbounds %struct._GValue, %struct._GValue* %60, i64 4
  %61 = load double, double* %pixels, align 8
  call void @g_value_set_double(%struct._GValue* %arrayidx48, double %61)
  %62 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values49 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %62, i32 0, i32 1
  %63 = load %struct._GValue*, %struct._GValue** %values49, align 8
  %arrayidx50 = getelementptr inbounds %struct._GValue, %struct._GValue* %63, i64 5
  %64 = load double, double* %count, align 8
  call void @g_value_set_double(%struct._GValue* %arrayidx50, double %64)
  %65 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values51 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %65, i32 0, i32 1
  %66 = load %struct._GValue*, %struct._GValue** %values51, align 8
  %arrayidx52 = getelementptr inbounds %struct._GValue, %struct._GValue* %66, i64 6
  %67 = load double, double* %percentile, align 8
  call void @g_value_set_double(%struct._GValue* %arrayidx52, double %67)
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.40, %cond.end
  %68 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %68
}

declare void @gimp_procedure_add_return_value(%struct._GimpProcedure*, %struct._GParamSpec*) #1

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @hue_saturation_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %drawable = alloca %struct._GimpDrawable*, align 8
  %hue_range = alloca i32, align 4
  %hue_offset = alloca double, align 8
  %lightness = alloca double, align 8
  %saturation = alloca double, align 8
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
  store i32 %call3, i32* %hue_range, align 4
  %5 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values4 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %5, i32 0, i32 1
  %6 = load %struct._GValue*, %struct._GValue** %values4, align 8
  %arrayidx5 = getelementptr inbounds %struct._GValue, %struct._GValue* %6, i64 2
  %call6 = call double @g_value_get_double(%struct._GValue* %arrayidx5)
  store double %call6, double* %hue_offset, align 8
  %7 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values7 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %7, i32 0, i32 1
  %8 = load %struct._GValue*, %struct._GValue** %values7, align 8
  %arrayidx8 = getelementptr inbounds %struct._GValue, %struct._GValue* %8, i64 3
  %call9 = call double @g_value_get_double(%struct._GValue* %arrayidx8)
  store double %call9, double* %lightness, align 8
  %9 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values10 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %9, i32 0, i32 1
  %10 = load %struct._GValue*, %struct._GValue** %values10, align 8
  %arrayidx11 = getelementptr inbounds %struct._GValue, %struct._GValue* %10, i64 4
  %call12 = call double @g_value_get_double(%struct._GValue* %arrayidx11)
  store double %call12, double* %saturation, align 8
  %11 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %if.then, label %if.end.28

if.then:                                          ; preds = %entry
  %12 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %13 = bitcast %struct._GimpDrawable* %12 to %struct._GTypeInstance*
  %call13 = call i64 @gimp_item_get_type() #3
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call13)
  %14 = bitcast %struct._GTypeInstance* %call14 to %struct._GimpItem*
  %15 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call15 = call i32 @gimp_pdb_item_is_attached(%struct._GimpItem* %14, %struct._GimpImage* null, i32 1, %struct._GError** %15)
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %lor.lhs.false, label %if.then.24

lor.lhs.false:                                    ; preds = %if.then
  %16 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %17 = bitcast %struct._GimpDrawable* %16 to %struct._GTypeInstance*
  %call17 = call i64 @gimp_item_get_type() #3
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call17)
  %18 = bitcast %struct._GTypeInstance* %call18 to %struct._GimpItem*
  %19 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call19 = call i32 @gimp_pdb_item_is_not_group(%struct._GimpItem* %18, %struct._GError** %19)
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %lor.lhs.false.21, label %if.then.24

lor.lhs.false.21:                                 ; preds = %lor.lhs.false
  %20 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call22 = call i32 @gimp_drawable_is_indexed(%struct._GimpDrawable* %20)
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %if.then.24, label %if.end

if.then.24:                                       ; preds = %lor.lhs.false.21, %lor.lhs.false, %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.24, %lor.lhs.false.21
  %21 = load i32, i32* %success, align 4
  %tobool25 = icmp ne i32 %21, 0
  br i1 %tobool25, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.end
  %22 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %23 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %24 = load i32, i32* %hue_range, align 4
  %25 = load double, double* %hue_offset, align 8
  %26 = load double, double* %saturation, align 8
  %27 = load double, double* %lightness, align 8
  call void @gimp_drawable_hue_saturation(%struct._GimpDrawable* %22, %struct._GimpProgress* %23, i32 %24, double %25, double %26, double %27)
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.26, %if.end
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
declare i64 @gimp_hue_range_get_type() #2

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @threshold_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %drawable = alloca %struct._GimpDrawable*, align 8
  %low_threshold = alloca i32, align 4
  %high_threshold = alloca i32, align 4
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
  store i32 %call3, i32* %low_threshold, align 4
  %5 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values4 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %5, i32 0, i32 1
  %6 = load %struct._GValue*, %struct._GValue** %values4, align 8
  %arrayidx5 = getelementptr inbounds %struct._GValue, %struct._GValue* %6, i64 2
  %call6 = call i32 @g_value_get_int(%struct._GValue* %arrayidx5)
  store i32 %call6, i32* %high_threshold, align 4
  %7 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then, label %if.end.23

if.then:                                          ; preds = %entry
  %8 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %9 = bitcast %struct._GimpDrawable* %8 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_item_get_type() #3
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call7)
  %10 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpItem*
  %11 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call9 = call i32 @gimp_pdb_item_is_attached(%struct._GimpItem* %10, %struct._GimpImage* null, i32 1, %struct._GError** %11)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %lor.lhs.false, label %if.then.19

lor.lhs.false:                                    ; preds = %if.then
  %12 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %13 = bitcast %struct._GimpDrawable* %12 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_item_get_type() #3
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call11)
  %14 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpItem*
  %15 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call13 = call i32 @gimp_pdb_item_is_not_group(%struct._GimpItem* %14, %struct._GError** %15)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %lor.lhs.false.15, label %if.then.19

lor.lhs.false.15:                                 ; preds = %lor.lhs.false
  %16 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call16 = call i32 @gimp_drawable_is_indexed(%struct._GimpDrawable* %16)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.then.19, label %lor.lhs.false.18

lor.lhs.false.18:                                 ; preds = %lor.lhs.false.15
  %17 = load i32, i32* %low_threshold, align 4
  %18 = load i32, i32* %high_threshold, align 4
  %cmp = icmp sgt i32 %17, %18
  br i1 %cmp, label %if.then.19, label %if.end

if.then.19:                                       ; preds = %lor.lhs.false.18, %lor.lhs.false.15, %lor.lhs.false, %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.19, %lor.lhs.false.18
  %19 = load i32, i32* %success, align 4
  %tobool20 = icmp ne i32 %19, 0
  br i1 %tobool20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.end
  %20 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %21 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %22 = load i32, i32* %low_threshold, align 4
  %23 = load i32, i32* %high_threshold, align 4
  call void @gimp_drawable_threshold(%struct._GimpDrawable* %20, %struct._GimpProgress* %21, i32 %22, i32 %23)
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.21, %if.end
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
  ret %struct._GValueArray* %call25
}

declare %struct._GimpDrawable* @gimp_value_get_drawable(%struct._GValue*, %struct._Gimp*) #1

declare i32 @g_value_get_int(%struct._GValue*) #1

declare i32 @gimp_pdb_item_is_attached(%struct._GimpItem*, %struct._GimpImage*, i32, %struct._GError**) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_item_get_type() #2

declare i32 @gimp_pdb_item_is_not_group(%struct._GimpItem*, %struct._GError**) #1

declare i32 @gimp_drawable_is_indexed(%struct._GimpDrawable*) #1

declare void @gimp_drawable_brightness_contrast(%struct._GimpDrawable*, %struct._GimpProgress*, i32, i32) #1

declare %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure*, i32, %struct._GError*) #1

declare i32 @g_value_get_enum(%struct._GValue*) #1

declare double @g_value_get_double(%struct._GValue*) #1

declare i32 @gimp_drawable_has_alpha(%struct._GimpDrawable*) #1

declare i32 @gimp_drawable_is_gray(%struct._GimpDrawable*) #1

declare void @gimp_drawable_levels(%struct._GimpDrawable*, %struct._GimpProgress*, i32, i32, i32, double, i32, i32) #1

declare void @gimp_drawable_levels_stretch(%struct._GimpDrawable*, %struct._GimpProgress*) #1

declare void @gimp_drawable_posterize(%struct._GimpDrawable*, %struct._GimpProgress*, i32) #1

declare i32 @gimp_drawable_is_rgb(%struct._GimpDrawable*) #1

declare void @gimp_drawable_desaturate(%struct._GimpDrawable*, %struct._GimpProgress*, i32) #1

declare i32 @g_value_get_boolean(%struct._GValue*) #1

declare void @gimp_drawable_equalize(%struct._GimpDrawable*, i32) #1

declare void @gimp_drawable_invert(%struct._GimpDrawable*, %struct._GimpProgress*) #1

declare i8* @gimp_value_get_int8array(%struct._GValue*) #1

declare void @gimp_drawable_curves_spline(%struct._GimpDrawable*, %struct._GimpProgress*, i32, i8*, i32) #1

declare void @gimp_drawable_curves_explicit(%struct._GimpDrawable*, %struct._GimpProgress*, i32, i8*, i32) #1

declare void @gimp_drawable_color_balance(%struct._GimpDrawable*, %struct._GimpProgress*, i32, double, double, double, i32) #1

declare void @gimp_drawable_colorize(%struct._GimpDrawable*, %struct._GimpProgress*, double, double, double) #1

declare %struct._GimpHistogram* @gimp_histogram_new() #1

declare void @gimp_drawable_calculate_histogram(%struct._GimpDrawable*, %struct._GimpHistogram*) #1

declare double @gimp_histogram_get_mean(%struct._GimpHistogram*, i32, i32, i32) #1

declare double @gimp_histogram_get_std_dev(%struct._GimpHistogram*, i32, i32, i32) #1

declare i32 @gimp_histogram_get_median(%struct._GimpHistogram*, i32, i32, i32) #1

declare double @gimp_histogram_get_count(%struct._GimpHistogram*, i32, i32, i32) #1

declare void @gimp_histogram_unref(%struct._GimpHistogram*) #1

declare void @g_value_set_double(%struct._GValue*, double) #1

declare void @gimp_drawable_hue_saturation(%struct._GimpDrawable*, %struct._GimpProgress*, i32, double, double, double) #1

declare void @gimp_drawable_threshold(%struct._GimpDrawable*, %struct._GimpProgress*, i32, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
