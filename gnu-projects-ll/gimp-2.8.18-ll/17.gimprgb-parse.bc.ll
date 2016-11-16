; ModuleID = './libgimpcolor/gimprgb-parse.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ColorEntry = type { i8*, i8, i8, i8 }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpHSL = type { double, double, double, double }

@.str = private unnamed_addr constant [13 x i8] c"LibGimpColor\00", align 1
@__func__.gimp_rgb_parse_name = private unnamed_addr constant [20 x i8] c"gimp_rgb_parse_name\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"rgb != NULL\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"name != NULL\00", align 1
@__func__.gimp_rgb_parse_hex = private unnamed_addr constant [19 x i8] c"gimp_rgb_parse_hex\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"hex != NULL\00", align 1
@__func__.gimp_rgb_parse_css = private unnamed_addr constant [19 x i8] c"gimp_rgb_parse_css\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"css != NULL\00", align 1
@__func__.gimp_rgba_parse_css = private unnamed_addr constant [20 x i8] c"gimp_rgba_parse_css\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"rgba != NULL\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"transparent\00", align 1
@__func__.gimp_rgb_list_names = private unnamed_addr constant [20 x i8] c"gimp_rgb_list_names\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"names != NULL\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"colors != NULL\00", align 1
@named_colors = internal constant [147 x %struct.ColorEntry] [%struct.ColorEntry { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), i8 -16, i8 -8, i8 -1 }, %struct.ColorEntry { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i32 0, i32 0), i8 -6, i8 -21, i8 -41 }, %struct.ColorEntry { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i8 0, i8 -1, i8 -1 }, %struct.ColorEntry { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i32 0, i32 0), i8 127, i8 -1, i8 -44 }, %struct.ColorEntry { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), i8 -16, i8 -1, i8 -1 }, %struct.ColorEntry { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), i8 -11, i8 -11, i8 -36 }, %struct.ColorEntry { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i32 0, i32 0), i8 -1, i8 -28, i8 -60 }, %struct.ColorEntry { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i8 0, i8 0, i8 0 }, %struct.ColorEntry { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i32 0, i32 0), i8 -1, i8 -21, i8 -51 }, %struct.ColorEntry { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i32 0, i32 0), i8 0, i8 0, i8 -1 }, %struct.ColorEntry { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), i8 -118, i8 43, i8 -30 }, %struct.ColorEntry { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), i8 -91, i8 42, i8 42 }, %struct.ColorEntry { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0), i8 -34, i8 -72, i8 -121 }, %struct.ColorEntry { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i32 0, i32 0), i8 95, i8 -98, i8 -96 }, %struct.ColorEntry { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i32 0, i32 0), i8 127, i8 -1, i8 0 }, %struct.ColorEntry { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i32 0, i32 0), i8 -46, i8 105, i8 30 }, %struct.ColorEntry { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0), i8 -1, i8 127, i8 80 }, %struct.ColorEntry { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.26, i32 0, i32 0), i8 100, i8 -107, i8 -19 }, %struct.ColorEntry { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i32 0, i32 0), i8 -1, i8 -8, i8 -36 }, %struct.ColorEntry { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i32 0, i32 0), i8 -36, i8 20, i8 60 }, %struct.ColorEntry { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i32 0, i32 0), i8 0, i8 -1, i8 -1 }, %struct.ColorEntry { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.30, i32 0, i32 0), i8 0, i8 0, i8 -117 }, %struct.ColorEntry { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.31, i32 0, i32 0), i8 0, i8 -117, i8 -117 }, %struct.ColorEntry { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.32, i32 0, i32 0), i8 -72, i8 -122, i8 11 }, %struct.ColorEntry { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.33, i32 0, i32 0), i8 -87, i8 -87, i8 -87 }, %struct.ColorEntry { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.34, i32 0, i32 0), i8 0, i8 100, i8 0 }, %struct.ColorEntry { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.35, i32 0, i32 0), i8 -87, i8 -87, i8 -87 }, %struct.ColorEntry { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.36, i32 0, i32 0), i8 -67, i8 -73, i8 107 }, %struct.ColorEntry { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.37, i32 0, i32 0), i8 -117, i8 0, i8 -117 }, %struct.ColorEntry { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.38, i32 0, i32 0), i8 85, i8 107, i8 47 }, %struct.ColorEntry { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.39, i32 0, i32 0), i8 -1, i8 -116, i8 0 }, %struct.ColorEntry { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.40, i32 0, i32 0), i8 -103, i8 50, i8 -52 }, %struct.ColorEntry { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.41, i32 0, i32 0), i8 -117, i8 0, i8 0 }, %struct.ColorEntry { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.42, i32 0, i32 0), i8 -23, i8 -106, i8 122 }, %struct.ColorEntry { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.43, i32 0, i32 0), i8 -113, i8 -68, i8 -113 }, %struct.ColorEntry { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.44, i32 0, i32 0), i8 72, i8 61, i8 -117 }, %struct.ColorEntry { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.45, i32 0, i32 0), i8 47, i8 79, i8 79 }, %struct.ColorEntry { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.46, i32 0, i32 0), i8 47, i8 79, i8 79 }, %struct.ColorEntry { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.47, i32 0, i32 0), i8 0, i8 -50, i8 -47 }, %struct.ColorEntry { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.48, i32 0, i32 0), i8 -108, i8 0, i8 -45 }, %struct.ColorEntry { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.49, i32 0, i32 0), i8 -1, i8 20, i8 -109 }, %struct.ColorEntry { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.50, i32 0, i32 0), i8 0, i8 -65, i8 -1 }, %struct.ColorEntry { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.51, i32 0, i32 0), i8 105, i8 105, i8 105 }, %struct.ColorEntry { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.52, i32 0, i32 0), i8 105, i8 105, i8 105 }, %struct.ColorEntry { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.53, i32 0, i32 0), i8 30, i8 -112, i8 -1 }, %struct.ColorEntry { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.54, i32 0, i32 0), i8 -78, i8 34, i8 34 }, %struct.ColorEntry { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.55, i32 0, i32 0), i8 -1, i8 -6, i8 -16 }, %struct.ColorEntry { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.56, i32 0, i32 0), i8 34, i8 -117, i8 34 }, %struct.ColorEntry { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.57, i32 0, i32 0), i8 -1, i8 0, i8 -1 }, %struct.ColorEntry { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.58, i32 0, i32 0), i8 -36, i8 -36, i8 -36 }, %struct.ColorEntry { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.59, i32 0, i32 0), i8 -8, i8 -8, i8 -1 }, %struct.ColorEntry { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.60, i32 0, i32 0), i8 -1, i8 -41, i8 0 }, %struct.ColorEntry { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.61, i32 0, i32 0), i8 -38, i8 -91, i8 32 }, %struct.ColorEntry { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.62, i32 0, i32 0), i8 -128, i8 -128, i8 -128 }, %struct.ColorEntry { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.63, i32 0, i32 0), i8 0, i8 -128, i8 0 }, %struct.ColorEntry { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.64, i32 0, i32 0), i8 -83, i8 -1, i8 47 }, %struct.ColorEntry { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.65, i32 0, i32 0), i8 -128, i8 -128, i8 -128 }, %struct.ColorEntry { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.66, i32 0, i32 0), i8 -16, i8 -1, i8 -16 }, %struct.ColorEntry { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.67, i32 0, i32 0), i8 -1, i8 105, i8 -76 }, %struct.ColorEntry { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.68, i32 0, i32 0), i8 -51, i8 92, i8 92 }, %struct.ColorEntry { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.69, i32 0, i32 0), i8 75, i8 0, i8 -126 }, %struct.ColorEntry { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.70, i32 0, i32 0), i8 -1, i8 -1, i8 -16 }, %struct.ColorEntry { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.71, i32 0, i32 0), i8 -16, i8 -26, i8 -116 }, %struct.ColorEntry { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.72, i32 0, i32 0), i8 -26, i8 -26, i8 -6 }, %struct.ColorEntry { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.73, i32 0, i32 0), i8 -1, i8 -16, i8 -11 }, %struct.ColorEntry { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.74, i32 0, i32 0), i8 124, i8 -4, i8 0 }, %struct.ColorEntry { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.75, i32 0, i32 0), i8 -1, i8 -6, i8 -51 }, %struct.ColorEntry { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.76, i32 0, i32 0), i8 -83, i8 -40, i8 -26 }, %struct.ColorEntry { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.77, i32 0, i32 0), i8 -16, i8 -128, i8 -128 }, %struct.ColorEntry { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.78, i32 0, i32 0), i8 -32, i8 -1, i8 -1 }, %struct.ColorEntry { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.79, i32 0, i32 0), i8 -6, i8 -6, i8 -46 }, %struct.ColorEntry { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.80, i32 0, i32 0), i8 -45, i8 -45, i8 -45 }, %struct.ColorEntry { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.81, i32 0, i32 0), i8 -112, i8 -18, i8 -112 }, %struct.ColorEntry { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.82, i32 0, i32 0), i8 -45, i8 -45, i8 -45 }, %struct.ColorEntry { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.83, i32 0, i32 0), i8 -1, i8 -74, i8 -63 }, %struct.ColorEntry { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.84, i32 0, i32 0), i8 -1, i8 -96, i8 122 }, %struct.ColorEntry { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.85, i32 0, i32 0), i8 32, i8 -78, i8 -86 }, %struct.ColorEntry { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.86, i32 0, i32 0), i8 -121, i8 -50, i8 -6 }, %struct.ColorEntry { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.87, i32 0, i32 0), i8 119, i8 -120, i8 -103 }, %struct.ColorEntry { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.88, i32 0, i32 0), i8 119, i8 -120, i8 -103 }, %struct.ColorEntry { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.89, i32 0, i32 0), i8 -80, i8 -60, i8 -34 }, %struct.ColorEntry { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.90, i32 0, i32 0), i8 -1, i8 -1, i8 -32 }, %struct.ColorEntry { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.91, i32 0, i32 0), i8 0, i8 -1, i8 0 }, %struct.ColorEntry { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.92, i32 0, i32 0), i8 50, i8 -51, i8 50 }, %struct.ColorEntry { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.93, i32 0, i32 0), i8 -6, i8 -16, i8 -26 }, %struct.ColorEntry { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.94, i32 0, i32 0), i8 -1, i8 0, i8 -1 }, %struct.ColorEntry { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.95, i32 0, i32 0), i8 -128, i8 0, i8 0 }, %struct.ColorEntry { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.96, i32 0, i32 0), i8 102, i8 -51, i8 -86 }, %struct.ColorEntry { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.97, i32 0, i32 0), i8 0, i8 0, i8 -51 }, %struct.ColorEntry { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.98, i32 0, i32 0), i8 -70, i8 85, i8 -45 }, %struct.ColorEntry { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.99, i32 0, i32 0), i8 -109, i8 112, i8 -37 }, %struct.ColorEntry { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.100, i32 0, i32 0), i8 60, i8 -77, i8 113 }, %struct.ColorEntry { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.101, i32 0, i32 0), i8 123, i8 104, i8 -18 }, %struct.ColorEntry { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.102, i32 0, i32 0), i8 0, i8 -6, i8 -102 }, %struct.ColorEntry { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.103, i32 0, i32 0), i8 72, i8 -47, i8 -52 }, %struct.ColorEntry { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.104, i32 0, i32 0), i8 -57, i8 21, i8 -123 }, %struct.ColorEntry { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.105, i32 0, i32 0), i8 25, i8 25, i8 112 }, %struct.ColorEntry { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.106, i32 0, i32 0), i8 -11, i8 -1, i8 -6 }, %struct.ColorEntry { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.107, i32 0, i32 0), i8 -1, i8 -28, i8 -31 }, %struct.ColorEntry { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.108, i32 0, i32 0), i8 -1, i8 -28, i8 -75 }, %struct.ColorEntry { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.109, i32 0, i32 0), i8 -1, i8 -34, i8 -83 }, %struct.ColorEntry { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.110, i32 0, i32 0), i8 0, i8 0, i8 -128 }, %struct.ColorEntry { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.111, i32 0, i32 0), i8 -3, i8 -11, i8 -26 }, %struct.ColorEntry { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.112, i32 0, i32 0), i8 -128, i8 -128, i8 0 }, %struct.ColorEntry { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.113, i32 0, i32 0), i8 107, i8 -114, i8 35 }, %struct.ColorEntry { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.114, i32 0, i32 0), i8 -1, i8 -91, i8 0 }, %struct.ColorEntry { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.115, i32 0, i32 0), i8 -1, i8 69, i8 0 }, %struct.ColorEntry { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.116, i32 0, i32 0), i8 -38, i8 112, i8 -42 }, %struct.ColorEntry { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.117, i32 0, i32 0), i8 -18, i8 -24, i8 -86 }, %struct.ColorEntry { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.118, i32 0, i32 0), i8 -104, i8 -5, i8 -104 }, %struct.ColorEntry { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.119, i32 0, i32 0), i8 -81, i8 -18, i8 -18 }, %struct.ColorEntry { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.120, i32 0, i32 0), i8 -37, i8 112, i8 -109 }, %struct.ColorEntry { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.121, i32 0, i32 0), i8 -1, i8 -17, i8 -43 }, %struct.ColorEntry { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.122, i32 0, i32 0), i8 -1, i8 -38, i8 -71 }, %struct.ColorEntry { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.123, i32 0, i32 0), i8 -51, i8 -123, i8 63 }, %struct.ColorEntry { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.124, i32 0, i32 0), i8 -1, i8 -64, i8 -53 }, %struct.ColorEntry { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.125, i32 0, i32 0), i8 -35, i8 -96, i8 -35 }, %struct.ColorEntry { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.126, i32 0, i32 0), i8 -80, i8 -32, i8 -26 }, %struct.ColorEntry { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.127, i32 0, i32 0), i8 -128, i8 0, i8 -128 }, %struct.ColorEntry { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.128, i32 0, i32 0), i8 -1, i8 0, i8 0 }, %struct.ColorEntry { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.129, i32 0, i32 0), i8 -68, i8 -113, i8 -113 }, %struct.ColorEntry { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.130, i32 0, i32 0), i8 65, i8 105, i8 -31 }, %struct.ColorEntry { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.131, i32 0, i32 0), i8 -117, i8 69, i8 19 }, %struct.ColorEntry { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.132, i32 0, i32 0), i8 -6, i8 -128, i8 114 }, %struct.ColorEntry { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.133, i32 0, i32 0), i8 -12, i8 -92, i8 96 }, %struct.ColorEntry { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.134, i32 0, i32 0), i8 46, i8 -117, i8 87 }, %struct.ColorEntry { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.135, i32 0, i32 0), i8 -1, i8 -11, i8 -18 }, %struct.ColorEntry { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.136, i32 0, i32 0), i8 -96, i8 82, i8 45 }, %struct.ColorEntry { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.137, i32 0, i32 0), i8 -64, i8 -64, i8 -64 }, %struct.ColorEntry { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.138, i32 0, i32 0), i8 -121, i8 -50, i8 -21 }, %struct.ColorEntry { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.139, i32 0, i32 0), i8 106, i8 90, i8 -51 }, %struct.ColorEntry { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.140, i32 0, i32 0), i8 112, i8 -128, i8 -112 }, %struct.ColorEntry { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.141, i32 0, i32 0), i8 112, i8 -128, i8 -112 }, %struct.ColorEntry { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.142, i32 0, i32 0), i8 -1, i8 -6, i8 -6 }, %struct.ColorEntry { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.143, i32 0, i32 0), i8 0, i8 -1, i8 127 }, %struct.ColorEntry { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.144, i32 0, i32 0), i8 70, i8 -126, i8 -76 }, %struct.ColorEntry { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.145, i32 0, i32 0), i8 -46, i8 -76, i8 -116 }, %struct.ColorEntry { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.146, i32 0, i32 0), i8 0, i8 -128, i8 -128 }, %struct.ColorEntry { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.147, i32 0, i32 0), i8 -40, i8 -65, i8 -40 }, %struct.ColorEntry { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.148, i32 0, i32 0), i8 -1, i8 99, i8 71 }, %struct.ColorEntry { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.149, i32 0, i32 0), i8 64, i8 -32, i8 -48 }, %struct.ColorEntry { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.150, i32 0, i32 0), i8 -18, i8 -126, i8 -18 }, %struct.ColorEntry { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.151, i32 0, i32 0), i8 -11, i8 -34, i8 -77 }, %struct.ColorEntry { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.152, i32 0, i32 0), i8 -1, i8 -1, i8 -1 }, %struct.ColorEntry { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.153, i32 0, i32 0), i8 -11, i8 -11, i8 -11 }, %struct.ColorEntry { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.154, i32 0, i32 0), i8 -1, i8 -1, i8 0 }, %struct.ColorEntry { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.155, i32 0, i32 0), i8 -102, i8 -51, i8 50 }], align 16
@.str.9 = private unnamed_addr constant [10 x i8] c"aliceblue\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"antiquewhite\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"aqua\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"aquamarine\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"azure\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"beige\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"bisque\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"black\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"blanchedalmond\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"blue\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"blueviolet\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"brown\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"burlywood\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"cadetblue\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"chartreuse\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"chocolate\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"coral\00", align 1
@.str.26 = private unnamed_addr constant [15 x i8] c"cornflowerblue\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"cornsilk\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"crimson\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"cyan\00", align 1
@.str.30 = private unnamed_addr constant [9 x i8] c"darkblue\00", align 1
@.str.31 = private unnamed_addr constant [9 x i8] c"darkcyan\00", align 1
@.str.32 = private unnamed_addr constant [14 x i8] c"darkgoldenrod\00", align 1
@.str.33 = private unnamed_addr constant [9 x i8] c"darkgray\00", align 1
@.str.34 = private unnamed_addr constant [10 x i8] c"darkgreen\00", align 1
@.str.35 = private unnamed_addr constant [9 x i8] c"darkgrey\00", align 1
@.str.36 = private unnamed_addr constant [10 x i8] c"darkkhaki\00", align 1
@.str.37 = private unnamed_addr constant [12 x i8] c"darkmagenta\00", align 1
@.str.38 = private unnamed_addr constant [15 x i8] c"darkolivegreen\00", align 1
@.str.39 = private unnamed_addr constant [11 x i8] c"darkorange\00", align 1
@.str.40 = private unnamed_addr constant [11 x i8] c"darkorchid\00", align 1
@.str.41 = private unnamed_addr constant [8 x i8] c"darkred\00", align 1
@.str.42 = private unnamed_addr constant [11 x i8] c"darksalmon\00", align 1
@.str.43 = private unnamed_addr constant [13 x i8] c"darkseagreen\00", align 1
@.str.44 = private unnamed_addr constant [14 x i8] c"darkslateblue\00", align 1
@.str.45 = private unnamed_addr constant [14 x i8] c"darkslategray\00", align 1
@.str.46 = private unnamed_addr constant [14 x i8] c"darkslategrey\00", align 1
@.str.47 = private unnamed_addr constant [14 x i8] c"darkturquoise\00", align 1
@.str.48 = private unnamed_addr constant [11 x i8] c"darkviolet\00", align 1
@.str.49 = private unnamed_addr constant [9 x i8] c"deeppink\00", align 1
@.str.50 = private unnamed_addr constant [12 x i8] c"deepskyblue\00", align 1
@.str.51 = private unnamed_addr constant [8 x i8] c"dimgray\00", align 1
@.str.52 = private unnamed_addr constant [8 x i8] c"dimgrey\00", align 1
@.str.53 = private unnamed_addr constant [11 x i8] c"dodgerblue\00", align 1
@.str.54 = private unnamed_addr constant [10 x i8] c"firebrick\00", align 1
@.str.55 = private unnamed_addr constant [12 x i8] c"floralwhite\00", align 1
@.str.56 = private unnamed_addr constant [12 x i8] c"forestgreen\00", align 1
@.str.57 = private unnamed_addr constant [8 x i8] c"fuchsia\00", align 1
@.str.58 = private unnamed_addr constant [10 x i8] c"gainsboro\00", align 1
@.str.59 = private unnamed_addr constant [11 x i8] c"ghostwhite\00", align 1
@.str.60 = private unnamed_addr constant [5 x i8] c"gold\00", align 1
@.str.61 = private unnamed_addr constant [10 x i8] c"goldenrod\00", align 1
@.str.62 = private unnamed_addr constant [5 x i8] c"gray\00", align 1
@.str.63 = private unnamed_addr constant [6 x i8] c"green\00", align 1
@.str.64 = private unnamed_addr constant [12 x i8] c"greenyellow\00", align 1
@.str.65 = private unnamed_addr constant [5 x i8] c"grey\00", align 1
@.str.66 = private unnamed_addr constant [9 x i8] c"honeydew\00", align 1
@.str.67 = private unnamed_addr constant [8 x i8] c"hotpink\00", align 1
@.str.68 = private unnamed_addr constant [10 x i8] c"indianred\00", align 1
@.str.69 = private unnamed_addr constant [7 x i8] c"indigo\00", align 1
@.str.70 = private unnamed_addr constant [6 x i8] c"ivory\00", align 1
@.str.71 = private unnamed_addr constant [6 x i8] c"khaki\00", align 1
@.str.72 = private unnamed_addr constant [9 x i8] c"lavender\00", align 1
@.str.73 = private unnamed_addr constant [14 x i8] c"lavenderblush\00", align 1
@.str.74 = private unnamed_addr constant [10 x i8] c"lawngreen\00", align 1
@.str.75 = private unnamed_addr constant [13 x i8] c"lemonchiffon\00", align 1
@.str.76 = private unnamed_addr constant [10 x i8] c"lightblue\00", align 1
@.str.77 = private unnamed_addr constant [11 x i8] c"lightcoral\00", align 1
@.str.78 = private unnamed_addr constant [10 x i8] c"lightcyan\00", align 1
@.str.79 = private unnamed_addr constant [21 x i8] c"lightgoldenrodyellow\00", align 1
@.str.80 = private unnamed_addr constant [10 x i8] c"lightgray\00", align 1
@.str.81 = private unnamed_addr constant [11 x i8] c"lightgreen\00", align 1
@.str.82 = private unnamed_addr constant [10 x i8] c"lightgrey\00", align 1
@.str.83 = private unnamed_addr constant [10 x i8] c"lightpink\00", align 1
@.str.84 = private unnamed_addr constant [12 x i8] c"lightsalmon\00", align 1
@.str.85 = private unnamed_addr constant [14 x i8] c"lightseagreen\00", align 1
@.str.86 = private unnamed_addr constant [13 x i8] c"lightskyblue\00", align 1
@.str.87 = private unnamed_addr constant [15 x i8] c"lightslategray\00", align 1
@.str.88 = private unnamed_addr constant [15 x i8] c"lightslategrey\00", align 1
@.str.89 = private unnamed_addr constant [15 x i8] c"lightsteelblue\00", align 1
@.str.90 = private unnamed_addr constant [12 x i8] c"lightyellow\00", align 1
@.str.91 = private unnamed_addr constant [5 x i8] c"lime\00", align 1
@.str.92 = private unnamed_addr constant [10 x i8] c"limegreen\00", align 1
@.str.93 = private unnamed_addr constant [6 x i8] c"linen\00", align 1
@.str.94 = private unnamed_addr constant [8 x i8] c"magenta\00", align 1
@.str.95 = private unnamed_addr constant [7 x i8] c"maroon\00", align 1
@.str.96 = private unnamed_addr constant [17 x i8] c"mediumaquamarine\00", align 1
@.str.97 = private unnamed_addr constant [11 x i8] c"mediumblue\00", align 1
@.str.98 = private unnamed_addr constant [13 x i8] c"mediumorchid\00", align 1
@.str.99 = private unnamed_addr constant [13 x i8] c"mediumpurple\00", align 1
@.str.100 = private unnamed_addr constant [15 x i8] c"mediumseagreen\00", align 1
@.str.101 = private unnamed_addr constant [16 x i8] c"mediumslateblue\00", align 1
@.str.102 = private unnamed_addr constant [18 x i8] c"mediumspringgreen\00", align 1
@.str.103 = private unnamed_addr constant [16 x i8] c"mediumturquoise\00", align 1
@.str.104 = private unnamed_addr constant [16 x i8] c"mediumvioletred\00", align 1
@.str.105 = private unnamed_addr constant [13 x i8] c"midnightblue\00", align 1
@.str.106 = private unnamed_addr constant [10 x i8] c"mintcream\00", align 1
@.str.107 = private unnamed_addr constant [10 x i8] c"mistyrose\00", align 1
@.str.108 = private unnamed_addr constant [9 x i8] c"moccasin\00", align 1
@.str.109 = private unnamed_addr constant [12 x i8] c"navajowhite\00", align 1
@.str.110 = private unnamed_addr constant [5 x i8] c"navy\00", align 1
@.str.111 = private unnamed_addr constant [8 x i8] c"oldlace\00", align 1
@.str.112 = private unnamed_addr constant [6 x i8] c"olive\00", align 1
@.str.113 = private unnamed_addr constant [10 x i8] c"olivedrab\00", align 1
@.str.114 = private unnamed_addr constant [7 x i8] c"orange\00", align 1
@.str.115 = private unnamed_addr constant [10 x i8] c"orangered\00", align 1
@.str.116 = private unnamed_addr constant [7 x i8] c"orchid\00", align 1
@.str.117 = private unnamed_addr constant [14 x i8] c"palegoldenrod\00", align 1
@.str.118 = private unnamed_addr constant [10 x i8] c"palegreen\00", align 1
@.str.119 = private unnamed_addr constant [14 x i8] c"paleturquoise\00", align 1
@.str.120 = private unnamed_addr constant [14 x i8] c"palevioletred\00", align 1
@.str.121 = private unnamed_addr constant [11 x i8] c"papayawhip\00", align 1
@.str.122 = private unnamed_addr constant [10 x i8] c"peachpuff\00", align 1
@.str.123 = private unnamed_addr constant [5 x i8] c"peru\00", align 1
@.str.124 = private unnamed_addr constant [5 x i8] c"pink\00", align 1
@.str.125 = private unnamed_addr constant [5 x i8] c"plum\00", align 1
@.str.126 = private unnamed_addr constant [11 x i8] c"powderblue\00", align 1
@.str.127 = private unnamed_addr constant [7 x i8] c"purple\00", align 1
@.str.128 = private unnamed_addr constant [4 x i8] c"red\00", align 1
@.str.129 = private unnamed_addr constant [10 x i8] c"rosybrown\00", align 1
@.str.130 = private unnamed_addr constant [10 x i8] c"royalblue\00", align 1
@.str.131 = private unnamed_addr constant [12 x i8] c"saddlebrown\00", align 1
@.str.132 = private unnamed_addr constant [7 x i8] c"salmon\00", align 1
@.str.133 = private unnamed_addr constant [11 x i8] c"sandybrown\00", align 1
@.str.134 = private unnamed_addr constant [9 x i8] c"seagreen\00", align 1
@.str.135 = private unnamed_addr constant [9 x i8] c"seashell\00", align 1
@.str.136 = private unnamed_addr constant [7 x i8] c"sienna\00", align 1
@.str.137 = private unnamed_addr constant [7 x i8] c"silver\00", align 1
@.str.138 = private unnamed_addr constant [8 x i8] c"skyblue\00", align 1
@.str.139 = private unnamed_addr constant [10 x i8] c"slateblue\00", align 1
@.str.140 = private unnamed_addr constant [10 x i8] c"slategray\00", align 1
@.str.141 = private unnamed_addr constant [10 x i8] c"slategrey\00", align 1
@.str.142 = private unnamed_addr constant [5 x i8] c"snow\00", align 1
@.str.143 = private unnamed_addr constant [12 x i8] c"springgreen\00", align 1
@.str.144 = private unnamed_addr constant [10 x i8] c"steelblue\00", align 1
@.str.145 = private unnamed_addr constant [4 x i8] c"tan\00", align 1
@.str.146 = private unnamed_addr constant [5 x i8] c"teal\00", align 1
@.str.147 = private unnamed_addr constant [8 x i8] c"thistle\00", align 1
@.str.148 = private unnamed_addr constant [7 x i8] c"tomato\00", align 1
@.str.149 = private unnamed_addr constant [10 x i8] c"turquoise\00", align 1
@.str.150 = private unnamed_addr constant [7 x i8] c"violet\00", align 1
@.str.151 = private unnamed_addr constant [6 x i8] c"wheat\00", align 1
@.str.152 = private unnamed_addr constant [6 x i8] c"white\00", align 1
@.str.153 = private unnamed_addr constant [11 x i8] c"whitesmoke\00", align 1
@.str.154 = private unnamed_addr constant [7 x i8] c"yellow\00", align 1
@.str.155 = private unnamed_addr constant [12 x i8] c"yellowgreen\00", align 1
@g_ascii_table = external constant i16*, align 8
@.str.156 = private unnamed_addr constant [45 x i8] c"file %s: line %d (%s): should not be reached\00", align 1
@.str.157 = private unnamed_addr constant [16 x i8] c"gimprgb-parse.c\00", align 1
@__func__.gimp_rgb_parse_hex_component = private unnamed_addr constant [29 x i8] c"gimp_rgb_parse_hex_component\00", align 1
@.str.158 = private unnamed_addr constant [5 x i8] c"rgb(\00", align 1
@.str.159 = private unnamed_addr constant [5 x i8] c"hsl(\00", align 1
@.str.160 = private unnamed_addr constant [6 x i8] c"rgba(\00", align 1
@.str.161 = private unnamed_addr constant [6 x i8] c"hsla(\00", align 1

