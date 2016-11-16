; ModuleID = './plug-ins/selection-to-path/selection-to-path.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpPlugInInfo = type { void ()*, void ()*, void ()*, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* }
%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpPixelRgn = type { i8*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32, i8, i32 }
%struct._GimpDrawable = type { i32, i32, i32, i32, i32, i32, %struct._GimpTile*, %struct._GimpTile* }
%struct._GimpTile = type { i32, i32, i32, i32, i16, i8, i8*, %struct._GimpDrawable* }
%struct._GimpParamDef = type { i32, i8*, i8* }
%struct.SELVALS = type { double, double, double, double, double, double, double, double, double, double, double, i32, double, double, double, double, double, double, double, double }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
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
%struct._GtkDialog = type { %struct._GtkWindow, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct.pixel_outline_list_type = type { %struct.pixel_outline_type*, i32 }
%struct.pixel_outline_type = type { %struct.coordinate_type*, i32, i32 }
%struct.coordinate_type = type { i32, i32 }
%struct.spline_list_array_type = type { %struct.spline_list_type*, i32 }
%struct.spline_list_type = type { %struct.spline_type*, i32 }
%struct.spline_type = type { [4 x %struct.real_coordinate_type], i32, double }
%struct.real_coordinate_type = type { double, double }

@PLUG_IN_INFO = constant %struct._GimpPlugInInfo { void ()* null, void ()* null, void ()* @query, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* @run }, align 8
@sel_width = internal global i32 0, align 4
@sel_height = internal global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"sel_pixel_value [%d,%d] out of bounds\00", align 1
@selection_rgn = internal global %struct._GimpPixelRgn zeroinitializer, align 8
@sel_x1 = internal global i32 0, align 4
@sel_y1 = internal global i32 0, align 4
@query.args = internal constant [3 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i32 0, i32 0) }, %struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i32 0, i32 0) }], align 16
@.str.1 = private unnamed_addr constant [9 x i8] c"run-mode\00", align 1
@.str.2 = private unnamed_addr constant [61 x i8] c"The run mode { RUN-INTERACTIVE (0), RUN-NONINTERACTIVE (1) }\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"Input image\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"drawable\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"Input drawable (unused)\00", align 1
@query.advanced_args = internal constant [23 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i32 0, i32 0) }, %struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i32 0, i32 0) }, %struct._GimpParamDef { i32 2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i32 0, i32 0) }, %struct._GimpParamDef { i32 2, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.18, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i32 0, i32 0) }, %struct._GimpParamDef { i32 2, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.24, i32 0, i32 0) }, %struct._GimpParamDef { i32 2, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.26, i32 0, i32 0) }, %struct._GimpParamDef { i32 2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.28, i32 0, i32 0) }, %struct._GimpParamDef { i32 2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.30, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.32, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.34, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.36, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.38, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.40, i32 0, i32 0) }, %struct._GimpParamDef { i32 2, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.42, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.44, i32 0, i32 0) }, %struct._GimpParamDef { i32 2, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.46, i32 0, i32 0) }], align 16
@.str.7 = private unnamed_addr constant [16 x i8] c"align-threshold\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"align_threshold\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"corner-always-threshold\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"corner_always_threshold\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"corner-surround\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"corner_surround\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"corner-threshold\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"corner_threshold\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"error-threshold\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"error_threshold\00", align 1
@.str.17 = private unnamed_addr constant [28 x i8] c"filter-alternative-surround\00", align 1
@.str.18 = private unnamed_addr constant [28 x i8] c"filter_alternative_surround\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"filter-epsilon\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"filter_epsilon\00", align 1
@.str.21 = private unnamed_addr constant [23 x i8] c"filter-iteration-count\00", align 1
@.str.22 = private unnamed_addr constant [23 x i8] c"filter_iteration_count\00", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c"filter-percent\00", align 1
@.str.24 = private unnamed_addr constant [15 x i8] c"filter_percent\00", align 1
@.str.25 = private unnamed_addr constant [26 x i8] c"filter-secondary-surround\00", align 1
@.str.26 = private unnamed_addr constant [26 x i8] c"filter_secondary_surround\00", align 1
@.str.27 = private unnamed_addr constant [16 x i8] c"filter-surround\00", align 1
@.str.28 = private unnamed_addr constant [16 x i8] c"filter_surround\00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"keep-knees\00", align 1
@.str.30 = private unnamed_addr constant [14 x i8] c"{1-Yes, 0-No}\00", align 1
@.str.31 = private unnamed_addr constant [25 x i8] c"line-reversion-threshold\00", align 1
@.str.32 = private unnamed_addr constant [25 x i8] c"line_reversion_threshold\00", align 1
@.str.33 = private unnamed_addr constant [15 x i8] c"line-threshold\00", align 1
@.str.34 = private unnamed_addr constant [15 x i8] c"line_threshold\00", align 1
@.str.35 = private unnamed_addr constant [27 x i8] c"reparameterize-improvement\00", align 1
@.str.36 = private unnamed_addr constant [27 x i8] c"reparameterize_improvement\00", align 1
@.str.37 = private unnamed_addr constant [25 x i8] c"reparameterize-threshold\00", align 1
@.str.38 = private unnamed_addr constant [25 x i8] c"reparameterize_threshold\00", align 1
@.str.39 = private unnamed_addr constant [17 x i8] c"subdivide-search\00", align 1
@.str.40 = private unnamed_addr constant [17 x i8] c"subdivide_search\00", align 1
@.str.41 = private unnamed_addr constant [19 x i8] c"subdivide-surround\00", align 1
@.str.42 = private unnamed_addr constant [19 x i8] c"subdivide_surround\00", align 1
@.str.43 = private unnamed_addr constant [20 x i8] c"subdivide-threshold\00", align 1
@.str.44 = private unnamed_addr constant [20 x i8] c"subdivide_threshold\00", align 1
@.str.45 = private unnamed_addr constant [17 x i8] c"tangent-surround\00", align 1
@.str.46 = private unnamed_addr constant [17 x i8] c"tangent_surround\00", align 1
@.str.47 = private unnamed_addr constant [17 x i8] c"plug-in-sel2path\00", align 1
@.str.48 = private unnamed_addr constant [31 x i8] c"Converts a selection to a path\00", align 1
@.str.49 = private unnamed_addr constant [12 x i8] c"Andy Thomas\00", align 1
@.str.50 = private unnamed_addr constant [5 x i8] c"1999\00", align 1
@.str.51 = private unnamed_addr constant [22 x i8] c"RGB*, INDEXED*, GRAY*\00", align 1
@.str.52 = private unnamed_addr constant [26 x i8] c"plug-in-sel2path-advanced\00", align 1
@.str.53 = private unnamed_addr constant [57 x i8] c"Converts a selection to a path (with advanced user menu)\00", align 1
@run.values = internal global [1 x %struct._GimpParam] zeroinitializer, align 16
@.str.54 = private unnamed_addr constant [20 x i8] c"gimp20-std-plug-ins\00", align 1
@.str.55 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@.str.56 = private unnamed_addr constant [40 x i8] c"plug-in-sel2path needs a valid image ID\00", align 1
@.str.57 = private unnamed_addr constant [24 x i8] c"No selection to convert\00", align 1
@selVals = internal global %struct.SELVALS zeroinitializer, align 8
@retVal = internal global i32 1, align 4
@.str.58 = private unnamed_addr constant [18 x i8] c"selection-to-path\00", align 1
@.str.59 = private unnamed_addr constant [36 x i8] c"Selection to Path Advanced Settings\00", align 1
@.str.60 = private unnamed_addr constant [23 x i8] c"gimp-selection-to-path\00", align 1
@.str.61 = private unnamed_addr constant [11 x i8] c"gimp-reset\00", align 1
@.str.62 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.63 = private unnamed_addr constant [7 x i8] c"gtk-ok\00", align 1
@.str.64 = private unnamed_addr constant [9 x i8] c"response\00", align 1
@.str.65 = private unnamed_addr constant [8 x i8] c"destroy\00", align 1
@has_sel = internal global i32 0, align 4
@sel_x2 = internal global i32 0, align 4
@sel_y2 = internal global i32 0, align 4
@.str.66 = private unnamed_addr constant [34 x i8] c"Internal error. Selection bpp > 1\00", align 1
@.str.67 = private unnamed_addr constant [10 x i8] c"Selection\00", align 1
@.str.68 = private unnamed_addr constant [34 x i8] c"print_spline: strange degree (%d)\00", align 1

