; ModuleID = './plug-ins/imagemap/imap_preferences.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PreferencesDialog_t = type { %struct.DefaultDialog_t*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct.PreferencesData_t* }
%struct.DefaultDialog_t = type { %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, void (i8*)*, i8*, void (i8*)*, i8*, void (i8*)*, i8* }
%struct._GtkWidget = type { %struct._GtkObject, i16, i8, i8, i8*, %struct._GtkStyle*, %struct._GtkRequisition, %struct._GdkRectangle, %struct._GdkDrawable*, %struct._GtkWidget* }
%struct._GtkObject = type { %struct._GObject, i32 }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GtkStyle = type { %struct._GObject, [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], %struct._GdkColor, %struct._GdkColor, %struct._PangoFontDescription*, i32, i32, [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], %struct._GdkGC*, %struct._GdkGC*, [5 x %struct._GdkDrawable*], i32, i32, %struct._GdkColormap*, %struct._GdkFont*, %struct._PangoFontDescription*, %struct._GtkRcStyle*, %struct._GSList*, %struct._GArray*, %struct._GSList* }
%struct._GdkColor = type { i32, i16, i16, i16 }
%struct._GdkGC = type { %struct._GObject, i32, i32, i32, i32, %struct._GdkColormap* }
%struct._GdkColormap = type { %struct._GObject, i32, %struct._GdkColor*, %struct._GdkVisual*, i8* }
%struct._GdkVisual = type { %struct._GObject, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GdkFont = type opaque
%struct._PangoFontDescription = type opaque
%struct._GtkRcStyle = type { %struct._GObject, i8*, [5 x i8*], %struct._PangoFontDescription*, [5 x i32], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], i32, i32, %struct._GArray*, %struct._GSList*, %struct._GSList*, i8 }
%struct._GArray = type { i8*, i32 }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GtkRequisition = type { i32, i32 }
%struct._GdkRectangle = type { i32, i32, i32, i32 }
%struct._GdkDrawable = type { %struct._GObject }
%struct.PreferencesData_t = type { i32, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, %struct.ColorSelData_t }
%struct.ColorSelData_t = type { %struct._GdkColor, %struct._GdkColor, %struct._GdkColor, %struct._GdkColor, %struct._GdkColor, %struct._GdkColor }
%struct._GimpRGB = type { double, double, double, double }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.MRU_t = type { %struct._GList*, i32 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GtkNotebook = type { %struct._GtkContainer, i8*, %struct._GList*, %struct._GList*, %struct._GList*, %struct._GtkWidget*, %struct._GdkDrawable*, i32, i16, i16, i24 }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GtkToggleButton = type { %struct._GtkButton, i8 }
%struct._GtkButton = type { %struct._GtkBin, %struct._GdkDrawable*, i8*, i32, i16 }
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkSpinButton = type { %struct._GtkEntry, %struct._GtkAdjustment*, %struct._GdkDrawable*, i32, double, double, i32, i24 }
%struct._GtkEntry = type { %struct._GtkWidget, i8*, i8, i16, i16, %struct._GdkDrawable*, %struct._GtkIMContext*, %struct._GtkWidget*, i32, i32, %struct._PangoLayout*, i16, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32 }
%struct._GtkIMContext = type { %struct._GObject }
%struct._PangoLayout = type opaque
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GtkTable = type { %struct._GtkContainer, %struct._GList*, %struct._GtkTableRowCol*, %struct._GtkTableRowCol*, i16, i16, i16, i16, i8 }
%struct._GtkTableRowCol = type { i16, i16, i16, i8 }
%struct._GtkRadioButton = type { %struct._GtkCheckButton, %struct._GSList* }
%struct._GtkCheckButton = type { %struct._GtkToggleButton }
%struct._GimpColorButton = type { %struct._GimpButton, i8*, i32, %struct._GtkWidget*, %struct._GtkWidget*, i8* }
%struct._GimpButton = type { %struct._GtkButton, i32 }

@.str = private unnamed_addr constant [11 x i8] c"imagemaprc\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"# Image map plug-in resource file\0A\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"(default-map-type ncsa)\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"(default-map-type cern)\0A\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"(default-map-type csim)\0A\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"(prompt-for-area-info %s)\0A\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"(require-default-url %s)\0A\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"(show-area-handle %s)\0A\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"(keep-circles-round %s)\0A\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"(show-url-tip %s)\0A\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"(use-doublesized %s)\0A\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"(undo-levels %d)\0A\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"(mru-size %d)\0A\00", align 1
@.str.17 = private unnamed_addr constant [28 x i8] c"(normal-fg-color %d %d %d)\0A\00", align 1
@.str.18 = private unnamed_addr constant [28 x i8] c"(normal-bg-color %d %d %d)\0A\00", align 1
@.str.19 = private unnamed_addr constant [30 x i8] c"(selected-fg-color %d %d %d)\0A\00", align 1
@.str.20 = private unnamed_addr constant [30 x i8] c"(selected-bg-color %d %d %d)\0A\00", align 1
@.str.21 = private unnamed_addr constant [33 x i8] c"(interactive-fg-color %d %d %d)\0A\00", align 1
@.str.22 = private unnamed_addr constant [33 x i8] c"(interactive-bg-color %d %d %d)\0A\00", align 1
@.str.23 = private unnamed_addr constant [29 x i8] c"Couldn't save resource file:\00", align 1
@do_preferences_dialog.dialog = internal global %struct.PreferencesDialog_t* null, align 8
@.str.24 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.25 = private unnamed_addr constant [17 x i8] c"default-map-type\00", align 1
@.str.26 = private unnamed_addr constant [21 x i8] c"prompt-for-area-info\00", align 1
@.str.27 = private unnamed_addr constant [20 x i8] c"require-default-url\00", align 1
@.str.28 = private unnamed_addr constant [17 x i8] c"show-area-handle\00", align 1
@.str.29 = private unnamed_addr constant [19 x i8] c"keep-circles-round\00", align 1
@.str.30 = private unnamed_addr constant [13 x i8] c"show-url-tip\00", align 1
@.str.31 = private unnamed_addr constant [16 x i8] c"use-doublesized\00", align 1
@.str.32 = private unnamed_addr constant [9 x i8] c"mru-size\00", align 1
@.str.33 = private unnamed_addr constant [12 x i8] c"undo-levels\00", align 1
@.str.34 = private unnamed_addr constant [16 x i8] c"normal-fg-color\00", align 1
@.str.35 = private unnamed_addr constant [16 x i8] c"normal-bg-color\00", align 1
@.str.36 = private unnamed_addr constant [18 x i8] c"selected-fg-color\00", align 1
@.str.37 = private unnamed_addr constant [18 x i8] c"selected-bg-color\00", align 1
@.str.38 = private unnamed_addr constant [21 x i8] c"interactive-fg-color\00", align 1
@.str.39 = private unnamed_addr constant [21 x i8] c"interactive-bg-color\00", align 1
@.str.40 = private unnamed_addr constant [10 x i8] c"mru-entry\00", align 1
@.str.41 = private unnamed_addr constant [3 x i8] c" )\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"ncsa\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"cern\00", align 1
@.str.44 = private unnamed_addr constant [20 x i8] c"General Preferences\00", align 1
@.str.45 = private unnamed_addr constant [8 x i8] c"General\00", align 1
@.str.46 = private unnamed_addr constant [17 x i8] c"Default Map Type\00", align 1
@.str.47 = private unnamed_addr constant [6 x i8] c"_NCSA\00", align 1
@.str.48 = private unnamed_addr constant [6 x i8] c"C_ERN\00", align 1
@.str.49 = private unnamed_addr constant [6 x i8] c"C_SIM\00", align 1
@.str.50 = private unnamed_addr constant [22 x i8] c"_Prompt for area info\00", align 1
@.str.51 = private unnamed_addr constant [21 x i8] c"_Require default URL\00", align 1
@.str.52 = private unnamed_addr constant [19 x i8] c"Show area _handles\00", align 1
@.str.53 = private unnamed_addr constant [24 x i8] c"_Keep NCSA circles true\00", align 1
@.str.54 = private unnamed_addr constant [19 x i8] c"Show area URL _tip\00", align 1
@.str.55 = private unnamed_addr constant [31 x i8] c"_Use double-sized grab handles\00", align 1
@.str.56 = private unnamed_addr constant [5 x i8] c"Menu\00", align 1
@.str.57 = private unnamed_addr constant [33 x i8] c"Number of _undo levels (1 - 99):\00", align 1
@.str.58 = private unnamed_addr constant [33 x i8] c"Number of M_RU entries (1 - 16):\00", align 1
@.str.59 = private unnamed_addr constant [7 x i8] c"Colors\00", align 1
@.str.60 = private unnamed_addr constant [8 x i8] c"Normal:\00", align 1
@.str.61 = private unnamed_addr constant [10 x i8] c"Selected:\00", align 1
@.str.62 = private unnamed_addr constant [13 x i8] c"Interaction:\00", align 1
@create_color_field.color = private unnamed_addr constant %struct._GimpRGB { double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 1.000000e+00 }, align 8
@.str.63 = private unnamed_addr constant [13 x i8] c"Select Color\00", align 1

; Function Attrs: nounwind uwtable
define i32 @preferences_load(%struct.PreferencesData_t* %data) #0 {
entry:
  %retval = alloca i32, align 4
  %data.addr = alloca %struct.PreferencesData_t*, align 8
  %in = alloca %struct._IO_FILE*, align 8
  %buf = alloca [256 x i8], align 16
  %filename = alloca i8*, align 8
  store %struct.PreferencesData_t* %data, %struct.PreferencesData_t** %data.addr, align 8
  %call = call noalias i8* @gimp_personal_rc_file(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0))
  store i8* %call, i8** %filename, align 8
  %0 = load i8*, i8** %filename, align 8
  %call1 = call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0))
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %in, align 8
  %1 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %1)
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %in, align 8
  %tobool = icmp ne %struct._IO_FILE* %2, null
  br i1 %tobool, label %if.then, label %if.end.13

if.then:                                          ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end, %if.then
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %in, align 8
  %call2 = call i8* @fgets(i8* %arraydecay, i32 256, %struct._IO_FILE* %3)
  %tobool3 = icmp ne i8* %call2, null
  br i1 %tobool3, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %arraydecay4 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0
  %4 = load i8, i8* %arraydecay4, align 1
  %conv = sext i8 %4 to i32
  %cmp = icmp ne i32 %conv, 10
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %while.body
  %arraydecay6 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0
  %5 = load i8, i8* %arraydecay6, align 1
  %conv7 = sext i8 %5 to i32
  %cmp8 = icmp ne i32 %conv7, 35
  br i1 %cmp8, label %if.then.10, label %if.end

if.then.10:                                       ; preds = %land.lhs.true
  %6 = load %struct.PreferencesData_t*, %struct.PreferencesData_t** %data.addr, align 8
  %arraydecay11 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0
  call void @parse_line(%struct.PreferencesData_t* %6, i8* %arraydecay11)
  br label %if.end

if.end:                                           ; preds = %if.then.10, %land.lhs.true, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %in, align 8
  %call12 = call i32 @fclose(%struct._IO_FILE* %7)
  store i32 1, i32* %retval
  br label %return

if.end.13:                                        ; preds = %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.13, %while.end
  %8 = load i32, i32* %retval
  ret i32 %8
}

declare noalias i8* @gimp_personal_rc_file(i8*) #1

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

declare void @g_free(i8*) #1

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define internal void @parse_line(%struct.PreferencesData_t* %data, i8* %line) #0 {
entry:
  %data.addr = alloca %struct.PreferencesData_t*, align 8
  %line.addr = alloca i8*, align 8
  %token = alloca i8*, align 8
  %colors = alloca %struct.ColorSelData_t*, align 8
  store %struct.PreferencesData_t* %data, %struct.PreferencesData_t** %data.addr, align 8
  store i8* %line, i8** %line.addr, align 8
  %0 = load %struct.PreferencesData_t*, %struct.PreferencesData_t** %data.addr, align 8
  %colors1 = getelementptr inbounds %struct.PreferencesData_t, %struct.PreferencesData_t* %0, i32 0, i32 11
  store %struct.ColorSelData_t* %colors1, %struct.ColorSelData_t** %colors, align 8
  %1 = load i8*, i8** %line.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i32 1
  store i8* %incdec.ptr, i8** %line.addr, align 8
  %2 = load i8*, i8** %line.addr, align 8
  %call = call i8* @strtok(i8* %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i32 0, i32 0)) #5
  store i8* %call, i8** %token, align 8
  %3 = load i8*, i8** %token, align 8
  %call2 = call i32 @strcmp(i8* %3, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.25, i32 0, i32 0)) #6
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call3 = call i32 @parse_map_type()
  %4 = load %struct.PreferencesData_t*, %struct.PreferencesData_t** %data.addr, align 8
  %default_map_type = getelementptr inbounds %struct.PreferencesData_t, %struct.PreferencesData_t* %4, i32 0, i32 0
  store i32 %call3, i32* %default_map_type, align 4
  br label %if.end.95

if.else:                                          ; preds = %entry
  %5 = load i8*, i8** %token, align 8
  %call4 = call i32 @strcmp(i8* %5, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.26, i32 0, i32 0)) #6
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.else.8, label %if.then.6

if.then.6:                                        ; preds = %if.else
  %call7 = call i32 @parse_yes_no()
  %6 = load %struct.PreferencesData_t*, %struct.PreferencesData_t** %data.addr, align 8
  %prompt_for_area_info = getelementptr inbounds %struct.PreferencesData_t, %struct.PreferencesData_t* %6, i32 0, i32 1
  store i32 %call7, i32* %prompt_for_area_info, align 4
  br label %if.end.94

if.else.8:                                        ; preds = %if.else
  %7 = load i8*, i8** %token, align 8
  %call9 = call i32 @strcmp(i8* %7, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.27, i32 0, i32 0)) #6
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.else.13, label %if.then.11

if.then.11:                                       ; preds = %if.else.8
  %call12 = call i32 @parse_yes_no()
  %8 = load %struct.PreferencesData_t*, %struct.PreferencesData_t** %data.addr, align 8
  %require_default_url = getelementptr inbounds %struct.PreferencesData_t, %struct.PreferencesData_t* %8, i32 0, i32 2
  store i32 %call12, i32* %require_default_url, align 4
  br label %if.end.93