; Function Attrs: nounwind uwtable
define i32 @gimp_rgb_parse_name(%struct._GimpRGB* %rgb, i8* %name, i32 %len) #0 {
entry:
  %retval = alloca i32, align 4
  %rgb.addr = alloca %struct._GimpRGB*, align 8
  %name.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %tmp = alloca i8*, align 8
  %result = alloca i32, align 4
  store %struct._GimpRGB* %rgb, %struct._GimpRGB** %rgb.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %cmp = icmp ne %struct._GimpRGB* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_rgb_parse_name, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.2

do.body.2:                                        ; preds = %do.end
  %1 = load i8*, i8** %name.addr, align 8
  %cmp3 = icmp ne i8* %1, null
  br i1 %cmp3, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %do.body.2
  br label %if.end.6

if.else.5:                                        ; preds = %do.body.2
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_rgb_parse_name, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.then.4
  br label %do.end.7

do.end.7:                                         ; preds = %if.end.6
  %2 = load i8*, i8** %name.addr, align 8
  %3 = load i32, i32* %len.addr, align 4
  %call = call i8* @gimp_rgb_parse_strip(i8* %2, i32 %3)
  store i8* %call, i8** %tmp, align 8
  %4 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %5 = load i8*, i8** %tmp, align 8
  %call8 = call i32 @gimp_rgb_parse_name_internal(%struct._GimpRGB* %4, i8* %5)
  store i32 %call8, i32* %result, align 4
  %6 = load i8*, i8** %tmp, align 8
  call void @g_free(i8* %6)
  %7 = load i32, i32* %result, align 4
  store i32 %7, i32* %retval
  br label %return

