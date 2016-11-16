; ModuleID = './app/base/base-enums.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GEnumValue = type { i32, i8*, i8* }
%struct._GimpEnumDesc = type { i32, i8*, i8* }

@gimp_curve_type_get_type.values = internal constant [3 x %struct._GEnumValue] [%struct._GEnumValue { i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0) }, %struct._GEnumValue { i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0) }, %struct._GEnumValue zeroinitializer], align 16
@.str = private unnamed_addr constant [18 x i8] c"GIMP_CURVE_SMOOTH\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"smooth\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"GIMP_CURVE_FREE\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"free\00", align 1
@gimp_curve_type_get_type.descs = internal constant [3 x %struct._GimpEnumDesc] [%struct._GimpEnumDesc { i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc zeroinitializer], align 16
@.str.4 = private unnamed_addr constant [7 x i8] c"Smooth\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"Freehand\00", align 1
@gimp_curve_type_get_type.type = internal global i64 0, align 8
@.str.6 = private unnamed_addr constant [14 x i8] c"GimpCurveType\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"curve-type\00", align 1
@gimp_histogram_channel_get_type.values = internal constant [7 x %struct._GEnumValue] [%struct._GEnumValue { i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0) }, %struct._GEnumValue { i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0) }, %struct._GEnumValue { i32 2, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0) }, %struct._GEnumValue { i32 3, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0) }, %struct._GEnumValue { i32 4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0) }, %struct._GEnumValue { i32 5, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i32 0, i32 0) }, %struct._GEnumValue zeroinitializer], align 16
@.str.8 = private unnamed_addr constant [21 x i8] c"GIMP_HISTOGRAM_VALUE\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"value\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"GIMP_HISTOGRAM_RED\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"red\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"GIMP_HISTOGRAM_GREEN\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"green\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"GIMP_HISTOGRAM_BLUE\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"blue\00", align 1
@.str.16 = private unnamed_addr constant [21 x i8] c"GIMP_HISTOGRAM_ALPHA\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"alpha\00", align 1
@.str.18 = private unnamed_addr constant [19 x i8] c"GIMP_HISTOGRAM_RGB\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"rgb\00", align 1
@gimp_histogram_channel_get_type.descs = internal constant [7 x %struct._GimpEnumDesc] [%struct._GimpEnumDesc { i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc zeroinitializer], align 16
@.str.20 = private unnamed_addr constant [6 x i8] c"Value\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"Red\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"Green\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"Blue\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"Alpha\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"RGB\00", align 1
@gimp_histogram_channel_get_type.type = internal global i64 0, align 8
@.str.26 = private unnamed_addr constant [21 x i8] c"GimpHistogramChannel\00", align 1
@.str.27 = private unnamed_addr constant [18 x i8] c"histogram-channel\00", align 1
@gimp_layer_mode_effects_get_type.values = internal constant [27 x %struct._GEnumValue] [%struct._GEnumValue { i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i32 0, i32 0) }, %struct._GEnumValue { i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.31, i32 0, i32 0) }, %struct._GEnumValue { i32 2, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.33, i32 0, i32 0) }, %struct._GEnumValue { i32 3, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.35, i32 0, i32 0) }, %struct._GEnumValue { i32 4, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.37, i32 0, i32 0) }, %struct._GEnumValue { i32 5, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.39, i32 0, i32 0) }, %struct._GEnumValue { i32 6, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.41, i32 0, i32 0) }, %struct._GEnumValue { i32 7, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.43, i32 0, i32 0) }, %struct._GEnumValue { i32 8, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.45, i32 0, i32 0) }, %struct._GEnumValue { i32 9, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.47, i32 0, i32 0) }, %struct._GEnumValue { i32 10, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.49, i32 0, i32 0) }, %struct._GEnumValue { i32 11, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.51, i32 0, i32 0) }, %struct._GEnumValue { i32 12, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.53, i32 0, i32 0) }, %struct._GEnumValue { i32 13, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.55, i32 0, i32 0) }, %struct._GEnumValue { i32 14, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.57, i32 0, i32 0) }, %struct._GEnumValue { i32 15, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.59, i32 0, i32 0) }, %struct._GEnumValue { i32 16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.61, i32 0, i32 0) }, %struct._GEnumValue { i32 17, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.63, i32 0, i32 0) }, %struct._GEnumValue { i32 18, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.65, i32 0, i32 0) }, %struct._GEnumValue { i32 19, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.67, i32 0, i32 0) }, %struct._GEnumValue { i32 20, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.69, i32 0, i32 0) }, %struct._GEnumValue { i32 21, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.71, i32 0, i32 0) }, %struct._GEnumValue { i32 22, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.72, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.73, i32 0, i32 0) }, %struct._GEnumValue { i32 23, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.74, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.75, i32 0, i32 0) }, %struct._GEnumValue { i32 24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.76, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.77, i32 0, i32 0) }, %struct._GEnumValue { i32 25, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.79, i32 0, i32 0) }, %struct._GEnumValue zeroinitializer], align 16
@.str.28 = private unnamed_addr constant [17 x i8] c"GIMP_NORMAL_MODE\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c"normal-mode\00", align 1
@.str.30 = private unnamed_addr constant [19 x i8] c"GIMP_DISSOLVE_MODE\00", align 1
@.str.31 = private unnamed_addr constant [14 x i8] c"dissolve-mode\00", align 1
@.str.32 = private unnamed_addr constant [17 x i8] c"GIMP_BEHIND_MODE\00", align 1
@.str.33 = private unnamed_addr constant [12 x i8] c"behind-mode\00", align 1
@.str.34 = private unnamed_addr constant [19 x i8] c"GIMP_MULTIPLY_MODE\00", align 1
@.str.35 = private unnamed_addr constant [14 x i8] c"multiply-mode\00", align 1
@.str.36 = private unnamed_addr constant [17 x i8] c"GIMP_SCREEN_MODE\00", align 1
@.str.37 = private unnamed_addr constant [12 x i8] c"screen-mode\00", align 1
@.str.38 = private unnamed_addr constant [18 x i8] c"GIMP_OVERLAY_MODE\00", align 1
@.str.39 = private unnamed_addr constant [13 x i8] c"overlay-mode\00", align 1
@.str.40 = private unnamed_addr constant [21 x i8] c"GIMP_DIFFERENCE_MODE\00", align 1
@.str.41 = private unnamed_addr constant [16 x i8] c"difference-mode\00", align 1
@.str.42 = private unnamed_addr constant [19 x i8] c"GIMP_ADDITION_MODE\00", align 1
@.str.43 = private unnamed_addr constant [14 x i8] c"addition-mode\00", align 1
@.str.44 = private unnamed_addr constant [19 x i8] c"GIMP_SUBTRACT_MODE\00", align 1
@.str.45 = private unnamed_addr constant [14 x i8] c"subtract-mode\00", align 1
@.str.46 = private unnamed_addr constant [22 x i8] c"GIMP_DARKEN_ONLY_MODE\00", align 1
@.str.47 = private unnamed_addr constant [17 x i8] c"darken-only-mode\00", align 1
@.str.48 = private unnamed_addr constant [23 x i8] c"GIMP_LIGHTEN_ONLY_MODE\00", align 1
@.str.49 = private unnamed_addr constant [18 x i8] c"lighten-only-mode\00", align 1
@.str.50 = private unnamed_addr constant [14 x i8] c"GIMP_HUE_MODE\00", align 1
@.str.51 = private unnamed_addr constant [9 x i8] c"hue-mode\00", align 1
@.str.52 = private unnamed_addr constant [21 x i8] c"GIMP_SATURATION_MODE\00", align 1
@.str.53 = private unnamed_addr constant [16 x i8] c"saturation-mode\00", align 1
@.str.54 = private unnamed_addr constant [16 x i8] c"GIMP_COLOR_MODE\00", align 1
@.str.55 = private unnamed_addr constant [11 x i8] c"color-mode\00", align 1
@.str.56 = private unnamed_addr constant [16 x i8] c"GIMP_VALUE_MODE\00", align 1
@.str.57 = private unnamed_addr constant [11 x i8] c"value-mode\00", align 1
@.str.58 = private unnamed_addr constant [17 x i8] c"GIMP_DIVIDE_MODE\00", align 1
@.str.59 = private unnamed_addr constant [12 x i8] c"divide-mode\00", align 1
@.str.60 = private unnamed_addr constant [16 x i8] c"GIMP_DODGE_MODE\00", align 1
@.str.61 = private unnamed_addr constant [11 x i8] c"dodge-mode\00", align 1
@.str.62 = private unnamed_addr constant [15 x i8] c"GIMP_BURN_MODE\00", align 1
@.str.63 = private unnamed_addr constant [10 x i8] c"burn-mode\00", align 1
@.str.64 = private unnamed_addr constant [20 x i8] c"GIMP_HARDLIGHT_MODE\00", align 1
@.str.65 = private unnamed_addr constant [15 x i8] c"hardlight-mode\00", align 1
@.str.66 = private unnamed_addr constant [20 x i8] c"GIMP_SOFTLIGHT_MODE\00", align 1
@.str.67 = private unnamed_addr constant [15 x i8] c"softlight-mode\00", align 1
@.str.68 = private unnamed_addr constant [24 x i8] c"GIMP_GRAIN_EXTRACT_MODE\00", align 1
@.str.69 = private unnamed_addr constant [19 x i8] c"grain-extract-mode\00", align 1
@.str.70 = private unnamed_addr constant [22 x i8] c"GIMP_GRAIN_MERGE_MODE\00", align 1
@.str.71 = private unnamed_addr constant [17 x i8] c"grain-merge-mode\00", align 1
@.str.72 = private unnamed_addr constant [22 x i8] c"GIMP_COLOR_ERASE_MODE\00", align 1
@.str.73 = private unnamed_addr constant [17 x i8] c"color-erase-mode\00", align 1
@.str.74 = private unnamed_addr constant [16 x i8] c"GIMP_ERASE_MODE\00", align 1
@.str.75 = private unnamed_addr constant [11 x i8] c"erase-mode\00", align 1
@.str.76 = private unnamed_addr constant [18 x i8] c"GIMP_REPLACE_MODE\00", align 1
@.str.77 = private unnamed_addr constant [13 x i8] c"replace-mode\00", align 1
@.str.78 = private unnamed_addr constant [21 x i8] c"GIMP_ANTI_ERASE_MODE\00", align 1
@.str.79 = private unnamed_addr constant [16 x i8] c"anti-erase-mode\00", align 1
@gimp_layer_mode_effects_get_type.descs = internal constant [27 x %struct._GimpEnumDesc] [%struct._GimpEnumDesc { i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.80, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.81, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.82, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.83, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.84, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 5, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.85, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 6, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.86, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 7, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.87, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.88, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 9, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.89, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 10, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.90, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.91, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 12, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.92, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.93, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.94, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.95, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.96, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 18, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.97, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 19, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.98, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 20, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.99, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 21, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.100, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 22, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.101, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.102, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 24, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.103, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 25, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.104, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc zeroinitializer], align 16
@.str.80 = private unnamed_addr constant [7 x i8] c"Normal\00", align 1
@.str.81 = private unnamed_addr constant [9 x i8] c"Dissolve\00", align 1
@.str.82 = private unnamed_addr constant [7 x i8] c"Behind\00", align 1
@.str.83 = private unnamed_addr constant [9 x i8] c"Multiply\00", align 1
@.str.84 = private unnamed_addr constant [7 x i8] c"Screen\00", align 1
@.str.85 = private unnamed_addr constant [8 x i8] c"Overlay\00", align 1
@.str.86 = private unnamed_addr constant [11 x i8] c"Difference\00", align 1
@.str.87 = private unnamed_addr constant [9 x i8] c"Addition\00", align 1
@.str.88 = private unnamed_addr constant [9 x i8] c"Subtract\00", align 1
@.str.89 = private unnamed_addr constant [12 x i8] c"Darken only\00", align 1
@.str.90 = private unnamed_addr constant [13 x i8] c"Lighten only\00", align 1
@.str.91 = private unnamed_addr constant [4 x i8] c"Hue\00", align 1
@.str.92 = private unnamed_addr constant [11 x i8] c"Saturation\00", align 1
@.str.93 = private unnamed_addr constant [6 x i8] c"Color\00", align 1
@.str.94 = private unnamed_addr constant [7 x i8] c"Divide\00", align 1
@.str.95 = private unnamed_addr constant [6 x i8] c"Dodge\00", align 1
@.str.96 = private unnamed_addr constant [5 x i8] c"Burn\00", align 1
@.str.97 = private unnamed_addr constant [11 x i8] c"Hard light\00", align 1
@.str.98 = private unnamed_addr constant [11 x i8] c"Soft light\00", align 1
@.str.99 = private unnamed_addr constant [14 x i8] c"Grain extract\00", align 1
@.str.100 = private unnamed_addr constant [12 x i8] c"Grain merge\00", align 1
@.str.101 = private unnamed_addr constant [12 x i8] c"Color erase\00", align 1
@.str.102 = private unnamed_addr constant [6 x i8] c"Erase\00", align 1
@.str.103 = private unnamed_addr constant [8 x i8] c"Replace\00", align 1
@.str.104 = private unnamed_addr constant [11 x i8] c"Anti erase\00", align 1
@gimp_layer_mode_effects_get_type.type = internal global i64 0, align 8
@.str.105 = private unnamed_addr constant [21 x i8] c"GimpLayerModeEffects\00", align 1
@.str.106 = private unnamed_addr constant [19 x i8] c"layer-mode-effects\00", align 1
@gimp_hue_range_get_type.values = internal constant [8 x %struct._GEnumValue] [%struct._GEnumValue { i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.107, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.108, i32 0, i32 0) }, %struct._GEnumValue { i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.109, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.110, i32 0, i32 0) }, %struct._GEnumValue { i32 2, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.111, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.112, i32 0, i32 0) }, %struct._GEnumValue { i32 3, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.113, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.114, i32 0, i32 0) }, %struct._GEnumValue { i32 4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.115, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.116, i32 0, i32 0) }, %struct._GEnumValue { i32 5, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.117, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.118, i32 0, i32 0) }, %struct._GEnumValue { i32 6, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.119, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.120, i32 0, i32 0) }, %struct._GEnumValue zeroinitializer], align 16
@.str.107 = private unnamed_addr constant [14 x i8] c"GIMP_ALL_HUES\00", align 1
@.str.108 = private unnamed_addr constant [9 x i8] c"all-hues\00", align 1
@.str.109 = private unnamed_addr constant [14 x i8] c"GIMP_RED_HUES\00", align 1
@.str.110 = private unnamed_addr constant [9 x i8] c"red-hues\00", align 1
@.str.111 = private unnamed_addr constant [17 x i8] c"GIMP_YELLOW_HUES\00", align 1
@.str.112 = private unnamed_addr constant [12 x i8] c"yellow-hues\00", align 1
@.str.113 = private unnamed_addr constant [16 x i8] c"GIMP_GREEN_HUES\00", align 1
@.str.114 = private unnamed_addr constant [11 x i8] c"green-hues\00", align 1
@.str.115 = private unnamed_addr constant [15 x i8] c"GIMP_CYAN_HUES\00", align 1
@.str.116 = private unnamed_addr constant [10 x i8] c"cyan-hues\00", align 1
@.str.117 = private unnamed_addr constant [15 x i8] c"GIMP_BLUE_HUES\00", align 1
@.str.118 = private unnamed_addr constant [10 x i8] c"blue-hues\00", align 1
@.str.119 = private unnamed_addr constant [18 x i8] c"GIMP_MAGENTA_HUES\00", align 1
@.str.120 = private unnamed_addr constant [13 x i8] c"magenta-hues\00", align 1
@gimp_hue_range_get_type.descs = internal constant [8 x %struct._GimpEnumDesc] [%struct._GimpEnumDesc { i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.107, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.109, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 2, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.111, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 3, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.113, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.115, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 5, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.117, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 6, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.119, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc zeroinitializer], align 16
@gimp_hue_range_get_type.type = internal global i64 0, align 8
@.str.121 = private unnamed_addr constant [13 x i8] c"GimpHueRange\00", align 1
@.str.122 = private unnamed_addr constant [10 x i8] c"hue-range\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_curve_type_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_curve_type_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_enum_register_static(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0), %struct._GEnumValue* getelementptr inbounds ([3 x %struct._GEnumValue], [3 x %struct._GEnumValue]* @gimp_curve_type_get_type.values, i32 0, i32 0))
  store i64 %call, i64* @gimp_curve_type_get_type.type, align 8
  %1 = load i64, i64* @gimp_curve_type_get_type.type, align 8
  call void @gimp_type_set_translation_context(i64 %1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0))
  %2 = load i64, i64* @gimp_curve_type_get_type.type, align 8
  call void @gimp_enum_set_value_descriptions(i64 %2, %struct._GimpEnumDesc* getelementptr inbounds ([3 x %struct._GimpEnumDesc], [3 x %struct._GimpEnumDesc]* @gimp_curve_type_get_type.descs, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i64, i64* @gimp_curve_type_get_type.type, align 8
  ret i64 %3
}

declare i64 @g_enum_register_static(i8*, %struct._GEnumValue*) #1

declare void @gimp_type_set_translation_context(i64, i8*) #1

declare void @gimp_enum_set_value_descriptions(i64, %struct._GimpEnumDesc*) #1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_histogram_channel_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_histogram_channel_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_enum_register_static(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.26, i32 0, i32 0), %struct._GEnumValue* getelementptr inbounds ([7 x %struct._GEnumValue], [7 x %struct._GEnumValue]* @gimp_histogram_channel_get_type.values, i32 0, i32 0))
  store i64 %call, i64* @gimp_histogram_channel_get_type.type, align 8
  %1 = load i64, i64* @gimp_histogram_channel_get_type.type, align 8
  call void @gimp_type_set_translation_context(i64 %1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.27, i32 0, i32 0))
  %2 = load i64, i64* @gimp_histogram_channel_get_type.type, align 8
  call void @gimp_enum_set_value_descriptions(i64 %2, %struct._GimpEnumDesc* getelementptr inbounds ([7 x %struct._GimpEnumDesc], [7 x %struct._GimpEnumDesc]* @gimp_histogram_channel_get_type.descs, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i64, i64* @gimp_histogram_channel_get_type.type, align 8
  ret i64 %3
}

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_layer_mode_effects_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_layer_mode_effects_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_enum_register_static(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.105, i32 0, i32 0), %struct._GEnumValue* getelementptr inbounds ([27 x %struct._GEnumValue], [27 x %struct._GEnumValue]* @gimp_layer_mode_effects_get_type.values, i32 0, i32 0))
  store i64 %call, i64* @gimp_layer_mode_effects_get_type.type, align 8
  %1 = load i64, i64* @gimp_layer_mode_effects_get_type.type, align 8
  call void @gimp_type_set_translation_context(i64 %1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.106, i32 0, i32 0))
  %2 = load i64, i64* @gimp_layer_mode_effects_get_type.type, align 8
  call void @gimp_enum_set_value_descriptions(i64 %2, %struct._GimpEnumDesc* getelementptr inbounds ([27 x %struct._GimpEnumDesc], [27 x %struct._GimpEnumDesc]* @gimp_layer_mode_effects_get_type.descs, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i64, i64* @gimp_layer_mode_effects_get_type.type, align 8
  ret i64 %3
}

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_hue_range_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_hue_range_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_enum_register_static(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.121, i32 0, i32 0), %struct._GEnumValue* getelementptr inbounds ([8 x %struct._GEnumValue], [8 x %struct._GEnumValue]* @gimp_hue_range_get_type.values, i32 0, i32 0))
  store i64 %call, i64* @gimp_hue_range_get_type.type, align 8
  %1 = load i64, i64* @gimp_hue_range_get_type.type, align 8
  call void @gimp_type_set_translation_context(i64 %1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.122, i32 0, i32 0))
  %2 = load i64, i64* @gimp_hue_range_get_type.type, align 8
  call void @gimp_enum_set_value_descriptions(i64 %2, %struct._GimpEnumDesc* getelementptr inbounds ([8 x %struct._GimpEnumDesc], [8 x %struct._GimpEnumDesc]* @gimp_hue_range_get_type.descs, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i64, i64* @gimp_hue_range_get_type.type, align 8
  ret i64 %3
}

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
