; ModuleID = './app/widgets/widgets-enums.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GEnumValue = type { i32, i8*, i8* }
%struct._GimpEnumDesc = type { i32, i8*, i8* }

@gimp_active_color_get_type.values = internal constant [3 x %struct._GEnumValue] [%struct._GEnumValue { i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0) }, %struct._GEnumValue { i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0) }, %struct._GEnumValue zeroinitializer], align 16
@.str = private unnamed_addr constant [29 x i8] c"GIMP_ACTIVE_COLOR_FOREGROUND\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"foreground\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"GIMP_ACTIVE_COLOR_BACKGROUND\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"background\00", align 1
@gimp_active_color_get_type.descs = internal constant [3 x %struct._GimpEnumDesc] [%struct._GimpEnumDesc { i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc zeroinitializer], align 16
@.str.4 = private unnamed_addr constant [11 x i8] c"Foreground\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"Background\00", align 1
@gimp_active_color_get_type.type = internal global i64 0, align 8
@.str.6 = private unnamed_addr constant [16 x i8] c"GimpActiveColor\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"active-color\00", align 1
@gimp_color_dialog_state_get_type.values = internal constant [4 x %struct._GEnumValue] [%struct._GEnumValue { i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0) }, %struct._GEnumValue { i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0) }, %struct._GEnumValue { i32 2, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0) }, %struct._GEnumValue zeroinitializer], align 16
@.str.8 = private unnamed_addr constant [21 x i8] c"GIMP_COLOR_DIALOG_OK\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"ok\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"GIMP_COLOR_DIALOG_CANCEL\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"cancel\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"GIMP_COLOR_DIALOG_UPDATE\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"update\00", align 1
@gimp_color_dialog_state_get_type.descs = internal constant [4 x %struct._GimpEnumDesc] [%struct._GimpEnumDesc { i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 2, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc zeroinitializer], align 16
@gimp_color_dialog_state_get_type.type = internal global i64 0, align 8
@.str.14 = private unnamed_addr constant [21 x i8] c"GimpColorDialogState\00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"color-dialog-state\00", align 1
@gimp_color_frame_mode_get_type.values = internal constant [5 x %struct._GEnumValue] [%struct._GEnumValue { i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0) }, %struct._GEnumValue { i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i32 0, i32 0) }, %struct._GEnumValue { i32 2, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i32 0, i32 0) }, %struct._GEnumValue { i32 3, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i32 0, i32 0) }, %struct._GEnumValue zeroinitializer], align 16
@.str.16 = private unnamed_addr constant [28 x i8] c"GIMP_COLOR_FRAME_MODE_PIXEL\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"pixel\00", align 1
@.str.18 = private unnamed_addr constant [26 x i8] c"GIMP_COLOR_FRAME_MODE_RGB\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"rgb\00", align 1
@.str.20 = private unnamed_addr constant [26 x i8] c"GIMP_COLOR_FRAME_MODE_HSV\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"hsv\00", align 1
@.str.22 = private unnamed_addr constant [27 x i8] c"GIMP_COLOR_FRAME_MODE_CMYK\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"cmyk\00", align 1
@gimp_color_frame_mode_get_type.descs = internal constant [5 x %struct._GimpEnumDesc] [%struct._GimpEnumDesc { i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc zeroinitializer], align 16
@.str.24 = private unnamed_addr constant [6 x i8] c"Pixel\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"RGB\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"HSV\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"CMYK\00", align 1
@gimp_color_frame_mode_get_type.type = internal global i64 0, align 8
@.str.28 = private unnamed_addr constant [19 x i8] c"GimpColorFrameMode\00", align 1
@.str.29 = private unnamed_addr constant [17 x i8] c"color-frame-mode\00", align 1
@gimp_color_pick_mode_get_type.values = internal constant [5 x %struct._GEnumValue] [%struct._GEnumValue { i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i32 0, i32 0) }, %struct._GEnumValue { i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0) }, %struct._GEnumValue { i32 2, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0) }, %struct._GEnumValue { i32 3, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.35, i32 0, i32 0) }, %struct._GEnumValue zeroinitializer], align 16
@.str.30 = private unnamed_addr constant [26 x i8] c"GIMP_COLOR_PICK_MODE_NONE\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.32 = private unnamed_addr constant [32 x i8] c"GIMP_COLOR_PICK_MODE_FOREGROUND\00", align 1
@.str.33 = private unnamed_addr constant [32 x i8] c"GIMP_COLOR_PICK_MODE_BACKGROUND\00", align 1
@.str.34 = private unnamed_addr constant [29 x i8] c"GIMP_COLOR_PICK_MODE_PALETTE\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"palette\00", align 1
@gimp_color_pick_mode_get_type.descs = internal constant [5 x %struct._GimpEnumDesc] [%struct._GimpEnumDesc { i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.36, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.37, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 2, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.38, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 3, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.39, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc zeroinitializer], align 16
@.str.36 = private unnamed_addr constant [10 x i8] c"Pick only\00", align 1
@.str.37 = private unnamed_addr constant [21 x i8] c"Set foreground color\00", align 1
@.str.38 = private unnamed_addr constant [21 x i8] c"Set background color\00", align 1
@.str.39 = private unnamed_addr constant [15 x i8] c"Add to palette\00", align 1
@gimp_color_pick_mode_get_type.type = internal global i64 0, align 8
@.str.40 = private unnamed_addr constant [18 x i8] c"GimpColorPickMode\00", align 1
@.str.41 = private unnamed_addr constant [16 x i8] c"color-pick-mode\00", align 1
@gimp_color_pick_state_get_type.values = internal constant [3 x %struct._GEnumValue] [%struct._GEnumValue { i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.43, i32 0, i32 0) }, %struct._GEnumValue { i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0) }, %struct._GEnumValue zeroinitializer], align 16
@.str.42 = private unnamed_addr constant [26 x i8] c"GIMP_COLOR_PICK_STATE_NEW\00", align 1
@.str.43 = private unnamed_addr constant [4 x i8] c"new\00", align 1
@.str.44 = private unnamed_addr constant [29 x i8] c"GIMP_COLOR_PICK_STATE_UPDATE\00", align 1
@gimp_color_pick_state_get_type.descs = internal constant [3 x %struct._GimpEnumDesc] [%struct._GimpEnumDesc { i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.42, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.44, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc zeroinitializer], align 16
@gimp_color_pick_state_get_type.type = internal global i64 0, align 8
@.str.45 = private unnamed_addr constant [19 x i8] c"GimpColorPickState\00", align 1
@.str.46 = private unnamed_addr constant [17 x i8] c"color-pick-state\00", align 1
@gimp_histogram_scale_get_type.values = internal constant [3 x %struct._GEnumValue] [%struct._GEnumValue { i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.48, i32 0, i32 0) }, %struct._GEnumValue { i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.50, i32 0, i32 0) }, %struct._GEnumValue zeroinitializer], align 16
@.str.47 = private unnamed_addr constant [28 x i8] c"GIMP_HISTOGRAM_SCALE_LINEAR\00", align 1
@.str.48 = private unnamed_addr constant [7 x i8] c"linear\00", align 1
@.str.49 = private unnamed_addr constant [33 x i8] c"GIMP_HISTOGRAM_SCALE_LOGARITHMIC\00", align 1
@.str.50 = private unnamed_addr constant [12 x i8] c"logarithmic\00", align 1
@gimp_histogram_scale_get_type.descs = internal constant [3 x %struct._GimpEnumDesc] [%struct._GimpEnumDesc { i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.51, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.52, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc zeroinitializer], align 16
@.str.51 = private unnamed_addr constant [17 x i8] c"Linear histogram\00", align 1
@.str.52 = private unnamed_addr constant [22 x i8] c"Logarithmic histogram\00", align 1
@gimp_histogram_scale_get_type.type = internal global i64 0, align 8
@.str.53 = private unnamed_addr constant [19 x i8] c"GimpHistogramScale\00", align 1
@.str.54 = private unnamed_addr constant [16 x i8] c"histogram-scale\00", align 1
@gimp_tab_style_get_type.values = internal constant [11 x %struct._GEnumValue] [%struct._GEnumValue { i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.56, i32 0, i32 0) }, %struct._GEnumValue { i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.58, i32 0, i32 0) }, %struct._GEnumValue { i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.60, i32 0, i32 0) }, %struct._GEnumValue { i32 3, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.62, i32 0, i32 0) }, %struct._GEnumValue { i32 4, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.64, i32 0, i32 0) }, %struct._GEnumValue { i32 5, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.66, i32 0, i32 0) }, %struct._GEnumValue { i32 6, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.68, i32 0, i32 0) }, %struct._GEnumValue { i32 7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.70, i32 0, i32 0) }, %struct._GEnumValue { i32 8, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.72, i32 0, i32 0) }, %struct._GEnumValue { i32 9, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.73, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.74, i32 0, i32 0) }, %struct._GEnumValue zeroinitializer], align 16
@.str.55 = private unnamed_addr constant [20 x i8] c"GIMP_TAB_STYLE_ICON\00", align 1
@.str.56 = private unnamed_addr constant [5 x i8] c"icon\00", align 1
@.str.57 = private unnamed_addr constant [23 x i8] c"GIMP_TAB_STYLE_PREVIEW\00", align 1
@.str.58 = private unnamed_addr constant [8 x i8] c"preview\00", align 1
@.str.59 = private unnamed_addr constant [20 x i8] c"GIMP_TAB_STYLE_NAME\00", align 1
@.str.60 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.61 = private unnamed_addr constant [21 x i8] c"GIMP_TAB_STYLE_BLURB\00", align 1
@.str.62 = private unnamed_addr constant [6 x i8] c"blurb\00", align 1
@.str.63 = private unnamed_addr constant [25 x i8] c"GIMP_TAB_STYLE_ICON_NAME\00", align 1
@.str.64 = private unnamed_addr constant [10 x i8] c"icon-name\00", align 1
@.str.65 = private unnamed_addr constant [26 x i8] c"GIMP_TAB_STYLE_ICON_BLURB\00", align 1
@.str.66 = private unnamed_addr constant [11 x i8] c"icon-blurb\00", align 1
@.str.67 = private unnamed_addr constant [28 x i8] c"GIMP_TAB_STYLE_PREVIEW_NAME\00", align 1
@.str.68 = private unnamed_addr constant [13 x i8] c"preview-name\00", align 1
@.str.69 = private unnamed_addr constant [29 x i8] c"GIMP_TAB_STYLE_PREVIEW_BLURB\00", align 1
@.str.70 = private unnamed_addr constant [14 x i8] c"preview-blurb\00", align 1
@.str.71 = private unnamed_addr constant [25 x i8] c"GIMP_TAB_STYLE_UNDEFINED\00", align 1
@.str.72 = private unnamed_addr constant [10 x i8] c"undefined\00", align 1
@.str.73 = private unnamed_addr constant [25 x i8] c"GIMP_TAB_STYLE_AUTOMATIC\00", align 1
@.str.74 = private unnamed_addr constant [10 x i8] c"automatic\00", align 1
@gimp_tab_style_get_type.descs = internal constant [11 x %struct._GimpEnumDesc] [%struct._GimpEnumDesc { i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.75, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.76, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.77, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 3, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.78, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.79, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 5, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.80, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 6, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.81, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 7, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.82, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.83, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.84, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc zeroinitializer], align 16
@.str.75 = private unnamed_addr constant [5 x i8] c"Icon\00", align 1
@.str.76 = private unnamed_addr constant [15 x i8] c"Current status\00", align 1
@.str.77 = private unnamed_addr constant [5 x i8] c"Text\00", align 1
@.str.78 = private unnamed_addr constant [12 x i8] c"Description\00", align 1
@.str.79 = private unnamed_addr constant [12 x i8] c"Icon & text\00", align 1
@.str.80 = private unnamed_addr constant [12 x i8] c"Icon & desc\00", align 1
@.str.81 = private unnamed_addr constant [14 x i8] c"Status & text\00", align 1
@.str.82 = private unnamed_addr constant [14 x i8] c"Status & desc\00", align 1
@.str.83 = private unnamed_addr constant [10 x i8] c"Undefined\00", align 1
@.str.84 = private unnamed_addr constant [10 x i8] c"Automatic\00", align 1
@gimp_tab_style_get_type.type = internal global i64 0, align 8
@.str.85 = private unnamed_addr constant [13 x i8] c"GimpTabStyle\00", align 1
@.str.86 = private unnamed_addr constant [10 x i8] c"tab-style\00", align 1
@gimp_tag_entry_mode_get_type.values = internal constant [3 x %struct._GEnumValue] [%struct._GEnumValue { i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.87, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.88, i32 0, i32 0) }, %struct._GEnumValue { i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.89, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.90, i32 0, i32 0) }, %struct._GEnumValue zeroinitializer], align 16
@.str.87 = private unnamed_addr constant [26 x i8] c"GIMP_TAG_ENTRY_MODE_QUERY\00", align 1
@.str.88 = private unnamed_addr constant [6 x i8] c"query\00", align 1
@.str.89 = private unnamed_addr constant [27 x i8] c"GIMP_TAG_ENTRY_MODE_ASSIGN\00", align 1
@.str.90 = private unnamed_addr constant [7 x i8] c"assign\00", align 1
@gimp_tag_entry_mode_get_type.descs = internal constant [3 x %struct._GimpEnumDesc] [%struct._GimpEnumDesc { i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.87, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.89, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc zeroinitializer], align 16
@gimp_tag_entry_mode_get_type.type = internal global i64 0, align 8
@.str.91 = private unnamed_addr constant [17 x i8] c"GimpTagEntryMode\00", align 1
@.str.92 = private unnamed_addr constant [15 x i8] c"tag-entry-mode\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_active_color_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_active_color_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_enum_register_static(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0), %struct._GEnumValue* getelementptr inbounds ([3 x %struct._GEnumValue], [3 x %struct._GEnumValue]* @gimp_active_color_get_type.values, i32 0, i32 0))
  store i64 %call, i64* @gimp_active_color_get_type.type, align 8
  %1 = load i64, i64* @gimp_active_color_get_type.type, align 8
  call void @gimp_type_set_translation_context(i64 %1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0))
  %2 = load i64, i64* @gimp_active_color_get_type.type, align 8
  call void @gimp_enum_set_value_descriptions(i64 %2, %struct._GimpEnumDesc* getelementptr inbounds ([3 x %struct._GimpEnumDesc], [3 x %struct._GimpEnumDesc]* @gimp_active_color_get_type.descs, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i64, i64* @gimp_active_color_get_type.type, align 8
  ret i64 %3
}

declare i64 @g_enum_register_static(i8*, %struct._GEnumValue*) #1

declare void @gimp_type_set_translation_context(i64, i8*) #1

declare void @gimp_enum_set_value_descriptions(i64, %struct._GimpEnumDesc*) #1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_color_dialog_state_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_color_dialog_state_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_enum_register_static(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i32 0, i32 0), %struct._GEnumValue* getelementptr inbounds ([4 x %struct._GEnumValue], [4 x %struct._GEnumValue]* @gimp_color_dialog_state_get_type.values, i32 0, i32 0))
  store i64 %call, i64* @gimp_color_dialog_state_get_type.type, align 8
  %1 = load i64, i64* @gimp_color_dialog_state_get_type.type, align 8
  call void @gimp_type_set_translation_context(i64 %1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i32 0, i32 0))
  %2 = load i64, i64* @gimp_color_dialog_state_get_type.type, align 8
  call void @gimp_enum_set_value_descriptions(i64 %2, %struct._GimpEnumDesc* getelementptr inbounds ([4 x %struct._GimpEnumDesc], [4 x %struct._GimpEnumDesc]* @gimp_color_dialog_state_get_type.descs, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i64, i64* @gimp_color_dialog_state_get_type.type, align 8
  ret i64 %3
}

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_color_frame_mode_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_color_frame_mode_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_enum_register_static(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.28, i32 0, i32 0), %struct._GEnumValue* getelementptr inbounds ([5 x %struct._GEnumValue], [5 x %struct._GEnumValue]* @gimp_color_frame_mode_get_type.values, i32 0, i32 0))
  store i64 %call, i64* @gimp_color_frame_mode_get_type.type, align 8
  %1 = load i64, i64* @gimp_color_frame_mode_get_type.type, align 8
  call void @gimp_type_set_translation_context(i64 %1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.29, i32 0, i32 0))
  %2 = load i64, i64* @gimp_color_frame_mode_get_type.type, align 8
  call void @gimp_enum_set_value_descriptions(i64 %2, %struct._GimpEnumDesc* getelementptr inbounds ([5 x %struct._GimpEnumDesc], [5 x %struct._GimpEnumDesc]* @gimp_color_frame_mode_get_type.descs, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i64, i64* @gimp_color_frame_mode_get_type.type, align 8
  ret i64 %3
}

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_color_pick_mode_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_color_pick_mode_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_enum_register_static(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.40, i32 0, i32 0), %struct._GEnumValue* getelementptr inbounds ([5 x %struct._GEnumValue], [5 x %struct._GEnumValue]* @gimp_color_pick_mode_get_type.values, i32 0, i32 0))
  store i64 %call, i64* @gimp_color_pick_mode_get_type.type, align 8
  %1 = load i64, i64* @gimp_color_pick_mode_get_type.type, align 8
  call void @gimp_type_set_translation_context(i64 %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.41, i32 0, i32 0))
  %2 = load i64, i64* @gimp_color_pick_mode_get_type.type, align 8
  call void @gimp_enum_set_value_descriptions(i64 %2, %struct._GimpEnumDesc* getelementptr inbounds ([5 x %struct._GimpEnumDesc], [5 x %struct._GimpEnumDesc]* @gimp_color_pick_mode_get_type.descs, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i64, i64* @gimp_color_pick_mode_get_type.type, align 8
  ret i64 %3
}

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_color_pick_state_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_color_pick_state_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_enum_register_static(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.45, i32 0, i32 0), %struct._GEnumValue* getelementptr inbounds ([3 x %struct._GEnumValue], [3 x %struct._GEnumValue]* @gimp_color_pick_state_get_type.values, i32 0, i32 0))
  store i64 %call, i64* @gimp_color_pick_state_get_type.type, align 8
  %1 = load i64, i64* @gimp_color_pick_state_get_type.type, align 8
  call void @gimp_type_set_translation_context(i64 %1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.46, i32 0, i32 0))
  %2 = load i64, i64* @gimp_color_pick_state_get_type.type, align 8
  call void @gimp_enum_set_value_descriptions(i64 %2, %struct._GimpEnumDesc* getelementptr inbounds ([3 x %struct._GimpEnumDesc], [3 x %struct._GimpEnumDesc]* @gimp_color_pick_state_get_type.descs, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i64, i64* @gimp_color_pick_state_get_type.type, align 8
  ret i64 %3
}

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_histogram_scale_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_histogram_scale_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_enum_register_static(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.53, i32 0, i32 0), %struct._GEnumValue* getelementptr inbounds ([3 x %struct._GEnumValue], [3 x %struct._GEnumValue]* @gimp_histogram_scale_get_type.values, i32 0, i32 0))
  store i64 %call, i64* @gimp_histogram_scale_get_type.type, align 8
  %1 = load i64, i64* @gimp_histogram_scale_get_type.type, align 8
  call void @gimp_type_set_translation_context(i64 %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.54, i32 0, i32 0))
  %2 = load i64, i64* @gimp_histogram_scale_get_type.type, align 8
  call void @gimp_enum_set_value_descriptions(i64 %2, %struct._GimpEnumDesc* getelementptr inbounds ([3 x %struct._GimpEnumDesc], [3 x %struct._GimpEnumDesc]* @gimp_histogram_scale_get_type.descs, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i64, i64* @gimp_histogram_scale_get_type.type, align 8
  ret i64 %3
}

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_tab_style_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_tab_style_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_enum_register_static(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.85, i32 0, i32 0), %struct._GEnumValue* getelementptr inbounds ([11 x %struct._GEnumValue], [11 x %struct._GEnumValue]* @gimp_tab_style_get_type.values, i32 0, i32 0))
  store i64 %call, i64* @gimp_tab_style_get_type.type, align 8
  %1 = load i64, i64* @gimp_tab_style_get_type.type, align 8
  call void @gimp_type_set_translation_context(i64 %1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.86, i32 0, i32 0))
  %2 = load i64, i64* @gimp_tab_style_get_type.type, align 8
  call void @gimp_enum_set_value_descriptions(i64 %2, %struct._GimpEnumDesc* getelementptr inbounds ([11 x %struct._GimpEnumDesc], [11 x %struct._GimpEnumDesc]* @gimp_tab_style_get_type.descs, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i64, i64* @gimp_tab_style_get_type.type, align 8
  ret i64 %3
}

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_tag_entry_mode_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_tag_entry_mode_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_enum_register_static(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.91, i32 0, i32 0), %struct._GEnumValue* getelementptr inbounds ([3 x %struct._GEnumValue], [3 x %struct._GEnumValue]* @gimp_tag_entry_mode_get_type.values, i32 0, i32 0))
  store i64 %call, i64* @gimp_tag_entry_mode_get_type.type, align 8
  %1 = load i64, i64* @gimp_tag_entry_mode_get_type.type, align 8
  call void @gimp_type_set_translation_context(i64 %1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.92, i32 0, i32 0))
  %2 = load i64, i64* @gimp_tag_entry_mode_get_type.type, align 8
  call void @gimp_enum_set_value_descriptions(i64 %2, %struct._GimpEnumDesc* getelementptr inbounds ([3 x %struct._GimpEnumDesc], [3 x %struct._GimpEnumDesc]* @gimp_tag_entry_mode_get_type.descs, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i64, i64* @gimp_tag_entry_mode_get_type.type, align 8
  ret i64 %3
}

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