return:                                           ; preds = %do.end.7, %if.else.5, %if.else
  %8 = load i32, i32* %retval
  ret i32 %8
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i8* @gimp_rgb_parse_strip(i8* %str, i32 %len) #0 {
entry:
  %str.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %result = alloca i8*, align 8
  store i8* %str, i8** %str.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, i32* %len.addr, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %1 = load i8*, i8** %str.addr, align 8
  %2 = load i8, i8* %1, align 1
  %idxprom = zext i8 %2 to i64
  %3 = load i16*, i16** @g_ascii_table, align 8
  %arrayidx = getelementptr inbounds i16, i16* %3, i64 %idxprom
  %4 = load i16, i16* %arrayidx, align 2
  %conv = zext i16 %4 to i32
  %and = and i32 %conv, 256
  %cmp1 = icmp ne i32 %and, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %5 = phi i1 [ false, %while.cond ], [ %cmp1, %land.rhs ]
  br i1 %5, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %6 = load i8*, i8** %str.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr, i8** %str.addr, align 8
  %7 = load i32, i32* %len.addr, align 4
  %dec = add nsw i32 %7, -1
  store i32 %dec, i32* %len.addr, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  %8 = load i32, i32* %len.addr, align 4
  %cmp3 = icmp slt i32 %8, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  br label %while.cond.5