; Function Attrs: nounwind uwtable
define internal void @query() #0 {
entry:
  call void @gimp_install_procedure(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.50, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.51, i32 0, i32 0), i32 1, i32 3, i32 0, %struct._GimpParamDef* getelementptr inbounds ([3 x %struct._GimpParamDef], [3 x %struct._GimpParamDef]* @query.args, i32 0, i32 0), %struct._GimpParamDef* null)
  call void @gimp_install_procedure(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.50, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.51, i32 0, i32 0), i32 1, i32 23, i32 0, %struct._GimpParamDef* getelementptr inbounds ([23 x %struct._GimpParamDef], [23 x %struct._GimpParamDef]* @query.advanced_args, i32 0, i32 0), %struct._GimpParamDef* null)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @run(i8* %name, i32 %nparams, %struct._GimpParam* %param, i32* %nreturn_vals, %struct._GimpParam** %return_vals) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %nparams.addr = alloca i32, align 4
  %param.addr = alloca %struct._GimpParam*, align 8
  %nreturn_vals.addr = alloca i32*, align 8
  %return_vals.addr = alloca %struct._GimpParam**, align 8
  %image_ID = alloca i32, align 4
  %run_mode = alloca i32, align 4
  %status = alloca i32, align 4
  %no_dialog = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 8
  store i32 %nparams, i32* %nparams.addr, align 4
  store %struct._GimpParam* %param, %struct._GimpParam** %param.addr, align 8
  store i32* %nreturn_vals, i32** %nreturn_vals.addr, align 8
  store %struct._GimpParam** %return_vals, %struct._GimpParam*** %return_vals.addr, align 8
  store i32 3, i32* %status, align 4
  %0 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %0, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_int32 = bitcast %union._GimpParamData* %data to i32*
  %1 = load i32, i32* %d_int32, align 4
  store i32 %1, i32* %run_mode, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %call = call i8* @gimp_locale_directory() #6
  %call1 = call i8* @bindtextdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.54, i32 0, i32 0), i8* %call) #5
  %call2 = call i8* @bind_textdomain_codeset(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.55, i32 0, i32 0)) #5
  %call3 = call i8* @textdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.54, i32 0, i32 0)) #5
  br label %do.end

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %name.addr, align 8
  %call4 = call i32 @strcmp(i8* %2, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.47, i32 0, i32 0)) #7
  %cmp = icmp eq i32 %call4, 0
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %no_dialog, align 4
  %3 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 1, i32* %3, align 4
  %4 = load %struct._GimpParam**, %struct._GimpParam*** %return_vals.addr, align 8
  store %struct._GimpParam* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i32 0), %struct._GimpParam** %4, align 8
  store i32 21, i32* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 0), align 4
  %5 = load i32, i32* %status, align 4
  store i32 %5, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  %6 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx5 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %6, i64 1
  %data6 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx5, i32 0, i32 1
  %d_image = bitcast %union._GimpParamData* %data6 to i32*
  %7 = load i32, i32* %d_image, align 4
  store i32 %7, i32* %image_ID, align 4
  %8 = load i32, i32* %image_ID, align 4
  %cmp7 = icmp slt i32 %8, 0
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.56, i32 0, i32 0))
  br label %if.end.118

if.end:                                           ; preds = %do.end
  %9 = load i32, i32* %image_ID, align 4
  %call9 = call i32 @gimp_selection_is_empty(i32 %9)
  %tobool = icmp ne i32 %call9, 0
  br i1 %tobool, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %if.end
  %call11 = call i8* @gettext(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.57, i32 0, i32 0)) #5
  call void (i8*, ...) @g_message(i8* %call11)
  br label %if.end.118

if.end.12:                                        ; preds = %if.end
  call void @fit_set_default_params(%struct.SELVALS* @selVals)
  %10 = load i32, i32* %no_dialog, align 4
  %tobool13 = icmp ne i32 %10, 0
  br i1 %tobool13, label %if.end.107, label %if.then.14

if.then.14:                                       ; preds = %if.end.12
  %11 = load i32, i32* %run_mode, align 4
  switch i32 %11, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.25
    i32 2, label %sw.bb.100
  ]

sw.bb:                                            ; preds = %if.then.14
  %call15 = call i32 @gimp_procedural_db_get_data_size(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.52, i32 0, i32 0))
  %cmp16 = icmp sgt i32 %call15, 0
  br i1 %cmp16, label %if.then.18, label %if.end.20

if.then.18:                                       ; preds = %sw.bb
  %call19 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.52, i32 0, i32 0), i8* bitcast (%struct.SELVALS* @selVals to i8*))
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.18, %sw.bb
  %call21 = call i32 @sel2path_dialog(%struct.SELVALS* @selVals)
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.end.24, label %if.then.23

if.then.23:                                       ; preds = %if.end.20
  br label %if.end.118

if.end.24:                                        ; preds = %if.end.20
  call void @fit_set_params(%struct.SELVALS* @selVals)
  br label %sw.epilog

sw.bb.25:                                         ; preds = %if.then.14
  %12 = load i32, i32* %nparams.addr, align 4
  %cmp26 = icmp ne i32 %12, 23
  br i1 %cmp26, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %sw.bb.25
  store i32 1, i32* %status, align 4
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.28, %sw.bb.25
  %13 = load i32, i32* %status, align 4
  %cmp30 = icmp eq i32 %13, 3
  br i1 %cmp30, label %if.then.32, label %if.end.99

