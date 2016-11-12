; ModuleID = './app/config/config-enums.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GEnumValue = type { i32, i8*, i8* }
%struct._GimpEnumDesc = type { i32, i8*, i8* }

@gimp_cursor_mode_get_type.values = internal constant [4 x %struct._GEnumValue] [%struct._GEnumValue { i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0) }, %struct._GEnumValue { i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0) }, %struct._GEnumValue { i32 2, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0) }, %struct._GEnumValue zeroinitializer], align 16
@.str = private unnamed_addr constant [27 x i8] c"GIMP_CURSOR_MODE_TOOL_ICON\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"tool-icon\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"GIMP_CURSOR_MODE_TOOL_CROSSHAIR\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"tool-crosshair\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"GIMP_CURSOR_MODE_CROSSHAIR\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"crosshair\00", align 1
@gimp_cursor_mode_get_type.descs = internal constant [4 x %struct._GimpEnumDesc] [%struct._GimpEnumDesc { i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 2, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc zeroinitializer], align 16
@.str.6 = private unnamed_addr constant [10 x i8] c"Tool icon\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"Tool icon with crosshair\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"Crosshair only\00", align 1
@gimp_cursor_mode_get_type.type = internal global i64 0, align 8
@.str.9 = private unnamed_addr constant [15 x i8] c"GimpCursorMode\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"cursor-mode\00", align 1
@gimp_canvas_padding_mode_get_type.values = internal constant [5 x %struct._GEnumValue] [%struct._GEnumValue { i32 0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0) }, %struct._GEnumValue { i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i32 0, i32 0) }, %struct._GEnumValue { i32 2, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i32 0, i32 0) }, %struct._GEnumValue { i32 3, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i32 0, i32 0) }, %struct._GEnumValue zeroinitializer], align 16
@.str.11 = private unnamed_addr constant [33 x i8] c"GIMP_CANVAS_PADDING_MODE_DEFAULT\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.13 = private unnamed_addr constant [37 x i8] c"GIMP_CANVAS_PADDING_MODE_LIGHT_CHECK\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"light-check\00", align 1
@.str.15 = private unnamed_addr constant [36 x i8] c"GIMP_CANVAS_PADDING_MODE_DARK_CHECK\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"dark-check\00", align 1
@.str.17 = private unnamed_addr constant [32 x i8] c"GIMP_CANVAS_PADDING_MODE_CUSTOM\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"custom\00", align 1
@gimp_canvas_padding_mode_get_type.descs = internal constant [5 x %struct._GimpEnumDesc] [%struct._GimpEnumDesc { i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.20, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 2, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.21, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 3, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc zeroinitializer], align 16
@.str.19 = private unnamed_addr constant [11 x i8] c"From theme\00", align 1
@.str.20 = private unnamed_addr constant [18 x i8] c"Light check color\00", align 1
@.str.21 = private unnamed_addr constant [17 x i8] c"Dark check color\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"Custom color\00", align 1
@gimp_canvas_padding_mode_get_type.type = internal global i64 0, align 8
@.str.23 = private unnamed_addr constant [22 x i8] c"GimpCanvasPaddingMode\00", align 1
@.str.24 = private unnamed_addr constant [20 x i8] c"canvas-padding-mode\00", align 1
@gimp_space_bar_action_get_type.values = internal constant [4 x %struct._GEnumValue] [%struct._GEnumValue { i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i32 0, i32 0) }, %struct._GEnumValue { i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i32 0, i32 0) }, %struct._GEnumValue { i32 2, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i32 0, i32 0) }, %struct._GEnumValue zeroinitializer], align 16
@.str.25 = private unnamed_addr constant [27 x i8] c"GIMP_SPACE_BAR_ACTION_NONE\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.27 = private unnamed_addr constant [26 x i8] c"GIMP_SPACE_BAR_ACTION_PAN\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"pan\00", align 1
@.str.29 = private unnamed_addr constant [27 x i8] c"GIMP_SPACE_BAR_ACTION_MOVE\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"move\00", align 1
@gimp_space_bar_action_get_type.descs = internal constant [4 x %struct._GimpEnumDesc] [%struct._GimpEnumDesc { i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.32, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.33, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc zeroinitializer], align 16
@.str.31 = private unnamed_addr constant [10 x i8] c"No action\00", align 1
@.str.32 = private unnamed_addr constant [9 x i8] c"Pan view\00", align 1
@.str.33 = private unnamed_addr constant [20 x i8] c"Switch to Move tool\00", align 1
@gimp_space_bar_action_get_type.type = internal global i64 0, align 8
@.str.34 = private unnamed_addr constant [19 x i8] c"GimpSpaceBarAction\00", align 1
@.str.35 = private unnamed_addr constant [17 x i8] c"space-bar-action\00", align 1
@gimp_zoom_quality_get_type.values = internal constant [3 x %struct._GEnumValue] [%struct._GEnumValue { i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.37, i32 0, i32 0) }, %struct._GEnumValue { i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i32 0, i32 0) }, %struct._GEnumValue zeroinitializer], align 16
@.str.36 = private unnamed_addr constant [22 x i8] c"GIMP_ZOOM_QUALITY_LOW\00", align 1
@.str.37 = private unnamed_addr constant [4 x i8] c"low\00", align 1
@.str.38 = private unnamed_addr constant [23 x i8] c"GIMP_ZOOM_QUALITY_HIGH\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"high\00", align 1
@gimp_zoom_quality_get_type.descs = internal constant [3 x %struct._GimpEnumDesc] [%struct._GimpEnumDesc { i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.40, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.41, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc zeroinitializer], align 16
@.str.40 = private unnamed_addr constant [4 x i8] c"Low\00", align 1
@.str.41 = private unnamed_addr constant [5 x i8] c"High\00", align 1
@gimp_zoom_quality_get_type.type = internal global i64 0, align 8
@.str.42 = private unnamed_addr constant [16 x i8] c"GimpZoomQuality\00", align 1
@.str.43 = private unnamed_addr constant [13 x i8] c"zoom-quality\00", align 1
@gimp_help_browser_type_get_type.values = internal constant [3 x %struct._GEnumValue] [%struct._GEnumValue { i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i32 0, i32 0) }, %struct._GEnumValue { i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.47, i32 0, i32 0) }, %struct._GEnumValue zeroinitializer], align 16
@.str.44 = private unnamed_addr constant [23 x i8] c"GIMP_HELP_BROWSER_GIMP\00", align 1
@.str.45 = private unnamed_addr constant [5 x i8] c"gimp\00", align 1
@.str.46 = private unnamed_addr constant [30 x i8] c"GIMP_HELP_BROWSER_WEB_BROWSER\00", align 1
@.str.47 = private unnamed_addr constant [12 x i8] c"web-browser\00", align 1
@gimp_help_browser_type_get_type.descs = internal constant [3 x %struct._GimpEnumDesc] [%struct._GimpEnumDesc { i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.48, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.49, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc zeroinitializer], align 16
@.str.48 = private unnamed_addr constant [18 x i8] c"GIMP help browser\00", align 1
@.str.49 = private unnamed_addr constant [12 x i8] c"Web browser\00", align 1
@gimp_help_browser_type_get_type.type = internal global i64 0, align 8
@.str.50 = private unnamed_addr constant [20 x i8] c"GimpHelpBrowserType\00", align 1
@.str.51 = private unnamed_addr constant [18 x i8] c"help-browser-type\00", align 1
@gimp_window_hint_get_type.values = internal constant [4 x %struct._GEnumValue] [%struct._GEnumValue { i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.53, i32 0, i32 0) }, %struct._GEnumValue { i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.55, i32 0, i32 0) }, %struct._GEnumValue { i32 2, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.57, i32 0, i32 0) }, %struct._GEnumValue zeroinitializer], align 16
@.str.52 = private unnamed_addr constant [24 x i8] c"GIMP_WINDOW_HINT_NORMAL\00", align 1
@.str.53 = private unnamed_addr constant [7 x i8] c"normal\00", align 1
@.str.54 = private unnamed_addr constant [25 x i8] c"GIMP_WINDOW_HINT_UTILITY\00", align 1
@.str.55 = private unnamed_addr constant [8 x i8] c"utility\00", align 1
@.str.56 = private unnamed_addr constant [28 x i8] c"GIMP_WINDOW_HINT_KEEP_ABOVE\00", align 1
@.str.57 = private unnamed_addr constant [11 x i8] c"keep-above\00", align 1
@gimp_window_hint_get_type.descs = internal constant [4 x %struct._GimpEnumDesc] [%struct._GimpEnumDesc { i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.58, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.59, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.60, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc zeroinitializer], align 16
@.str.58 = private unnamed_addr constant [14 x i8] c"Normal window\00", align 1
@.str.59 = private unnamed_addr constant [15 x i8] c"Utility window\00", align 1
@.str.60 = private unnamed_addr constant [11 x i8] c"Keep above\00", align 1
@gimp_window_hint_get_type.type = internal global i64 0, align 8
@.str.61 = private unnamed_addr constant [15 x i8] c"GimpWindowHint\00", align 1
@.str.62 = private unnamed_addr constant [12 x i8] c"window-hint\00", align 1
@gimp_cursor_format_get_type.values = internal constant [3 x %struct._GEnumValue] [%struct._GEnumValue { i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.64, i32 0, i32 0) }, %struct._GEnumValue { i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.66, i32 0, i32 0) }, %struct._GEnumValue zeroinitializer], align 16
@.str.63 = private unnamed_addr constant [26 x i8] c"GIMP_CURSOR_FORMAT_BITMAP\00", align 1
@.str.64 = private unnamed_addr constant [7 x i8] c"bitmap\00", align 1
@.str.65 = private unnamed_addr constant [26 x i8] c"GIMP_CURSOR_FORMAT_PIXBUF\00", align 1
@.str.66 = private unnamed_addr constant [7 x i8] c"pixbuf\00", align 1
@gimp_cursor_format_get_type.descs = internal constant [3 x %struct._GimpEnumDesc] [%struct._GimpEnumDesc { i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.67, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.68, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc zeroinitializer], align 16
@.str.67 = private unnamed_addr constant [14 x i8] c"Black & white\00", align 1
@.str.68 = private unnamed_addr constant [6 x i8] c"Fancy\00", align 1
@gimp_cursor_format_get_type.type = internal global i64 0, align 8
@.str.69 = private unnamed_addr constant [17 x i8] c"GimpCursorFormat\00", align 1
@.str.70 = private unnamed_addr constant [14 x i8] c"cursor-format\00", align 1
@gimp_handedness_get_type.values = internal constant [3 x %struct._GEnumValue] [%struct._GEnumValue { i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.72, i32 0, i32 0) }, %struct._GEnumValue { i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.73, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.74, i32 0, i32 0) }, %struct._GEnumValue zeroinitializer], align 16
@.str.71 = private unnamed_addr constant [21 x i8] c"GIMP_HANDEDNESS_LEFT\00", align 1
@.str.72 = private unnamed_addr constant [5 x i8] c"left\00", align 1
@.str.73 = private unnamed_addr constant [22 x i8] c"GIMP_HANDEDNESS_RIGHT\00", align 1
@.str.74 = private unnamed_addr constant [6 x i8] c"right\00", align 1
@gimp_handedness_get_type.descs = internal constant [3 x %struct._GimpEnumDesc] [%struct._GimpEnumDesc { i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.75, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.76, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc zeroinitializer], align 16
@.str.75 = private unnamed_addr constant [12 x i8] c"Left-handed\00", align 1
@.str.76 = private unnamed_addr constant [13 x i8] c"Right-handed\00", align 1
@gimp_handedness_get_type.type = internal global i64 0, align 8
@.str.77 = private unnamed_addr constant [15 x i8] c"GimpHandedness\00", align 1
@.str.78 = private unnamed_addr constant [11 x i8] c"handedness\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_cursor_mode_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_cursor_mode_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_enum_register_static(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i32 0, i32 0), %struct._GEnumValue* getelementptr inbounds ([4 x %struct._GEnumValue], [4 x %struct._GEnumValue]* @gimp_cursor_mode_get_type.values, i32 0, i32 0))
  store i64 %call, i64* @gimp_cursor_mode_get_type.type, align 8
  %1 = load i64, i64* @gimp_cursor_mode_get_type.type, align 8
  call void @gimp_type_set_translation_context(i64 %1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i32 0, i32 0))
  %2 = load i64, i64* @gimp_cursor_mode_get_type.type, align 8
  call void @gimp_enum_set_value_descriptions(i64 %2, %struct._GimpEnumDesc* getelementptr inbounds ([4 x %struct._GimpEnumDesc], [4 x %struct._GimpEnumDesc]* @gimp_cursor_mode_get_type.descs, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i64, i64* @gimp_cursor_mode_get_type.type, align 8
  ret i64 %3
}

declare i64 @g_enum_register_static(i8*, %struct._GEnumValue*) #1

declare void @gimp_type_set_translation_context(i64, i8*) #1

declare void @gimp_enum_set_value_descriptions(i64, %struct._GimpEnumDesc*) #1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_canvas_padding_mode_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_canvas_padding_mode_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_enum_register_static(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.23, i32 0, i32 0), %struct._GEnumValue* getelementptr inbounds ([5 x %struct._GEnumValue], [5 x %struct._GEnumValue]* @gimp_canvas_padding_mode_get_type.values, i32 0, i32 0))
  store i64 %call, i64* @gimp_canvas_padding_mode_get_type.type, align 8
  %1 = load i64, i64* @gimp_canvas_padding_mode_get_type.type, align 8
  call void @gimp_type_set_translation_context(i64 %1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.24, i32 0, i32 0))
  %2 = load i64, i64* @gimp_canvas_padding_mode_get_type.type, align 8
  call void @gimp_enum_set_value_descriptions(i64 %2, %struct._GimpEnumDesc* getelementptr inbounds ([5 x %struct._GimpEnumDesc], [5 x %struct._GimpEnumDesc]* @gimp_canvas_padding_mode_get_type.descs, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i64, i64* @gimp_canvas_padding_mode_get_type.type, align 8
  ret i64 %3
}

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_space_bar_action_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_space_bar_action_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_enum_register_static(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.34, i32 0, i32 0), %struct._GEnumValue* getelementptr inbounds ([4 x %struct._GEnumValue], [4 x %struct._GEnumValue]* @gimp_space_bar_action_get_type.values, i32 0, i32 0))
  store i64 %call, i64* @gimp_space_bar_action_get_type.type, align 8
  %1 = load i64, i64* @gimp_space_bar_action_get_type.type, align 8
  call void @gimp_type_set_translation_context(i64 %1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.35, i32 0, i32 0))
  %2 = load i64, i64* @gimp_space_bar_action_get_type.type, align 8
  call void @gimp_enum_set_value_descriptions(i64 %2, %struct._GimpEnumDesc* getelementptr inbounds ([4 x %struct._GimpEnumDesc], [4 x %struct._GimpEnumDesc]* @gimp_space_bar_action_get_type.descs, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i64, i64* @gimp_space_bar_action_get_type.type, align 8
  ret i64 %3
}

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_zoom_quality_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_zoom_quality_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_enum_register_static(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.42, i32 0, i32 0), %struct._GEnumValue* getelementptr inbounds ([3 x %struct._GEnumValue], [3 x %struct._GEnumValue]* @gimp_zoom_quality_get_type.values, i32 0, i32 0))
  store i64 %call, i64* @gimp_zoom_quality_get_type.type, align 8
  %1 = load i64, i64* @gimp_zoom_quality_get_type.type, align 8
  call void @gimp_type_set_translation_context(i64 %1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.43, i32 0, i32 0))
  %2 = load i64, i64* @gimp_zoom_quality_get_type.type, align 8
  call void @gimp_enum_set_value_descriptions(i64 %2, %struct._GimpEnumDesc* getelementptr inbounds ([3 x %struct._GimpEnumDesc], [3 x %struct._GimpEnumDesc]* @gimp_zoom_quality_get_type.descs, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i64, i64* @gimp_zoom_quality_get_type.type, align 8
  ret i64 %3
}

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_help_browser_type_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_help_browser_type_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_enum_register_static(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.50, i32 0, i32 0), %struct._GEnumValue* getelementptr inbounds ([3 x %struct._GEnumValue], [3 x %struct._GEnumValue]* @gimp_help_browser_type_get_type.values, i32 0, i32 0))
  store i64 %call, i64* @gimp_help_browser_type_get_type.type, align 8
  %1 = load i64, i64* @gimp_help_browser_type_get_type.type, align 8
  call void @gimp_type_set_translation_context(i64 %1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.51, i32 0, i32 0))
  %2 = load i64, i64* @gimp_help_browser_type_get_type.type, align 8
  call void @gimp_enum_set_value_descriptions(i64 %2, %struct._GimpEnumDesc* getelementptr inbounds ([3 x %struct._GimpEnumDesc], [3 x %struct._GimpEnumDesc]* @gimp_help_browser_type_get_type.descs, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i64, i64* @gimp_help_browser_type_get_type.type, align 8
  ret i64 %3
}

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_window_hint_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_window_hint_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_enum_register_static(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.61, i32 0, i32 0), %struct._GEnumValue* getelementptr inbounds ([4 x %struct._GEnumValue], [4 x %struct._GEnumValue]* @gimp_window_hint_get_type.values, i32 0, i32 0))
  store i64 %call, i64* @gimp_window_hint_get_type.type, align 8
  %1 = load i64, i64* @gimp_window_hint_get_type.type, align 8
  call void @gimp_type_set_translation_context(i64 %1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.62, i32 0, i32 0))
  %2 = load i64, i64* @gimp_window_hint_get_type.type, align 8
  call void @gimp_enum_set_value_descriptions(i64 %2, %struct._GimpEnumDesc* getelementptr inbounds ([4 x %struct._GimpEnumDesc], [4 x %struct._GimpEnumDesc]* @gimp_window_hint_get_type.descs, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i64, i64* @gimp_window_hint_get_type.type, align 8
  ret i64 %3
}

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_cursor_format_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_cursor_format_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_enum_register_static(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.69, i32 0, i32 0), %struct._GEnumValue* getelementptr inbounds ([3 x %struct._GEnumValue], [3 x %struct._GEnumValue]* @gimp_cursor_format_get_type.values, i32 0, i32 0))
  store i64 %call, i64* @gimp_cursor_format_get_type.type, align 8
  %1 = load i64, i64* @gimp_cursor_format_get_type.type, align 8
  call void @gimp_type_set_translation_context(i64 %1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.70, i32 0, i32 0))
  %2 = load i64, i64* @gimp_cursor_format_get_type.type, align 8
  call void @gimp_enum_set_value_descriptions(i64 %2, %struct._GimpEnumDesc* getelementptr inbounds ([3 x %struct._GimpEnumDesc], [3 x %struct._GimpEnumDesc]* @gimp_cursor_format_get_type.descs, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i64, i64* @gimp_cursor_format_get_type.type, align 8
  ret i64 %3
}

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_handedness_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_handedness_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_enum_register_static(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.77, i32 0, i32 0), %struct._GEnumValue* getelementptr inbounds ([3 x %struct._GEnumValue], [3 x %struct._GEnumValue]* @gimp_handedness_get_type.values, i32 0, i32 0))
  store i64 %call, i64* @gimp_handedness_get_type.type, align 8
  %1 = load i64, i64* @gimp_handedness_get_type.type, align 8
  call void @gimp_type_set_translation_context(i64 %1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.78, i32 0, i32 0))
  %2 = load i64, i64* @gimp_handedness_get_type.type, align 8
  call void @gimp_enum_set_value_descriptions(i64 %2, %struct._GimpEnumDesc* getelementptr inbounds ([3 x %struct._GimpEnumDesc], [3 x %struct._GimpEnumDesc]* @gimp_handedness_get_type.descs, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i64, i64* @gimp_handedness_get_type.type, align 8
  ret i64 %3
}

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