while.cond.5:                                     ; preds = %while.body.12, %if.then
  %9 = load i8*, i8** %str.addr, align 8
  %10 = load i8, i8* %9, align 1
  %idxprom6 = zext i8 %10 to i64
  %11 = load i16*, i16** @g_ascii_table, align 8
  %arrayidx7 = getelementptr inbounds i16, i16* %11, i64 %idxprom6
  %12 = load i16, i16* %arrayidx7, align 2
  %conv8 = zext i16 %12 to i32
  %and9 = and i32 %conv8, 256
  %cmp10 = icmp ne i32 %and9, 0
  br i1 %cmp10, label %while.body.12, label %while.end.14

while.body.12:                                    ; preds = %while.cond.5
  %13 = load i8*, i8** %str.addr, align 8
  %incdec.ptr13 = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %incdec.ptr13, i8** %str.addr, align 8
  br label %while.cond.5

while.end.14:                                     ; preds = %while.cond.5
  %14 = load i8*, i8** %str.addr, align 8
  %call = call i64 @strlen(i8* %14) #6
  %conv15 = trunc i64 %call to i32
  store i32 %conv15, i32* %len.addr, align 4
  br label %if.end

if.end:                                           ; preds = %while.end.14, %while.end
  br label %while.cond.16

while.cond.16:                                    ; preds = %while.body.29, %if.end
  %15 = load i32, i32* %len.addr, align 4
  %cmp17 = icmp sgt i32 %15, 0
  br i1 %cmp17, label %land.rhs.19, label %land.end.28

land.rhs.19:                                      ; preds = %while.cond.16
  %16 = load i32, i32* %len.addr, align 4
  %sub = sub nsw i32 %16, 1
  %idxprom20 = sext i32 %sub to i64
  %17 = load i8*, i8** %str.addr, align 8
  %arrayidx21 = getelementptr inbounds i8, i8* %17, i64 %idxprom20
  %18 = load i8, i8* %arrayidx21, align 1
  %idxprom22 = zext i8 %18 to i64
  %19 = load i16*, i16** @g_ascii_table, align 8
  %arrayidx23 = getelementptr inbounds i16, i16* %19, i64 %idxprom22
  %20 = load i16, i16* %arrayidx23, align 2
  %conv24 = zext i16 %20 to i32
  %and25 = and i32 %conv24, 256
  %cmp26 = icmp ne i32 %and25, 0
  br label %land.end.28

land.end.28:                                      ; preds = %land.rhs.19, %while.cond.16
  %21 = phi i1 [ false, %while.cond.16 ], [ %cmp26, %land.rhs.19 ]
  br i1 %21, label %while.body.29, label %while.end.31

while.body.29:                                    ; preds = %land.end.28
  %22 = load i32, i32* %len.addr, align 4
  %dec30 = add nsw i32 %22, -1
  store i32 %dec30, i32* %len.addr, align 4
  br label %while.cond.16

while.end.31:                                     ; preds = %land.end.28
  %23 = load i32, i32* %len.addr, align 4
  %add = add nsw i32 %23, 1
  %conv32 = sext i32 %add to i64
  %call33 = call noalias i8* @g_malloc(i64 %conv32)
  store i8* %call33, i8** %result, align 8
  %24 = load i8*, i8** %result, align 8
  %25 = load i8*, i8** %str.addr, align 8
  %26 = load i32, i32* %len.addr, align 4
  %conv34 = sext i32 %26 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %24, i8* %25, i64 %conv34, i32 1, i1 false)
  %27 = load i32, i32* %len.addr, align 4
  %idxprom35 = sext i32 %27 to i64
  %28 = load i8*, i8** %result, align 8
  %arrayidx36 = getelementptr inbounds i8, i8* %28, i64 %idxprom35
  store i8 0, i8* %arrayidx36, align 1
  %29 = load i8*, i8** %result, align 8
  ret i8* %29
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_rgb_parse_name_internal(%struct._GimpRGB* %rgb, i8* %name) #0 {
entry:
  %retval = alloca i32, align 4
  %rgb.addr = alloca %struct._GimpRGB*, align 8
  %name.addr = alloca i8*, align 8
  %entry1 = alloca %struct.ColorEntry*, align 8
  store %struct._GimpRGB* %rgb, %struct._GimpRGB** %rgb.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  %0 = load i8*, i8** %name.addr, align 8
  %call = call i8* @bsearch(i8* %0, i8* bitcast ([147 x %struct.ColorEntry]* @named_colors to i8*), i64 147, i64 16, i32 (i8*, i8*)* @gimp_rgb_color_entry_compare)
  %1 = bitcast i8* %call to %struct.ColorEntry*
  store %struct.ColorEntry* %1, %struct.ColorEntry** %entry1, align 8
  %2 = load %struct.ColorEntry*, %struct.ColorEntry** %entry1, align 8
  %tobool = icmp ne %struct.ColorEntry* %2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %4 = load %struct.ColorEntry*, %struct.ColorEntry** %entry1, align 8
  %red = getelementptr inbounds %struct.ColorEntry, %struct.ColorEntry* %4, i32 0, i32 1
  %5 = load i8, i8* %red, align 1
  %6 = load %struct.ColorEntry*, %struct.ColorEntry** %entry1, align 8
  %green = getelementptr inbounds %struct.ColorEntry, %struct.ColorEntry* %6, i32 0, i32 2
  %7 = load i8, i8* %green, align 1
  %8 = load %struct.ColorEntry*, %struct.ColorEntry** %entry1, align 8
  %blue = getelementptr inbounds %struct.ColorEntry, %struct.ColorEntry* %8, i32 0, i32 3
  %9 = load i8, i8* %blue, align 1
  call void @gimp_rgb_set_uchar(%struct._GimpRGB* %3, i8 zeroext %5, i8 zeroext %7, i8 zeroext %9)
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %10 = load i32, i32* %retval
  ret i32 %10
}