if.then.32:                                       ; preds = %if.end.29
  %14 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx33 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %14, i64 3
  %data34 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx33, i32 0, i32 1
  %d_float = bitcast %union._GimpParamData* %data34 to double*
  %15 = load double, double* %d_float, align 8
  store double %15, double* getelementptr inbounds (%struct.SELVALS, %struct.SELVALS* @selVals, i32 0, i32 0), align 8
  %16 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx35 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %16, i64 4
  %data36 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx35, i32 0, i32 1
  %d_float37 = bitcast %union._GimpParamData* %data36 to double*
  %17 = load double, double* %d_float37, align 8
  store double %17, double* getelementptr inbounds (%struct.SELVALS, %struct.SELVALS* @selVals, i32 0, i32 1), align 8
  %18 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx38 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %18, i64 5
  %data39 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx38, i32 0, i32 1
  %d_int8 = bitcast %union._GimpParamData* %data39 to i8*
  %19 = load i8, i8* %d_int8, align 1
  %conv40 = uitofp i8 %19 to double
  store double %conv40, double* getelementptr inbounds (%struct.SELVALS, %struct.SELVALS* @selVals, i32 0, i32 2), align 8
  %20 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx41 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %20, i64 6
  %data42 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx41, i32 0, i32 1
  %d_float43 = bitcast %union._GimpParamData* %data42 to double*
  %21 = load double, double* %d_float43, align 8
  store double %21, double* getelementptr inbounds (%struct.SELVALS, %struct.SELVALS* @selVals, i32 0, i32 3), align 8
  %22 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx44 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %22, i64 7
  %data45 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx44, i32 0, i32 1
  %d_float46 = bitcast %union._GimpParamData* %data45 to double*
  %23 = load double, double* %d_float46, align 8
  store double %23, double* getelementptr inbounds (%struct.SELVALS, %struct.SELVALS* @selVals, i32 0, i32 4), align 8
  %24 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx47 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %24, i64 8
  %data48 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx47, i32 0, i32 1
  %d_int849 = bitcast %union._GimpParamData* %data48 to i8*
  %25 = load i8, i8* %d_int849, align 1
  %conv50 = uitofp i8 %25 to double
  store double %conv50, double* getelementptr inbounds (%struct.SELVALS, %struct.SELVALS* @selVals, i32 0, i32 5), align 8
  %26 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx51 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %26, i64 9
  %data52 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx51, i32 0, i32 1
  %d_float53 = bitcast %union._GimpParamData* %data52 to double*
  %27 = load double, double* %d_float53, align 8
  store double %27, double* getelementptr inbounds (%struct.SELVALS, %struct.SELVALS* @selVals, i32 0, i32 6), align 8
  %28 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx54 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %28, i64 10
  %data55 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx54, i32 0, i32 1
  %d_int856 = bitcast %union._GimpParamData* %data55 to i8*
  %29 = load i8, i8* %d_int856, align 1
  %conv57 = uitofp i8 %29 to double
  store double %conv57, double* getelementptr inbounds (%struct.SELVALS, %struct.SELVALS* @selVals, i32 0, i32 7), align 8
  %30 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx58 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %30, i64 11
  %data59 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx58, i32 0, i32 1
  %d_float60 = bitcast %union._GimpParamData* %data59 to double*
  %31 = load double, double* %d_float60, align 8
  store double %31, double* getelementptr inbounds (%struct.SELVALS, %struct.SELVALS* @selVals, i32 0, i32 8), align 8
  %32 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx61 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %32, i64 12
  %data62 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx61, i32 0, i32 1
  %d_int863 = bitcast %union._GimpParamData* %data62 to i8*
  %33 = load i8, i8* %d_int863, align 1
  %conv64 = uitofp i8 %33 to double
  store double %conv64, double* getelementptr inbounds (%struct.SELVALS, %struct.SELVALS* @selVals, i32 0, i32 9), align 8
  %34 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx65 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %34, i64 13
  %data66 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx65, i32 0, i32 1
  %d_int867 = bitcast %union._GimpParamData* %data66 to i8*
  %35 = load i8, i8* %d_int867, align 1
  %conv68 = uitofp i8 %35 to double
  store double %conv68, double* getelementptr inbounds (%struct.SELVALS, %struct.SELVALS* @selVals, i32 0, i32 10), align 8
  %36 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx69 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %36, i64 14
  %data70 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx69, i32 0, i32 1
  %d_int871 = bitcast %union._GimpParamData* %data70 to i8*
  %37 = load i8, i8* %d_int871, align 1
  %conv72 = zext i8 %37 to i32
  store i32 %conv72, i32* getelementptr inbounds (%struct.SELVALS, %struct.SELVALS* @selVals, i32 0, i32 11), align 4
  %38 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx73 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %38, i64 15
  %data74 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx73, i32 0, i32 1
  %d_float75 = bitcast %union._GimpParamData* %data74 to double*
  %39 = load double, double* %d_float75, align 8
  store double %39, double* getelementptr inbounds (%struct.SELVALS, %struct.SELVALS* @selVals, i32 0, i32 12), align 8
  %40 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx76 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %40, i64 16
  %data77 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx76, i32 0, i32 1
  %d_float78 = bitcast %union._GimpParamData* %data77 to double*
  %41 = load double, double* %d_float78, align 8
  store double %41, double* getelementptr inbounds (%struct.SELVALS, %struct.SELVALS* @selVals, i32 0, i32 13), align 8
  %42 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx79 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %42, i64 17
  %data80 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx79, i32 0, i32 1
  %d_float81 = bitcast %union._GimpParamData* %data80 to double*
  %43 = load double, double* %d_float81, align 8
  store double %43, double* getelementptr inbounds (%struct.SELVALS, %struct.SELVALS* @selVals, i32 0, i32 14), align 8
  %44 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx82 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %44, i64 18
  %data83 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx82, i32 0, i32 1
  %d_float84 = bitcast %union._GimpParamData* %data83 to double*
  %45 = load double, double* %d_float84, align 8
  store double %45, double* getelementptr inbounds (%struct.SELVALS, %struct.SELVALS* @selVals, i32 0, i32 15), align 8
  %46 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx85 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %46, i64 19
  %data86 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx85, i32 0, i32 1
  %d_float87 = bitcast %union._GimpParamData* %data86 to double*
  %47 = load double, double* %d_float87, align 8
  store double %47, double* getelementptr inbounds (%struct.SELVALS, %struct.SELVALS* @selVals, i32 0, i32 16), align 8
  %48 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx88 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %48, i64 20
  %data89 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx88, i32 0, i32 1
  %d_int890 = bitcast %union._GimpParamData* %data89 to i8*
  %49 = load i8, i8* %d_int890, align 1
  %conv91 = uitofp i8 %49 to double
  store double %conv91, double* getelementptr inbounds (%struct.SELVALS, %struct.SELVALS* @selVals, i32 0, i32 17), align 8
  %50 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx92 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %50, i64 21
  %data93 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx92, i32 0, i32 1
  %d_float94 = bitcast %union._GimpParamData* %data93 to double*
  %51 = load double, double* %d_float94, align 8
  store double %51, double* getelementptr inbounds (%struct.SELVALS, %struct.SELVALS* @selVals, i32 0, i32 18), align 8
  %52 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx95 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %52, i64 22
  %data96 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx95, i32 0, i32 1
  %d_int897 = bitcast %union._GimpParamData* %data96 to i8*
  %53 = load i8, i8* %d_int897, align 1
  %conv98 = uitofp i8 %53 to double
  store double %conv98, double* getelementptr inbounds (%struct.SELVALS, %struct.SELVALS* @selVals, i32 0, i32 19), align 8
  call void @fit_set_params(%struct.SELVALS* @selVals)
  br label %if.end.99