if.else.13:                                       ; preds = %if.else.8
  %9 = load i8*, i8** %token, align 8
  %call14 = call i32 @strcmp(i8* %9, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.28, i32 0, i32 0)) #6
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.else.18, label %if.then.16

if.then.16:                                       ; preds = %if.else.13
  %call17 = call i32 @parse_yes_no()
  %10 = load %struct.PreferencesData_t*, %struct.PreferencesData_t** %data.addr, align 8
  %show_area_handle = getelementptr inbounds %struct.PreferencesData_t, %struct.PreferencesData_t* %10, i32 0, i32 3
  store i32 %call17, i32* %show_area_handle, align 4
  br label %if.end.92

if.else.18:                                       ; preds = %if.else.13
  %11 = load i8*, i8** %token, align 8
  %call19 = call i32 @strcmp(i8* %11, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.29, i32 0, i32 0)) #6
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %if.else.23, label %if.then.21

if.then.21:                                       ; preds = %if.else.18
  %call22 = call i32 @parse_yes_no()
  %12 = load %struct.PreferencesData_t*, %struct.PreferencesData_t** %data.addr, align 8
  %keep_circles_round = getelementptr inbounds %struct.PreferencesData_t, %struct.PreferencesData_t* %12, i32 0, i32 4
  store i32 %call22, i32* %keep_circles_round, align 4
  br label %if.end.91

if.else.23:                                       ; preds = %if.else.18
  %13 = load i8*, i8** %token, align 8
  %call24 = call i32 @strcmp(i8* %13, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.30, i32 0, i32 0)) #6
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %if.else.28, label %if.then.26

if.then.26:                                       ; preds = %if.else.23
  %call27 = call i32 @parse_yes_no()
  %14 = load %struct.PreferencesData_t*, %struct.PreferencesData_t** %data.addr, align 8
  %show_url_tip = getelementptr inbounds %struct.PreferencesData_t, %struct.PreferencesData_t* %14, i32 0, i32 5
  store i32 %call27, i32* %show_url_tip, align 4
  br label %if.end.90

if.else.28:                                       ; preds = %if.else.23
  %15 = load i8*, i8** %token, align 8
  %call29 = call i32 @strcmp(i8* %15, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.31, i32 0, i32 0)) #6
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %if.else.33, label %if.then.31

if.then.31:                                       ; preds = %if.else.28
  %call32 = call i32 @parse_yes_no()
  %16 = load %struct.PreferencesData_t*, %struct.PreferencesData_t** %data.addr, align 8
  %use_doublesized = getelementptr inbounds %struct.PreferencesData_t, %struct.PreferencesData_t* %16, i32 0, i32 6
  store i32 %call32, i32* %use_doublesized, align 4
  br label %if.end.89

if.else.33:                                       ; preds = %if.else.28
  %17 = load i8*, i8** %token, align 8
  %call34 = call i32 @strcmp(i8* %17, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.32, i32 0, i32 0)) #6
  %tobool35 = icmp ne i32 %call34, 0
  br i1 %tobool35, label %if.else.41, label %if.then.36

if.then.36:                                       ; preds = %if.else.33
  %call37 = call i32 @parse_int()
  %18 = load %struct.PreferencesData_t*, %struct.PreferencesData_t** %data.addr, align 8
  %mru_size = getelementptr inbounds %struct.PreferencesData_t, %struct.PreferencesData_t* %18, i32 0, i32 10
  store i32 %call37, i32* %mru_size, align 4
  %19 = load %struct.PreferencesData_t*, %struct.PreferencesData_t** %data.addr, align 8
  %mru_size38 = getelementptr inbounds %struct.PreferencesData_t, %struct.PreferencesData_t* %19, i32 0, i32 10
  %20 = load i32, i32* %mru_size38, align 4
  %cmp = icmp slt i32 %20, 1
  br i1 %cmp, label %if.then.39, label %if.end

if.then.39:                                       ; preds = %if.then.36
  %21 = load %struct.PreferencesData_t*, %struct.PreferencesData_t** %data.addr, align 8
  %mru_size40 = getelementptr inbounds %struct.PreferencesData_t, %struct.PreferencesData_t* %21, i32 0, i32 10
  store i32 1, i32* %mru_size40, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.39, %if.then.36
  br label %if.end.88

if.else.41:                                       ; preds = %if.else.33
  %22 = load i8*, i8** %token, align 8
  %call42 = call i32 @strcmp(i8* %22, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.33, i32 0, i32 0)) #6
  %tobool43 = icmp ne i32 %call42, 0
  br i1 %tobool43, label %if.else.51, label %if.then.44

if.then.44:                                       ; preds = %if.else.41
  %call45 = call i32 @parse_int()
  %23 = load %struct.PreferencesData_t*, %struct.PreferencesData_t** %data.addr, align 8
  %undo_levels = getelementptr inbounds %struct.PreferencesData_t, %struct.PreferencesData_t* %23, i32 0, i32 9
  store i32 %call45, i32* %undo_levels, align 4
  %24 = load %struct.PreferencesData_t*, %struct.PreferencesData_t** %data.addr, align 8
  %undo_levels46 = getelementptr inbounds %struct.PreferencesData_t, %struct.PreferencesData_t* %24, i32 0, i32 9
  %25 = load i32, i32* %undo_levels46, align 4
  %cmp47 = icmp slt i32 %25, 1
  br i1 %cmp47, label %if.then.48, label %if.end.50

if.then.48:                                       ; preds = %if.then.44
  %26 = load %struct.PreferencesData_t*, %struct.PreferencesData_t** %data.addr, align 8
  %undo_levels49 = getelementptr inbounds %struct.PreferencesData_t, %struct.PreferencesData_t* %26, i32 0, i32 9
  store i32 1, i32* %undo_levels49, align 4
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.48, %if.then.44
  br label %if.end.87

if.else.51:                                       ; preds = %if.else.41
  %27 = load i8*, i8** %token, align 8
  %call52 = call i32 @strcmp(i8* %27, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.34, i32 0, i32 0)) #6
  %tobool53 = icmp ne i32 %call52, 0
  br i1 %tobool53, label %if.else.55, label %if.then.54

if.then.54:                                       ; preds = %if.else.51
  %28 = load %struct.ColorSelData_t*, %struct.ColorSelData_t** %colors, align 8
  %normal_fg = getelementptr inbounds %struct.ColorSelData_t, %struct.ColorSelData_t* %28, i32 0, i32 0
  call void @parse_color(%struct._GdkColor* %normal_fg)
  br label %if.end.86

if.else.55:                                       ; preds = %if.else.51
  %29 = load i8*, i8** %token, align 8
  %call56 = call i32 @strcmp(i8* %29, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.35, i32 0, i32 0)) #6
  %tobool57 = icmp ne i32 %call56, 0
  br i1 %tobool57, label %if.else.59, label %if.then.58

if.then.58:                                       ; preds = %if.else.55
  %30 = load %struct.ColorSelData_t*, %struct.ColorSelData_t** %colors, align 8
  %normal_bg = getelementptr inbounds %struct.ColorSelData_t, %struct.ColorSelData_t* %30, i32 0, i32 1
  call void @parse_color(%struct._GdkColor* %normal_bg)
  br label %if.end.85

if.else.59:                                       ; preds = %if.else.55
  %31 = load i8*, i8** %token, align 8
  %call60 = call i32 @strcmp(i8* %31, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.36, i32 0, i32 0)) #6
  %tobool61 = icmp ne i32 %call60, 0
  br i1 %tobool61, label %if.else.63, label %if.then.62

if.then.62:                                       ; preds = %if.else.59
  %32 = load %struct.ColorSelData_t*, %struct.ColorSelData_t** %colors, align 8
  %selected_fg = getelementptr inbounds %struct.ColorSelData_t, %struct.ColorSelData_t* %32, i32 0, i32 2
  call void @parse_color(%struct._GdkColor* %selected_fg)
  br label %if.end.84

if.else.63:                                       ; preds = %if.else.59
  %33 = load i8*, i8** %token, align 8
  %call64 = call i32 @strcmp(i8* %33, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.37, i32 0, i32 0)) #6
  %tobool65 = icmp ne i32 %call64, 0
  br i1 %tobool65, label %if.else.67, label %if.then.66

if.then.66:                                       ; preds = %if.else.63
  %34 = load %struct.ColorSelData_t*, %struct.ColorSelData_t** %colors, align 8
  %selected_bg = getelementptr inbounds %struct.ColorSelData_t, %struct.ColorSelData_t* %34, i32 0, i32 3
  call void @parse_color(%struct._GdkColor* %selected_bg)
  br label %if.end.83

if.else.67:                                       ; preds = %if.else.63
  %35 = load i8*, i8** %token, align 8
  %call68 = call i32 @strcmp(i8* %35, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.38, i32 0, i32 0)) #6
  %tobool69 = icmp ne i32 %call68, 0
  br i1 %tobool69, label %if.else.71, label %if.then.70

if.then.70:                                       ; preds = %if.else.67
  %36 = load %struct.ColorSelData_t*, %struct.ColorSelData_t** %colors, align 8
  %interactive_fg = getelementptr inbounds %struct.ColorSelData_t, %struct.ColorSelData_t* %36, i32 0, i32 5
  call void @parse_color(%struct._GdkColor* %interactive_fg)
  br label %if.end.82

if.else.71:                                       ; preds = %if.else.67
  %37 = load i8*, i8** %token, align 8
  %call72 = call i32 @strcmp(i8* %37, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.39, i32 0, i32 0)) #6
  %tobool73 = icmp ne i32 %call72, 0
  br i1 %tobool73, label %if.else.75, label %if.then.74

if.then.74:                                       ; preds = %if.else.71
  %38 = load %struct.ColorSelData_t*, %struct.ColorSelData_t** %colors, align 8
  %interactive_bg = getelementptr inbounds %struct.ColorSelData_t, %struct.ColorSelData_t* %38, i32 0, i32 4
  call void @parse_color(%struct._GdkColor* %interactive_bg)
  br label %if.end.81

if.else.75:                                       ; preds = %if.else.71
  %39 = load i8*, i8** %token, align 8
  %call76 = call i32 @strcmp(i8* %39, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.40, i32 0, i32 0)) #6
  %tobool77 = icmp ne i32 %call76, 0
  br i1 %tobool77, label %if.else.79, label %if.then.78

if.then.78:                                       ; preds = %if.else.75
  call void @parse_mru_entry()
  br label %if.end.80

if.else.79:                                       ; preds = %if.else.75
  br label %if.end.80

if.end.80:                                        ; preds = %if.else.79, %if.then.78
  br label %if.end.81

if.end.81:                                        ; preds = %if.end.80, %if.then.74
  br label %if.end.82

if.end.82:                                        ; preds = %if.end.81, %if.then.70
  br label %if.end.83

if.end.83:                                        ; preds = %if.end.82, %if.then.66
  br label %if.end.84

if.end.84:                                        ; preds = %if.end.83, %if.then.62
  br label %if.end.85

if.end.85:                                        ; preds = %if.end.84, %if.then.58
  br label %if.end.86

if.end.86:                                        ; preds = %if.end.85, %if.then.54
  br label %if.end.87

if.end.87:                                        ; preds = %if.end.86, %if.end.50
  br label %if.end.88

if.end.88:                                        ; preds = %if.end.87, %if.end
  br label %if.end.89

if.end.89:                                        ; preds = %if.end.88, %if.then.31
  br label %if.end.90

if.end.90:                                        ; preds = %if.end.89, %if.then.26
  br label %if.end.91

if.end.91:                                        ; preds = %if.end.90, %if.then.21
  br label %if.end.92

if.end.92:                                        ; preds = %if.end.91, %if.then.16
  br label %if.end.93

if.end.93:                                        ; preds = %if.end.92, %if.then.11
  br label %if.end.94

if.end.94:                                        ; preds = %if.end.93, %if.then.6
  br label %if.end.95

if.end.95:                                        ; preds = %if.end.94, %if.then
  ret void
}

declare i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define void @preferences_save(%struct.PreferencesData_t* %data) #0 {
entry:
  %data.addr = alloca %struct.PreferencesData_t*, align 8
  %out = alloca %struct._IO_FILE*, align 8
  %filename = alloca i8*, align 8
  %colors = alloca %struct.ColorSelData_t*, align 8
  store %struct.PreferencesData_t* %data, %struct.PreferencesData_t** %data.addr, align 8
  %0 = load %struct.PreferencesData_t*, %struct.PreferencesData_t** %data.addr, align 8
  %colors1 = getelementptr inbounds %struct.PreferencesData_t, %struct.PreferencesData_t* %0, i32 0, i32 11
  store %struct.ColorSelData_t* %colors1, %struct.ColorSelData_t** %colors, align 8
  %call = call noalias i8* @gimp_personal_rc_file(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0))
  store i8* %call, i8** %filename, align 8
  %1 = load i8*, i8** %filename, align 8
  %call2 = call %struct._IO_FILE* @fopen(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0))
  store %struct._IO_FILE* %call2, %struct._IO_FILE** %out, align 8
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %tobool = icmp ne %struct._IO_FILE* %2, null
  br i1 %tobool, label %if.then, label %if.else.84

if.then:                                          ; preds = %entry
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i32 0, i32 0))
  %4 = load %struct.PreferencesData_t*, %struct.PreferencesData_t** %data.addr, align 8
  %default_map_type = getelementptr inbounds %struct.PreferencesData_t, %struct.PreferencesData_t* %4, i32 0, i32 0
  %5 = load i32, i32* %default_map_type, align 4
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.then
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.12

if.else:                                          ; preds = %if.then
  %7 = load %struct.PreferencesData_t*, %struct.PreferencesData_t** %data.addr, align 8
  %default_map_type6 = getelementptr inbounds %struct.PreferencesData_t, %struct.PreferencesData_t* %7, i32 0, i32 0
  %8 = load i32, i32* %default_map_type6, align 4
  %cmp7 = icmp eq i32 %8, 1
  br i1 %cmp7, label %if.then.8, label %if.else.10

if.then.8:                                        ; preds = %if.else
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end

if.else.10:                                       ; preds = %if.else
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else.10, %if.then.8
  br label %if.end.12