declare void @g_free(i8*) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_rgb_parse_hex(%struct._GimpRGB* %rgb, i8* %hex, i32 %len) #0 {
entry:
  %retval = alloca i32, align 4
  %rgb.addr = alloca %struct._GimpRGB*, align 8
  %hex.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %tmp = alloca i8*, align 8
  %result = alloca i32, align 4
  store %struct._GimpRGB* %rgb, %struct._GimpRGB** %rgb.addr, align 8
  store i8* %hex, i8** %hex.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %cmp = icmp ne %struct._GimpRGB* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gimp_rgb_parse_hex, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.2

do.body.2:                                        ; preds = %do.end
  %1 = load i8*, i8** %hex.addr, align 8
  %cmp3 = icmp ne i8* %1, null
  br i1 %cmp3, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %do.body.2
  br label %if.end.6

if.else.5:                                        ; preds = %do.body.2
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gimp_rgb_parse_hex, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.then.4
  br label %do.end.7

do.end.7:                                         ; preds = %if.end.6
  %2 = load i8*, i8** %hex.addr, align 8
  %3 = load i32, i32* %len.addr, align 4
  %call = call i8* @gimp_rgb_parse_strip(i8* %2, i32 %3)
  store i8* %call, i8** %tmp, align 8
  %4 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %5 = load i8*, i8** %tmp, align 8
  %call8 = call i32 @gimp_rgb_parse_hex_internal(%struct._GimpRGB* %4, i8* %5)
  store i32 %call8, i32* %result, align 4
  %6 = load i8*, i8** %tmp, align 8
  call void @g_free(i8* %6)
  %7 = load i32, i32* %result, align 4
  store i32 %7, i32* %retval
  br label %return

return:                                           ; preds = %do.end.7, %if.else.5, %if.else
  %8 = load i32, i32* %retval
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_rgb_parse_hex_internal(%struct._GimpRGB* %rgb, i8* %hex) #0 {
entry:
  %retval = alloca i32, align 4
  %rgb.addr = alloca %struct._GimpRGB*, align 8
  %hex.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %len = alloca i64, align 8
  %val = alloca [3 x double], align 16
  store %struct._GimpRGB* %rgb, %struct._GimpRGB** %rgb.addr, align 8
  store i8* %hex, i8** %hex.addr, align 8
  %0 = load i8*, i8** %hex.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 0
  %1 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 35
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %hex.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %2, i32 1
  store i8* %incdec.ptr, i8** %hex.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %hex.addr, align 8
  %call = call i64 @strlen(i8* %3) #6
  store i64 %call, i64* %len, align 8
  %4 = load i64, i64* %len, align 8
  %rem = urem i64 %4, 3
  %tobool = icmp ne i64 %rem, 0
  br i1 %tobool, label %if.then.7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %5 = load i64, i64* %len, align 8
  %cmp2 = icmp ult i64 %5, 3
  br i1 %cmp2, label %if.then.7, label %lor.lhs.false.4

lor.lhs.false.4:                                  ; preds = %lor.lhs.false
  %6 = load i64, i64* %len, align 8
  %cmp5 = icmp ugt i64 %6, 12
  br i1 %cmp5, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %lor.lhs.false.4, %lor.lhs.false, %if.end
  store i32 0, i32* %retval
  br label %return

if.end.8:                                         ; preds = %lor.lhs.false.4
  %7 = load i64, i64* %len, align 8
  %div = udiv i64 %7, 3
  store i64 %div, i64* %len, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.8
  %8 = load i32, i32* %i, align 4
  %cmp9 = icmp slt i32 %8, 3
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i8*, i8** %hex.addr, align 8
  %10 = load i64, i64* %len, align 8
  %conv11 = trunc i64 %10 to i32
  %arraydecay = getelementptr inbounds [3 x double], [3 x double]* %val, i32 0, i32 0
  %11 = load i32, i32* %i, align 4
  %idx.ext = sext i32 %11 to i64
  %add.ptr = getelementptr inbounds double, double* %arraydecay, i64 %idx.ext
  %call12 = call i32 @gimp_rgb_parse_hex_component(i8* %9, i32 %conv11, double* %add.ptr)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.end.15, label %if.then.14

if.then.14:                                       ; preds = %for.body
  store i32 0, i32* %retval
  br label %return

if.end.15:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.15
  %12 = load i32, i32* %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i, align 4
  %13 = load i64, i64* %len, align 8
  %14 = load i8*, i8** %hex.addr, align 8
  %add.ptr16 = getelementptr inbounds i8, i8* %14, i64 %13
  store i8* %add.ptr16, i8** %hex.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %arrayidx17 = getelementptr inbounds [3 x double], [3 x double]* %val, i32 0, i64 0
  %16 = load double, double* %arrayidx17, align 8
  %arrayidx18 = getelementptr inbounds [3 x double], [3 x double]* %val, i32 0, i64 1
  %17 = load double, double* %arrayidx18, align 8
  %arrayidx19 = getelementptr inbounds [3 x double], [3 x double]* %val, i32 0, i64 2
  %18 = load double, double* %arrayidx19, align 8
  call void @gimp_rgb_set(%struct._GimpRGB* %15, double %16, double %17, double %18)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.14, %if.then.7
  %19 = load i32, i32* %retval
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define i32 @gimp_rgb_parse_css(%struct._GimpRGB* %rgb, i8* %css, i32 %len) #0 {
entry:
  %retval = alloca i32, align 4
  %rgb.addr = alloca %struct._GimpRGB*, align 8
  %css.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %tmp = alloca i8*, align 8
  %result = alloca i32, align 4
  store %struct._GimpRGB* %rgb, %struct._GimpRGB** %rgb.addr, align 8
  store i8* %css, i8** %css.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %cmp = icmp ne %struct._GimpRGB* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gimp_rgb_parse_css, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.2

do.body.2:                                        ; preds = %do.end
  %1 = load i8*, i8** %css.addr, align 8
  %cmp3 = icmp ne i8* %1, null
  br i1 %cmp3, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %do.body.2
  br label %if.end.6

if.else.5:                                        ; preds = %do.body.2
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gimp_rgb_parse_css, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.then.4
  br label %do.end.7

do.end.7:                                         ; preds = %if.end.6
  %2 = load i8*, i8** %css.addr, align 8
  %3 = load i32, i32* %len.addr, align 4
  %call = call i8* @gimp_rgb_parse_strip(i8* %2, i32 %3)
  store i8* %call, i8** %tmp, align 8
  %4 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %5 = load i8*, i8** %tmp, align 8
  %call8 = call i32 @gimp_rgb_parse_css_internal(%struct._GimpRGB* %4, i8* %5)
  store i32 %call8, i32* %result, align 4
  %6 = load i8*, i8** %tmp, align 8
  call void @g_free(i8* %6)
  %7 = load i32, i32* %result, align 4
  store i32 %7, i32* %retval
  br label %return

return:                                           ; preds = %do.end.7, %if.else.5, %if.else
  %8 = load i32, i32* %retval
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_rgb_parse_css_internal(%struct._GimpRGB* %rgb, i8* %css) #0 {
entry:
  %retval = alloca i32, align 4
  %rgb.addr = alloca %struct._GimpRGB*, align 8
  %css.addr = alloca i8*, align 8
  store %struct._GimpRGB* %rgb, %struct._GimpRGB** %rgb.addr, align 8
  store i8* %css, i8** %css.addr, align 8
  %0 = load i8*, i8** %css.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 0
  %1 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 35
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %3 = load i8*, i8** %css.addr, align 8
  %call = call i32 @gimp_rgb_parse_hex_internal(%struct._GimpRGB* %2, i8* %3)
  store i32 %call, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %4 = load i8*, i8** %css.addr, align 8
  %call2 = call i32 @strncmp(i8* %4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.158, i32 0, i32 0), i64 4) #6
  %cmp3 = icmp eq i32 %call2, 0
  br i1 %cmp3, label %if.then.8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %5 = load i8*, i8** %css.addr, align 8
  %call5 = call i32 @strncmp(i8* %5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.159, i32 0, i32 0), i64 4) #6
  %cmp6 = icmp eq i32 %call5, 0
  br i1 %cmp6, label %if.then.8, label %if.else.10

if.then.8:                                        ; preds = %lor.lhs.false, %if.else
  %6 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %7 = load i8*, i8** %css.addr, align 8
  %call9 = call i32 @gimp_rgb_parse_css_numeric(%struct._GimpRGB* %6, i8* %7)
  store i32 %call9, i32* %retval
  br label %return

if.else.10:                                       ; preds = %lor.lhs.false
  %8 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %9 = load i8*, i8** %css.addr, align 8
  %call11 = call i32 @gimp_rgb_parse_name_internal(%struct._GimpRGB* %8, i8* %9)
  store i32 %call11, i32* %retval
  br label %return

return:                                           ; preds = %if.else.10, %if.then.8, %if.then
  %10 = load i32, i32* %retval
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define i32 @gimp_rgba_parse_css(%struct._GimpRGB* %rgba, i8* %css, i32 %len) #0 {
entry:
  %retval = alloca i32, align 4
  %rgba.addr = alloca %struct._GimpRGB*, align 8
  %css.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %tmp = alloca i8*, align 8
  %result = alloca i32, align 4
  store %struct._GimpRGB* %rgba, %struct._GimpRGB** %rgba.addr, align 8
  store i8* %css, i8** %css.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpRGB*, %struct._GimpRGB** %rgba.addr, align 8
  %cmp = icmp ne %struct._GimpRGB* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_rgba_parse_css, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.2

do.body.2:                                        ; preds = %do.end
  %1 = load i8*, i8** %css.addr, align 8
  %cmp3 = icmp ne i8* %1, null
  br i1 %cmp3, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %do.body.2
  br label %if.end.6

if.else.5:                                        ; preds = %do.body.2
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_rgba_parse_css, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.then.4
  br label %do.end.7