if.end.99:                                        ; preds = %if.then.32, %if.end.29
  br label %sw.epilog

sw.bb.100:                                        ; preds = %if.then.14
  %call101 = call i32 @gimp_procedural_db_get_data_size(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.52, i32 0, i32 0))
  %cmp102 = icmp sgt i32 %call101, 0
  br i1 %cmp102, label %if.then.104, label %if.end.106

if.then.104:                                      ; preds = %sw.bb.100
  %call105 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.52, i32 0, i32 0), i8* bitcast (%struct.SELVALS* @selVals to i8*))
  call void @fit_set_params(%struct.SELVALS* @selVals)
  br label %if.end.106

if.end.106:                                       ; preds = %if.then.104, %sw.bb.100
  br label %sw.epilog

sw.default:                                       ; preds = %if.then.14
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.106, %if.end.99, %if.end.24
  br label %if.end.107

if.end.107:                                       ; preds = %sw.epilog, %if.end.12
  %54 = load i32, i32* %image_ID, align 4
  %call108 = call i32 @sel2path(i32 %54)
  %55 = load i32, i32* %status, align 4
  store i32 %55, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  %56 = load i32, i32* %status, align 4
  %cmp109 = icmp eq i32 %56, 3
  br i1 %cmp109, label %if.then.111, label %if.end.118

if.then.111:                                      ; preds = %if.end.107
  call void @dialog_print_selVals(%struct.SELVALS* @selVals)
  %57 = load i32, i32* %run_mode, align 4
  %cmp112 = icmp eq i32 %57, 0
  br i1 %cmp112, label %land.lhs.true, label %if.end.117

land.lhs.true:                                    ; preds = %if.then.111
  %58 = load i32, i32* %no_dialog, align 4
  %tobool114 = icmp ne i32 %58, 0
  br i1 %tobool114, label %if.end.117, label %if.then.115

if.then.115:                                      ; preds = %land.lhs.true
  %call116 = call i32 @gimp_procedural_db_set_data(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.52, i32 0, i32 0), i8* bitcast (%struct.SELVALS* @selVals to i8*), i32 160)
  br label %if.end.117

if.end.117:                                       ; preds = %if.then.115, %land.lhs.true, %if.then.111
  br label %if.end.118

if.end.118:                                       ; preds = %if.then, %if.then.10, %if.then.23, %if.end.117, %if.end.107
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = load i32, i32* %argc.addr, align 4
  %1 = load i8**, i8*** %argv.addr, align 8
  %call = call i32 @gimp_main(%struct._GimpPlugInInfo* @PLUG_IN_INFO, i32 %0, i8** %1)
  ret i32 %call
}

declare i32 @gimp_main(%struct._GimpPlugInInfo*, i32, i8**) #1

; Function Attrs: nounwind uwtable
define zeroext i8 @sel_pixel_value(i32 %row, i32 %col) #0 {
entry:
  %retval = alloca i8, align 1
  %row.addr = alloca i32, align 4
  %col.addr = alloca i32, align 4
  %ret = alloca i8, align 1
  store i32 %row, i32* %row.addr, align 4
  store i32 %col, i32* %col.addr, align 4
  %0 = load i32, i32* %col.addr, align 4
  %1 = load i32, i32* @sel_width, align 4
  %cmp = icmp sgt i32 %0, %1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, i32* %row.addr, align 4
  %3 = load i32, i32* @sel_height, align 4
  %cmp1 = icmp sgt i32 %2, %3
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load i32, i32* %col.addr, align 4
  %5 = load i32, i32* %row.addr, align 4
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i32 0, i32 0), i32 %4, i32 %5)
  store i8 0, i8* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %6 = load i32, i32* %col.addr, align 4
  %7 = load i32, i32* @sel_x1, align 4
  %add = add nsw i32 %6, %7
  %8 = load i32, i32* %row.addr, align 4
  %9 = load i32, i32* @sel_y1, align 4
  %add2 = add nsw i32 %8, %9
  call void @gimp_pixel_rgn_get_pixel(%struct._GimpPixelRgn* @selection_rgn, i8* %ret, i32 %add, i32 %add2)
  %10 = load i8, i8* %ret, align 1
  store i8 %10, i8* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %11 = load i8, i8* %retval
  ret i8 %11
}

; Function Attrs: nounwind uwtable
define internal void @g_warning(i8* %format, ...) #0 {
entry:
  %format.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %format, i8** %format.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i8*, i8** %format.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  call void @g_logv(i8* null, i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

declare void @gimp_pixel_rgn_get_pixel(%struct._GimpPixelRgn*, i8*, i32, i32) #1

; Function Attrs: nounwind uwtable
define i32 @sel_pixel_is_white(i32 %row, i32 %col) #0 {
entry:
  %retval = alloca i32, align 4
  %row.addr = alloca i32, align 4
  %col.addr = alloca i32, align 4
  store i32 %row, i32* %row.addr, align 4
  store i32 %col, i32* %col.addr, align 4
  %0 = load i32, i32* %row.addr, align 4
  %1 = load i32, i32* %col.addr, align 4
  %call = call zeroext i8 @sel_pixel_value(i32 %0, i32 %1)
  %conv = zext i8 %call to i32
  %cmp = icmp slt i32 %conv, 127
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %2 = load i32, i32* %retval
  ret i32 %2
}

; Function Attrs: nounwind uwtable
define i32 @sel_get_width() #0 {
entry:
  %0 = load i32, i32* @sel_width, align 4
  ret i32 %0
}

; Function Attrs: nounwind uwtable
define i32 @sel_get_height() #0 {
entry:
  %0 = load i32, i32* @sel_height, align 4
  ret i32 %0
}

; Function Attrs: nounwind uwtable
define i32 @sel_valid_pixel(i32 %row, i32 %col) #0 {
entry:
  %row.addr = alloca i32, align 4
  %col.addr = alloca i32, align 4
  store i32 %row, i32* %row.addr, align 4
  store i32 %col, i32* %col.addr, align 4
  %0 = load i32, i32* %row.addr, align 4
  %cmp = icmp sle i32 0, %0
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %row.addr, align 4
  %call = call i32 @sel_get_height()
  %cmp1 = icmp slt i32 %1, %call
  br i1 %cmp1, label %land.lhs.true.2, label %land.end

land.lhs.true.2:                                  ; preds = %land.lhs.true
  %2 = load i32, i32* %col.addr, align 4
  %cmp3 = icmp sle i32 0, %2
  br i1 %cmp3, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.2
  %3 = load i32, i32* %col.addr, align 4
  %call4 = call i32 @sel_get_width()
  %cmp5 = icmp slt i32 %3, %call4
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.2, %land.lhs.true, %entry
  %4 = phi i1 [ false, %land.lhs.true.2 ], [ false, %land.lhs.true ], [ false, %entry ], [ %cmp5, %land.rhs ]
  %land.ext = zext i1 %4 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define void @safe_free(i8** %item) #0 {