if.end.12:                                        ; preds = %if.end, %if.then.4
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %12 = load %struct.PreferencesData_t*, %struct.PreferencesData_t** %data.addr, align 8
  %prompt_for_area_info = getelementptr inbounds %struct.PreferencesData_t, %struct.PreferencesData_t* %12, i32 0, i32 1
  %13 = load i32, i32* %prompt_for_area_info, align 4
  %tobool13 = icmp ne i32 %13, 0
  %cond = select i1 %tobool13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0)
  %call14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i32 0, i32 0), i8* %cond)
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %15 = load %struct.PreferencesData_t*, %struct.PreferencesData_t** %data.addr, align 8
  %require_default_url = getelementptr inbounds %struct.PreferencesData_t, %struct.PreferencesData_t* %15, i32 0, i32 2
  %16 = load i32, i32* %require_default_url, align 4
  %tobool15 = icmp ne i32 %16, 0
  %cond16 = select i1 %tobool15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0)
  %call17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i32 0, i32 0), i8* %cond16)
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %18 = load %struct.PreferencesData_t*, %struct.PreferencesData_t** %data.addr, align 8
  %show_area_handle = getelementptr inbounds %struct.PreferencesData_t, %struct.PreferencesData_t* %18, i32 0, i32 3
  %19 = load i32, i32* %show_area_handle, align 4
  %tobool18 = icmp ne i32 %19, 0
  %cond19 = select i1 %tobool18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0)
  %call20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i32 0, i32 0), i8* %cond19)
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %21 = load %struct.PreferencesData_t*, %struct.PreferencesData_t** %data.addr, align 8
  %keep_circles_round = getelementptr inbounds %struct.PreferencesData_t, %struct.PreferencesData_t* %21, i32 0, i32 4
  %22 = load i32, i32* %keep_circles_round, align 4
  %tobool21 = icmp ne i32 %22, 0
  %cond22 = select i1 %tobool21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0)
  %call23 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i32 0, i32 0), i8* %cond22)
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %24 = load %struct.PreferencesData_t*, %struct.PreferencesData_t** %data.addr, align 8
  %show_url_tip = getelementptr inbounds %struct.PreferencesData_t, %struct.PreferencesData_t* %24, i32 0, i32 5
  %25 = load i32, i32* %show_url_tip, align 4
  %tobool24 = icmp ne i32 %25, 0
  %cond25 = select i1 %tobool24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0)
  %call26 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %23, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i32 0, i32 0), i8* %cond25)
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %27 = load %struct.PreferencesData_t*, %struct.PreferencesData_t** %data.addr, align 8
  %use_doublesized = getelementptr inbounds %struct.PreferencesData_t, %struct.PreferencesData_t* %27, i32 0, i32 6
  %28 = load i32, i32* %use_doublesized, align 4
  %tobool27 = icmp ne i32 %28, 0
  %cond28 = select i1 %tobool27, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0)
  %call29 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %26, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i32 0, i32 0), i8* %cond28)
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %30 = load %struct.PreferencesData_t*, %struct.PreferencesData_t** %data.addr, align 8
  %undo_levels = getelementptr inbounds %struct.PreferencesData_t, %struct.PreferencesData_t* %30, i32 0, i32 9
  %31 = load i32, i32* %undo_levels, align 4
  %call30 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %29, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i32 0, i32 0), i32 %31)
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %33 = load %struct.PreferencesData_t*, %struct.PreferencesData_t** %data.addr, align 8
  %mru_size = getelementptr inbounds %struct.PreferencesData_t, %struct.PreferencesData_t* %33, i32 0, i32 10
  %34 = load i32, i32* %mru_size, align 4
  %call31 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %32, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i32 0, i32 0), i32 %34)
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %36 = load %struct.ColorSelData_t*, %struct.ColorSelData_t** %colors, align 8
  %normal_fg = getelementptr inbounds %struct.ColorSelData_t, %struct.ColorSelData_t* %36, i32 0, i32 0
  %red = getelementptr inbounds %struct._GdkColor, %struct._GdkColor* %normal_fg, i32 0, i32 1
  %37 = load i16, i16* %red, align 2
  %conv = zext i16 %37 to i32
  %38 = load %struct.ColorSelData_t*, %struct.ColorSelData_t** %colors, align 8
  %normal_fg32 = getelementptr inbounds %struct.ColorSelData_t, %struct.ColorSelData_t* %38, i32 0, i32 0
  %green = getelementptr inbounds %struct._GdkColor, %struct._GdkColor* %normal_fg32, i32 0, i32 2
  %39 = load i16, i16* %green, align 2
  %conv33 = zext i16 %39 to i32
  %40 = load %struct.ColorSelData_t*, %struct.ColorSelData_t** %colors, align 8
  %normal_fg34 = getelementptr inbounds %struct.ColorSelData_t, %struct.ColorSelData_t* %40, i32 0, i32 0
  %blue = getelementptr inbounds %struct._GdkColor, %struct._GdkColor* %normal_fg34, i32 0, i32 3
  %41 = load i16, i16* %blue, align 2
  %conv35 = zext i16 %41 to i32
  %call36 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %35, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.17, i32 0, i32 0), i32 %conv, i32 %conv33, i32 %conv35)
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %43 = load %struct.ColorSelData_t*, %struct.ColorSelData_t** %colors, align 8
  %normal_bg = getelementptr inbounds %struct.ColorSelData_t, %struct.ColorSelData_t* %43, i32 0, i32 1
  %red37 = getelementptr inbounds %struct._GdkColor, %struct._GdkColor* %normal_bg, i32 0, i32 1
  %44 = load i16, i16* %red37, align 2
  %conv38 = zext i16 %44 to i32
  %45 = load %struct.ColorSelData_t*, %struct.ColorSelData_t** %colors, align 8
  %normal_bg39 = getelementptr inbounds %struct.ColorSelData_t, %struct.ColorSelData_t* %45, i32 0, i32 1
  %green40 = getelementptr inbounds %struct._GdkColor, %struct._GdkColor* %normal_bg39, i32 0, i32 2
  %46 = load i16, i16* %green40, align 2
  %conv41 = zext i16 %46 to i32
  %47 = load %struct.ColorSelData_t*, %struct.ColorSelData_t** %colors, align 8
  %normal_bg42 = getelementptr inbounds %struct.ColorSelData_t, %struct.ColorSelData_t* %47, i32 0, i32 1
  %blue43 = getelementptr inbounds %struct._GdkColor, %struct._GdkColor* %normal_bg42, i32 0, i32 3
  %48 = load i16, i16* %blue43, align 2
  %conv44 = zext i16 %48 to i32
  %call45 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %42, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.18, i32 0, i32 0), i32 %conv38, i32 %conv41, i32 %conv44)
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %50 = load %struct.ColorSelData_t*, %struct.ColorSelData_t** %colors, align 8
  %selected_fg = getelementptr inbounds %struct.ColorSelData_t, %struct.ColorSelData_t* %50, i32 0, i32 2
  %red46 = getelementptr inbounds %struct._GdkColor, %struct._GdkColor* %selected_fg, i32 0, i32 1
  %51 = load i16, i16* %red46, align 2
  %conv47 = zext i16 %51 to i32
  %52 = load %struct.ColorSelData_t*, %struct.ColorSelData_t** %colors, align 8
  %selected_fg48 = getelementptr inbounds %struct.ColorSelData_t, %struct.ColorSelData_t* %52, i32 0, i32 2
  %green49 = getelementptr inbounds %struct._GdkColor, %struct._GdkColor* %selected_fg48, i32 0, i32 2
  %53 = load i16, i16* %green49, align 2
  %conv50 = zext i16 %53 to i32
  %54 = load %struct.ColorSelData_t*, %struct.ColorSelData_t** %colors, align 8
  %selected_fg51 = getelementptr inbounds %struct.ColorSelData_t, %struct.ColorSelData_t* %54, i32 0, i32 2
  %blue52 = getelementptr inbounds %struct._GdkColor, %struct._GdkColor* %selected_fg51, i32 0, i32 3
  %55 = load i16, i16* %blue52, align 2
  %conv53 = zext i16 %55 to i32
  %call54 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %49, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.19, i32 0, i32 0), i32 %conv47, i32 %conv50, i32 %conv53)
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %57 = load %struct.ColorSelData_t*, %struct.ColorSelData_t** %colors, align 8
  %selected_bg = getelementptr inbounds %struct.ColorSelData_t, %struct.ColorSelData_t* %57, i32 0, i32 3
  %red55 = getelementptr inbounds %struct._GdkColor, %struct._GdkColor* %selected_bg, i32 0, i32 1
  %58 = load i16, i16* %red55, align 2
  %conv56 = zext i16 %58 to i32
  %59 = load %struct.ColorSelData_t*, %struct.ColorSelData_t** %colors, align 8
  %selected_bg57 = getelementptr inbounds %struct.ColorSelData_t, %struct.ColorSelData_t* %59, i32 0, i32 3
  %green58 = getelementptr inbounds %struct._GdkColor, %struct._GdkColor* %selected_bg57, i32 0, i32 2
  %60 = load i16, i16* %green58, align 2
  %conv59 = zext i16 %60 to i32
  %61 = load %struct.ColorSelData_t*, %struct.ColorSelData_t** %colors, align 8
  %selected_bg60 = getelementptr inbounds %struct.ColorSelData_t, %struct.ColorSelData_t* %61, i32 0, i32 3
  %blue61 = getelementptr inbounds %struct._GdkColor, %struct._GdkColor* %selected_bg60, i32 0, i32 3
  %62 = load i16, i16* %blue61, align 2
  %conv62 = zext i16 %62 to i32
  %call63 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %56, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.20, i32 0, i32 0), i32 %conv56, i32 %conv59, i32 %conv62)
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %64 = load %struct.ColorSelData_t*, %struct.ColorSelData_t** %colors, align 8
  %interactive_fg = getelementptr inbounds %struct.ColorSelData_t, %struct.ColorSelData_t* %64, i32 0, i32 5
  %red64 = getelementptr inbounds %struct._GdkColor, %struct._GdkColor* %interactive_fg, i32 0, i32 1
  %65 = load i16, i16* %red64, align 2
  %conv65 = zext i16 %65 to i32
  %66 = load %struct.ColorSelData_t*, %struct.ColorSelData_t** %colors, align 8
  %interactive_fg66 = getelementptr inbounds %struct.ColorSelData_t, %struct.ColorSelData_t* %66, i32 0, i32 5
  %green67 = getelementptr inbounds %struct._GdkColor, %struct._GdkColor* %interactive_fg66, i32 0, i32 2
  %67 = load i16, i16* %green67, align 2
  %conv68 = zext i16 %67 to i32
  %68 = load %struct.ColorSelData_t*, %struct.ColorSelData_t** %colors, align 8
  %interactive_fg69 = getelementptr inbounds %struct.ColorSelData_t, %struct.ColorSelData_t* %68, i32 0, i32 5
  %blue70 = getelementptr inbounds %struct._GdkColor, %struct._GdkColor* %interactive_fg69, i32 0, i32 3
  %69 = load i16, i16* %blue70, align 2
  %conv71 = zext i16 %69 to i32
  %call72 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %63, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.21, i32 0, i32 0), i32 %conv65, i32 %conv68, i32 %conv71)
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %71 = load %struct.ColorSelData_t*, %struct.ColorSelData_t** %colors, align 8
  %interactive_bg = getelementptr inbounds %struct.ColorSelData_t, %struct.ColorSelData_t* %71, i32 0, i32 4
  %red73 = getelementptr inbounds %struct._GdkColor, %struct._GdkColor* %interactive_bg, i32 0, i32 1
  %72 = load i16, i16* %red73, align 2
  %conv74 = zext i16 %72 to i32
  %73 = load %struct.ColorSelData_t*, %struct.ColorSelData_t** %colors, align 8
  %interactive_bg75 = getelementptr inbounds %struct.ColorSelData_t, %struct.ColorSelData_t* %73, i32 0, i32 4
  %green76 = getelementptr inbounds %struct._GdkColor, %struct._GdkColor* %interactive_bg75, i32 0, i32 2
  %74 = load i16, i16* %green76, align 2
  %conv77 = zext i16 %74 to i32
  %75 = load %struct.ColorSelData_t*, %struct.ColorSelData_t** %colors, align 8
  %interactive_bg78 = getelementptr inbounds %struct.ColorSelData_t, %struct.ColorSelData_t* %75, i32 0, i32 4
  %blue79 = getelementptr inbounds %struct._GdkColor, %struct._GdkColor* %interactive_bg78, i32 0, i32 3
  %76 = load i16, i16* %blue79, align 2
  %conv80 = zext i16 %76 to i32
  %call81 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %70, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.22, i32 0, i32 0), i32 %conv74, i32 %conv77, i32 %conv80)
  %call82 = call %struct.MRU_t* @get_mru()
  %77 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  call void @mru_write(%struct.MRU_t* %call82, %struct._IO_FILE* %77)
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %call83 = call i32 @fclose(%struct._IO_FILE* %78)
  br label %if.end.86

if.else.84:                                       ; preds = %entry
  %call85 = call i8* @gettext(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.23, i32 0, i32 0)) #5
  %79 = load i8*, i8** %filename, align 8
  call void @do_file_error_dialog(i8* %call85, i8* %79)
  br label %if.end.86

if.end.86:                                        ; preds = %if.else.84, %if.end.12
  %80 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %80)
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare void @mru_write(%struct.MRU_t*, %struct._IO_FILE*) #1

declare %struct.MRU_t* @get_mru() #1