do.end.7:                                         ; preds = %if.end.6
  %2 = load i32, i32* %len.addr, align 4
  %cmp8 = icmp slt i32 %2, 0
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %do.end.7
  %3 = load i8*, i8** %css.addr, align 8
  %call = call i64 @strlen(i8* %3) #6
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %len.addr, align 4
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.9, %do.end.7
  %4 = load i8*, i8** %css.addr, align 8
  %5 = load i32, i32* %len.addr, align 4
  %call11 = call i8* @gimp_rgb_parse_strip(i8* %4, i32 %5)
  store i8* %call11, i8** %tmp, align 8
  %6 = load i8*, i8** %tmp, align 8
  %call12 = call i32 @strcmp(i8* %6, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0)) #6
  %cmp13 = icmp eq i32 %call12, 0
  br i1 %cmp13, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %if.end.10
  %7 = load %struct._GimpRGB*, %struct._GimpRGB** %rgba.addr, align 8
  call void @gimp_rgba_set(%struct._GimpRGB* %7, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00)
  store i32 1, i32* %result, align 4
  br label %if.end.18

if.else.16:                                       ; preds = %if.end.10
  %8 = load %struct._GimpRGB*, %struct._GimpRGB** %rgba.addr, align 8
  %9 = load i8*, i8** %tmp, align 8
  %call17 = call i32 @gimp_rgba_parse_css_internal(%struct._GimpRGB* %8, i8* %9)
  store i32 %call17, i32* %result, align 4
  br label %if.end.18

if.end.18:                                        ; preds = %if.else.16, %if.then.15
  %10 = load i8*, i8** %tmp, align 8
  call void @g_free(i8* %10)
  %11 = load i32, i32* %result, align 4
  store i32 %11, i32* %retval
  br label %return

return:                                           ; preds = %if.end.18, %if.else.5, %if.else
  %12 = load i32, i32* %retval
  ret i32 %12
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

declare void @gimp_rgba_set(%struct._GimpRGB*, double, double, double, double) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_rgba_parse_css_internal(%struct._GimpRGB* %rgba, i8* %css) #0 {
entry:
  %retval = alloca i32, align 4
  %rgba.addr = alloca %struct._GimpRGB*, align 8
  %css.addr = alloca i8*, align 8
  store %struct._GimpRGB* %rgba, %struct._GimpRGB** %rgba.addr, align 8
  store i8* %css, i8** %css.addr, align 8
  %0 = load i8*, i8** %css.addr, align 8
  %call = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.160, i32 0, i32 0), i64 5) #6
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i8*, i8** %css.addr, align 8
  %call1 = call i32 @strncmp(i8* %1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.161, i32 0, i32 0), i64 5) #6
  %cmp2 = icmp ne i32 %call1, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %2 = load %struct._GimpRGB*, %struct._GimpRGB** %rgba.addr, align 8
  %3 = load i8*, i8** %css.addr, align 8
  %call3 = call i32 @gimp_rgb_parse_css_numeric(%struct._GimpRGB* %2, i8* %3)
  store i32 %call3, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load i32, i32* %retval
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define i32 @gimp_rgb_list_names(i8*** %names, %struct._GimpRGB** %colors) #0 {
entry:
  %retval = alloca i32, align 4
  %names.addr = alloca i8***, align 8
  %colors.addr = alloca %struct._GimpRGB**, align 8
  %i = alloca i32, align 4
  store i8*** %names, i8**** %names.addr, align 8
  store %struct._GimpRGB** %colors, %struct._GimpRGB*** %colors.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i8***, i8**** %names.addr, align 8
  %cmp = icmp ne i8*** %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_rgb_list_names, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load %struct._GimpRGB**, %struct._GimpRGB*** %colors.addr, align 8
  %cmp2 = icmp ne %struct._GimpRGB** %1, null
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %do.body.1
  br label %if.end.5

if.else.4:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_rgb_list_names, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.5:                                         ; preds = %if.then.3
  br label %do.end.6

do.end.6:                                         ; preds = %if.end.5
  %call = call noalias i8* @g_malloc_n(i64 147, i64 8)
  %2 = bitcast i8* %call to i8**
  %3 = load i8***, i8**** %names.addr, align 8
  store i8** %2, i8*** %3, align 8
  %call7 = call noalias i8* @g_malloc_n(i64 147, i64 32)
  %4 = bitcast i8* %call7 to %struct._GimpRGB*
  %5 = load %struct._GimpRGB**, %struct._GimpRGB*** %colors.addr, align 8
  store %struct._GimpRGB* %4, %struct._GimpRGB** %5, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end.6
  %6 = load i32, i32* %i, align 4
  %conv = sext i32 %6 to i64
  %cmp8 = icmp ult i64 %conv, 147
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds [147 x %struct.ColorEntry], [147 x %struct.ColorEntry]* @named_colors, i32 0, i64 %idxprom
  %name = getelementptr inbounds %struct.ColorEntry, %struct.ColorEntry* %arrayidx, i32 0, i32 0
  %8 = load i8*, i8** %name, align 8
  %9 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %9 to i64
  %10 = load i8***, i8**** %names.addr, align 8
  %11 = load i8**, i8*** %10, align 8
  %arrayidx11 = getelementptr inbounds i8*, i8** %11, i64 %idxprom10
  store i8* %8, i8** %arrayidx11, align 8
  %12 = load %struct._GimpRGB**, %struct._GimpRGB*** %colors.addr, align 8
  %13 = load %struct._GimpRGB*, %struct._GimpRGB** %12, align 8
  %14 = load i32, i32* %i, align 4
  %idx.ext = sext i32 %14 to i64
  %add.ptr = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %13, i64 %idx.ext
  %15 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %15 to i64
  %arrayidx13 = getelementptr inbounds [147 x %struct.ColorEntry], [147 x %struct.ColorEntry]* @named_colors, i32 0, i64 %idxprom12
  %red = getelementptr inbounds %struct.ColorEntry, %struct.ColorEntry* %arrayidx13, i32 0, i32 1
  %16 = load i8, i8* %red, align 1
  %17 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %17 to i64
  %arrayidx15 = getelementptr inbounds [147 x %struct.ColorEntry], [147 x %struct.ColorEntry]* @named_colors, i32 0, i64 %idxprom14
  %green = getelementptr inbounds %struct.ColorEntry, %struct.ColorEntry* %arrayidx15, i32 0, i32 2
  %18 = load i8, i8* %green, align 1
  %19 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %19 to i64
  %arrayidx17 = getelementptr inbounds [147 x %struct.ColorEntry], [147 x %struct.ColorEntry]* @named_colors, i32 0, i64 %idxprom16
  %blue = getelementptr inbounds %struct.ColorEntry, %struct.ColorEntry* %arrayidx17, i32 0, i32 3
  %20 = load i8, i8* %blue, align 1
  call void @gimp_rgba_set_uchar(%struct._GimpRGB* %add.ptr, i8 zeroext %16, i8 zeroext %18, i8 zeroext %20, i8 zeroext -1)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %21 = load i32, i32* %i, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 147, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.else.4, %if.else
  %22 = load i32, i32* %retval
  ret i32 %22
}

declare noalias i8* @g_malloc_n(i64, i64) #1

declare void @gimp_rgba_set_uchar(%struct._GimpRGB*, i8 zeroext, i8 zeroext, i8 zeroext, i8 zeroext) #1

declare noalias i8* @g_malloc(i64) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

declare i8* @bsearch(i8*, i8*, i64, i64, i32 (i8*, i8*)*) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_rgb_color_entry_compare(i8* %a, i8* %b) #0 {
entry:
  %a.addr = alloca i8*, align 8
  %b.addr = alloca i8*, align 8
  %name = alloca i8*, align 8
  %entry1 = alloca %struct.ColorEntry*, align 8
  store i8* %a, i8** %a.addr, align 8
  store i8* %b, i8** %b.addr, align 8
  %0 = load i8*, i8** %a.addr, align 8
  store i8* %0, i8** %name, align 8
  %1 = load i8*, i8** %b.addr, align 8
  %2 = bitcast i8* %1 to %struct.ColorEntry*
  store %struct.ColorEntry* %2, %struct.ColorEntry** %entry1, align 8
  %3 = load i8*, i8** %name, align 8
  %4 = load %struct.ColorEntry*, %struct.ColorEntry** %entry1, align 8
  %name2 = getelementptr inbounds %struct.ColorEntry, %struct.ColorEntry* %4, i32 0, i32 0
  %5 = load i8*, i8** %name2, align 8
  %call = call i32 @g_ascii_strcasecmp(i8* %3, i8* %5)
  ret i32 %call
}

declare void @gimp_rgb_set_uchar(%struct._GimpRGB*, i8 zeroext, i8 zeroext, i8 zeroext) #1

declare i32 @g_ascii_strcasecmp(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_rgb_parse_hex_component(i8* %hex, i32 %len, double* %value) #0 {
entry:
  %retval = alloca i32, align 4
  %hex.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %value.addr = alloca double*, align 8
  %i = alloca i32, align 4
  %c = alloca i32, align 4
  store i8* %hex, i8** %hex.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  store double* %value, double** %value.addr, align 8
  store i32 0, i32* %c, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %len.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %hex.addr, align 8
  %3 = load i8, i8* %2, align 1
  %tobool = icmp ne i8 %3, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %for.body
  %4 = load i8*, i8** %hex.addr, align 8
  %5 = load i8, i8* %4, align 1
  %idxprom = zext i8 %5 to i64
  %6 = load i16*, i16** @g_ascii_table, align 8
  %arrayidx = getelementptr inbounds i16, i16* %6, i64 %idxprom
  %7 = load i16, i16* %arrayidx, align 2
  %conv = zext i16 %7 to i32
  %and = and i32 %conv, 1024
  %cmp1 = icmp ne i32 %and, 0
  br i1 %cmp1, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %for.body
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %8 = load i32, i32* %c, align 4
  %shl = shl i32 %8, 4
  %9 = load i8*, i8** %hex.addr, align 8
  %10 = load i8, i8* %9, align 1
  %call = call i32 @g_ascii_xdigit_value(i8 signext %10) #7
  %or = or i32 %shl, %call
  store i32 %or, i32* %c, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load i32, i32* %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4
  %12 = load i8*, i8** %hex.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr, i8** %hex.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %13 = load i32, i32* %len.addr, align 4
  switch i32 %13, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.4
    i32 3, label %sw.bb.7
    i32 4, label %sw.bb.10
  ]