entry:
  %item.addr = alloca i8**, align 8
  store i8** %item, i8*** %item.addr, align 8
  %0 = load i8**, i8*** %item.addr, align 8
  %1 = load i8*, i8** %0, align 8
  call void @g_free(i8* %1)
  %2 = load i8**, i8*** %item.addr, align 8
  store i8* null, i8** %2, align 8
  ret void
}

declare void @g_free(i8*) #1

declare void @gimp_install_procedure(i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, %struct._GimpParamDef*, %struct._GimpParamDef*) #1

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8*, i8*) #2

; Function Attrs: nounwind readnone
declare i8* @gimp_locale_directory() #3

; Function Attrs: nounwind
declare i8* @bind_textdomain_codeset(i8*, i8*) #2

; Function Attrs: nounwind
declare i8* @textdomain(i8*) #2

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

declare i32 @gimp_selection_is_empty(i32) #1

; Function Attrs: nounwind uwtable
define internal void @g_message(i8* %format, ...) #0 {
entry:
  %format.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %format, i8** %format.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i8*, i8** %format.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  call void @g_logv(i8* null, i32 32, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

; Function Attrs: nounwind
declare i8* @gettext(i8*) #2

declare void @fit_set_default_params(%struct.SELVALS*) #1

declare i32 @gimp_procedural_db_get_data_size(i8*) #1

declare i32 @gimp_procedural_db_get_data(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @sel2path_dialog(%struct.SELVALS* %sels) #0 {
entry:
  %sels.addr = alloca %struct.SELVALS*, align 8
  %dlg = alloca %struct._GtkWidget*, align 8
  %table = alloca %struct._GtkWidget*, align 8
  store %struct.SELVALS* %sels, %struct.SELVALS** %sels.addr, align 8
  store i32 0, i32* @retVal, align 4
  call void @gimp_ui_init(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.58, i32 0, i32 0), i32 0)
  %call = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.59, i32 0, i32 0)) #5
  %call1 = call %struct._GtkWidget* (i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) @gimp_dialog_new(i8* %call, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.60, i32 0, i32 0), %struct._GtkWidget* null, i32 0, void (i8*, i8*)* @gimp_standard_help_func, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.61, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.62, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.63, i32 0, i32 0), i32 -5, i8* null)
  store %struct._GtkWidget* %call1, %struct._GtkWidget** %dlg, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %dlg, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_dialog_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call2)
  %2 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkDialog*
  call void (%struct._GtkDialog*, i32, ...) @gtk_dialog_set_alternative_button_order(%struct._GtkDialog* %2, i32 1, i32 -5, i32 -6, i32 -1)
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %dlg, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_window_get_type() #6
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call4)
  %5 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkWindow*
  call void @gimp_window_set_transient(%struct._GtkWindow* %5)
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %dlg, align 8
  %7 = bitcast %struct._GtkWidget* %6 to i8*
  %call6 = call i64 @g_signal_connect_data(i8* %7, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.64, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i32, i8*)* @sel2path_response to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %dlg, align 8
  %9 = bitcast %struct._GtkWidget* %8 to i8*
  %call7 = call i64 @g_signal_connect_data(i8* %9, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.65, i32 0, i32 0), void ()* @gtk_main_quit, i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %10 = load %struct.SELVALS*, %struct.SELVALS** %sels.addr, align 8
  %call8 = call %struct._GtkWidget* @dialog_create_selection_area(%struct.SELVALS* %10)
  store %struct._GtkWidget* %call8, %struct._GtkWidget** %table, align 8
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %12 = bitcast %struct._GtkWidget* %11 to %struct._GTypeInstance*
  %call9 = call i64 @gtk_container_get_type() #6
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call9)
  %13 = bitcast %struct._GTypeInstance* %call10 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %13, i32 12)
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %dlg, align 8
  %15 = bitcast %struct._GtkWidget* %14 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_dialog_get_type() #6
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call11)
  %16 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkDialog*
  %call13 = call %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog* %16)
  %17 = bitcast %struct._GtkWidget* %call13 to %struct._GTypeInstance*
  %call14 = call i64 @gtk_box_get_type() #6
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call14)
  %18 = bitcast %struct._GTypeInstance* %call15 to %struct._GtkBox*
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %18, %struct._GtkWidget* %19, i32 1, i32 1, i32 0)
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %20)
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %dlg, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %21)
  call void @gtk_main()
  %22 = load i32, i32* @retVal, align 4
  ret i32 %22
}

declare void @fit_set_params(%struct.SELVALS*) #1