declare void @do_file_error_dialog(i8*, i8*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #2

; Function Attrs: nounwind uwtable
define void @do_preferences_dialog() #0 {
entry:
  %old_data = alloca %struct.PreferencesData_t*, align 8
  %map_type = alloca %struct._GtkWidget*, align 8
  %0 = load %struct.PreferencesDialog_t*, %struct.PreferencesDialog_t** @do_preferences_dialog.dialog, align 8
  %tobool = icmp ne %struct.PreferencesDialog_t* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call %struct.PreferencesDialog_t* @create_preferences_dialog()
  store %struct.PreferencesDialog_t* %call, %struct.PreferencesDialog_t** @do_preferences_dialog.dialog, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load %struct.PreferencesDialog_t*, %struct.PreferencesDialog_t** @do_preferences_dialog.dialog, align 8
  %notebook = getelementptr inbounds %struct.PreferencesDialog_t, %struct.PreferencesDialog_t* %1, i32 0, i32 1
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook, align 8
  %3 = bitcast %struct._GtkWidget* %2 to %struct._GTypeInstance*
  %call1 = call i64 @gtk_notebook_get_type() #7
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call1)
  %4 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkNotebook*
  call void @gtk_notebook_set_current_page(%struct._GtkNotebook* %4, i32 0)
  %call3 = call %struct.PreferencesData_t* @get_preferences()
  store %struct.PreferencesData_t* %call3, %struct.PreferencesData_t** %old_data, align 8
  %5 = load %struct.PreferencesDialog_t*, %struct.PreferencesDialog_t** @do_preferences_dialog.dialog, align 8
  %old_data4 = getelementptr inbounds %struct.PreferencesDialog_t, %struct.PreferencesDialog_t* %5, i32 0, i32 21
  store %struct.PreferencesData_t* %call3, %struct.PreferencesData_t** %old_data4, align 8
  %6 = load %struct.PreferencesData_t*, %struct.PreferencesData_t** %old_data, align 8
  %default_map_type = getelementptr inbounds %struct.PreferencesData_t, %struct.PreferencesData_t* %6, i32 0, i32 0
  %7 = load i32, i32* %default_map_type, align 4
  %cmp = icmp eq i32 %7, 1
  br i1 %cmp, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.end
  %8 = load %struct.PreferencesDialog_t*, %struct.PreferencesDialog_t** @do_preferences_dialog.dialog, align 8
  %cern = getelementptr inbounds %struct.PreferencesDialog_t, %struct.PreferencesDialog_t* %8, i32 0, i32 3
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %cern, align 8
  store %struct._GtkWidget* %9, %struct._GtkWidget** %map_type, align 8
  br label %if.end.11

if.else:                                          ; preds = %if.end
  %10 = load %struct.PreferencesData_t*, %struct.PreferencesData_t** %old_data, align 8
  %default_map_type6 = getelementptr inbounds %struct.PreferencesData_t, %struct.PreferencesData_t* %10, i32 0, i32 0
  %11 = load i32, i32* %default_map_type6, align 4
  %cmp7 = icmp eq i32 %11, 0
  br i1 %cmp7, label %if.then.8, label %if.else.9

if.then.8:                                        ; preds = %if.else
  %12 = load %struct.PreferencesDialog_t*, %struct.PreferencesDialog_t** @do_preferences_dialog.dialog, align 8
  %ncsa = getelementptr inbounds %struct.PreferencesDialog_t, %struct.PreferencesDialog_t* %12, i32 0, i32 2
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %ncsa, align 8
  store %struct._GtkWidget* %13, %struct._GtkWidget** %map_type, align 8
  br label %if.end.10

if.else.9:                                        ; preds = %if.else
  %14 = load %struct.PreferencesDialog_t*, %struct.PreferencesDialog_t** @do_preferences_dialog.dialog, align 8
  %csim = getelementptr inbounds %struct.PreferencesDialog_t, %struct.PreferencesDialog_t* %14, i32 0, i32 4
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %csim, align 8
  store %struct._GtkWidget* %15, %struct._GtkWidget** %map_type, align 8
  br label %if.end.10

if.end.10:                                        ; preds = %if.else.9, %if.then.8
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.10, %if.then.5
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %map_type, align 8
  %17 = bitcast %struct._GtkWidget* %16 to %struct._GTypeInstance*
  %call12 = call i64 @gtk_toggle_button_get_type() #7
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call12)
  %18 = bitcast %struct._GTypeInstance* %call13 to %struct._GtkToggleButton*
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %18, i32 1)
  %19 = load %struct.PreferencesDialog_t*, %struct.PreferencesDialog_t** @do_preferences_dialog.dialog, align 8
  %prompt_for_area_info = getelementptr inbounds %struct.PreferencesDialog_t, %struct.PreferencesDialog_t* %19, i32 0, i32 5
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %prompt_for_area_info, align 8
  %21 = bitcast %struct._GtkWidget* %20 to %struct._GTypeInstance*
  %call14 = call i64 @gtk_toggle_button_get_type() #7
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call14)
  %22 = bitcast %struct._GTypeInstance* %call15 to %struct._GtkToggleButton*
  %23 = load %struct.PreferencesData_t*, %struct.PreferencesData_t** %old_data, align 8
  %prompt_for_area_info16 = getelementptr inbounds %struct.PreferencesData_t, %struct.PreferencesData_t* %23, i32 0, i32 1
  %24 = load i32, i32* %prompt_for_area_info16, align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %22, i32 %24)
  %25 = load %struct.PreferencesDialog_t*, %struct.PreferencesDialog_t** @do_preferences_dialog.dialog, align 8
  %require_default_url = getelementptr inbounds %struct.PreferencesDialog_t, %struct.PreferencesDialog_t* %25, i32 0, i32 6
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %require_default_url, align 8
  %27 = bitcast %struct._GtkWidget* %26 to %struct._GTypeInstance*
  %call17 = call i64 @gtk_toggle_button_get_type() #7
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call17)
  %28 = bitcast %struct._GTypeInstance* %call18 to %struct._GtkToggleButton*
  %29 = load %struct.PreferencesData_t*, %struct.PreferencesData_t** %old_data, align 8
  %require_default_url19 = getelementptr inbounds %struct.PreferencesData_t, %struct.PreferencesData_t* %29, i32 0, i32 2
  %30 = load i32, i32* %require_default_url19, align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %28, i32 %30)
  %31 = load %struct.PreferencesDialog_t*, %struct.PreferencesDialog_t** @do_preferences_dialog.dialog, align 8
  %show_area_handle = getelementptr inbounds %struct.PreferencesDialog_t, %struct.PreferencesDialog_t* %31, i32 0, i32 7
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %show_area_handle, align 8
  %33 = bitcast %struct._GtkWidget* %32 to %struct._GTypeInstance*
  %call20 = call i64 @gtk_toggle_button_get_type() #7
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 %call20)
  %34 = bitcast %struct._GTypeInstance* %call21 to %struct._GtkToggleButton*
  %35 = load %struct.PreferencesData_t*, %struct.PreferencesData_t** %old_data, align 8
  %show_area_handle22 = getelementptr inbounds %struct.PreferencesData_t, %struct.PreferencesData_t* %35, i32 0, i32 3
  %36 = load i32, i32* %show_area_handle22, align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %34, i32 %36)
  %37 = load %struct.PreferencesDialog_t*, %struct.PreferencesDialog_t** @do_preferences_dialog.dialog, align 8
  %keep_circles_round = getelementptr inbounds %struct.PreferencesDialog_t, %struct.PreferencesDialog_t* %37, i32 0, i32 8
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** %keep_circles_round, align 8
  %39 = bitcast %struct._GtkWidget* %38 to %struct._GTypeInstance*
  %call23 = call i64 @gtk_toggle_button_get_type() #7
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %39, i64 %call23)
  %40 = bitcast %struct._GTypeInstance* %call24 to %struct._GtkToggleButton*
  %41 = load %struct.PreferencesData_t*, %struct.PreferencesData_t** %old_data, align 8
  %keep_circles_round25 = getelementptr inbounds %struct.PreferencesData_t, %struct.PreferencesData_t* %41, i32 0, i32 4
  %42 = load i32, i32* %keep_circles_round25, align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %40, i32 %42)
  %43 = load %struct.PreferencesDialog_t*, %struct.PreferencesDialog_t** @do_preferences_dialog.dialog, align 8
  %show_url_tip = getelementptr inbounds %struct.PreferencesDialog_t, %struct.PreferencesDialog_t* %43, i32 0, i32 9
  %44 = load %struct._GtkWidget*, %struct._GtkWidget** %show_url_tip, align 8
  %45 = bitcast %struct._GtkWidget* %44 to %struct._GTypeInstance*
  %call26 = call i64 @gtk_toggle_button_get_type() #7
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %45, i64 %call26)
  %46 = bitcast %struct._GTypeInstance* %call27 to %struct._GtkToggleButton*
  %47 = load %struct.PreferencesData_t*, %struct.PreferencesData_t** %old_data, align 8
  %show_url_tip28 = getelementptr inbounds %struct.PreferencesData_t, %struct.PreferencesData_t* %47, i32 0, i32 5
  %48 = load i32, i32* %show_url_tip28, align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %46, i32 %48)
  %49 = load %struct.PreferencesDialog_t*, %struct.PreferencesDialog_t** @do_preferences_dialog.dialog, align 8
  %use_doublesized = getelementptr inbounds %struct.PreferencesDialog_t, %struct.PreferencesDialog_t* %49, i32 0, i32 10
  %50 = load %struct._GtkWidget*, %struct._GtkWidget** %use_doublesized, align 8
  %51 = bitcast %struct._GtkWidget* %50 to %struct._GTypeInstance*
  %call29 = call i64 @gtk_toggle_button_get_type() #7
  %call30 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %51, i64 %call29)
  %52 = bitcast %struct._GTypeInstance* %call30 to %struct._GtkToggleButton*
  %53 = load %struct.PreferencesData_t*, %struct.PreferencesData_t** %old_data, align 8
  %use_doublesized31 = getelementptr inbounds %struct.PreferencesData_t, %struct.PreferencesData_t* %53, i32 0, i32 6
  %54 = load i32, i32* %use_doublesized31, align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %52, i32 %54)
  %55 = load %struct.PreferencesDialog_t*, %struct.PreferencesDialog_t** @do_preferences_dialog.dialog, align 8
  %undo_levels = getelementptr inbounds %struct.PreferencesDialog_t, %struct.PreferencesDialog_t* %55, i32 0, i32 11
  %56 = load %struct._GtkWidget*, %struct._GtkWidget** %undo_levels, align 8
  %57 = bitcast %struct._GtkWidget* %56 to %struct._GTypeInstance*
  %call32 = call i64 @gtk_spin_button_get_type() #7
  %call33 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %57, i64 %call32)
  %58 = bitcast %struct._GTypeInstance* %call33 to %struct._GtkSpinButton*
  %59 = load %struct.PreferencesData_t*, %struct.PreferencesData_t** %old_data, align 8
  %undo_levels34 = getelementptr inbounds %struct.PreferencesData_t, %struct.PreferencesData_t* %59, i32 0, i32 9
  %60 = load i32, i32* %undo_levels34, align 4
  %conv = sitofp i32 %60 to double
  call void @gtk_spin_button_set_value(%struct._GtkSpinButton* %58, double %conv)
  %61 = load %struct.PreferencesDialog_t*, %struct.PreferencesDialog_t** @do_preferences_dialog.dialog, align 8
  %mru_size = getelementptr inbounds %struct.PreferencesDialog_t, %struct.PreferencesDialog_t* %61, i32 0, i32 12
  %62 = load %struct._GtkWidget*, %struct._GtkWidget** %mru_size, align 8
  %63 = bitcast %struct._GtkWidget* %62 to %struct._GTypeInstance*
  %call35 = call i64 @gtk_spin_button_get_type() #7
  %call36 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %63, i64 %call35)
  %64 = bitcast %struct._GTypeInstance* %call36 to %struct._GtkSpinButton*
  %65 = load %struct.PreferencesData_t*, %struct.PreferencesData_t** %old_data, align 8
  %mru_size37 = getelementptr inbounds %struct.PreferencesData_t, %struct.PreferencesData_t* %65, i32 0, i32 10
  %66 = load i32, i32* %mru_size37, align 4
  %conv38 = sitofp i32 %66 to double
  call void @gtk_spin_button_set_value(%struct._GtkSpinButton* %64, double %conv38)
  %67 = load %struct.PreferencesDialog_t*, %struct.PreferencesDialog_t** @do_preferences_dialog.dialog, align 8
  %68 = load %struct.PreferencesData_t*, %struct.PreferencesData_t** %old_data, align 8
  %colors = getelementptr inbounds %struct.PreferencesData_t, %struct.PreferencesData_t* %68, i32 0, i32 11
  call void @set_button_colors(%struct.PreferencesDialog_t* %67, %struct.ColorSelData_t* %colors)
  %69 = load %struct.PreferencesDialog_t*, %struct.PreferencesDialog_t** @do_preferences_dialog.dialog, align 8
  %dialog = getelementptr inbounds %struct.PreferencesDialog_t, %struct.PreferencesDialog_t* %69, i32 0, i32 0
  %70 = load %struct.DefaultDialog_t*, %struct.DefaultDialog_t** %dialog, align 8
  call void @default_dialog_show(%struct.DefaultDialog_t* %70)
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.PreferencesDialog_t* @create_preferences_dialog() #0 {
entry:
  %data = alloca %struct.PreferencesDialog_t*, align 8
  %dialog = alloca %struct.DefaultDialog_t*, align 8
  %notebook = alloca %struct._GtkWidget*, align 8
  %call = call noalias i8* @g_malloc_n(i64 1, i64 176)
  %0 = bitcast i8* %call to %struct.PreferencesDialog_t*
  store %struct.PreferencesDialog_t* %0, %struct.PreferencesDialog_t** %data, align 8
  %call1 = call i8* @gettext(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.44, i32 0, i32 0)) #5
  %call2 = call %struct.DefaultDialog_t* @make_default_dialog(i8* %call1)
  store %struct.DefaultDialog_t* %call2, %struct.DefaultDialog_t** %dialog, align 8
  %1 = load %struct.PreferencesDialog_t*, %struct.PreferencesDialog_t** %data, align 8
  %dialog3 = getelementptr inbounds %struct.PreferencesDialog_t, %struct.PreferencesDialog_t* %1, i32 0, i32 0
  store %struct.DefaultDialog_t* %call2, %struct.DefaultDialog_t** %dialog3, align 8
  %2 = load %struct.DefaultDialog_t*, %struct.DefaultDialog_t** %dialog, align 8
  %3 = load %struct.PreferencesDialog_t*, %struct.PreferencesDialog_t** %data, align 8
  %4 = bitcast %struct.PreferencesDialog_t* %3 to i8*
  call void @default_dialog_set_ok_cb(%struct.DefaultDialog_t* %2, void (i8*)* @preferences_ok_cb, i8* %4)
  %call4 = call %struct._GtkWidget* @gtk_notebook_new()
  store %struct._GtkWidget* %call4, %struct._GtkWidget** %notebook, align 8
  %5 = load %struct.PreferencesDialog_t*, %struct.PreferencesDialog_t** %data, align 8
  %notebook5 = getelementptr inbounds %struct.PreferencesDialog_t, %struct.PreferencesDialog_t* %5, i32 0, i32 1
  store %struct._GtkWidget* %call4, %struct._GtkWidget** %notebook5, align 8
  %6 = load %struct.PreferencesDialog_t*, %struct.PreferencesDialog_t** %data, align 8
  %dialog6 = getelementptr inbounds %struct.PreferencesDialog_t, %struct.PreferencesDialog_t* %6, i32 0, i32 0
  %7 = load %struct.DefaultDialog_t*, %struct.DefaultDialog_t** %dialog6, align 8
  %vbox = getelementptr inbounds %struct.DefaultDialog_t, %struct.DefaultDialog_t* %7, i32 0, i32 1
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %9 = bitcast %struct._GtkWidget* %8 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_box_get_type() #7
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call7)
  %10 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkBox*
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %10, %struct._GtkWidget* %11, i32 1, i32 1, i32 0)
  %12 = load %struct.PreferencesDialog_t*, %struct.PreferencesDialog_t** %data, align 8
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook, align 8
  call void @create_general_tab(%struct.PreferencesDialog_t* %12, %struct._GtkWidget* %13)
  %14 = load %struct.PreferencesDialog_t*, %struct.PreferencesDialog_t** %data, align 8
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook, align 8
  call void @create_menu_tab(%struct.PreferencesDialog_t* %14, %struct._GtkWidget* %15)
  %16 = load %struct.PreferencesDialog_t*, %struct.PreferencesDialog_t** %data, align 8
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook, align 8
  call void @create_colors_tab(%struct.PreferencesDialog_t* %16, %struct._GtkWidget* %17)
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %18)
  %19 = load %struct.PreferencesDialog_t*, %struct.PreferencesDialog_t** %data, align 8
  ret %struct.PreferencesDialog_t* %19
}