sw.bb:                                            ; preds = %for.end
  %14 = load i32, i32* %c, align 4
  %conv3 = uitofp i32 %14 to double
  %div = fdiv double %conv3, 1.500000e+01
  %15 = load double*, double** %value.addr, align 8
  store double %div, double* %15, align 8
  br label %sw.epilog

sw.bb.4:                                          ; preds = %for.end
  %16 = load i32, i32* %c, align 4
  %conv5 = uitofp i32 %16 to double
  %div6 = fdiv double %conv5, 2.550000e+02
  %17 = load double*, double** %value.addr, align 8
  store double %div6, double* %17, align 8
  br label %sw.epilog

sw.bb.7:                                          ; preds = %for.end
  %18 = load i32, i32* %c, align 4
  %conv8 = uitofp i32 %18 to double
  %div9 = fdiv double %conv8, 4.095000e+03
  %19 = load double*, double** %value.addr, align 8
  store double %div9, double* %19, align 8
  br label %sw.epilog

sw.bb.10:                                         ; preds = %for.end
  %20 = load i32, i32* %c, align 4
  %conv11 = uitofp i32 %20 to double
  %div12 = fdiv double %conv11, 6.553500e+04
  %21 = load double*, double** %value.addr, align 8
  store double %div12, double* %21, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %for.end
  br label %do.body

do.body:                                          ; preds = %sw.default
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32 8, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.156, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.157, i32 0, i32 0), i32 503, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_rgb_parse_hex_component, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

do.end:                                           ; No predecessors!
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.10, %sw.bb.7, %sw.bb.4, %sw.bb
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %do.body, %if.then
  %22 = load i32, i32* %retval
  ret i32 %22
}

declare void @gimp_rgb_set(%struct._GimpRGB*, double, double, double) #1

; Function Attrs: nounwind readnone
declare i32 @g_ascii_xdigit_value(i8 signext) #4

declare void @g_log(i8*, i32, i8*, ...) #1

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #2

; Function Attrs: nounwind uwtable
define internal i32 @gimp_rgb_parse_css_numeric(%struct._GimpRGB* %rgb, i8* %css) #0 {
entry:
  %retval = alloca i32, align 4
  %rgb.addr = alloca %struct._GimpRGB*, align 8
  %css.addr = alloca i8*, align 8
  %values = alloca [4 x double], align 16
  %alpha = alloca i32, align 4
  %hsl = alloca i32, align 4
  %i = alloca i32, align 4
  %end = alloca i8*, align 8
  %value = alloca i64, align 8
  %tmp = alloca %struct._GimpHSL, align 8
  store %struct._GimpRGB* %rgb, %struct._GimpRGB** %rgb.addr, align 8
  store i8* %css, i8** %css.addr, align 8
  %0 = load i8*, i8** %css.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 0
  %1 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 114
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %2 = load i8*, i8** %css.addr, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %2, i64 1
  %3 = load i8, i8* %arrayidx2, align 1
  %conv3 = sext i8 %3 to i32
  %cmp4 = icmp eq i32 %conv3, 103
  br i1 %cmp4, label %land.lhs.true.6, label %if.else

land.lhs.true.6:                                  ; preds = %land.lhs.true
  %4 = load i8*, i8** %css.addr, align 8
  %arrayidx7 = getelementptr inbounds i8, i8* %4, i64 2
  %5 = load i8, i8* %arrayidx7, align 1
  %conv8 = sext i8 %5 to i32
  %cmp9 = icmp eq i32 %conv8, 98
  br i1 %cmp9, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true.6
  store i32 0, i32* %hsl, align 4
  br label %if.end.27

if.else:                                          ; preds = %land.lhs.true.6, %land.lhs.true, %entry
  %6 = load i8*, i8** %css.addr, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %6, i64 0
  %7 = load i8, i8* %arrayidx11, align 1
  %conv12 = sext i8 %7 to i32
  %cmp13 = icmp eq i32 %conv12, 104
  br i1 %cmp13, label %land.lhs.true.15, label %if.else.26

land.lhs.true.15:                                 ; preds = %if.else
  %8 = load i8*, i8** %css.addr, align 8
  %arrayidx16 = getelementptr inbounds i8, i8* %8, i64 1
  %9 = load i8, i8* %arrayidx16, align 1
  %conv17 = sext i8 %9 to i32
  %cmp18 = icmp eq i32 %conv17, 115
  br i1 %cmp18, label %land.lhs.true.20, label %if.else.26

land.lhs.true.20:                                 ; preds = %land.lhs.true.15
  %10 = load i8*, i8** %css.addr, align 8
  %arrayidx21 = getelementptr inbounds i8, i8* %10, i64 2
  %11 = load i8, i8* %arrayidx21, align 1
  %conv22 = sext i8 %11 to i32
  %cmp23 = icmp eq i32 %conv22, 108
  br i1 %cmp23, label %if.then.25, label %if.else.26

if.then.25:                                       ; preds = %land.lhs.true.20
  store i32 1, i32* %hsl, align 4
  br label %if.end

if.else.26:                                       ; preds = %land.lhs.true.20, %land.lhs.true.15, %if.else
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then.25
  br label %if.end.27

if.end.27:                                        ; preds = %if.end, %if.then
  %12 = load i8*, i8** %css.addr, align 8
  %arrayidx28 = getelementptr inbounds i8, i8* %12, i64 3
  %13 = load i8, i8* %arrayidx28, align 1
  %conv29 = sext i8 %13 to i32
  %cmp30 = icmp eq i32 %conv29, 97
  br i1 %cmp30, label %land.lhs.true.32, label %if.else.38

land.lhs.true.32:                                 ; preds = %if.end.27
  %14 = load i8*, i8** %css.addr, align 8
  %arrayidx33 = getelementptr inbounds i8, i8* %14, i64 4
  %15 = load i8, i8* %arrayidx33, align 1
  %conv34 = sext i8 %15 to i32
  %cmp35 = icmp eq i32 %conv34, 40
  br i1 %cmp35, label %if.then.37, label %if.else.38

if.then.37:                                       ; preds = %land.lhs.true.32
  store i32 1, i32* %alpha, align 4
  br label %if.end.46

if.else.38:                                       ; preds = %land.lhs.true.32, %if.end.27
  %16 = load i8*, i8** %css.addr, align 8
  %arrayidx39 = getelementptr inbounds i8, i8* %16, i64 3
  %17 = load i8, i8* %arrayidx39, align 1
  %conv40 = sext i8 %17 to i32
  %cmp41 = icmp eq i32 %conv40, 40
  br i1 %cmp41, label %if.then.43, label %if.else.44

if.then.43:                                       ; preds = %if.else.38
  store i32 0, i32* %alpha, align 4
  br label %if.end.45

if.else.44:                                       ; preds = %if.else.38
  store i32 0, i32* %retval
  br label %return

if.end.45:                                        ; preds = %if.then.43
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.45, %if.then.37
  %18 = load i32, i32* %alpha, align 4
  %tobool = icmp ne i32 %18, 0
  %cond = select i1 %tobool, i32 5, i32 4
  %19 = load i8*, i8** %css.addr, align 8
  %idx.ext = sext i32 %cond to i64
  %add.ptr = getelementptr inbounds i8, i8* %19, i64 %idx.ext
  store i8* %add.ptr, i8** %css.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.46
  %20 = load i32, i32* %i, align 4
  %21 = load i32, i32* %alpha, align 4
  %tobool47 = icmp ne i32 %21, 0
  %cond48 = select i1 %tobool47, i32 4, i32 3
  %cmp49 = icmp slt i32 %20, %cond48
  br i1 %cmp49, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %22 = load i8*, i8** %css.addr, align 8
  store i8* %22, i8** %end, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body
  %23 = load i8*, i8** %end, align 8
  %24 = load i8, i8* %23, align 1
  %conv51 = sext i8 %24 to i32
  %tobool52 = icmp ne i32 %conv51, 0
  br i1 %tobool52, label %land.lhs.true.53, label %land.end

land.lhs.true.53:                                 ; preds = %while.cond
  %25 = load i8*, i8** %end, align 8
  %26 = load i8, i8* %25, align 1
  %conv54 = sext i8 %26 to i32
  %cmp55 = icmp ne i32 %conv54, 44
  br i1 %cmp55, label %land.lhs.true.57, label %land.end

