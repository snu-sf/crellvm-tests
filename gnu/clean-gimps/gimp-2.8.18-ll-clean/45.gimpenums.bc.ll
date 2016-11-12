; ModuleID = './libgimp/gimpenums.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GEnumValue = type { i32, i8*, i8* }
%struct._GimpEnumDesc = type { i32, i8*, i8* }

@gimp_brush_application_mode_get_type.values = internal constant [3 x %struct._GEnumValue] [%struct._GEnumValue { i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0) }, %struct._GEnumValue { i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0) }, %struct._GEnumValue zeroinitializer], align 16
@.str = private unnamed_addr constant [16 x i8] c"GIMP_BRUSH_HARD\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"hard\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"GIMP_BRUSH_SOFT\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"soft\00", align 1
@gimp_brush_application_mode_get_type.descs = internal constant [3 x %struct._GimpEnumDesc] [%struct._GimpEnumDesc { i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc zeroinitializer], align 16
@gimp_brush_application_mode_get_type.type = internal global i64 0, align 8
@.str.4 = private unnamed_addr constant [25 x i8] c"GimpBrushApplicationMode\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"gimp20-libgimp\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"brush-application-mode\00", align 1
@gimp_brush_generated_shape_get_type.values = internal constant [4 x %struct._GEnumValue] [%struct._GEnumValue { i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0) }, %struct._GEnumValue { i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0) }, %struct._GEnumValue { i32 2, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0) }, %struct._GEnumValue zeroinitializer], align 16
@.str.7 = private unnamed_addr constant [28 x i8] c"GIMP_BRUSH_GENERATED_CIRCLE\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"circle\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"GIMP_BRUSH_GENERATED_SQUARE\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"square\00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"GIMP_BRUSH_GENERATED_DIAMOND\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"diamond\00", align 1
@gimp_brush_generated_shape_get_type.descs = internal constant [4 x %struct._GimpEnumDesc] [%struct._GimpEnumDesc { i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 2, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc zeroinitializer], align 16
@gimp_brush_generated_shape_get_type.type = internal global i64 0, align 8
@.str.13 = private unnamed_addr constant [24 x i8] c"GimpBrushGeneratedShape\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"brush-generated-shape\00", align 1
@gimp_convert_dither_type_get_type.values = internal constant [5 x %struct._GEnumValue] [%struct._GEnumValue { i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i32 0, i32 0) }, %struct._GEnumValue { i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0) }, %struct._GEnumValue { i32 2, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.20, i32 0, i32 0) }, %struct._GEnumValue { i32 3, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i32 0, i32 0) }, %struct._GEnumValue zeroinitializer], align 16
@.str.15 = private unnamed_addr constant [15 x i8] c"GIMP_NO_DITHER\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"no-dither\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"GIMP_FS_DITHER\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"fs-dither\00", align 1
@.str.19 = private unnamed_addr constant [23 x i8] c"GIMP_FSLOWBLEED_DITHER\00", align 1
@.str.20 = private unnamed_addr constant [18 x i8] c"fslowbleed-dither\00", align 1
@.str.21 = private unnamed_addr constant [18 x i8] c"GIMP_FIXED_DITHER\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"fixed-dither\00", align 1
@gimp_convert_dither_type_get_type.descs = internal constant [5 x %struct._GimpEnumDesc] [%struct._GimpEnumDesc { i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 2, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.19, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 3, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.21, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc zeroinitializer], align 16
@gimp_convert_dither_type_get_type.type = internal global i64 0, align 8
@.str.23 = private unnamed_addr constant [22 x i8] c"GimpConvertDitherType\00", align 1
@.str.24 = private unnamed_addr constant [20 x i8] c"convert-dither-type\00", align 1
@gimp_convert_palette_type_get_type.values = internal constant [6 x %struct._GEnumValue] [%struct._GEnumValue { i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i32 0, i32 0) }, %struct._GEnumValue { i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.28, i32 0, i32 0) }, %struct._GEnumValue { i32 2, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.30, i32 0, i32 0) }, %struct._GEnumValue { i32 3, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.32, i32 0, i32 0) }, %struct._GEnumValue { i32 4, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.34, i32 0, i32 0) }, %struct._GEnumValue zeroinitializer], align 16
@.str.25 = private unnamed_addr constant [18 x i8] c"GIMP_MAKE_PALETTE\00", align 1
@.str.26 = private unnamed_addr constant [13 x i8] c"make-palette\00", align 1
@.str.27 = private unnamed_addr constant [19 x i8] c"GIMP_REUSE_PALETTE\00", align 1
@.str.28 = private unnamed_addr constant [14 x i8] c"reuse-palette\00", align 1
@.str.29 = private unnamed_addr constant [17 x i8] c"GIMP_WEB_PALETTE\00", align 1
@.str.30 = private unnamed_addr constant [12 x i8] c"web-palette\00", align 1
@.str.31 = private unnamed_addr constant [18 x i8] c"GIMP_MONO_PALETTE\00", align 1
@.str.32 = private unnamed_addr constant [13 x i8] c"mono-palette\00", align 1
@.str.33 = private unnamed_addr constant [20 x i8] c"GIMP_CUSTOM_PALETTE\00", align 1
@.str.34 = private unnamed_addr constant [15 x i8] c"custom-palette\00", align 1
@gimp_convert_palette_type_get_type.descs = internal constant [6 x %struct._GimpEnumDesc] [%struct._GimpEnumDesc { i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.25, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.27, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 2, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.29, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 3, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.31, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 4, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.33, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc zeroinitializer], align 16
@gimp_convert_palette_type_get_type.type = internal global i64 0, align 8
@.str.35 = private unnamed_addr constant [23 x i8] c"GimpConvertPaletteType\00", align 1
@.str.36 = private unnamed_addr constant [21 x i8] c"convert-palette-type\00", align 1
@gimp_convolution_type_get_type.values = internal constant [4 x %struct._GEnumValue] [%struct._GEnumValue { i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.38, i32 0, i32 0) }, %struct._GEnumValue { i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.40, i32 0, i32 0) }, %struct._GEnumValue { i32 2, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.42, i32 0, i32 0) }, %struct._GEnumValue zeroinitializer], align 16
@.str.37 = private unnamed_addr constant [19 x i8] c"GIMP_NORMAL_CONVOL\00", align 1
@.str.38 = private unnamed_addr constant [14 x i8] c"normal-convol\00", align 1
@.str.39 = private unnamed_addr constant [21 x i8] c"GIMP_ABSOLUTE_CONVOL\00", align 1
@.str.40 = private unnamed_addr constant [16 x i8] c"absolute-convol\00", align 1
@.str.41 = private unnamed_addr constant [21 x i8] c"GIMP_NEGATIVE_CONVOL\00", align 1
@.str.42 = private unnamed_addr constant [16 x i8] c"negative-convol\00", align 1
@gimp_convolution_type_get_type.descs = internal constant [4 x %struct._GimpEnumDesc] [%struct._GimpEnumDesc { i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.37, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.39, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 2, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.41, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc zeroinitializer], align 16
@gimp_convolution_type_get_type.type = internal global i64 0, align 8
@.str.43 = private unnamed_addr constant [20 x i8] c"GimpConvolutionType\00", align 1
@.str.44 = private unnamed_addr constant [17 x i8] c"convolution-type\00", align 1
@gimp_convolve_type_get_type.values = internal constant [3 x %struct._GEnumValue] [%struct._GEnumValue { i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.46, i32 0, i32 0) }, %struct._GEnumValue { i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.48, i32 0, i32 0) }, %struct._GEnumValue zeroinitializer], align 16
@.str.45 = private unnamed_addr constant [19 x i8] c"GIMP_BLUR_CONVOLVE\00", align 1
@.str.46 = private unnamed_addr constant [14 x i8] c"blur-convolve\00", align 1
@.str.47 = private unnamed_addr constant [22 x i8] c"GIMP_SHARPEN_CONVOLVE\00", align 1
@.str.48 = private unnamed_addr constant [17 x i8] c"sharpen-convolve\00", align 1
@gimp_convolve_type_get_type.descs = internal constant [3 x %struct._GimpEnumDesc] [%struct._GimpEnumDesc { i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.45, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.47, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc zeroinitializer], align 16
@gimp_convolve_type_get_type.type = internal global i64 0, align 8
@.str.49 = private unnamed_addr constant [17 x i8] c"GimpConvolveType\00", align 1
@.str.50 = private unnamed_addr constant [14 x i8] c"convolve-type\00", align 1
@gimp_fill_type_get_type.values = internal constant [6 x %struct._GEnumValue] [%struct._GEnumValue { i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.52, i32 0, i32 0) }, %struct._GEnumValue { i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.54, i32 0, i32 0) }, %struct._GEnumValue { i32 2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.56, i32 0, i32 0) }, %struct._GEnumValue { i32 3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.58, i32 0, i32 0) }, %struct._GEnumValue { i32 4, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.60, i32 0, i32 0) }, %struct._GEnumValue zeroinitializer], align 16
@.str.51 = private unnamed_addr constant [21 x i8] c"GIMP_FOREGROUND_FILL\00", align 1
@.str.52 = private unnamed_addr constant [16 x i8] c"foreground-fill\00", align 1
@.str.53 = private unnamed_addr constant [21 x i8] c"GIMP_BACKGROUND_FILL\00", align 1
@.str.54 = private unnamed_addr constant [16 x i8] c"background-fill\00", align 1
@.str.55 = private unnamed_addr constant [16 x i8] c"GIMP_WHITE_FILL\00", align 1
@.str.56 = private unnamed_addr constant [11 x i8] c"white-fill\00", align 1
@.str.57 = private unnamed_addr constant [22 x i8] c"GIMP_TRANSPARENT_FILL\00", align 1
@.str.58 = private unnamed_addr constant [17 x i8] c"transparent-fill\00", align 1
@.str.59 = private unnamed_addr constant [18 x i8] c"GIMP_PATTERN_FILL\00", align 1
@.str.60 = private unnamed_addr constant [13 x i8] c"pattern-fill\00", align 1
@gimp_fill_type_get_type.descs = internal constant [6 x %struct._GimpEnumDesc] [%struct._GimpEnumDesc { i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.51, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.53, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.55, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.57, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 4, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.59, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc zeroinitializer], align 16
@gimp_fill_type_get_type.type = internal global i64 0, align 8
@.str.61 = private unnamed_addr constant [13 x i8] c"GimpFillType\00", align 1
@.str.62 = private unnamed_addr constant [10 x i8] c"fill-type\00", align 1
@gimp_gradient_segment_color_get_type.values = internal constant [4 x %struct._GEnumValue] [%struct._GEnumValue { i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.64, i32 0, i32 0) }, %struct._GEnumValue { i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.66, i32 0, i32 0) }, %struct._GEnumValue { i32 2, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.68, i32 0, i32 0) }, %struct._GEnumValue zeroinitializer], align 16
@.str.63 = private unnamed_addr constant [26 x i8] c"GIMP_GRADIENT_SEGMENT_RGB\00", align 1
@.str.64 = private unnamed_addr constant [4 x i8] c"rgb\00", align 1
@.str.65 = private unnamed_addr constant [30 x i8] c"GIMP_GRADIENT_SEGMENT_HSV_CCW\00", align 1
@.str.66 = private unnamed_addr constant [8 x i8] c"hsv-ccw\00", align 1
@.str.67 = private unnamed_addr constant [29 x i8] c"GIMP_GRADIENT_SEGMENT_HSV_CW\00", align 1
@.str.68 = private unnamed_addr constant [7 x i8] c"hsv-cw\00", align 1
@gimp_gradient_segment_color_get_type.descs = internal constant [4 x %struct._GimpEnumDesc] [%struct._GimpEnumDesc { i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.63, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.65, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 2, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.67, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc zeroinitializer], align 16
@gimp_gradient_segment_color_get_type.type = internal global i64 0, align 8
@.str.69 = private unnamed_addr constant [25 x i8] c"GimpGradientSegmentColor\00", align 1
@.str.70 = private unnamed_addr constant [23 x i8] c"gradient-segment-color\00", align 1
@gimp_gradient_segment_type_get_type.values = internal constant [6 x %struct._GEnumValue] [%struct._GEnumValue { i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.72, i32 0, i32 0) }, %struct._GEnumValue { i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.73, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.74, i32 0, i32 0) }, %struct._GEnumValue { i32 2, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.75, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.76, i32 0, i32 0) }, %struct._GEnumValue { i32 3, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.77, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.78, i32 0, i32 0) }, %struct._GEnumValue { i32 4, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.79, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.80, i32 0, i32 0) }, %struct._GEnumValue zeroinitializer], align 16
@.str.71 = private unnamed_addr constant [29 x i8] c"GIMP_GRADIENT_SEGMENT_LINEAR\00", align 1
@.str.72 = private unnamed_addr constant [7 x i8] c"linear\00", align 1
@.str.73 = private unnamed_addr constant [29 x i8] c"GIMP_GRADIENT_SEGMENT_CURVED\00", align 1
@.str.74 = private unnamed_addr constant [7 x i8] c"curved\00", align 1
@.str.75 = private unnamed_addr constant [27 x i8] c"GIMP_GRADIENT_SEGMENT_SINE\00", align 1
@.str.76 = private unnamed_addr constant [5 x i8] c"sine\00", align 1
@.str.77 = private unnamed_addr constant [40 x i8] c"GIMP_GRADIENT_SEGMENT_SPHERE_INCREASING\00", align 1
@.str.78 = private unnamed_addr constant [18 x i8] c"sphere-increasing\00", align 1
@.str.79 = private unnamed_addr constant [40 x i8] c"GIMP_GRADIENT_SEGMENT_SPHERE_DECREASING\00", align 1
@.str.80 = private unnamed_addr constant [18 x i8] c"sphere-decreasing\00", align 1
@gimp_gradient_segment_type_get_type.descs = internal constant [6 x %struct._GimpEnumDesc] [%struct._GimpEnumDesc { i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.71, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.73, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 2, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.75, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 3, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.77, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 4, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.79, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc zeroinitializer], align 16
@gimp_gradient_segment_type_get_type.type = internal global i64 0, align 8
@.str.81 = private unnamed_addr constant [24 x i8] c"GimpGradientSegmentType\00", align 1
@.str.82 = private unnamed_addr constant [22 x i8] c"gradient-segment-type\00", align 1
@gimp_histogram_channel_get_type.values = internal constant [6 x %struct._GEnumValue] [%struct._GEnumValue { i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.83, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.84, i32 0, i32 0) }, %struct._GEnumValue { i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.85, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.86, i32 0, i32 0) }, %struct._GEnumValue { i32 2, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.87, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.88, i32 0, i32 0) }, %struct._GEnumValue { i32 3, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.89, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.90, i32 0, i32 0) }, %struct._GEnumValue { i32 4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.91, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.92, i32 0, i32 0) }, %struct._GEnumValue zeroinitializer], align 16
@.str.83 = private unnamed_addr constant [21 x i8] c"GIMP_HISTOGRAM_VALUE\00", align 1
@.str.84 = private unnamed_addr constant [6 x i8] c"value\00", align 1
@.str.85 = private unnamed_addr constant [19 x i8] c"GIMP_HISTOGRAM_RED\00", align 1
@.str.86 = private unnamed_addr constant [4 x i8] c"red\00", align 1
@.str.87 = private unnamed_addr constant [21 x i8] c"GIMP_HISTOGRAM_GREEN\00", align 1
@.str.88 = private unnamed_addr constant [6 x i8] c"green\00", align 1
@.str.89 = private unnamed_addr constant [20 x i8] c"GIMP_HISTOGRAM_BLUE\00", align 1
@.str.90 = private unnamed_addr constant [5 x i8] c"blue\00", align 1
@.str.91 = private unnamed_addr constant [21 x i8] c"GIMP_HISTOGRAM_ALPHA\00", align 1
@.str.92 = private unnamed_addr constant [6 x i8] c"alpha\00", align 1
@gimp_histogram_channel_get_type.descs = internal constant [6 x %struct._GimpEnumDesc] [%struct._GimpEnumDesc { i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.83, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.85, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 2, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.87, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 3, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.89, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.91, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc zeroinitializer], align 16
@gimp_histogram_channel_get_type.type = internal global i64 0, align 8
@.str.93 = private unnamed_addr constant [21 x i8] c"GimpHistogramChannel\00", align 1
@.str.94 = private unnamed_addr constant [18 x i8] c"histogram-channel\00", align 1
@gimp_hue_range_get_type.values = internal constant [8 x %struct._GEnumValue] [%struct._GEnumValue { i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.95, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.96, i32 0, i32 0) }, %struct._GEnumValue { i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.97, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.98, i32 0, i32 0) }, %struct._GEnumValue { i32 2, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.99, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.100, i32 0, i32 0) }, %struct._GEnumValue { i32 3, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.101, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.102, i32 0, i32 0) }, %struct._GEnumValue { i32 4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.103, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.104, i32 0, i32 0) }, %struct._GEnumValue { i32 5, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.105, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.106, i32 0, i32 0) }, %struct._GEnumValue { i32 6, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.107, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.108, i32 0, i32 0) }, %struct._GEnumValue zeroinitializer], align 16
@.str.95 = private unnamed_addr constant [14 x i8] c"GIMP_ALL_HUES\00", align 1
@.str.96 = private unnamed_addr constant [9 x i8] c"all-hues\00", align 1
@.str.97 = private unnamed_addr constant [14 x i8] c"GIMP_RED_HUES\00", align 1
@.str.98 = private unnamed_addr constant [9 x i8] c"red-hues\00", align 1
@.str.99 = private unnamed_addr constant [17 x i8] c"GIMP_YELLOW_HUES\00", align 1
@.str.100 = private unnamed_addr constant [12 x i8] c"yellow-hues\00", align 1
@.str.101 = private unnamed_addr constant [16 x i8] c"GIMP_GREEN_HUES\00", align 1
@.str.102 = private unnamed_addr constant [11 x i8] c"green-hues\00", align 1
@.str.103 = private unnamed_addr constant [15 x i8] c"GIMP_CYAN_HUES\00", align 1
@.str.104 = private unnamed_addr constant [10 x i8] c"cyan-hues\00", align 1
@.str.105 = private unnamed_addr constant [15 x i8] c"GIMP_BLUE_HUES\00", align 1
@.str.106 = private unnamed_addr constant [10 x i8] c"blue-hues\00", align 1
@.str.107 = private unnamed_addr constant [18 x i8] c"GIMP_MAGENTA_HUES\00", align 1
@.str.108 = private unnamed_addr constant [13 x i8] c"magenta-hues\00", align 1
@gimp_hue_range_get_type.descs = internal constant [8 x %struct._GimpEnumDesc] [%struct._GimpEnumDesc { i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.95, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.97, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 2, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.99, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 3, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.101, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.103, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 5, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.105, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 6, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.107, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc zeroinitializer], align 16
@gimp_hue_range_get_type.type = internal global i64 0, align 8
@.str.109 = private unnamed_addr constant [13 x i8] c"GimpHueRange\00", align 1
@.str.110 = private unnamed_addr constant [10 x i8] c"hue-range\00", align 1
@gimp_ink_blob_type_get_type.values = internal constant [4 x %struct._GEnumValue] [%struct._GEnumValue { i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.111, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0) }, %struct._GEnumValue { i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.112, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0) }, %struct._GEnumValue { i32 2, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.113, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0) }, %struct._GEnumValue zeroinitializer], align 16
@.str.111 = private unnamed_addr constant [26 x i8] c"GIMP_INK_BLOB_TYPE_CIRCLE\00", align 1
@.str.112 = private unnamed_addr constant [26 x i8] c"GIMP_INK_BLOB_TYPE_SQUARE\00", align 1
@.str.113 = private unnamed_addr constant [27 x i8] c"GIMP_INK_BLOB_TYPE_DIAMOND\00", align 1
@gimp_ink_blob_type_get_type.descs = internal constant [4 x %struct._GimpEnumDesc] [%struct._GimpEnumDesc { i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.111, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.112, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 2, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.113, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc zeroinitializer], align 16
@gimp_ink_blob_type_get_type.type = internal global i64 0, align 8
@.str.114 = private unnamed_addr constant [16 x i8] c"GimpInkBlobType\00", align 1
@.str.115 = private unnamed_addr constant [14 x i8] c"ink-blob-type\00", align 1
@gimp_layer_mode_effects_get_type.values = internal constant [24 x %struct._GEnumValue] [%struct._GEnumValue { i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.116, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.117, i32 0, i32 0) }, %struct._GEnumValue { i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.118, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.119, i32 0, i32 0) }, %struct._GEnumValue { i32 2, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.120, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.121, i32 0, i32 0) }, %struct._GEnumValue { i32 3, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.122, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.123, i32 0, i32 0) }, %struct._GEnumValue { i32 4, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.124, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.125, i32 0, i32 0) }, %struct._GEnumValue { i32 5, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.126, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.127, i32 0, i32 0) }, %struct._GEnumValue { i32 6, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.128, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.129, i32 0, i32 0) }, %struct._GEnumValue { i32 7, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.130, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.131, i32 0, i32 0) }, %struct._GEnumValue { i32 8, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.132, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.133, i32 0, i32 0) }, %struct._GEnumValue { i32 9, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.134, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.135, i32 0, i32 0) }, %struct._GEnumValue { i32 10, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.136, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.137, i32 0, i32 0) }, %struct._GEnumValue { i32 11, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.138, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.139, i32 0, i32 0) }, %struct._GEnumValue { i32 12, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.140, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.141, i32 0, i32 0) }, %struct._GEnumValue { i32 13, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.142, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.143, i32 0, i32 0) }, %struct._GEnumValue { i32 14, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.144, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.145, i32 0, i32 0) }, %struct._GEnumValue { i32 15, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.146, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.147, i32 0, i32 0) }, %struct._GEnumValue { i32 16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.148, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.149, i32 0, i32 0) }, %struct._GEnumValue { i32 17, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.150, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.151, i32 0, i32 0) }, %struct._GEnumValue { i32 18, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.152, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.153, i32 0, i32 0) }, %struct._GEnumValue { i32 19, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.154, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.155, i32 0, i32 0) }, %struct._GEnumValue { i32 20, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.156, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.157, i32 0, i32 0) }, %struct._GEnumValue { i32 21, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.158, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.159, i32 0, i32 0) }, %struct._GEnumValue { i32 22, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.160, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.161, i32 0, i32 0) }, %struct._GEnumValue zeroinitializer], align 16
@.str.116 = private unnamed_addr constant [17 x i8] c"GIMP_NORMAL_MODE\00", align 1
@.str.117 = private unnamed_addr constant [12 x i8] c"normal-mode\00", align 1
@.str.118 = private unnamed_addr constant [19 x i8] c"GIMP_DISSOLVE_MODE\00", align 1
@.str.119 = private unnamed_addr constant [14 x i8] c"dissolve-mode\00", align 1
@.str.120 = private unnamed_addr constant [17 x i8] c"GIMP_BEHIND_MODE\00", align 1
@.str.121 = private unnamed_addr constant [12 x i8] c"behind-mode\00", align 1
@.str.122 = private unnamed_addr constant [19 x i8] c"GIMP_MULTIPLY_MODE\00", align 1
@.str.123 = private unnamed_addr constant [14 x i8] c"multiply-mode\00", align 1
@.str.124 = private unnamed_addr constant [17 x i8] c"GIMP_SCREEN_MODE\00", align 1
@.str.125 = private unnamed_addr constant [12 x i8] c"screen-mode\00", align 1
@.str.126 = private unnamed_addr constant [18 x i8] c"GIMP_OVERLAY_MODE\00", align 1
@.str.127 = private unnamed_addr constant [13 x i8] c"overlay-mode\00", align 1
@.str.128 = private unnamed_addr constant [21 x i8] c"GIMP_DIFFERENCE_MODE\00", align 1
@.str.129 = private unnamed_addr constant [16 x i8] c"difference-mode\00", align 1
@.str.130 = private unnamed_addr constant [19 x i8] c"GIMP_ADDITION_MODE\00", align 1
@.str.131 = private unnamed_addr constant [14 x i8] c"addition-mode\00", align 1
@.str.132 = private unnamed_addr constant [19 x i8] c"GIMP_SUBTRACT_MODE\00", align 1
@.str.133 = private unnamed_addr constant [14 x i8] c"subtract-mode\00", align 1
@.str.134 = private unnamed_addr constant [22 x i8] c"GIMP_DARKEN_ONLY_MODE\00", align 1
@.str.135 = private unnamed_addr constant [17 x i8] c"darken-only-mode\00", align 1
@.str.136 = private unnamed_addr constant [23 x i8] c"GIMP_LIGHTEN_ONLY_MODE\00", align 1
@.str.137 = private unnamed_addr constant [18 x i8] c"lighten-only-mode\00", align 1
@.str.138 = private unnamed_addr constant [14 x i8] c"GIMP_HUE_MODE\00", align 1
@.str.139 = private unnamed_addr constant [9 x i8] c"hue-mode\00", align 1
@.str.140 = private unnamed_addr constant [21 x i8] c"GIMP_SATURATION_MODE\00", align 1
@.str.141 = private unnamed_addr constant [16 x i8] c"saturation-mode\00", align 1
@.str.142 = private unnamed_addr constant [16 x i8] c"GIMP_COLOR_MODE\00", align 1
@.str.143 = private unnamed_addr constant [11 x i8] c"color-mode\00", align 1
@.str.144 = private unnamed_addr constant [16 x i8] c"GIMP_VALUE_MODE\00", align 1
@.str.145 = private unnamed_addr constant [11 x i8] c"value-mode\00", align 1
@.str.146 = private unnamed_addr constant [17 x i8] c"GIMP_DIVIDE_MODE\00", align 1
@.str.147 = private unnamed_addr constant [12 x i8] c"divide-mode\00", align 1
@.str.148 = private unnamed_addr constant [16 x i8] c"GIMP_DODGE_MODE\00", align 1
@.str.149 = private unnamed_addr constant [11 x i8] c"dodge-mode\00", align 1
@.str.150 = private unnamed_addr constant [15 x i8] c"GIMP_BURN_MODE\00", align 1
@.str.151 = private unnamed_addr constant [10 x i8] c"burn-mode\00", align 1
@.str.152 = private unnamed_addr constant [20 x i8] c"GIMP_HARDLIGHT_MODE\00", align 1
@.str.153 = private unnamed_addr constant [15 x i8] c"hardlight-mode\00", align 1
@.str.154 = private unnamed_addr constant [20 x i8] c"GIMP_SOFTLIGHT_MODE\00", align 1
@.str.155 = private unnamed_addr constant [15 x i8] c"softlight-mode\00", align 1
@.str.156 = private unnamed_addr constant [24 x i8] c"GIMP_GRAIN_EXTRACT_MODE\00", align 1
@.str.157 = private unnamed_addr constant [19 x i8] c"grain-extract-mode\00", align 1
@.str.158 = private unnamed_addr constant [22 x i8] c"GIMP_GRAIN_MERGE_MODE\00", align 1
@.str.159 = private unnamed_addr constant [17 x i8] c"grain-merge-mode\00", align 1
@.str.160 = private unnamed_addr constant [22 x i8] c"GIMP_COLOR_ERASE_MODE\00", align 1
@.str.161 = private unnamed_addr constant [17 x i8] c"color-erase-mode\00", align 1
@gimp_layer_mode_effects_get_type.descs = internal constant [24 x %struct._GimpEnumDesc] [%struct._GimpEnumDesc { i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.116, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.118, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 2, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.120, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 3, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.122, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 4, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.124, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 5, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.126, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 6, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.128, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 7, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.130, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 8, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.132, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 9, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.134, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 10, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.136, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 11, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.138, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 12, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.140, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 13, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.142, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 14, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.144, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 15, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.146, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.148, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 17, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.150, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 18, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.152, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 19, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.154, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 20, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.156, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 21, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.158, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 22, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.160, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc zeroinitializer], align 16
@gimp_layer_mode_effects_get_type.type = internal global i64 0, align 8
@.str.162 = private unnamed_addr constant [21 x i8] c"GimpLayerModeEffects\00", align 1
@.str.163 = private unnamed_addr constant [19 x i8] c"layer-mode-effects\00", align 1
@gimp_mask_apply_mode_get_type.values = internal constant [3 x %struct._GEnumValue] [%struct._GEnumValue { i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.164, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.165, i32 0, i32 0) }, %struct._GEnumValue { i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.166, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.167, i32 0, i32 0) }, %struct._GEnumValue zeroinitializer], align 16
@.str.164 = private unnamed_addr constant [16 x i8] c"GIMP_MASK_APPLY\00", align 1
@.str.165 = private unnamed_addr constant [6 x i8] c"apply\00", align 1
@.str.166 = private unnamed_addr constant [18 x i8] c"GIMP_MASK_DISCARD\00", align 1
@.str.167 = private unnamed_addr constant [8 x i8] c"discard\00", align 1
@gimp_mask_apply_mode_get_type.descs = internal constant [3 x %struct._GimpEnumDesc] [%struct._GimpEnumDesc { i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.164, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.166, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc zeroinitializer], align 16
@gimp_mask_apply_mode_get_type.type = internal global i64 0, align 8
@.str.168 = private unnamed_addr constant [18 x i8] c"GimpMaskApplyMode\00", align 1
@.str.169 = private unnamed_addr constant [16 x i8] c"mask-apply-mode\00", align 1
@gimp_merge_type_get_type.values = internal constant [5 x %struct._GEnumValue] [%struct._GEnumValue { i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.170, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.171, i32 0, i32 0) }, %struct._GEnumValue { i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.172, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.173, i32 0, i32 0) }, %struct._GEnumValue { i32 2, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.174, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.175, i32 0, i32 0) }, %struct._GEnumValue { i32 3, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.176, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.177, i32 0, i32 0) }, %struct._GEnumValue zeroinitializer], align 16
@.str.170 = private unnamed_addr constant [25 x i8] c"GIMP_EXPAND_AS_NECESSARY\00", align 1
@.str.171 = private unnamed_addr constant [20 x i8] c"expand-as-necessary\00", align 1
@.str.172 = private unnamed_addr constant [19 x i8] c"GIMP_CLIP_TO_IMAGE\00", align 1
@.str.173 = private unnamed_addr constant [14 x i8] c"clip-to-image\00", align 1
@.str.174 = private unnamed_addr constant [26 x i8] c"GIMP_CLIP_TO_BOTTOM_LAYER\00", align 1
@.str.175 = private unnamed_addr constant [21 x i8] c"clip-to-bottom-layer\00", align 1
@.str.176 = private unnamed_addr constant [19 x i8] c"GIMP_FLATTEN_IMAGE\00", align 1
@.str.177 = private unnamed_addr constant [14 x i8] c"flatten-image\00", align 1
@gimp_merge_type_get_type.descs = internal constant [5 x %struct._GimpEnumDesc] [%struct._GimpEnumDesc { i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.170, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.172, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 2, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.174, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 3, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.176, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc zeroinitializer], align 16
@gimp_merge_type_get_type.type = internal global i64 0, align 8
@.str.178 = private unnamed_addr constant [14 x i8] c"GimpMergeType\00", align 1
@.str.179 = private unnamed_addr constant [11 x i8] c"merge-type\00", align 1
@gimp_offset_type_get_type.values = internal constant [3 x %struct._GEnumValue] [%struct._GEnumValue { i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.180, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.181, i32 0, i32 0) }, %struct._GEnumValue { i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.182, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.183, i32 0, i32 0) }, %struct._GEnumValue zeroinitializer], align 16
@.str.180 = private unnamed_addr constant [23 x i8] c"GIMP_OFFSET_BACKGROUND\00", align 1
@.str.181 = private unnamed_addr constant [11 x i8] c"background\00", align 1
@.str.182 = private unnamed_addr constant [24 x i8] c"GIMP_OFFSET_TRANSPARENT\00", align 1
@.str.183 = private unnamed_addr constant [12 x i8] c"transparent\00", align 1
@gimp_offset_type_get_type.descs = internal constant [3 x %struct._GimpEnumDesc] [%struct._GimpEnumDesc { i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.180, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.182, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc zeroinitializer], align 16
@gimp_offset_type_get_type.type = internal global i64 0, align 8
@.str.184 = private unnamed_addr constant [15 x i8] c"GimpOffsetType\00", align 1
@.str.185 = private unnamed_addr constant [12 x i8] c"offset-type\00", align 1
@gimp_orientation_type_get_type.values = internal constant [4 x %struct._GEnumValue] [%struct._GEnumValue { i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.186, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.187, i32 0, i32 0) }, %struct._GEnumValue { i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.188, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.189, i32 0, i32 0) }, %struct._GEnumValue { i32 2, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.190, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.191, i32 0, i32 0) }, %struct._GEnumValue zeroinitializer], align 16
@.str.186 = private unnamed_addr constant [28 x i8] c"GIMP_ORIENTATION_HORIZONTAL\00", align 1
@.str.187 = private unnamed_addr constant [11 x i8] c"horizontal\00", align 1
@.str.188 = private unnamed_addr constant [26 x i8] c"GIMP_ORIENTATION_VERTICAL\00", align 1
@.str.189 = private unnamed_addr constant [9 x i8] c"vertical\00", align 1
@.str.190 = private unnamed_addr constant [25 x i8] c"GIMP_ORIENTATION_UNKNOWN\00", align 1
@.str.191 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@gimp_orientation_type_get_type.descs = internal constant [4 x %struct._GimpEnumDesc] [%struct._GimpEnumDesc { i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.186, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.188, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 2, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.190, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc zeroinitializer], align 16
@gimp_orientation_type_get_type.type = internal global i64 0, align 8
@.str.192 = private unnamed_addr constant [20 x i8] c"GimpOrientationType\00", align 1
@.str.193 = private unnamed_addr constant [17 x i8] c"orientation-type\00", align 1
@gimp_rotation_type_get_type.values = internal constant [4 x %struct._GEnumValue] [%struct._GEnumValue { i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.194, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.195, i32 0, i32 0) }, %struct._GEnumValue { i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.196, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.197, i32 0, i32 0) }, %struct._GEnumValue { i32 2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.198, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.199, i32 0, i32 0) }, %struct._GEnumValue zeroinitializer], align 16
@.str.194 = private unnamed_addr constant [15 x i8] c"GIMP_ROTATE_90\00", align 1
@.str.195 = private unnamed_addr constant [3 x i8] c"90\00", align 1
@.str.196 = private unnamed_addr constant [16 x i8] c"GIMP_ROTATE_180\00", align 1
@.str.197 = private unnamed_addr constant [4 x i8] c"180\00", align 1
@.str.198 = private unnamed_addr constant [16 x i8] c"GIMP_ROTATE_270\00", align 1
@.str.199 = private unnamed_addr constant [4 x i8] c"270\00", align 1
@gimp_rotation_type_get_type.descs = internal constant [4 x %struct._GimpEnumDesc] [%struct._GimpEnumDesc { i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.194, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.196, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.198, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc zeroinitializer], align 16
@gimp_rotation_type_get_type.type = internal global i64 0, align 8
@.str.200 = private unnamed_addr constant [17 x i8] c"GimpRotationType\00", align 1
@.str.201 = private unnamed_addr constant [14 x i8] c"rotation-type\00", align 1
@gimp_select_criterion_get_type.values = internal constant [8 x %struct._GEnumValue] [%struct._GEnumValue { i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.202, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.203, i32 0, i32 0) }, %struct._GEnumValue { i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.204, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.205, i32 0, i32 0) }, %struct._GEnumValue { i32 2, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.206, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.207, i32 0, i32 0) }, %struct._GEnumValue { i32 3, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.208, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.209, i32 0, i32 0) }, %struct._GEnumValue { i32 4, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.210, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.211, i32 0, i32 0) }, %struct._GEnumValue { i32 5, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.212, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.213, i32 0, i32 0) }, %struct._GEnumValue { i32 6, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.214, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.215, i32 0, i32 0) }, %struct._GEnumValue zeroinitializer], align 16
@.str.202 = private unnamed_addr constant [32 x i8] c"GIMP_SELECT_CRITERION_COMPOSITE\00", align 1
@.str.203 = private unnamed_addr constant [10 x i8] c"composite\00", align 1
@.str.204 = private unnamed_addr constant [24 x i8] c"GIMP_SELECT_CRITERION_R\00", align 1
@.str.205 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.206 = private unnamed_addr constant [24 x i8] c"GIMP_SELECT_CRITERION_G\00", align 1
@.str.207 = private unnamed_addr constant [2 x i8] c"g\00", align 1
@.str.208 = private unnamed_addr constant [24 x i8] c"GIMP_SELECT_CRITERION_B\00", align 1
@.str.209 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.210 = private unnamed_addr constant [24 x i8] c"GIMP_SELECT_CRITERION_H\00", align 1
@.str.211 = private unnamed_addr constant [2 x i8] c"h\00", align 1
@.str.212 = private unnamed_addr constant [24 x i8] c"GIMP_SELECT_CRITERION_S\00", align 1
@.str.213 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.214 = private unnamed_addr constant [24 x i8] c"GIMP_SELECT_CRITERION_V\00", align 1
@.str.215 = private unnamed_addr constant [2 x i8] c"v\00", align 1
@gimp_select_criterion_get_type.descs = internal constant [8 x %struct._GimpEnumDesc] [%struct._GimpEnumDesc { i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.202, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.204, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 2, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.206, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 3, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.208, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 4, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.210, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 5, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.212, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 6, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.214, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc zeroinitializer], align 16
@gimp_select_criterion_get_type.type = internal global i64 0, align 8
@.str.216 = private unnamed_addr constant [20 x i8] c"GimpSelectCriterion\00", align 1
@.str.217 = private unnamed_addr constant [17 x i8] c"select-criterion\00", align 1
@get_type_funcs = internal constant [53 x i64 ()*] [i64 ()* @gimp_add_mask_type_get_type, i64 ()* @gimp_blend_mode_get_type, i64 ()* @gimp_brush_application_mode_get_type, i64 ()* @gimp_brush_generated_shape_get_type, i64 ()* @gimp_bucket_fill_mode_get_type, i64 ()* @gimp_channel_ops_get_type, i64 ()* @gimp_channel_type_get_type, i64 ()* @gimp_clone_type_get_type, i64 ()* @gimp_convert_dither_type_get_type, i64 ()* @gimp_convert_palette_type_get_type, i64 ()* @gimp_convolution_type_get_type, i64 ()* @gimp_convolve_type_get_type, i64 ()* @gimp_desaturate_mode_get_type, i64 ()* @gimp_dodge_burn_type_get_type, i64 ()* @gimp_fill_type_get_type, i64 ()* @gimp_foreground_extract_mode_get_type, i64 ()* @gimp_gradient_segment_color_get_type, i64 ()* @gimp_gradient_segment_type_get_type, i64 ()* @gimp_gradient_type_get_type, i64 ()* @gimp_grid_style_get_type, i64 ()* @gimp_histogram_channel_get_type, i64 ()* @gimp_hue_range_get_type, i64 ()* @gimp_icon_type_get_type, i64 ()* @gimp_image_base_type_get_type, i64 ()* @gimp_image_type_get_type, i64 ()* @gimp_ink_blob_type_get_type, i64 ()* @gimp_interpolation_type_get_type, i64 ()* @gimp_layer_mode_effects_get_type, i64 ()* @gimp_mask_apply_mode_get_type, i64 ()* @gimp_merge_type_get_type, i64 ()* @gimp_message_handler_type_get_type, i64 ()* @gimp_offset_type_get_type, i64 ()* @gimp_orientation_type_get_type, i64 ()* @gimp_pdb_arg_type_get_type, i64 ()* @gimp_pdb_error_handler_get_type, i64 ()* @gimp_pdb_proc_type_get_type, i64 ()* @gimp_pdb_status_type_get_type, i64 ()* @gimp_paint_application_mode_get_type, i64 ()* @gimp_progress_command_get_type, i64 ()* @gimp_repeat_mode_get_type, i64 ()* @gimp_rotation_type_get_type, i64 ()* @gimp_run_mode_get_type, i64 ()* @gimp_select_criterion_get_type, i64 ()* @gimp_size_type_get_type, i64 ()* @gimp_stack_trace_mode_get_type, i64 ()* @gimp_text_direction_get_type, i64 ()* @gimp_text_hint_style_get_type, i64 ()* @gimp_text_justification_get_type, i64 ()* @gimp_transfer_mode_get_type, i64 ()* @gimp_transform_direction_get_type, i64 ()* @gimp_transform_resize_get_type, i64 ()* @gimp_user_directory_get_type, i64 ()* @gimp_vectors_stroke_type_get_type], align 16
@enums_initialized = internal global i32 0, align 4
@.str.218 = private unnamed_addr constant [8 x i8] c"LibGimp\00", align 1
@__func__.gimp_enums_get_type_names = private unnamed_addr constant [26 x i8] c"gimp_enums_get_type_names\00", align 1
@.str.219 = private unnamed_addr constant [21 x i8] c"n_type_names != NULL\00", align 1
@type_names = internal constant [53 x i8*] [i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.220, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.221, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.222, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.223, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.224, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.225, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.226, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.227, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.228, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.81, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.229, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.230, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.93, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.109, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.231, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.232, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.233, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.114, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.234, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.162, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.168, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.178, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.235, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.184, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.192, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.236, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.237, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.238, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.239, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.240, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.241, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.242, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.200, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.243, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.216, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.244, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.245, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.246, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.247, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.248, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.249, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.250, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.251, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.252, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.253, i32 0, i32 0)], align 16
@.str.220 = private unnamed_addr constant [16 x i8] c"GimpAddMaskType\00", align 1
@.str.221 = private unnamed_addr constant [14 x i8] c"GimpBlendMode\00", align 1
@.str.222 = private unnamed_addr constant [19 x i8] c"GimpBucketFillMode\00", align 1
@.str.223 = private unnamed_addr constant [15 x i8] c"GimpChannelOps\00", align 1
@.str.224 = private unnamed_addr constant [16 x i8] c"GimpChannelType\00", align 1
@.str.225 = private unnamed_addr constant [14 x i8] c"GimpCloneType\00", align 1
@.str.226 = private unnamed_addr constant [19 x i8] c"GimpDesaturateMode\00", align 1
@.str.227 = private unnamed_addr constant [18 x i8] c"GimpDodgeBurnType\00", align 1
@.str.228 = private unnamed_addr constant [26 x i8] c"GimpForegroundExtractMode\00", align 1
@.str.229 = private unnamed_addr constant [17 x i8] c"GimpGradientType\00", align 1
@.str.230 = private unnamed_addr constant [14 x i8] c"GimpGridStyle\00", align 1
@.str.231 = private unnamed_addr constant [13 x i8] c"GimpIconType\00", align 1
@.str.232 = private unnamed_addr constant [18 x i8] c"GimpImageBaseType\00", align 1
@.str.233 = private unnamed_addr constant [14 x i8] c"GimpImageType\00", align 1
@.str.234 = private unnamed_addr constant [22 x i8] c"GimpInterpolationType\00", align 1
@.str.235 = private unnamed_addr constant [23 x i8] c"GimpMessageHandlerType\00", align 1
@.str.236 = private unnamed_addr constant [15 x i8] c"GimpPDBArgType\00", align 1
@.str.237 = private unnamed_addr constant [20 x i8] c"GimpPDBErrorHandler\00", align 1
@.str.238 = private unnamed_addr constant [16 x i8] c"GimpPDBProcType\00", align 1
@.str.239 = private unnamed_addr constant [18 x i8] c"GimpPDBStatusType\00", align 1
@.str.240 = private unnamed_addr constant [25 x i8] c"GimpPaintApplicationMode\00", align 1
@.str.241 = private unnamed_addr constant [20 x i8] c"GimpProgressCommand\00", align 1
@.str.242 = private unnamed_addr constant [15 x i8] c"GimpRepeatMode\00", align 1
@.str.243 = private unnamed_addr constant [12 x i8] c"GimpRunMode\00", align 1
@.str.244 = private unnamed_addr constant [13 x i8] c"GimpSizeType\00", align 1
@.str.245 = private unnamed_addr constant [19 x i8] c"GimpStackTraceMode\00", align 1
@.str.246 = private unnamed_addr constant [18 x i8] c"GimpTextDirection\00", align 1
@.str.247 = private unnamed_addr constant [18 x i8] c"GimpTextHintStyle\00", align 1
@.str.248 = private unnamed_addr constant [22 x i8] c"GimpTextJustification\00", align 1
@.str.249 = private unnamed_addr constant [17 x i8] c"GimpTransferMode\00", align 1
@.str.250 = private unnamed_addr constant [23 x i8] c"GimpTransformDirection\00", align 1
@.str.251 = private unnamed_addr constant [20 x i8] c"GimpTransformResize\00", align 1
@.str.252 = private unnamed_addr constant [18 x i8] c"GimpUserDirectory\00", align 1
@.str.253 = private unnamed_addr constant [22 x i8] c"GimpVectorsStrokeType\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_brush_application_mode_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_brush_application_mode_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_enum_register_static(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i32 0, i32 0), %struct._GEnumValue* getelementptr inbounds ([3 x %struct._GEnumValue], [3 x %struct._GEnumValue]* @gimp_brush_application_mode_get_type.values, i32 0, i32 0))
  store i64 %call, i64* @gimp_brush_application_mode_get_type.type, align 8
  %1 = load i64, i64* @gimp_brush_application_mode_get_type.type, align 8
  call void @gimp_type_set_translation_domain(i64 %1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0))
  %2 = load i64, i64* @gimp_brush_application_mode_get_type.type, align 8
  call void @gimp_type_set_translation_context(i64 %2, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i32 0, i32 0))
  %3 = load i64, i64* @gimp_brush_application_mode_get_type.type, align 8
  call void @gimp_enum_set_value_descriptions(i64 %3, %struct._GimpEnumDesc* getelementptr inbounds ([3 x %struct._GimpEnumDesc], [3 x %struct._GimpEnumDesc]* @gimp_brush_application_mode_get_type.descs, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i64, i64* @gimp_brush_application_mode_get_type.type, align 8
  ret i64 %4
}

declare i64 @g_enum_register_static(i8*, %struct._GEnumValue*) #1

declare void @gimp_type_set_translation_domain(i64, i8*) #1

declare void @gimp_type_set_translation_context(i64, i8*) #1

declare void @gimp_enum_set_value_descriptions(i64, %struct._GimpEnumDesc*) #1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_brush_generated_shape_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_brush_generated_shape_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_enum_register_static(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i32 0, i32 0), %struct._GEnumValue* getelementptr inbounds ([4 x %struct._GEnumValue], [4 x %struct._GEnumValue]* @gimp_brush_generated_shape_get_type.values, i32 0, i32 0))
  store i64 %call, i64* @gimp_brush_generated_shape_get_type.type, align 8
  %1 = load i64, i64* @gimp_brush_generated_shape_get_type.type, align 8
  call void @gimp_type_set_translation_domain(i64 %1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0))
  %2 = load i64, i64* @gimp_brush_generated_shape_get_type.type, align 8
  call void @gimp_type_set_translation_context(i64 %2, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i32 0, i32 0))
  %3 = load i64, i64* @gimp_brush_generated_shape_get_type.type, align 8
  call void @gimp_enum_set_value_descriptions(i64 %3, %struct._GimpEnumDesc* getelementptr inbounds ([4 x %struct._GimpEnumDesc], [4 x %struct._GimpEnumDesc]* @gimp_brush_generated_shape_get_type.descs, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i64, i64* @gimp_brush_generated_shape_get_type.type, align 8
  ret i64 %4
}

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_convert_dither_type_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_convert_dither_type_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_enum_register_static(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.23, i32 0, i32 0), %struct._GEnumValue* getelementptr inbounds ([5 x %struct._GEnumValue], [5 x %struct._GEnumValue]* @gimp_convert_dither_type_get_type.values, i32 0, i32 0))
  store i64 %call, i64* @gimp_convert_dither_type_get_type.type, align 8
  %1 = load i64, i64* @gimp_convert_dither_type_get_type.type, align 8
  call void @gimp_type_set_translation_domain(i64 %1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0))
  %2 = load i64, i64* @gimp_convert_dither_type_get_type.type, align 8
  call void @gimp_type_set_translation_context(i64 %2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.24, i32 0, i32 0))
  %3 = load i64, i64* @gimp_convert_dither_type_get_type.type, align 8
  call void @gimp_enum_set_value_descriptions(i64 %3, %struct._GimpEnumDesc* getelementptr inbounds ([5 x %struct._GimpEnumDesc], [5 x %struct._GimpEnumDesc]* @gimp_convert_dither_type_get_type.descs, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i64, i64* @gimp_convert_dither_type_get_type.type, align 8
  ret i64 %4
}

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_convert_palette_type_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_convert_palette_type_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_enum_register_static(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.35, i32 0, i32 0), %struct._GEnumValue* getelementptr inbounds ([6 x %struct._GEnumValue], [6 x %struct._GEnumValue]* @gimp_convert_palette_type_get_type.values, i32 0, i32 0))
  store i64 %call, i64* @gimp_convert_palette_type_get_type.type, align 8
  %1 = load i64, i64* @gimp_convert_palette_type_get_type.type, align 8
  call void @gimp_type_set_translation_domain(i64 %1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0))
  %2 = load i64, i64* @gimp_convert_palette_type_get_type.type, align 8
  call void @gimp_type_set_translation_context(i64 %2, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.36, i32 0, i32 0))
  %3 = load i64, i64* @gimp_convert_palette_type_get_type.type, align 8
  call void @gimp_enum_set_value_descriptions(i64 %3, %struct._GimpEnumDesc* getelementptr inbounds ([6 x %struct._GimpEnumDesc], [6 x %struct._GimpEnumDesc]* @gimp_convert_palette_type_get_type.descs, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i64, i64* @gimp_convert_palette_type_get_type.type, align 8
  ret i64 %4
}

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_convolution_type_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_convolution_type_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_enum_register_static(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.43, i32 0, i32 0), %struct._GEnumValue* getelementptr inbounds ([4 x %struct._GEnumValue], [4 x %struct._GEnumValue]* @gimp_convolution_type_get_type.values, i32 0, i32 0))
  store i64 %call, i64* @gimp_convolution_type_get_type.type, align 8
  %1 = load i64, i64* @gimp_convolution_type_get_type.type, align 8
  call void @gimp_type_set_translation_domain(i64 %1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0))
  %2 = load i64, i64* @gimp_convolution_type_get_type.type, align 8
  call void @gimp_type_set_translation_context(i64 %2, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.44, i32 0, i32 0))
  %3 = load i64, i64* @gimp_convolution_type_get_type.type, align 8
  call void @gimp_enum_set_value_descriptions(i64 %3, %struct._GimpEnumDesc* getelementptr inbounds ([4 x %struct._GimpEnumDesc], [4 x %struct._GimpEnumDesc]* @gimp_convolution_type_get_type.descs, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i64, i64* @gimp_convolution_type_get_type.type, align 8
  ret i64 %4
}

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_convolve_type_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_convolve_type_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_enum_register_static(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.49, i32 0, i32 0), %struct._GEnumValue* getelementptr inbounds ([3 x %struct._GEnumValue], [3 x %struct._GEnumValue]* @gimp_convolve_type_get_type.values, i32 0, i32 0))
  store i64 %call, i64* @gimp_convolve_type_get_type.type, align 8
  %1 = load i64, i64* @gimp_convolve_type_get_type.type, align 8
  call void @gimp_type_set_translation_domain(i64 %1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0))
  %2 = load i64, i64* @gimp_convolve_type_get_type.type, align 8
  call void @gimp_type_set_translation_context(i64 %2, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.50, i32 0, i32 0))
  %3 = load i64, i64* @gimp_convolve_type_get_type.type, align 8
  call void @gimp_enum_set_value_descriptions(i64 %3, %struct._GimpEnumDesc* getelementptr inbounds ([3 x %struct._GimpEnumDesc], [3 x %struct._GimpEnumDesc]* @gimp_convolve_type_get_type.descs, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i64, i64* @gimp_convolve_type_get_type.type, align 8
  ret i64 %4
}

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_fill_type_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_fill_type_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_enum_register_static(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.61, i32 0, i32 0), %struct._GEnumValue* getelementptr inbounds ([6 x %struct._GEnumValue], [6 x %struct._GEnumValue]* @gimp_fill_type_get_type.values, i32 0, i32 0))
  store i64 %call, i64* @gimp_fill_type_get_type.type, align 8
  %1 = load i64, i64* @gimp_fill_type_get_type.type, align 8
  call void @gimp_type_set_translation_domain(i64 %1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0))
  %2 = load i64, i64* @gimp_fill_type_get_type.type, align 8
  call void @gimp_type_set_translation_context(i64 %2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i32 0, i32 0))
  %3 = load i64, i64* @gimp_fill_type_get_type.type, align 8
  call void @gimp_enum_set_value_descriptions(i64 %3, %struct._GimpEnumDesc* getelementptr inbounds ([6 x %struct._GimpEnumDesc], [6 x %struct._GimpEnumDesc]* @gimp_fill_type_get_type.descs, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i64, i64* @gimp_fill_type_get_type.type, align 8
  ret i64 %4
}

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_gradient_segment_color_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_gradient_segment_color_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_enum_register_static(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.69, i32 0, i32 0), %struct._GEnumValue* getelementptr inbounds ([4 x %struct._GEnumValue], [4 x %struct._GEnumValue]* @gimp_gradient_segment_color_get_type.values, i32 0, i32 0))
  store i64 %call, i64* @gimp_gradient_segment_color_get_type.type, align 8
  %1 = load i64, i64* @gimp_gradient_segment_color_get_type.type, align 8
  call void @gimp_type_set_translation_domain(i64 %1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0))
  %2 = load i64, i64* @gimp_gradient_segment_color_get_type.type, align 8
  call void @gimp_type_set_translation_context(i64 %2, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.70, i32 0, i32 0))
  %3 = load i64, i64* @gimp_gradient_segment_color_get_type.type, align 8
  call void @gimp_enum_set_value_descriptions(i64 %3, %struct._GimpEnumDesc* getelementptr inbounds ([4 x %struct._GimpEnumDesc], [4 x %struct._GimpEnumDesc]* @gimp_gradient_segment_color_get_type.descs, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i64, i64* @gimp_gradient_segment_color_get_type.type, align 8
  ret i64 %4
}

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_gradient_segment_type_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_gradient_segment_type_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_enum_register_static(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.81, i32 0, i32 0), %struct._GEnumValue* getelementptr inbounds ([6 x %struct._GEnumValue], [6 x %struct._GEnumValue]* @gimp_gradient_segment_type_get_type.values, i32 0, i32 0))
  store i64 %call, i64* @gimp_gradient_segment_type_get_type.type, align 8
  %1 = load i64, i64* @gimp_gradient_segment_type_get_type.type, align 8
  call void @gimp_type_set_translation_domain(i64 %1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0))
  %2 = load i64, i64* @gimp_gradient_segment_type_get_type.type, align 8
  call void @gimp_type_set_translation_context(i64 %2, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.82, i32 0, i32 0))
  %3 = load i64, i64* @gimp_gradient_segment_type_get_type.type, align 8
  call void @gimp_enum_set_value_descriptions(i64 %3, %struct._GimpEnumDesc* getelementptr inbounds ([6 x %struct._GimpEnumDesc], [6 x %struct._GimpEnumDesc]* @gimp_gradient_segment_type_get_type.descs, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i64, i64* @gimp_gradient_segment_type_get_type.type, align 8
  ret i64 %4
}

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_histogram_channel_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_histogram_channel_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_enum_register_static(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.93, i32 0, i32 0), %struct._GEnumValue* getelementptr inbounds ([6 x %struct._GEnumValue], [6 x %struct._GEnumValue]* @gimp_histogram_channel_get_type.values, i32 0, i32 0))
  store i64 %call, i64* @gimp_histogram_channel_get_type.type, align 8
  %1 = load i64, i64* @gimp_histogram_channel_get_type.type, align 8
  call void @gimp_type_set_translation_domain(i64 %1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0))
  %2 = load i64, i64* @gimp_histogram_channel_get_type.type, align 8
  call void @gimp_type_set_translation_context(i64 %2, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.94, i32 0, i32 0))
  %3 = load i64, i64* @gimp_histogram_channel_get_type.type, align 8
  call void @gimp_enum_set_value_descriptions(i64 %3, %struct._GimpEnumDesc* getelementptr inbounds ([6 x %struct._GimpEnumDesc], [6 x %struct._GimpEnumDesc]* @gimp_histogram_channel_get_type.descs, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i64, i64* @gimp_histogram_channel_get_type.type, align 8
  ret i64 %4
}

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_hue_range_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_hue_range_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_enum_register_static(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.109, i32 0, i32 0), %struct._GEnumValue* getelementptr inbounds ([8 x %struct._GEnumValue], [8 x %struct._GEnumValue]* @gimp_hue_range_get_type.values, i32 0, i32 0))
  store i64 %call, i64* @gimp_hue_range_get_type.type, align 8
  %1 = load i64, i64* @gimp_hue_range_get_type.type, align 8
  call void @gimp_type_set_translation_domain(i64 %1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0))
  %2 = load i64, i64* @gimp_hue_range_get_type.type, align 8
  call void @gimp_type_set_translation_context(i64 %2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.110, i32 0, i32 0))
  %3 = load i64, i64* @gimp_hue_range_get_type.type, align 8
  call void @gimp_enum_set_value_descriptions(i64 %3, %struct._GimpEnumDesc* getelementptr inbounds ([8 x %struct._GimpEnumDesc], [8 x %struct._GimpEnumDesc]* @gimp_hue_range_get_type.descs, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i64, i64* @gimp_hue_range_get_type.type, align 8
  ret i64 %4
}

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_ink_blob_type_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_ink_blob_type_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_enum_register_static(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.114, i32 0, i32 0), %struct._GEnumValue* getelementptr inbounds ([4 x %struct._GEnumValue], [4 x %struct._GEnumValue]* @gimp_ink_blob_type_get_type.values, i32 0, i32 0))
  store i64 %call, i64* @gimp_ink_blob_type_get_type.type, align 8
  %1 = load i64, i64* @gimp_ink_blob_type_get_type.type, align 8
  call void @gimp_type_set_translation_domain(i64 %1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0))
  %2 = load i64, i64* @gimp_ink_blob_type_get_type.type, align 8
  call void @gimp_type_set_translation_context(i64 %2, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.115, i32 0, i32 0))
  %3 = load i64, i64* @gimp_ink_blob_type_get_type.type, align 8
  call void @gimp_enum_set_value_descriptions(i64 %3, %struct._GimpEnumDesc* getelementptr inbounds ([4 x %struct._GimpEnumDesc], [4 x %struct._GimpEnumDesc]* @gimp_ink_blob_type_get_type.descs, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i64, i64* @gimp_ink_blob_type_get_type.type, align 8
  ret i64 %4
}

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_layer_mode_effects_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_layer_mode_effects_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_enum_register_static(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.162, i32 0, i32 0), %struct._GEnumValue* getelementptr inbounds ([24 x %struct._GEnumValue], [24 x %struct._GEnumValue]* @gimp_layer_mode_effects_get_type.values, i32 0, i32 0))
  store i64 %call, i64* @gimp_layer_mode_effects_get_type.type, align 8
  %1 = load i64, i64* @gimp_layer_mode_effects_get_type.type, align 8
  call void @gimp_type_set_translation_domain(i64 %1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0))
  %2 = load i64, i64* @gimp_layer_mode_effects_get_type.type, align 8
  call void @gimp_type_set_translation_context(i64 %2, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.163, i32 0, i32 0))
  %3 = load i64, i64* @gimp_layer_mode_effects_get_type.type, align 8
  call void @gimp_enum_set_value_descriptions(i64 %3, %struct._GimpEnumDesc* getelementptr inbounds ([24 x %struct._GimpEnumDesc], [24 x %struct._GimpEnumDesc]* @gimp_layer_mode_effects_get_type.descs, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i64, i64* @gimp_layer_mode_effects_get_type.type, align 8
  ret i64 %4
}

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_mask_apply_mode_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_mask_apply_mode_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_enum_register_static(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.168, i32 0, i32 0), %struct._GEnumValue* getelementptr inbounds ([3 x %struct._GEnumValue], [3 x %struct._GEnumValue]* @gimp_mask_apply_mode_get_type.values, i32 0, i32 0))
  store i64 %call, i64* @gimp_mask_apply_mode_get_type.type, align 8
  %1 = load i64, i64* @gimp_mask_apply_mode_get_type.type, align 8
  call void @gimp_type_set_translation_domain(i64 %1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0))
  %2 = load i64, i64* @gimp_mask_apply_mode_get_type.type, align 8
  call void @gimp_type_set_translation_context(i64 %2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.169, i32 0, i32 0))
  %3 = load i64, i64* @gimp_mask_apply_mode_get_type.type, align 8
  call void @gimp_enum_set_value_descriptions(i64 %3, %struct._GimpEnumDesc* getelementptr inbounds ([3 x %struct._GimpEnumDesc], [3 x %struct._GimpEnumDesc]* @gimp_mask_apply_mode_get_type.descs, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i64, i64* @gimp_mask_apply_mode_get_type.type, align 8
  ret i64 %4
}

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_merge_type_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_merge_type_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_enum_register_static(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.178, i32 0, i32 0), %struct._GEnumValue* getelementptr inbounds ([5 x %struct._GEnumValue], [5 x %struct._GEnumValue]* @gimp_merge_type_get_type.values, i32 0, i32 0))
  store i64 %call, i64* @gimp_merge_type_get_type.type, align 8
  %1 = load i64, i64* @gimp_merge_type_get_type.type, align 8
  call void @gimp_type_set_translation_domain(i64 %1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0))
  %2 = load i64, i64* @gimp_merge_type_get_type.type, align 8
  call void @gimp_type_set_translation_context(i64 %2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.179, i32 0, i32 0))
  %3 = load i64, i64* @gimp_merge_type_get_type.type, align 8
  call void @gimp_enum_set_value_descriptions(i64 %3, %struct._GimpEnumDesc* getelementptr inbounds ([5 x %struct._GimpEnumDesc], [5 x %struct._GimpEnumDesc]* @gimp_merge_type_get_type.descs, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i64, i64* @gimp_merge_type_get_type.type, align 8
  ret i64 %4
}

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_offset_type_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_offset_type_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_enum_register_static(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.184, i32 0, i32 0), %struct._GEnumValue* getelementptr inbounds ([3 x %struct._GEnumValue], [3 x %struct._GEnumValue]* @gimp_offset_type_get_type.values, i32 0, i32 0))
  store i64 %call, i64* @gimp_offset_type_get_type.type, align 8
  %1 = load i64, i64* @gimp_offset_type_get_type.type, align 8
  call void @gimp_type_set_translation_domain(i64 %1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0))
  %2 = load i64, i64* @gimp_offset_type_get_type.type, align 8
  call void @gimp_type_set_translation_context(i64 %2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.185, i32 0, i32 0))
  %3 = load i64, i64* @gimp_offset_type_get_type.type, align 8
  call void @gimp_enum_set_value_descriptions(i64 %3, %struct._GimpEnumDesc* getelementptr inbounds ([3 x %struct._GimpEnumDesc], [3 x %struct._GimpEnumDesc]* @gimp_offset_type_get_type.descs, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i64, i64* @gimp_offset_type_get_type.type, align 8
  ret i64 %4
}

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_orientation_type_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_orientation_type_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_enum_register_static(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.192, i32 0, i32 0), %struct._GEnumValue* getelementptr inbounds ([4 x %struct._GEnumValue], [4 x %struct._GEnumValue]* @gimp_orientation_type_get_type.values, i32 0, i32 0))
  store i64 %call, i64* @gimp_orientation_type_get_type.type, align 8
  %1 = load i64, i64* @gimp_orientation_type_get_type.type, align 8
  call void @gimp_type_set_translation_domain(i64 %1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0))
  %2 = load i64, i64* @gimp_orientation_type_get_type.type, align 8
  call void @gimp_type_set_translation_context(i64 %2, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.193, i32 0, i32 0))
  %3 = load i64, i64* @gimp_orientation_type_get_type.type, align 8
  call void @gimp_enum_set_value_descriptions(i64 %3, %struct._GimpEnumDesc* getelementptr inbounds ([4 x %struct._GimpEnumDesc], [4 x %struct._GimpEnumDesc]* @gimp_orientation_type_get_type.descs, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i64, i64* @gimp_orientation_type_get_type.type, align 8
  ret i64 %4
}

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_rotation_type_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_rotation_type_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_enum_register_static(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.200, i32 0, i32 0), %struct._GEnumValue* getelementptr inbounds ([4 x %struct._GEnumValue], [4 x %struct._GEnumValue]* @gimp_rotation_type_get_type.values, i32 0, i32 0))
  store i64 %call, i64* @gimp_rotation_type_get_type.type, align 8
  %1 = load i64, i64* @gimp_rotation_type_get_type.type, align 8
  call void @gimp_type_set_translation_domain(i64 %1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0))
  %2 = load i64, i64* @gimp_rotation_type_get_type.type, align 8
  call void @gimp_type_set_translation_context(i64 %2, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.201, i32 0, i32 0))
  %3 = load i64, i64* @gimp_rotation_type_get_type.type, align 8
  call void @gimp_enum_set_value_descriptions(i64 %3, %struct._GimpEnumDesc* getelementptr inbounds ([4 x %struct._GimpEnumDesc], [4 x %struct._GimpEnumDesc]* @gimp_rotation_type_get_type.descs, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i64, i64* @gimp_rotation_type_get_type.type, align 8
  ret i64 %4
}

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_select_criterion_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_select_criterion_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_enum_register_static(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.216, i32 0, i32 0), %struct._GEnumValue* getelementptr inbounds ([8 x %struct._GEnumValue], [8 x %struct._GEnumValue]* @gimp_select_criterion_get_type.values, i32 0, i32 0))
  store i64 %call, i64* @gimp_select_criterion_get_type.type, align 8
  %1 = load i64, i64* @gimp_select_criterion_get_type.type, align 8
  call void @gimp_type_set_translation_domain(i64 %1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0))
  %2 = load i64, i64* @gimp_select_criterion_get_type.type, align 8
  call void @gimp_type_set_translation_context(i64 %2, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.217, i32 0, i32 0))
  %3 = load i64, i64* @gimp_select_criterion_get_type.type, align 8
  call void @gimp_enum_set_value_descriptions(i64 %3, %struct._GimpEnumDesc* getelementptr inbounds ([8 x %struct._GimpEnumDesc], [8 x %struct._GimpEnumDesc]* @gimp_select_criterion_get_type.descs, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i64, i64* @gimp_select_criterion_get_type.type, align 8
  ret i64 %4
}

; Function Attrs: nounwind uwtable
define void @gimp_enums_init() #2 {
entry:
  %funcs = alloca i64 ()**, align 8
  %i = alloca i32, align 4
  %type = alloca i64, align 8
  store i64 ()** getelementptr inbounds ([53 x i64 ()*], [53 x i64 ()*]* @get_type_funcs, i32 0, i32 0), i64 ()*** %funcs, align 8
  %0 = load i32, i32* @enums_initialized, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i32, i32* %i, align 4
  %conv = sext i32 %1 to i64
  %cmp = icmp ult i64 %conv, 53
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i64 ()**, i64 ()*** %funcs, align 8
  %3 = load i64 ()*, i64 ()** %2, align 8
  %call = call i64 %3()
  store i64 %call, i64* %type, align 8
  %4 = load i64, i64* %type, align 8
  %call2 = call i8* @g_type_class_ref(i64 %4)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4
  %6 = load i64 ()**, i64 ()*** %funcs, align 8
  %incdec.ptr = getelementptr inbounds i64 ()*, i64 ()** %6, i32 1
  store i64 ()** %incdec.ptr, i64 ()*** %funcs, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* @enums_initialized, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then
  ret void
}

