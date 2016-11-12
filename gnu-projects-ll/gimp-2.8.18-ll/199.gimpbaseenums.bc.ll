; ModuleID = './libgimpbase/gimpbaseenums.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GEnumValue = type { i32, i8*, i8* }
%struct._GimpEnumDesc = type { i32, i8*, i8* }

@gimp_add_mask_type_get_type.values = internal constant [8 x %struct._GEnumValue] [%struct._GEnumValue { i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0) }, %struct._GEnumValue { i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0) }, %struct._GEnumValue { i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0) }, %struct._GEnumValue { i32 3, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i32 0, i32 0) }, %struct._GEnumValue { i32 4, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i32 0, i32 0) }, %struct._GEnumValue { i32 5, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0) }, %struct._GEnumValue { i32 6, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0) }, %struct._GEnumValue zeroinitializer], align 16
@.str = private unnamed_addr constant [20 x i8] c"GIMP_ADD_WHITE_MASK\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"white-mask\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"GIMP_ADD_BLACK_MASK\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"black-mask\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"GIMP_ADD_ALPHA_MASK\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"alpha-mask\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"GIMP_ADD_ALPHA_TRANSFER_MASK\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"alpha-transfer-mask\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"GIMP_ADD_SELECTION_MASK\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"selection-mask\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"GIMP_ADD_COPY_MASK\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"copy-mask\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"GIMP_ADD_CHANNEL_MASK\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"channel-mask\00", align 1
@gimp_add_mask_type_get_type.descs = internal constant [8 x %struct._GimpEnumDesc] [%struct._GimpEnumDesc { i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.15, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 2, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 3, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.17, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 5, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.19, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc zeroinitializer], align 16
@.str.14 = private unnamed_addr constant [22 x i8] c"_White (full opacity)\00", align 1
@.str.15 = private unnamed_addr constant [27 x i8] c"_Black (full transparency)\00", align 1
@.str.16 = private unnamed_addr constant [23 x i8] c"Layer's _alpha channel\00", align 1
@.str.17 = private unnamed_addr constant [32 x i8] c"_Transfer layer's alpha channel\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"_Selection\00", align 1
@.str.19 = private unnamed_addr constant [25 x i8] c"_Grayscale copy of layer\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"C_hannel\00", align 1
@gimp_add_mask_type_get_type.type = internal global i64 0, align 8
@.str.21 = private unnamed_addr constant [16 x i8] c"GimpAddMaskType\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"gimp20-libgimp\00", align 1
@.str.23 = private unnamed_addr constant [14 x i8] c"add-mask-type\00", align 1
@gimp_blend_mode_get_type.values = internal constant [5 x %struct._GEnumValue] [%struct._GEnumValue { i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.25, i32 0, i32 0) }, %struct._GEnumValue { i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.27, i32 0, i32 0) }, %struct._GEnumValue { i32 2, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.29, i32 0, i32 0) }, %struct._GEnumValue { i32 3, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.31, i32 0, i32 0) }, %struct._GEnumValue zeroinitializer], align 16
@.str.24 = private unnamed_addr constant [20 x i8] c"GIMP_FG_BG_RGB_MODE\00", align 1
@.str.25 = private unnamed_addr constant [15 x i8] c"fg-bg-rgb-mode\00", align 1
@.str.26 = private unnamed_addr constant [20 x i8] c"GIMP_FG_BG_HSV_MODE\00", align 1
@.str.27 = private unnamed_addr constant [15 x i8] c"fg-bg-hsv-mode\00", align 1
@.str.28 = private unnamed_addr constant [25 x i8] c"GIMP_FG_TRANSPARENT_MODE\00", align 1
@.str.29 = private unnamed_addr constant [20 x i8] c"fg-transparent-mode\00", align 1
@.str.30 = private unnamed_addr constant [17 x i8] c"GIMP_CUSTOM_MODE\00", align 1
@.str.31 = private unnamed_addr constant [12 x i8] c"custom-mode\00", align 1
@gimp_blend_mode_get_type.descs = internal constant [5 x %struct._GimpEnumDesc] [%struct._GimpEnumDesc { i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.32, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.33, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 2, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.34, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 3, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.35, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc zeroinitializer], align 16
@.str.32 = private unnamed_addr constant [15 x i8] c"FG to BG (RGB)\00", align 1
@.str.33 = private unnamed_addr constant [15 x i8] c"FG to BG (HSV)\00", align 1
@.str.34 = private unnamed_addr constant [18 x i8] c"FG to transparent\00", align 1
@.str.35 = private unnamed_addr constant [16 x i8] c"Custom gradient\00", align 1
@gimp_blend_mode_get_type.type = internal global i64 0, align 8
@.str.36 = private unnamed_addr constant [14 x i8] c"GimpBlendMode\00", align 1
@.str.37 = private unnamed_addr constant [11 x i8] c"blend-mode\00", align 1
@gimp_bucket_fill_mode_get_type.values = internal constant [4 x %struct._GEnumValue] [%struct._GEnumValue { i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.39, i32 0, i32 0) }, %struct._GEnumValue { i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.41, i32 0, i32 0) }, %struct._GEnumValue { i32 2, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.43, i32 0, i32 0) }, %struct._GEnumValue zeroinitializer], align 16
@.str.38 = private unnamed_addr constant [20 x i8] c"GIMP_FG_BUCKET_FILL\00", align 1
@.str.39 = private unnamed_addr constant [15 x i8] c"fg-bucket-fill\00", align 1
@.str.40 = private unnamed_addr constant [20 x i8] c"GIMP_BG_BUCKET_FILL\00", align 1
@.str.41 = private unnamed_addr constant [15 x i8] c"bg-bucket-fill\00", align 1
@.str.42 = private unnamed_addr constant [25 x i8] c"GIMP_PATTERN_BUCKET_FILL\00", align 1
@.str.43 = private unnamed_addr constant [20 x i8] c"pattern-bucket-fill\00", align 1
@gimp_bucket_fill_mode_get_type.descs = internal constant [4 x %struct._GimpEnumDesc] [%struct._GimpEnumDesc { i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.44, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.45, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.46, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc zeroinitializer], align 16
@.str.44 = private unnamed_addr constant [14 x i8] c"FG color fill\00", align 1
@.str.45 = private unnamed_addr constant [14 x i8] c"BG color fill\00", align 1
@.str.46 = private unnamed_addr constant [13 x i8] c"Pattern fill\00", align 1
@gimp_bucket_fill_mode_get_type.type = internal global i64 0, align 8
@.str.47 = private unnamed_addr constant [19 x i8] c"GimpBucketFillMode\00", align 1
@.str.48 = private unnamed_addr constant [17 x i8] c"bucket-fill-mode\00", align 1
@gimp_channel_ops_get_type.values = internal constant [5 x %struct._GEnumValue] [%struct._GEnumValue { i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.50, i32 0, i32 0) }, %struct._GEnumValue { i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.52, i32 0, i32 0) }, %struct._GEnumValue { i32 2, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.54, i32 0, i32 0) }, %struct._GEnumValue { i32 3, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.56, i32 0, i32 0) }, %struct._GEnumValue zeroinitializer], align 16
@.str.49 = private unnamed_addr constant [20 x i8] c"GIMP_CHANNEL_OP_ADD\00", align 1
@.str.50 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@.str.51 = private unnamed_addr constant [25 x i8] c"GIMP_CHANNEL_OP_SUBTRACT\00", align 1
@.str.52 = private unnamed_addr constant [9 x i8] c"subtract\00", align 1
@.str.53 = private unnamed_addr constant [24 x i8] c"GIMP_CHANNEL_OP_REPLACE\00", align 1
@.str.54 = private unnamed_addr constant [8 x i8] c"replace\00", align 1
@.str.55 = private unnamed_addr constant [26 x i8] c"GIMP_CHANNEL_OP_INTERSECT\00", align 1
@.str.56 = private unnamed_addr constant [10 x i8] c"intersect\00", align 1
@gimp_channel_ops_get_type.descs = internal constant [5 x %struct._GimpEnumDesc] [%struct._GimpEnumDesc { i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.57, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.58, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 2, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.59, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 3, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.60, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc zeroinitializer], align 16
@.str.57 = private unnamed_addr constant [29 x i8] c"Add to the current selection\00", align 1
@.str.58 = private unnamed_addr constant [36 x i8] c"Subtract from the current selection\00", align 1
@.str.59 = private unnamed_addr constant [30 x i8] c"Replace the current selection\00", align 1
@.str.60 = private unnamed_addr constant [37 x i8] c"Intersect with the current selection\00", align 1
@gimp_channel_ops_get_type.type = internal global i64 0, align 8
@.str.61 = private unnamed_addr constant [15 x i8] c"GimpChannelOps\00", align 1
@.str.62 = private unnamed_addr constant [12 x i8] c"channel-ops\00", align 1
@gimp_channel_type_get_type.values = internal constant [7 x %struct._GEnumValue] [%struct._GEnumValue { i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.64, i32 0, i32 0) }, %struct._GEnumValue { i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.66, i32 0, i32 0) }, %struct._GEnumValue { i32 2, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.68, i32 0, i32 0) }, %struct._GEnumValue { i32 3, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.70, i32 0, i32 0) }, %struct._GEnumValue { i32 4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.72, i32 0, i32 0) }, %struct._GEnumValue { i32 5, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.73, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.74, i32 0, i32 0) }, %struct._GEnumValue zeroinitializer], align 16
@.str.63 = private unnamed_addr constant [17 x i8] c"GIMP_RED_CHANNEL\00", align 1
@.str.64 = private unnamed_addr constant [12 x i8] c"red-channel\00", align 1
@.str.65 = private unnamed_addr constant [19 x i8] c"GIMP_GREEN_CHANNEL\00", align 1
@.str.66 = private unnamed_addr constant [14 x i8] c"green-channel\00", align 1
@.str.67 = private unnamed_addr constant [18 x i8] c"GIMP_BLUE_CHANNEL\00", align 1
@.str.68 = private unnamed_addr constant [13 x i8] c"blue-channel\00", align 1
@.str.69 = private unnamed_addr constant [18 x i8] c"GIMP_GRAY_CHANNEL\00", align 1
@.str.70 = private unnamed_addr constant [13 x i8] c"gray-channel\00", align 1
@.str.71 = private unnamed_addr constant [21 x i8] c"GIMP_INDEXED_CHANNEL\00", align 1
@.str.72 = private unnamed_addr constant [16 x i8] c"indexed-channel\00", align 1
@.str.73 = private unnamed_addr constant [19 x i8] c"GIMP_ALPHA_CHANNEL\00", align 1
@.str.74 = private unnamed_addr constant [14 x i8] c"alpha-channel\00", align 1
@gimp_channel_type_get_type.descs = internal constant [7 x %struct._GimpEnumDesc] [%struct._GimpEnumDesc { i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.75, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.76, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.77, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.78, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.79, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.80, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc zeroinitializer], align 16
@.str.75 = private unnamed_addr constant [4 x i8] c"Red\00", align 1
@.str.76 = private unnamed_addr constant [6 x i8] c"Green\00", align 1
@.str.77 = private unnamed_addr constant [5 x i8] c"Blue\00", align 1
@.str.78 = private unnamed_addr constant [5 x i8] c"Gray\00", align 1
@.str.79 = private unnamed_addr constant [8 x i8] c"Indexed\00", align 1
@.str.80 = private unnamed_addr constant [6 x i8] c"Alpha\00", align 1
@gimp_channel_type_get_type.type = internal global i64 0, align 8
@.str.81 = private unnamed_addr constant [16 x i8] c"GimpChannelType\00", align 1
@.str.82 = private unnamed_addr constant [13 x i8] c"channel-type\00", align 1
@gimp_check_size_get_type.values = internal constant [4 x %struct._GEnumValue] [%struct._GEnumValue { i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.83, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.84, i32 0, i32 0) }, %struct._GEnumValue { i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.85, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.86, i32 0, i32 0) }, %struct._GEnumValue { i32 2, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.87, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.88, i32 0, i32 0) }, %struct._GEnumValue zeroinitializer], align 16
@.str.83 = private unnamed_addr constant [29 x i8] c"GIMP_CHECK_SIZE_SMALL_CHECKS\00", align 1
@.str.84 = private unnamed_addr constant [13 x i8] c"small-checks\00", align 1
@.str.85 = private unnamed_addr constant [30 x i8] c"GIMP_CHECK_SIZE_MEDIUM_CHECKS\00", align 1
@.str.86 = private unnamed_addr constant [14 x i8] c"medium-checks\00", align 1
@.str.87 = private unnamed_addr constant [29 x i8] c"GIMP_CHECK_SIZE_LARGE_CHECKS\00", align 1
@.str.88 = private unnamed_addr constant [13 x i8] c"large-checks\00", align 1
@gimp_check_size_get_type.descs = internal constant [4 x %struct._GimpEnumDesc] [%struct._GimpEnumDesc { i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.89, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.90, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.91, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc zeroinitializer], align 16
@.str.89 = private unnamed_addr constant [6 x i8] c"Small\00", align 1
@.str.90 = private unnamed_addr constant [7 x i8] c"Medium\00", align 1
@.str.91 = private unnamed_addr constant [6 x i8] c"Large\00", align 1
@gimp_check_size_get_type.type = internal global i64 0, align 8
@.str.92 = private unnamed_addr constant [14 x i8] c"GimpCheckSize\00", align 1
@.str.93 = private unnamed_addr constant [11 x i8] c"check-size\00", align 1
@gimp_check_type_get_type.values = internal constant [7 x %struct._GEnumValue] [%struct._GEnumValue { i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.94, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.95, i32 0, i32 0) }, %struct._GEnumValue { i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.96, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.97, i32 0, i32 0) }, %struct._GEnumValue { i32 2, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.98, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.99, i32 0, i32 0) }, %struct._GEnumValue { i32 3, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.100, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.101, i32 0, i32 0) }, %struct._GEnumValue { i32 4, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.102, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0) }, %struct._GEnumValue { i32 5, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.104, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0) }, %struct._GEnumValue zeroinitializer], align 16
@.str.94 = private unnamed_addr constant [29 x i8] c"GIMP_CHECK_TYPE_LIGHT_CHECKS\00", align 1
@.str.95 = private unnamed_addr constant [13 x i8] c"light-checks\00", align 1
@.str.96 = private unnamed_addr constant [28 x i8] c"GIMP_CHECK_TYPE_GRAY_CHECKS\00", align 1
@.str.97 = private unnamed_addr constant [12 x i8] c"gray-checks\00", align 1
@.str.98 = private unnamed_addr constant [28 x i8] c"GIMP_CHECK_TYPE_DARK_CHECKS\00", align 1
@.str.99 = private unnamed_addr constant [12 x i8] c"dark-checks\00", align 1
@.str.100 = private unnamed_addr constant [27 x i8] c"GIMP_CHECK_TYPE_WHITE_ONLY\00", align 1
@.str.101 = private unnamed_addr constant [11 x i8] c"white-only\00", align 1
@.str.102 = private unnamed_addr constant [26 x i8] c"GIMP_CHECK_TYPE_GRAY_ONLY\00", align 1
@.str.103 = private unnamed_addr constant [10 x i8] c"gray-only\00", align 1
@.str.104 = private unnamed_addr constant [27 x i8] c"GIMP_CHECK_TYPE_BLACK_ONLY\00", align 1
@.str.105 = private unnamed_addr constant [11 x i8] c"black-only\00", align 1
@gimp_check_type_get_type.descs = internal constant [7 x %struct._GimpEnumDesc] [%struct._GimpEnumDesc { i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.106, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.107, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.108, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 3, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.109, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.110, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 5, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.111, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc zeroinitializer], align 16
@.str.106 = private unnamed_addr constant [13 x i8] c"Light checks\00", align 1
@.str.107 = private unnamed_addr constant [16 x i8] c"Mid-tone checks\00", align 1
@.str.108 = private unnamed_addr constant [12 x i8] c"Dark checks\00", align 1
@.str.109 = private unnamed_addr constant [11 x i8] c"White only\00", align 1
@.str.110 = private unnamed_addr constant [10 x i8] c"Gray only\00", align 1
@.str.111 = private unnamed_addr constant [11 x i8] c"Black only\00", align 1
@gimp_check_type_get_type.type = internal global i64 0, align 8
@.str.112 = private unnamed_addr constant [14 x i8] c"GimpCheckType\00", align 1
@.str.113 = private unnamed_addr constant [11 x i8] c"check-type\00", align 1
@gimp_clone_type_get_type.values = internal constant [3 x %struct._GEnumValue] [%struct._GEnumValue { i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.114, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.115, i32 0, i32 0) }, %struct._GEnumValue { i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.116, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.117, i32 0, i32 0) }, %struct._GEnumValue zeroinitializer], align 16
@.str.114 = private unnamed_addr constant [17 x i8] c"GIMP_IMAGE_CLONE\00", align 1
@.str.115 = private unnamed_addr constant [12 x i8] c"image-clone\00", align 1
@.str.116 = private unnamed_addr constant [19 x i8] c"GIMP_PATTERN_CLONE\00", align 1
@.str.117 = private unnamed_addr constant [14 x i8] c"pattern-clone\00", align 1
@gimp_clone_type_get_type.descs = internal constant [3 x %struct._GimpEnumDesc] [%struct._GimpEnumDesc { i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.118, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.119, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc zeroinitializer], align 16
@.str.118 = private unnamed_addr constant [6 x i8] c"Image\00", align 1
@.str.119 = private unnamed_addr constant [8 x i8] c"Pattern\00", align 1
@gimp_clone_type_get_type.type = internal global i64 0, align 8
@.str.120 = private unnamed_addr constant [14 x i8] c"GimpCloneType\00", align 1
@.str.121 = private unnamed_addr constant [11 x i8] c"clone-type\00", align 1
@gimp_desaturate_mode_get_type.values = internal constant [4 x %struct._GEnumValue] [%struct._GEnumValue { i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.122, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.123, i32 0, i32 0) }, %struct._GEnumValue { i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.124, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.125, i32 0, i32 0) }, %struct._GEnumValue { i32 2, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.126, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.127, i32 0, i32 0) }, %struct._GEnumValue zeroinitializer], align 16
@.str.122 = private unnamed_addr constant [26 x i8] c"GIMP_DESATURATE_LIGHTNESS\00", align 1
@.str.123 = private unnamed_addr constant [10 x i8] c"lightness\00", align 1
@.str.124 = private unnamed_addr constant [27 x i8] c"GIMP_DESATURATE_LUMINOSITY\00", align 1
@.str.125 = private unnamed_addr constant [11 x i8] c"luminosity\00", align 1
@.str.126 = private unnamed_addr constant [24 x i8] c"GIMP_DESATURATE_AVERAGE\00", align 1
@.str.127 = private unnamed_addr constant [8 x i8] c"average\00", align 1
@gimp_desaturate_mode_get_type.descs = internal constant [4 x %struct._GimpEnumDesc] [%struct._GimpEnumDesc { i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.128, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.129, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.130, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc zeroinitializer], align 16
@.str.128 = private unnamed_addr constant [10 x i8] c"Lightness\00", align 1
@.str.129 = private unnamed_addr constant [11 x i8] c"Luminosity\00", align 1
@.str.130 = private unnamed_addr constant [8 x i8] c"Average\00", align 1
@gimp_desaturate_mode_get_type.type = internal global i64 0, align 8
@.str.131 = private unnamed_addr constant [19 x i8] c"GimpDesaturateMode\00", align 1
@.str.132 = private unnamed_addr constant [16 x i8] c"desaturate-mode\00", align 1
@gimp_dodge_burn_type_get_type.values = internal constant [3 x %struct._GEnumValue] [%struct._GEnumValue { i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.133, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.134, i32 0, i32 0) }, %struct._GEnumValue { i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.135, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.136, i32 0, i32 0) }, %struct._GEnumValue zeroinitializer], align 16
@.str.133 = private unnamed_addr constant [11 x i8] c"GIMP_DODGE\00", align 1
@.str.134 = private unnamed_addr constant [6 x i8] c"dodge\00", align 1
@.str.135 = private unnamed_addr constant [10 x i8] c"GIMP_BURN\00", align 1
@.str.136 = private unnamed_addr constant [5 x i8] c"burn\00", align 1
@gimp_dodge_burn_type_get_type.descs = internal constant [3 x %struct._GimpEnumDesc] [%struct._GimpEnumDesc { i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.137, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.138, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc zeroinitializer], align 16
@.str.137 = private unnamed_addr constant [6 x i8] c"Dodge\00", align 1
@.str.138 = private unnamed_addr constant [5 x i8] c"Burn\00", align 1
@gimp_dodge_burn_type_get_type.type = internal global i64 0, align 8
@.str.139 = private unnamed_addr constant [18 x i8] c"GimpDodgeBurnType\00", align 1
@.str.140 = private unnamed_addr constant [16 x i8] c"dodge-burn-type\00", align 1
@gimp_foreground_extract_mode_get_type.values = internal constant [2 x %struct._GEnumValue] [%struct._GEnumValue { i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.141, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.142, i32 0, i32 0) }, %struct._GEnumValue zeroinitializer], align 16
@.str.141 = private unnamed_addr constant [29 x i8] c"GIMP_FOREGROUND_EXTRACT_SIOX\00", align 1
@.str.142 = private unnamed_addr constant [5 x i8] c"siox\00", align 1
@gimp_foreground_extract_mode_get_type.descs = internal constant [2 x %struct._GimpEnumDesc] [%struct._GimpEnumDesc { i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.141, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc zeroinitializer], align 16
@gimp_foreground_extract_mode_get_type.type = internal global i64 0, align 8
@.str.143 = private unnamed_addr constant [26 x i8] c"GimpForegroundExtractMode\00", align 1
@.str.144 = private unnamed_addr constant [24 x i8] c"foreground-extract-mode\00", align 1
@gimp_gradient_type_get_type.values = internal constant [12 x %struct._GEnumValue] [%struct._GEnumValue { i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.145, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.146, i32 0, i32 0) }, %struct._GEnumValue { i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.147, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.148, i32 0, i32 0) }, %struct._GEnumValue { i32 2, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.149, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.150, i32 0, i32 0) }, %struct._GEnumValue { i32 3, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.151, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.152, i32 0, i32 0) }, %struct._GEnumValue { i32 4, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.153, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.154, i32 0, i32 0) }, %struct._GEnumValue { i32 5, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.155, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.156, i32 0, i32 0) }, %struct._GEnumValue { i32 6, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.157, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.158, i32 0, i32 0) }, %struct._GEnumValue { i32 7, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.159, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.160, i32 0, i32 0) }, %struct._GEnumValue { i32 8, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.161, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.162, i32 0, i32 0) }, %struct._GEnumValue { i32 9, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.163, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.164, i32 0, i32 0) }, %struct._GEnumValue { i32 10, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.165, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.166, i32 0, i32 0) }, %struct._GEnumValue zeroinitializer], align 16
@.str.145 = private unnamed_addr constant [21 x i8] c"GIMP_GRADIENT_LINEAR\00", align 1
@.str.146 = private unnamed_addr constant [7 x i8] c"linear\00", align 1
@.str.147 = private unnamed_addr constant [23 x i8] c"GIMP_GRADIENT_BILINEAR\00", align 1
@.str.148 = private unnamed_addr constant [9 x i8] c"bilinear\00", align 1
@.str.149 = private unnamed_addr constant [21 x i8] c"GIMP_GRADIENT_RADIAL\00", align 1
@.str.150 = private unnamed_addr constant [7 x i8] c"radial\00", align 1
@.str.151 = private unnamed_addr constant [21 x i8] c"GIMP_GRADIENT_SQUARE\00", align 1
@.str.152 = private unnamed_addr constant [7 x i8] c"square\00", align 1
@.str.153 = private unnamed_addr constant [32 x i8] c"GIMP_GRADIENT_CONICAL_SYMMETRIC\00", align 1
@.str.154 = private unnamed_addr constant [18 x i8] c"conical-symmetric\00", align 1
@.str.155 = private unnamed_addr constant [33 x i8] c"GIMP_GRADIENT_CONICAL_ASYMMETRIC\00", align 1
@.str.156 = private unnamed_addr constant [19 x i8] c"conical-asymmetric\00", align 1
@.str.157 = private unnamed_addr constant [33 x i8] c"GIMP_GRADIENT_SHAPEBURST_ANGULAR\00", align 1
@.str.158 = private unnamed_addr constant [19 x i8] c"shapeburst-angular\00", align 1
@.str.159 = private unnamed_addr constant [35 x i8] c"GIMP_GRADIENT_SHAPEBURST_SPHERICAL\00", align 1
@.str.160 = private unnamed_addr constant [21 x i8] c"shapeburst-spherical\00", align 1
@.str.161 = private unnamed_addr constant [33 x i8] c"GIMP_GRADIENT_SHAPEBURST_DIMPLED\00", align 1
@.str.162 = private unnamed_addr constant [19 x i8] c"shapeburst-dimpled\00", align 1
@.str.163 = private unnamed_addr constant [31 x i8] c"GIMP_GRADIENT_SPIRAL_CLOCKWISE\00", align 1
@.str.164 = private unnamed_addr constant [17 x i8] c"spiral-clockwise\00", align 1
@.str.165 = private unnamed_addr constant [35 x i8] c"GIMP_GRADIENT_SPIRAL_ANTICLOCKWISE\00", align 1
@.str.166 = private unnamed_addr constant [21 x i8] c"spiral-anticlockwise\00", align 1
@gimp_gradient_type_get_type.descs = internal constant [12 x %struct._GimpEnumDesc] [%struct._GimpEnumDesc { i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.167, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.168, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.169, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.170, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 4, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.171, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 5, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.172, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 6, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.173, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 7, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.174, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.175, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 9, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.176, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 10, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.177, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc zeroinitializer], align 16
@.str.167 = private unnamed_addr constant [7 x i8] c"Linear\00", align 1
@.str.168 = private unnamed_addr constant [10 x i8] c"Bi-linear\00", align 1
@.str.169 = private unnamed_addr constant [7 x i8] c"Radial\00", align 1
@.str.170 = private unnamed_addr constant [7 x i8] c"Square\00", align 1
@.str.171 = private unnamed_addr constant [14 x i8] c"Conical (sym)\00", align 1
@.str.172 = private unnamed_addr constant [15 x i8] c"Conical (asym)\00", align 1
@.str.173 = private unnamed_addr constant [17 x i8] c"Shaped (angular)\00", align 1
@.str.174 = private unnamed_addr constant [19 x i8] c"Shaped (spherical)\00", align 1
@.str.175 = private unnamed_addr constant [17 x i8] c"Shaped (dimpled)\00", align 1
@.str.176 = private unnamed_addr constant [12 x i8] c"Spiral (cw)\00", align 1
@.str.177 = private unnamed_addr constant [13 x i8] c"Spiral (ccw)\00", align 1
@gimp_gradient_type_get_type.type = internal global i64 0, align 8
@.str.178 = private unnamed_addr constant [17 x i8] c"GimpGradientType\00", align 1
@.str.179 = private unnamed_addr constant [14 x i8] c"gradient-type\00", align 1
@gimp_grid_style_get_type.values = internal constant [6 x %struct._GEnumValue] [%struct._GEnumValue { i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.180, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.181, i32 0, i32 0) }, %struct._GEnumValue { i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.182, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.183, i32 0, i32 0) }, %struct._GEnumValue { i32 2, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.184, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.185, i32 0, i32 0) }, %struct._GEnumValue { i32 3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.186, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.187, i32 0, i32 0) }, %struct._GEnumValue { i32 4, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.188, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.189, i32 0, i32 0) }, %struct._GEnumValue zeroinitializer], align 16
@.str.180 = private unnamed_addr constant [15 x i8] c"GIMP_GRID_DOTS\00", align 1
@.str.181 = private unnamed_addr constant [5 x i8] c"dots\00", align 1
@.str.182 = private unnamed_addr constant [24 x i8] c"GIMP_GRID_INTERSECTIONS\00", align 1
@.str.183 = private unnamed_addr constant [14 x i8] c"intersections\00", align 1
@.str.184 = private unnamed_addr constant [22 x i8] c"GIMP_GRID_ON_OFF_DASH\00", align 1
@.str.185 = private unnamed_addr constant [12 x i8] c"on-off-dash\00", align 1
@.str.186 = private unnamed_addr constant [22 x i8] c"GIMP_GRID_DOUBLE_DASH\00", align 1
@.str.187 = private unnamed_addr constant [12 x i8] c"double-dash\00", align 1
@.str.188 = private unnamed_addr constant [16 x i8] c"GIMP_GRID_SOLID\00", align 1
@.str.189 = private unnamed_addr constant [6 x i8] c"solid\00", align 1
@gimp_grid_style_get_type.descs = internal constant [6 x %struct._GimpEnumDesc] [%struct._GimpEnumDesc { i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.190, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.191, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.192, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.193, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.194, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc zeroinitializer], align 16
@.str.190 = private unnamed_addr constant [21 x i8] c"Intersections (dots)\00", align 1
@.str.191 = private unnamed_addr constant [27 x i8] c"Intersections (crosshairs)\00", align 1
@.str.192 = private unnamed_addr constant [7 x i8] c"Dashed\00", align 1
@.str.193 = private unnamed_addr constant [14 x i8] c"Double dashed\00", align 1
@.str.194 = private unnamed_addr constant [6 x i8] c"Solid\00", align 1
@gimp_grid_style_get_type.type = internal global i64 0, align 8
@.str.195 = private unnamed_addr constant [14 x i8] c"GimpGridStyle\00", align 1
@.str.196 = private unnamed_addr constant [11 x i8] c"grid-style\00", align 1
@gimp_icon_type_get_type.values = internal constant [4 x %struct._GEnumValue] [%struct._GEnumValue { i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.197, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.198, i32 0, i32 0) }, %struct._GEnumValue { i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.199, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.200, i32 0, i32 0) }, %struct._GEnumValue { i32 2, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.201, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.202, i32 0, i32 0) }, %struct._GEnumValue zeroinitializer], align 16
@.str.197 = private unnamed_addr constant [24 x i8] c"GIMP_ICON_TYPE_STOCK_ID\00", align 1
@.str.198 = private unnamed_addr constant [9 x i8] c"stock-id\00", align 1
@.str.199 = private unnamed_addr constant [29 x i8] c"GIMP_ICON_TYPE_INLINE_PIXBUF\00", align 1
@.str.200 = private unnamed_addr constant [14 x i8] c"inline-pixbuf\00", align 1
@.str.201 = private unnamed_addr constant [26 x i8] c"GIMP_ICON_TYPE_IMAGE_FILE\00", align 1
@.str.202 = private unnamed_addr constant [11 x i8] c"image-file\00", align 1
@gimp_icon_type_get_type.descs = internal constant [4 x %struct._GimpEnumDesc] [%struct._GimpEnumDesc { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.203, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.204, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.205, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc zeroinitializer], align 16
@.str.203 = private unnamed_addr constant [9 x i8] c"Stock ID\00", align 1
@.str.204 = private unnamed_addr constant [14 x i8] c"Inline pixbuf\00", align 1
@.str.205 = private unnamed_addr constant [11 x i8] c"Image file\00", align 1
@gimp_icon_type_get_type.type = internal global i64 0, align 8
@.str.206 = private unnamed_addr constant [13 x i8] c"GimpIconType\00", align 1
@.str.207 = private unnamed_addr constant [10 x i8] c"icon-type\00", align 1
@gimp_image_base_type_get_type.values = internal constant [4 x %struct._GEnumValue] [%struct._GEnumValue { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.208, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.209, i32 0, i32 0) }, %struct._GEnumValue { i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.210, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.211, i32 0, i32 0) }, %struct._GEnumValue { i32 2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.212, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.213, i32 0, i32 0) }, %struct._GEnumValue zeroinitializer], align 16
@.str.208 = private unnamed_addr constant [9 x i8] c"GIMP_RGB\00", align 1
@.str.209 = private unnamed_addr constant [4 x i8] c"rgb\00", align 1
@.str.210 = private unnamed_addr constant [10 x i8] c"GIMP_GRAY\00", align 1
@.str.211 = private unnamed_addr constant [5 x i8] c"gray\00", align 1
@.str.212 = private unnamed_addr constant [13 x i8] c"GIMP_INDEXED\00", align 1
@.str.213 = private unnamed_addr constant [8 x i8] c"indexed\00", align 1
@gimp_image_base_type_get_type.descs = internal constant [4 x %struct._GimpEnumDesc] [%struct._GimpEnumDesc { i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.214, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.215, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 2, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.216, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc zeroinitializer], align 16
@.str.214 = private unnamed_addr constant [10 x i8] c"RGB color\00", align 1
@.str.215 = private unnamed_addr constant [10 x i8] c"Grayscale\00", align 1
@.str.216 = private unnamed_addr constant [14 x i8] c"Indexed color\00", align 1
@gimp_image_base_type_get_type.type = internal global i64 0, align 8
@.str.217 = private unnamed_addr constant [18 x i8] c"GimpImageBaseType\00", align 1
@.str.218 = private unnamed_addr constant [16 x i8] c"image-base-type\00", align 1
@gimp_image_type_get_type.values = internal constant [7 x %struct._GEnumValue] [%struct._GEnumValue { i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.219, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.220, i32 0, i32 0) }, %struct._GEnumValue { i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.221, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.222, i32 0, i32 0) }, %struct._GEnumValue { i32 2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.223, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.224, i32 0, i32 0) }, %struct._GEnumValue { i32 3, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.225, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.226, i32 0, i32 0) }, %struct._GEnumValue { i32 4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.227, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.228, i32 0, i32 0) }, %struct._GEnumValue { i32 5, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.229, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.230, i32 0, i32 0) }, %struct._GEnumValue zeroinitializer], align 16
@.str.219 = private unnamed_addr constant [15 x i8] c"GIMP_RGB_IMAGE\00", align 1
@.str.220 = private unnamed_addr constant [10 x i8] c"rgb-image\00", align 1
@.str.221 = private unnamed_addr constant [16 x i8] c"GIMP_RGBA_IMAGE\00", align 1
@.str.222 = private unnamed_addr constant [11 x i8] c"rgba-image\00", align 1
@.str.223 = private unnamed_addr constant [16 x i8] c"GIMP_GRAY_IMAGE\00", align 1
@.str.224 = private unnamed_addr constant [11 x i8] c"gray-image\00", align 1
@.str.225 = private unnamed_addr constant [17 x i8] c"GIMP_GRAYA_IMAGE\00", align 1
@.str.226 = private unnamed_addr constant [12 x i8] c"graya-image\00", align 1
@.str.227 = private unnamed_addr constant [19 x i8] c"GIMP_INDEXED_IMAGE\00", align 1
@.str.228 = private unnamed_addr constant [14 x i8] c"indexed-image\00", align 1
@.str.229 = private unnamed_addr constant [20 x i8] c"GIMP_INDEXEDA_IMAGE\00", align 1
@.str.230 = private unnamed_addr constant [15 x i8] c"indexeda-image\00", align 1
@gimp_image_type_get_type.descs = internal constant [7 x %struct._GimpEnumDesc] [%struct._GimpEnumDesc { i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.231, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.232, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.215, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 3, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.233, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.79, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.234, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc zeroinitializer], align 16
@.str.231 = private unnamed_addr constant [4 x i8] c"RGB\00", align 1
@.str.232 = private unnamed_addr constant [10 x i8] c"RGB-alpha\00", align 1
@.str.233 = private unnamed_addr constant [16 x i8] c"Grayscale-alpha\00", align 1
@.str.234 = private unnamed_addr constant [14 x i8] c"Indexed-alpha\00", align 1
@gimp_image_type_get_type.type = internal global i64 0, align 8
@.str.235 = private unnamed_addr constant [14 x i8] c"GimpImageType\00", align 1
@.str.236 = private unnamed_addr constant [11 x i8] c"image-type\00", align 1
@gimp_interpolation_type_get_type.values = internal constant [5 x %struct._GEnumValue] [%struct._GEnumValue { i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.237, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.238, i32 0, i32 0) }, %struct._GEnumValue { i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.239, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.146, i32 0, i32 0) }, %struct._GEnumValue { i32 2, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.240, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.241, i32 0, i32 0) }, %struct._GEnumValue { i32 3, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.242, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.243, i32 0, i32 0) }, %struct._GEnumValue zeroinitializer], align 16
@.str.237 = private unnamed_addr constant [24 x i8] c"GIMP_INTERPOLATION_NONE\00", align 1
@.str.238 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.239 = private unnamed_addr constant [26 x i8] c"GIMP_INTERPOLATION_LINEAR\00", align 1
@.str.240 = private unnamed_addr constant [25 x i8] c"GIMP_INTERPOLATION_CUBIC\00", align 1
@.str.241 = private unnamed_addr constant [6 x i8] c"cubic\00", align 1
@.str.242 = private unnamed_addr constant [27 x i8] c"GIMP_INTERPOLATION_LANCZOS\00", align 1
@.str.243 = private unnamed_addr constant [8 x i8] c"lanczos\00", align 1
@gimp_interpolation_type_get_type.descs = internal constant [5 x %struct._GimpEnumDesc] [%struct._GimpEnumDesc { i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.244, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.167, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.245, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 3, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.246, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc zeroinitializer], align 16
@.str.244 = private unnamed_addr constant [5 x i8] c"None\00", align 1
@.str.245 = private unnamed_addr constant [6 x i8] c"Cubic\00", align 1
@.str.246 = private unnamed_addr constant [16 x i8] c"Sinc (Lanczos3)\00", align 1
@gimp_interpolation_type_get_type.type = internal global i64 0, align 8
@.str.247 = private unnamed_addr constant [22 x i8] c"GimpInterpolationType\00", align 1
@.str.248 = private unnamed_addr constant [19 x i8] c"interpolation-type\00", align 1
@gimp_paint_application_mode_get_type.values = internal constant [3 x %struct._GEnumValue] [%struct._GEnumValue { i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.249, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.250, i32 0, i32 0) }, %struct._GEnumValue { i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.251, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.252, i32 0, i32 0) }, %struct._GEnumValue zeroinitializer], align 16
@.str.249 = private unnamed_addr constant [20 x i8] c"GIMP_PAINT_CONSTANT\00", align 1
@.str.250 = private unnamed_addr constant [9 x i8] c"constant\00", align 1
@.str.251 = private unnamed_addr constant [23 x i8] c"GIMP_PAINT_INCREMENTAL\00", align 1
@.str.252 = private unnamed_addr constant [12 x i8] c"incremental\00", align 1
@gimp_paint_application_mode_get_type.descs = internal constant [3 x %struct._GimpEnumDesc] [%struct._GimpEnumDesc { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.253, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.254, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc zeroinitializer], align 16
@.str.253 = private unnamed_addr constant [9 x i8] c"Constant\00", align 1
@.str.254 = private unnamed_addr constant [12 x i8] c"Incremental\00", align 1
@gimp_paint_application_mode_get_type.type = internal global i64 0, align 8
@.str.255 = private unnamed_addr constant [25 x i8] c"GimpPaintApplicationMode\00", align 1
@.str.256 = private unnamed_addr constant [23 x i8] c"paint-application-mode\00", align 1
@gimp_repeat_mode_get_type.values = internal constant [4 x %struct._GEnumValue] [%struct._GEnumValue { i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.257, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.238, i32 0, i32 0) }, %struct._GEnumValue { i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.258, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.259, i32 0, i32 0) }, %struct._GEnumValue { i32 2, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.260, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.261, i32 0, i32 0) }, %struct._GEnumValue zeroinitializer], align 16
@.str.257 = private unnamed_addr constant [17 x i8] c"GIMP_REPEAT_NONE\00", align 1
@.str.258 = private unnamed_addr constant [21 x i8] c"GIMP_REPEAT_SAWTOOTH\00", align 1
@.str.259 = private unnamed_addr constant [9 x i8] c"sawtooth\00", align 1
@.str.260 = private unnamed_addr constant [23 x i8] c"GIMP_REPEAT_TRIANGULAR\00", align 1
@.str.261 = private unnamed_addr constant [11 x i8] c"triangular\00", align 1
@gimp_repeat_mode_get_type.descs = internal constant [4 x %struct._GimpEnumDesc] [%struct._GimpEnumDesc { i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.244, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.262, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.263, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc zeroinitializer], align 16
@.str.262 = private unnamed_addr constant [14 x i8] c"Sawtooth wave\00", align 1
@.str.263 = private unnamed_addr constant [16 x i8] c"Triangular wave\00", align 1
@gimp_repeat_mode_get_type.type = internal global i64 0, align 8
@.str.264 = private unnamed_addr constant [15 x i8] c"GimpRepeatMode\00", align 1
@.str.265 = private unnamed_addr constant [12 x i8] c"repeat-mode\00", align 1
@gimp_run_mode_get_type.values = internal constant [4 x %struct._GEnumValue] [%struct._GEnumValue { i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.266, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.267, i32 0, i32 0) }, %struct._GEnumValue { i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.268, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.269, i32 0, i32 0) }, %struct._GEnumValue { i32 2, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.270, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.271, i32 0, i32 0) }, %struct._GEnumValue zeroinitializer], align 16
@.str.266 = private unnamed_addr constant [21 x i8] c"GIMP_RUN_INTERACTIVE\00", align 1
@.str.267 = private unnamed_addr constant [12 x i8] c"interactive\00", align 1
@.str.268 = private unnamed_addr constant [24 x i8] c"GIMP_RUN_NONINTERACTIVE\00", align 1
@.str.269 = private unnamed_addr constant [15 x i8] c"noninteractive\00", align 1
@.str.270 = private unnamed_addr constant [24 x i8] c"GIMP_RUN_WITH_LAST_VALS\00", align 1
@.str.271 = private unnamed_addr constant [15 x i8] c"with-last-vals\00", align 1
@gimp_run_mode_get_type.descs = internal constant [4 x %struct._GimpEnumDesc] [%struct._GimpEnumDesc { i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.272, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.273, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 2, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.274, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc zeroinitializer], align 16
@.str.272 = private unnamed_addr constant [18 x i8] c"Run interactively\00", align 1
@.str.273 = private unnamed_addr constant [22 x i8] c"Run non-interactively\00", align 1
@.str.274 = private unnamed_addr constant [26 x i8] c"Run with last used values\00", align 1
@gimp_run_mode_get_type.type = internal global i64 0, align 8
@.str.275 = private unnamed_addr constant [12 x i8] c"GimpRunMode\00", align 1
@.str.276 = private unnamed_addr constant [9 x i8] c"run-mode\00", align 1
@gimp_size_type_get_type.values = internal constant [3 x %struct._GEnumValue] [%struct._GEnumValue { i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.277, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.278, i32 0, i32 0) }, %struct._GEnumValue { i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.279, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.280, i32 0, i32 0) }, %struct._GEnumValue zeroinitializer], align 16
@.str.277 = private unnamed_addr constant [12 x i8] c"GIMP_PIXELS\00", align 1
@.str.278 = private unnamed_addr constant [7 x i8] c"pixels\00", align 1
@.str.279 = private unnamed_addr constant [12 x i8] c"GIMP_POINTS\00", align 1
@.str.280 = private unnamed_addr constant [7 x i8] c"points\00", align 1
@gimp_size_type_get_type.descs = internal constant [3 x %struct._GimpEnumDesc] [%struct._GimpEnumDesc { i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.281, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.282, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc zeroinitializer], align 16
@.str.281 = private unnamed_addr constant [7 x i8] c"Pixels\00", align 1
@.str.282 = private unnamed_addr constant [7 x i8] c"Points\00", align 1
@gimp_size_type_get_type.type = internal global i64 0, align 8
@.str.283 = private unnamed_addr constant [13 x i8] c"GimpSizeType\00", align 1
@.str.284 = private unnamed_addr constant [10 x i8] c"size-type\00", align 1
@gimp_transfer_mode_get_type.values = internal constant [4 x %struct._GEnumValue] [%struct._GEnumValue { i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.285, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.286, i32 0, i32 0) }, %struct._GEnumValue { i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.287, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.288, i32 0, i32 0) }, %struct._GEnumValue { i32 2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.289, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.290, i32 0, i32 0) }, %struct._GEnumValue zeroinitializer], align 16
@.str.285 = private unnamed_addr constant [13 x i8] c"GIMP_SHADOWS\00", align 1
@.str.286 = private unnamed_addr constant [8 x i8] c"shadows\00", align 1
@.str.287 = private unnamed_addr constant [14 x i8] c"GIMP_MIDTONES\00", align 1
@.str.288 = private unnamed_addr constant [9 x i8] c"midtones\00", align 1
@.str.289 = private unnamed_addr constant [16 x i8] c"GIMP_HIGHLIGHTS\00", align 1
@.str.290 = private unnamed_addr constant [11 x i8] c"highlights\00", align 1
@gimp_transfer_mode_get_type.descs = internal constant [4 x %struct._GimpEnumDesc] [%struct._GimpEnumDesc { i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.291, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.292, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.293, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc zeroinitializer], align 16
@.str.291 = private unnamed_addr constant [8 x i8] c"Shadows\00", align 1
@.str.292 = private unnamed_addr constant [9 x i8] c"Midtones\00", align 1
@.str.293 = private unnamed_addr constant [11 x i8] c"Highlights\00", align 1
@gimp_transfer_mode_get_type.type = internal global i64 0, align 8
@.str.294 = private unnamed_addr constant [17 x i8] c"GimpTransferMode\00", align 1
@.str.295 = private unnamed_addr constant [14 x i8] c"transfer-mode\00", align 1
@gimp_transform_direction_get_type.values = internal constant [3 x %struct._GEnumValue] [%struct._GEnumValue { i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.296, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.297, i32 0, i32 0) }, %struct._GEnumValue { i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.298, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.299, i32 0, i32 0) }, %struct._GEnumValue zeroinitializer], align 16
@.str.296 = private unnamed_addr constant [23 x i8] c"GIMP_TRANSFORM_FORWARD\00", align 1
@.str.297 = private unnamed_addr constant [8 x i8] c"forward\00", align 1
@.str.298 = private unnamed_addr constant [24 x i8] c"GIMP_TRANSFORM_BACKWARD\00", align 1
@.str.299 = private unnamed_addr constant [9 x i8] c"backward\00", align 1
@gimp_transform_direction_get_type.descs = internal constant [3 x %struct._GimpEnumDesc] [%struct._GimpEnumDesc { i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.300, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.301, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc zeroinitializer], align 16
@.str.300 = private unnamed_addr constant [17 x i8] c"Normal (Forward)\00", align 1
@.str.301 = private unnamed_addr constant [22 x i8] c"Corrective (Backward)\00", align 1
@gimp_transform_direction_get_type.type = internal global i64 0, align 8
@.str.302 = private unnamed_addr constant [23 x i8] c"GimpTransformDirection\00", align 1
@.str.303 = private unnamed_addr constant [20 x i8] c"transform-direction\00", align 1
@gimp_transform_resize_get_type.values = internal constant [5 x %struct._GEnumValue] [%struct._GEnumValue { i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.304, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.305, i32 0, i32 0) }, %struct._GEnumValue { i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.306, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.307, i32 0, i32 0) }, %struct._GEnumValue { i32 2, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.308, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.309, i32 0, i32 0) }, %struct._GEnumValue { i32 3, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.310, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.311, i32 0, i32 0) }, %struct._GEnumValue zeroinitializer], align 16
@.str.304 = private unnamed_addr constant [29 x i8] c"GIMP_TRANSFORM_RESIZE_ADJUST\00", align 1
@.str.305 = private unnamed_addr constant [7 x i8] c"adjust\00", align 1
@.str.306 = private unnamed_addr constant [27 x i8] c"GIMP_TRANSFORM_RESIZE_CLIP\00", align 1
@.str.307 = private unnamed_addr constant [5 x i8] c"clip\00", align 1
@.str.308 = private unnamed_addr constant [27 x i8] c"GIMP_TRANSFORM_RESIZE_CROP\00", align 1
@.str.309 = private unnamed_addr constant [5 x i8] c"crop\00", align 1
@.str.310 = private unnamed_addr constant [39 x i8] c"GIMP_TRANSFORM_RESIZE_CROP_WITH_ASPECT\00", align 1
@.str.311 = private unnamed_addr constant [17 x i8] c"crop-with-aspect\00", align 1
@gimp_transform_resize_get_type.descs = internal constant [5 x %struct._GimpEnumDesc] [%struct._GimpEnumDesc { i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.312, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.313, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 2, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.314, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 3, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.315, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc zeroinitializer], align 16
@.str.312 = private unnamed_addr constant [7 x i8] c"Adjust\00", align 1
@.str.313 = private unnamed_addr constant [5 x i8] c"Clip\00", align 1
@.str.314 = private unnamed_addr constant [15 x i8] c"Crop to result\00", align 1
@.str.315 = private unnamed_addr constant [17 x i8] c"Crop with aspect\00", align 1
@gimp_transform_resize_get_type.type = internal global i64 0, align 8
@.str.316 = private unnamed_addr constant [20 x i8] c"GimpTransformResize\00", align 1
@.str.317 = private unnamed_addr constant [17 x i8] c"transform-resize\00", align 1
@gimp_pdb_arg_type_get_type.values = internal constant [24 x %struct._GEnumValue] [%struct._GEnumValue { i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.318, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.319, i32 0, i32 0) }, %struct._GEnumValue { i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.320, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.321, i32 0, i32 0) }, %struct._GEnumValue { i32 2, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.322, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.323, i32 0, i32 0) }, %struct._GEnumValue { i32 3, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.324, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.325, i32 0, i32 0) }, %struct._GEnumValue { i32 4, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.326, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.327, i32 0, i32 0) }, %struct._GEnumValue { i32 5, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.328, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.329, i32 0, i32 0) }, %struct._GEnumValue { i32 6, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.330, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.331, i32 0, i32 0) }, %struct._GEnumValue { i32 7, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.332, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.333, i32 0, i32 0) }, %struct._GEnumValue { i32 8, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.334, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.335, i32 0, i32 0) }, %struct._GEnumValue { i32 9, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.336, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.337, i32 0, i32 0) }, %struct._GEnumValue { i32 10, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.338, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.339, i32 0, i32 0) }, %struct._GEnumValue { i32 11, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.340, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.341, i32 0, i32 0) }, %struct._GEnumValue { i32 12, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.342, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.343, i32 0, i32 0) }, %struct._GEnumValue { i32 13, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.344, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.345, i32 0, i32 0) }, %struct._GEnumValue { i32 14, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.346, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.347, i32 0, i32 0) }, %struct._GEnumValue { i32 15, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.348, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.349, i32 0, i32 0) }, %struct._GEnumValue { i32 16, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.350, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.351, i32 0, i32 0) }, %struct._GEnumValue { i32 17, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.352, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.353, i32 0, i32 0) }, %struct._GEnumValue { i32 18, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.354, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.355, i32 0, i32 0) }, %struct._GEnumValue { i32 19, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.356, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.357, i32 0, i32 0) }, %struct._GEnumValue { i32 20, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.358, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.359, i32 0, i32 0) }, %struct._GEnumValue { i32 21, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.360, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.361, i32 0, i32 0) }, %struct._GEnumValue { i32 22, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.362, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.363, i32 0, i32 0) }, %struct._GEnumValue zeroinitializer], align 16
@.str.318 = private unnamed_addr constant [15 x i8] c"GIMP_PDB_INT32\00", align 1
@.str.319 = private unnamed_addr constant [6 x i8] c"int32\00", align 1
@.str.320 = private unnamed_addr constant [15 x i8] c"GIMP_PDB_INT16\00", align 1
@.str.321 = private unnamed_addr constant [6 x i8] c"int16\00", align 1
@.str.322 = private unnamed_addr constant [14 x i8] c"GIMP_PDB_INT8\00", align 1
@.str.323 = private unnamed_addr constant [5 x i8] c"int8\00", align 1
@.str.324 = private unnamed_addr constant [15 x i8] c"GIMP_PDB_FLOAT\00", align 1
@.str.325 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@.str.326 = private unnamed_addr constant [16 x i8] c"GIMP_PDB_STRING\00", align 1
@.str.327 = private unnamed_addr constant [7 x i8] c"string\00", align 1
@.str.328 = private unnamed_addr constant [20 x i8] c"GIMP_PDB_INT32ARRAY\00", align 1
@.str.329 = private unnamed_addr constant [11 x i8] c"int32array\00", align 1
@.str.330 = private unnamed_addr constant [20 x i8] c"GIMP_PDB_INT16ARRAY\00", align 1
@.str.331 = private unnamed_addr constant [11 x i8] c"int16array\00", align 1
@.str.332 = private unnamed_addr constant [19 x i8] c"GIMP_PDB_INT8ARRAY\00", align 1
@.str.333 = private unnamed_addr constant [10 x i8] c"int8array\00", align 1
@.str.334 = private unnamed_addr constant [20 x i8] c"GIMP_PDB_FLOATARRAY\00", align 1
@.str.335 = private unnamed_addr constant [11 x i8] c"floatarray\00", align 1
@.str.336 = private unnamed_addr constant [21 x i8] c"GIMP_PDB_STRINGARRAY\00", align 1
@.str.337 = private unnamed_addr constant [12 x i8] c"stringarray\00", align 1
@.str.338 = private unnamed_addr constant [15 x i8] c"GIMP_PDB_COLOR\00", align 1
@.str.339 = private unnamed_addr constant [6 x i8] c"color\00", align 1
@.str.340 = private unnamed_addr constant [14 x i8] c"GIMP_PDB_ITEM\00", align 1
@.str.341 = private unnamed_addr constant [5 x i8] c"item\00", align 1
@.str.342 = private unnamed_addr constant [17 x i8] c"GIMP_PDB_DISPLAY\00", align 1
@.str.343 = private unnamed_addr constant [8 x i8] c"display\00", align 1
@.str.344 = private unnamed_addr constant [15 x i8] c"GIMP_PDB_IMAGE\00", align 1
@.str.345 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.346 = private unnamed_addr constant [15 x i8] c"GIMP_PDB_LAYER\00", align 1
@.str.347 = private unnamed_addr constant [6 x i8] c"layer\00", align 1
@.str.348 = private unnamed_addr constant [17 x i8] c"GIMP_PDB_CHANNEL\00", align 1
@.str.349 = private unnamed_addr constant [8 x i8] c"channel\00", align 1
@.str.350 = private unnamed_addr constant [18 x i8] c"GIMP_PDB_DRAWABLE\00", align 1
@.str.351 = private unnamed_addr constant [9 x i8] c"drawable\00", align 1
@.str.352 = private unnamed_addr constant [19 x i8] c"GIMP_PDB_SELECTION\00", align 1
@.str.353 = private unnamed_addr constant [10 x i8] c"selection\00", align 1
@.str.354 = private unnamed_addr constant [20 x i8] c"GIMP_PDB_COLORARRAY\00", align 1
@.str.355 = private unnamed_addr constant [11 x i8] c"colorarray\00", align 1
@.str.356 = private unnamed_addr constant [17 x i8] c"GIMP_PDB_VECTORS\00", align 1
@.str.357 = private unnamed_addr constant [8 x i8] c"vectors\00", align 1
@.str.358 = private unnamed_addr constant [18 x i8] c"GIMP_PDB_PARASITE\00", align 1
@.str.359 = private unnamed_addr constant [9 x i8] c"parasite\00", align 1
@.str.360 = private unnamed_addr constant [16 x i8] c"GIMP_PDB_STATUS\00", align 1
@.str.361 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.362 = private unnamed_addr constant [13 x i8] c"GIMP_PDB_END\00", align 1
@.str.363 = private unnamed_addr constant [4 x i8] c"end\00", align 1
@gimp_pdb_arg_type_get_type.descs = internal constant [24 x %struct._GimpEnumDesc] [%struct._GimpEnumDesc { i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.318, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.320, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 2, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.322, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 3, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.324, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 4, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.326, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 5, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.328, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 6, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.330, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 7, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.332, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 8, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.334, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 9, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.336, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 10, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.338, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 11, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.340, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 12, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.342, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 13, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.344, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 14, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.346, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 15, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.348, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 16, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.350, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 17, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.352, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 18, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.354, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 19, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.356, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 20, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.358, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 21, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.360, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 22, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.362, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc zeroinitializer], align 16
@gimp_pdb_arg_type_get_type.type = internal global i64 0, align 8
@.str.364 = private unnamed_addr constant [15 x i8] c"GimpPDBArgType\00", align 1
@.str.365 = private unnamed_addr constant [13 x i8] c"pdb-arg-type\00", align 1
@gimp_pdb_error_handler_get_type.values = internal constant [3 x %struct._GEnumValue] [%struct._GEnumValue { i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.366, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.367, i32 0, i32 0) }, %struct._GEnumValue { i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.368, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.369, i32 0, i32 0) }, %struct._GEnumValue zeroinitializer], align 16
@.str.366 = private unnamed_addr constant [32 x i8] c"GIMP_PDB_ERROR_HANDLER_INTERNAL\00", align 1
@.str.367 = private unnamed_addr constant [9 x i8] c"internal\00", align 1
@.str.368 = private unnamed_addr constant [30 x i8] c"GIMP_PDB_ERROR_HANDLER_PLUGIN\00", align 1
@.str.369 = private unnamed_addr constant [7 x i8] c"plugin\00", align 1
@gimp_pdb_error_handler_get_type.descs = internal constant [3 x %struct._GimpEnumDesc] [%struct._GimpEnumDesc { i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.366, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.368, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc zeroinitializer], align 16
@gimp_pdb_error_handler_get_type.type = internal global i64 0, align 8
@.str.370 = private unnamed_addr constant [20 x i8] c"GimpPDBErrorHandler\00", align 1
@.str.371 = private unnamed_addr constant [18 x i8] c"pdb-error-handler\00", align 1
@gimp_pdb_proc_type_get_type.values = internal constant [5 x %struct._GEnumValue] [%struct._GEnumValue { i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.372, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.367, i32 0, i32 0) }, %struct._GEnumValue { i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.373, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.369, i32 0, i32 0) }, %struct._GEnumValue { i32 2, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.374, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.375, i32 0, i32 0) }, %struct._GEnumValue { i32 3, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.376, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.377, i32 0, i32 0) }, %struct._GEnumValue zeroinitializer], align 16
@.str.372 = private unnamed_addr constant [14 x i8] c"GIMP_INTERNAL\00", align 1
@.str.373 = private unnamed_addr constant [12 x i8] c"GIMP_PLUGIN\00", align 1
@.str.374 = private unnamed_addr constant [15 x i8] c"GIMP_EXTENSION\00", align 1
@.str.375 = private unnamed_addr constant [10 x i8] c"extension\00", align 1
@.str.376 = private unnamed_addr constant [15 x i8] c"GIMP_TEMPORARY\00", align 1
@.str.377 = private unnamed_addr constant [10 x i8] c"temporary\00", align 1
@gimp_pdb_proc_type_get_type.descs = internal constant [5 x %struct._GimpEnumDesc] [%struct._GimpEnumDesc { i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.378, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.379, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 2, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.380, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 3, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.381, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc zeroinitializer], align 16
@.str.378 = private unnamed_addr constant [24 x i8] c"Internal GIMP procedure\00", align 1
@.str.379 = private unnamed_addr constant [13 x i8] c"GIMP Plug-In\00", align 1
@.str.380 = private unnamed_addr constant [15 x i8] c"GIMP Extension\00", align 1
@.str.381 = private unnamed_addr constant [20 x i8] c"Temporary Procedure\00", align 1
@gimp_pdb_proc_type_get_type.type = internal global i64 0, align 8
@.str.382 = private unnamed_addr constant [16 x i8] c"GimpPDBProcType\00", align 1
@.str.383 = private unnamed_addr constant [14 x i8] c"pdb-proc-type\00", align 1
@gimp_pdb_status_type_get_type.values = internal constant [6 x %struct._GEnumValue] [%struct._GEnumValue { i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.384, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.385, i32 0, i32 0) }, %struct._GEnumValue { i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.386, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.387, i32 0, i32 0) }, %struct._GEnumValue { i32 2, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.388, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.389, i32 0, i32 0) }, %struct._GEnumValue { i32 3, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.390, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.391, i32 0, i32 0) }, %struct._GEnumValue { i32 4, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.392, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.393, i32 0, i32 0) }, %struct._GEnumValue zeroinitializer], align 16
@.str.384 = private unnamed_addr constant [25 x i8] c"GIMP_PDB_EXECUTION_ERROR\00", align 1
@.str.385 = private unnamed_addr constant [16 x i8] c"execution-error\00", align 1
@.str.386 = private unnamed_addr constant [23 x i8] c"GIMP_PDB_CALLING_ERROR\00", align 1
@.str.387 = private unnamed_addr constant [14 x i8] c"calling-error\00", align 1
@.str.388 = private unnamed_addr constant [22 x i8] c"GIMP_PDB_PASS_THROUGH\00", align 1
@.str.389 = private unnamed_addr constant [13 x i8] c"pass-through\00", align 1
@.str.390 = private unnamed_addr constant [17 x i8] c"GIMP_PDB_SUCCESS\00", align 1
@.str.391 = private unnamed_addr constant [8 x i8] c"success\00", align 1
@.str.392 = private unnamed_addr constant [16 x i8] c"GIMP_PDB_CANCEL\00", align 1
@.str.393 = private unnamed_addr constant [7 x i8] c"cancel\00", align 1
@gimp_pdb_status_type_get_type.descs = internal constant [6 x %struct._GimpEnumDesc] [%struct._GimpEnumDesc { i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.384, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.386, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 2, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.388, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 3, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.390, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 4, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.392, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc zeroinitializer], align 16
@gimp_pdb_status_type_get_type.type = internal global i64 0, align 8
@.str.394 = private unnamed_addr constant [18 x i8] c"GimpPDBStatusType\00", align 1
@.str.395 = private unnamed_addr constant [16 x i8] c"pdb-status-type\00", align 1
@gimp_message_handler_type_get_type.values = internal constant [4 x %struct._GEnumValue] [%struct._GEnumValue { i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.396, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.397, i32 0, i32 0) }, %struct._GEnumValue { i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.398, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.399, i32 0, i32 0) }, %struct._GEnumValue { i32 2, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.400, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.401, i32 0, i32 0) }, %struct._GEnumValue zeroinitializer], align 16
@.str.396 = private unnamed_addr constant [17 x i8] c"GIMP_MESSAGE_BOX\00", align 1
@.str.397 = private unnamed_addr constant [12 x i8] c"message-box\00", align 1
@.str.398 = private unnamed_addr constant [13 x i8] c"GIMP_CONSOLE\00", align 1
@.str.399 = private unnamed_addr constant [8 x i8] c"console\00", align 1
@.str.400 = private unnamed_addr constant [19 x i8] c"GIMP_ERROR_CONSOLE\00", align 1
@.str.401 = private unnamed_addr constant [14 x i8] c"error-console\00", align 1
@gimp_message_handler_type_get_type.descs = internal constant [4 x %struct._GimpEnumDesc] [%struct._GimpEnumDesc { i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.396, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.398, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 2, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.400, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc zeroinitializer], align 16
@gimp_message_handler_type_get_type.type = internal global i64 0, align 8
@.str.402 = private unnamed_addr constant [23 x i8] c"GimpMessageHandlerType\00", align 1
@.str.403 = private unnamed_addr constant [21 x i8] c"message-handler-type\00", align 1
@gimp_stack_trace_mode_get_type.values = internal constant [4 x %struct._GEnumValue] [%struct._GEnumValue { i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.404, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.405, i32 0, i32 0) }, %struct._GEnumValue { i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.406, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.407, i32 0, i32 0) }, %struct._GEnumValue { i32 2, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.408, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.409, i32 0, i32 0) }, %struct._GEnumValue zeroinitializer], align 16
@.str.404 = private unnamed_addr constant [23 x i8] c"GIMP_STACK_TRACE_NEVER\00", align 1
@.str.405 = private unnamed_addr constant [6 x i8] c"never\00", align 1
@.str.406 = private unnamed_addr constant [23 x i8] c"GIMP_STACK_TRACE_QUERY\00", align 1
@.str.407 = private unnamed_addr constant [6 x i8] c"query\00", align 1
@.str.408 = private unnamed_addr constant [24 x i8] c"GIMP_STACK_TRACE_ALWAYS\00", align 1
@.str.409 = private unnamed_addr constant [7 x i8] c"always\00", align 1
@gimp_stack_trace_mode_get_type.descs = internal constant [4 x %struct._GimpEnumDesc] [%struct._GimpEnumDesc { i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.404, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.406, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 2, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.408, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc zeroinitializer], align 16
@gimp_stack_trace_mode_get_type.type = internal global i64 0, align 8
@.str.410 = private unnamed_addr constant [19 x i8] c"GimpStackTraceMode\00", align 1
@.str.411 = private unnamed_addr constant [17 x i8] c"stack-trace-mode\00", align 1
@gimp_progress_command_get_type.values = internal constant [7 x %struct._GEnumValue] [%struct._GEnumValue { i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.412, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.413, i32 0, i32 0) }, %struct._GEnumValue { i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.414, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.363, i32 0, i32 0) }, %struct._GEnumValue { i32 2, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.415, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.416, i32 0, i32 0) }, %struct._GEnumValue { i32 3, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.417, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.418, i32 0, i32 0) }, %struct._GEnumValue { i32 4, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.419, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.420, i32 0, i32 0) }, %struct._GEnumValue { i32 5, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.421, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.422, i32 0, i32 0) }, %struct._GEnumValue zeroinitializer], align 16
@.str.412 = private unnamed_addr constant [28 x i8] c"GIMP_PROGRESS_COMMAND_START\00", align 1
@.str.413 = private unnamed_addr constant [6 x i8] c"start\00", align 1
@.str.414 = private unnamed_addr constant [26 x i8] c"GIMP_PROGRESS_COMMAND_END\00", align 1
@.str.415 = private unnamed_addr constant [31 x i8] c"GIMP_PROGRESS_COMMAND_SET_TEXT\00", align 1
@.str.416 = private unnamed_addr constant [9 x i8] c"set-text\00", align 1
@.str.417 = private unnamed_addr constant [32 x i8] c"GIMP_PROGRESS_COMMAND_SET_VALUE\00", align 1
@.str.418 = private unnamed_addr constant [10 x i8] c"set-value\00", align 1
@.str.419 = private unnamed_addr constant [28 x i8] c"GIMP_PROGRESS_COMMAND_PULSE\00", align 1
@.str.420 = private unnamed_addr constant [6 x i8] c"pulse\00", align 1
@.str.421 = private unnamed_addr constant [33 x i8] c"GIMP_PROGRESS_COMMAND_GET_WINDOW\00", align 1
@.str.422 = private unnamed_addr constant [11 x i8] c"get-window\00", align 1
@gimp_progress_command_get_type.descs = internal constant [7 x %struct._GimpEnumDesc] [%struct._GimpEnumDesc { i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.412, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.414, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 2, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.415, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 3, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.417, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 4, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.419, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 5, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.421, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc zeroinitializer], align 16
@gimp_progress_command_get_type.type = internal global i64 0, align 8
@.str.423 = private unnamed_addr constant [20 x i8] c"GimpProgressCommand\00", align 1
@.str.424 = private unnamed_addr constant [17 x i8] c"progress-command\00", align 1
@gimp_text_direction_get_type.values = internal constant [3 x %struct._GEnumValue] [%struct._GEnumValue { i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.425, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.426, i32 0, i32 0) }, %struct._GEnumValue { i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.427, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.428, i32 0, i32 0) }, %struct._GEnumValue zeroinitializer], align 16
@.str.425 = private unnamed_addr constant [24 x i8] c"GIMP_TEXT_DIRECTION_LTR\00", align 1
@.str.426 = private unnamed_addr constant [4 x i8] c"ltr\00", align 1
@.str.427 = private unnamed_addr constant [24 x i8] c"GIMP_TEXT_DIRECTION_RTL\00", align 1
@.str.428 = private unnamed_addr constant [4 x i8] c"rtl\00", align 1
@gimp_text_direction_get_type.descs = internal constant [3 x %struct._GimpEnumDesc] [%struct._GimpEnumDesc { i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.429, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.430, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc zeroinitializer], align 16
@.str.429 = private unnamed_addr constant [19 x i8] c"From left to right\00", align 1
@.str.430 = private unnamed_addr constant [19 x i8] c"From right to left\00", align 1
@gimp_text_direction_get_type.type = internal global i64 0, align 8
@.str.431 = private unnamed_addr constant [18 x i8] c"GimpTextDirection\00", align 1
@.str.432 = private unnamed_addr constant [15 x i8] c"text-direction\00", align 1
@gimp_text_hint_style_get_type.values = internal constant [5 x %struct._GEnumValue] [%struct._GEnumValue { i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.433, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.238, i32 0, i32 0) }, %struct._GEnumValue { i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.434, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.435, i32 0, i32 0) }, %struct._GEnumValue { i32 2, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.436, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.437, i32 0, i32 0) }, %struct._GEnumValue { i32 3, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.438, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.439, i32 0, i32 0) }, %struct._GEnumValue zeroinitializer], align 16
@.str.433 = private unnamed_addr constant [26 x i8] c"GIMP_TEXT_HINT_STYLE_NONE\00", align 1
@.str.434 = private unnamed_addr constant [28 x i8] c"GIMP_TEXT_HINT_STYLE_SLIGHT\00", align 1
@.str.435 = private unnamed_addr constant [7 x i8] c"slight\00", align 1
@.str.436 = private unnamed_addr constant [28 x i8] c"GIMP_TEXT_HINT_STYLE_MEDIUM\00", align 1
@.str.437 = private unnamed_addr constant [7 x i8] c"medium\00", align 1
@.str.438 = private unnamed_addr constant [26 x i8] c"GIMP_TEXT_HINT_STYLE_FULL\00", align 1
@.str.439 = private unnamed_addr constant [5 x i8] c"full\00", align 1
@gimp_text_hint_style_get_type.descs = internal constant [5 x %struct._GimpEnumDesc] [%struct._GimpEnumDesc { i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.244, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.440, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.90, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.441, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc zeroinitializer], align 16
@.str.440 = private unnamed_addr constant [7 x i8] c"Slight\00", align 1
@.str.441 = private unnamed_addr constant [5 x i8] c"Full\00", align 1
@gimp_text_hint_style_get_type.type = internal global i64 0, align 8
@.str.442 = private unnamed_addr constant [18 x i8] c"GimpTextHintStyle\00", align 1
@.str.443 = private unnamed_addr constant [16 x i8] c"text-hint-style\00", align 1
@gimp_text_justification_get_type.values = internal constant [5 x %struct._GEnumValue] [%struct._GEnumValue { i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.444, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.445, i32 0, i32 0) }, %struct._GEnumValue { i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.446, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.447, i32 0, i32 0) }, %struct._GEnumValue { i32 2, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.448, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.449, i32 0, i32 0) }, %struct._GEnumValue { i32 3, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.450, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.451, i32 0, i32 0) }, %struct._GEnumValue zeroinitializer], align 16
@.str.444 = private unnamed_addr constant [23 x i8] c"GIMP_TEXT_JUSTIFY_LEFT\00", align 1
@.str.445 = private unnamed_addr constant [5 x i8] c"left\00", align 1
@.str.446 = private unnamed_addr constant [24 x i8] c"GIMP_TEXT_JUSTIFY_RIGHT\00", align 1
@.str.447 = private unnamed_addr constant [6 x i8] c"right\00", align 1
@.str.448 = private unnamed_addr constant [25 x i8] c"GIMP_TEXT_JUSTIFY_CENTER\00", align 1
@.str.449 = private unnamed_addr constant [7 x i8] c"center\00", align 1
@.str.450 = private unnamed_addr constant [23 x i8] c"GIMP_TEXT_JUSTIFY_FILL\00", align 1
@.str.451 = private unnamed_addr constant [5 x i8] c"fill\00", align 1
@gimp_text_justification_get_type.descs = internal constant [5 x %struct._GimpEnumDesc] [%struct._GimpEnumDesc { i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.452, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.453, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.454, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.455, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc zeroinitializer], align 16
@.str.452 = private unnamed_addr constant [15 x i8] c"Left justified\00", align 1
@.str.453 = private unnamed_addr constant [16 x i8] c"Right justified\00", align 1
@.str.454 = private unnamed_addr constant [9 x i8] c"Centered\00", align 1
@.str.455 = private unnamed_addr constant [7 x i8] c"Filled\00", align 1
@gimp_text_justification_get_type.type = internal global i64 0, align 8
@.str.456 = private unnamed_addr constant [22 x i8] c"GimpTextJustification\00", align 1
@.str.457 = private unnamed_addr constant [19 x i8] c"text-justification\00", align 1
@gimp_user_directory_get_type.values = internal constant [9 x %struct._GEnumValue] [%struct._GEnumValue { i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.458, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.459, i32 0, i32 0) }, %struct._GEnumValue { i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.460, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.461, i32 0, i32 0) }, %struct._GEnumValue { i32 2, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.462, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.463, i32 0, i32 0) }, %struct._GEnumValue { i32 3, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.464, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.465, i32 0, i32 0) }, %struct._GEnumValue { i32 4, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.466, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.467, i32 0, i32 0) }, %struct._GEnumValue { i32 5, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.468, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.469, i32 0, i32 0) }, %struct._GEnumValue { i32 6, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.470, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.471, i32 0, i32 0) }, %struct._GEnumValue { i32 7, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.472, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.473, i32 0, i32 0) }, %struct._GEnumValue zeroinitializer], align 16
@.str.458 = private unnamed_addr constant [28 x i8] c"GIMP_USER_DIRECTORY_DESKTOP\00", align 1
@.str.459 = private unnamed_addr constant [8 x i8] c"desktop\00", align 1
@.str.460 = private unnamed_addr constant [30 x i8] c"GIMP_USER_DIRECTORY_DOCUMENTS\00", align 1
@.str.461 = private unnamed_addr constant [10 x i8] c"documents\00", align 1
@.str.462 = private unnamed_addr constant [29 x i8] c"GIMP_USER_DIRECTORY_DOWNLOAD\00", align 1
@.str.463 = private unnamed_addr constant [9 x i8] c"download\00", align 1
@.str.464 = private unnamed_addr constant [26 x i8] c"GIMP_USER_DIRECTORY_MUSIC\00", align 1
@.str.465 = private unnamed_addr constant [6 x i8] c"music\00", align 1
@.str.466 = private unnamed_addr constant [29 x i8] c"GIMP_USER_DIRECTORY_PICTURES\00", align 1
@.str.467 = private unnamed_addr constant [9 x i8] c"pictures\00", align 1
@.str.468 = private unnamed_addr constant [33 x i8] c"GIMP_USER_DIRECTORY_PUBLIC_SHARE\00", align 1
@.str.469 = private unnamed_addr constant [13 x i8] c"public-share\00", align 1
@.str.470 = private unnamed_addr constant [30 x i8] c"GIMP_USER_DIRECTORY_TEMPLATES\00", align 1
@.str.471 = private unnamed_addr constant [10 x i8] c"templates\00", align 1
@.str.472 = private unnamed_addr constant [27 x i8] c"GIMP_USER_DIRECTORY_VIDEOS\00", align 1
@.str.473 = private unnamed_addr constant [7 x i8] c"videos\00", align 1
@gimp_user_directory_get_type.descs = internal constant [9 x %struct._GimpEnumDesc] [%struct._GimpEnumDesc { i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.458, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.460, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 2, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.462, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 3, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.464, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 4, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.466, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 5, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.468, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 6, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.470, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 7, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.472, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc zeroinitializer], align 16
@gimp_user_directory_get_type.type = internal global i64 0, align 8
@.str.474 = private unnamed_addr constant [18 x i8] c"GimpUserDirectory\00", align 1
@.str.475 = private unnamed_addr constant [15 x i8] c"user-directory\00", align 1
@gimp_vectors_stroke_type_get_type.values = internal constant [2 x %struct._GEnumValue] [%struct._GEnumValue { i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.476, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.477, i32 0, i32 0) }, %struct._GEnumValue zeroinitializer], align 16
@.str.476 = private unnamed_addr constant [32 x i8] c"GIMP_VECTORS_STROKE_TYPE_BEZIER\00", align 1
@.str.477 = private unnamed_addr constant [7 x i8] c"bezier\00", align 1
@gimp_vectors_stroke_type_get_type.descs = internal constant [2 x %struct._GimpEnumDesc] [%struct._GimpEnumDesc { i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.476, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc zeroinitializer], align 16
@gimp_vectors_stroke_type_get_type.type = internal global i64 0, align 8
@.str.478 = private unnamed_addr constant [22 x i8] c"GimpVectorsStrokeType\00", align 1
@.str.479 = private unnamed_addr constant [20 x i8] c"vectors-stroke-type\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_add_mask_type_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_add_mask_type_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_enum_register_static(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i32 0, i32 0), %struct._GEnumValue* getelementptr inbounds ([8 x %struct._GEnumValue], [8 x %struct._GEnumValue]* @gimp_add_mask_type_get_type.values, i32 0, i32 0))
  store i64 %call, i64* @gimp_add_mask_type_get_type.type, align 8
  %1 = load i64, i64* @gimp_add_mask_type_get_type.type, align 8
  call void @gimp_type_set_translation_domain(i64 %1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i32 0, i32 0))
  %2 = load i64, i64* @gimp_add_mask_type_get_type.type, align 8
  call void @gimp_type_set_translation_context(i64 %2, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.23, i32 0, i32 0))
  %3 = load i64, i64* @gimp_add_mask_type_get_type.type, align 8
  call void @gimp_enum_set_value_descriptions(i64 %3, %struct._GimpEnumDesc* getelementptr inbounds ([8 x %struct._GimpEnumDesc], [8 x %struct._GimpEnumDesc]* @gimp_add_mask_type_get_type.descs, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i64, i64* @gimp_add_mask_type_get_type.type, align 8
  ret i64 %4
}

declare i64 @g_enum_register_static(i8*, %struct._GEnumValue*) #1

declare void @gimp_type_set_translation_domain(i64, i8*) #1

declare void @gimp_type_set_translation_context(i64, i8*) #1

declare void @gimp_enum_set_value_descriptions(i64, %struct._GimpEnumDesc*) #1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_blend_mode_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_blend_mode_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_enum_register_static(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.36, i32 0, i32 0), %struct._GEnumValue* getelementptr inbounds ([5 x %struct._GEnumValue], [5 x %struct._GEnumValue]* @gimp_blend_mode_get_type.values, i32 0, i32 0))
  store i64 %call, i64* @gimp_blend_mode_get_type.type, align 8
  %1 = load i64, i64* @gimp_blend_mode_get_type.type, align 8
  call void @gimp_type_set_translation_domain(i64 %1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i32 0, i32 0))
  %2 = load i64, i64* @gimp_blend_mode_get_type.type, align 8
  call void @gimp_type_set_translation_context(i64 %2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.37, i32 0, i32 0))
  %3 = load i64, i64* @gimp_blend_mode_get_type.type, align 8
  call void @gimp_enum_set_value_descriptions(i64 %3, %struct._GimpEnumDesc* getelementptr inbounds ([5 x %struct._GimpEnumDesc], [5 x %struct._GimpEnumDesc]* @gimp_blend_mode_get_type.descs, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i64, i64* @gimp_blend_mode_get_type.type, align 8
  ret i64 %4
}

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_bucket_fill_mode_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_bucket_fill_mode_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_enum_register_static(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.47, i32 0, i32 0), %struct._GEnumValue* getelementptr inbounds ([4 x %struct._GEnumValue], [4 x %struct._GEnumValue]* @gimp_bucket_fill_mode_get_type.values, i32 0, i32 0))
  store i64 %call, i64* @gimp_bucket_fill_mode_get_type.type, align 8
  %1 = load i64, i64* @gimp_bucket_fill_mode_get_type.type, align 8
  call void @gimp_type_set_translation_domain(i64 %1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i32 0, i32 0))
  %2 = load i64, i64* @gimp_bucket_fill_mode_get_type.type, align 8
  call void @gimp_type_set_translation_context(i64 %2, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.48, i32 0, i32 0))
  %3 = load i64, i64* @gimp_bucket_fill_mode_get_type.type, align 8
  call void @gimp_enum_set_value_descriptions(i64 %3, %struct._GimpEnumDesc* getelementptr inbounds ([4 x %struct._GimpEnumDesc], [4 x %struct._GimpEnumDesc]* @gimp_bucket_fill_mode_get_type.descs, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i64, i64* @gimp_bucket_fill_mode_get_type.type, align 8
  ret i64 %4
}

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_channel_ops_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_channel_ops_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_enum_register_static(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.61, i32 0, i32 0), %struct._GEnumValue* getelementptr inbounds ([5 x %struct._GEnumValue], [5 x %struct._GEnumValue]* @gimp_channel_ops_get_type.values, i32 0, i32 0))
  store i64 %call, i64* @gimp_channel_ops_get_type.type, align 8
  %1 = load i64, i64* @gimp_channel_ops_get_type.type, align 8
  call void @gimp_type_set_translation_domain(i64 %1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i32 0, i32 0))
  %2 = load i64, i64* @gimp_channel_ops_get_type.type, align 8
  call void @gimp_type_set_translation_context(i64 %2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.62, i32 0, i32 0))
  %3 = load i64, i64* @gimp_channel_ops_get_type.type, align 8
  call void @gimp_enum_set_value_descriptions(i64 %3, %struct._GimpEnumDesc* getelementptr inbounds ([5 x %struct._GimpEnumDesc], [5 x %struct._GimpEnumDesc]* @gimp_channel_ops_get_type.descs, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i64, i64* @gimp_channel_ops_get_type.type, align 8
  ret i64 %4
}

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_channel_type_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_channel_type_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_enum_register_static(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.81, i32 0, i32 0), %struct._GEnumValue* getelementptr inbounds ([7 x %struct._GEnumValue], [7 x %struct._GEnumValue]* @gimp_channel_type_get_type.values, i32 0, i32 0))
  store i64 %call, i64* @gimp_channel_type_get_type.type, align 8
  %1 = load i64, i64* @gimp_channel_type_get_type.type, align 8
  call void @gimp_type_set_translation_domain(i64 %1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i32 0, i32 0))
  %2 = load i64, i64* @gimp_channel_type_get_type.type, align 8
  call void @gimp_type_set_translation_context(i64 %2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.82, i32 0, i32 0))
  %3 = load i64, i64* @gimp_channel_type_get_type.type, align 8
  call void @gimp_enum_set_value_descriptions(i64 %3, %struct._GimpEnumDesc* getelementptr inbounds ([7 x %struct._GimpEnumDesc], [7 x %struct._GimpEnumDesc]* @gimp_channel_type_get_type.descs, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i64, i64* @gimp_channel_type_get_type.type, align 8
  ret i64 %4
}

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_check_size_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_check_size_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_enum_register_static(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.92, i32 0, i32 0), %struct._GEnumValue* getelementptr inbounds ([4 x %struct._GEnumValue], [4 x %struct._GEnumValue]* @gimp_check_size_get_type.values, i32 0, i32 0))
  store i64 %call, i64* @gimp_check_size_get_type.type, align 8
  %1 = load i64, i64* @gimp_check_size_get_type.type, align 8
  call void @gimp_type_set_translation_domain(i64 %1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i32 0, i32 0))
  %2 = load i64, i64* @gimp_check_size_get_type.type, align 8
  call void @gimp_type_set_translation_context(i64 %2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.93, i32 0, i32 0))
  %3 = load i64, i64* @gimp_check_size_get_type.type, align 8
  call void @gimp_enum_set_value_descriptions(i64 %3, %struct._GimpEnumDesc* getelementptr inbounds ([4 x %struct._GimpEnumDesc], [4 x %struct._GimpEnumDesc]* @gimp_check_size_get_type.descs, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i64, i64* @gimp_check_size_get_type.type, align 8
  ret i64 %4
}

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_check_type_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_check_type_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_enum_register_static(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.112, i32 0, i32 0), %struct._GEnumValue* getelementptr inbounds ([7 x %struct._GEnumValue], [7 x %struct._GEnumValue]* @gimp_check_type_get_type.values, i32 0, i32 0))
  store i64 %call, i64* @gimp_check_type_get_type.type, align 8
  %1 = load i64, i64* @gimp_check_type_get_type.type, align 8
  call void @gimp_type_set_translation_domain(i64 %1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i32 0, i32 0))
  %2 = load i64, i64* @gimp_check_type_get_type.type, align 8
  call void @gimp_type_set_translation_context(i64 %2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.113, i32 0, i32 0))
  %3 = load i64, i64* @gimp_check_type_get_type.type, align 8
  call void @gimp_enum_set_value_descriptions(i64 %3, %struct._GimpEnumDesc* getelementptr inbounds ([7 x %struct._GimpEnumDesc], [7 x %struct._GimpEnumDesc]* @gimp_check_type_get_type.descs, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i64, i64* @gimp_check_type_get_type.type, align 8
  ret i64 %4
}

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_clone_type_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_clone_type_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_enum_register_static(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.120, i32 0, i32 0), %struct._GEnumValue* getelementptr inbounds ([3 x %struct._GEnumValue], [3 x %struct._GEnumValue]* @gimp_clone_type_get_type.values, i32 0, i32 0))
  store i64 %call, i64* @gimp_clone_type_get_type.type, align 8
  %1 = load i64, i64* @gimp_clone_type_get_type.type, align 8
  call void @gimp_type_set_translation_domain(i64 %1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i32 0, i32 0))
  %2 = load i64, i64* @gimp_clone_type_get_type.type, align 8
  call void @gimp_type_set_translation_context(i64 %2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.121, i32 0, i32 0))
  %3 = load i64, i64* @gimp_clone_type_get_type.type, align 8
  call void @gimp_enum_set_value_descriptions(i64 %3, %struct._GimpEnumDesc* getelementptr inbounds ([3 x %struct._GimpEnumDesc], [3 x %struct._GimpEnumDesc]* @gimp_clone_type_get_type.descs, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i64, i64* @gimp_clone_type_get_type.type, align 8
  ret i64 %4
}

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_desaturate_mode_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_desaturate_mode_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_enum_register_static(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.131, i32 0, i32 0), %struct._GEnumValue* getelementptr inbounds ([4 x %struct._GEnumValue], [4 x %struct._GEnumValue]* @gimp_desaturate_mode_get_type.values, i32 0, i32 0))
  store i64 %call, i64* @gimp_desaturate_mode_get_type.type, align 8
  %1 = load i64, i64* @gimp_desaturate_mode_get_type.type, align 8
  call void @gimp_type_set_translation_domain(i64 %1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i32 0, i32 0))
  %2 = load i64, i64* @gimp_desaturate_mode_get_type.type, align 8
  call void @gimp_type_set_translation_context(i64 %2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.132, i32 0, i32 0))
  %3 = load i64, i64* @gimp_desaturate_mode_get_type.type, align 8
  call void @gimp_enum_set_value_descriptions(i64 %3, %struct._GimpEnumDesc* getelementptr inbounds ([4 x %struct._GimpEnumDesc], [4 x %struct._GimpEnumDesc]* @gimp_desaturate_mode_get_type.descs, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i64, i64* @gimp_desaturate_mode_get_type.type, align 8
  ret i64 %4
}

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_dodge_burn_type_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_dodge_burn_type_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_enum_register_static(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.139, i32 0, i32 0), %struct._GEnumValue* getelementptr inbounds ([3 x %struct._GEnumValue], [3 x %struct._GEnumValue]* @gimp_dodge_burn_type_get_type.values, i32 0, i32 0))
  store i64 %call, i64* @gimp_dodge_burn_type_get_type.type, align 8
  %1 = load i64, i64* @gimp_dodge_burn_type_get_type.type, align 8
  call void @gimp_type_set_translation_domain(i64 %1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i32 0, i32 0))
  %2 = load i64, i64* @gimp_dodge_burn_type_get_type.type, align 8
  call void @gimp_type_set_translation_context(i64 %2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.140, i32 0, i32 0))
  %3 = load i64, i64* @gimp_dodge_burn_type_get_type.type, align 8
  call void @gimp_enum_set_value_descriptions(i64 %3, %struct._GimpEnumDesc* getelementptr inbounds ([3 x %struct._GimpEnumDesc], [3 x %struct._GimpEnumDesc]* @gimp_dodge_burn_type_get_type.descs, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i64, i64* @gimp_dodge_burn_type_get_type.type, align 8
  ret i64 %4
}

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_foreground_extract_mode_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_foreground_extract_mode_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_enum_register_static(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.143, i32 0, i32 0), %struct._GEnumValue* getelementptr inbounds ([2 x %struct._GEnumValue], [2 x %struct._GEnumValue]* @gimp_foreground_extract_mode_get_type.values, i32 0, i32 0))
  store i64 %call, i64* @gimp_foreground_extract_mode_get_type.type, align 8
  %1 = load i64, i64* @gimp_foreground_extract_mode_get_type.type, align 8
  call void @gimp_type_set_translation_domain(i64 %1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i32 0, i32 0))
  %2 = load i64, i64* @gimp_foreground_extract_mode_get_type.type, align 8
  call void @gimp_type_set_translation_context(i64 %2, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.144, i32 0, i32 0))
  %3 = load i64, i64* @gimp_foreground_extract_mode_get_type.type, align 8
  call void @gimp_enum_set_value_descriptions(i64 %3, %struct._GimpEnumDesc* getelementptr inbounds ([2 x %struct._GimpEnumDesc], [2 x %struct._GimpEnumDesc]* @gimp_foreground_extract_mode_get_type.descs, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i64, i64* @gimp_foreground_extract_mode_get_type.type, align 8
  ret i64 %4
}

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_gradient_type_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_gradient_type_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_enum_register_static(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.178, i32 0, i32 0), %struct._GEnumValue* getelementptr inbounds ([12 x %struct._GEnumValue], [12 x %struct._GEnumValue]* @gimp_gradient_type_get_type.values, i32 0, i32 0))
  store i64 %call, i64* @gimp_gradient_type_get_type.type, align 8
  %1 = load i64, i64* @gimp_gradient_type_get_type.type, align 8
  call void @gimp_type_set_translation_domain(i64 %1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i32 0, i32 0))
  %2 = load i64, i64* @gimp_gradient_type_get_type.type, align 8
  call void @gimp_type_set_translation_context(i64 %2, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.179, i32 0, i32 0))
  %3 = load i64, i64* @gimp_gradient_type_get_type.type, align 8
  call void @gimp_enum_set_value_descriptions(i64 %3, %struct._GimpEnumDesc* getelementptr inbounds ([12 x %struct._GimpEnumDesc], [12 x %struct._GimpEnumDesc]* @gimp_gradient_type_get_type.descs, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i64, i64* @gimp_gradient_type_get_type.type, align 8
  ret i64 %4
}

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_grid_style_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_grid_style_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_enum_register_static(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.195, i32 0, i32 0), %struct._GEnumValue* getelementptr inbounds ([6 x %struct._GEnumValue], [6 x %struct._GEnumValue]* @gimp_grid_style_get_type.values, i32 0, i32 0))
  store i64 %call, i64* @gimp_grid_style_get_type.type, align 8
  %1 = load i64, i64* @gimp_grid_style_get_type.type, align 8
  call void @gimp_type_set_translation_domain(i64 %1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i32 0, i32 0))
  %2 = load i64, i64* @gimp_grid_style_get_type.type, align 8
  call void @gimp_type_set_translation_context(i64 %2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.196, i32 0, i32 0))
  %3 = load i64, i64* @gimp_grid_style_get_type.type, align 8
  call void @gimp_enum_set_value_descriptions(i64 %3, %struct._GimpEnumDesc* getelementptr inbounds ([6 x %struct._GimpEnumDesc], [6 x %struct._GimpEnumDesc]* @gimp_grid_style_get_type.descs, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i64, i64* @gimp_grid_style_get_type.type, align 8
  ret i64 %4
}

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_icon_type_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_icon_type_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_enum_register_static(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.206, i32 0, i32 0), %struct._GEnumValue* getelementptr inbounds ([4 x %struct._GEnumValue], [4 x %struct._GEnumValue]* @gimp_icon_type_get_type.values, i32 0, i32 0))
  store i64 %call, i64* @gimp_icon_type_get_type.type, align 8
  %1 = load i64, i64* @gimp_icon_type_get_type.type, align 8
  call void @gimp_type_set_translation_domain(i64 %1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i32 0, i32 0))
  %2 = load i64, i64* @gimp_icon_type_get_type.type, align 8
  call void @gimp_type_set_translation_context(i64 %2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.207, i32 0, i32 0))
  %3 = load i64, i64* @gimp_icon_type_get_type.type, align 8
  call void @gimp_enum_set_value_descriptions(i64 %3, %struct._GimpEnumDesc* getelementptr inbounds ([4 x %struct._GimpEnumDesc], [4 x %struct._GimpEnumDesc]* @gimp_icon_type_get_type.descs, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i64, i64* @gimp_icon_type_get_type.type, align 8
  ret i64 %4
}

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_image_base_type_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_image_base_type_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_enum_register_static(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.217, i32 0, i32 0), %struct._GEnumValue* getelementptr inbounds ([4 x %struct._GEnumValue], [4 x %struct._GEnumValue]* @gimp_image_base_type_get_type.values, i32 0, i32 0))
  store i64 %call, i64* @gimp_image_base_type_get_type.type, align 8
  %1 = load i64, i64* @gimp_image_base_type_get_type.type, align 8
  call void @gimp_type_set_translation_domain(i64 %1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i32 0, i32 0))
  %2 = load i64, i64* @gimp_image_base_type_get_type.type, align 8
  call void @gimp_type_set_translation_context(i64 %2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.218, i32 0, i32 0))
  %3 = load i64, i64* @gimp_image_base_type_get_type.type, align 8
  call void @gimp_enum_set_value_descriptions(i64 %3, %struct._GimpEnumDesc* getelementptr inbounds ([4 x %struct._GimpEnumDesc], [4 x %struct._GimpEnumDesc]* @gimp_image_base_type_get_type.descs, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i64, i64* @gimp_image_base_type_get_type.type, align 8
  ret i64 %4
}

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_image_type_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_image_type_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_enum_register_static(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.235, i32 0, i32 0), %struct._GEnumValue* getelementptr inbounds ([7 x %struct._GEnumValue], [7 x %struct._GEnumValue]* @gimp_image_type_get_type.values, i32 0, i32 0))
  store i64 %call, i64* @gimp_image_type_get_type.type, align 8
  %1 = load i64, i64* @gimp_image_type_get_type.type, align 8
  call void @gimp_type_set_translation_domain(i64 %1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i32 0, i32 0))
  %2 = load i64, i64* @gimp_image_type_get_type.type, align 8
  call void @gimp_type_set_translation_context(i64 %2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.236, i32 0, i32 0))
  %3 = load i64, i64* @gimp_image_type_get_type.type, align 8
  call void @gimp_enum_set_value_descriptions(i64 %3, %struct._GimpEnumDesc* getelementptr inbounds ([7 x %struct._GimpEnumDesc], [7 x %struct._GimpEnumDesc]* @gimp_image_type_get_type.descs, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i64, i64* @gimp_image_type_get_type.type, align 8
  ret i64 %4
}

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_interpolation_type_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_interpolation_type_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_enum_register_static(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.247, i32 0, i32 0), %struct._GEnumValue* getelementptr inbounds ([5 x %struct._GEnumValue], [5 x %struct._GEnumValue]* @gimp_interpolation_type_get_type.values, i32 0, i32 0))
  store i64 %call, i64* @gimp_interpolation_type_get_type.type, align 8
  %1 = load i64, i64* @gimp_interpolation_type_get_type.type, align 8
  call void @gimp_type_set_translation_domain(i64 %1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i32 0, i32 0))
  %2 = load i64, i64* @gimp_interpolation_type_get_type.type, align 8
  call void @gimp_type_set_translation_context(i64 %2, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.248, i32 0, i32 0))
  %3 = load i64, i64* @gimp_interpolation_type_get_type.type, align 8
  call void @gimp_enum_set_value_descriptions(i64 %3, %struct._GimpEnumDesc* getelementptr inbounds ([5 x %struct._GimpEnumDesc], [5 x %struct._GimpEnumDesc]* @gimp_interpolation_type_get_type.descs, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i64, i64* @gimp_interpolation_type_get_type.type, align 8
  ret i64 %4
}

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_paint_application_mode_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_paint_application_mode_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_enum_register_static(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.255, i32 0, i32 0), %struct._GEnumValue* getelementptr inbounds ([3 x %struct._GEnumValue], [3 x %struct._GEnumValue]* @gimp_paint_application_mode_get_type.values, i32 0, i32 0))
  store i64 %call, i64* @gimp_paint_application_mode_get_type.type, align 8
  %1 = load i64, i64* @gimp_paint_application_mode_get_type.type, align 8
  call void @gimp_type_set_translation_domain(i64 %1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i32 0, i32 0))
  %2 = load i64, i64* @gimp_paint_application_mode_get_type.type, align 8
  call void @gimp_type_set_translation_context(i64 %2, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.256, i32 0, i32 0))
  %3 = load i64, i64* @gimp_paint_application_mode_get_type.type, align 8
  call void @gimp_enum_set_value_descriptions(i64 %3, %struct._GimpEnumDesc* getelementptr inbounds ([3 x %struct._GimpEnumDesc], [3 x %struct._GimpEnumDesc]* @gimp_paint_application_mode_get_type.descs, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i64, i64* @gimp_paint_application_mode_get_type.type, align 8
  ret i64 %4
}

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_repeat_mode_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_repeat_mode_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_enum_register_static(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.264, i32 0, i32 0), %struct._GEnumValue* getelementptr inbounds ([4 x %struct._GEnumValue], [4 x %struct._GEnumValue]* @gimp_repeat_mode_get_type.values, i32 0, i32 0))
  store i64 %call, i64* @gimp_repeat_mode_get_type.type, align 8
  %1 = load i64, i64* @gimp_repeat_mode_get_type.type, align 8
  call void @gimp_type_set_translation_domain(i64 %1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i32 0, i32 0))
  %2 = load i64, i64* @gimp_repeat_mode_get_type.type, align 8
  call void @gimp_type_set_translation_context(i64 %2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.265, i32 0, i32 0))
  %3 = load i64, i64* @gimp_repeat_mode_get_type.type, align 8
  call void @gimp_enum_set_value_descriptions(i64 %3, %struct._GimpEnumDesc* getelementptr inbounds ([4 x %struct._GimpEnumDesc], [4 x %struct._GimpEnumDesc]* @gimp_repeat_mode_get_type.descs, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i64, i64* @gimp_repeat_mode_get_type.type, align 8
  ret i64 %4
}

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_run_mode_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_run_mode_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_enum_register_static(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.275, i32 0, i32 0), %struct._GEnumValue* getelementptr inbounds ([4 x %struct._GEnumValue], [4 x %struct._GEnumValue]* @gimp_run_mode_get_type.values, i32 0, i32 0))
  store i64 %call, i64* @gimp_run_mode_get_type.type, align 8
  %1 = load i64, i64* @gimp_run_mode_get_type.type, align 8
  call void @gimp_type_set_translation_domain(i64 %1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i32 0, i32 0))
  %2 = load i64, i64* @gimp_run_mode_get_type.type, align 8
  call void @gimp_type_set_translation_context(i64 %2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.276, i32 0, i32 0))
  %3 = load i64, i64* @gimp_run_mode_get_type.type, align 8
  call void @gimp_enum_set_value_descriptions(i64 %3, %struct._GimpEnumDesc* getelementptr inbounds ([4 x %struct._GimpEnumDesc], [4 x %struct._GimpEnumDesc]* @gimp_run_mode_get_type.descs, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i64, i64* @gimp_run_mode_get_type.type, align 8
  ret i64 %4
}

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_size_type_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_size_type_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_enum_register_static(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.283, i32 0, i32 0), %struct._GEnumValue* getelementptr inbounds ([3 x %struct._GEnumValue], [3 x %struct._GEnumValue]* @gimp_size_type_get_type.values, i32 0, i32 0))
  store i64 %call, i64* @gimp_size_type_get_type.type, align 8
  %1 = load i64, i64* @gimp_size_type_get_type.type, align 8
  call void @gimp_type_set_translation_domain(i64 %1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i32 0, i32 0))
  %2 = load i64, i64* @gimp_size_type_get_type.type, align 8
  call void @gimp_type_set_translation_context(i64 %2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.284, i32 0, i32 0))
  %3 = load i64, i64* @gimp_size_type_get_type.type, align 8
  call void @gimp_enum_set_value_descriptions(i64 %3, %struct._GimpEnumDesc* getelementptr inbounds ([3 x %struct._GimpEnumDesc], [3 x %struct._GimpEnumDesc]* @gimp_size_type_get_type.descs, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i64, i64* @gimp_size_type_get_type.type, align 8
  ret i64 %4
}

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_transfer_mode_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_transfer_mode_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_enum_register_static(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.294, i32 0, i32 0), %struct._GEnumValue* getelementptr inbounds ([4 x %struct._GEnumValue], [4 x %struct._GEnumValue]* @gimp_transfer_mode_get_type.values, i32 0, i32 0))
  store i64 %call, i64* @gimp_transfer_mode_get_type.type, align 8
  %1 = load i64, i64* @gimp_transfer_mode_get_type.type, align 8
  call void @gimp_type_set_translation_domain(i64 %1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i32 0, i32 0))
  %2 = load i64, i64* @gimp_transfer_mode_get_type.type, align 8
  call void @gimp_type_set_translation_context(i64 %2, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.295, i32 0, i32 0))
  %3 = load i64, i64* @gimp_transfer_mode_get_type.type, align 8
  call void @gimp_enum_set_value_descriptions(i64 %3, %struct._GimpEnumDesc* getelementptr inbounds ([4 x %struct._GimpEnumDesc], [4 x %struct._GimpEnumDesc]* @gimp_transfer_mode_get_type.descs, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i64, i64* @gimp_transfer_mode_get_type.type, align 8
  ret i64 %4
}

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_transform_direction_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_transform_direction_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_enum_register_static(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.302, i32 0, i32 0), %struct._GEnumValue* getelementptr inbounds ([3 x %struct._GEnumValue], [3 x %struct._GEnumValue]* @gimp_transform_direction_get_type.values, i32 0, i32 0))
  store i64 %call, i64* @gimp_transform_direction_get_type.type, align 8
  %1 = load i64, i64* @gimp_transform_direction_get_type.type, align 8
  call void @gimp_type_set_translation_domain(i64 %1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i32 0, i32 0))
  %2 = load i64, i64* @gimp_transform_direction_get_type.type, align 8
  call void @gimp_type_set_translation_context(i64 %2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.303, i32 0, i32 0))
  %3 = load i64, i64* @gimp_transform_direction_get_type.type, align 8
  call void @gimp_enum_set_value_descriptions(i64 %3, %struct._GimpEnumDesc* getelementptr inbounds ([3 x %struct._GimpEnumDesc], [3 x %struct._GimpEnumDesc]* @gimp_transform_direction_get_type.descs, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i64, i64* @gimp_transform_direction_get_type.type, align 8
  ret i64 %4
}

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_transform_resize_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_transform_resize_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_enum_register_static(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.316, i32 0, i32 0), %struct._GEnumValue* getelementptr inbounds ([5 x %struct._GEnumValue], [5 x %struct._GEnumValue]* @gimp_transform_resize_get_type.values, i32 0, i32 0))
  store i64 %call, i64* @gimp_transform_resize_get_type.type, align 8
  %1 = load i64, i64* @gimp_transform_resize_get_type.type, align 8
  call void @gimp_type_set_translation_domain(i64 %1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i32 0, i32 0))
  %2 = load i64, i64* @gimp_transform_resize_get_type.type, align 8
  call void @gimp_type_set_translation_context(i64 %2, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.317, i32 0, i32 0))
  %3 = load i64, i64* @gimp_transform_resize_get_type.type, align 8
  call void @gimp_enum_set_value_descriptions(i64 %3, %struct._GimpEnumDesc* getelementptr inbounds ([5 x %struct._GimpEnumDesc], [5 x %struct._GimpEnumDesc]* @gimp_transform_resize_get_type.descs, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i64, i64* @gimp_transform_resize_get_type.type, align 8
  ret i64 %4
}

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_pdb_arg_type_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_pdb_arg_type_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_enum_register_static(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.364, i32 0, i32 0), %struct._GEnumValue* getelementptr inbounds ([24 x %struct._GEnumValue], [24 x %struct._GEnumValue]* @gimp_pdb_arg_type_get_type.values, i32 0, i32 0))
  store i64 %call, i64* @gimp_pdb_arg_type_get_type.type, align 8
  %1 = load i64, i64* @gimp_pdb_arg_type_get_type.type, align 8
  call void @gimp_type_set_translation_domain(i64 %1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i32 0, i32 0))
  %2 = load i64, i64* @gimp_pdb_arg_type_get_type.type, align 8
  call void @gimp_type_set_translation_context(i64 %2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.365, i32 0, i32 0))
  %3 = load i64, i64* @gimp_pdb_arg_type_get_type.type, align 8
  call void @gimp_enum_set_value_descriptions(i64 %3, %struct._GimpEnumDesc* getelementptr inbounds ([24 x %struct._GimpEnumDesc], [24 x %struct._GimpEnumDesc]* @gimp_pdb_arg_type_get_type.descs, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i64, i64* @gimp_pdb_arg_type_get_type.type, align 8
  ret i64 %4
}

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_pdb_error_handler_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_pdb_error_handler_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_enum_register_static(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.370, i32 0, i32 0), %struct._GEnumValue* getelementptr inbounds ([3 x %struct._GEnumValue], [3 x %struct._GEnumValue]* @gimp_pdb_error_handler_get_type.values, i32 0, i32 0))
  store i64 %call, i64* @gimp_pdb_error_handler_get_type.type, align 8
  %1 = load i64, i64* @gimp_pdb_error_handler_get_type.type, align 8
  call void @gimp_type_set_translation_domain(i64 %1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i32 0, i32 0))
  %2 = load i64, i64* @gimp_pdb_error_handler_get_type.type, align 8
  call void @gimp_type_set_translation_context(i64 %2, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.371, i32 0, i32 0))
  %3 = load i64, i64* @gimp_pdb_error_handler_get_type.type, align 8
  call void @gimp_enum_set_value_descriptions(i64 %3, %struct._GimpEnumDesc* getelementptr inbounds ([3 x %struct._GimpEnumDesc], [3 x %struct._GimpEnumDesc]* @gimp_pdb_error_handler_get_type.descs, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i64, i64* @gimp_pdb_error_handler_get_type.type, align 8
  ret i64 %4
}

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_pdb_proc_type_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_pdb_proc_type_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_enum_register_static(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.382, i32 0, i32 0), %struct._GEnumValue* getelementptr inbounds ([5 x %struct._GEnumValue], [5 x %struct._GEnumValue]* @gimp_pdb_proc_type_get_type.values, i32 0, i32 0))
  store i64 %call, i64* @gimp_pdb_proc_type_get_type.type, align 8
  %1 = load i64, i64* @gimp_pdb_proc_type_get_type.type, align 8
  call void @gimp_type_set_translation_domain(i64 %1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i32 0, i32 0))
  %2 = load i64, i64* @gimp_pdb_proc_type_get_type.type, align 8
  call void @gimp_type_set_translation_context(i64 %2, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.383, i32 0, i32 0))
  %3 = load i64, i64* @gimp_pdb_proc_type_get_type.type, align 8
  call void @gimp_enum_set_value_descriptions(i64 %3, %struct._GimpEnumDesc* getelementptr inbounds ([5 x %struct._GimpEnumDesc], [5 x %struct._GimpEnumDesc]* @gimp_pdb_proc_type_get_type.descs, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i64, i64* @gimp_pdb_proc_type_get_type.type, align 8
  ret i64 %4
}

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_pdb_status_type_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_pdb_status_type_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_enum_register_static(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.394, i32 0, i32 0), %struct._GEnumValue* getelementptr inbounds ([6 x %struct._GEnumValue], [6 x %struct._GEnumValue]* @gimp_pdb_status_type_get_type.values, i32 0, i32 0))
  store i64 %call, i64* @gimp_pdb_status_type_get_type.type, align 8
  %1 = load i64, i64* @gimp_pdb_status_type_get_type.type, align 8
  call void @gimp_type_set_translation_domain(i64 %1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i32 0, i32 0))
  %2 = load i64, i64* @gimp_pdb_status_type_get_type.type, align 8
  call void @gimp_type_set_translation_context(i64 %2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.395, i32 0, i32 0))
  %3 = load i64, i64* @gimp_pdb_status_type_get_type.type, align 8
  call void @gimp_enum_set_value_descriptions(i64 %3, %struct._GimpEnumDesc* getelementptr inbounds ([6 x %struct._GimpEnumDesc], [6 x %struct._GimpEnumDesc]* @gimp_pdb_status_type_get_type.descs, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i64, i64* @gimp_pdb_status_type_get_type.type, align 8
  ret i64 %4
}

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_message_handler_type_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_message_handler_type_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_enum_register_static(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.402, i32 0, i32 0), %struct._GEnumValue* getelementptr inbounds ([4 x %struct._GEnumValue], [4 x %struct._GEnumValue]* @gimp_message_handler_type_get_type.values, i32 0, i32 0))
  store i64 %call, i64* @gimp_message_handler_type_get_type.type, align 8
  %1 = load i64, i64* @gimp_message_handler_type_get_type.type, align 8
  call void @gimp_type_set_translation_domain(i64 %1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i32 0, i32 0))
  %2 = load i64, i64* @gimp_message_handler_type_get_type.type, align 8
  call void @gimp_type_set_translation_context(i64 %2, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.403, i32 0, i32 0))
  %3 = load i64, i64* @gimp_message_handler_type_get_type.type, align 8
  call void @gimp_enum_set_value_descriptions(i64 %3, %struct._GimpEnumDesc* getelementptr inbounds ([4 x %struct._GimpEnumDesc], [4 x %struct._GimpEnumDesc]* @gimp_message_handler_type_get_type.descs, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i64, i64* @gimp_message_handler_type_get_type.type, align 8
  ret i64 %4
}

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_stack_trace_mode_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_stack_trace_mode_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_enum_register_static(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.410, i32 0, i32 0), %struct._GEnumValue* getelementptr inbounds ([4 x %struct._GEnumValue], [4 x %struct._GEnumValue]* @gimp_stack_trace_mode_get_type.values, i32 0, i32 0))
  store i64 %call, i64* @gimp_stack_trace_mode_get_type.type, align 8
  %1 = load i64, i64* @gimp_stack_trace_mode_get_type.type, align 8
  call void @gimp_type_set_translation_domain(i64 %1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i32 0, i32 0))
  %2 = load i64, i64* @gimp_stack_trace_mode_get_type.type, align 8
  call void @gimp_type_set_translation_context(i64 %2, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.411, i32 0, i32 0))
  %3 = load i64, i64* @gimp_stack_trace_mode_get_type.type, align 8
  call void @gimp_enum_set_value_descriptions(i64 %3, %struct._GimpEnumDesc* getelementptr inbounds ([4 x %struct._GimpEnumDesc], [4 x %struct._GimpEnumDesc]* @gimp_stack_trace_mode_get_type.descs, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i64, i64* @gimp_stack_trace_mode_get_type.type, align 8
  ret i64 %4
}

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_progress_command_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_progress_command_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_enum_register_static(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.423, i32 0, i32 0), %struct._GEnumValue* getelementptr inbounds ([7 x %struct._GEnumValue], [7 x %struct._GEnumValue]* @gimp_progress_command_get_type.values, i32 0, i32 0))
  store i64 %call, i64* @gimp_progress_command_get_type.type, align 8
  %1 = load i64, i64* @gimp_progress_command_get_type.type, align 8
  call void @gimp_type_set_translation_domain(i64 %1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i32 0, i32 0))
  %2 = load i64, i64* @gimp_progress_command_get_type.type, align 8
  call void @gimp_type_set_translation_context(i64 %2, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.424, i32 0, i32 0))
  %3 = load i64, i64* @gimp_progress_command_get_type.type, align 8
  call void @gimp_enum_set_value_descriptions(i64 %3, %struct._GimpEnumDesc* getelementptr inbounds ([7 x %struct._GimpEnumDesc], [7 x %struct._GimpEnumDesc]* @gimp_progress_command_get_type.descs, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i64, i64* @gimp_progress_command_get_type.type, align 8
  ret i64 %4
}

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_text_direction_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_text_direction_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_enum_register_static(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.431, i32 0, i32 0), %struct._GEnumValue* getelementptr inbounds ([3 x %struct._GEnumValue], [3 x %struct._GEnumValue]* @gimp_text_direction_get_type.values, i32 0, i32 0))
  store i64 %call, i64* @gimp_text_direction_get_type.type, align 8
  %1 = load i64, i64* @gimp_text_direction_get_type.type, align 8
  call void @gimp_type_set_translation_domain(i64 %1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i32 0, i32 0))
  %2 = load i64, i64* @gimp_text_direction_get_type.type, align 8
  call void @gimp_type_set_translation_context(i64 %2, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.432, i32 0, i32 0))
  %3 = load i64, i64* @gimp_text_direction_get_type.type, align 8
  call void @gimp_enum_set_value_descriptions(i64 %3, %struct._GimpEnumDesc* getelementptr inbounds ([3 x %struct._GimpEnumDesc], [3 x %struct._GimpEnumDesc]* @gimp_text_direction_get_type.descs, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i64, i64* @gimp_text_direction_get_type.type, align 8
  ret i64 %4
}

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_text_hint_style_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_text_hint_style_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_enum_register_static(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.442, i32 0, i32 0), %struct._GEnumValue* getelementptr inbounds ([5 x %struct._GEnumValue], [5 x %struct._GEnumValue]* @gimp_text_hint_style_get_type.values, i32 0, i32 0))
  store i64 %call, i64* @gimp_text_hint_style_get_type.type, align 8
  %1 = load i64, i64* @gimp_text_hint_style_get_type.type, align 8
  call void @gimp_type_set_translation_domain(i64 %1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i32 0, i32 0))
  %2 = load i64, i64* @gimp_text_hint_style_get_type.type, align 8
  call void @gimp_type_set_translation_context(i64 %2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.443, i32 0, i32 0))
  %3 = load i64, i64* @gimp_text_hint_style_get_type.type, align 8
  call void @gimp_enum_set_value_descriptions(i64 %3, %struct._GimpEnumDesc* getelementptr inbounds ([5 x %struct._GimpEnumDesc], [5 x %struct._GimpEnumDesc]* @gimp_text_hint_style_get_type.descs, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i64, i64* @gimp_text_hint_style_get_type.type, align 8
  ret i64 %4
}

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_text_justification_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_text_justification_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_enum_register_static(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.456, i32 0, i32 0), %struct._GEnumValue* getelementptr inbounds ([5 x %struct._GEnumValue], [5 x %struct._GEnumValue]* @gimp_text_justification_get_type.values, i32 0, i32 0))
  store i64 %call, i64* @gimp_text_justification_get_type.type, align 8
  %1 = load i64, i64* @gimp_text_justification_get_type.type, align 8
  call void @gimp_type_set_translation_domain(i64 %1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i32 0, i32 0))
  %2 = load i64, i64* @gimp_text_justification_get_type.type, align 8
  call void @gimp_type_set_translation_context(i64 %2, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.457, i32 0, i32 0))
  %3 = load i64, i64* @gimp_text_justification_get_type.type, align 8
  call void @gimp_enum_set_value_descriptions(i64 %3, %struct._GimpEnumDesc* getelementptr inbounds ([5 x %struct._GimpEnumDesc], [5 x %struct._GimpEnumDesc]* @gimp_text_justification_get_type.descs, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i64, i64* @gimp_text_justification_get_type.type, align 8
  ret i64 %4
}

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_user_directory_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_user_directory_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_enum_register_static(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.474, i32 0, i32 0), %struct._GEnumValue* getelementptr inbounds ([9 x %struct._GEnumValue], [9 x %struct._GEnumValue]* @gimp_user_directory_get_type.values, i32 0, i32 0))
  store i64 %call, i64* @gimp_user_directory_get_type.type, align 8
  %1 = load i64, i64* @gimp_user_directory_get_type.type, align 8
  call void @gimp_type_set_translation_domain(i64 %1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i32 0, i32 0))
  %2 = load i64, i64* @gimp_user_directory_get_type.type, align 8
  call void @gimp_type_set_translation_context(i64 %2, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.475, i32 0, i32 0))
  %3 = load i64, i64* @gimp_user_directory_get_type.type, align 8
  call void @gimp_enum_set_value_descriptions(i64 %3, %struct._GimpEnumDesc* getelementptr inbounds ([9 x %struct._GimpEnumDesc], [9 x %struct._GimpEnumDesc]* @gimp_user_directory_get_type.descs, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i64, i64* @gimp_user_directory_get_type.type, align 8
  ret i64 %4
}

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_vectors_stroke_type_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_vectors_stroke_type_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_enum_register_static(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.478, i32 0, i32 0), %struct._GEnumValue* getelementptr inbounds ([2 x %struct._GEnumValue], [2 x %struct._GEnumValue]* @gimp_vectors_stroke_type_get_type.values, i32 0, i32 0))
  store i64 %call, i64* @gimp_vectors_stroke_type_get_type.type, align 8
  %1 = load i64, i64* @gimp_vectors_stroke_type_get_type.type, align 8
  call void @gimp_type_set_translation_domain(i64 %1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i32 0, i32 0))
  %2 = load i64, i64* @gimp_vectors_stroke_type_get_type.type, align 8
  call void @gimp_type_set_translation_context(i64 %2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.479, i32 0, i32 0))
  %3 = load i64, i64* @gimp_vectors_stroke_type_get_type.type, align 8
  call void @gimp_enum_set_value_descriptions(i64 %3, %struct._GimpEnumDesc* getelementptr inbounds ([2 x %struct._GimpEnumDesc], [2 x %struct._GimpEnumDesc]* @gimp_vectors_stroke_type_get_type.descs, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i64, i64* @gimp_vectors_stroke_type_get_type.type, align 8
  ret i64 %4
}

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
