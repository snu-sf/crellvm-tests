; ModuleID = './app/tools/tools-enums.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GEnumValue = type { i32, i8*, i8* }
%struct._GimpEnumDesc = type { i32, i8*, i8* }

@gimp_button_press_type_get_type.values = internal constant [4 x %struct._GEnumValue] [%struct._GEnumValue { i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0) }, %struct._GEnumValue { i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0) }, %struct._GEnumValue { i32 2, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0) }, %struct._GEnumValue zeroinitializer], align 16
@.str = private unnamed_addr constant [25 x i8] c"GIMP_BUTTON_PRESS_NORMAL\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"normal\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"GIMP_BUTTON_PRESS_DOUBLE\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"GIMP_BUTTON_PRESS_TRIPLE\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"triple\00", align 1
@gimp_button_press_type_get_type.descs = internal constant [4 x %struct._GimpEnumDesc] [%struct._GimpEnumDesc { i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 2, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc zeroinitializer], align 16
@gimp_button_press_type_get_type.type = internal global i64 0, align 8
@.str.6 = private unnamed_addr constant [20 x i8] c"GimpButtonPressType\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"button-press-type\00", align 1
@gimp_button_release_type_get_type.values = internal constant [5 x %struct._GEnumValue] [%struct._GEnumValue { i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0) }, %struct._GEnumValue { i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0) }, %struct._GEnumValue { i32 2, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0) }, %struct._GEnumValue { i32 3, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0) }, %struct._GEnumValue zeroinitializer], align 16
@.str.8 = private unnamed_addr constant [27 x i8] c"GIMP_BUTTON_RELEASE_NORMAL\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"GIMP_BUTTON_RELEASE_CANCEL\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"cancel\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"GIMP_BUTTON_RELEASE_CLICK\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"click\00", align 1
@.str.13 = private unnamed_addr constant [30 x i8] c"GIMP_BUTTON_RELEASE_NO_MOTION\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"no-motion\00", align 1
@gimp_button_release_type_get_type.descs = internal constant [5 x %struct._GimpEnumDesc] [%struct._GimpEnumDesc { i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 2, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 3, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.13, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc zeroinitializer], align 16
@gimp_button_release_type_get_type.type = internal global i64 0, align 8
@.str.15 = private unnamed_addr constant [22 x i8] c"GimpButtonReleaseType\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"button-release-type\00", align 1
@gimp_rectangle_constraint_get_type.values = internal constant [4 x %struct._GEnumValue] [%struct._GEnumValue { i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i32 0, i32 0) }, %struct._GEnumValue { i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0) }, %struct._GEnumValue { i32 2, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i32 0, i32 0) }, %struct._GEnumValue zeroinitializer], align 16
@.str.17 = private unnamed_addr constant [30 x i8] c"GIMP_RECTANGLE_CONSTRAIN_NONE\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.19 = private unnamed_addr constant [31 x i8] c"GIMP_RECTANGLE_CONSTRAIN_IMAGE\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.21 = private unnamed_addr constant [34 x i8] c"GIMP_RECTANGLE_CONSTRAIN_DRAWABLE\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"drawable\00", align 1
@gimp_rectangle_constraint_get_type.descs = internal constant [4 x %struct._GimpEnumDesc] [%struct._GimpEnumDesc { i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.17, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.19, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 2, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.21, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc zeroinitializer], align 16
@gimp_rectangle_constraint_get_type.type = internal global i64 0, align 8
@.str.23 = private unnamed_addr constant [24 x i8] c"GimpRectangleConstraint\00", align 1
@.str.24 = private unnamed_addr constant [21 x i8] c"rectangle-constraint\00", align 1
@gimp_rectangle_precision_get_type.values = internal constant [3 x %struct._GEnumValue] [%struct._GEnumValue { i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i32 0, i32 0) }, %struct._GEnumValue { i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0) }, %struct._GEnumValue zeroinitializer], align 16
@.str.25 = private unnamed_addr constant [29 x i8] c"GIMP_RECTANGLE_PRECISION_INT\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.27 = private unnamed_addr constant [32 x i8] c"GIMP_RECTANGLE_PRECISION_DOUBLE\00", align 1
@gimp_rectangle_precision_get_type.descs = internal constant [3 x %struct._GimpEnumDesc] [%struct._GimpEnumDesc { i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.25, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.27, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc zeroinitializer], align 16
@gimp_rectangle_precision_get_type.type = internal global i64 0, align 8
@.str.28 = private unnamed_addr constant [23 x i8] c"GimpRectanglePrecision\00", align 1
@.str.29 = private unnamed_addr constant [20 x i8] c"rectangle-precision\00", align 1
@gimp_rectangle_tool_fixed_rule_get_type.values = internal constant [5 x %struct._GEnumValue] [%struct._GEnumValue { i32 0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i32 0, i32 0) }, %struct._GEnumValue { i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i32 0, i32 0) }, %struct._GEnumValue { i32 2, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.35, i32 0, i32 0) }, %struct._GEnumValue { i32 3, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i32 0, i32 0) }, %struct._GEnumValue zeroinitializer], align 16
@.str.30 = private unnamed_addr constant [33 x i8] c"GIMP_RECTANGLE_TOOL_FIXED_ASPECT\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"aspect\00", align 1
@.str.32 = private unnamed_addr constant [32 x i8] c"GIMP_RECTANGLE_TOOL_FIXED_WIDTH\00", align 1
@.str.33 = private unnamed_addr constant [6 x i8] c"width\00", align 1
@.str.34 = private unnamed_addr constant [33 x i8] c"GIMP_RECTANGLE_TOOL_FIXED_HEIGHT\00", align 1
@.str.35 = private unnamed_addr constant [7 x i8] c"height\00", align 1
@.str.36 = private unnamed_addr constant [31 x i8] c"GIMP_RECTANGLE_TOOL_FIXED_SIZE\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@gimp_rectangle_tool_fixed_rule_get_type.descs = internal constant [5 x %struct._GimpEnumDesc] [%struct._GimpEnumDesc { i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.38, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.39, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.41, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc zeroinitializer], align 16
@.str.38 = private unnamed_addr constant [13 x i8] c"Aspect ratio\00", align 1
@.str.39 = private unnamed_addr constant [6 x i8] c"Width\00", align 1
@.str.40 = private unnamed_addr constant [7 x i8] c"Height\00", align 1
@.str.41 = private unnamed_addr constant [5 x i8] c"Size\00", align 1
@gimp_rectangle_tool_fixed_rule_get_type.type = internal global i64 0, align 8
@.str.42 = private unnamed_addr constant [27 x i8] c"GimpRectangleToolFixedRule\00", align 1
@.str.43 = private unnamed_addr constant [26 x i8] c"rectangle-tool-fixed-rule\00", align 1
@gimp_rect_select_mode_get_type.values = internal constant [4 x %struct._GEnumValue] [%struct._GEnumValue { i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i32 0, i32 0) }, %struct._GEnumValue { i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.47, i32 0, i32 0) }, %struct._GEnumValue { i32 2, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.49, i32 0, i32 0) }, %struct._GEnumValue zeroinitializer], align 16
@.str.44 = private unnamed_addr constant [27 x i8] c"GIMP_RECT_SELECT_MODE_FREE\00", align 1
@.str.45 = private unnamed_addr constant [5 x i8] c"free\00", align 1
@.str.46 = private unnamed_addr constant [33 x i8] c"GIMP_RECT_SELECT_MODE_FIXED_SIZE\00", align 1
@.str.47 = private unnamed_addr constant [11 x i8] c"fixed-size\00", align 1
@.str.48 = private unnamed_addr constant [34 x i8] c"GIMP_RECT_SELECT_MODE_FIXED_RATIO\00", align 1
@.str.49 = private unnamed_addr constant [12 x i8] c"fixed-ratio\00", align 1
@gimp_rect_select_mode_get_type.descs = internal constant [4 x %struct._GimpEnumDesc] [%struct._GimpEnumDesc { i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.50, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.51, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 2, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.52, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc zeroinitializer], align 16
@.str.50 = private unnamed_addr constant [12 x i8] c"Free select\00", align 1
@.str.51 = private unnamed_addr constant [11 x i8] c"Fixed size\00", align 1
@.str.52 = private unnamed_addr constant [19 x i8] c"Fixed aspect ratio\00", align 1
@gimp_rect_select_mode_get_type.type = internal global i64 0, align 8
@.str.53 = private unnamed_addr constant [19 x i8] c"GimpRectSelectMode\00", align 1
@.str.54 = private unnamed_addr constant [17 x i8] c"rect-select-mode\00", align 1
@gimp_transform_type_get_type.values = internal constant [4 x %struct._GEnumValue] [%struct._GEnumValue { i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.56, i32 0, i32 0) }, %struct._GEnumValue { i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.58, i32 0, i32 0) }, %struct._GEnumValue { i32 2, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.60, i32 0, i32 0) }, %struct._GEnumValue zeroinitializer], align 16
@.str.55 = private unnamed_addr constant [26 x i8] c"GIMP_TRANSFORM_TYPE_LAYER\00", align 1
@.str.56 = private unnamed_addr constant [6 x i8] c"layer\00", align 1
@.str.57 = private unnamed_addr constant [30 x i8] c"GIMP_TRANSFORM_TYPE_SELECTION\00", align 1
@.str.58 = private unnamed_addr constant [10 x i8] c"selection\00", align 1
@.str.59 = private unnamed_addr constant [25 x i8] c"GIMP_TRANSFORM_TYPE_PATH\00", align 1
@.str.60 = private unnamed_addr constant [5 x i8] c"path\00", align 1
@gimp_transform_type_get_type.descs = internal constant [4 x %struct._GimpEnumDesc] [%struct._GimpEnumDesc { i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.61, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.63, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc zeroinitializer], align 16
@.str.61 = private unnamed_addr constant [6 x i8] c"Layer\00", align 1
@.str.62 = private unnamed_addr constant [10 x i8] c"Selection\00", align 1
@.str.63 = private unnamed_addr constant [5 x i8] c"Path\00", align 1
@gimp_transform_type_get_type.type = internal global i64 0, align 8
@.str.64 = private unnamed_addr constant [18 x i8] c"GimpTransformType\00", align 1
@.str.65 = private unnamed_addr constant [15 x i8] c"transform-type\00", align 1
@gimp_vector_mode_get_type.values = internal constant [4 x %struct._GEnumValue] [%struct._GEnumValue { i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.67, i32 0, i32 0) }, %struct._GEnumValue { i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.69, i32 0, i32 0) }, %struct._GEnumValue { i32 2, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.71, i32 0, i32 0) }, %struct._GEnumValue zeroinitializer], align 16
@.str.66 = private unnamed_addr constant [24 x i8] c"GIMP_VECTOR_MODE_DESIGN\00", align 1
@.str.67 = private unnamed_addr constant [7 x i8] c"design\00", align 1
@.str.68 = private unnamed_addr constant [22 x i8] c"GIMP_VECTOR_MODE_EDIT\00", align 1
@.str.69 = private unnamed_addr constant [5 x i8] c"edit\00", align 1
@.str.70 = private unnamed_addr constant [22 x i8] c"GIMP_VECTOR_MODE_MOVE\00", align 1
@.str.71 = private unnamed_addr constant [5 x i8] c"move\00", align 1
@gimp_vector_mode_get_type.descs = internal constant [4 x %struct._GimpEnumDesc] [%struct._GimpEnumDesc { i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.72, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.73, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.74, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc zeroinitializer], align 16
@.str.72 = private unnamed_addr constant [7 x i8] c"Design\00", align 1
@.str.73 = private unnamed_addr constant [5 x i8] c"Edit\00", align 1
@.str.74 = private unnamed_addr constant [5 x i8] c"Move\00", align 1
@gimp_vector_mode_get_type.type = internal global i64 0, align 8
@.str.75 = private unnamed_addr constant [15 x i8] c"GimpVectorMode\00", align 1
@.str.76 = private unnamed_addr constant [12 x i8] c"vector-mode\00", align 1
@gimp_tool_action_get_type.values = internal constant [4 x %struct._GEnumValue] [%struct._GEnumValue { i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.77, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.78, i32 0, i32 0) }, %struct._GEnumValue { i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.79, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.80, i32 0, i32 0) }, %struct._GEnumValue { i32 2, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.81, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.82, i32 0, i32 0) }, %struct._GEnumValue zeroinitializer], align 16
@.str.77 = private unnamed_addr constant [23 x i8] c"GIMP_TOOL_ACTION_PAUSE\00", align 1
@.str.78 = private unnamed_addr constant [6 x i8] c"pause\00", align 1
@.str.79 = private unnamed_addr constant [24 x i8] c"GIMP_TOOL_ACTION_RESUME\00", align 1
@.str.80 = private unnamed_addr constant [7 x i8] c"resume\00", align 1
@.str.81 = private unnamed_addr constant [22 x i8] c"GIMP_TOOL_ACTION_HALT\00", align 1
@.str.82 = private unnamed_addr constant [5 x i8] c"halt\00", align 1
@gimp_tool_action_get_type.descs = internal constant [4 x %struct._GimpEnumDesc] [%struct._GimpEnumDesc { i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.77, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.79, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 2, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.81, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc zeroinitializer], align 16
@gimp_tool_action_get_type.type = internal global i64 0, align 8
@.str.83 = private unnamed_addr constant [15 x i8] c"GimpToolAction\00", align 1
@.str.84 = private unnamed_addr constant [12 x i8] c"tool-action\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_button_press_type_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_button_press_type_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_enum_register_static(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0), %struct._GEnumValue* getelementptr inbounds ([4 x %struct._GEnumValue], [4 x %struct._GEnumValue]* @gimp_button_press_type_get_type.values, i32 0, i32 0))
  store i64 %call, i64* @gimp_button_press_type_get_type.type, align 8
  %1 = load i64, i64* @gimp_button_press_type_get_type.type, align 8
  call void @gimp_type_set_translation_context(i64 %1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i32 0, i32 0))
  %2 = load i64, i64* @gimp_button_press_type_get_type.type, align 8
  call void @gimp_enum_set_value_descriptions(i64 %2, %struct._GimpEnumDesc* getelementptr inbounds ([4 x %struct._GimpEnumDesc], [4 x %struct._GimpEnumDesc]* @gimp_button_press_type_get_type.descs, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i64, i64* @gimp_button_press_type_get_type.type, align 8
  ret i64 %3
}

declare i64 @g_enum_register_static(i8*, %struct._GEnumValue*) #1

declare void @gimp_type_set_translation_context(i64, i8*) #1

declare void @gimp_enum_set_value_descriptions(i64, %struct._GimpEnumDesc*) #1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_button_release_type_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_button_release_type_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_enum_register_static(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15, i32 0, i32 0), %struct._GEnumValue* getelementptr inbounds ([5 x %struct._GEnumValue], [5 x %struct._GEnumValue]* @gimp_button_release_type_get_type.values, i32 0, i32 0))
  store i64 %call, i64* @gimp_button_release_type_get_type.type, align 8
  %1 = load i64, i64* @gimp_button_release_type_get_type.type, align 8
  call void @gimp_type_set_translation_context(i64 %1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i32 0, i32 0))
  %2 = load i64, i64* @gimp_button_release_type_get_type.type, align 8
  call void @gimp_enum_set_value_descriptions(i64 %2, %struct._GimpEnumDesc* getelementptr inbounds ([5 x %struct._GimpEnumDesc], [5 x %struct._GimpEnumDesc]* @gimp_button_release_type_get_type.descs, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i64, i64* @gimp_button_release_type_get_type.type, align 8
  ret i64 %3
}

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_rectangle_constraint_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_rectangle_constraint_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_enum_register_static(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.23, i32 0, i32 0), %struct._GEnumValue* getelementptr inbounds ([4 x %struct._GEnumValue], [4 x %struct._GEnumValue]* @gimp_rectangle_constraint_get_type.values, i32 0, i32 0))
  store i64 %call, i64* @gimp_rectangle_constraint_get_type.type, align 8
  %1 = load i64, i64* @gimp_rectangle_constraint_get_type.type, align 8
  call void @gimp_type_set_translation_context(i64 %1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.24, i32 0, i32 0))
  %2 = load i64, i64* @gimp_rectangle_constraint_get_type.type, align 8
  call void @gimp_enum_set_value_descriptions(i64 %2, %struct._GimpEnumDesc* getelementptr inbounds ([4 x %struct._GimpEnumDesc], [4 x %struct._GimpEnumDesc]* @gimp_rectangle_constraint_get_type.descs, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i64, i64* @gimp_rectangle_constraint_get_type.type, align 8
  ret i64 %3
}

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_rectangle_precision_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_rectangle_precision_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_enum_register_static(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.28, i32 0, i32 0), %struct._GEnumValue* getelementptr inbounds ([3 x %struct._GEnumValue], [3 x %struct._GEnumValue]* @gimp_rectangle_precision_get_type.values, i32 0, i32 0))
  store i64 %call, i64* @gimp_rectangle_precision_get_type.type, align 8
  %1 = load i64, i64* @gimp_rectangle_precision_get_type.type, align 8
  call void @gimp_type_set_translation_context(i64 %1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.29, i32 0, i32 0))
  %2 = load i64, i64* @gimp_rectangle_precision_get_type.type, align 8
  call void @gimp_enum_set_value_descriptions(i64 %2, %struct._GimpEnumDesc* getelementptr inbounds ([3 x %struct._GimpEnumDesc], [3 x %struct._GimpEnumDesc]* @gimp_rectangle_precision_get_type.descs, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i64, i64* @gimp_rectangle_precision_get_type.type, align 8
  ret i64 %3
}

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_rectangle_tool_fixed_rule_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_rectangle_tool_fixed_rule_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_enum_register_static(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.42, i32 0, i32 0), %struct._GEnumValue* getelementptr inbounds ([5 x %struct._GEnumValue], [5 x %struct._GEnumValue]* @gimp_rectangle_tool_fixed_rule_get_type.values, i32 0, i32 0))
  store i64 %call, i64* @gimp_rectangle_tool_fixed_rule_get_type.type, align 8
  %1 = load i64, i64* @gimp_rectangle_tool_fixed_rule_get_type.type, align 8
  call void @gimp_type_set_translation_context(i64 %1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.43, i32 0, i32 0))
  %2 = load i64, i64* @gimp_rectangle_tool_fixed_rule_get_type.type, align 8
  call void @gimp_enum_set_value_descriptions(i64 %2, %struct._GimpEnumDesc* getelementptr inbounds ([5 x %struct._GimpEnumDesc], [5 x %struct._GimpEnumDesc]* @gimp_rectangle_tool_fixed_rule_get_type.descs, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i64, i64* @gimp_rectangle_tool_fixed_rule_get_type.type, align 8
  ret i64 %3
}

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_rect_select_mode_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_rect_select_mode_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_enum_register_static(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.53, i32 0, i32 0), %struct._GEnumValue* getelementptr inbounds ([4 x %struct._GEnumValue], [4 x %struct._GEnumValue]* @gimp_rect_select_mode_get_type.values, i32 0, i32 0))
  store i64 %call, i64* @gimp_rect_select_mode_get_type.type, align 8
  %1 = load i64, i64* @gimp_rect_select_mode_get_type.type, align 8
  call void @gimp_type_set_translation_context(i64 %1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.54, i32 0, i32 0))
  %2 = load i64, i64* @gimp_rect_select_mode_get_type.type, align 8
  call void @gimp_enum_set_value_descriptions(i64 %2, %struct._GimpEnumDesc* getelementptr inbounds ([4 x %struct._GimpEnumDesc], [4 x %struct._GimpEnumDesc]* @gimp_rect_select_mode_get_type.descs, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i64, i64* @gimp_rect_select_mode_get_type.type, align 8
  ret i64 %3
}

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_transform_type_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_transform_type_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_enum_register_static(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.64, i32 0, i32 0), %struct._GEnumValue* getelementptr inbounds ([4 x %struct._GEnumValue], [4 x %struct._GEnumValue]* @gimp_transform_type_get_type.values, i32 0, i32 0))
  store i64 %call, i64* @gimp_transform_type_get_type.type, align 8
  %1 = load i64, i64* @gimp_transform_type_get_type.type, align 8
  call void @gimp_type_set_translation_context(i64 %1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.65, i32 0, i32 0))
  %2 = load i64, i64* @gimp_transform_type_get_type.type, align 8
  call void @gimp_enum_set_value_descriptions(i64 %2, %struct._GimpEnumDesc* getelementptr inbounds ([4 x %struct._GimpEnumDesc], [4 x %struct._GimpEnumDesc]* @gimp_transform_type_get_type.descs, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i64, i64* @gimp_transform_type_get_type.type, align 8
  ret i64 %3
}

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_vector_mode_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_vector_mode_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_enum_register_static(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.75, i32 0, i32 0), %struct._GEnumValue* getelementptr inbounds ([4 x %struct._GEnumValue], [4 x %struct._GEnumValue]* @gimp_vector_mode_get_type.values, i32 0, i32 0))
  store i64 %call, i64* @gimp_vector_mode_get_type.type, align 8
  %1 = load i64, i64* @gimp_vector_mode_get_type.type, align 8
  call void @gimp_type_set_translation_context(i64 %1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.76, i32 0, i32 0))
  %2 = load i64, i64* @gimp_vector_mode_get_type.type, align 8
  call void @gimp_enum_set_value_descriptions(i64 %2, %struct._GimpEnumDesc* getelementptr inbounds ([4 x %struct._GimpEnumDesc], [4 x %struct._GimpEnumDesc]* @gimp_vector_mode_get_type.descs, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i64, i64* @gimp_vector_mode_get_type.type, align 8
  ret i64 %3
}

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_tool_action_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_tool_action_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_enum_register_static(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.83, i32 0, i32 0), %struct._GEnumValue* getelementptr inbounds ([4 x %struct._GEnumValue], [4 x %struct._GEnumValue]* @gimp_tool_action_get_type.values, i32 0, i32 0))
  store i64 %call, i64* @gimp_tool_action_get_type.type, align 8
  %1 = load i64, i64* @gimp_tool_action_get_type.type, align 8
  call void @gimp_type_set_translation_context(i64 %1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.84, i32 0, i32 0))
  %2 = load i64, i64* @gimp_tool_action_get_type.type, align 8
  call void @gimp_enum_set_value_descriptions(i64 %2, %struct._GimpEnumDesc* getelementptr inbounds ([4 x %struct._GimpEnumDesc], [4 x %struct._GimpEnumDesc]* @gimp_tool_action_get_type.descs, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i64, i64* @gimp_tool_action_get_type.type, align 8
  ret i64 %3
}

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