declare i8* @g_type_class_ref(i64) #1

; Function Attrs: nounwind uwtable
define i8** @gimp_enums_get_type_names(i32* %n_type_names) #2 {
entry:
  %retval = alloca i8**, align 8
  %n_type_names.addr = alloca i32*, align 8
  store i32* %n_type_names, i32** %n_type_names.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i32*, i32** %n_type_names.addr, align 8
  %cmp = icmp ne i32* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.218, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_enums_get_type_names, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.219, i32 0, i32 0))
  store i8** null, i8*** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load i32*, i32** %n_type_names.addr, align 8
  store i32 53, i32* %1, align 4
  store i8** getelementptr inbounds ([53 x i8*], [53 x i8*]* @type_names, i32 0, i32 0), i8*** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else
  %2 = load i8**, i8*** %retval
  ret i8** %2
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_add_mask_type_get_type() #3

; Function Attrs: nounwind readnone
declare i64 @gimp_blend_mode_get_type() #3

; Function Attrs: nounwind readnone
declare i64 @gimp_bucket_fill_mode_get_type() #3

; Function Attrs: nounwind readnone
declare i64 @gimp_channel_ops_get_type() #3

; Function Attrs: nounwind readnone
declare i64 @gimp_channel_type_get_type() #3

; Function Attrs: nounwind readnone
declare i64 @gimp_clone_type_get_type() #3