; Function Attrs: nounwind uwtable
define internal i32 @sel2path(i32 %image_ID) #0 {
entry:
  %retval = alloca i32, align 4
  %image_ID.addr = alloca i32, align 4
  %selection_ID = alloca i32, align 4
  %sel_drawable = alloca %struct._GimpDrawable*, align 8
  %olt = alloca %struct.pixel_outline_list_type, align 8
  %splines = alloca %struct.spline_list_array_type, align 8
  %coerce = alloca %struct.pixel_outline_list_type, align 8
  %coerce13 = alloca %struct.spline_list_array_type, align 8
  store i32 %image_ID, i32* %image_ID.addr, align 4
  %0 = load i32, i32* %image_ID.addr, align 4
  %call = call i32 @gimp_selection_bounds(i32 %0, i32* @has_sel, i32* @sel_x1, i32* @sel_y1, i32* @sel_x2, i32* @sel_y2)
  %1 = load i32, i32* @sel_x2, align 4
  %2 = load i32, i32* @sel_x1, align 4
  %sub = sub nsw i32 %1, %2
  store i32 %sub, i32* @sel_width, align 4
  %3 = load i32, i32* @sel_y2, align 4
  %4 = load i32, i32* @sel_y1, align 4
  %sub1 = sub nsw i32 %3, %4
  store i32 %sub1, i32* @sel_height, align 4
  %5 = load i32, i32* %image_ID.addr, align 4
  %call2 = call i32 @gimp_image_get_selection(i32 %5)
  store i32 %call2, i32* %selection_ID, align 4
  %6 = load i32, i32* %selection_ID, align 4
  %cmp = icmp slt i32 %6, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %7 = load i32, i32* %selection_ID, align 4
  %call3 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %7)
  store %struct._GimpDrawable* %call3, %struct._GimpDrawable** %sel_drawable, align 8
  %8 = load i32, i32* %selection_ID, align 4
  %call4 = call i32 @gimp_drawable_bpp(i32 %8)
  %cmp5 = icmp ne i32 %call4, 1
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.66, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.7:                                         ; preds = %if.end
  %9 = load %struct._GimpDrawable*, %struct._GimpDrawable** %sel_drawable, align 8
  %10 = load i32, i32* @sel_x1, align 4
  %11 = load i32, i32* @sel_y1, align 4
  %12 = load i32, i32* @sel_width, align 4
  %13 = load i32, i32* @sel_height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* @selection_rgn, %struct._GimpDrawable* %9, i32 %10, i32 %11, i32 %12, i32 %13, i32 0, i32 0)
  %14 = load %struct._GimpDrawable*, %struct._GimpDrawable** %sel_drawable, align 8
  %width = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %14, i32 0, i32 1
  %15 = load i32, i32* %width, align 4
  %call8 = call i32 @gimp_tile_width() #6
  %add = add i32 %15, %call8
  %sub9 = sub i32 %add, 1
  %mul = mul i32 2, %sub9
  %call10 = call i32 @gimp_tile_width() #6
  %div = udiv i32 %mul, %call10
  %conv = zext i32 %div to i64
  call void @gimp_tile_cache_ntiles(i64 %conv)
  %call11 = call { %struct.pixel_outline_type*, i32 } @find_outline_pixels()
  %16 = bitcast %struct.pixel_outline_list_type* %coerce to { %struct.pixel_outline_type*, i32 }*
  %17 = getelementptr { %struct.pixel_outline_type*, i32 }, { %struct.pixel_outline_type*, i32 }* %16, i32 0, i32 0
  %18 = extractvalue { %struct.pixel_outline_type*, i32 } %call11, 0
  store %struct.pixel_outline_type* %18, %struct.pixel_outline_type** %17, align 8
  %19 = getelementptr { %struct.pixel_outline_type*, i32 }, { %struct.pixel_outline_type*, i32 }* %16, i32 0, i32 1
  %20 = extractvalue { %struct.pixel_outline_type*, i32 } %call11, 1
  store i32 %20, i32* %19, align 8
  %21 = bitcast %struct.pixel_outline_list_type* %olt to i8*
  %22 = bitcast %struct.pixel_outline_list_type* %coerce to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %21, i8* %22, i64 16, i32 8, i1 false)
  %23 = bitcast %struct.pixel_outline_list_type* %olt to { %struct.pixel_outline_type*, i32 }*
  %24 = getelementptr { %struct.pixel_outline_type*, i32 }, { %struct.pixel_outline_type*, i32 }* %23, i32 0, i32 0
  %25 = load %struct.pixel_outline_type*, %struct.pixel_outline_type** %24, align 1
  %26 = getelementptr { %struct.pixel_outline_type*, i32 }, { %struct.pixel_outline_type*, i32 }* %23, i32 0, i32 1
  %27 = load i32, i32* %26, align 1
  %call12 = call { %struct.spline_list_type*, i32 } @fitted_splines(%struct.pixel_outline_type* %25, i32 %27)
  %28 = bitcast %struct.spline_list_array_type* %coerce13 to { %struct.spline_list_type*, i32 }*
  %29 = getelementptr { %struct.spline_list_type*, i32 }, { %struct.spline_list_type*, i32 }* %28, i32 0, i32 0
  %30 = extractvalue { %struct.spline_list_type*, i32 } %call12, 0
  store %struct.spline_list_type* %30, %struct.spline_list_type** %29, align 8
  %31 = getelementptr { %struct.spline_list_type*, i32 }, { %struct.spline_list_type*, i32 }* %28, i32 0, i32 1
  %32 = extractvalue { %struct.spline_list_type*, i32 } %call12, 1
  store i32 %32, i32* %31, align 8
  %33 = bitcast %struct.spline_list_array_type* %splines to i8*
  %34 = bitcast %struct.spline_list_array_type* %coerce13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %33, i8* %34, i64 16, i32 8, i1 false)
  %35 = load i32, i32* %image_ID.addr, align 4
  %36 = bitcast %struct.spline_list_array_type* %splines to { %struct.spline_list_type*, i32 }*
  %37 = getelementptr { %struct.spline_list_type*, i32 }, { %struct.spline_list_type*, i32 }* %36, i32 0, i32 0
  %38 = load %struct.spline_list_type*, %struct.spline_list_type** %37, align 1
  %39 = getelementptr { %struct.spline_list_type*, i32 }, { %struct.spline_list_type*, i32 }* %36, i32 0, i32 1
  %40 = load i32, i32* %39, align 1
  call void @do_points(%struct.spline_list_type* %38, i32 %40, i32 %35)
  %41 = load %struct._GimpDrawable*, %struct._GimpDrawable** %sel_drawable, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %41)
  %call14 = call i32 @gimp_displays_flush()
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.7, %if.then.6, %if.then
  %42 = load i32, i32* %retval
  ret i32 %42
}

; Function Attrs: nounwind uwtable
define internal void @dialog_print_selVals(%struct.SELVALS* %sels) #0 {
entry:
  %sels.addr = alloca %struct.SELVALS*, align 8
  store %struct.SELVALS* %sels, %struct.SELVALS** %sels.addr, align 8
  ret void
}

declare i32 @gimp_procedural_db_set_data(i8*, i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

declare void @gimp_ui_init(i8*, i32) #1

declare %struct._GtkWidget* @gimp_dialog_new(i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) #1

declare void @gimp_standard_help_func(i8*, i8*) #1

declare void @gtk_dialog_set_alternative_button_order(%struct._GtkDialog*, i32, ...) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_dialog_get_type() #3

declare void @gimp_window_set_transient(%struct._GtkWindow*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_window_get_type() #3

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @sel2path_response(%struct._GtkWidget* %widget, i32 %response_id, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %response_id.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i32 %response_id, i32* %response_id.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i32, i32* %response_id.addr, align 4
  switch i32 %0, label %sw.default [
    i32 1, label %sw.bb
    i32 -5, label %sw.bb.1
  ]

sw.bb:                                            ; preds = %entry
  call void @reset_adv_dialog()
  call void @fit_set_params(%struct.SELVALS* @selVals)
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  store i32 1, i32* @retVal, align 4
  br label %sw.default

sw.default:                                       ; preds = %entry, %sw.bb.1
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %1)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  ret void
}

declare void @gtk_main_quit() #1

declare %struct._GtkWidget* @dialog_create_selection_area(%struct.SELVALS*) #1

declare void @gtk_container_set_border_width(%struct._GtkContainer*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #3

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

declare %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #3

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare void @gtk_main() #1

declare void @reset_adv_dialog() #1

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

declare i32 @gimp_selection_bounds(i32, i32*, i32*, i32*, i32*, i32*) #1

declare i32 @gimp_image_get_selection(i32) #1

declare %struct._GimpDrawable* @gimp_drawable_get(i32) #1

declare i32 @gimp_drawable_bpp(i32) #1

declare void @gimp_pixel_rgn_init(%struct._GimpPixelRgn*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32) #1

declare void @gimp_tile_cache_ntiles(i64) #1

; Function Attrs: nounwind readnone
declare i32 @gimp_tile_width() #3

declare { %struct.pixel_outline_type*, i32 } @find_outline_pixels() #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #5

declare { %struct.spline_list_type*, i32 } @fitted_splines(%struct.pixel_outline_type*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @do_points(%struct.spline_list_type* %in_splines.coerce0, i32 %in_splines.coerce1, i32 %image_ID) #0 {
entry:
  %in_splines = alloca %struct.spline_list_array_type, align 8
  %image_ID.addr = alloca i32, align 4
  %vectors = alloca i32, align 4
  %stroke = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %have_points = alloca i32, align 4
  %spline_list = alloca %struct.spline_list_type, align 8
  %seg = alloca %struct.spline_type, align 8
  %0 = bitcast %struct.spline_list_array_type* %in_splines to { %struct.spline_list_type*, i32 }*
  %1 = getelementptr { %struct.spline_list_type*, i32 }, { %struct.spline_list_type*, i32 }* %0, i32 0, i32 0
  store %struct.spline_list_type* %in_splines.coerce0, %struct.spline_list_type** %1
  %2 = getelementptr { %struct.spline_list_type*, i32 }, { %struct.spline_list_type*, i32 }* %0, i32 0, i32 1
  store i32 %in_splines.coerce1, i32* %2
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i32 0, i32* %have_points, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4
  %length = getelementptr inbounds %struct.spline_list_array_type, %struct.spline_list_array_type* %in_splines, i32 0, i32 1
  %4 = load i32, i32* %length, align 4
  %cmp = icmp ult i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %data = getelementptr inbounds %struct.spline_list_array_type, %struct.spline_list_array_type* %in_splines, i32 0, i32 0
  %6 = load %struct.spline_list_type*, %struct.spline_list_type** %data, align 8
  %arrayidx = getelementptr inbounds %struct.spline_list_type, %struct.spline_list_type* %6, i64 %idxprom
  %7 = bitcast %struct.spline_list_type* %spline_list to i8*
  %8 = bitcast %struct.spline_list_type* %arrayidx to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* %8, i64 16, i32 8, i1 false)
  %length1 = getelementptr inbounds %struct.spline_list_type, %struct.spline_list_type* %spline_list, i32 0, i32 1
  %9 = load i32, i32* %length1, align 4
  %cmp2 = icmp ult i32 %9, 2
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.inc

if.end:                                           ; preds = %for.body
  store i32 1, i32* %have_points, align 4
  br label %for.end

for.inc:                                          ; preds = %if.then
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.end, %for.cond
  %11 = load i32, i32* %have_points, align 4
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %for.end
  br label %return

if.end.4:                                         ; preds = %for.end
  %12 = load i32, i32* %image_ID.addr, align 4
  %call = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.67, i32 0, i32 0)) #5
  %call5 = call i32 @gimp_vectors_new(i32 %12, i8* %call)
  store i32 %call5, i32* %vectors, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc.72, %if.end.4
  %13 = load i32, i32* %j, align 4
  %length7 = getelementptr inbounds %struct.spline_list_array_type, %struct.spline_list_array_type* %in_splines, i32 0, i32 1
  %14 = load i32, i32* %length7, align 4
  %cmp8 = icmp ult i32 %13, %14
  br i1 %cmp8, label %for.body.9, label %for.end.74