declare void @gtk_notebook_set_current_page(%struct._GtkNotebook*, i32) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_notebook_get_type() #3

declare %struct.PreferencesData_t* @get_preferences() #1

declare void @gtk_toggle_button_set_active(%struct._GtkToggleButton*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_toggle_button_get_type() #3

declare void @gtk_spin_button_set_value(%struct._GtkSpinButton*, double) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_spin_button_get_type() #3

; Function Attrs: nounwind uwtable
define internal void @set_button_colors(%struct.PreferencesDialog_t* %dialog, %struct.ColorSelData_t* %colors) #0 {
entry:
  %dialog.addr = alloca %struct.PreferencesDialog_t*, align 8
  %colors.addr = alloca %struct.ColorSelData_t*, align 8
  store %struct.PreferencesDialog_t* %dialog, %struct.PreferencesDialog_t** %dialog.addr, align 8
  store %struct.ColorSelData_t* %colors, %struct.ColorSelData_t** %colors.addr, align 8
  %0 = load %struct.PreferencesDialog_t*, %struct.PreferencesDialog_t** %dialog.addr, align 8
  %normal_fg = getelementptr inbounds %struct.PreferencesDialog_t, %struct.PreferencesDialog_t* %0, i32 0, i32 13
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %normal_fg, align 8
  %2 = load %struct.ColorSelData_t*, %struct.ColorSelData_t** %colors.addr, align 8
  %normal_fg1 = getelementptr inbounds %struct.ColorSelData_t, %struct.ColorSelData_t* %2, i32 0, i32 0
  call void @set_button_color(%struct._GtkWidget* %1, %struct._GdkColor* %normal_fg1)
  %3 = load %struct.PreferencesDialog_t*, %struct.PreferencesDialog_t** %dialog.addr, align 8
  %normal_bg = getelementptr inbounds %struct.PreferencesDialog_t, %struct.PreferencesDialog_t* %3, i32 0, i32 14
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %normal_bg, align 8
  %5 = load %struct.ColorSelData_t*, %struct.ColorSelData_t** %colors.addr, align 8
  %normal_bg2 = getelementptr inbounds %struct.ColorSelData_t, %struct.ColorSelData_t* %5, i32 0, i32 1
  call void @set_button_color(%struct._GtkWidget* %4, %struct._GdkColor* %normal_bg2)
  %6 = load %struct.PreferencesDialog_t*, %struct.PreferencesDialog_t** %dialog.addr, align 8
  %selected_fg = getelementptr inbounds %struct.PreferencesDialog_t, %struct.PreferencesDialog_t* %6, i32 0, i32 15
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %selected_fg, align 8
  %8 = load %struct.ColorSelData_t*, %struct.ColorSelData_t** %colors.addr, align 8
  %selected_fg3 = getelementptr inbounds %struct.ColorSelData_t, %struct.ColorSelData_t* %8, i32 0, i32 2
  call void @set_button_color(%struct._GtkWidget* %7, %struct._GdkColor* %selected_fg3)
  %9 = load %struct.PreferencesDialog_t*, %struct.PreferencesDialog_t** %dialog.addr, align 8
  %selected_bg = getelementptr inbounds %struct.PreferencesDialog_t, %struct.PreferencesDialog_t* %9, i32 0, i32 16
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %selected_bg, align 8
  %11 = load %struct.ColorSelData_t*, %struct.ColorSelData_t** %colors.addr, align 8
  %selected_bg4 = getelementptr inbounds %struct.ColorSelData_t, %struct.ColorSelData_t* %11, i32 0, i32 3
  call void @set_button_color(%struct._GtkWidget* %10, %struct._GdkColor* %selected_bg4)
  %12 = load %struct.PreferencesDialog_t*, %struct.PreferencesDialog_t** %dialog.addr, align 8
  %interactive_fg = getelementptr inbounds %struct.PreferencesDialog_t, %struct.PreferencesDialog_t* %12, i32 0, i32 17
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %interactive_fg, align 8
  %14 = load %struct.ColorSelData_t*, %struct.ColorSelData_t** %colors.addr, align 8
  %interactive_fg5 = getelementptr inbounds %struct.ColorSelData_t, %struct.ColorSelData_t* %14, i32 0, i32 5
  call void @set_button_color(%struct._GtkWidget* %13, %struct._GdkColor* %interactive_fg5)
  %15 = load %struct.PreferencesDialog_t*, %struct.PreferencesDialog_t** %dialog.addr, align 8
  %interactive_bg = getelementptr inbounds %struct.PreferencesDialog_t, %struct.PreferencesDialog_t* %15, i32 0, i32 18
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %interactive_bg, align 8
  %17 = load %struct.ColorSelData_t*, %struct.ColorSelData_t** %colors.addr, align 8
  %interactive_bg6 = getelementptr inbounds %struct.ColorSelData_t, %struct.ColorSelData_t* %17, i32 0, i32 4
  call void @set_button_color(%struct._GtkWidget* %16, %struct._GdkColor* %interactive_bg6)
  ret void
}

declare void @default_dialog_show(%struct.DefaultDialog_t*) #1

; Function Attrs: nounwind
declare i8* @strtok(i8*, i8*) #2

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

; Function Attrs: nounwind uwtable
define internal i32 @parse_map_type() #0 {
entry:
  %retval = alloca i32, align 4
  %token = alloca i8*, align 8
  %call = call i8* @strtok(i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.41, i32 0, i32 0)) #5
  store i8* %call, i8** %token, align 8
  %0 = load i8*, i8** %token, align 8
  %call1 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i32 0, i32 0)) #6
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %1 = load i8*, i8** %token, align 8
  %call2 = call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i32 0, i32 0)) #6
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.end, label %if.then.4

if.then.4:                                        ; preds = %if.else
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %if.else
  br label %if.end.5

if.end.5:                                         ; preds = %if.end
  store i32 2, i32* %retval
  br label %return

return:                                           ; preds = %if.end.5, %if.then.4, %if.then
  %2 = load i32, i32* %retval
  ret i32 %2
}

; Function Attrs: nounwind uwtable
define internal i32 @parse_yes_no() #0 {
entry:
  %token = alloca i8*, align 8
  %call = call i8* @strtok(i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.41, i32 0, i32 0)) #5
  store i8* %call, i8** %token, align 8
  %0 = load i8*, i8** %token, align 8
  %call1 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0)) #6
  ret i32 %call1
}

; Function Attrs: nounwind uwtable
define internal i32 @parse_int() #0 {
entry:
  %token = alloca i8*, align 8
  %call = call i8* @strtok(i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.41, i32 0, i32 0)) #5
  store i8* %call, i8** %token, align 8
  %0 = load i8*, i8** %token, align 8
  %call1 = call i32 @atoi(i8* %0) #6
  ret i32 %call1
}

; Function Attrs: nounwind uwtable
define internal void @parse_color(%struct._GdkColor* %gdk_color) #0 {
entry:
  %gdk_color.addr = alloca %struct._GdkColor*, align 8
  store %struct._GdkColor* %gdk_color, %struct._GdkColor** %gdk_color.addr, align 8
  %call = call i32 @parse_int()
  %conv = trunc i32 %call to i16
  %0 = load %struct._GdkColor*, %struct._GdkColor** %gdk_color.addr, align 8
  %red = getelementptr inbounds %struct._GdkColor, %struct._GdkColor* %0, i32 0, i32 1
  store i16 %conv, i16* %red, align 2
  %call1 = call i32 @parse_int()
  %conv2 = trunc i32 %call1 to i16
  %1 = load %struct._GdkColor*, %struct._GdkColor** %gdk_color.addr, align 8
  %green = getelementptr inbounds %struct._GdkColor, %struct._GdkColor* %1, i32 0, i32 2
  store i16 %conv2, i16* %green, align 2
  %call3 = call i32 @parse_int()
  %conv4 = trunc i32 %call3 to i16
  %2 = load %struct._GdkColor*, %struct._GdkColor** %gdk_color.addr, align 8
  %blue = getelementptr inbounds %struct._GdkColor, %struct._GdkColor* %2, i32 0, i32 3
  store i16 %conv4, i16* %blue, align 2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @parse_mru_entry() #0 {
entry:
  %filename = alloca i8*, align 8
  %call = call i8* @strtok(i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.41, i32 0, i32 0)) #5
  store i8* %call, i8** %filename, align 8
  %call1 = call %struct.MRU_t* @get_mru()
  %0 = load i8*, i8** %filename, align 8
  call void @mru_add(%struct.MRU_t* %call1, i8* %0)
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #4

declare void @mru_add(%struct.MRU_t*, i8*) #1

declare noalias i8* @g_malloc_n(i64, i64) #1

declare %struct.DefaultDialog_t* @make_default_dialog(i8*) #1

declare void @default_dialog_set_ok_cb(%struct.DefaultDialog_t*, void (i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @preferences_ok_cb(i8* %data) #0 {
entry:
  %data.addr = alloca i8*, align 8
  %param = alloca %struct.PreferencesDialog_t*, align 8
  %old_data = alloca %struct.PreferencesData_t*, align 8
  %colors = alloca %struct.ColorSelData_t*, align 8
  %mru = alloca %struct.MRU_t*, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct.PreferencesDialog_t*
  store %struct.PreferencesDialog_t* %1, %struct.PreferencesDialog_t** %param, align 8
  %2 = load %struct.PreferencesDialog_t*, %struct.PreferencesDialog_t** %param, align 8
  %old_data1 = getelementptr inbounds %struct.PreferencesDialog_t, %struct.PreferencesDialog_t* %2, i32 0, i32 21
  %3 = load %struct.PreferencesData_t*, %struct.PreferencesData_t** %old_data1, align 8
  store %struct.PreferencesData_t* %3, %struct.PreferencesData_t** %old_data, align 8
  %4 = load %struct.PreferencesData_t*, %struct.PreferencesData_t** %old_data, align 8
  %colors2 = getelementptr inbounds %struct.PreferencesData_t, %struct.PreferencesData_t* %4, i32 0, i32 11
  store %struct.ColorSelData_t* %colors2, %struct.ColorSelData_t** %colors, align 8
  %call = call %struct.MRU_t* @get_mru()
  store %struct.MRU_t* %call, %struct.MRU_t** %mru, align 8
  %5 = load %struct.PreferencesDialog_t*, %struct.PreferencesDialog_t** %param, align 8
  %cern = getelementptr inbounds %struct.PreferencesDialog_t, %struct.PreferencesDialog_t* %5, i32 0, i32 3
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %cern, align 8
  %7 = bitcast %struct._GtkWidget* %6 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_toggle_button_get_type() #7
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call3)
  %8 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkToggleButton*
  %call5 = call i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton* %8)
  %tobool = icmp ne i32 %call5, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %9 = load %struct.PreferencesData_t*, %struct.PreferencesData_t** %old_data, align 8
  %default_map_type = getelementptr inbounds %struct.PreferencesData_t, %struct.PreferencesData_t* %9, i32 0, i32 0
  store i32 1, i32* %default_map_type, align 4
  br label %if.end.14

if.else:                                          ; preds = %entry
  %10 = load %struct.PreferencesDialog_t*, %struct.PreferencesDialog_t** %param, align 8
  %ncsa = getelementptr inbounds %struct.PreferencesDialog_t, %struct.PreferencesDialog_t* %10, i32 0, i32 2
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %ncsa, align 8
  %12 = bitcast %struct._GtkWidget* %11 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_toggle_button_get_type() #7
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call6)
  %13 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkToggleButton*
  %call8 = call i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton* %13)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.then.10, label %if.else.12

if.then.10:                                       ; preds = %if.else
  %14 = load %struct.PreferencesData_t*, %struct.PreferencesData_t** %old_data, align 8
  %default_map_type11 = getelementptr inbounds %struct.PreferencesData_t, %struct.PreferencesData_t* %14, i32 0, i32 0
  store i32 0, i32* %default_map_type11, align 4
  br label %if.end

if.else.12:                                       ; preds = %if.else
  %15 = load %struct.PreferencesData_t*, %struct.PreferencesData_t** %old_data, align 8
  %default_map_type13 = getelementptr inbounds %struct.PreferencesData_t, %struct.PreferencesData_t* %15, i32 0, i32 0
  store i32 2, i32* %default_map_type13, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.12, %if.then.10
  br label %if.end.14