; Function Attrs: nounwind readnone
declare i64 @gimp_desaturate_mode_get_type() #3

; Function Attrs: nounwind readnone
declare i64 @gimp_dodge_burn_type_get_type() #3

; Function Attrs: nounwind readnone
declare i64 @gimp_foreground_extract_mode_get_type() #3

; Function Attrs: nounwind readnone
declare i64 @gimp_gradient_type_get_type() #3

; Function Attrs: nounwind readnone
declare i64 @gimp_grid_style_get_type() #3

; Function Attrs: nounwind readnone
declare i64 @gimp_icon_type_get_type() #3

; Function Attrs: nounwind readnone
declare i64 @gimp_image_base_type_get_type() #3

; Function Attrs: nounwind readnone
declare i64 @gimp_image_type_get_type() #3

; Function Attrs: nounwind readnone
declare i64 @gimp_interpolation_type_get_type() #3

; Function Attrs: nounwind readnone
declare i64 @gimp_message_handler_type_get_type() #3

; Function Attrs: nounwind readnone
declare i64 @gimp_pdb_arg_type_get_type() #3

; Function Attrs: nounwind readnone
declare i64 @gimp_pdb_error_handler_get_type() #3

; Function Attrs: nounwind readnone
declare i64 @gimp_pdb_proc_type_get_type() #3