for.body.9:                                       ; preds = %for.cond.6
  %15 = load i32, i32* %j, align 4
  %idxprom10 = sext i32 %15 to i64
  %data11 = getelementptr inbounds %struct.spline_list_array_type, %struct.spline_list_array_type* %in_splines, i32 0, i32 0
  %16 = load %struct.spline_list_type*, %struct.spline_list_type** %data11, align 8
  %arrayidx12 = getelementptr inbounds %struct.spline_list_type, %struct.spline_list_type* %16, i64 %idxprom10
  %17 = bitcast %struct.spline_list_type* %spline_list to i8*
  %18 = bitcast %struct.spline_list_type* %arrayidx12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %18, i64 16, i32 8, i1 false)
  %length13 = getelementptr inbounds %struct.spline_list_type, %struct.spline_list_type* %spline_list, i32 0, i32 1
  %19 = load i32, i32* %length13, align 4
  %cmp14 = icmp ult i32 %19, 2
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %for.body.9
  br label %for.inc.72

if.end.16:                                        ; preds = %for.body.9
  %data17 = getelementptr inbounds %struct.spline_list_type, %struct.spline_list_type* %spline_list, i32 0, i32 0
  %20 = load %struct.spline_type*, %struct.spline_type** %data17, align 8
  %arrayidx18 = getelementptr inbounds %struct.spline_type, %struct.spline_type* %20, i64 0
  %21 = bitcast %struct.spline_type* %seg to i8*
  %22 = bitcast %struct.spline_type* %arrayidx18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %21, i8* %22, i64 80, i32 8, i1 false)
  %23 = load i32, i32* %vectors, align 4
  %v = getelementptr inbounds %struct.spline_type, %struct.spline_type* %seg, i32 0, i32 0
  %arrayidx19 = getelementptr inbounds [4 x %struct.real_coordinate_type], [4 x %struct.real_coordinate_type]* %v, i32 0, i64 0
  %x = getelementptr inbounds %struct.real_coordinate_type, %struct.real_coordinate_type* %arrayidx19, i32 0, i32 0
  %24 = load double, double* %x, align 8
  %v20 = getelementptr inbounds %struct.spline_type, %struct.spline_type* %seg, i32 0, i32 0
  %arrayidx21 = getelementptr inbounds [4 x %struct.real_coordinate_type], [4 x %struct.real_coordinate_type]* %v20, i32 0, i64 0
  %y = getelementptr inbounds %struct.real_coordinate_type, %struct.real_coordinate_type* %arrayidx21, i32 0, i32 1
  %25 = load double, double* %y, align 8
  %call22 = call i32 @gimp_vectors_bezier_stroke_new_moveto(i32 %23, double %24, double %25)
  store i32 %call22, i32* %stroke, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.23

for.cond.23:                                      ; preds = %for.inc.65, %if.end.16
  %26 = load i32, i32* %i, align 4
  %length24 = getelementptr inbounds %struct.spline_list_type, %struct.spline_list_type* %spline_list, i32 0, i32 1
  %27 = load i32, i32* %length24, align 4
  %cmp25 = icmp ult i32 %26, %27
  br i1 %cmp25, label %for.body.26, label %for.end.67

for.body.26:                                      ; preds = %for.cond.23
  %28 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %28 to i64
  %data28 = getelementptr inbounds %struct.spline_list_type, %struct.spline_list_type* %spline_list, i32 0, i32 0
  %29 = load %struct.spline_type*, %struct.spline_type** %data28, align 8
  %arrayidx29 = getelementptr inbounds %struct.spline_type, %struct.spline_type* %29, i64 %idxprom27
  %30 = bitcast %struct.spline_type* %seg to i8*
  %31 = bitcast %struct.spline_type* %arrayidx29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %30, i8* %31, i64 80, i32 8, i1 false)
  %degree = getelementptr inbounds %struct.spline_type, %struct.spline_type* %seg, i32 0, i32 1
  %32 = load i32, i32* %degree, align 4
  %cmp30 = icmp eq i32 %32, 1
  br i1 %cmp30, label %if.then.31, label %if.else

if.then.31:                                       ; preds = %for.body.26
  %33 = load i32, i32* %vectors, align 4
  %34 = load i32, i32* %stroke, align 4
  %v32 = getelementptr inbounds %struct.spline_type, %struct.spline_type* %seg, i32 0, i32 0
  %arrayidx33 = getelementptr inbounds [4 x %struct.real_coordinate_type], [4 x %struct.real_coordinate_type]* %v32, i32 0, i64 3
  %x34 = getelementptr inbounds %struct.real_coordinate_type, %struct.real_coordinate_type* %arrayidx33, i32 0, i32 0
  %35 = load double, double* %x34, align 8
  %v35 = getelementptr inbounds %struct.spline_type, %struct.spline_type* %seg, i32 0, i32 0
  %arrayidx36 = getelementptr inbounds [4 x %struct.real_coordinate_type], [4 x %struct.real_coordinate_type]* %v35, i32 0, i64 3
  %y37 = getelementptr inbounds %struct.real_coordinate_type, %struct.real_coordinate_type* %arrayidx36, i32 0, i32 1
  %36 = load double, double* %y37, align 8
  %call38 = call i32 @gimp_vectors_bezier_stroke_lineto(i32 %33, i32 %34, double %35, double %36)
  br label %if.end.64