if.end.14:                                        ; preds = %if.end, %if.then
  %16 = load %struct.PreferencesDialog_t*, %struct.PreferencesDialog_t** %param, align 8
  %prompt_for_area_info = getelementptr inbounds %struct.PreferencesDialog_t, %struct.PreferencesDialog_t* %16, i32 0, i32 5
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %prompt_for_area_info, align 8
  %18 = bitcast %struct._GtkWidget* %17 to %struct._GTypeInstance*
  %call15 = call i64 @gtk_toggle_button_get_type() #7
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call15)
  %19 = bitcast %struct._GTypeInstance* %call16 to %struct._GtkToggleButton*
  %call17 = call i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton* %19)
  %20 = load %struct.PreferencesData_t*, %struct.PreferencesData_t** %old_data, align 8
  %prompt_for_area_info18 = getelementptr inbounds %struct.PreferencesData_t, %struct.PreferencesData_t* %20, i32 0, i32 1
  store i32 %call17, i32* %prompt_for_area_info18, align 4
  %21 = load %struct.PreferencesDialog_t*, %struct.PreferencesDialog_t** %param, align 8
  %require_default_url = getelementptr inbounds %struct.PreferencesDialog_t, %struct.PreferencesDialog_t* %21, i32 0, i32 6
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %require_default_url, align 8
  %23 = bitcast %struct._GtkWidget* %22 to %struct._GTypeInstance*
  %call19 = call i64 @gtk_toggle_button_get_type() #7
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call19)
  %24 = bitcast %struct._GTypeInstance* %call20 to %struct._GtkToggleButton*
  %call21 = call i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton* %24)
  %25 = load %struct.PreferencesData_t*, %struct.PreferencesData_t** %old_data, align 8
  %require_default_url22 = getelementptr inbounds %struct.PreferencesData_t, %struct.PreferencesData_t* %25, i32 0, i32 2
  store i32 %call21, i32* %require_default_url22, align 4
  %26 = load %struct.PreferencesDialog_t*, %struct.PreferencesDialog_t** %param, align 8
  %show_area_handle = getelementptr inbounds %struct.PreferencesDialog_t, %struct.PreferencesDialog_t* %26, i32 0, i32 7
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %show_area_handle, align 8
  %28 = bitcast %struct._GtkWidget* %27 to %struct._GTypeInstance*
  %call23 = call i64 @gtk_toggle_button_get_type() #7
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call23)
  %29 = bitcast %struct._GTypeInstance* %call24 to %struct._GtkToggleButton*
  %call25 = call i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton* %29)
  %30 = load %struct.PreferencesData_t*, %struct.PreferencesData_t** %old_data, align 8
  %show_area_handle26 = getelementptr inbounds %struct.PreferencesData_t, %struct.PreferencesData_t* %30, i32 0, i32 3
  store i32 %call25, i32* %show_area_handle26, align 4
  %31 = load %struct.PreferencesDialog_t*, %struct.PreferencesDialog_t** %param, align 8
  %keep_circles_round = getelementptr inbounds %struct.PreferencesDialog_t, %struct.PreferencesDialog_t* %31, i32 0, i32 8
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %keep_circles_round, align 8
  %33 = bitcast %struct._GtkWidget* %32 to %struct._GTypeInstance*
  %call27 = call i64 @gtk_toggle_button_get_type() #7
  %call28 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 %call27)
  %34 = bitcast %struct._GTypeInstance* %call28 to %struct._GtkToggleButton*
  %call29 = call i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton* %34)
  %35 = load %struct.PreferencesData_t*, %struct.PreferencesData_t** %old_data, align 8
  %keep_circles_round30 = getelementptr inbounds %struct.PreferencesData_t, %struct.PreferencesData_t* %35, i32 0, i32 4
  store i32 %call29, i32* %keep_circles_round30, align 4
  %36 = load %struct.PreferencesDialog_t*, %struct.PreferencesDialog_t** %param, align 8
  %show_url_tip = getelementptr inbounds %struct.PreferencesDialog_t, %struct.PreferencesDialog_t* %36, i32 0, i32 9
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %show_url_tip, align 8
  %38 = bitcast %struct._GtkWidget* %37 to %struct._GTypeInstance*
  %call31 = call i64 @gtk_toggle_button_get_type() #7
  %call32 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %38, i64 %call31)
  %39 = bitcast %struct._GTypeInstance* %call32 to %struct._GtkToggleButton*
  %call33 = call i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton* %39)
  %40 = load %struct.PreferencesData_t*, %struct.PreferencesData_t** %old_data, align 8
  %show_url_tip34 = getelementptr inbounds %struct.PreferencesData_t, %struct.PreferencesData_t* %40, i32 0, i32 5
  store i32 %call33, i32* %show_url_tip34, align 4
  %41 = load %struct.PreferencesDialog_t*, %struct.PreferencesDialog_t** %param, align 8
  %use_doublesized = getelementptr inbounds %struct.PreferencesDialog_t, %struct.PreferencesDialog_t* %41, i32 0, i32 10
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** %use_doublesized, align 8
  %43 = bitcast %struct._GtkWidget* %42 to %struct._GTypeInstance*
  %call35 = call i64 @gtk_toggle_button_get_type() #7
  %call36 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %43, i64 %call35)
  %44 = bitcast %struct._GTypeInstance* %call36 to %struct._GtkToggleButton*
  %call37 = call i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton* %44)
  %45 = load %struct.PreferencesData_t*, %struct.PreferencesData_t** %old_data, align 8
  %use_doublesized38 = getelementptr inbounds %struct.PreferencesData_t, %struct.PreferencesData_t* %45, i32 0, i32 6
  store i32 %call37, i32* %use_doublesized38, align 4
  %46 = load %struct.PreferencesDialog_t*, %struct.PreferencesDialog_t** %param, align 8
  %mru_size = getelementptr inbounds %struct.PreferencesDialog_t, %struct.PreferencesDialog_t* %46, i32 0, i32 12
  %47 = load %struct._GtkWidget*, %struct._GtkWidget** %mru_size, align 8
  %48 = bitcast %struct._GtkWidget* %47 to %struct._GTypeInstance*
  %call39 = call i64 @gtk_spin_button_get_type() #7
  %call40 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %48, i64 %call39)
  %49 = bitcast %struct._GTypeInstance* %call40 to %struct._GtkSpinButton*
  %call41 = call i32 @gtk_spin_button_get_value_as_int(%struct._GtkSpinButton* %49)
  %50 = load %struct.PreferencesData_t*, %struct.PreferencesData_t** %old_data, align 8
  %mru_size42 = getelementptr inbounds %struct.PreferencesData_t, %struct.PreferencesData_t* %50, i32 0, i32 10
  store i32 %call41, i32* %mru_size42, align 4
  %51 = load %struct.PreferencesDialog_t*, %struct.PreferencesDialog_t** %param, align 8
  %undo_levels = getelementptr inbounds %struct.PreferencesDialog_t, %struct.PreferencesDialog_t* %51, i32 0, i32 11
  %52 = load %struct._GtkWidget*, %struct._GtkWidget** %undo_levels, align 8
  %53 = bitcast %struct._GtkWidget* %52 to %struct._GTypeInstance*
  %call43 = call i64 @gtk_spin_button_get_type() #7
  %call44 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %53, i64 %call43)
  %54 = bitcast %struct._GTypeInstance* %call44 to %struct._GtkSpinButton*
  %call45 = call i32 @gtk_spin_button_get_value_as_int(%struct._GtkSpinButton* %54)
  %55 = load %struct.PreferencesData_t*, %struct.PreferencesData_t** %old_data, align 8
  %undo_levels46 = getelementptr inbounds %struct.PreferencesData_t, %struct.PreferencesData_t* %55, i32 0, i32 9
  store i32 %call45, i32* %undo_levels46, align 4
  %56 = load %struct.MRU_t*, %struct.MRU_t** %mru, align 8
  %57 = load %struct.PreferencesData_t*, %struct.PreferencesData_t** %old_data, align 8
  %mru_size47 = getelementptr inbounds %struct.PreferencesData_t, %struct.PreferencesData_t* %57, i32 0, i32 10
  %58 = load i32, i32* %mru_size47, align 4
  call void @mru_set_size(%struct.MRU_t* %56, i32 %58)
  %59 = load %struct.MRU_t*, %struct.MRU_t** %mru, align 8
  call void @menu_build_mru_items(%struct.MRU_t* %59)
  %60 = load %struct.PreferencesData_t*, %struct.PreferencesData_t** %old_data, align 8
  %undo_levels48 = getelementptr inbounds %struct.PreferencesData_t, %struct.PreferencesData_t* %60, i32 0, i32 9
  %61 = load i32, i32* %undo_levels48, align 4
  call void @command_list_set_undo_level(i32 %61)
  %62 = load %struct.PreferencesDialog_t*, %struct.PreferencesDialog_t** %param, align 8
  %63 = load %struct.ColorSelData_t*, %struct.ColorSelData_t** %colors, align 8
  call void @get_button_colors(%struct.PreferencesDialog_t* %62, %struct.ColorSelData_t* %63)
  %64 = load %struct.PreferencesData_t*, %struct.PreferencesData_t** %old_data, align 8
  %use_doublesized49 = getelementptr inbounds %struct.PreferencesData_t, %struct.PreferencesData_t* %64, i32 0, i32 6
  %65 = load i32, i32* %use_doublesized49, align 4
  call void @set_sash_size(i32 %65)
  call void @preview_redraw()
  ret void
}

declare %struct._GtkWidget* @gtk_notebook_new() #1

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #3