; Function Attrs: nounwind readnone
declare i64 @gimp_pdb_status_type_get_type() #3

; Function Attrs: nounwind readnone
declare i64 @gimp_paint_application_mode_get_type() #3

; Function Attrs: nounwind readnone
declare i64 @gimp_progress_command_get_type() #3

; Function Attrs: nounwind readnone
declare i64 @gimp_repeat_mode_get_type() #3

; Function Attrs: nounwind readnone
declare i64 @gimp_run_mode_get_type() #3

; Function Attrs: nounwind readnone
declare i64 @gimp_size_type_get_type() #3

; Function Attrs: nounwind readnone
declare i64 @gimp_stack_trace_mode_get_type() #3

; Function Attrs: nounwind readnone
declare i64 @gimp_text_direction_get_type() #3

; Function Attrs: nounwind readnone
declare i64 @gimp_text_hint_style_get_type() #3

; Function Attrs: nounwind readnone
declare i64 @gimp_text_justification_get_type() #3

; Function Attrs: nounwind readnone
declare i64 @gimp_transfer_mode_get_type() #3

; Function Attrs: nounwind readnone
declare i64 @gimp_transform_direction_get_type() #3

; Function Attrs: nounwind readnone
declare i64 @gimp_transform_resize_get_type() #3

; Function Attrs: nounwind readnone
declare i64 @gimp_user_directory_get_type() #3

; Function Attrs: nounwind readnone
declare i64 @gimp_vectors_stroke_type_get_type() #3

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