if.else:                                          ; preds = %for.body.26
  %degree39 = getelementptr inbounds %struct.spline_type, %struct.spline_type* %seg, i32 0, i32 1
  %37 = load i32, i32* %degree39, align 4
  %cmp40 = icmp eq i32 %37, 3
  br i1 %cmp40, label %if.then.41, label %if.else.61

if.then.41:                                       ; preds = %if.else
  %38 = load i32, i32* %vectors, align 4
  %39 = load i32, i32* %stroke, align 4
  %v42 = getelementptr inbounds %struct.spline_type, %struct.spline_type* %seg, i32 0, i32 0
  %arrayidx43 = getelementptr inbounds [4 x %struct.real_coordinate_type], [4 x %struct.real_coordinate_type]* %v42, i32 0, i64 1
  %x44 = getelementptr inbounds %struct.real_coordinate_type, %struct.real_coordinate_type* %arrayidx43, i32 0, i32 0
  %40 = load double, double* %x44, align 8
  %v45 = getelementptr inbounds %struct.spline_type, %struct.spline_type* %seg, i32 0, i32 0
  %arrayidx46 = getelementptr inbounds [4 x %struct.real_coordinate_type], [4 x %struct.real_coordinate_type]* %v45, i32 0, i64 1
  %y47 = getelementptr inbounds %struct.real_coordinate_type, %struct.real_coordinate_type* %arrayidx46, i32 0, i32 1
  %41 = load double, double* %y47, align 8
  %v48 = getelementptr inbounds %struct.spline_type, %struct.spline_type* %seg, i32 0, i32 0
  %arrayidx49 = getelementptr inbounds [4 x %struct.real_coordinate_type], [4 x %struct.real_coordinate_type]* %v48, i32 0, i64 2
  %x50 = getelementptr inbounds %struct.real_coordinate_type, %struct.real_coordinate_type* %arrayidx49, i32 0, i32 0
  %42 = load double, double* %x50, align 8
  %v51 = getelementptr inbounds %struct.spline_type, %struct.spline_type* %seg, i32 0, i32 0
  %arrayidx52 = getelementptr inbounds [4 x %struct.real_coordinate_type], [4 x %struct.real_coordinate_type]* %v51, i32 0, i64 2
  %y53 = getelementptr inbounds %struct.real_coordinate_type, %struct.real_coordinate_type* %arrayidx52, i32 0, i32 1
  %43 = load double, double* %y53, align 8
  %v54 = getelementptr inbounds %struct.spline_type, %struct.spline_type* %seg, i32 0, i32 0
  %arrayidx55 = getelementptr inbounds [4 x %struct.real_coordinate_type], [4 x %struct.real_coordinate_type]* %v54, i32 0, i64 3
  %x56 = getelementptr inbounds %struct.real_coordinate_type, %struct.real_coordinate_type* %arrayidx55, i32 0, i32 0
  %44 = load double, double* %x56, align 8
  %v57 = getelementptr inbounds %struct.spline_type, %struct.spline_type* %seg, i32 0, i32 0
  %arrayidx58 = getelementptr inbounds [4 x %struct.real_coordinate_type], [4 x %struct.real_coordinate_type]* %v57, i32 0, i64 3
  %y59 = getelementptr inbounds %struct.real_coordinate_type, %struct.real_coordinate_type* %arrayidx58, i32 0, i32 1
  %45 = load double, double* %y59, align 8
  %call60 = call i32 @gimp_vectors_bezier_stroke_cubicto(i32 %38, i32 %39, double %40, double %41, double %42, double %43, double %44, double %45)
  br label %if.end.63

if.else.61:                                       ; preds = %if.else
  %degree62 = getelementptr inbounds %struct.spline_type, %struct.spline_type* %seg, i32 0, i32 1
  %46 = load i32, i32* %degree62, align 4
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.68, i32 0, i32 0), i32 %46)
  br label %if.end.63

if.end.63:                                        ; preds = %if.else.61, %if.then.41
  br label %if.end.64

if.end.64:                                        ; preds = %if.end.63, %if.then.31
  br label %for.inc.65

for.inc.65:                                       ; preds = %if.end.64
  %47 = load i32, i32* %i, align 4
  %inc66 = add nsw i32 %47, 1
  store i32 %inc66, i32* %i, align 4
  br label %for.cond.23

for.end.67:                                       ; preds = %for.cond.23
  %48 = load i32, i32* %vectors, align 4
  %49 = load i32, i32* %stroke, align 4
  %call68 = call i32 @gimp_vectors_stroke_close(i32 %48, i32 %49)
  %50 = load i32, i32* %vectors, align 4
  %51 = load i32, i32* %stroke, align 4
  %call69 = call i32 @gimp_vectors_stroke_scale(i32 %50, i32 %51, double 1.000000e+00, double -1.000000e+00)
  %52 = load i32, i32* %vectors, align 4
  %53 = load i32, i32* %stroke, align 4
  %54 = load i32, i32* @sel_x1, align 4
  %55 = load i32, i32* @sel_y1, align 4
  %56 = load i32, i32* @sel_height, align 4
  %add = add nsw i32 %55, %56
  %add70 = add nsw i32 %add, 1
  %call71 = call i32 @gimp_vectors_stroke_translate(i32 %52, i32 %53, i32 %54, i32 %add70)
  br label %for.inc.72

for.inc.72:                                       ; preds = %for.end.67, %if.then.15
  %57 = load i32, i32* %j, align 4
  %inc73 = add nsw i32 %57, 1
  store i32 %inc73, i32* %j, align 4
  br label %for.cond.6

for.end.74:                                       ; preds = %for.cond.6
  %58 = load i32, i32* %image_ID.addr, align 4
  %59 = load i32, i32* %vectors, align 4
  %call75 = call i32 @gimp_image_insert_vectors(i32 %58, i32 %59, i32 -1, i32 -1)
  br label %return

return:                                           ; preds = %for.end.74, %if.then.3
  ret void
}

declare void @gimp_drawable_detach(%struct._GimpDrawable*) #1

declare i32 @gimp_displays_flush() #1

declare i32 @gimp_vectors_new(i32, i8*) #1

declare i32 @gimp_vectors_bezier_stroke_new_moveto(i32, double, double) #1

declare i32 @gimp_vectors_bezier_stroke_lineto(i32, i32, double, double) #1

declare i32 @gimp_vectors_bezier_stroke_cubicto(i32, i32, double, double, double, double, double, double) #1

declare i32 @gimp_vectors_stroke_close(i32, i32) #1

declare i32 @gimp_vectors_stroke_scale(i32, i32, double, double) #1

declare i32 @gimp_vectors_stroke_translate(i32, i32, i32, i32) #1

declare i32 @gimp_image_insert_vectors(i32, i32, i32, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