; Function Attrs: nounwind uwtable
define internal void @create_general_tab(%struct.PreferencesDialog_t* %data, %struct._GtkWidget* %notebook) #0 {
entry:
  %data.addr = alloca %struct.PreferencesDialog_t*, align 8
  %notebook.addr = alloca %struct._GtkWidget*, align 8
  %table = alloca %struct._GtkWidget*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  %hbox = alloca %struct._GtkWidget*, align 8
  store %struct.PreferencesDialog_t* %data, %struct.PreferencesDialog_t** %data.addr, align 8
  store %struct._GtkWidget* %notebook, %struct._GtkWidget** %notebook.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook.addr, align 8
  %call = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.45, i32 0, i32 0)) #5
  %call1 = call %struct._GtkWidget* @create_tab(%struct._GtkWidget* %0, i8* %call, i32 7, i32 2)
  store %struct._GtkWidget* %call1, %struct._GtkWidget** %table, align 8
  %call2 = call i8* @gettext(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.46, i32 0, i32 0)) #5
  %call3 = call %struct._GtkWidget* @gimp_frame_new(i8* %call2)
  store %struct._GtkWidget* %call3, %struct._GtkWidget** %frame, align 8
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %1)
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %3 = bitcast %struct._GtkWidget* %2 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_table_get_type() #7
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call4)
  %4 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkTable*
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_table_attach_defaults(%struct._GtkTable* %4, %struct._GtkWidget* %5, i32 0, i32 2, i32 0, i32 1)
  %call6 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 1)
  store %struct._GtkWidget* %call6, %struct._GtkWidget** %hbox, align 8
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %7 = bitcast %struct._GtkWidget* %6 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_container_get_type() #7
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call7)
  %8 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkContainer*
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_container_add(%struct._GtkContainer* %8, %struct._GtkWidget* %9)
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %10)
  %call9 = call %struct._GtkWidget* @gtk_radio_button_new_with_mnemonic_from_widget(%struct._GtkRadioButton* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.47, i32 0, i32 0))
  %11 = load %struct.PreferencesDialog_t*, %struct.PreferencesDialog_t** %data.addr, align 8
  %ncsa = getelementptr inbounds %struct.PreferencesDialog_t, %struct.PreferencesDialog_t* %11, i32 0, i32 2
  store %struct._GtkWidget* %call9, %struct._GtkWidget** %ncsa, align 8
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %13 = bitcast %struct._GtkWidget* %12 to %struct._GTypeInstance*
  %call10 = call i64 @gtk_box_get_type() #7
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call10)
  %14 = bitcast %struct._GTypeInstance* %call11 to %struct._GtkBox*
  %15 = load %struct.PreferencesDialog_t*, %struct.PreferencesDialog_t** %data.addr, align 8
  %ncsa12 = getelementptr inbounds %struct.PreferencesDialog_t, %struct.PreferencesDialog_t* %15, i32 0, i32 2
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %ncsa12, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %14, %struct._GtkWidget* %16, i32 1, i32 1, i32 10)
  %17 = load %struct.PreferencesDialog_t*, %struct.PreferencesDialog_t** %data.addr, align 8
  %ncsa13 = getelementptr inbounds %struct.PreferencesDialog_t, %struct.PreferencesDialog_t* %17, i32 0, i32 2
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %ncsa13, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %18)
  %19 = load %struct.PreferencesDialog_t*, %struct.PreferencesDialog_t** %data.addr, align 8
  %ncsa14 = getelementptr inbounds %struct.PreferencesDialog_t, %struct.PreferencesDialog_t* %19, i32 0, i32 2
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %ncsa14, align 8
  %21 = bitcast %struct._GtkWidget* %20 to %struct._GTypeInstance*
  %call15 = call i64 @gtk_radio_button_get_type() #7
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call15)
  %22 = bitcast %struct._GTypeInstance* %call16 to %struct._GtkRadioButton*
  %call17 = call %struct._GtkWidget* @gtk_radio_button_new_with_mnemonic_from_widget(%struct._GtkRadioButton* %22, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.48, i32 0, i32 0))
  %23 = load %struct.PreferencesDialog_t*, %struct.PreferencesDialog_t** %data.addr, align 8
  %cern = getelementptr inbounds %struct.PreferencesDialog_t, %struct.PreferencesDialog_t* %23, i32 0, i32 3
  store %struct._GtkWidget* %call17, %struct._GtkWidget** %cern, align 8
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %25 = bitcast %struct._GtkWidget* %24 to %struct._GTypeInstance*
  %call18 = call i64 @gtk_box_get_type() #7
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call18)
  %26 = bitcast %struct._GTypeInstance* %call19 to %struct._GtkBox*
  %27 = load %struct.PreferencesDialog_t*, %struct.PreferencesDialog_t** %data.addr, align 8
  %cern20 = getelementptr inbounds %struct.PreferencesDialog_t, %struct.PreferencesDialog_t* %27, i32 0, i32 3
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %cern20, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %26, %struct._GtkWidget* %28, i32 1, i32 1, i32 10)
  %29 = load %struct.PreferencesDialog_t*, %struct.PreferencesDialog_t** %data.addr, align 8
  %cern21 = getelementptr inbounds %struct.PreferencesDialog_t, %struct.PreferencesDialog_t* %29, i32 0, i32 3
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %cern21, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %30)
  %31 = load %struct.PreferencesDialog_t*, %struct.PreferencesDialog_t** %data.addr, align 8
  %cern22 = getelementptr inbounds %struct.PreferencesDialog_t, %struct.PreferencesDialog_t* %31, i32 0, i32 3
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %cern22, align 8
  %33 = bitcast %struct._GtkWidget* %32 to %struct._GTypeInstance*
  %call23 = call i64 @gtk_radio_button_get_type() #7
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 %call23)
  %34 = bitcast %struct._GTypeInstance* %call24 to %struct._GtkRadioButton*
  %call25 = call %struct._GtkWidget* @gtk_radio_button_new_with_mnemonic_from_widget(%struct._GtkRadioButton* %34, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.49, i32 0, i32 0))
  %35 = load %struct.PreferencesDialog_t*, %struct.PreferencesDialog_t** %data.addr, align 8
  %csim = getelementptr inbounds %struct.PreferencesDialog_t, %struct.PreferencesDialog_t* %35, i32 0, i32 4
  store %struct._GtkWidget* %call25, %struct._GtkWidget** %csim, align 8
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %37 = bitcast %struct._GtkWidget* %36 to %struct._GTypeInstance*
  %call26 = call i64 @gtk_box_get_type() #7
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %37, i64 %call26)
  %38 = bitcast %struct._GTypeInstance* %call27 to %struct._GtkBox*
  %39 = load %struct.PreferencesDialog_t*, %struct.PreferencesDialog_t** %data.addr, align 8
  %csim28 = getelementptr inbounds %struct.PreferencesDialog_t, %struct.PreferencesDialog_t* %39, i32 0, i32 4
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %csim28, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %38, %struct._GtkWidget* %40, i32 1, i32 1, i32 10)
  %41 = load %struct.PreferencesDialog_t*, %struct.PreferencesDialog_t** %data.addr, align 8
  %csim29 = getelementptr inbounds %struct.PreferencesDialog_t, %struct.PreferencesDialog_t* %41, i32 0, i32 4
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** %csim29, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %42)
  %43 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %call30 = call i8* @gettext(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.50, i32 0, i32 0)) #5
  %call31 = call %struct._GtkWidget* @create_check_button_in_table(%struct._GtkWidget* %43, i32 1, i32 0, i8* %call30)
  %44 = load %struct.PreferencesDialog_t*, %struct.PreferencesDialog_t** %data.addr, align 8
  %prompt_for_area_info = getelementptr inbounds %struct.PreferencesDialog_t, %struct.PreferencesDialog_t* %44, i32 0, i32 5
  store %struct._GtkWidget* %call31, %struct._GtkWidget** %prompt_for_area_info, align 8
  %45 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %call32 = call i8* @gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.51, i32 0, i32 0)) #5
  %call33 = call %struct._GtkWidget* @create_check_button_in_table(%struct._GtkWidget* %45, i32 2, i32 0, i8* %call32)
  %46 = load %struct.PreferencesDialog_t*, %struct.PreferencesDialog_t** %data.addr, align 8
  %require_default_url = getelementptr inbounds %struct.PreferencesDialog_t, %struct.PreferencesDialog_t* %46, i32 0, i32 6
  store %struct._GtkWidget* %call33, %struct._GtkWidget** %require_default_url, align 8
  %47 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %call34 = call i8* @gettext(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.52, i32 0, i32 0)) #5
  %call35 = call %struct._GtkWidget* @create_check_button_in_table(%struct._GtkWidget* %47, i32 3, i32 0, i8* %call34)
  %48 = load %struct.PreferencesDialog_t*, %struct.PreferencesDialog_t** %data.addr, align 8
  %show_area_handle = getelementptr inbounds %struct.PreferencesDialog_t, %struct.PreferencesDialog_t* %48, i32 0, i32 7
  store %struct._GtkWidget* %call35, %struct._GtkWidget** %show_area_handle, align 8
  %49 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %call36 = call i8* @gettext(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.53, i32 0, i32 0)) #5
  %call37 = call %struct._GtkWidget* @create_check_button_in_table(%struct._GtkWidget* %49, i32 4, i32 0, i8* %call36)
  %50 = load %struct.PreferencesDialog_t*, %struct.PreferencesDialog_t** %data.addr, align 8
  %keep_circles_round = getelementptr inbounds %struct.PreferencesDialog_t, %struct.PreferencesDialog_t* %50, i32 0, i32 8
  store %struct._GtkWidget* %call37, %struct._GtkWidget** %keep_circles_round, align 8
  %51 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %call38 = call i8* @gettext(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.54, i32 0, i32 0)) #5
  %call39 = call %struct._GtkWidget* @create_check_button_in_table(%struct._GtkWidget* %51, i32 5, i32 0, i8* %call38)
  %52 = load %struct.PreferencesDialog_t*, %struct.PreferencesDialog_t** %data.addr, align 8
  %show_url_tip = getelementptr inbounds %struct.PreferencesDialog_t, %struct.PreferencesDialog_t* %52, i32 0, i32 9
  store %struct._GtkWidget* %call39, %struct._GtkWidget** %show_url_tip, align 8
  %53 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %call40 = call i8* @gettext(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.55, i32 0, i32 0)) #5
  %call41 = call %struct._GtkWidget* @create_check_button_in_table(%struct._GtkWidget* %53, i32 6, i32 0, i8* %call40)
  %54 = load %struct.PreferencesDialog_t*, %struct.PreferencesDialog_t** %data.addr, align 8
  %use_doublesized = getelementptr inbounds %struct.PreferencesDialog_t, %struct.PreferencesDialog_t* %54, i32 0, i32 10
  store %struct._GtkWidget* %call41, %struct._GtkWidget** %use_doublesized, align 8
  %55 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %55)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @create_menu_tab(%struct.PreferencesDialog_t* %data, %struct._GtkWidget* %notebook) #0 {
entry:
  %data.addr = alloca %struct.PreferencesDialog_t*, align 8
  %notebook.addr = alloca %struct._GtkWidget*, align 8
  %table = alloca %struct._GtkWidget*, align 8
  %label = alloca %struct._GtkWidget*, align 8
  store %struct.PreferencesDialog_t* %data, %struct.PreferencesDialog_t** %data.addr, align 8
  store %struct._GtkWidget* %notebook, %struct._GtkWidget** %notebook.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook.addr, align 8
  %call = call i8* @gettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.56, i32 0, i32 0)) #5
  %call1 = call %struct._GtkWidget* @create_tab(%struct._GtkWidget* %0, i8* %call, i32 2, i32 2)
  store %struct._GtkWidget* %call1, %struct._GtkWidget** %table, align 8
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %call2 = call i8* @gettext(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.57, i32 0, i32 0)) #5
  %call3 = call %struct._GtkWidget* @create_label_in_table(%struct._GtkWidget* %1, i32 0, i32 0, i8* %call2)
  store %struct._GtkWidget* %call3, %struct._GtkWidget** %label, align 8
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %call4 = call %struct._GtkWidget* @create_spin_button_in_table(%struct._GtkWidget* %2, %struct._GtkWidget* %3, i32 0, i32 1, i32 1, i32 1, i32 99)
  %4 = load %struct.PreferencesDialog_t*, %struct.PreferencesDialog_t** %data.addr, align 8
  %undo_levels = getelementptr inbounds %struct.PreferencesDialog_t, %struct.PreferencesDialog_t* %4, i32 0, i32 11
  store %struct._GtkWidget* %call4, %struct._GtkWidget** %undo_levels, align 8
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %call5 = call i8* @gettext(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.58, i32 0, i32 0)) #5
  %call6 = call %struct._GtkWidget* @create_label_in_table(%struct._GtkWidget* %5, i32 1, i32 0, i8* %call5)
  store %struct._GtkWidget* %call6, %struct._GtkWidget** %label, align 8
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %call7 = call %struct._GtkWidget* @create_spin_button_in_table(%struct._GtkWidget* %6, %struct._GtkWidget* %7, i32 1, i32 1, i32 1, i32 1, i32 16)
  %8 = load %struct.PreferencesDialog_t*, %struct.PreferencesDialog_t** %data.addr, align 8
  %mru_size = getelementptr inbounds %struct.PreferencesDialog_t, %struct.PreferencesDialog_t* %8, i32 0, i32 12
  store %struct._GtkWidget* %call7, %struct._GtkWidget** %mru_size, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @create_colors_tab(%struct.PreferencesDialog_t* %data, %struct._GtkWidget* %notebook) #0 {
entry:
  %data.addr = alloca %struct.PreferencesDialog_t*, align 8
  %notebook.addr = alloca %struct._GtkWidget*, align 8
  %table = alloca %struct._GtkWidget*, align 8
  store %struct.PreferencesDialog_t* %data, %struct.PreferencesDialog_t** %data.addr, align 8
  store %struct._GtkWidget* %notebook, %struct._GtkWidget** %notebook.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook.addr, align 8
  %call = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.59, i32 0, i32 0)) #5
  %call1 = call %struct._GtkWidget* @create_tab(%struct._GtkWidget* %0, i8* %call, i32 3, i32 3)
  store %struct._GtkWidget* %call1, %struct._GtkWidget** %table, align 8
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %call2 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.60, i32 0, i32 0)) #5
  %call3 = call %struct._GtkWidget* @create_label_in_table(%struct._GtkWidget* %1, i32 0, i32 0, i8* %call2)
  %2 = load %struct.PreferencesDialog_t*, %struct.PreferencesDialog_t** %data.addr, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %call4 = call %struct._GtkWidget* @create_color_field(%struct.PreferencesDialog_t* %2, %struct._GtkWidget* %3, i32 0, i32 1)
  %4 = load %struct.PreferencesDialog_t*, %struct.PreferencesDialog_t** %data.addr, align 8
  %normal_fg = getelementptr inbounds %struct.PreferencesDialog_t, %struct.PreferencesDialog_t* %4, i32 0, i32 13
  store %struct._GtkWidget* %call4, %struct._GtkWidget** %normal_fg, align 8
  %5 = load %struct.PreferencesDialog_t*, %struct.PreferencesDialog_t** %data.addr, align 8
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %call5 = call %struct._GtkWidget* @create_color_field(%struct.PreferencesDialog_t* %5, %struct._GtkWidget* %6, i32 0, i32 2)
  %7 = load %struct.PreferencesDialog_t*, %struct.PreferencesDialog_t** %data.addr, align 8
  %normal_bg = getelementptr inbounds %struct.PreferencesDialog_t, %struct.PreferencesDialog_t* %7, i32 0, i32 14
  store %struct._GtkWidget* %call5, %struct._GtkWidget** %normal_bg, align 8
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %call6 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.61, i32 0, i32 0)) #5
  %call7 = call %struct._GtkWidget* @create_label_in_table(%struct._GtkWidget* %8, i32 1, i32 0, i8* %call6)
  %9 = load %struct.PreferencesDialog_t*, %struct.PreferencesDialog_t** %data.addr, align 8
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %call8 = call %struct._GtkWidget* @create_color_field(%struct.PreferencesDialog_t* %9, %struct._GtkWidget* %10, i32 1, i32 1)
  %11 = load %struct.PreferencesDialog_t*, %struct.PreferencesDialog_t** %data.addr, align 8
  %selected_fg = getelementptr inbounds %struct.PreferencesDialog_t, %struct.PreferencesDialog_t* %11, i32 0, i32 15
  store %struct._GtkWidget* %call8, %struct._GtkWidget** %selected_fg, align 8
  %12 = load %struct.PreferencesDialog_t*, %struct.PreferencesDialog_t** %data.addr, align 8
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %call9 = call %struct._GtkWidget* @create_color_field(%struct.PreferencesDialog_t* %12, %struct._GtkWidget* %13, i32 1, i32 2)
  %14 = load %struct.PreferencesDialog_t*, %struct.PreferencesDialog_t** %data.addr, align 8
  %selected_bg = getelementptr inbounds %struct.PreferencesDialog_t, %struct.PreferencesDialog_t* %14, i32 0, i32 16
  store %struct._GtkWidget* %call9, %struct._GtkWidget** %selected_bg, align 8
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %call10 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.62, i32 0, i32 0)) #5
  %call11 = call %struct._GtkWidget* @create_label_in_table(%struct._GtkWidget* %15, i32 2, i32 0, i8* %call10)
  %16 = load %struct.PreferencesDialog_t*, %struct.PreferencesDialog_t** %data.addr, align 8
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %call12 = call %struct._GtkWidget* @create_color_field(%struct.PreferencesDialog_t* %16, %struct._GtkWidget* %17, i32 2, i32 1)
  %18 = load %struct.PreferencesDialog_t*, %struct.PreferencesDialog_t** %data.addr, align 8
  %interactive_fg = getelementptr inbounds %struct.PreferencesDialog_t, %struct.PreferencesDialog_t* %18, i32 0, i32 17
  store %struct._GtkWidget* %call12, %struct._GtkWidget** %interactive_fg, align 8
  %19 = load %struct.PreferencesDialog_t*, %struct.PreferencesDialog_t** %data.addr, align 8
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %call13 = call %struct._GtkWidget* @create_color_field(%struct.PreferencesDialog_t* %19, %struct._GtkWidget* %20, i32 2, i32 2)
  %21 = load %struct.PreferencesDialog_t*, %struct.PreferencesDialog_t** %data.addr, align 8
  %interactive_bg = getelementptr inbounds %struct.PreferencesDialog_t, %struct.PreferencesDialog_t* %21, i32 0, i32 18
  store %struct._GtkWidget* %call13, %struct._GtkWidget** %interactive_bg, align 8
  ret void
}

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton*) #1

declare i32 @gtk_spin_button_get_value_as_int(%struct._GtkSpinButton*) #1

declare void @mru_set_size(%struct.MRU_t*, i32) #1

declare void @menu_build_mru_items(%struct.MRU_t*) #1

declare void @command_list_set_undo_level(i32) #1