land.lhs.true.57:                                 ; preds = %land.lhs.true.53
  %27 = load i8*, i8** %end, align 8
  %28 = load i8, i8* %27, align 1
  %conv58 = sext i8 %28 to i32
  %cmp59 = icmp ne i32 %conv58, 37
  br i1 %cmp59, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.57
  %29 = load i8*, i8** %end, align 8
  %30 = load i8, i8* %29, align 1
  %conv61 = sext i8 %30 to i32
  %cmp62 = icmp ne i32 %conv61, 41
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.57, %land.lhs.true.53, %while.cond
  %31 = phi i1 [ false, %land.lhs.true.57 ], [ false, %land.lhs.true.53 ], [ false, %while.cond ], [ %cmp62, %land.rhs ]
  br i1 %31, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %32 = load i8*, i8** %end, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %incdec.ptr, i8** %end, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %33 = load i32, i32* %i, align 4
  %cmp64 = icmp eq i32 %33, 3
  br i1 %cmp64, label %if.then.69, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.end
  %34 = load i8*, i8** %end, align 8
  %35 = load i8, i8* %34, align 1
  %conv66 = sext i8 %35 to i32
  %cmp67 = icmp eq i32 %conv66, 37
  br i1 %cmp67, label %if.then.69, label %if.else.84

if.then.69:                                       ; preds = %lor.lhs.false, %while.end
  %36 = load i8*, i8** %css.addr, align 8
  %call = call double @g_ascii_strtod(i8* %36, i8** %end)
  %37 = load i32, i32* %i, align 4
  %idxprom = sext i32 %37 to i64
  %arrayidx70 = getelementptr inbounds [4 x double], [4 x double]* %values, i32 0, i64 %idxprom
  store double %call, double* %arrayidx70, align 8
  %call71 = call i32* @__errno_location() #7
  %38 = load i32, i32* %call71, align 4
  %cmp72 = icmp eq i32 %38, 34
  br i1 %cmp72, label %if.then.74, label %if.end.75

if.then.74:                                       ; preds = %if.then.69
  store i32 0, i32* %retval
  br label %return

if.end.75:                                        ; preds = %if.then.69
  %39 = load i8*, i8** %end, align 8
  %40 = load i8, i8* %39, align 1
  %conv76 = sext i8 %40 to i32
  %cmp77 = icmp eq i32 %conv76, 37
  br i1 %cmp77, label %if.then.79, label %if.end.83

if.then.79:                                       ; preds = %if.end.75
  %41 = load i8*, i8** %end, align 8
  %incdec.ptr80 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %incdec.ptr80, i8** %end, align 8
  %42 = load i32, i32* %i, align 4
  %idxprom81 = sext i32 %42 to i64
  %arrayidx82 = getelementptr inbounds [4 x double], [4 x double]* %values, i32 0, i64 %idxprom81
  %43 = load double, double* %arrayidx82, align 8
  %div = fdiv double %43, 1.000000e+02
  store double %div, double* %arrayidx82, align 8
  br label %if.end.83

if.end.83:                                        ; preds = %if.then.79, %if.end.75
  br label %if.end.106

if.else.84:                                       ; preds = %lor.lhs.false
  %44 = load i8*, i8** %css.addr, align 8
  %call85 = call i64 @strtol(i8* %44, i8** %end, i32 10) #3
  store i64 %call85, i64* %value, align 8
  %call86 = call i32* @__errno_location() #7
  %45 = load i32, i32* %call86, align 4
  %cmp87 = icmp eq i32 %45, 34
  br i1 %cmp87, label %if.then.89, label %if.end.90

if.then.89:                                       ; preds = %if.else.84
  store i32 0, i32* %retval
  br label %return

if.end.90:                                        ; preds = %if.else.84
  %46 = load i32, i32* %hsl, align 4
  %tobool91 = icmp ne i32 %46, 0
  br i1 %tobool91, label %if.then.92, label %if.else.100

if.then.92:                                       ; preds = %if.end.90
  %47 = load i64, i64* %value, align 8
  %conv93 = sitofp i64 %47 to double
  %48 = load i32, i32* %i, align 4
  %cmp94 = icmp eq i32 %48, 0
  %cond96 = select i1 %cmp94, double 3.600000e+02, double 1.000000e+02
  %div97 = fdiv double %conv93, %cond96
  %49 = load i32, i32* %i, align 4
  %idxprom98 = sext i32 %49 to i64
  %arrayidx99 = getelementptr inbounds [4 x double], [4 x double]* %values, i32 0, i64 %idxprom98
  store double %div97, double* %arrayidx99, align 8
  br label %if.end.105

if.else.100:                                      ; preds = %if.end.90
  %50 = load i64, i64* %value, align 8
  %conv101 = sitofp i64 %50 to double
  %div102 = fdiv double %conv101, 2.550000e+02
  %51 = load i32, i32* %i, align 4
  %idxprom103 = sext i32 %51 to i64
  %arrayidx104 = getelementptr inbounds [4 x double], [4 x double]* %values, i32 0, i64 %idxprom103
  store double %div102, double* %arrayidx104, align 8
  br label %if.end.105

if.end.105:                                       ; preds = %if.else.100, %if.then.92
  br label %if.end.106

if.end.106:                                       ; preds = %if.end.105, %if.end.83
  br label %while.cond.107

while.cond.107:                                   ; preds = %while.body.116, %if.end.106
  %52 = load i8*, i8** %end, align 8
  %53 = load i8, i8* %52, align 1
  %conv108 = sext i8 %53 to i32
  %cmp109 = icmp eq i32 %conv108, 44
  br i1 %cmp109, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond.107
  %54 = load i8*, i8** %end, align 8
  %55 = load i8, i8* %54, align 1
  %idxprom111 = zext i8 %55 to i64
  %56 = load i16*, i16** @g_ascii_table, align 8
  %arrayidx112 = getelementptr inbounds i16, i16* %56, i64 %idxprom111
  %57 = load i16, i16* %arrayidx112, align 2
  %conv113 = zext i16 %57 to i32
  %and = and i32 %conv113, 256
  %cmp114 = icmp ne i32 %and, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.cond.107
  %58 = phi i1 [ true, %while.cond.107 ], [ %cmp114, %lor.rhs ]
  br i1 %58, label %while.body.116, label %while.end.118

while.body.116:                                   ; preds = %lor.end
  %59 = load i8*, i8** %end, align 8
  %incdec.ptr117 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %incdec.ptr117, i8** %end, align 8
  br label %while.cond.107

while.end.118:                                    ; preds = %lor.end
  %60 = load i8*, i8** %end, align 8
  store i8* %60, i8** %css.addr, align 8
  br label %for.inc

for.inc:                                          ; preds = %while.end.118
  %61 = load i32, i32* %i, align 4
  %inc = add nsw i32 %61, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %62 = load i8*, i8** %css.addr, align 8
  %63 = load i8, i8* %62, align 1
  %conv119 = sext i8 %63 to i32
  %cmp120 = icmp ne i32 %conv119, 41
  br i1 %cmp120, label %if.then.122, label %if.end.123

if.then.122:                                      ; preds = %for.end
  store i32 0, i32* %retval
  br label %return

if.end.123:                                       ; preds = %for.end
  %64 = load i32, i32* %alpha, align 4
  %tobool124 = icmp ne i32 %64, 0
  br i1 %tobool124, label %if.then.125, label %if.else.130

if.then.125:                                      ; preds = %if.end.123
  %65 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %arrayidx126 = getelementptr inbounds [4 x double], [4 x double]* %values, i32 0, i64 0
  %66 = load double, double* %arrayidx126, align 8
  %arrayidx127 = getelementptr inbounds [4 x double], [4 x double]* %values, i32 0, i64 1
  %67 = load double, double* %arrayidx127, align 8
  %arrayidx128 = getelementptr inbounds [4 x double], [4 x double]* %values, i32 0, i64 2
  %68 = load double, double* %arrayidx128, align 8
  %arrayidx129 = getelementptr inbounds [4 x double], [4 x double]* %values, i32 0, i64 3
  %69 = load double, double* %arrayidx129, align 8
  call void @gimp_rgba_set(%struct._GimpRGB* %65, double %66, double %67, double %68, double %69)
  br label %if.end.134

if.else.130:                                      ; preds = %if.end.123
  %70 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %arrayidx131 = getelementptr inbounds [4 x double], [4 x double]* %values, i32 0, i64 0
  %71 = load double, double* %arrayidx131, align 8
  %arrayidx132 = getelementptr inbounds [4 x double], [4 x double]* %values, i32 0, i64 1
  %72 = load double, double* %arrayidx132, align 8
  %arrayidx133 = getelementptr inbounds [4 x double], [4 x double]* %values, i32 0, i64 2
  %73 = load double, double* %arrayidx133, align 8
  call void @gimp_rgb_set(%struct._GimpRGB* %70, double %71, double %72, double %73)
  br label %if.end.134

if.end.134:                                       ; preds = %if.else.130, %if.then.125
  %74 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  call void @gimp_rgb_clamp(%struct._GimpRGB* %74)
  %75 = load i32, i32* %hsl, align 4
  %tobool135 = icmp ne i32 %75, 0
  br i1 %tobool135, label %if.then.136, label %if.end.137

if.then.136:                                      ; preds = %if.end.134
  %76 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %77 = bitcast %struct._GimpRGB* %76 to %struct._GimpHSL*
  %78 = bitcast %struct._GimpHSL* %tmp to i8*
  %79 = bitcast %struct._GimpHSL* %77 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %78, i8* %79, i64 32, i32 8, i1 false)
  %80 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  call void @gimp_hsl_to_rgb(%struct._GimpHSL* %tmp, %struct._GimpRGB* %80)
  br label %if.end.137

if.end.137:                                       ; preds = %if.then.136, %if.end.134
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.137, %if.then.122, %if.then.89, %if.then.74, %if.else.44, %if.else.26
  %81 = load i32, i32* %retval
  ret i32 %81
}

declare double @g_ascii_strtod(i8*, i8**) #1

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #4

; Function Attrs: nounwind
declare i64 @strtol(i8*, i8**, i32) #5

declare void @gimp_rgb_clamp(%struct._GimpRGB*) #1

declare void @gimp_hsl_to_rgb(%struct._GimpHSL*, %struct._GimpRGB*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
