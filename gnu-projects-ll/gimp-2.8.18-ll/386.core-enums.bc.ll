; ModuleID = './app/core/core-enums.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GEnumValue = type { i32, i8*, i8* }
%struct._GimpEnumDesc = type { i32, i8*, i8* }
%struct._GFlagsValue = type { i32, i8*, i8* }
%struct._GimpFlagsDesc = type { i32, i8*, i8* }

@gimp_container_policy_get_type.values = internal constant [3 x %struct._GEnumValue] [%struct._GEnumValue { i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0) }, %struct._GEnumValue { i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0) }, %struct._GEnumValue zeroinitializer], align 16
@.str = private unnamed_addr constant [29 x i8] c"GIMP_CONTAINER_POLICY_STRONG\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"strong\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"GIMP_CONTAINER_POLICY_WEAK\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"weak\00", align 1
@gimp_container_policy_get_type.descs = internal constant [3 x %struct._GimpEnumDesc] [%struct._GimpEnumDesc { i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc zeroinitializer], align 16
@gimp_container_policy_get_type.type = internal global i64 0, align 8
@.str.4 = private unnamed_addr constant [20 x i8] c"GimpContainerPolicy\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"container-policy\00", align 1
@gimp_convert_dither_type_get_type.values = internal constant [5 x %struct._GEnumValue] [%struct._GEnumValue { i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0) }, %struct._GEnumValue { i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0) }, %struct._GEnumValue { i32 2, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i32 0, i32 0) }, %struct._GEnumValue { i32 3, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0) }, %struct._GEnumValue zeroinitializer], align 16
@.str.6 = private unnamed_addr constant [15 x i8] c"GIMP_NO_DITHER\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"no-dither\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"GIMP_FS_DITHER\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"fs-dither\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"GIMP_FSLOWBLEED_DITHER\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"fslowbleed-dither\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"GIMP_FIXED_DITHER\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"fixed-dither\00", align 1
@gimp_convert_dither_type_get_type.descs = internal constant [5 x %struct._GimpEnumDesc] [%struct._GimpEnumDesc { i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.15, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 2, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.16, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 3, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc zeroinitializer], align 16
@.str.14 = private unnamed_addr constant [5 x i8] c"None\00", align 1
@.str.15 = private unnamed_addr constant [25 x i8] c"Floyd-Steinberg (normal)\00", align 1
@.str.16 = private unnamed_addr constant [41 x i8] c"Floyd-Steinberg (reduced color bleeding)\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"Positioned\00", align 1
@gimp_convert_dither_type_get_type.type = internal global i64 0, align 8
@.str.18 = private unnamed_addr constant [22 x i8] c"GimpConvertDitherType\00", align 1
@.str.19 = private unnamed_addr constant [20 x i8] c"convert-dither-type\00", align 1
@gimp_convert_palette_type_get_type.values = internal constant [5 x %struct._GEnumValue] [%struct._GEnumValue { i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.21, i32 0, i32 0) }, %struct._GEnumValue { i32 2, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i32 0, i32 0) }, %struct._GEnumValue { i32 3, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.25, i32 0, i32 0) }, %struct._GEnumValue { i32 4, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.27, i32 0, i32 0) }, %struct._GEnumValue zeroinitializer], align 16
@.str.20 = private unnamed_addr constant [18 x i8] c"GIMP_MAKE_PALETTE\00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"make-palette\00", align 1
@.str.22 = private unnamed_addr constant [17 x i8] c"GIMP_WEB_PALETTE\00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"web-palette\00", align 1
@.str.24 = private unnamed_addr constant [18 x i8] c"GIMP_MONO_PALETTE\00", align 1
@.str.25 = private unnamed_addr constant [13 x i8] c"mono-palette\00", align 1
@.str.26 = private unnamed_addr constant [20 x i8] c"GIMP_CUSTOM_PALETTE\00", align 1
@.str.27 = private unnamed_addr constant [15 x i8] c"custom-palette\00", align 1
@gimp_convert_palette_type_get_type.descs = internal constant [5 x %struct._GimpEnumDesc] [%struct._GimpEnumDesc { i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.28, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 2, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.29, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 3, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.30, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.31, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc zeroinitializer], align 16
@.str.28 = private unnamed_addr constant [25 x i8] c"Generate optimum palette\00", align 1
@.str.29 = private unnamed_addr constant [26 x i8] c"Use web-optimized palette\00", align 1
@.str.30 = private unnamed_addr constant [36 x i8] c"Use black and white (1-bit) palette\00", align 1
@.str.31 = private unnamed_addr constant [19 x i8] c"Use custom palette\00", align 1
@gimp_convert_palette_type_get_type.type = internal global i64 0, align 8
@.str.32 = private unnamed_addr constant [23 x i8] c"GimpConvertPaletteType\00", align 1
@.str.33 = private unnamed_addr constant [21 x i8] c"convert-palette-type\00", align 1
@gimp_gravity_type_get_type.values = internal constant [11 x %struct._GEnumValue] [%struct._GEnumValue { i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i32 0, i32 0) }, %struct._GEnumValue { i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.37, i32 0, i32 0) }, %struct._GEnumValue { i32 2, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.39, i32 0, i32 0) }, %struct._GEnumValue { i32 3, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.41, i32 0, i32 0) }, %struct._GEnumValue { i32 4, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i32 0, i32 0) }, %struct._GEnumValue { i32 5, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.45, i32 0, i32 0) }, %struct._GEnumValue { i32 6, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i32 0, i32 0) }, %struct._GEnumValue { i32 7, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.49, i32 0, i32 0) }, %struct._GEnumValue { i32 8, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.51, i32 0, i32 0) }, %struct._GEnumValue { i32 9, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.53, i32 0, i32 0) }, %struct._GEnumValue zeroinitializer], align 16
@.str.34 = private unnamed_addr constant [18 x i8] c"GIMP_GRAVITY_NONE\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.36 = private unnamed_addr constant [24 x i8] c"GIMP_GRAVITY_NORTH_WEST\00", align 1
@.str.37 = private unnamed_addr constant [11 x i8] c"north-west\00", align 1
@.str.38 = private unnamed_addr constant [19 x i8] c"GIMP_GRAVITY_NORTH\00", align 1
@.str.39 = private unnamed_addr constant [6 x i8] c"north\00", align 1
@.str.40 = private unnamed_addr constant [24 x i8] c"GIMP_GRAVITY_NORTH_EAST\00", align 1
@.str.41 = private unnamed_addr constant [11 x i8] c"north-east\00", align 1
@.str.42 = private unnamed_addr constant [18 x i8] c"GIMP_GRAVITY_WEST\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"west\00", align 1
@.str.44 = private unnamed_addr constant [20 x i8] c"GIMP_GRAVITY_CENTER\00", align 1
@.str.45 = private unnamed_addr constant [7 x i8] c"center\00", align 1
@.str.46 = private unnamed_addr constant [18 x i8] c"GIMP_GRAVITY_EAST\00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c"east\00", align 1
@.str.48 = private unnamed_addr constant [24 x i8] c"GIMP_GRAVITY_SOUTH_WEST\00", align 1
@.str.49 = private unnamed_addr constant [11 x i8] c"south-west\00", align 1
@.str.50 = private unnamed_addr constant [19 x i8] c"GIMP_GRAVITY_SOUTH\00", align 1
@.str.51 = private unnamed_addr constant [6 x i8] c"south\00", align 1
@.str.52 = private unnamed_addr constant [24 x i8] c"GIMP_GRAVITY_SOUTH_EAST\00", align 1
@.str.53 = private unnamed_addr constant [11 x i8] c"south-east\00", align 1
@gimp_gravity_type_get_type.descs = internal constant [11 x %struct._GimpEnumDesc] [%struct._GimpEnumDesc { i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.34, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.36, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 2, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.38, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 3, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.40, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 4, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.42, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 5, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.44, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 6, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.46, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 7, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.48, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 8, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.50, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 9, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.52, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc zeroinitializer], align 16
@gimp_gravity_type_get_type.type = internal global i64 0, align 8
@.str.54 = private unnamed_addr constant [16 x i8] c"GimpGravityType\00", align 1
@.str.55 = private unnamed_addr constant [13 x i8] c"gravity-type\00", align 1
@gimp_alignment_type_get_type.values = internal constant [13 x %struct._GEnumValue] [%struct._GEnumValue { i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.57, i32 0, i32 0) }, %struct._GEnumValue { i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.59, i32 0, i32 0) }, %struct._GEnumValue { i32 2, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.61, i32 0, i32 0) }, %struct._GEnumValue { i32 3, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.63, i32 0, i32 0) }, %struct._GEnumValue { i32 4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.65, i32 0, i32 0) }, %struct._GEnumValue { i32 5, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.67, i32 0, i32 0) }, %struct._GEnumValue { i32 6, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.69, i32 0, i32 0) }, %struct._GEnumValue { i32 7, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.71, i32 0, i32 0) }, %struct._GEnumValue { i32 8, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.72, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.73, i32 0, i32 0) }, %struct._GEnumValue { i32 9, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.74, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.75, i32 0, i32 0) }, %struct._GEnumValue { i32 10, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.76, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.77, i32 0, i32 0) }, %struct._GEnumValue { i32 11, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.79, i32 0, i32 0) }, %struct._GEnumValue zeroinitializer], align 16
@.str.56 = private unnamed_addr constant [16 x i8] c"GIMP_ALIGN_LEFT\00", align 1
@.str.57 = private unnamed_addr constant [11 x i8] c"align-left\00", align 1
@.str.58 = private unnamed_addr constant [19 x i8] c"GIMP_ALIGN_HCENTER\00", align 1
@.str.59 = private unnamed_addr constant [14 x i8] c"align-hcenter\00", align 1
@.str.60 = private unnamed_addr constant [17 x i8] c"GIMP_ALIGN_RIGHT\00", align 1
@.str.61 = private unnamed_addr constant [12 x i8] c"align-right\00", align 1
@.str.62 = private unnamed_addr constant [15 x i8] c"GIMP_ALIGN_TOP\00", align 1
@.str.63 = private unnamed_addr constant [10 x i8] c"align-top\00", align 1
@.str.64 = private unnamed_addr constant [19 x i8] c"GIMP_ALIGN_VCENTER\00", align 1
@.str.65 = private unnamed_addr constant [14 x i8] c"align-vcenter\00", align 1
@.str.66 = private unnamed_addr constant [18 x i8] c"GIMP_ALIGN_BOTTOM\00", align 1
@.str.67 = private unnamed_addr constant [13 x i8] c"align-bottom\00", align 1
@.str.68 = private unnamed_addr constant [18 x i8] c"GIMP_ARRANGE_LEFT\00", align 1
@.str.69 = private unnamed_addr constant [13 x i8] c"arrange-left\00", align 1
@.str.70 = private unnamed_addr constant [21 x i8] c"GIMP_ARRANGE_HCENTER\00", align 1
@.str.71 = private unnamed_addr constant [16 x i8] c"arrange-hcenter\00", align 1
@.str.72 = private unnamed_addr constant [19 x i8] c"GIMP_ARRANGE_RIGHT\00", align 1
@.str.73 = private unnamed_addr constant [14 x i8] c"arrange-right\00", align 1
@.str.74 = private unnamed_addr constant [17 x i8] c"GIMP_ARRANGE_TOP\00", align 1
@.str.75 = private unnamed_addr constant [12 x i8] c"arrange-top\00", align 1
@.str.76 = private unnamed_addr constant [21 x i8] c"GIMP_ARRANGE_VCENTER\00", align 1
@.str.77 = private unnamed_addr constant [16 x i8] c"arrange-vcenter\00", align 1
@.str.78 = private unnamed_addr constant [20 x i8] c"GIMP_ARRANGE_BOTTOM\00", align 1
@.str.79 = private unnamed_addr constant [15 x i8] c"arrange-bottom\00", align 1
@gimp_alignment_type_get_type.descs = internal constant [13 x %struct._GimpEnumDesc] [%struct._GimpEnumDesc { i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.56, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.58, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 2, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.60, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 3, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.62, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.64, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 5, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.66, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 6, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.68, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 7, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.70, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 8, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.72, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 9, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.74, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 10, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.76, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 11, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.78, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc zeroinitializer], align 16
@gimp_alignment_type_get_type.type = internal global i64 0, align 8
@.str.80 = private unnamed_addr constant [18 x i8] c"GimpAlignmentType\00", align 1
@.str.81 = private unnamed_addr constant [15 x i8] c"alignment-type\00", align 1
@gimp_align_reference_type_get_type.values = internal constant [7 x %struct._GEnumValue] [%struct._GEnumValue { i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.82, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.83, i32 0, i32 0) }, %struct._GEnumValue { i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.84, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.85, i32 0, i32 0) }, %struct._GEnumValue { i32 2, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.86, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.87, i32 0, i32 0) }, %struct._GEnumValue { i32 3, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.89, i32 0, i32 0) }, %struct._GEnumValue { i32 4, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.90, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.91, i32 0, i32 0) }, %struct._GEnumValue { i32 5, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.92, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.93, i32 0, i32 0) }, %struct._GEnumValue zeroinitializer], align 16
@.str.82 = private unnamed_addr constant [27 x i8] c"GIMP_ALIGN_REFERENCE_FIRST\00", align 1
@.str.83 = private unnamed_addr constant [6 x i8] c"first\00", align 1
@.str.84 = private unnamed_addr constant [27 x i8] c"GIMP_ALIGN_REFERENCE_IMAGE\00", align 1
@.str.85 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.86 = private unnamed_addr constant [31 x i8] c"GIMP_ALIGN_REFERENCE_SELECTION\00", align 1
@.str.87 = private unnamed_addr constant [10 x i8] c"selection\00", align 1
@.str.88 = private unnamed_addr constant [34 x i8] c"GIMP_ALIGN_REFERENCE_ACTIVE_LAYER\00", align 1
@.str.89 = private unnamed_addr constant [13 x i8] c"active-layer\00", align 1
@.str.90 = private unnamed_addr constant [36 x i8] c"GIMP_ALIGN_REFERENCE_ACTIVE_CHANNEL\00", align 1
@.str.91 = private unnamed_addr constant [15 x i8] c"active-channel\00", align 1
@.str.92 = private unnamed_addr constant [33 x i8] c"GIMP_ALIGN_REFERENCE_ACTIVE_PATH\00", align 1
@.str.93 = private unnamed_addr constant [12 x i8] c"active-path\00", align 1
@gimp_align_reference_type_get_type.descs = internal constant [7 x %struct._GimpEnumDesc] [%struct._GimpEnumDesc { i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.94, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.95, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.96, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 3, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.97, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.98, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 5, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.99, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc zeroinitializer], align 16
@.str.94 = private unnamed_addr constant [11 x i8] c"First item\00", align 1
@.str.95 = private unnamed_addr constant [6 x i8] c"Image\00", align 1
@.str.96 = private unnamed_addr constant [10 x i8] c"Selection\00", align 1
@.str.97 = private unnamed_addr constant [13 x i8] c"Active layer\00", align 1
@.str.98 = private unnamed_addr constant [15 x i8] c"Active channel\00", align 1
@.str.99 = private unnamed_addr constant [12 x i8] c"Active path\00", align 1
@gimp_align_reference_type_get_type.type = internal global i64 0, align 8
@.str.100 = private unnamed_addr constant [23 x i8] c"GimpAlignReferenceType\00", align 1
@.str.101 = private unnamed_addr constant [21 x i8] c"align-reference-type\00", align 1
@gimp_fill_type_get_type.values = internal constant [7 x %struct._GEnumValue] [%struct._GEnumValue { i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.102, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.103, i32 0, i32 0) }, %struct._GEnumValue { i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.104, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.105, i32 0, i32 0) }, %struct._GEnumValue { i32 2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.106, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.107, i32 0, i32 0) }, %struct._GEnumValue { i32 3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.108, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.109, i32 0, i32 0) }, %struct._GEnumValue { i32 4, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.110, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.111, i32 0, i32 0) }, %struct._GEnumValue { i32 5, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.112, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.113, i32 0, i32 0) }, %struct._GEnumValue zeroinitializer], align 16
@.str.102 = private unnamed_addr constant [21 x i8] c"GIMP_FOREGROUND_FILL\00", align 1
@.str.103 = private unnamed_addr constant [16 x i8] c"foreground-fill\00", align 1
@.str.104 = private unnamed_addr constant [21 x i8] c"GIMP_BACKGROUND_FILL\00", align 1
@.str.105 = private unnamed_addr constant [16 x i8] c"background-fill\00", align 1
@.str.106 = private unnamed_addr constant [16 x i8] c"GIMP_WHITE_FILL\00", align 1
@.str.107 = private unnamed_addr constant [11 x i8] c"white-fill\00", align 1
@.str.108 = private unnamed_addr constant [22 x i8] c"GIMP_TRANSPARENT_FILL\00", align 1
@.str.109 = private unnamed_addr constant [17 x i8] c"transparent-fill\00", align 1
@.str.110 = private unnamed_addr constant [18 x i8] c"GIMP_PATTERN_FILL\00", align 1
@.str.111 = private unnamed_addr constant [13 x i8] c"pattern-fill\00", align 1
@.str.112 = private unnamed_addr constant [13 x i8] c"GIMP_NO_FILL\00", align 1
@.str.113 = private unnamed_addr constant [8 x i8] c"no-fill\00", align 1
@gimp_fill_type_get_type.descs = internal constant [7 x %struct._GimpEnumDesc] [%struct._GimpEnumDesc { i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.114, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.115, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.116, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 3, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.117, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.118, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc zeroinitializer], align 16
@.str.114 = private unnamed_addr constant [17 x i8] c"Foreground color\00", align 1
@.str.115 = private unnamed_addr constant [17 x i8] c"Background color\00", align 1
@.str.116 = private unnamed_addr constant [6 x i8] c"White\00", align 1
@.str.117 = private unnamed_addr constant [13 x i8] c"Transparency\00", align 1
@.str.118 = private unnamed_addr constant [8 x i8] c"Pattern\00", align 1
@gimp_fill_type_get_type.type = internal global i64 0, align 8
@.str.119 = private unnamed_addr constant [13 x i8] c"GimpFillType\00", align 1
@.str.120 = private unnamed_addr constant [10 x i8] c"fill-type\00", align 1
@gimp_fill_style_get_type.values = internal constant [3 x %struct._GEnumValue] [%struct._GEnumValue { i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.121, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.122, i32 0, i32 0) }, %struct._GEnumValue { i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.123, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.124, i32 0, i32 0) }, %struct._GEnumValue zeroinitializer], align 16
@.str.121 = private unnamed_addr constant [22 x i8] c"GIMP_FILL_STYLE_SOLID\00", align 1
@.str.122 = private unnamed_addr constant [6 x i8] c"solid\00", align 1
@.str.123 = private unnamed_addr constant [24 x i8] c"GIMP_FILL_STYLE_PATTERN\00", align 1
@.str.124 = private unnamed_addr constant [8 x i8] c"pattern\00", align 1
@gimp_fill_style_get_type.descs = internal constant [3 x %struct._GimpEnumDesc] [%struct._GimpEnumDesc { i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.125, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.118, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc zeroinitializer], align 16
@.str.125 = private unnamed_addr constant [12 x i8] c"Solid color\00", align 1
@gimp_fill_style_get_type.type = internal global i64 0, align 8
@.str.126 = private unnamed_addr constant [14 x i8] c"GimpFillStyle\00", align 1
@.str.127 = private unnamed_addr constant [11 x i8] c"fill-style\00", align 1
@gimp_stroke_method_get_type.values = internal constant [3 x %struct._GEnumValue] [%struct._GEnumValue { i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.128, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.129, i32 0, i32 0) }, %struct._GEnumValue { i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.130, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.131, i32 0, i32 0) }, %struct._GEnumValue zeroinitializer], align 16
@.str.128 = private unnamed_addr constant [26 x i8] c"GIMP_STROKE_METHOD_LIBART\00", align 1
@.str.129 = private unnamed_addr constant [7 x i8] c"libart\00", align 1
@.str.130 = private unnamed_addr constant [30 x i8] c"GIMP_STROKE_METHOD_PAINT_CORE\00", align 1
@.str.131 = private unnamed_addr constant [11 x i8] c"paint-core\00", align 1
@gimp_stroke_method_get_type.descs = internal constant [3 x %struct._GimpEnumDesc] [%struct._GimpEnumDesc { i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.132, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.133, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc zeroinitializer], align 16
@.str.132 = private unnamed_addr constant [12 x i8] c"Stroke line\00", align 1
@.str.133 = private unnamed_addr constant [25 x i8] c"Stroke with a paint tool\00", align 1
@gimp_stroke_method_get_type.type = internal global i64 0, align 8
@.str.134 = private unnamed_addr constant [17 x i8] c"GimpStrokeMethod\00", align 1
@.str.135 = private unnamed_addr constant [14 x i8] c"stroke-method\00", align 1
@gimp_join_style_get_type.values = internal constant [4 x %struct._GEnumValue] [%struct._GEnumValue { i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.136, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.137, i32 0, i32 0) }, %struct._GEnumValue { i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.138, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.139, i32 0, i32 0) }, %struct._GEnumValue { i32 2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.140, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.141, i32 0, i32 0) }, %struct._GEnumValue zeroinitializer], align 16
@.str.136 = private unnamed_addr constant [16 x i8] c"GIMP_JOIN_MITER\00", align 1
@.str.137 = private unnamed_addr constant [6 x i8] c"miter\00", align 1
@.str.138 = private unnamed_addr constant [16 x i8] c"GIMP_JOIN_ROUND\00", align 1
@.str.139 = private unnamed_addr constant [6 x i8] c"round\00", align 1
@.str.140 = private unnamed_addr constant [16 x i8] c"GIMP_JOIN_BEVEL\00", align 1
@.str.141 = private unnamed_addr constant [6 x i8] c"bevel\00", align 1
@gimp_join_style_get_type.descs = internal constant [4 x %struct._GimpEnumDesc] [%struct._GimpEnumDesc { i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.142, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.143, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.144, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc zeroinitializer], align 16
@.str.142 = private unnamed_addr constant [6 x i8] c"Miter\00", align 1
@.str.143 = private unnamed_addr constant [6 x i8] c"Round\00", align 1
@.str.144 = private unnamed_addr constant [6 x i8] c"Bevel\00", align 1
@gimp_join_style_get_type.type = internal global i64 0, align 8
@.str.145 = private unnamed_addr constant [14 x i8] c"GimpJoinStyle\00", align 1
@.str.146 = private unnamed_addr constant [11 x i8] c"join-style\00", align 1
@gimp_cap_style_get_type.values = internal constant [4 x %struct._GEnumValue] [%struct._GEnumValue { i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.147, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.148, i32 0, i32 0) }, %struct._GEnumValue { i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.149, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.139, i32 0, i32 0) }, %struct._GEnumValue { i32 2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.150, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.151, i32 0, i32 0) }, %struct._GEnumValue zeroinitializer], align 16
@.str.147 = private unnamed_addr constant [14 x i8] c"GIMP_CAP_BUTT\00", align 1
@.str.148 = private unnamed_addr constant [5 x i8] c"butt\00", align 1
@.str.149 = private unnamed_addr constant [15 x i8] c"GIMP_CAP_ROUND\00", align 1
@.str.150 = private unnamed_addr constant [16 x i8] c"GIMP_CAP_SQUARE\00", align 1
@.str.151 = private unnamed_addr constant [7 x i8] c"square\00", align 1
@gimp_cap_style_get_type.descs = internal constant [4 x %struct._GimpEnumDesc] [%struct._GimpEnumDesc { i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.152, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.143, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.153, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc zeroinitializer], align 16
@.str.152 = private unnamed_addr constant [5 x i8] c"Butt\00", align 1
@.str.153 = private unnamed_addr constant [7 x i8] c"Square\00", align 1
@gimp_cap_style_get_type.type = internal global i64 0, align 8
@.str.154 = private unnamed_addr constant [13 x i8] c"GimpCapStyle\00", align 1
@.str.155 = private unnamed_addr constant [10 x i8] c"cap-style\00", align 1
@gimp_dash_preset_get_type.values = internal constant [12 x %struct._GEnumValue] [%struct._GEnumValue { i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.156, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.157, i32 0, i32 0) }, %struct._GEnumValue { i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.158, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.159, i32 0, i32 0) }, %struct._GEnumValue { i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.160, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.161, i32 0, i32 0) }, %struct._GEnumValue { i32 3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.162, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.163, i32 0, i32 0) }, %struct._GEnumValue { i32 4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.164, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.165, i32 0, i32 0) }, %struct._GEnumValue { i32 5, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.166, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.167, i32 0, i32 0) }, %struct._GEnumValue { i32 6, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.168, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.169, i32 0, i32 0) }, %struct._GEnumValue { i32 7, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.170, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.171, i32 0, i32 0) }, %struct._GEnumValue { i32 8, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.172, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.173, i32 0, i32 0) }, %struct._GEnumValue { i32 9, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.174, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.175, i32 0, i32 0) }, %struct._GEnumValue { i32 10, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.176, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.177, i32 0, i32 0) }, %struct._GEnumValue zeroinitializer], align 16
@.str.156 = private unnamed_addr constant [17 x i8] c"GIMP_DASH_CUSTOM\00", align 1
@.str.157 = private unnamed_addr constant [7 x i8] c"custom\00", align 1
@.str.158 = private unnamed_addr constant [15 x i8] c"GIMP_DASH_LINE\00", align 1
@.str.159 = private unnamed_addr constant [5 x i8] c"line\00", align 1
@.str.160 = private unnamed_addr constant [20 x i8] c"GIMP_DASH_LONG_DASH\00", align 1
@.str.161 = private unnamed_addr constant [10 x i8] c"long-dash\00", align 1
@.str.162 = private unnamed_addr constant [22 x i8] c"GIMP_DASH_MEDIUM_DASH\00", align 1
@.str.163 = private unnamed_addr constant [12 x i8] c"medium-dash\00", align 1
@.str.164 = private unnamed_addr constant [21 x i8] c"GIMP_DASH_SHORT_DASH\00", align 1
@.str.165 = private unnamed_addr constant [11 x i8] c"short-dash\00", align 1
@.str.166 = private unnamed_addr constant [22 x i8] c"GIMP_DASH_SPARSE_DOTS\00", align 1
@.str.167 = private unnamed_addr constant [12 x i8] c"sparse-dots\00", align 1
@.str.168 = private unnamed_addr constant [22 x i8] c"GIMP_DASH_NORMAL_DOTS\00", align 1
@.str.169 = private unnamed_addr constant [12 x i8] c"normal-dots\00", align 1
@.str.170 = private unnamed_addr constant [21 x i8] c"GIMP_DASH_DENSE_DOTS\00", align 1
@.str.171 = private unnamed_addr constant [11 x i8] c"dense-dots\00", align 1
@.str.172 = private unnamed_addr constant [19 x i8] c"GIMP_DASH_STIPPLES\00", align 1
@.str.173 = private unnamed_addr constant [9 x i8] c"stipples\00", align 1
@.str.174 = private unnamed_addr constant [19 x i8] c"GIMP_DASH_DASH_DOT\00", align 1
@.str.175 = private unnamed_addr constant [9 x i8] c"dash-dot\00", align 1
@.str.176 = private unnamed_addr constant [23 x i8] c"GIMP_DASH_DASH_DOT_DOT\00", align 1
@.str.177 = private unnamed_addr constant [13 x i8] c"dash-dot-dot\00", align 1
@gimp_dash_preset_get_type.descs = internal constant [12 x %struct._GimpEnumDesc] [%struct._GimpEnumDesc { i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.178, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.179, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.180, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.181, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.182, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 5, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.183, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 6, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.184, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 7, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.185, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.186, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.187, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 10, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.188, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc zeroinitializer], align 16
@.str.178 = private unnamed_addr constant [7 x i8] c"Custom\00", align 1
@.str.179 = private unnamed_addr constant [5 x i8] c"Line\00", align 1
@.str.180 = private unnamed_addr constant [12 x i8] c"Long dashes\00", align 1
@.str.181 = private unnamed_addr constant [14 x i8] c"Medium dashes\00", align 1
@.str.182 = private unnamed_addr constant [13 x i8] c"Short dashes\00", align 1
@.str.183 = private unnamed_addr constant [12 x i8] c"Sparse dots\00", align 1
@.str.184 = private unnamed_addr constant [12 x i8] c"Normal dots\00", align 1
@.str.185 = private unnamed_addr constant [11 x i8] c"Dense dots\00", align 1
@.str.186 = private unnamed_addr constant [9 x i8] c"Stipples\00", align 1
@.str.187 = private unnamed_addr constant [10 x i8] c"Dash, dot\00", align 1
@.str.188 = private unnamed_addr constant [15 x i8] c"Dash, dot, dot\00", align 1
@gimp_dash_preset_get_type.type = internal global i64 0, align 8
@.str.189 = private unnamed_addr constant [15 x i8] c"GimpDashPreset\00", align 1
@.str.190 = private unnamed_addr constant [12 x i8] c"dash-preset\00", align 1
@gimp_brush_generated_shape_get_type.values = internal constant [4 x %struct._GEnumValue] [%struct._GEnumValue { i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.191, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.192, i32 0, i32 0) }, %struct._GEnumValue { i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.193, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.151, i32 0, i32 0) }, %struct._GEnumValue { i32 2, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.194, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.195, i32 0, i32 0) }, %struct._GEnumValue zeroinitializer], align 16
@.str.191 = private unnamed_addr constant [28 x i8] c"GIMP_BRUSH_GENERATED_CIRCLE\00", align 1
@.str.192 = private unnamed_addr constant [7 x i8] c"circle\00", align 1
@.str.193 = private unnamed_addr constant [28 x i8] c"GIMP_BRUSH_GENERATED_SQUARE\00", align 1
@.str.194 = private unnamed_addr constant [29 x i8] c"GIMP_BRUSH_GENERATED_DIAMOND\00", align 1
@.str.195 = private unnamed_addr constant [8 x i8] c"diamond\00", align 1
@gimp_brush_generated_shape_get_type.descs = internal constant [4 x %struct._GimpEnumDesc] [%struct._GimpEnumDesc { i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.196, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.153, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.197, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc zeroinitializer], align 16
@.str.196 = private unnamed_addr constant [7 x i8] c"Circle\00", align 1
@.str.197 = private unnamed_addr constant [8 x i8] c"Diamond\00", align 1
@gimp_brush_generated_shape_get_type.type = internal global i64 0, align 8
@.str.198 = private unnamed_addr constant [24 x i8] c"GimpBrushGeneratedShape\00", align 1
@.str.199 = private unnamed_addr constant [22 x i8] c"brush-generated-shape\00", align 1
@gimp_orientation_type_get_type.values = internal constant [4 x %struct._GEnumValue] [%struct._GEnumValue { i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.200, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.201, i32 0, i32 0) }, %struct._GEnumValue { i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.202, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.203, i32 0, i32 0) }, %struct._GEnumValue { i32 2, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.204, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.205, i32 0, i32 0) }, %struct._GEnumValue zeroinitializer], align 16
@.str.200 = private unnamed_addr constant [28 x i8] c"GIMP_ORIENTATION_HORIZONTAL\00", align 1
@.str.201 = private unnamed_addr constant [11 x i8] c"horizontal\00", align 1
@.str.202 = private unnamed_addr constant [26 x i8] c"GIMP_ORIENTATION_VERTICAL\00", align 1
@.str.203 = private unnamed_addr constant [9 x i8] c"vertical\00", align 1
@.str.204 = private unnamed_addr constant [25 x i8] c"GIMP_ORIENTATION_UNKNOWN\00", align 1
@.str.205 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@gimp_orientation_type_get_type.descs = internal constant [4 x %struct._GimpEnumDesc] [%struct._GimpEnumDesc { i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.206, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.207, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.208, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc zeroinitializer], align 16
@.str.206 = private unnamed_addr constant [11 x i8] c"Horizontal\00", align 1
@.str.207 = private unnamed_addr constant [9 x i8] c"Vertical\00", align 1
@.str.208 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@gimp_orientation_type_get_type.type = internal global i64 0, align 8
@.str.209 = private unnamed_addr constant [20 x i8] c"GimpOrientationType\00", align 1
@.str.210 = private unnamed_addr constant [17 x i8] c"orientation-type\00", align 1
@gimp_item_set_get_type.values = internal constant [6 x %struct._GEnumValue] [%struct._GEnumValue { i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.211, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i32 0, i32 0) }, %struct._GEnumValue { i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.212, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.213, i32 0, i32 0) }, %struct._GEnumValue { i32 2, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.214, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.215, i32 0, i32 0) }, %struct._GEnumValue { i32 3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.216, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.217, i32 0, i32 0) }, %struct._GEnumValue { i32 4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.218, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.219, i32 0, i32 0) }, %struct._GEnumValue zeroinitializer], align 16
@.str.211 = private unnamed_addr constant [19 x i8] c"GIMP_ITEM_SET_NONE\00", align 1
@.str.212 = private unnamed_addr constant [18 x i8] c"GIMP_ITEM_SET_ALL\00", align 1
@.str.213 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.214 = private unnamed_addr constant [26 x i8] c"GIMP_ITEM_SET_IMAGE_SIZED\00", align 1
@.str.215 = private unnamed_addr constant [12 x i8] c"image-sized\00", align 1
@.str.216 = private unnamed_addr constant [22 x i8] c"GIMP_ITEM_SET_VISIBLE\00", align 1
@.str.217 = private unnamed_addr constant [8 x i8] c"visible\00", align 1
@.str.218 = private unnamed_addr constant [21 x i8] c"GIMP_ITEM_SET_LINKED\00", align 1
@.str.219 = private unnamed_addr constant [7 x i8] c"linked\00", align 1
@gimp_item_set_get_type.descs = internal constant [6 x %struct._GimpEnumDesc] [%struct._GimpEnumDesc { i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.220, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 2, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.221, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 3, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.222, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 4, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.223, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc zeroinitializer], align 16
@.str.220 = private unnamed_addr constant [11 x i8] c"All layers\00", align 1
@.str.221 = private unnamed_addr constant [19 x i8] c"Image-sized layers\00", align 1
@.str.222 = private unnamed_addr constant [19 x i8] c"All visible layers\00", align 1
@.str.223 = private unnamed_addr constant [18 x i8] c"All linked layers\00", align 1
@gimp_item_set_get_type.type = internal global i64 0, align 8
@.str.224 = private unnamed_addr constant [12 x i8] c"GimpItemSet\00", align 1
@.str.225 = private unnamed_addr constant [9 x i8] c"item-set\00", align 1
@gimp_rotation_type_get_type.values = internal constant [4 x %struct._GEnumValue] [%struct._GEnumValue { i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.226, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.227, i32 0, i32 0) }, %struct._GEnumValue { i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.228, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.229, i32 0, i32 0) }, %struct._GEnumValue { i32 2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.230, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.231, i32 0, i32 0) }, %struct._GEnumValue zeroinitializer], align 16
@.str.226 = private unnamed_addr constant [15 x i8] c"GIMP_ROTATE_90\00", align 1
@.str.227 = private unnamed_addr constant [3 x i8] c"90\00", align 1
@.str.228 = private unnamed_addr constant [16 x i8] c"GIMP_ROTATE_180\00", align 1
@.str.229 = private unnamed_addr constant [4 x i8] c"180\00", align 1
@.str.230 = private unnamed_addr constant [16 x i8] c"GIMP_ROTATE_270\00", align 1
@.str.231 = private unnamed_addr constant [4 x i8] c"270\00", align 1
@gimp_rotation_type_get_type.descs = internal constant [4 x %struct._GimpEnumDesc] [%struct._GimpEnumDesc { i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.226, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.228, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.230, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc zeroinitializer], align 16
@gimp_rotation_type_get_type.type = internal global i64 0, align 8
@.str.232 = private unnamed_addr constant [17 x i8] c"GimpRotationType\00", align 1
@.str.233 = private unnamed_addr constant [14 x i8] c"rotation-type\00", align 1
@gimp_view_size_get_type.values = internal constant [10 x %struct._GEnumValue] [%struct._GEnumValue { i32 12, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.234, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.235, i32 0, i32 0) }, %struct._GEnumValue { i32 16, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.236, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.237, i32 0, i32 0) }, %struct._GEnumValue { i32 24, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.238, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.239, i32 0, i32 0) }, %struct._GEnumValue { i32 32, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.240, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.241, i32 0, i32 0) }, %struct._GEnumValue { i32 48, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.242, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.243, i32 0, i32 0) }, %struct._GEnumValue { i32 64, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.244, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.245, i32 0, i32 0) }, %struct._GEnumValue { i32 96, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.246, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.247, i32 0, i32 0) }, %struct._GEnumValue { i32 128, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.248, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.249, i32 0, i32 0) }, %struct._GEnumValue { i32 192, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.250, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.251, i32 0, i32 0) }, %struct._GEnumValue zeroinitializer], align 16
@.str.234 = private unnamed_addr constant [20 x i8] c"GIMP_VIEW_SIZE_TINY\00", align 1
@.str.235 = private unnamed_addr constant [5 x i8] c"tiny\00", align 1
@.str.236 = private unnamed_addr constant [27 x i8] c"GIMP_VIEW_SIZE_EXTRA_SMALL\00", align 1
@.str.237 = private unnamed_addr constant [12 x i8] c"extra-small\00", align 1
@.str.238 = private unnamed_addr constant [21 x i8] c"GIMP_VIEW_SIZE_SMALL\00", align 1
@.str.239 = private unnamed_addr constant [6 x i8] c"small\00", align 1
@.str.240 = private unnamed_addr constant [22 x i8] c"GIMP_VIEW_SIZE_MEDIUM\00", align 1
@.str.241 = private unnamed_addr constant [7 x i8] c"medium\00", align 1
@.str.242 = private unnamed_addr constant [21 x i8] c"GIMP_VIEW_SIZE_LARGE\00", align 1
@.str.243 = private unnamed_addr constant [6 x i8] c"large\00", align 1
@.str.244 = private unnamed_addr constant [27 x i8] c"GIMP_VIEW_SIZE_EXTRA_LARGE\00", align 1
@.str.245 = private unnamed_addr constant [12 x i8] c"extra-large\00", align 1
@.str.246 = private unnamed_addr constant [20 x i8] c"GIMP_VIEW_SIZE_HUGE\00", align 1
@.str.247 = private unnamed_addr constant [5 x i8] c"huge\00", align 1
@.str.248 = private unnamed_addr constant [24 x i8] c"GIMP_VIEW_SIZE_ENORMOUS\00", align 1
@.str.249 = private unnamed_addr constant [9 x i8] c"enormous\00", align 1
@.str.250 = private unnamed_addr constant [24 x i8] c"GIMP_VIEW_SIZE_GIGANTIC\00", align 1
@.str.251 = private unnamed_addr constant [9 x i8] c"gigantic\00", align 1
@gimp_view_size_get_type.descs = internal constant [10 x %struct._GimpEnumDesc] [%struct._GimpEnumDesc { i32 12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.252, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 16, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.253, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.254, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.255, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 48, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.256, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 64, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.257, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 96, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.258, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 128, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.259, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 192, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.260, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc zeroinitializer], align 16
@.str.252 = private unnamed_addr constant [5 x i8] c"Tiny\00", align 1
@.str.253 = private unnamed_addr constant [11 x i8] c"Very small\00", align 1
@.str.254 = private unnamed_addr constant [6 x i8] c"Small\00", align 1
@.str.255 = private unnamed_addr constant [7 x i8] c"Medium\00", align 1
@.str.256 = private unnamed_addr constant [6 x i8] c"Large\00", align 1
@.str.257 = private unnamed_addr constant [11 x i8] c"Very large\00", align 1
@.str.258 = private unnamed_addr constant [5 x i8] c"Huge\00", align 1
@.str.259 = private unnamed_addr constant [9 x i8] c"Enormous\00", align 1
@.str.260 = private unnamed_addr constant [9 x i8] c"Gigantic\00", align 1
@gimp_view_size_get_type.type = internal global i64 0, align 8
@.str.261 = private unnamed_addr constant [13 x i8] c"GimpViewSize\00", align 1
@.str.262 = private unnamed_addr constant [10 x i8] c"view-size\00", align 1
@gimp_view_type_get_type.values = internal constant [3 x %struct._GEnumValue] [%struct._GEnumValue { i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.263, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.264, i32 0, i32 0) }, %struct._GEnumValue { i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.265, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.266, i32 0, i32 0) }, %struct._GEnumValue zeroinitializer], align 16
@.str.263 = private unnamed_addr constant [20 x i8] c"GIMP_VIEW_TYPE_LIST\00", align 1
@.str.264 = private unnamed_addr constant [5 x i8] c"list\00", align 1
@.str.265 = private unnamed_addr constant [20 x i8] c"GIMP_VIEW_TYPE_GRID\00", align 1
@.str.266 = private unnamed_addr constant [5 x i8] c"grid\00", align 1
@gimp_view_type_get_type.descs = internal constant [3 x %struct._GimpEnumDesc] [%struct._GimpEnumDesc { i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.267, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.268, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc zeroinitializer], align 16
@.str.267 = private unnamed_addr constant [13 x i8] c"View as list\00", align 1
@.str.268 = private unnamed_addr constant [13 x i8] c"View as grid\00", align 1
@gimp_view_type_get_type.type = internal global i64 0, align 8
@.str.269 = private unnamed_addr constant [13 x i8] c"GimpViewType\00", align 1
@.str.270 = private unnamed_addr constant [10 x i8] c"view-type\00", align 1
@gimp_thumbnail_size_get_type.values = internal constant [4 x %struct._GEnumValue] [%struct._GEnumValue { i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.271, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i32 0, i32 0) }, %struct._GEnumValue { i32 128, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.272, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.273, i32 0, i32 0) }, %struct._GEnumValue { i32 256, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.274, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.243, i32 0, i32 0) }, %struct._GEnumValue zeroinitializer], align 16
@.str.271 = private unnamed_addr constant [25 x i8] c"GIMP_THUMBNAIL_SIZE_NONE\00", align 1
@.str.272 = private unnamed_addr constant [27 x i8] c"GIMP_THUMBNAIL_SIZE_NORMAL\00", align 1
@.str.273 = private unnamed_addr constant [7 x i8] c"normal\00", align 1
@.str.274 = private unnamed_addr constant [26 x i8] c"GIMP_THUMBNAIL_SIZE_LARGE\00", align 1
@gimp_thumbnail_size_get_type.descs = internal constant [4 x %struct._GimpEnumDesc] [%struct._GimpEnumDesc { i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.275, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 128, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.276, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 256, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.277, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc zeroinitializer], align 16
@.str.275 = private unnamed_addr constant [14 x i8] c"No thumbnails\00", align 1
@.str.276 = private unnamed_addr constant [17 x i8] c"Normal (128x128)\00", align 1
@.str.277 = private unnamed_addr constant [16 x i8] c"Large (256x256)\00", align 1
@gimp_thumbnail_size_get_type.type = internal global i64 0, align 8
@.str.278 = private unnamed_addr constant [18 x i8] c"GimpThumbnailSize\00", align 1
@.str.279 = private unnamed_addr constant [15 x i8] c"thumbnail-size\00", align 1
@gimp_undo_mode_get_type.values = internal constant [3 x %struct._GEnumValue] [%struct._GEnumValue { i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.280, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.281, i32 0, i32 0) }, %struct._GEnumValue { i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.282, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.283, i32 0, i32 0) }, %struct._GEnumValue zeroinitializer], align 16
@.str.280 = private unnamed_addr constant [20 x i8] c"GIMP_UNDO_MODE_UNDO\00", align 1
@.str.281 = private unnamed_addr constant [5 x i8] c"undo\00", align 1
@.str.282 = private unnamed_addr constant [20 x i8] c"GIMP_UNDO_MODE_REDO\00", align 1
@.str.283 = private unnamed_addr constant [5 x i8] c"redo\00", align 1
@gimp_undo_mode_get_type.descs = internal constant [3 x %struct._GimpEnumDesc] [%struct._GimpEnumDesc { i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.280, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.282, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc zeroinitializer], align 16
@gimp_undo_mode_get_type.type = internal global i64 0, align 8
@.str.284 = private unnamed_addr constant [13 x i8] c"GimpUndoMode\00", align 1
@.str.285 = private unnamed_addr constant [10 x i8] c"undo-mode\00", align 1
@gimp_undo_event_get_type.values = internal constant [9 x %struct._GEnumValue] [%struct._GEnumValue { i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.286, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.287, i32 0, i32 0) }, %struct._GEnumValue { i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.288, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.289, i32 0, i32 0) }, %struct._GEnumValue { i32 2, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.290, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.291, i32 0, i32 0) }, %struct._GEnumValue { i32 3, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.292, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.281, i32 0, i32 0) }, %struct._GEnumValue { i32 4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.293, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.283, i32 0, i32 0) }, %struct._GEnumValue { i32 5, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.294, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.295, i32 0, i32 0) }, %struct._GEnumValue { i32 6, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.296, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.297, i32 0, i32 0) }, %struct._GEnumValue { i32 7, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.298, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.299, i32 0, i32 0) }, %struct._GEnumValue zeroinitializer], align 16
@.str.286 = private unnamed_addr constant [28 x i8] c"GIMP_UNDO_EVENT_UNDO_PUSHED\00", align 1
@.str.287 = private unnamed_addr constant [12 x i8] c"undo-pushed\00", align 1
@.str.288 = private unnamed_addr constant [29 x i8] c"GIMP_UNDO_EVENT_UNDO_EXPIRED\00", align 1
@.str.289 = private unnamed_addr constant [13 x i8] c"undo-expired\00", align 1
@.str.290 = private unnamed_addr constant [29 x i8] c"GIMP_UNDO_EVENT_REDO_EXPIRED\00", align 1
@.str.291 = private unnamed_addr constant [13 x i8] c"redo-expired\00", align 1
@.str.292 = private unnamed_addr constant [21 x i8] c"GIMP_UNDO_EVENT_UNDO\00", align 1
@.str.293 = private unnamed_addr constant [21 x i8] c"GIMP_UNDO_EVENT_REDO\00", align 1
@.str.294 = private unnamed_addr constant [26 x i8] c"GIMP_UNDO_EVENT_UNDO_FREE\00", align 1
@.str.295 = private unnamed_addr constant [10 x i8] c"undo-free\00", align 1
@.str.296 = private unnamed_addr constant [28 x i8] c"GIMP_UNDO_EVENT_UNDO_FREEZE\00", align 1
@.str.297 = private unnamed_addr constant [12 x i8] c"undo-freeze\00", align 1
@.str.298 = private unnamed_addr constant [26 x i8] c"GIMP_UNDO_EVENT_UNDO_THAW\00", align 1
@.str.299 = private unnamed_addr constant [10 x i8] c"undo-thaw\00", align 1
@gimp_undo_event_get_type.descs = internal constant [9 x %struct._GimpEnumDesc] [%struct._GimpEnumDesc { i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.286, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.288, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 2, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.290, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 3, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.292, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.293, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 5, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.294, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 6, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.296, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 7, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.298, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc zeroinitializer], align 16
@gimp_undo_event_get_type.type = internal global i64 0, align 8
@.str.300 = private unnamed_addr constant [14 x i8] c"GimpUndoEvent\00", align 1
@.str.301 = private unnamed_addr constant [11 x i8] c"undo-event\00", align 1
@gimp_undo_type_get_type.values = internal constant [82 x %struct._GEnumValue] [%struct._GEnumValue { i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.302, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.303, i32 0, i32 0) }, %struct._GEnumValue { i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.304, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.305, i32 0, i32 0) }, %struct._GEnumValue { i32 2, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.306, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.307, i32 0, i32 0) }, %struct._GEnumValue { i32 3, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.308, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.309, i32 0, i32 0) }, %struct._GEnumValue { i32 4, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.310, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.311, i32 0, i32 0) }, %struct._GEnumValue { i32 5, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.312, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.313, i32 0, i32 0) }, %struct._GEnumValue { i32 6, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.314, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.315, i32 0, i32 0) }, %struct._GEnumValue { i32 7, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.316, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.317, i32 0, i32 0) }, %struct._GEnumValue { i32 8, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.318, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.319, i32 0, i32 0) }, %struct._GEnumValue { i32 9, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.320, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.321, i32 0, i32 0) }, %struct._GEnumValue { i32 10, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.322, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.323, i32 0, i32 0) }, %struct._GEnumValue { i32 11, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.324, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.325, i32 0, i32 0) }, %struct._GEnumValue { i32 12, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.326, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.327, i32 0, i32 0) }, %struct._GEnumValue { i32 13, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.328, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.329, i32 0, i32 0) }, %struct._GEnumValue { i32 14, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.330, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.331, i32 0, i32 0) }, %struct._GEnumValue { i32 15, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.332, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.333, i32 0, i32 0) }, %struct._GEnumValue { i32 16, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.334, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.335, i32 0, i32 0) }, %struct._GEnumValue { i32 17, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.336, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.337, i32 0, i32 0) }, %struct._GEnumValue { i32 18, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.338, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.339, i32 0, i32 0) }, %struct._GEnumValue { i32 19, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.340, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.341, i32 0, i32 0) }, %struct._GEnumValue { i32 20, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.342, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.343, i32 0, i32 0) }, %struct._GEnumValue { i32 21, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.344, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.345, i32 0, i32 0) }, %struct._GEnumValue { i32 22, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.346, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.347, i32 0, i32 0) }, %struct._GEnumValue { i32 23, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.348, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.349, i32 0, i32 0) }, %struct._GEnumValue { i32 24, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.350, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.351, i32 0, i32 0) }, %struct._GEnumValue { i32 25, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.352, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.353, i32 0, i32 0) }, %struct._GEnumValue { i32 26, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.354, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.355, i32 0, i32 0) }, %struct._GEnumValue { i32 27, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.356, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.357, i32 0, i32 0) }, %struct._GEnumValue { i32 28, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.358, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.359, i32 0, i32 0) }, %struct._GEnumValue { i32 29, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.360, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.361, i32 0, i32 0) }, %struct._GEnumValue { i32 30, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.362, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.363, i32 0, i32 0) }, %struct._GEnumValue { i32 31, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.364, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.365, i32 0, i32 0) }, %struct._GEnumValue { i32 32, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.366, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.367, i32 0, i32 0) }, %struct._GEnumValue { i32 33, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.368, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.369, i32 0, i32 0) }, %struct._GEnumValue { i32 34, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.370, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.371, i32 0, i32 0) }, %struct._GEnumValue { i32 35, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.372, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.373, i32 0, i32 0) }, %struct._GEnumValue { i32 36, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.374, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.375, i32 0, i32 0) }, %struct._GEnumValue { i32 37, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.376, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.377, i32 0, i32 0) }, %struct._GEnumValue { i32 38, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.378, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.379, i32 0, i32 0) }, %struct._GEnumValue { i32 39, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.380, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.381, i32 0, i32 0) }, %struct._GEnumValue { i32 40, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.382, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.383, i32 0, i32 0) }, %struct._GEnumValue { i32 41, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.384, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.385, i32 0, i32 0) }, %struct._GEnumValue { i32 42, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.386, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.387, i32 0, i32 0) }, %struct._GEnumValue { i32 43, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.388, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.389, i32 0, i32 0) }, %struct._GEnumValue { i32 44, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.390, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.391, i32 0, i32 0) }, %struct._GEnumValue { i32 45, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.392, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.393, i32 0, i32 0) }, %struct._GEnumValue { i32 46, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.394, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.395, i32 0, i32 0) }, %struct._GEnumValue { i32 47, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.396, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.397, i32 0, i32 0) }, %struct._GEnumValue { i32 48, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.398, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.399, i32 0, i32 0) }, %struct._GEnumValue { i32 49, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.400, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.401, i32 0, i32 0) }, %struct._GEnumValue { i32 50, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.402, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.403, i32 0, i32 0) }, %struct._GEnumValue { i32 51, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.404, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.405, i32 0, i32 0) }, %struct._GEnumValue { i32 52, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.406, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.407, i32 0, i32 0) }, %struct._GEnumValue { i32 53, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.408, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.409, i32 0, i32 0) }, %struct._GEnumValue { i32 54, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.410, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.411, i32 0, i32 0) }, %struct._GEnumValue { i32 55, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.412, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.413, i32 0, i32 0) }, %struct._GEnumValue { i32 56, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.414, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.415, i32 0, i32 0) }, %struct._GEnumValue { i32 57, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.416, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.417, i32 0, i32 0) }, %struct._GEnumValue { i32 58, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.418, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.419, i32 0, i32 0) }, %struct._GEnumValue { i32 59, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.420, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.421, i32 0, i32 0) }, %struct._GEnumValue { i32 60, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.422, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.423, i32 0, i32 0) }, %struct._GEnumValue { i32 61, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.424, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.425, i32 0, i32 0) }, %struct._GEnumValue { i32 62, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.426, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.427, i32 0, i32 0) }, %struct._GEnumValue { i32 63, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.428, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.429, i32 0, i32 0) }, %struct._GEnumValue { i32 64, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.430, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.431, i32 0, i32 0) }, %struct._GEnumValue { i32 65, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.432, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.433, i32 0, i32 0) }, %struct._GEnumValue { i32 66, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.434, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.435, i32 0, i32 0) }, %struct._GEnumValue { i32 67, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.436, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.437, i32 0, i32 0) }, %struct._GEnumValue { i32 68, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.438, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.439, i32 0, i32 0) }, %struct._GEnumValue { i32 69, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.440, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.441, i32 0, i32 0) }, %struct._GEnumValue { i32 70, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.442, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.443, i32 0, i32 0) }, %struct._GEnumValue { i32 71, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.444, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.445, i32 0, i32 0) }, %struct._GEnumValue { i32 72, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.446, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.447, i32 0, i32 0) }, %struct._GEnumValue { i32 73, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.448, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.449, i32 0, i32 0) }, %struct._GEnumValue { i32 74, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.450, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.451, i32 0, i32 0) }, %struct._GEnumValue { i32 75, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.452, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.453, i32 0, i32 0) }, %struct._GEnumValue { i32 76, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.454, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.455, i32 0, i32 0) }, %struct._GEnumValue { i32 77, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.456, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.457, i32 0, i32 0) }, %struct._GEnumValue { i32 78, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.458, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.459, i32 0, i32 0) }, %struct._GEnumValue { i32 79, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.460, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.461, i32 0, i32 0) }, %struct._GEnumValue { i32 80, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.462, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.463, i32 0, i32 0) }, %struct._GEnumValue zeroinitializer], align 16
@.str.302 = private unnamed_addr constant [21 x i8] c"GIMP_UNDO_GROUP_NONE\00", align 1
@.str.303 = private unnamed_addr constant [11 x i8] c"group-none\00", align 1
@.str.304 = private unnamed_addr constant [28 x i8] c"GIMP_UNDO_GROUP_IMAGE_SCALE\00", align 1
@.str.305 = private unnamed_addr constant [18 x i8] c"group-image-scale\00", align 1
@.str.306 = private unnamed_addr constant [29 x i8] c"GIMP_UNDO_GROUP_IMAGE_RESIZE\00", align 1
@.str.307 = private unnamed_addr constant [19 x i8] c"group-image-resize\00", align 1
@.str.308 = private unnamed_addr constant [27 x i8] c"GIMP_UNDO_GROUP_IMAGE_FLIP\00", align 1
@.str.309 = private unnamed_addr constant [17 x i8] c"group-image-flip\00", align 1
@.str.310 = private unnamed_addr constant [29 x i8] c"GIMP_UNDO_GROUP_IMAGE_ROTATE\00", align 1
@.str.311 = private unnamed_addr constant [19 x i8] c"group-image-rotate\00", align 1
@.str.312 = private unnamed_addr constant [27 x i8] c"GIMP_UNDO_GROUP_IMAGE_CROP\00", align 1
@.str.313 = private unnamed_addr constant [17 x i8] c"group-image-crop\00", align 1
@.str.314 = private unnamed_addr constant [30 x i8] c"GIMP_UNDO_GROUP_IMAGE_CONVERT\00", align 1
@.str.315 = private unnamed_addr constant [20 x i8] c"group-image-convert\00", align 1
@.str.316 = private unnamed_addr constant [34 x i8] c"GIMP_UNDO_GROUP_IMAGE_ITEM_REMOVE\00", align 1
@.str.317 = private unnamed_addr constant [24 x i8] c"group-image-item-remove\00", align 1
@.str.318 = private unnamed_addr constant [35 x i8] c"GIMP_UNDO_GROUP_IMAGE_LAYERS_MERGE\00", align 1
@.str.319 = private unnamed_addr constant [25 x i8] c"group-image-layers-merge\00", align 1
@.str.320 = private unnamed_addr constant [36 x i8] c"GIMP_UNDO_GROUP_IMAGE_VECTORS_MERGE\00", align 1
@.str.321 = private unnamed_addr constant [26 x i8] c"group-image-vectors-merge\00", align 1
@.str.322 = private unnamed_addr constant [33 x i8] c"GIMP_UNDO_GROUP_IMAGE_QUICK_MASK\00", align 1
@.str.323 = private unnamed_addr constant [23 x i8] c"group-image-quick-mask\00", align 1
@.str.324 = private unnamed_addr constant [27 x i8] c"GIMP_UNDO_GROUP_IMAGE_GRID\00", align 1
@.str.325 = private unnamed_addr constant [17 x i8] c"group-image-grid\00", align 1
@.str.326 = private unnamed_addr constant [22 x i8] c"GIMP_UNDO_GROUP_GUIDE\00", align 1
@.str.327 = private unnamed_addr constant [12 x i8] c"group-guide\00", align 1
@.str.328 = private unnamed_addr constant [29 x i8] c"GIMP_UNDO_GROUP_SAMPLE_POINT\00", align 1
@.str.329 = private unnamed_addr constant [19 x i8] c"group-sample-point\00", align 1
@.str.330 = private unnamed_addr constant [25 x i8] c"GIMP_UNDO_GROUP_DRAWABLE\00", align 1
@.str.331 = private unnamed_addr constant [15 x i8] c"group-drawable\00", align 1
@.str.332 = private unnamed_addr constant [29 x i8] c"GIMP_UNDO_GROUP_DRAWABLE_MOD\00", align 1
@.str.333 = private unnamed_addr constant [19 x i8] c"group-drawable-mod\00", align 1
@.str.334 = private unnamed_addr constant [21 x i8] c"GIMP_UNDO_GROUP_MASK\00", align 1
@.str.335 = private unnamed_addr constant [11 x i8] c"group-mask\00", align 1
@.str.336 = private unnamed_addr constant [32 x i8] c"GIMP_UNDO_GROUP_ITEM_VISIBILITY\00", align 1
@.str.337 = private unnamed_addr constant [22 x i8] c"group-item-visibility\00", align 1
@.str.338 = private unnamed_addr constant [28 x i8] c"GIMP_UNDO_GROUP_ITEM_LINKED\00", align 1
@.str.339 = private unnamed_addr constant [18 x i8] c"group-item-linked\00", align 1
@.str.340 = private unnamed_addr constant [32 x i8] c"GIMP_UNDO_GROUP_ITEM_PROPERTIES\00", align 1
@.str.341 = private unnamed_addr constant [22 x i8] c"group-item-properties\00", align 1
@.str.342 = private unnamed_addr constant [30 x i8] c"GIMP_UNDO_GROUP_ITEM_DISPLACE\00", align 1
@.str.343 = private unnamed_addr constant [20 x i8] c"group-item-displace\00", align 1
@.str.344 = private unnamed_addr constant [27 x i8] c"GIMP_UNDO_GROUP_ITEM_SCALE\00", align 1
@.str.345 = private unnamed_addr constant [17 x i8] c"group-item-scale\00", align 1
@.str.346 = private unnamed_addr constant [28 x i8] c"GIMP_UNDO_GROUP_ITEM_RESIZE\00", align 1
@.str.347 = private unnamed_addr constant [18 x i8] c"group-item-resize\00", align 1
@.str.348 = private unnamed_addr constant [26 x i8] c"GIMP_UNDO_GROUP_LAYER_ADD\00", align 1
@.str.349 = private unnamed_addr constant [16 x i8] c"group-layer-add\00", align 1
@.str.350 = private unnamed_addr constant [31 x i8] c"GIMP_UNDO_GROUP_LAYER_ADD_MASK\00", align 1
@.str.351 = private unnamed_addr constant [21 x i8] c"group-layer-add-mask\00", align 1
@.str.352 = private unnamed_addr constant [33 x i8] c"GIMP_UNDO_GROUP_LAYER_APPLY_MASK\00", align 1
@.str.353 = private unnamed_addr constant [23 x i8] c"group-layer-apply-mask\00", align 1
@.str.354 = private unnamed_addr constant [28 x i8] c"GIMP_UNDO_GROUP_FS_TO_LAYER\00", align 1
@.str.355 = private unnamed_addr constant [18 x i8] c"group-fs-to-layer\00", align 1
@.str.356 = private unnamed_addr constant [25 x i8] c"GIMP_UNDO_GROUP_FS_FLOAT\00", align 1
@.str.357 = private unnamed_addr constant [15 x i8] c"group-fs-float\00", align 1
@.str.358 = private unnamed_addr constant [26 x i8] c"GIMP_UNDO_GROUP_FS_ANCHOR\00", align 1
@.str.359 = private unnamed_addr constant [16 x i8] c"group-fs-anchor\00", align 1
@.str.360 = private unnamed_addr constant [27 x i8] c"GIMP_UNDO_GROUP_EDIT_PASTE\00", align 1
@.str.361 = private unnamed_addr constant [17 x i8] c"group-edit-paste\00", align 1
@.str.362 = private unnamed_addr constant [25 x i8] c"GIMP_UNDO_GROUP_EDIT_CUT\00", align 1
@.str.363 = private unnamed_addr constant [15 x i8] c"group-edit-cut\00", align 1
@.str.364 = private unnamed_addr constant [21 x i8] c"GIMP_UNDO_GROUP_TEXT\00", align 1
@.str.365 = private unnamed_addr constant [11 x i8] c"group-text\00", align 1
@.str.366 = private unnamed_addr constant [26 x i8] c"GIMP_UNDO_GROUP_TRANSFORM\00", align 1
@.str.367 = private unnamed_addr constant [16 x i8] c"group-transform\00", align 1
@.str.368 = private unnamed_addr constant [22 x i8] c"GIMP_UNDO_GROUP_PAINT\00", align 1
@.str.369 = private unnamed_addr constant [12 x i8] c"group-paint\00", align 1
@.str.370 = private unnamed_addr constant [32 x i8] c"GIMP_UNDO_GROUP_PARASITE_ATTACH\00", align 1
@.str.371 = private unnamed_addr constant [22 x i8] c"group-parasite-attach\00", align 1
@.str.372 = private unnamed_addr constant [32 x i8] c"GIMP_UNDO_GROUP_PARASITE_REMOVE\00", align 1
@.str.373 = private unnamed_addr constant [22 x i8] c"group-parasite-remove\00", align 1
@.str.374 = private unnamed_addr constant [31 x i8] c"GIMP_UNDO_GROUP_VECTORS_IMPORT\00", align 1
@.str.375 = private unnamed_addr constant [21 x i8] c"group-vectors-import\00", align 1
@.str.376 = private unnamed_addr constant [21 x i8] c"GIMP_UNDO_GROUP_MISC\00", align 1
@.str.377 = private unnamed_addr constant [11 x i8] c"group-misc\00", align 1
@.str.378 = private unnamed_addr constant [21 x i8] c"GIMP_UNDO_IMAGE_TYPE\00", align 1
@.str.379 = private unnamed_addr constant [11 x i8] c"image-type\00", align 1
@.str.380 = private unnamed_addr constant [21 x i8] c"GIMP_UNDO_IMAGE_SIZE\00", align 1
@.str.381 = private unnamed_addr constant [11 x i8] c"image-size\00", align 1
@.str.382 = private unnamed_addr constant [27 x i8] c"GIMP_UNDO_IMAGE_RESOLUTION\00", align 1
@.str.383 = private unnamed_addr constant [17 x i8] c"image-resolution\00", align 1
@.str.384 = private unnamed_addr constant [21 x i8] c"GIMP_UNDO_IMAGE_GRID\00", align 1
@.str.385 = private unnamed_addr constant [11 x i8] c"image-grid\00", align 1
@.str.386 = private unnamed_addr constant [25 x i8] c"GIMP_UNDO_IMAGE_COLORMAP\00", align 1
@.str.387 = private unnamed_addr constant [15 x i8] c"image-colormap\00", align 1
@.str.388 = private unnamed_addr constant [16 x i8] c"GIMP_UNDO_GUIDE\00", align 1
@.str.389 = private unnamed_addr constant [6 x i8] c"guide\00", align 1
@.str.390 = private unnamed_addr constant [23 x i8] c"GIMP_UNDO_SAMPLE_POINT\00", align 1
@.str.391 = private unnamed_addr constant [13 x i8] c"sample-point\00", align 1
@.str.392 = private unnamed_addr constant [19 x i8] c"GIMP_UNDO_DRAWABLE\00", align 1
@.str.393 = private unnamed_addr constant [9 x i8] c"drawable\00", align 1
@.str.394 = private unnamed_addr constant [23 x i8] c"GIMP_UNDO_DRAWABLE_MOD\00", align 1
@.str.395 = private unnamed_addr constant [13 x i8] c"drawable-mod\00", align 1
@.str.396 = private unnamed_addr constant [15 x i8] c"GIMP_UNDO_MASK\00", align 1
@.str.397 = private unnamed_addr constant [5 x i8] c"mask\00", align 1
@.str.398 = private unnamed_addr constant [23 x i8] c"GIMP_UNDO_ITEM_REORDER\00", align 1
@.str.399 = private unnamed_addr constant [13 x i8] c"item-reorder\00", align 1
@.str.400 = private unnamed_addr constant [22 x i8] c"GIMP_UNDO_ITEM_RENAME\00", align 1
@.str.401 = private unnamed_addr constant [12 x i8] c"item-rename\00", align 1
@.str.402 = private unnamed_addr constant [24 x i8] c"GIMP_UNDO_ITEM_DISPLACE\00", align 1
@.str.403 = private unnamed_addr constant [14 x i8] c"item-displace\00", align 1
@.str.404 = private unnamed_addr constant [26 x i8] c"GIMP_UNDO_ITEM_VISIBILITY\00", align 1
@.str.405 = private unnamed_addr constant [16 x i8] c"item-visibility\00", align 1
@.str.406 = private unnamed_addr constant [22 x i8] c"GIMP_UNDO_ITEM_LINKED\00", align 1
@.str.407 = private unnamed_addr constant [12 x i8] c"item-linked\00", align 1
@.str.408 = private unnamed_addr constant [20 x i8] c"GIMP_UNDO_LAYER_ADD\00", align 1
@.str.409 = private unnamed_addr constant [10 x i8] c"layer-add\00", align 1
@.str.410 = private unnamed_addr constant [23 x i8] c"GIMP_UNDO_LAYER_REMOVE\00", align 1
@.str.411 = private unnamed_addr constant [13 x i8] c"layer-remove\00", align 1
@.str.412 = private unnamed_addr constant [21 x i8] c"GIMP_UNDO_LAYER_MODE\00", align 1
@.str.413 = private unnamed_addr constant [11 x i8] c"layer-mode\00", align 1
@.str.414 = private unnamed_addr constant [24 x i8] c"GIMP_UNDO_LAYER_OPACITY\00", align 1
@.str.415 = private unnamed_addr constant [14 x i8] c"layer-opacity\00", align 1
@.str.416 = private unnamed_addr constant [27 x i8] c"GIMP_UNDO_LAYER_LOCK_ALPHA\00", align 1
@.str.417 = private unnamed_addr constant [17 x i8] c"layer-lock-alpha\00", align 1
@.str.418 = private unnamed_addr constant [30 x i8] c"GIMP_UNDO_GROUP_LAYER_SUSPEND\00", align 1
@.str.419 = private unnamed_addr constant [20 x i8] c"group-layer-suspend\00", align 1
@.str.420 = private unnamed_addr constant [29 x i8] c"GIMP_UNDO_GROUP_LAYER_RESUME\00", align 1
@.str.421 = private unnamed_addr constant [19 x i8] c"group-layer-resume\00", align 1
@.str.422 = private unnamed_addr constant [30 x i8] c"GIMP_UNDO_GROUP_LAYER_CONVERT\00", align 1
@.str.423 = private unnamed_addr constant [20 x i8] c"group-layer-convert\00", align 1
@.str.424 = private unnamed_addr constant [21 x i8] c"GIMP_UNDO_TEXT_LAYER\00", align 1
@.str.425 = private unnamed_addr constant [11 x i8] c"text-layer\00", align 1
@.str.426 = private unnamed_addr constant [30 x i8] c"GIMP_UNDO_TEXT_LAYER_MODIFIED\00", align 1
@.str.427 = private unnamed_addr constant [20 x i8] c"text-layer-modified\00", align 1
@.str.428 = private unnamed_addr constant [25 x i8] c"GIMP_UNDO_LAYER_MASK_ADD\00", align 1
@.str.429 = private unnamed_addr constant [15 x i8] c"layer-mask-add\00", align 1
@.str.430 = private unnamed_addr constant [28 x i8] c"GIMP_UNDO_LAYER_MASK_REMOVE\00", align 1
@.str.431 = private unnamed_addr constant [18 x i8] c"layer-mask-remove\00", align 1
@.str.432 = private unnamed_addr constant [27 x i8] c"GIMP_UNDO_LAYER_MASK_APPLY\00", align 1
@.str.433 = private unnamed_addr constant [17 x i8] c"layer-mask-apply\00", align 1
@.str.434 = private unnamed_addr constant [26 x i8] c"GIMP_UNDO_LAYER_MASK_SHOW\00", align 1
@.str.435 = private unnamed_addr constant [16 x i8] c"layer-mask-show\00", align 1
@.str.436 = private unnamed_addr constant [22 x i8] c"GIMP_UNDO_CHANNEL_ADD\00", align 1
@.str.437 = private unnamed_addr constant [12 x i8] c"channel-add\00", align 1
@.str.438 = private unnamed_addr constant [25 x i8] c"GIMP_UNDO_CHANNEL_REMOVE\00", align 1
@.str.439 = private unnamed_addr constant [15 x i8] c"channel-remove\00", align 1
@.str.440 = private unnamed_addr constant [24 x i8] c"GIMP_UNDO_CHANNEL_COLOR\00", align 1
@.str.441 = private unnamed_addr constant [14 x i8] c"channel-color\00", align 1
@.str.442 = private unnamed_addr constant [22 x i8] c"GIMP_UNDO_VECTORS_ADD\00", align 1
@.str.443 = private unnamed_addr constant [12 x i8] c"vectors-add\00", align 1
@.str.444 = private unnamed_addr constant [25 x i8] c"GIMP_UNDO_VECTORS_REMOVE\00", align 1
@.str.445 = private unnamed_addr constant [15 x i8] c"vectors-remove\00", align 1
@.str.446 = private unnamed_addr constant [22 x i8] c"GIMP_UNDO_VECTORS_MOD\00", align 1
@.str.447 = private unnamed_addr constant [12 x i8] c"vectors-mod\00", align 1
@.str.448 = private unnamed_addr constant [22 x i8] c"GIMP_UNDO_FS_TO_LAYER\00", align 1
@.str.449 = private unnamed_addr constant [12 x i8] c"fs-to-layer\00", align 1
@.str.450 = private unnamed_addr constant [20 x i8] c"GIMP_UNDO_TRANSFORM\00", align 1
@.str.451 = private unnamed_addr constant [10 x i8] c"transform\00", align 1
@.str.452 = private unnamed_addr constant [16 x i8] c"GIMP_UNDO_PAINT\00", align 1
@.str.453 = private unnamed_addr constant [6 x i8] c"paint\00", align 1
@.str.454 = private unnamed_addr constant [14 x i8] c"GIMP_UNDO_INK\00", align 1
@.str.455 = private unnamed_addr constant [4 x i8] c"ink\00", align 1
@.str.456 = private unnamed_addr constant [28 x i8] c"GIMP_UNDO_FOREGROUND_SELECT\00", align 1
@.str.457 = private unnamed_addr constant [18 x i8] c"foreground-select\00", align 1
@.str.458 = private unnamed_addr constant [26 x i8] c"GIMP_UNDO_PARASITE_ATTACH\00", align 1
@.str.459 = private unnamed_addr constant [16 x i8] c"parasite-attach\00", align 1
@.str.460 = private unnamed_addr constant [26 x i8] c"GIMP_UNDO_PARASITE_REMOVE\00", align 1
@.str.461 = private unnamed_addr constant [16 x i8] c"parasite-remove\00", align 1
@.str.462 = private unnamed_addr constant [15 x i8] c"GIMP_UNDO_CANT\00", align 1
@.str.463 = private unnamed_addr constant [5 x i8] c"cant\00", align 1
@gimp_undo_type_get_type.descs = internal constant [82 x %struct._GimpEnumDesc] [%struct._GimpEnumDesc { i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.464, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.465, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.466, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 3, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.467, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.468, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 5, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.469, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 6, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.470, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 7, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.471, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.472, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 9, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.473, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 10, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.474, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.475, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.476, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 13, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.477, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 14, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.478, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 15, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.479, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 16, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.480, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 17, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.481, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 18, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.482, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 19, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.483, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 20, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.484, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 21, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.485, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 22, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.486, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 23, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.487, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 24, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.488, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 25, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.489, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 26, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.490, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 27, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.491, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 28, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.492, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 29, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.493, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 30, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.494, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.495, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 32, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.496, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 33, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.497, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 34, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.498, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 35, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.499, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 36, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.500, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 37, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.501, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 38, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.502, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 39, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.503, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 40, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.504, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 41, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.475, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 42, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.505, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 43, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.476, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 44, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.477, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 45, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.478, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 46, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.479, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 47, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.480, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 48, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.506, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 49, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.507, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 50, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.484, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 51, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.481, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 52, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.482, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 53, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.508, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 54, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.509, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 55, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.510, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 56, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.511, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 57, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.512, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 58, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.513, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 59, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.514, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 60, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.515, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 61, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.516, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 62, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.517, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 63, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.488, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 64, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.518, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 65, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.489, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 66, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.519, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 67, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.520, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 68, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.521, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 69, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.522, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 70, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.523, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 71, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.524, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 72, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.525, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 73, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.490, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 74, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.496, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 75, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.497, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 76, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.526, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 77, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.527, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 78, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.498, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 79, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.499, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 80, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.528, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc zeroinitializer], align 16
@.str.464 = private unnamed_addr constant [12 x i8] c"<<invalid>>\00", align 1
@.str.465 = private unnamed_addr constant [12 x i8] c"Scale image\00", align 1
@.str.466 = private unnamed_addr constant [13 x i8] c"Resize image\00", align 1
@.str.467 = private unnamed_addr constant [11 x i8] c"Flip image\00", align 1
@.str.468 = private unnamed_addr constant [13 x i8] c"Rotate image\00", align 1
@.str.469 = private unnamed_addr constant [11 x i8] c"Crop image\00", align 1
@.str.470 = private unnamed_addr constant [14 x i8] c"Convert image\00", align 1
@.str.471 = private unnamed_addr constant [12 x i8] c"Remove item\00", align 1
@.str.472 = private unnamed_addr constant [13 x i8] c"Merge layers\00", align 1
@.str.473 = private unnamed_addr constant [12 x i8] c"Merge paths\00", align 1
@.str.474 = private unnamed_addr constant [11 x i8] c"Quick Mask\00", align 1
@.str.475 = private unnamed_addr constant [5 x i8] c"Grid\00", align 1
@.str.476 = private unnamed_addr constant [6 x i8] c"Guide\00", align 1
@.str.477 = private unnamed_addr constant [13 x i8] c"Sample Point\00", align 1
@.str.478 = private unnamed_addr constant [14 x i8] c"Layer/Channel\00", align 1
@.str.479 = private unnamed_addr constant [27 x i8] c"Layer/Channel modification\00", align 1
@.str.480 = private unnamed_addr constant [15 x i8] c"Selection mask\00", align 1
@.str.481 = private unnamed_addr constant [16 x i8] c"Item visibility\00", align 1
@.str.482 = private unnamed_addr constant [17 x i8] c"Link/Unlink item\00", align 1
@.str.483 = private unnamed_addr constant [16 x i8] c"Item properties\00", align 1
@.str.484 = private unnamed_addr constant [10 x i8] c"Move item\00", align 1
@.str.485 = private unnamed_addr constant [11 x i8] c"Scale item\00", align 1
@.str.486 = private unnamed_addr constant [12 x i8] c"Resize item\00", align 1
@.str.487 = private unnamed_addr constant [10 x i8] c"Add layer\00", align 1
@.str.488 = private unnamed_addr constant [15 x i8] c"Add layer mask\00", align 1
@.str.489 = private unnamed_addr constant [17 x i8] c"Apply layer mask\00", align 1
@.str.490 = private unnamed_addr constant [28 x i8] c"Floating selection to layer\00", align 1
@.str.491 = private unnamed_addr constant [16 x i8] c"Float selection\00", align 1
@.str.492 = private unnamed_addr constant [26 x i8] c"Anchor floating selection\00", align 1
@.str.493 = private unnamed_addr constant [6 x i8] c"Paste\00", align 1
@.str.494 = private unnamed_addr constant [4 x i8] c"Cut\00", align 1
@.str.495 = private unnamed_addr constant [5 x i8] c"Text\00", align 1
@.str.496 = private unnamed_addr constant [10 x i8] c"Transform\00", align 1
@.str.497 = private unnamed_addr constant [6 x i8] c"Paint\00", align 1
@.str.498 = private unnamed_addr constant [16 x i8] c"Attach parasite\00", align 1
@.str.499 = private unnamed_addr constant [16 x i8] c"Remove parasite\00", align 1
@.str.500 = private unnamed_addr constant [13 x i8] c"Import paths\00", align 1
@.str.501 = private unnamed_addr constant [8 x i8] c"Plug-In\00", align 1
@.str.502 = private unnamed_addr constant [11 x i8] c"Image type\00", align 1
@.str.503 = private unnamed_addr constant [11 x i8] c"Image size\00", align 1
@.str.504 = private unnamed_addr constant [24 x i8] c"Image resolution change\00", align 1
@.str.505 = private unnamed_addr constant [23 x i8] c"Change indexed palette\00", align 1
@.str.506 = private unnamed_addr constant [13 x i8] c"Reorder item\00", align 1
@.str.507 = private unnamed_addr constant [12 x i8] c"Rename item\00", align 1
@.str.508 = private unnamed_addr constant [10 x i8] c"New layer\00", align 1
@.str.509 = private unnamed_addr constant [13 x i8] c"Delete layer\00", align 1
@.str.510 = private unnamed_addr constant [15 x i8] c"Set layer mode\00", align 1
@.str.511 = private unnamed_addr constant [18 x i8] c"Set layer opacity\00", align 1
@.str.512 = private unnamed_addr constant [26 x i8] c"Lock/Unlock alpha channel\00", align 1
@.str.513 = private unnamed_addr constant [27 x i8] c"Suspend group layer resize\00", align 1
@.str.514 = private unnamed_addr constant [26 x i8] c"Resume group layer resize\00", align 1
@.str.515 = private unnamed_addr constant [20 x i8] c"Convert group layer\00", align 1
@.str.516 = private unnamed_addr constant [11 x i8] c"Text layer\00", align 1
@.str.517 = private unnamed_addr constant [24 x i8] c"Text layer modification\00", align 1
@.str.518 = private unnamed_addr constant [18 x i8] c"Delete layer mask\00", align 1
@.str.519 = private unnamed_addr constant [16 x i8] c"Show layer mask\00", align 1
@.str.520 = private unnamed_addr constant [12 x i8] c"New channel\00", align 1
@.str.521 = private unnamed_addr constant [15 x i8] c"Delete channel\00", align 1
@.str.522 = private unnamed_addr constant [14 x i8] c"Channel color\00", align 1
@.str.523 = private unnamed_addr constant [9 x i8] c"New path\00", align 1
@.str.524 = private unnamed_addr constant [12 x i8] c"Delete path\00", align 1
@.str.525 = private unnamed_addr constant [18 x i8] c"Path modification\00", align 1
@.str.526 = private unnamed_addr constant [4 x i8] c"Ink\00", align 1
@.str.527 = private unnamed_addr constant [18 x i8] c"Select foreground\00", align 1
@.str.528 = private unnamed_addr constant [13 x i8] c"Not undoable\00", align 1
@gimp_undo_type_get_type.type = internal global i64 0, align 8
@.str.529 = private unnamed_addr constant [13 x i8] c"GimpUndoType\00", align 1
@.str.530 = private unnamed_addr constant [10 x i8] c"undo-type\00", align 1
@gimp_dirty_mask_get_type.values = internal constant [13 x %struct._GFlagsValue] [%struct._GFlagsValue { i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.531, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i32 0, i32 0) }, %struct._GFlagsValue { i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.532, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.85, i32 0, i32 0) }, %struct._GFlagsValue { i32 2, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.533, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.381, i32 0, i32 0) }, %struct._GFlagsValue { i32 4, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.534, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.535, i32 0, i32 0) }, %struct._GFlagsValue { i32 8, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.536, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.537, i32 0, i32 0) }, %struct._GFlagsValue { i32 16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.538, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.539, i32 0, i32 0) }, %struct._GFlagsValue { i32 32, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.540, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.541, i32 0, i32 0) }, %struct._GFlagsValue { i32 64, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.542, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.393, i32 0, i32 0) }, %struct._GFlagsValue { i32 128, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.543, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.544, i32 0, i32 0) }, %struct._GFlagsValue { i32 256, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.545, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.87, i32 0, i32 0) }, %struct._GFlagsValue { i32 512, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.546, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.547, i32 0, i32 0) }, %struct._GFlagsValue { i32 65535, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.548, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.213, i32 0, i32 0) }, %struct._GFlagsValue zeroinitializer], align 16
@.str.531 = private unnamed_addr constant [16 x i8] c"GIMP_DIRTY_NONE\00", align 1
@.str.532 = private unnamed_addr constant [17 x i8] c"GIMP_DIRTY_IMAGE\00", align 1
@.str.533 = private unnamed_addr constant [22 x i8] c"GIMP_DIRTY_IMAGE_SIZE\00", align 1
@.str.534 = private unnamed_addr constant [22 x i8] c"GIMP_DIRTY_IMAGE_META\00", align 1
@.str.535 = private unnamed_addr constant [11 x i8] c"image-meta\00", align 1
@.str.536 = private unnamed_addr constant [27 x i8] c"GIMP_DIRTY_IMAGE_STRUCTURE\00", align 1
@.str.537 = private unnamed_addr constant [16 x i8] c"image-structure\00", align 1
@.str.538 = private unnamed_addr constant [16 x i8] c"GIMP_DIRTY_ITEM\00", align 1
@.str.539 = private unnamed_addr constant [5 x i8] c"item\00", align 1
@.str.540 = private unnamed_addr constant [21 x i8] c"GIMP_DIRTY_ITEM_META\00", align 1
@.str.541 = private unnamed_addr constant [10 x i8] c"item-meta\00", align 1
@.str.542 = private unnamed_addr constant [20 x i8] c"GIMP_DIRTY_DRAWABLE\00", align 1
@.str.543 = private unnamed_addr constant [19 x i8] c"GIMP_DIRTY_VECTORS\00", align 1
@.str.544 = private unnamed_addr constant [8 x i8] c"vectors\00", align 1
@.str.545 = private unnamed_addr constant [21 x i8] c"GIMP_DIRTY_SELECTION\00", align 1
@.str.546 = private unnamed_addr constant [27 x i8] c"GIMP_DIRTY_ACTIVE_DRAWABLE\00", align 1
@.str.547 = private unnamed_addr constant [16 x i8] c"active-drawable\00", align 1
@.str.548 = private unnamed_addr constant [15 x i8] c"GIMP_DIRTY_ALL\00", align 1
@gimp_dirty_mask_get_type.descs = internal constant [13 x %struct._GimpFlagsDesc] [%struct._GimpFlagsDesc { i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.531, i32 0, i32 0), i8* null }, %struct._GimpFlagsDesc { i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.532, i32 0, i32 0), i8* null }, %struct._GimpFlagsDesc { i32 2, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.533, i32 0, i32 0), i8* null }, %struct._GimpFlagsDesc { i32 4, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.534, i32 0, i32 0), i8* null }, %struct._GimpFlagsDesc { i32 8, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.536, i32 0, i32 0), i8* null }, %struct._GimpFlagsDesc { i32 16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.538, i32 0, i32 0), i8* null }, %struct._GimpFlagsDesc { i32 32, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.540, i32 0, i32 0), i8* null }, %struct._GimpFlagsDesc { i32 64, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.542, i32 0, i32 0), i8* null }, %struct._GimpFlagsDesc { i32 128, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.543, i32 0, i32 0), i8* null }, %struct._GimpFlagsDesc { i32 256, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.545, i32 0, i32 0), i8* null }, %struct._GimpFlagsDesc { i32 512, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.546, i32 0, i32 0), i8* null }, %struct._GimpFlagsDesc { i32 65535, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.548, i32 0, i32 0), i8* null }, %struct._GimpFlagsDesc zeroinitializer], align 16
@gimp_dirty_mask_get_type.type = internal global i64 0, align 8
@.str.549 = private unnamed_addr constant [14 x i8] c"GimpDirtyMask\00", align 1
@.str.550 = private unnamed_addr constant [11 x i8] c"dirty-mask\00", align 1
@gimp_offset_type_get_type.values = internal constant [3 x %struct._GEnumValue] [%struct._GEnumValue { i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.551, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.552, i32 0, i32 0) }, %struct._GEnumValue { i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.553, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.554, i32 0, i32 0) }, %struct._GEnumValue zeroinitializer], align 16
@.str.551 = private unnamed_addr constant [23 x i8] c"GIMP_OFFSET_BACKGROUND\00", align 1
@.str.552 = private unnamed_addr constant [11 x i8] c"background\00", align 1
@.str.553 = private unnamed_addr constant [24 x i8] c"GIMP_OFFSET_TRANSPARENT\00", align 1
@.str.554 = private unnamed_addr constant [12 x i8] c"transparent\00", align 1
@gimp_offset_type_get_type.descs = internal constant [3 x %struct._GimpEnumDesc] [%struct._GimpEnumDesc { i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.551, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.553, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc zeroinitializer], align 16
@gimp_offset_type_get_type.type = internal global i64 0, align 8
@.str.555 = private unnamed_addr constant [15 x i8] c"GimpOffsetType\00", align 1
@.str.556 = private unnamed_addr constant [12 x i8] c"offset-type\00", align 1
@gimp_gradient_color_get_type.values = internal constant [6 x %struct._GEnumValue] [%struct._GEnumValue { i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.557, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.558, i32 0, i32 0) }, %struct._GEnumValue { i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.559, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.560, i32 0, i32 0) }, %struct._GEnumValue { i32 2, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.561, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.562, i32 0, i32 0) }, %struct._GEnumValue { i32 3, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.563, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.552, i32 0, i32 0) }, %struct._GEnumValue { i32 4, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.564, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.565, i32 0, i32 0) }, %struct._GEnumValue zeroinitializer], align 16
@.str.557 = private unnamed_addr constant [26 x i8] c"GIMP_GRADIENT_COLOR_FIXED\00", align 1
@.str.558 = private unnamed_addr constant [6 x i8] c"fixed\00", align 1
@.str.559 = private unnamed_addr constant [31 x i8] c"GIMP_GRADIENT_COLOR_FOREGROUND\00", align 1
@.str.560 = private unnamed_addr constant [11 x i8] c"foreground\00", align 1
@.str.561 = private unnamed_addr constant [43 x i8] c"GIMP_GRADIENT_COLOR_FOREGROUND_TRANSPARENT\00", align 1
@.str.562 = private unnamed_addr constant [23 x i8] c"foreground-transparent\00", align 1
@.str.563 = private unnamed_addr constant [31 x i8] c"GIMP_GRADIENT_COLOR_BACKGROUND\00", align 1
@.str.564 = private unnamed_addr constant [43 x i8] c"GIMP_GRADIENT_COLOR_BACKGROUND_TRANSPARENT\00", align 1
@.str.565 = private unnamed_addr constant [23 x i8] c"background-transparent\00", align 1
@gimp_gradient_color_get_type.descs = internal constant [6 x %struct._GimpEnumDesc] [%struct._GimpEnumDesc { i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.557, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.559, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 2, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.561, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 3, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.563, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 4, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.564, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc zeroinitializer], align 16
@gimp_gradient_color_get_type.type = internal global i64 0, align 8
@.str.566 = private unnamed_addr constant [18 x i8] c"GimpGradientColor\00", align 1
@.str.567 = private unnamed_addr constant [15 x i8] c"gradient-color\00", align 1
@gimp_gradient_segment_type_get_type.values = internal constant [6 x %struct._GEnumValue] [%struct._GEnumValue { i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.568, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.569, i32 0, i32 0) }, %struct._GEnumValue { i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.570, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.571, i32 0, i32 0) }, %struct._GEnumValue { i32 2, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.572, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.573, i32 0, i32 0) }, %struct._GEnumValue { i32 3, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.574, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.575, i32 0, i32 0) }, %struct._GEnumValue { i32 4, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.576, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.577, i32 0, i32 0) }, %struct._GEnumValue zeroinitializer], align 16
@.str.568 = private unnamed_addr constant [29 x i8] c"GIMP_GRADIENT_SEGMENT_LINEAR\00", align 1
@.str.569 = private unnamed_addr constant [7 x i8] c"linear\00", align 1
@.str.570 = private unnamed_addr constant [29 x i8] c"GIMP_GRADIENT_SEGMENT_CURVED\00", align 1
@.str.571 = private unnamed_addr constant [7 x i8] c"curved\00", align 1
@.str.572 = private unnamed_addr constant [27 x i8] c"GIMP_GRADIENT_SEGMENT_SINE\00", align 1
@.str.573 = private unnamed_addr constant [5 x i8] c"sine\00", align 1
@.str.574 = private unnamed_addr constant [40 x i8] c"GIMP_GRADIENT_SEGMENT_SPHERE_INCREASING\00", align 1
@.str.575 = private unnamed_addr constant [18 x i8] c"sphere-increasing\00", align 1
@.str.576 = private unnamed_addr constant [40 x i8] c"GIMP_GRADIENT_SEGMENT_SPHERE_DECREASING\00", align 1
@.str.577 = private unnamed_addr constant [18 x i8] c"sphere-decreasing\00", align 1
@gimp_gradient_segment_type_get_type.descs = internal constant [6 x %struct._GimpEnumDesc] [%struct._GimpEnumDesc { i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.568, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.570, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 2, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.572, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 3, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.574, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 4, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.576, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc zeroinitializer], align 16
@gimp_gradient_segment_type_get_type.type = internal global i64 0, align 8
@.str.578 = private unnamed_addr constant [24 x i8] c"GimpGradientSegmentType\00", align 1
@.str.579 = private unnamed_addr constant [22 x i8] c"gradient-segment-type\00", align 1
@gimp_gradient_segment_color_get_type.values = internal constant [4 x %struct._GEnumValue] [%struct._GEnumValue { i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.580, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.581, i32 0, i32 0) }, %struct._GEnumValue { i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.582, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.583, i32 0, i32 0) }, %struct._GEnumValue { i32 2, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.584, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.585, i32 0, i32 0) }, %struct._GEnumValue zeroinitializer], align 16
@.str.580 = private unnamed_addr constant [26 x i8] c"GIMP_GRADIENT_SEGMENT_RGB\00", align 1
@.str.581 = private unnamed_addr constant [4 x i8] c"rgb\00", align 1
@.str.582 = private unnamed_addr constant [30 x i8] c"GIMP_GRADIENT_SEGMENT_HSV_CCW\00", align 1
@.str.583 = private unnamed_addr constant [8 x i8] c"hsv-ccw\00", align 1
@.str.584 = private unnamed_addr constant [29 x i8] c"GIMP_GRADIENT_SEGMENT_HSV_CW\00", align 1
@.str.585 = private unnamed_addr constant [7 x i8] c"hsv-cw\00", align 1
@gimp_gradient_segment_color_get_type.descs = internal constant [4 x %struct._GimpEnumDesc] [%struct._GimpEnumDesc { i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.580, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.582, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 2, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.584, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc zeroinitializer], align 16
@gimp_gradient_segment_color_get_type.type = internal global i64 0, align 8
@.str.586 = private unnamed_addr constant [25 x i8] c"GimpGradientSegmentColor\00", align 1
@.str.587 = private unnamed_addr constant [23 x i8] c"gradient-segment-color\00", align 1
@gimp_mask_apply_mode_get_type.values = internal constant [3 x %struct._GEnumValue] [%struct._GEnumValue { i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.588, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.589, i32 0, i32 0) }, %struct._GEnumValue { i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.590, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.591, i32 0, i32 0) }, %struct._GEnumValue zeroinitializer], align 16
@.str.588 = private unnamed_addr constant [16 x i8] c"GIMP_MASK_APPLY\00", align 1
@.str.589 = private unnamed_addr constant [6 x i8] c"apply\00", align 1
@.str.590 = private unnamed_addr constant [18 x i8] c"GIMP_MASK_DISCARD\00", align 1
@.str.591 = private unnamed_addr constant [8 x i8] c"discard\00", align 1
@gimp_mask_apply_mode_get_type.descs = internal constant [3 x %struct._GimpEnumDesc] [%struct._GimpEnumDesc { i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.588, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.590, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc zeroinitializer], align 16
@gimp_mask_apply_mode_get_type.type = internal global i64 0, align 8
@.str.592 = private unnamed_addr constant [18 x i8] c"GimpMaskApplyMode\00", align 1
@.str.593 = private unnamed_addr constant [16 x i8] c"mask-apply-mode\00", align 1
@gimp_merge_type_get_type.values = internal constant [5 x %struct._GEnumValue] [%struct._GEnumValue { i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.594, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.595, i32 0, i32 0) }, %struct._GEnumValue { i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.596, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.597, i32 0, i32 0) }, %struct._GEnumValue { i32 2, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.598, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.599, i32 0, i32 0) }, %struct._GEnumValue { i32 3, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.600, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.601, i32 0, i32 0) }, %struct._GEnumValue zeroinitializer], align 16
@.str.594 = private unnamed_addr constant [25 x i8] c"GIMP_EXPAND_AS_NECESSARY\00", align 1
@.str.595 = private unnamed_addr constant [20 x i8] c"expand-as-necessary\00", align 1
@.str.596 = private unnamed_addr constant [19 x i8] c"GIMP_CLIP_TO_IMAGE\00", align 1
@.str.597 = private unnamed_addr constant [14 x i8] c"clip-to-image\00", align 1
@.str.598 = private unnamed_addr constant [26 x i8] c"GIMP_CLIP_TO_BOTTOM_LAYER\00", align 1
@.str.599 = private unnamed_addr constant [21 x i8] c"clip-to-bottom-layer\00", align 1
@.str.600 = private unnamed_addr constant [19 x i8] c"GIMP_FLATTEN_IMAGE\00", align 1
@.str.601 = private unnamed_addr constant [14 x i8] c"flatten-image\00", align 1
@gimp_merge_type_get_type.descs = internal constant [5 x %struct._GimpEnumDesc] [%struct._GimpEnumDesc { i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.594, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.596, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 2, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.598, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 3, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.600, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc zeroinitializer], align 16
@gimp_merge_type_get_type.type = internal global i64 0, align 8
@.str.602 = private unnamed_addr constant [14 x i8] c"GimpMergeType\00", align 1
@.str.603 = private unnamed_addr constant [11 x i8] c"merge-type\00", align 1
@gimp_select_criterion_get_type.values = internal constant [8 x %struct._GEnumValue] [%struct._GEnumValue { i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.604, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.605, i32 0, i32 0) }, %struct._GEnumValue { i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.606, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.607, i32 0, i32 0) }, %struct._GEnumValue { i32 2, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.608, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.609, i32 0, i32 0) }, %struct._GEnumValue { i32 3, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.610, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.611, i32 0, i32 0) }, %struct._GEnumValue { i32 4, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.612, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.613, i32 0, i32 0) }, %struct._GEnumValue { i32 5, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.614, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.615, i32 0, i32 0) }, %struct._GEnumValue { i32 6, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.616, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.617, i32 0, i32 0) }, %struct._GEnumValue zeroinitializer], align 16
@.str.604 = private unnamed_addr constant [32 x i8] c"GIMP_SELECT_CRITERION_COMPOSITE\00", align 1
@.str.605 = private unnamed_addr constant [10 x i8] c"composite\00", align 1
@.str.606 = private unnamed_addr constant [24 x i8] c"GIMP_SELECT_CRITERION_R\00", align 1
@.str.607 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.608 = private unnamed_addr constant [24 x i8] c"GIMP_SELECT_CRITERION_G\00", align 1
@.str.609 = private unnamed_addr constant [2 x i8] c"g\00", align 1
@.str.610 = private unnamed_addr constant [24 x i8] c"GIMP_SELECT_CRITERION_B\00", align 1
@.str.611 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.612 = private unnamed_addr constant [24 x i8] c"GIMP_SELECT_CRITERION_H\00", align 1
@.str.613 = private unnamed_addr constant [2 x i8] c"h\00", align 1
@.str.614 = private unnamed_addr constant [24 x i8] c"GIMP_SELECT_CRITERION_S\00", align 1
@.str.615 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.616 = private unnamed_addr constant [24 x i8] c"GIMP_SELECT_CRITERION_V\00", align 1
@.str.617 = private unnamed_addr constant [2 x i8] c"v\00", align 1
@gimp_select_criterion_get_type.descs = internal constant [8 x %struct._GimpEnumDesc] [%struct._GimpEnumDesc { i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.618, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.619, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.620, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.621, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.622, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 5, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.623, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.624, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc zeroinitializer], align 16
@.str.618 = private unnamed_addr constant [10 x i8] c"Composite\00", align 1
@.str.619 = private unnamed_addr constant [4 x i8] c"Red\00", align 1
@.str.620 = private unnamed_addr constant [6 x i8] c"Green\00", align 1
@.str.621 = private unnamed_addr constant [5 x i8] c"Blue\00", align 1
@.str.622 = private unnamed_addr constant [4 x i8] c"Hue\00", align 1
@.str.623 = private unnamed_addr constant [11 x i8] c"Saturation\00", align 1
@.str.624 = private unnamed_addr constant [6 x i8] c"Value\00", align 1
@gimp_select_criterion_get_type.type = internal global i64 0, align 8
@.str.625 = private unnamed_addr constant [20 x i8] c"GimpSelectCriterion\00", align 1
@.str.626 = private unnamed_addr constant [17 x i8] c"select-criterion\00", align 1
@gimp_message_severity_get_type.values = internal constant [4 x %struct._GEnumValue] [%struct._GEnumValue { i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.627, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.628, i32 0, i32 0) }, %struct._GEnumValue { i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.629, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.630, i32 0, i32 0) }, %struct._GEnumValue { i32 2, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.631, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.632, i32 0, i32 0) }, %struct._GEnumValue zeroinitializer], align 16
@.str.627 = private unnamed_addr constant [18 x i8] c"GIMP_MESSAGE_INFO\00", align 1
@.str.628 = private unnamed_addr constant [5 x i8] c"info\00", align 1
@.str.629 = private unnamed_addr constant [21 x i8] c"GIMP_MESSAGE_WARNING\00", align 1
@.str.630 = private unnamed_addr constant [8 x i8] c"warning\00", align 1
@.str.631 = private unnamed_addr constant [19 x i8] c"GIMP_MESSAGE_ERROR\00", align 1
@.str.632 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@gimp_message_severity_get_type.descs = internal constant [4 x %struct._GimpEnumDesc] [%struct._GimpEnumDesc { i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.633, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.634, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.635, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc zeroinitializer], align 16
@.str.633 = private unnamed_addr constant [8 x i8] c"Message\00", align 1
@.str.634 = private unnamed_addr constant [8 x i8] c"Warning\00", align 1
@.str.635 = private unnamed_addr constant [6 x i8] c"Error\00", align 1
@gimp_message_severity_get_type.type = internal global i64 0, align 8
@.str.636 = private unnamed_addr constant [20 x i8] c"GimpMessageSeverity\00", align 1
@.str.637 = private unnamed_addr constant [17 x i8] c"message-severity\00", align 1
@gimp_color_profile_policy_get_type.values = internal constant [4 x %struct._GEnumValue] [%struct._GEnumValue { i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.638, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.639, i32 0, i32 0) }, %struct._GEnumValue { i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.640, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.641, i32 0, i32 0) }, %struct._GEnumValue { i32 2, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.642, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.643, i32 0, i32 0) }, %struct._GEnumValue zeroinitializer], align 16
@.str.638 = private unnamed_addr constant [30 x i8] c"GIMP_COLOR_PROFILE_POLICY_ASK\00", align 1
@.str.639 = private unnamed_addr constant [4 x i8] c"ask\00", align 1
@.str.640 = private unnamed_addr constant [31 x i8] c"GIMP_COLOR_PROFILE_POLICY_KEEP\00", align 1
@.str.641 = private unnamed_addr constant [5 x i8] c"keep\00", align 1
@.str.642 = private unnamed_addr constant [34 x i8] c"GIMP_COLOR_PROFILE_POLICY_CONVERT\00", align 1
@.str.643 = private unnamed_addr constant [8 x i8] c"convert\00", align 1
@gimp_color_profile_policy_get_type.descs = internal constant [4 x %struct._GimpEnumDesc] [%struct._GimpEnumDesc { i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.644, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.645, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 2, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.646, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc zeroinitializer], align 16
@.str.644 = private unnamed_addr constant [15 x i8] c"Ask what to do\00", align 1
@.str.645 = private unnamed_addr constant [22 x i8] c"Keep embedded profile\00", align 1
@.str.646 = private unnamed_addr constant [25 x i8] c"Convert to RGB workspace\00", align 1
@gimp_color_profile_policy_get_type.type = internal global i64 0, align 8
@.str.647 = private unnamed_addr constant [23 x i8] c"GimpColorProfilePolicy\00", align 1
@.str.648 = private unnamed_addr constant [21 x i8] c"color-profile-policy\00", align 1
@gimp_dynamics_output_type_get_type.values = internal constant [12 x %struct._GEnumValue] [%struct._GEnumValue { i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.649, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.650, i32 0, i32 0) }, %struct._GEnumValue { i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.651, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.652, i32 0, i32 0) }, %struct._GEnumValue { i32 2, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.653, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.654, i32 0, i32 0) }, %struct._GEnumValue { i32 3, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.655, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.656, i32 0, i32 0) }, %struct._GEnumValue { i32 4, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.657, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.658, i32 0, i32 0) }, %struct._GEnumValue { i32 5, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.659, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.660, i32 0, i32 0) }, %struct._GEnumValue { i32 6, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.661, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.662, i32 0, i32 0) }, %struct._GEnumValue { i32 7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.663, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.664, i32 0, i32 0) }, %struct._GEnumValue { i32 8, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.665, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.666, i32 0, i32 0) }, %struct._GEnumValue { i32 9, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.667, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.668, i32 0, i32 0) }, %struct._GEnumValue { i32 10, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.669, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.670, i32 0, i32 0) }, %struct._GEnumValue zeroinitializer], align 16
@.str.649 = private unnamed_addr constant [29 x i8] c"GIMP_DYNAMICS_OUTPUT_OPACITY\00", align 1
@.str.650 = private unnamed_addr constant [8 x i8] c"opacity\00", align 1
@.str.651 = private unnamed_addr constant [26 x i8] c"GIMP_DYNAMICS_OUTPUT_SIZE\00", align 1
@.str.652 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.653 = private unnamed_addr constant [27 x i8] c"GIMP_DYNAMICS_OUTPUT_ANGLE\00", align 1
@.str.654 = private unnamed_addr constant [6 x i8] c"angle\00", align 1
@.str.655 = private unnamed_addr constant [27 x i8] c"GIMP_DYNAMICS_OUTPUT_COLOR\00", align 1
@.str.656 = private unnamed_addr constant [6 x i8] c"color\00", align 1
@.str.657 = private unnamed_addr constant [30 x i8] c"GIMP_DYNAMICS_OUTPUT_HARDNESS\00", align 1
@.str.658 = private unnamed_addr constant [9 x i8] c"hardness\00", align 1
@.str.659 = private unnamed_addr constant [27 x i8] c"GIMP_DYNAMICS_OUTPUT_FORCE\00", align 1
@.str.660 = private unnamed_addr constant [6 x i8] c"force\00", align 1
@.str.661 = private unnamed_addr constant [34 x i8] c"GIMP_DYNAMICS_OUTPUT_ASPECT_RATIO\00", align 1
@.str.662 = private unnamed_addr constant [13 x i8] c"aspect-ratio\00", align 1
@.str.663 = private unnamed_addr constant [29 x i8] c"GIMP_DYNAMICS_OUTPUT_SPACING\00", align 1
@.str.664 = private unnamed_addr constant [8 x i8] c"spacing\00", align 1
@.str.665 = private unnamed_addr constant [26 x i8] c"GIMP_DYNAMICS_OUTPUT_RATE\00", align 1
@.str.666 = private unnamed_addr constant [5 x i8] c"rate\00", align 1
@.str.667 = private unnamed_addr constant [26 x i8] c"GIMP_DYNAMICS_OUTPUT_FLOW\00", align 1
@.str.668 = private unnamed_addr constant [5 x i8] c"flow\00", align 1
@.str.669 = private unnamed_addr constant [28 x i8] c"GIMP_DYNAMICS_OUTPUT_JITTER\00", align 1
@.str.670 = private unnamed_addr constant [7 x i8] c"jitter\00", align 1
@gimp_dynamics_output_type_get_type.descs = internal constant [12 x %struct._GimpEnumDesc] [%struct._GimpEnumDesc { i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.671, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.672, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.673, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.674, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.675, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.676, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 6, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.677, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 7, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.678, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.679, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.680, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.681, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc zeroinitializer], align 16
@.str.671 = private unnamed_addr constant [8 x i8] c"Opacity\00", align 1
@.str.672 = private unnamed_addr constant [5 x i8] c"Size\00", align 1
@.str.673 = private unnamed_addr constant [6 x i8] c"Angle\00", align 1
@.str.674 = private unnamed_addr constant [6 x i8] c"Color\00", align 1
@.str.675 = private unnamed_addr constant [9 x i8] c"Hardness\00", align 1
@.str.676 = private unnamed_addr constant [6 x i8] c"Force\00", align 1
@.str.677 = private unnamed_addr constant [13 x i8] c"Aspect ratio\00", align 1
@.str.678 = private unnamed_addr constant [8 x i8] c"Spacing\00", align 1
@.str.679 = private unnamed_addr constant [5 x i8] c"Rate\00", align 1
@.str.680 = private unnamed_addr constant [5 x i8] c"Flow\00", align 1
@.str.681 = private unnamed_addr constant [7 x i8] c"Jitter\00", align 1
@gimp_dynamics_output_type_get_type.type = internal global i64 0, align 8
@.str.682 = private unnamed_addr constant [23 x i8] c"GimpDynamicsOutputType\00", align 1
@.str.683 = private unnamed_addr constant [21 x i8] c"dynamics-output-type\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_container_policy_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_container_policy_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_enum_register_static(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0), %struct._GEnumValue* getelementptr inbounds ([3 x %struct._GEnumValue], [3 x %struct._GEnumValue]* @gimp_container_policy_get_type.values, i32 0, i32 0))
  store i64 %call, i64* @gimp_container_policy_get_type.type, align 8
  %1 = load i64, i64* @gimp_container_policy_get_type.type, align 8
  call void @gimp_type_set_translation_context(i64 %1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0))
  %2 = load i64, i64* @gimp_container_policy_get_type.type, align 8
  call void @gimp_enum_set_value_descriptions(i64 %2, %struct._GimpEnumDesc* getelementptr inbounds ([3 x %struct._GimpEnumDesc], [3 x %struct._GimpEnumDesc]* @gimp_container_policy_get_type.descs, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i64, i64* @gimp_container_policy_get_type.type, align 8
  ret i64 %3
}

declare i64 @g_enum_register_static(i8*, %struct._GEnumValue*) #1

declare void @gimp_type_set_translation_context(i64, i8*) #1

declare void @gimp_enum_set_value_descriptions(i64, %struct._GimpEnumDesc*) #1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_convert_dither_type_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_convert_dither_type_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_enum_register_static(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18, i32 0, i32 0), %struct._GEnumValue* getelementptr inbounds ([5 x %struct._GEnumValue], [5 x %struct._GEnumValue]* @gimp_convert_dither_type_get_type.values, i32 0, i32 0))
  store i64 %call, i64* @gimp_convert_dither_type_get_type.type, align 8
  %1 = load i64, i64* @gimp_convert_dither_type_get_type.type, align 8
  call void @gimp_type_set_translation_context(i64 %1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i32 0, i32 0))
  %2 = load i64, i64* @gimp_convert_dither_type_get_type.type, align 8
  call void @gimp_enum_set_value_descriptions(i64 %2, %struct._GimpEnumDesc* getelementptr inbounds ([5 x %struct._GimpEnumDesc], [5 x %struct._GimpEnumDesc]* @gimp_convert_dither_type_get_type.descs, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i64, i64* @gimp_convert_dither_type_get_type.type, align 8
  ret i64 %3
}

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_convert_palette_type_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_convert_palette_type_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_enum_register_static(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.32, i32 0, i32 0), %struct._GEnumValue* getelementptr inbounds ([5 x %struct._GEnumValue], [5 x %struct._GEnumValue]* @gimp_convert_palette_type_get_type.values, i32 0, i32 0))
  store i64 %call, i64* @gimp_convert_palette_type_get_type.type, align 8
  %1 = load i64, i64* @gimp_convert_palette_type_get_type.type, align 8
  call void @gimp_type_set_translation_context(i64 %1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.33, i32 0, i32 0))
  %2 = load i64, i64* @gimp_convert_palette_type_get_type.type, align 8
  call void @gimp_enum_set_value_descriptions(i64 %2, %struct._GimpEnumDesc* getelementptr inbounds ([5 x %struct._GimpEnumDesc], [5 x %struct._GimpEnumDesc]* @gimp_convert_palette_type_get_type.descs, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i64, i64* @gimp_convert_palette_type_get_type.type, align 8
  ret i64 %3
}

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_gravity_type_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_gravity_type_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_enum_register_static(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.54, i32 0, i32 0), %struct._GEnumValue* getelementptr inbounds ([11 x %struct._GEnumValue], [11 x %struct._GEnumValue]* @gimp_gravity_type_get_type.values, i32 0, i32 0))
  store i64 %call, i64* @gimp_gravity_type_get_type.type, align 8
  %1 = load i64, i64* @gimp_gravity_type_get_type.type, align 8
  call void @gimp_type_set_translation_context(i64 %1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.55, i32 0, i32 0))
  %2 = load i64, i64* @gimp_gravity_type_get_type.type, align 8
  call void @gimp_enum_set_value_descriptions(i64 %2, %struct._GimpEnumDesc* getelementptr inbounds ([11 x %struct._GimpEnumDesc], [11 x %struct._GimpEnumDesc]* @gimp_gravity_type_get_type.descs, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i64, i64* @gimp_gravity_type_get_type.type, align 8
  ret i64 %3
}

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_alignment_type_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_alignment_type_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_enum_register_static(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.80, i32 0, i32 0), %struct._GEnumValue* getelementptr inbounds ([13 x %struct._GEnumValue], [13 x %struct._GEnumValue]* @gimp_alignment_type_get_type.values, i32 0, i32 0))
  store i64 %call, i64* @gimp_alignment_type_get_type.type, align 8
  %1 = load i64, i64* @gimp_alignment_type_get_type.type, align 8
  call void @gimp_type_set_translation_context(i64 %1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.81, i32 0, i32 0))
  %2 = load i64, i64* @gimp_alignment_type_get_type.type, align 8
  call void @gimp_enum_set_value_descriptions(i64 %2, %struct._GimpEnumDesc* getelementptr inbounds ([13 x %struct._GimpEnumDesc], [13 x %struct._GimpEnumDesc]* @gimp_alignment_type_get_type.descs, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i64, i64* @gimp_alignment_type_get_type.type, align 8
  ret i64 %3
}

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_align_reference_type_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_align_reference_type_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_enum_register_static(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.100, i32 0, i32 0), %struct._GEnumValue* getelementptr inbounds ([7 x %struct._GEnumValue], [7 x %struct._GEnumValue]* @gimp_align_reference_type_get_type.values, i32 0, i32 0))
  store i64 %call, i64* @gimp_align_reference_type_get_type.type, align 8
  %1 = load i64, i64* @gimp_align_reference_type_get_type.type, align 8
  call void @gimp_type_set_translation_context(i64 %1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.101, i32 0, i32 0))
  %2 = load i64, i64* @gimp_align_reference_type_get_type.type, align 8
  call void @gimp_enum_set_value_descriptions(i64 %2, %struct._GimpEnumDesc* getelementptr inbounds ([7 x %struct._GimpEnumDesc], [7 x %struct._GimpEnumDesc]* @gimp_align_reference_type_get_type.descs, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i64, i64* @gimp_align_reference_type_get_type.type, align 8
  ret i64 %3
}

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_fill_type_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_fill_type_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_enum_register_static(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.119, i32 0, i32 0), %struct._GEnumValue* getelementptr inbounds ([7 x %struct._GEnumValue], [7 x %struct._GEnumValue]* @gimp_fill_type_get_type.values, i32 0, i32 0))
  store i64 %call, i64* @gimp_fill_type_get_type.type, align 8
  %1 = load i64, i64* @gimp_fill_type_get_type.type, align 8
  call void @gimp_type_set_translation_context(i64 %1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.120, i32 0, i32 0))
  %2 = load i64, i64* @gimp_fill_type_get_type.type, align 8
  call void @gimp_enum_set_value_descriptions(i64 %2, %struct._GimpEnumDesc* getelementptr inbounds ([7 x %struct._GimpEnumDesc], [7 x %struct._GimpEnumDesc]* @gimp_fill_type_get_type.descs, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i64, i64* @gimp_fill_type_get_type.type, align 8
  ret i64 %3
}

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_fill_style_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_fill_style_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_enum_register_static(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.126, i32 0, i32 0), %struct._GEnumValue* getelementptr inbounds ([3 x %struct._GEnumValue], [3 x %struct._GEnumValue]* @gimp_fill_style_get_type.values, i32 0, i32 0))
  store i64 %call, i64* @gimp_fill_style_get_type.type, align 8
  %1 = load i64, i64* @gimp_fill_style_get_type.type, align 8
  call void @gimp_type_set_translation_context(i64 %1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.127, i32 0, i32 0))
  %2 = load i64, i64* @gimp_fill_style_get_type.type, align 8
  call void @gimp_enum_set_value_descriptions(i64 %2, %struct._GimpEnumDesc* getelementptr inbounds ([3 x %struct._GimpEnumDesc], [3 x %struct._GimpEnumDesc]* @gimp_fill_style_get_type.descs, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i64, i64* @gimp_fill_style_get_type.type, align 8
  ret i64 %3
}

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_stroke_method_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_stroke_method_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_enum_register_static(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.134, i32 0, i32 0), %struct._GEnumValue* getelementptr inbounds ([3 x %struct._GEnumValue], [3 x %struct._GEnumValue]* @gimp_stroke_method_get_type.values, i32 0, i32 0))
  store i64 %call, i64* @gimp_stroke_method_get_type.type, align 8
  %1 = load i64, i64* @gimp_stroke_method_get_type.type, align 8
  call void @gimp_type_set_translation_context(i64 %1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.135, i32 0, i32 0))
  %2 = load i64, i64* @gimp_stroke_method_get_type.type, align 8
  call void @gimp_enum_set_value_descriptions(i64 %2, %struct._GimpEnumDesc* getelementptr inbounds ([3 x %struct._GimpEnumDesc], [3 x %struct._GimpEnumDesc]* @gimp_stroke_method_get_type.descs, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i64, i64* @gimp_stroke_method_get_type.type, align 8
  ret i64 %3
}

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_join_style_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_join_style_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_enum_register_static(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.145, i32 0, i32 0), %struct._GEnumValue* getelementptr inbounds ([4 x %struct._GEnumValue], [4 x %struct._GEnumValue]* @gimp_join_style_get_type.values, i32 0, i32 0))
  store i64 %call, i64* @gimp_join_style_get_type.type, align 8
  %1 = load i64, i64* @gimp_join_style_get_type.type, align 8
  call void @gimp_type_set_translation_context(i64 %1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.146, i32 0, i32 0))
  %2 = load i64, i64* @gimp_join_style_get_type.type, align 8
  call void @gimp_enum_set_value_descriptions(i64 %2, %struct._GimpEnumDesc* getelementptr inbounds ([4 x %struct._GimpEnumDesc], [4 x %struct._GimpEnumDesc]* @gimp_join_style_get_type.descs, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i64, i64* @gimp_join_style_get_type.type, align 8
  ret i64 %3
}

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_cap_style_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_cap_style_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_enum_register_static(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.154, i32 0, i32 0), %struct._GEnumValue* getelementptr inbounds ([4 x %struct._GEnumValue], [4 x %struct._GEnumValue]* @gimp_cap_style_get_type.values, i32 0, i32 0))
  store i64 %call, i64* @gimp_cap_style_get_type.type, align 8
  %1 = load i64, i64* @gimp_cap_style_get_type.type, align 8
  call void @gimp_type_set_translation_context(i64 %1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.155, i32 0, i32 0))
  %2 = load i64, i64* @gimp_cap_style_get_type.type, align 8
  call void @gimp_enum_set_value_descriptions(i64 %2, %struct._GimpEnumDesc* getelementptr inbounds ([4 x %struct._GimpEnumDesc], [4 x %struct._GimpEnumDesc]* @gimp_cap_style_get_type.descs, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i64, i64* @gimp_cap_style_get_type.type, align 8
  ret i64 %3
}

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_dash_preset_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_dash_preset_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_enum_register_static(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.189, i32 0, i32 0), %struct._GEnumValue* getelementptr inbounds ([12 x %struct._GEnumValue], [12 x %struct._GEnumValue]* @gimp_dash_preset_get_type.values, i32 0, i32 0))
  store i64 %call, i64* @gimp_dash_preset_get_type.type, align 8
  %1 = load i64, i64* @gimp_dash_preset_get_type.type, align 8
  call void @gimp_type_set_translation_context(i64 %1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.190, i32 0, i32 0))
  %2 = load i64, i64* @gimp_dash_preset_get_type.type, align 8
  call void @gimp_enum_set_value_descriptions(i64 %2, %struct._GimpEnumDesc* getelementptr inbounds ([12 x %struct._GimpEnumDesc], [12 x %struct._GimpEnumDesc]* @gimp_dash_preset_get_type.descs, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i64, i64* @gimp_dash_preset_get_type.type, align 8
  ret i64 %3
}

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_brush_generated_shape_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_brush_generated_shape_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_enum_register_static(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.198, i32 0, i32 0), %struct._GEnumValue* getelementptr inbounds ([4 x %struct._GEnumValue], [4 x %struct._GEnumValue]* @gimp_brush_generated_shape_get_type.values, i32 0, i32 0))
  store i64 %call, i64* @gimp_brush_generated_shape_get_type.type, align 8
  %1 = load i64, i64* @gimp_brush_generated_shape_get_type.type, align 8
  call void @gimp_type_set_translation_context(i64 %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.199, i32 0, i32 0))
  %2 = load i64, i64* @gimp_brush_generated_shape_get_type.type, align 8
  call void @gimp_enum_set_value_descriptions(i64 %2, %struct._GimpEnumDesc* getelementptr inbounds ([4 x %struct._GimpEnumDesc], [4 x %struct._GimpEnumDesc]* @gimp_brush_generated_shape_get_type.descs, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i64, i64* @gimp_brush_generated_shape_get_type.type, align 8
  ret i64 %3
}

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_orientation_type_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_orientation_type_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_enum_register_static(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.209, i32 0, i32 0), %struct._GEnumValue* getelementptr inbounds ([4 x %struct._GEnumValue], [4 x %struct._GEnumValue]* @gimp_orientation_type_get_type.values, i32 0, i32 0))
  store i64 %call, i64* @gimp_orientation_type_get_type.type, align 8
  %1 = load i64, i64* @gimp_orientation_type_get_type.type, align 8
  call void @gimp_type_set_translation_context(i64 %1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.210, i32 0, i32 0))
  %2 = load i64, i64* @gimp_orientation_type_get_type.type, align 8
  call void @gimp_enum_set_value_descriptions(i64 %2, %struct._GimpEnumDesc* getelementptr inbounds ([4 x %struct._GimpEnumDesc], [4 x %struct._GimpEnumDesc]* @gimp_orientation_type_get_type.descs, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i64, i64* @gimp_orientation_type_get_type.type, align 8
  ret i64 %3
}

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_item_set_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_item_set_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_enum_register_static(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.224, i32 0, i32 0), %struct._GEnumValue* getelementptr inbounds ([6 x %struct._GEnumValue], [6 x %struct._GEnumValue]* @gimp_item_set_get_type.values, i32 0, i32 0))
  store i64 %call, i64* @gimp_item_set_get_type.type, align 8
  %1 = load i64, i64* @gimp_item_set_get_type.type, align 8
  call void @gimp_type_set_translation_context(i64 %1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.225, i32 0, i32 0))
  %2 = load i64, i64* @gimp_item_set_get_type.type, align 8
  call void @gimp_enum_set_value_descriptions(i64 %2, %struct._GimpEnumDesc* getelementptr inbounds ([6 x %struct._GimpEnumDesc], [6 x %struct._GimpEnumDesc]* @gimp_item_set_get_type.descs, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i64, i64* @gimp_item_set_get_type.type, align 8
  ret i64 %3
}

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_rotation_type_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_rotation_type_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_enum_register_static(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.232, i32 0, i32 0), %struct._GEnumValue* getelementptr inbounds ([4 x %struct._GEnumValue], [4 x %struct._GEnumValue]* @gimp_rotation_type_get_type.values, i32 0, i32 0))
  store i64 %call, i64* @gimp_rotation_type_get_type.type, align 8
  %1 = load i64, i64* @gimp_rotation_type_get_type.type, align 8
  call void @gimp_type_set_translation_context(i64 %1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.233, i32 0, i32 0))
  %2 = load i64, i64* @gimp_rotation_type_get_type.type, align 8
  call void @gimp_enum_set_value_descriptions(i64 %2, %struct._GimpEnumDesc* getelementptr inbounds ([4 x %struct._GimpEnumDesc], [4 x %struct._GimpEnumDesc]* @gimp_rotation_type_get_type.descs, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i64, i64* @gimp_rotation_type_get_type.type, align 8
  ret i64 %3
}

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_view_size_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_view_size_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_enum_register_static(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.261, i32 0, i32 0), %struct._GEnumValue* getelementptr inbounds ([10 x %struct._GEnumValue], [10 x %struct._GEnumValue]* @gimp_view_size_get_type.values, i32 0, i32 0))
  store i64 %call, i64* @gimp_view_size_get_type.type, align 8
  %1 = load i64, i64* @gimp_view_size_get_type.type, align 8
  call void @gimp_type_set_translation_context(i64 %1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.262, i32 0, i32 0))
  %2 = load i64, i64* @gimp_view_size_get_type.type, align 8
  call void @gimp_enum_set_value_descriptions(i64 %2, %struct._GimpEnumDesc* getelementptr inbounds ([10 x %struct._GimpEnumDesc], [10 x %struct._GimpEnumDesc]* @gimp_view_size_get_type.descs, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i64, i64* @gimp_view_size_get_type.type, align 8
  ret i64 %3
}

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_view_type_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_view_type_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_enum_register_static(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.269, i32 0, i32 0), %struct._GEnumValue* getelementptr inbounds ([3 x %struct._GEnumValue], [3 x %struct._GEnumValue]* @gimp_view_type_get_type.values, i32 0, i32 0))
  store i64 %call, i64* @gimp_view_type_get_type.type, align 8
  %1 = load i64, i64* @gimp_view_type_get_type.type, align 8
  call void @gimp_type_set_translation_context(i64 %1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.270, i32 0, i32 0))
  %2 = load i64, i64* @gimp_view_type_get_type.type, align 8
  call void @gimp_enum_set_value_descriptions(i64 %2, %struct._GimpEnumDesc* getelementptr inbounds ([3 x %struct._GimpEnumDesc], [3 x %struct._GimpEnumDesc]* @gimp_view_type_get_type.descs, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i64, i64* @gimp_view_type_get_type.type, align 8
  ret i64 %3
}

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_thumbnail_size_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_thumbnail_size_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_enum_register_static(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.278, i32 0, i32 0), %struct._GEnumValue* getelementptr inbounds ([4 x %struct._GEnumValue], [4 x %struct._GEnumValue]* @gimp_thumbnail_size_get_type.values, i32 0, i32 0))
  store i64 %call, i64* @gimp_thumbnail_size_get_type.type, align 8
  %1 = load i64, i64* @gimp_thumbnail_size_get_type.type, align 8
  call void @gimp_type_set_translation_context(i64 %1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.279, i32 0, i32 0))
  %2 = load i64, i64* @gimp_thumbnail_size_get_type.type, align 8
  call void @gimp_enum_set_value_descriptions(i64 %2, %struct._GimpEnumDesc* getelementptr inbounds ([4 x %struct._GimpEnumDesc], [4 x %struct._GimpEnumDesc]* @gimp_thumbnail_size_get_type.descs, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i64, i64* @gimp_thumbnail_size_get_type.type, align 8
  ret i64 %3
}

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_undo_mode_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_undo_mode_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_enum_register_static(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.284, i32 0, i32 0), %struct._GEnumValue* getelementptr inbounds ([3 x %struct._GEnumValue], [3 x %struct._GEnumValue]* @gimp_undo_mode_get_type.values, i32 0, i32 0))
  store i64 %call, i64* @gimp_undo_mode_get_type.type, align 8
  %1 = load i64, i64* @gimp_undo_mode_get_type.type, align 8
  call void @gimp_type_set_translation_context(i64 %1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.285, i32 0, i32 0))
  %2 = load i64, i64* @gimp_undo_mode_get_type.type, align 8
  call void @gimp_enum_set_value_descriptions(i64 %2, %struct._GimpEnumDesc* getelementptr inbounds ([3 x %struct._GimpEnumDesc], [3 x %struct._GimpEnumDesc]* @gimp_undo_mode_get_type.descs, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i64, i64* @gimp_undo_mode_get_type.type, align 8
  ret i64 %3
}

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_undo_event_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_undo_event_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_enum_register_static(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.300, i32 0, i32 0), %struct._GEnumValue* getelementptr inbounds ([9 x %struct._GEnumValue], [9 x %struct._GEnumValue]* @gimp_undo_event_get_type.values, i32 0, i32 0))
  store i64 %call, i64* @gimp_undo_event_get_type.type, align 8
  %1 = load i64, i64* @gimp_undo_event_get_type.type, align 8
  call void @gimp_type_set_translation_context(i64 %1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.301, i32 0, i32 0))
  %2 = load i64, i64* @gimp_undo_event_get_type.type, align 8
  call void @gimp_enum_set_value_descriptions(i64 %2, %struct._GimpEnumDesc* getelementptr inbounds ([9 x %struct._GimpEnumDesc], [9 x %struct._GimpEnumDesc]* @gimp_undo_event_get_type.descs, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i64, i64* @gimp_undo_event_get_type.type, align 8
  ret i64 %3
}

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_undo_type_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_undo_type_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_enum_register_static(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.529, i32 0, i32 0), %struct._GEnumValue* getelementptr inbounds ([82 x %struct._GEnumValue], [82 x %struct._GEnumValue]* @gimp_undo_type_get_type.values, i32 0, i32 0))
  store i64 %call, i64* @gimp_undo_type_get_type.type, align 8
  %1 = load i64, i64* @gimp_undo_type_get_type.type, align 8
  call void @gimp_type_set_translation_context(i64 %1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.530, i32 0, i32 0))
  %2 = load i64, i64* @gimp_undo_type_get_type.type, align 8
  call void @gimp_enum_set_value_descriptions(i64 %2, %struct._GimpEnumDesc* getelementptr inbounds ([82 x %struct._GimpEnumDesc], [82 x %struct._GimpEnumDesc]* @gimp_undo_type_get_type.descs, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i64, i64* @gimp_undo_type_get_type.type, align 8
  ret i64 %3
}

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_dirty_mask_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_dirty_mask_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_flags_register_static(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.549, i32 0, i32 0), %struct._GFlagsValue* getelementptr inbounds ([13 x %struct._GFlagsValue], [13 x %struct._GFlagsValue]* @gimp_dirty_mask_get_type.values, i32 0, i32 0))
  store i64 %call, i64* @gimp_dirty_mask_get_type.type, align 8
  %1 = load i64, i64* @gimp_dirty_mask_get_type.type, align 8
  call void @gimp_type_set_translation_context(i64 %1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.550, i32 0, i32 0))
  %2 = load i64, i64* @gimp_dirty_mask_get_type.type, align 8
  call void @gimp_flags_set_value_descriptions(i64 %2, %struct._GimpFlagsDesc* getelementptr inbounds ([13 x %struct._GimpFlagsDesc], [13 x %struct._GimpFlagsDesc]* @gimp_dirty_mask_get_type.descs, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i64, i64* @gimp_dirty_mask_get_type.type, align 8
  ret i64 %3
}

declare i64 @g_flags_register_static(i8*, %struct._GFlagsValue*) #1

declare void @gimp_flags_set_value_descriptions(i64, %struct._GimpFlagsDesc*) #1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_offset_type_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_offset_type_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_enum_register_static(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.555, i32 0, i32 0), %struct._GEnumValue* getelementptr inbounds ([3 x %struct._GEnumValue], [3 x %struct._GEnumValue]* @gimp_offset_type_get_type.values, i32 0, i32 0))
  store i64 %call, i64* @gimp_offset_type_get_type.type, align 8
  %1 = load i64, i64* @gimp_offset_type_get_type.type, align 8
  call void @gimp_type_set_translation_context(i64 %1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.556, i32 0, i32 0))
  %2 = load i64, i64* @gimp_offset_type_get_type.type, align 8
  call void @gimp_enum_set_value_descriptions(i64 %2, %struct._GimpEnumDesc* getelementptr inbounds ([3 x %struct._GimpEnumDesc], [3 x %struct._GimpEnumDesc]* @gimp_offset_type_get_type.descs, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i64, i64* @gimp_offset_type_get_type.type, align 8
  ret i64 %3
}

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_gradient_color_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_gradient_color_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_enum_register_static(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.566, i32 0, i32 0), %struct._GEnumValue* getelementptr inbounds ([6 x %struct._GEnumValue], [6 x %struct._GEnumValue]* @gimp_gradient_color_get_type.values, i32 0, i32 0))
  store i64 %call, i64* @gimp_gradient_color_get_type.type, align 8
  %1 = load i64, i64* @gimp_gradient_color_get_type.type, align 8
  call void @gimp_type_set_translation_context(i64 %1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.567, i32 0, i32 0))
  %2 = load i64, i64* @gimp_gradient_color_get_type.type, align 8
  call void @gimp_enum_set_value_descriptions(i64 %2, %struct._GimpEnumDesc* getelementptr inbounds ([6 x %struct._GimpEnumDesc], [6 x %struct._GimpEnumDesc]* @gimp_gradient_color_get_type.descs, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i64, i64* @gimp_gradient_color_get_type.type, align 8
  ret i64 %3
}

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_gradient_segment_type_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_gradient_segment_type_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_enum_register_static(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.578, i32 0, i32 0), %struct._GEnumValue* getelementptr inbounds ([6 x %struct._GEnumValue], [6 x %struct._GEnumValue]* @gimp_gradient_segment_type_get_type.values, i32 0, i32 0))
  store i64 %call, i64* @gimp_gradient_segment_type_get_type.type, align 8
  %1 = load i64, i64* @gimp_gradient_segment_type_get_type.type, align 8
  call void @gimp_type_set_translation_context(i64 %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.579, i32 0, i32 0))
  %2 = load i64, i64* @gimp_gradient_segment_type_get_type.type, align 8
  call void @gimp_enum_set_value_descriptions(i64 %2, %struct._GimpEnumDesc* getelementptr inbounds ([6 x %struct._GimpEnumDesc], [6 x %struct._GimpEnumDesc]* @gimp_gradient_segment_type_get_type.descs, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i64, i64* @gimp_gradient_segment_type_get_type.type, align 8
  ret i64 %3
}

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_gradient_segment_color_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_gradient_segment_color_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_enum_register_static(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.586, i32 0, i32 0), %struct._GEnumValue* getelementptr inbounds ([4 x %struct._GEnumValue], [4 x %struct._GEnumValue]* @gimp_gradient_segment_color_get_type.values, i32 0, i32 0))
  store i64 %call, i64* @gimp_gradient_segment_color_get_type.type, align 8
  %1 = load i64, i64* @gimp_gradient_segment_color_get_type.type, align 8
  call void @gimp_type_set_translation_context(i64 %1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.587, i32 0, i32 0))
  %2 = load i64, i64* @gimp_gradient_segment_color_get_type.type, align 8
  call void @gimp_enum_set_value_descriptions(i64 %2, %struct._GimpEnumDesc* getelementptr inbounds ([4 x %struct._GimpEnumDesc], [4 x %struct._GimpEnumDesc]* @gimp_gradient_segment_color_get_type.descs, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i64, i64* @gimp_gradient_segment_color_get_type.type, align 8
  ret i64 %3
}

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_mask_apply_mode_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_mask_apply_mode_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_enum_register_static(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.592, i32 0, i32 0), %struct._GEnumValue* getelementptr inbounds ([3 x %struct._GEnumValue], [3 x %struct._GEnumValue]* @gimp_mask_apply_mode_get_type.values, i32 0, i32 0))
  store i64 %call, i64* @gimp_mask_apply_mode_get_type.type, align 8
  %1 = load i64, i64* @gimp_mask_apply_mode_get_type.type, align 8
  call void @gimp_type_set_translation_context(i64 %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.593, i32 0, i32 0))
  %2 = load i64, i64* @gimp_mask_apply_mode_get_type.type, align 8
  call void @gimp_enum_set_value_descriptions(i64 %2, %struct._GimpEnumDesc* getelementptr inbounds ([3 x %struct._GimpEnumDesc], [3 x %struct._GimpEnumDesc]* @gimp_mask_apply_mode_get_type.descs, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i64, i64* @gimp_mask_apply_mode_get_type.type, align 8
  ret i64 %3
}

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_merge_type_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_merge_type_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_enum_register_static(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.602, i32 0, i32 0), %struct._GEnumValue* getelementptr inbounds ([5 x %struct._GEnumValue], [5 x %struct._GEnumValue]* @gimp_merge_type_get_type.values, i32 0, i32 0))
  store i64 %call, i64* @gimp_merge_type_get_type.type, align 8
  %1 = load i64, i64* @gimp_merge_type_get_type.type, align 8
  call void @gimp_type_set_translation_context(i64 %1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.603, i32 0, i32 0))
  %2 = load i64, i64* @gimp_merge_type_get_type.type, align 8
  call void @gimp_enum_set_value_descriptions(i64 %2, %struct._GimpEnumDesc* getelementptr inbounds ([5 x %struct._GimpEnumDesc], [5 x %struct._GimpEnumDesc]* @gimp_merge_type_get_type.descs, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i64, i64* @gimp_merge_type_get_type.type, align 8
  ret i64 %3
}

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_select_criterion_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_select_criterion_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_enum_register_static(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.625, i32 0, i32 0), %struct._GEnumValue* getelementptr inbounds ([8 x %struct._GEnumValue], [8 x %struct._GEnumValue]* @gimp_select_criterion_get_type.values, i32 0, i32 0))
  store i64 %call, i64* @gimp_select_criterion_get_type.type, align 8
  %1 = load i64, i64* @gimp_select_criterion_get_type.type, align 8
  call void @gimp_type_set_translation_context(i64 %1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.626, i32 0, i32 0))
  %2 = load i64, i64* @gimp_select_criterion_get_type.type, align 8
  call void @gimp_enum_set_value_descriptions(i64 %2, %struct._GimpEnumDesc* getelementptr inbounds ([8 x %struct._GimpEnumDesc], [8 x %struct._GimpEnumDesc]* @gimp_select_criterion_get_type.descs, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i64, i64* @gimp_select_criterion_get_type.type, align 8
  ret i64 %3
}

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_message_severity_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_message_severity_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_enum_register_static(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.636, i32 0, i32 0), %struct._GEnumValue* getelementptr inbounds ([4 x %struct._GEnumValue], [4 x %struct._GEnumValue]* @gimp_message_severity_get_type.values, i32 0, i32 0))
  store i64 %call, i64* @gimp_message_severity_get_type.type, align 8
  %1 = load i64, i64* @gimp_message_severity_get_type.type, align 8
  call void @gimp_type_set_translation_context(i64 %1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.637, i32 0, i32 0))
  %2 = load i64, i64* @gimp_message_severity_get_type.type, align 8
  call void @gimp_enum_set_value_descriptions(i64 %2, %struct._GimpEnumDesc* getelementptr inbounds ([4 x %struct._GimpEnumDesc], [4 x %struct._GimpEnumDesc]* @gimp_message_severity_get_type.descs, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i64, i64* @gimp_message_severity_get_type.type, align 8
  ret i64 %3
}

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_color_profile_policy_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_color_profile_policy_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_enum_register_static(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.647, i32 0, i32 0), %struct._GEnumValue* getelementptr inbounds ([4 x %struct._GEnumValue], [4 x %struct._GEnumValue]* @gimp_color_profile_policy_get_type.values, i32 0, i32 0))
  store i64 %call, i64* @gimp_color_profile_policy_get_type.type, align 8
  %1 = load i64, i64* @gimp_color_profile_policy_get_type.type, align 8
  call void @gimp_type_set_translation_context(i64 %1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.648, i32 0, i32 0))
  %2 = load i64, i64* @gimp_color_profile_policy_get_type.type, align 8
  call void @gimp_enum_set_value_descriptions(i64 %2, %struct._GimpEnumDesc* getelementptr inbounds ([4 x %struct._GimpEnumDesc], [4 x %struct._GimpEnumDesc]* @gimp_color_profile_policy_get_type.descs, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i64, i64* @gimp_color_profile_policy_get_type.type, align 8
  ret i64 %3
}

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_dynamics_output_type_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_dynamics_output_type_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_enum_register_static(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.682, i32 0, i32 0), %struct._GEnumValue* getelementptr inbounds ([12 x %struct._GEnumValue], [12 x %struct._GEnumValue]* @gimp_dynamics_output_type_get_type.values, i32 0, i32 0))
  store i64 %call, i64* @gimp_dynamics_output_type_get_type.type, align 8
  %1 = load i64, i64* @gimp_dynamics_output_type_get_type.type, align 8
  call void @gimp_type_set_translation_context(i64 %1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.683, i32 0, i32 0))
  %2 = load i64, i64* @gimp_dynamics_output_type_get_type.type, align 8
  call void @gimp_enum_set_value_descriptions(i64 %2, %struct._GimpEnumDesc* getelementptr inbounds ([12 x %struct._GimpEnumDesc], [12 x %struct._GimpEnumDesc]* @gimp_dynamics_output_type_get_type.descs, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i64, i64* @gimp_dynamics_output_type_get_type.type, align 8
  ret i64 %3
}

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