; Function Attrs: nounwind uwtable
define internal void @get_button_colors(%struct.PreferencesDialog_t* %dialog, %struct.ColorSelData_t* %colors) #0 {
entry:
  %dialog.addr = alloca %struct.PreferencesDialog_t*, align 8
  %colors.addr = alloca %struct.ColorSelData_t*, align 8
  store %struct.PreferencesDialog_t* %dialog, %struct.PreferencesDialog_t** %dialog.addr, align 8
  store %struct.ColorSelData_t* %colors, %struct.ColorSelData_t** %colors.addr, align 8
  %0 = load %struct.PreferencesDialog_t*, %struct.PreferencesDialog_t** %dialog.addr, align 8
  %normal_fg = getelementptr inbounds %struct.PreferencesDialog_t, %struct.PreferencesDialog_t* %0, i32 0, i32 13
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %normal_fg, align 8
  %2 = load %struct.ColorSelData_t*, %struct.ColorSelData_t** %colors.addr, align 8
  %normal_fg1 = getelementptr inbounds %struct.ColorSelData_t, %struct.ColorSelData_t* %2, i32 0, i32 0
  call void @get_button_color(%struct._GtkWidget* %1, %struct._GdkColor* %normal_fg1)
  %3 = load %struct.PreferencesDialog_t*, %struct.PreferencesDialog_t** %dialog.addr, align 8
  %normal_bg = getelementptr inbounds %struct.PreferencesDialog_t, %struct.PreferencesDialog_t* %3, i32 0, i32 14
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %normal_bg, align 8
  %5 = load %struct.ColorSelData_t*, %struct.ColorSelData_t** %colors.addr, align 8
  %normal_bg2 = getelementptr inbounds %struct.ColorSelData_t, %struct.ColorSelData_t* %5, i32 0, i32 1
  call void @get_button_color(%struct._GtkWidget* %4, %struct._GdkColor* %normal_bg2)
  %6 = load %struct.PreferencesDialog_t*, %struct.PreferencesDialog_t** %dialog.addr, align 8
  %selected_fg = getelementptr inbounds %struct.PreferencesDialog_t, %struct.PreferencesDialog_t* %6, i32 0, i32 15
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %selected_fg, align 8
  %8 = load %struct.ColorSelData_t*, %struct.ColorSelData_t** %colors.addr, align 8
  %selected_fg3 = getelementptr inbounds %struct.ColorSelData_t, %struct.ColorSelData_t* %8, i32 0, i32 2
  call void @get_button_color(%struct._GtkWidget* %7, %struct._GdkColor* %selected_fg3)
  %9 = load %struct.PreferencesDialog_t*, %struct.PreferencesDialog_t** %dialog.addr, align 8
  %selected_bg = getelementptr inbounds %struct.PreferencesDialog_t, %struct.PreferencesDialog_t* %9, i32 0, i32 16
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %selected_bg, align 8
  %11 = load %struct.ColorSelData_t*, %struct.ColorSelData_t** %colors.addr, align 8
  %selected_bg4 = getelementptr inbounds %struct.ColorSelData_t, %struct.ColorSelData_t* %11, i32 0, i32 3
  call void @get_button_color(%struct._GtkWidget* %10, %struct._GdkColor* %selected_bg4)
  %12 = load %struct.PreferencesDialog_t*, %struct.PreferencesDialog_t** %dialog.addr, align 8
  %interactive_fg = getelementptr inbounds %struct.PreferencesDialog_t, %struct.PreferencesDialog_t* %12, i32 0, i32 17
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %interactive_fg, align 8
  %14 = load %struct.ColorSelData_t*, %struct.ColorSelData_t** %colors.addr, align 8
  %interactive_fg5 = getelementptr inbounds %struct.ColorSelData_t, %struct.ColorSelData_t* %14, i32 0, i32 5
  call void @get_button_color(%struct._GtkWidget* %13, %struct._GdkColor* %interactive_fg5)
  %15 = load %struct.PreferencesDialog_t*, %struct.PreferencesDialog_t** %dialog.addr, align 8
  %interactive_bg = getelementptr inbounds %struct.PreferencesDialog_t, %struct.PreferencesDialog_t* %15, i32 0, i32 18
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %interactive_bg, align 8
  %17 = load %struct.ColorSelData_t*, %struct.ColorSelData_t** %colors.addr, align 8
  %interactive_bg6 = getelementptr inbounds %struct.ColorSelData_t, %struct.ColorSelData_t* %17, i32 0, i32 4
  call void @get_button_color(%struct._GtkWidget* %16, %struct._GdkColor* %interactive_bg6)
  ret void
}

declare void @set_sash_size(i32) #1

declare void @preview_redraw() #1

; Function Attrs: nounwind uwtable
define internal void @get_button_color(%struct._GtkWidget* %button, %struct._GdkColor* %color) #0 {
entry:
  %button.addr = alloca %struct._GtkWidget*, align 8
  %color.addr = alloca %struct._GdkColor*, align 8
  %rgb = alloca %struct._GimpRGB, align 8
  store %struct._GtkWidget* %button, %struct._GtkWidget** %button.addr, align 8
  store %struct._GdkColor* %color, %struct._GdkColor** %color.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %button.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_color_button_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpColorButton*
  call void @gimp_color_button_get_color(%struct._GimpColorButton* %2, %struct._GimpRGB* %rgb)
  %r = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %rgb, i32 0, i32 0
  %3 = load double, double* %r, align 8
  %mul = fmul double %3, 6.553500e+04
  %conv = fptoui double %mul to i16
  %4 = load %struct._GdkColor*, %struct._GdkColor** %color.addr, align 8
  %red = getelementptr inbounds %struct._GdkColor, %struct._GdkColor* %4, i32 0, i32 1
  store i16 %conv, i16* %red, align 2
  %g = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %rgb, i32 0, i32 1
  %5 = load double, double* %g, align 8
  %mul2 = fmul double %5, 6.553500e+04
  %conv3 = fptoui double %mul2 to i16
  %6 = load %struct._GdkColor*, %struct._GdkColor** %color.addr, align 8
  %green = getelementptr inbounds %struct._GdkColor, %struct._GdkColor* %6, i32 0, i32 2
  store i16 %conv3, i16* %green, align 2
  %b = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %rgb, i32 0, i32 2
  %7 = load double, double* %b, align 8
  %mul4 = fmul double %7, 6.553500e+04
  %conv5 = fptoui double %mul4 to i16
  %8 = load %struct._GdkColor*, %struct._GdkColor** %color.addr, align 8
  %blue = getelementptr inbounds %struct._GdkColor, %struct._GdkColor* %8, i32 0, i32 3
  store i16 %conv5, i16* %blue, align 2
  ret void
}

declare void @gimp_color_button_get_color(%struct._GimpColorButton*, %struct._GimpRGB*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_color_button_get_type() #3

; Function Attrs: nounwind uwtable
define internal %struct._GtkWidget* @create_tab(%struct._GtkWidget* %notebook, i8* %label, i32 %rows, i32 %cols) #0 {
entry:
  %notebook.addr = alloca %struct._GtkWidget*, align 8
  %label.addr = alloca i8*, align 8
  %rows.addr = alloca i32, align 4
  %cols.addr = alloca i32, align 4
  %table = alloca %struct._GtkWidget*, align 8
  %vbox = alloca %struct._GtkWidget*, align 8
  store %struct._GtkWidget* %notebook, %struct._GtkWidget** %notebook.addr, align 8
  store i8* %label, i8** %label.addr, align 8
  store i32 %rows, i32* %rows.addr, align 4
  store i32 %cols, i32* %cols.addr, align 4
  %call = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 1)
  store %struct._GtkWidget* %call, %struct._GtkWidget** %vbox, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %0)
  %1 = load i32, i32* %rows.addr, align 4
  %2 = load i32, i32* %cols.addr, align 4
  %call1 = call %struct._GtkWidget* @gtk_table_new(i32 %1, i32 %2, i32 0)
  store %struct._GtkWidget* %call1, %struct._GtkWidget** %table, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_box_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkBox*
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %5, %struct._GtkWidget* %6, i32 0, i32 0, i32 0)
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %8 = bitcast %struct._GtkWidget* %7 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_container_get_type() #7
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call4)
  %9 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %9, i32 12)
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %11 = bitcast %struct._GtkWidget* %10 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_table_get_type() #7
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call6)
  %12 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %12, i32 6)
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %14 = bitcast %struct._GtkWidget* %13 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_table_get_type() #7
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call8)
  %15 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %15, i32 6)
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %16)
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook.addr, align 8
  %18 = bitcast %struct._GtkWidget* %17 to %struct._GTypeInstance*
  %call10 = call i64 @gtk_notebook_get_type() #7
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call10)
  %19 = bitcast %struct._GTypeInstance* %call11 to %struct._GtkNotebook*
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %21 = load i8*, i8** %label.addr, align 8
  %call12 = call %struct._GtkWidget* @gtk_label_new_with_mnemonic(i8* %21)
  %call13 = call i32 @gtk_notebook_append_page(%struct._GtkNotebook* %19, %struct._GtkWidget* %20, %struct._GtkWidget* %call12)
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  ret %struct._GtkWidget* %22
}

declare %struct._GtkWidget* @gimp_frame_new(i8*) #1

declare void @gtk_table_attach_defaults(%struct._GtkTable*, %struct._GtkWidget*, i32, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_table_get_type() #3

declare %struct._GtkWidget* @gtk_box_new(i32, i32) #1

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #3

declare %struct._GtkWidget* @gtk_radio_button_new_with_mnemonic_from_widget(%struct._GtkRadioButton*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_radio_button_get_type() #3

declare %struct._GtkWidget* @create_check_button_in_table(%struct._GtkWidget*, i32, i32, i8*) #1

declare %struct._GtkWidget* @gtk_table_new(i32, i32, i32) #1

declare void @gtk_container_set_border_width(%struct._GtkContainer*, i32) #1

declare void @gtk_table_set_row_spacings(%struct._GtkTable*, i32) #1

declare void @gtk_table_set_col_spacings(%struct._GtkTable*, i32) #1

declare i32 @gtk_notebook_append_page(%struct._GtkNotebook*, %struct._GtkWidget*, %struct._GtkWidget*) #1

declare %struct._GtkWidget* @gtk_label_new_with_mnemonic(i8*) #1

declare %struct._GtkWidget* @create_label_in_table(%struct._GtkWidget*, i32, i32, i8*) #1

declare %struct._GtkWidget* @create_spin_button_in_table(%struct._GtkWidget*, %struct._GtkWidget*, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct._GtkWidget* @create_color_field(%struct.PreferencesDialog_t* %data, %struct._GtkWidget* %table, i32 %row, i32 %col) #0 {
entry:
  %data.addr = alloca %struct.PreferencesDialog_t*, align 8
  %table.addr = alloca %struct._GtkWidget*, align 8
  %row.addr = alloca i32, align 4
  %col.addr = alloca i32, align 4
  %color = alloca %struct._GimpRGB, align 8
  %area = alloca %struct._GtkWidget*, align 8
  store %struct.PreferencesDialog_t* %data, %struct.PreferencesDialog_t** %data.addr, align 8
  store %struct._GtkWidget* %table, %struct._GtkWidget** %table.addr, align 8
  store i32 %row, i32* %row.addr, align 4
  store i32 %col, i32* %col.addr, align 4
  %0 = bitcast %struct._GimpRGB* %color to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* bitcast (%struct._GimpRGB* @create_color_field.color to i8*), i64 32, i32 8, i1 false)
  %call = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.63, i32 0, i32 0)) #5
  %call1 = call %struct._GtkWidget* @gimp_color_button_new(i8* %call, i32 16, i32 8, %struct._GimpRGB* %color, i32 0)
  store %struct._GtkWidget* %call1, %struct._GtkWidget** %area, align 8
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %area, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_color_button_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call2)
  %3 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpColorButton*
  call void @gimp_color_button_set_update(%struct._GimpColorButton* %3, i32 1)
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %table.addr, align 8
  %5 = bitcast %struct._GtkWidget* %4 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_table_get_type() #7
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call4)
  %6 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkTable*
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %area, align 8
  %8 = load i32, i32* %col.addr, align 4
  %9 = load i32, i32* %col.addr, align 4
  %add = add nsw i32 %9, 1
  %10 = load i32, i32* %row.addr, align 4
  %11 = load i32, i32* %row.addr, align 4
  %add6 = add nsw i32 %11, 1
  call void @gtk_table_attach_defaults(%struct._GtkTable* %6, %struct._GtkWidget* %7, i32 %8, i32 %add, i32 %10, i32 %add6)
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %area, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %12)
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %area, align 8
  ret %struct._GtkWidget* %13
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #5

declare %struct._GtkWidget* @gimp_color_button_new(i8*, i32, i32, %struct._GimpRGB*, i32) #1

declare void @gimp_color_button_set_update(%struct._GimpColorButton*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @set_button_color(%struct._GtkWidget* %button, %struct._GdkColor* %color) #0 {
entry:
  %button.addr = alloca %struct._GtkWidget*, align 8
  %color.addr = alloca %struct._GdkColor*, align 8
  %rgb = alloca %struct._GimpRGB, align 8
  store %struct._GtkWidget* %button, %struct._GtkWidget** %button.addr, align 8
  store %struct._GdkColor* %color, %struct._GdkColor** %color.addr, align 8
  %0 = load %struct._GdkColor*, %struct._GdkColor** %color.addr, align 8
  %red = getelementptr inbounds %struct._GdkColor, %struct._GdkColor* %0, i32 0, i32 1
  %1 = load i16, i16* %red, align 2
  %conv = uitofp i16 %1 to double
  %2 = load %struct._GdkColor*, %struct._GdkColor** %color.addr, align 8
  %green = getelementptr inbounds %struct._GdkColor, %struct._GdkColor* %2, i32 0, i32 2
  %3 = load i16, i16* %green, align 2
  %conv1 = uitofp i16 %3 to double
  %4 = load %struct._GdkColor*, %struct._GdkColor** %color.addr, align 8
  %blue = getelementptr inbounds %struct._GdkColor, %struct._GdkColor* %4, i32 0, i32 3
  %5 = load i16, i16* %blue, align 2
  %conv2 = uitofp i16 %5 to double
  call void @gimp_rgb_set(%struct._GimpRGB* %rgb, double %conv, double %conv1, double %conv2)
  call void @gimp_rgb_multiply(%struct._GimpRGB* %rgb, double 0x3EF0001000100010)
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %button.addr, align 8
  %7 = bitcast %struct._GtkWidget* %6 to %struct._GTypeInstance*
  %call = call i64 @gimp_color_button_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call)
  %8 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpColorButton*
  call void @gimp_color_button_set_color(%struct._GimpColorButton* %8, %struct._GimpRGB* %rgb)
  ret void
}

declare void @gimp_rgb_set(%struct._GimpRGB*, double, double, double) #1

declare void @gimp_rgb_multiply(%struct._GimpRGB*, double) #1

declare void @gimp_color_button_set_color(%struct._GimpColorButton*, %struct._GimpRGB*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
