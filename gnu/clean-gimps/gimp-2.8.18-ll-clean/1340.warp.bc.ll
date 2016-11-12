; ModuleID = './plug-ins/common/warp.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpPlugInInfo = type { void ()*, void ()*, void ()*, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* }
%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpParamDef = type { i32, i8*, i8* }
%struct.WarpVals = type { double, i32, i32, double, double, i32, i32, i32, i32, i32, double, i32, double, double }
%struct._GimpDrawable = type { i32, i32, i32, i32, i32, i32, %struct._GimpTile*, %struct._GimpTile* }
%struct._GimpTile = type { i32, i32, i32, i32, i16, i8, i8*, %struct._GimpDrawable* }
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
%struct._GtkSizeGroup = type { %struct._GObject, %struct._GSList*, i8, i8, %struct._GtkRequisition }
%struct._GtkDialog = type { %struct._GtkWindow, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GtkTable = type { %struct._GtkContainer, %struct._GList*, %struct._GtkTableRowCol*, %struct._GtkTableRowCol*, i16, i16, i16, i16, i8 }
%struct._GtkTableRowCol = type { i16, i16, i16, i8 }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GtkMisc = type { %struct._GtkWidget, float, float, i16, i16 }
%struct._GimpIntComboBox = type { %struct._GtkComboBox, i8*, void ()*, void ()*, void ()* }
%struct._GtkComboBox = type { %struct._GtkBin, %struct._GtkComboBoxPrivate* }
%struct._GtkComboBoxPrivate = type opaque
%struct._GtkRadioButton = type { %struct._GtkCheckButton, %struct._GSList* }
%struct._GtkCheckButton = type { %struct._GtkToggleButton }
%struct._GtkToggleButton = type { %struct._GtkButton, i8 }
%struct._GtkButton = type { %struct._GtkBin, %struct._GdkDrawable*, i8*, i32, i16 }
%struct._GimpDialog = type { %struct._GtkDialog }
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._GimpPixelRgn = type { i8*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32, i8, i32 }
%struct._GRand = type opaque

@PLUG_IN_INFO = constant %struct._GimpPlugInInfo { void ()* null, void ()* null, void ()* @query, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* @run }, align 8
@query.args = internal constant [17 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i32 0, i32 0) }, %struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.11, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.13, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.15, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.17, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.19, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.21, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.23, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.25, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.27, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.29, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.31, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.33, i32 0, i32 0) }], align 16
@.str = private unnamed_addr constant [9 x i8] c"run-mode\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"The run mode { RUN-INTERACTIVE (0), RUN-NONINTERACTIVE (1) }\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Input image (unused)\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"drawable\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"Input drawable\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"amount\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"Pixel displacement multiplier\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"warp-map\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"Displacement control map\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"iter\00", align 1
@.str.11 = private unnamed_addr constant [41 x i8] c"Iteration count (last required argument)\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"dither\00", align 1
@.str.13 = private unnamed_addr constant [47 x i8] c"Random dither amount (first optional argument)\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"angle\00", align 1
@.str.15 = private unnamed_addr constant [34 x i8] c"Angle of gradient vector rotation\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"wrap-type\00", align 1
@.str.17 = private unnamed_addr constant [61 x i8] c"Edge behavior: { WRAP (0), SMEAR (1), BLACK (2), COLOR (3) }\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"mag-map\00", align 1
@.str.19 = private unnamed_addr constant [22 x i8] c"Magnitude control map\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"mag-use\00", align 1
@.str.21 = private unnamed_addr constant [43 x i8] c"Use magnitude map: { FALSE (0), TRUE (1) }\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"substeps\00", align 1
@.str.23 = private unnamed_addr constant [31 x i8] c"Substeps between image updates\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"grad-map\00", align 1
@.str.25 = private unnamed_addr constant [21 x i8] c"Gradient control map\00", align 1
@.str.26 = private unnamed_addr constant [11 x i8] c"grad-scale\00", align 1
@.str.27 = private unnamed_addr constant [46 x i8] c"Scaling factor for gradient map (0=don't use)\00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c"vector-map\00", align 1
@.str.29 = private unnamed_addr constant [25 x i8] c"Fixed vector control map\00", align 1
@.str.30 = private unnamed_addr constant [13 x i8] c"vector-scale\00", align 1
@.str.31 = private unnamed_addr constant [50 x i8] c"Scaling factor for fixed vector map (0=don't use)\00", align 1
@.str.32 = private unnamed_addr constant [13 x i8] c"vector-angle\00", align 1
@.str.33 = private unnamed_addr constant [27 x i8] c"Angle for fixed vector map\00", align 1
@.str.34 = private unnamed_addr constant [13 x i8] c"plug-in-warp\00", align 1
@.str.35 = private unnamed_addr constant [44 x i8] c"Twist or smear image in many different ways\00", align 1
@.str.36 = private unnamed_addr constant [177 x i8] c"Smears an image along vector paths calculated as the gradient of a separate control matrix. The effect can look like brushstrokes of acrylic or watercolor paint, in some cases.\00", align 1
@.str.37 = private unnamed_addr constant [14 x i8] c"John P. Beale\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"1997\00", align 1
@.str.39 = private unnamed_addr constant [9 x i8] c"_Warp...\00", align 1
@.str.40 = private unnamed_addr constant [12 x i8] c"RGB*, GRAY*\00", align 1
@.str.41 = private unnamed_addr constant [20 x i8] c"<Image>/Filters/Map\00", align 1
@run.values = internal global [1 x %struct._GimpParam] zeroinitializer, align 16
@run_mode = internal global i32 0, align 4
@.str.42 = private unnamed_addr constant [20 x i8] c"gimp20-std-plug-ins\00", align 1
@.str.43 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@tile_width = internal global i32 0, align 4
@tile_height = internal global i32 0, align 4
@color_pixel = internal global [4 x i8] c"\00\00\00\FF", align 1
@dvals = internal global %struct.WarpVals { double 1.000000e+01, i32 -1, i32 5, double 0.000000e+00, double 9.000000e+01, i32 0, i32 -1, i32 0, i32 1, i32 -1, double 0.000000e+00, i32 -1, double 0.000000e+00, double 0.000000e+00 }, align 8
@.str.44 = private unnamed_addr constant [5 x i8] c"warp\00", align 1
@.str.45 = private unnamed_addr constant [5 x i8] c"Warp\00", align 1
@.str.46 = private unnamed_addr constant [10 x i8] c"gimp-warp\00", align 1
@.str.47 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.48 = private unnamed_addr constant [7 x i8] c"gtk-ok\00", align 1
@.str.49 = private unnamed_addr constant [14 x i8] c"Basic Options\00", align 1
@.str.50 = private unnamed_addr constant [11 x i8] c"Step size:\00", align 1
@.str.51 = private unnamed_addr constant [14 x i8] c"value-changed\00", align 1
@.str.52 = private unnamed_addr constant [12 x i8] c"Iterations:\00", align 1
@.str.53 = private unnamed_addr constant [18 x i8] c"Displacement map:\00", align 1
@.str.54 = private unnamed_addr constant [10 x i8] c"On edges:\00", align 1
@.str.55 = private unnamed_addr constant [5 x i8] c"Wrap\00", align 1
@.str.56 = private unnamed_addr constant [15 x i8] c"gimp-item-data\00", align 1
@.str.57 = private unnamed_addr constant [8 x i8] c"toggled\00", align 1
@.str.58 = private unnamed_addr constant [6 x i8] c"Smear\00", align 1
@.str.59 = private unnamed_addr constant [6 x i8] c"Black\00", align 1
@.str.60 = private unnamed_addr constant [17 x i8] c"Foreground color\00", align 1
@.str.61 = private unnamed_addr constant [17 x i8] c"Advanced Options\00", align 1
@.str.62 = private unnamed_addr constant [13 x i8] c"Dither size:\00", align 1
@.str.63 = private unnamed_addr constant [16 x i8] c"Rotation angle:\00", align 1
@.str.64 = private unnamed_addr constant [10 x i8] c"Substeps:\00", align 1
@.str.65 = private unnamed_addr constant [15 x i8] c"Magnitude map:\00", align 1
@.str.66 = private unnamed_addr constant [18 x i8] c"Use magnitude map\00", align 1
@.str.67 = private unnamed_addr constant [22 x i8] c"More Advanced Options\00", align 1
@.str.68 = private unnamed_addr constant [16 x i8] c"Gradient scale:\00", align 1
@.str.69 = private unnamed_addr constant [28 x i8] c"Gradient map selection menu\00", align 1
@.str.70 = private unnamed_addr constant [12 x i8] c"Vector mag:\00", align 1
@.str.71 = private unnamed_addr constant [7 x i8] c"Angle:\00", align 1
@.str.72 = private unnamed_addr constant [42 x i8] c"Fixed-direction-vector map selection menu\00", align 1
@.str.73 = private unnamed_addr constant [20 x i8] c"Finding XY gradient\00", align 1
@.str.74 = private unnamed_addr constant [13 x i8] c"Flow step %d\00", align 1
@progress = internal global i32 0, align 4
@.str.75 = private unnamed_addr constant [15 x i8] c"Warp_X_Vectors\00", align 1
@.str.76 = private unnamed_addr constant [15 x i8] c"Warp_Y_Vectors\00", align 1
@.str.77 = private unnamed_addr constant [21 x i8] c"Smoothing X gradient\00", align 1
@.str.78 = private unnamed_addr constant [21 x i8] c"Smoothing Y gradient\00", align 1
@warp_pixel.empty_pixel = internal global [4 x i8] zeroinitializer, align 1

; Function Attrs: nounwind uwtable
define internal void @query() #0 {
entry:
  call void @gimp_install_procedure(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([177 x i8], [177 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.40, i32 0, i32 0), i32 1, i32 17, i32 0, %struct._GimpParamDef* getelementptr inbounds ([17 x %struct._GimpParamDef], [17 x %struct._GimpParamDef]* @query.args, i32 0, i32 0), %struct._GimpParamDef* null)
  %call = call i32 @gimp_plugin_menu_register(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.41, i32 0, i32 0))
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
  %status = alloca i32, align 4
  %drawable = alloca %struct._GimpDrawable*, align 8
  %color = alloca %struct._GimpRGB, align 8
  %pcnt = alloca i32, align 4
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
  store i32 %1, i32* @run_mode, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %call = call i8* @gimp_locale_directory() #4
  %call1 = call i8* @bindtextdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.42, i32 0, i32 0), i8* %call) #5
  %call2 = call i8* @bind_textdomain_codeset(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.43, i32 0, i32 0)) #5
  %call3 = call i8* @textdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.42, i32 0, i32 0)) #5
  br label %do.end

do.end:                                           ; preds = %do.body
  %call4 = call i32 @gimp_tile_width() #4
  store i32 %call4, i32* @tile_width, align 4
  %call5 = call i32 @gimp_tile_height() #4
  store i32 %call5, i32* @tile_height, align 4
  %call6 = call i32 @gimp_context_get_foreground(%struct._GimpRGB* %color)
  call void @gimp_rgb_get_uchar(%struct._GimpRGB* %color, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @color_pixel, i32 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @color_pixel, i32 0, i64 1), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @color_pixel, i32 0, i64 2))
  %2 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx7 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %2, i64 2
  %data8 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx7, i32 0, i32 1
  %d_drawable = bitcast %union._GimpParamData* %data8 to i32*
  %3 = load i32, i32* %d_drawable, align 4
  %call9 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %3)
  store %struct._GimpDrawable* %call9, %struct._GimpDrawable** %drawable, align 8
  %4 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 1, i32* %4, align 4
  %5 = load %struct._GimpParam**, %struct._GimpParam*** %return_vals.addr, align 8
  store %struct._GimpParam* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i32 0), %struct._GimpParam** %5, align 8
  store i32 21, i32* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 0), align 4
  %6 = load i32, i32* %status, align 4
  store i32 %6, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  %7 = load i32, i32* @run_mode, align 4
  switch i32 %7, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.12
    i32 2, label %sw.bb.99
  ]

sw.bb:                                            ; preds = %do.end
  %call10 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.34, i32 0, i32 0), i8* bitcast (%struct.WarpVals* @dvals to i8*))
  %8 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call11 = call i32 @warp_dialog(%struct._GimpDrawable* %8)
  %tobool = icmp ne i32 %call11, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb
  br label %return

if.end:                                           ; preds = %sw.bb
  br label %sw.epilog

sw.bb.12:                                         ; preds = %do.end
  %9 = load i32, i32* %nparams.addr, align 4
  %cmp = icmp slt i32 %9, 6
  br i1 %cmp, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %sw.bb.12
  store i32 1, i32* %status, align 4
  br label %if.end.98

if.else:                                          ; preds = %sw.bb.12
  store i32 6, i32* %pcnt, align 4
  %10 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx14 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %10, i64 3
  %data15 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx14, i32 0, i32 1
  %d_float = bitcast %union._GimpParamData* %data15 to double*
  %11 = load double, double* %d_float, align 8
  store double %11, double* getelementptr inbounds (%struct.WarpVals, %struct.WarpVals* @dvals, i32 0, i32 0), align 8
  %12 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx16 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %12, i64 4
  %data17 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx16, i32 0, i32 1
  %d_int3218 = bitcast %union._GimpParamData* %data17 to i32*
  %13 = load i32, i32* %d_int3218, align 4
  store i32 %13, i32* getelementptr inbounds (%struct.WarpVals, %struct.WarpVals* @dvals, i32 0, i32 1), align 4
  %14 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx19 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %14, i64 5
  %data20 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx19, i32 0, i32 1
  %d_int3221 = bitcast %union._GimpParamData* %data20 to i32*
  %15 = load i32, i32* %d_int3221, align 4
  store i32 %15, i32* getelementptr inbounds (%struct.WarpVals, %struct.WarpVals* @dvals, i32 0, i32 2), align 4
  %16 = load i32, i32* %nparams.addr, align 4
  %17 = load i32, i32* %pcnt, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %pcnt, align 4
  %cmp22 = icmp sgt i32 %16, %17
  br i1 %cmp22, label %if.then.23, label %if.end.27

if.then.23:                                       ; preds = %if.else
  %18 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx24 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %18, i64 6
  %data25 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx24, i32 0, i32 1
  %d_float26 = bitcast %union._GimpParamData* %data25 to double*
  %19 = load double, double* %d_float26, align 8
  store double %19, double* getelementptr inbounds (%struct.WarpVals, %struct.WarpVals* @dvals, i32 0, i32 3), align 8
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.23, %if.else
  %20 = load i32, i32* %nparams.addr, align 4
  %21 = load i32, i32* %pcnt, align 4
  %inc28 = add nsw i32 %21, 1
  store i32 %inc28, i32* %pcnt, align 4
  %cmp29 = icmp sgt i32 %20, %21
  br i1 %cmp29, label %if.then.30, label %if.end.34

if.then.30:                                       ; preds = %if.end.27
  %22 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx31 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %22, i64 7
  %data32 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx31, i32 0, i32 1
  %d_float33 = bitcast %union._GimpParamData* %data32 to double*
  %23 = load double, double* %d_float33, align 8
  store double %23, double* getelementptr inbounds (%struct.WarpVals, %struct.WarpVals* @dvals, i32 0, i32 4), align 8
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.30, %if.end.27
  %24 = load i32, i32* %nparams.addr, align 4
  %25 = load i32, i32* %pcnt, align 4
  %inc35 = add nsw i32 %25, 1
  store i32 %inc35, i32* %pcnt, align 4
  %cmp36 = icmp sgt i32 %24, %25
  br i1 %cmp36, label %if.then.37, label %if.end.41

if.then.37:                                       ; preds = %if.end.34
  %26 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx38 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %26, i64 8
  %data39 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx38, i32 0, i32 1
  %d_int3240 = bitcast %union._GimpParamData* %data39 to i32*
  %27 = load i32, i32* %d_int3240, align 4
  store i32 %27, i32* getelementptr inbounds (%struct.WarpVals, %struct.WarpVals* @dvals, i32 0, i32 5), align 4
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.37, %if.end.34
  %28 = load i32, i32* %nparams.addr, align 4
  %29 = load i32, i32* %pcnt, align 4
  %inc42 = add nsw i32 %29, 1
  store i32 %inc42, i32* %pcnt, align 4
  %cmp43 = icmp sgt i32 %28, %29
  br i1 %cmp43, label %if.then.44, label %if.end.48

if.then.44:                                       ; preds = %if.end.41
  %30 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx45 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %30, i64 9
  %data46 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx45, i32 0, i32 1
  %d_int3247 = bitcast %union._GimpParamData* %data46 to i32*
  %31 = load i32, i32* %d_int3247, align 4
  store i32 %31, i32* getelementptr inbounds (%struct.WarpVals, %struct.WarpVals* @dvals, i32 0, i32 6), align 4
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.44, %if.end.41
  %32 = load i32, i32* %nparams.addr, align 4
  %33 = load i32, i32* %pcnt, align 4
  %inc49 = add nsw i32 %33, 1
  store i32 %inc49, i32* %pcnt, align 4
  %cmp50 = icmp sgt i32 %32, %33
  br i1 %cmp50, label %if.then.51, label %if.end.55

if.then.51:                                       ; preds = %if.end.48
  %34 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx52 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %34, i64 10
  %data53 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx52, i32 0, i32 1
  %d_int3254 = bitcast %union._GimpParamData* %data53 to i32*
  %35 = load i32, i32* %d_int3254, align 4
  store i32 %35, i32* getelementptr inbounds (%struct.WarpVals, %struct.WarpVals* @dvals, i32 0, i32 7), align 4
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.51, %if.end.48
  %36 = load i32, i32* %nparams.addr, align 4
  %37 = load i32, i32* %pcnt, align 4
  %inc56 = add nsw i32 %37, 1
  store i32 %inc56, i32* %pcnt, align 4
  %cmp57 = icmp sgt i32 %36, %37
  br i1 %cmp57, label %if.then.58, label %if.end.62

if.then.58:                                       ; preds = %if.end.55
  %38 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx59 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %38, i64 11
  %data60 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx59, i32 0, i32 1
  %d_int3261 = bitcast %union._GimpParamData* %data60 to i32*
  %39 = load i32, i32* %d_int3261, align 4
  store i32 %39, i32* getelementptr inbounds (%struct.WarpVals, %struct.WarpVals* @dvals, i32 0, i32 8), align 4
  br label %if.end.62

if.end.62:                                        ; preds = %if.then.58, %if.end.55
  %40 = load i32, i32* %nparams.addr, align 4
  %41 = load i32, i32* %pcnt, align 4
  %inc63 = add nsw i32 %41, 1
  store i32 %inc63, i32* %pcnt, align 4
  %cmp64 = icmp sgt i32 %40, %41
  br i1 %cmp64, label %if.then.65, label %if.end.69

if.then.65:                                       ; preds = %if.end.62
  %42 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx66 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %42, i64 12
  %data67 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx66, i32 0, i32 1
  %d_int3268 = bitcast %union._GimpParamData* %data67 to i32*
  %43 = load i32, i32* %d_int3268, align 4
  store i32 %43, i32* getelementptr inbounds (%struct.WarpVals, %struct.WarpVals* @dvals, i32 0, i32 9), align 4
  br label %if.end.69

if.end.69:                                        ; preds = %if.then.65, %if.end.62
  %44 = load i32, i32* %nparams.addr, align 4
  %45 = load i32, i32* %pcnt, align 4
  %inc70 = add nsw i32 %45, 1
  store i32 %inc70, i32* %pcnt, align 4
  %cmp71 = icmp sgt i32 %44, %45
  br i1 %cmp71, label %if.then.72, label %if.end.76

if.then.72:                                       ; preds = %if.end.69
  %46 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx73 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %46, i64 13
  %data74 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx73, i32 0, i32 1
  %d_float75 = bitcast %union._GimpParamData* %data74 to double*
  %47 = load double, double* %d_float75, align 8
  store double %47, double* getelementptr inbounds (%struct.WarpVals, %struct.WarpVals* @dvals, i32 0, i32 10), align 8
  br label %if.end.76

if.end.76:                                        ; preds = %if.then.72, %if.end.69
  %48 = load i32, i32* %nparams.addr, align 4
  %49 = load i32, i32* %pcnt, align 4
  %inc77 = add nsw i32 %49, 1
  store i32 %inc77, i32* %pcnt, align 4
  %cmp78 = icmp sgt i32 %48, %49
  br i1 %cmp78, label %if.then.79, label %if.end.83

if.then.79:                                       ; preds = %if.end.76
  %50 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx80 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %50, i64 14
  %data81 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx80, i32 0, i32 1
  %d_int3282 = bitcast %union._GimpParamData* %data81 to i32*
  %51 = load i32, i32* %d_int3282, align 4
  store i32 %51, i32* getelementptr inbounds (%struct.WarpVals, %struct.WarpVals* @dvals, i32 0, i32 11), align 4
  br label %if.end.83

if.end.83:                                        ; preds = %if.then.79, %if.end.76
  %52 = load i32, i32* %nparams.addr, align 4
  %53 = load i32, i32* %pcnt, align 4
  %inc84 = add nsw i32 %53, 1
  store i32 %inc84, i32* %pcnt, align 4
  %cmp85 = icmp sgt i32 %52, %53
  br i1 %cmp85, label %if.then.86, label %if.end.90

if.then.86:                                       ; preds = %if.end.83
  %54 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx87 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %54, i64 15
  %data88 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx87, i32 0, i32 1
  %d_float89 = bitcast %union._GimpParamData* %data88 to double*
  %55 = load double, double* %d_float89, align 8
  store double %55, double* getelementptr inbounds (%struct.WarpVals, %struct.WarpVals* @dvals, i32 0, i32 12), align 8
  br label %if.end.90

if.end.90:                                        ; preds = %if.then.86, %if.end.83
  %56 = load i32, i32* %nparams.addr, align 4
  %57 = load i32, i32* %pcnt, align 4
  %inc91 = add nsw i32 %57, 1
  store i32 %inc91, i32* %pcnt, align 4
  %cmp92 = icmp sgt i32 %56, %57
  br i1 %cmp92, label %if.then.93, label %if.end.97

if.then.93:                                       ; preds = %if.end.90
  %58 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx94 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %58, i64 16
  %data95 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx94, i32 0, i32 1
  %d_float96 = bitcast %union._GimpParamData* %data95 to double*
  %59 = load double, double* %d_float96, align 8
  store double %59, double* getelementptr inbounds (%struct.WarpVals, %struct.WarpVals* @dvals, i32 0, i32 13), align 8
  br label %if.end.97

if.end.97:                                        ; preds = %if.then.93, %if.end.90
  br label %if.end.98

if.end.98:                                        ; preds = %if.end.97, %if.then.13
  br label %sw.epilog

sw.bb.99:                                         ; preds = %do.end
  %call100 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.34, i32 0, i32 0), i8* bitcast (%struct.WarpVals* @dvals to i8*))
  br label %sw.epilog

sw.default:                                       ; preds = %do.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.99, %if.end.98, %if.end
  %60 = load i32, i32* %status, align 4
  %cmp101 = icmp eq i32 %60, 3
  br i1 %cmp101, label %if.then.102, label %if.end.107

if.then.102:                                      ; preds = %sw.epilog
  call void @gimp_tile_cache_ntiles(i64 30)
  %61 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @warp(%struct._GimpDrawable* %61)
  %62 = load i32, i32* @run_mode, align 4
  %cmp103 = icmp eq i32 %62, 0
  br i1 %cmp103, label %if.then.104, label %if.end.106

if.then.104:                                      ; preds = %if.then.102
  %call105 = call i32 @gimp_procedural_db_set_data(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.34, i32 0, i32 0), i8* bitcast (%struct.WarpVals* @dvals to i8*), i32 88)
  br label %if.end.106

if.end.106:                                       ; preds = %if.then.104, %if.then.102
  br label %if.end.107

if.end.107:                                       ; preds = %if.end.106, %sw.epilog
  %63 = load i32, i32* @run_mode, align 4
  %cmp108 = icmp ne i32 %63, 1
  br i1 %cmp108, label %if.then.109, label %if.end.111

if.then.109:                                      ; preds = %if.end.107
  %call110 = call i32 @gimp_displays_flush()
  br label %if.end.111

if.end.111:                                       ; preds = %if.then.109, %if.end.107
  %64 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %64)
  %65 = load i32, i32* %status, align 4
  store i32 %65, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  br label %return

return:                                           ; preds = %if.end.111, %if.then
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

declare void @gimp_install_procedure(i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, %struct._GimpParamDef*, %struct._GimpParamDef*) #1

declare i32 @gimp_plugin_menu_register(i8*, i8*) #1

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8*, i8*) #2

; Function Attrs: nounwind readnone
declare i8* @gimp_locale_directory() #3

; Function Attrs: nounwind
declare i8* @bind_textdomain_codeset(i8*, i8*) #2

; Function Attrs: nounwind
declare i8* @textdomain(i8*) #2

; Function Attrs: nounwind readnone
declare i32 @gimp_tile_width() #3

; Function Attrs: nounwind readnone
declare i32 @gimp_tile_height() #3

declare i32 @gimp_context_get_foreground(%struct._GimpRGB*) #1

declare void @gimp_rgb_get_uchar(%struct._GimpRGB*, i8*, i8*, i8*) #1

declare %struct._GimpDrawable* @gimp_drawable_get(i32) #1

declare i32 @gimp_procedural_db_get_data(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @warp_dialog(%struct._GimpDrawable* %drawable) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %dlg = alloca %struct._GtkWidget*, align 8
  %vbox = alloca %struct._GtkWidget*, align 8
  %label = alloca %struct._GtkWidget*, align 8
  %toggle = alloca %struct._GtkWidget*, align 8
  %toggle_hbox = alloca %struct._GtkWidget*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  %table = alloca %struct._GtkWidget*, align 8
  %spinbutton = alloca %struct._GtkWidget*, align 8
  %adj = alloca %struct._GtkObject*, align 8
  %combo = alloca %struct._GtkWidget*, align 8
  %label_group = alloca %struct._GtkSizeGroup*, align 8
  %spin_group = alloca %struct._GtkSizeGroup*, align 8
  %group = alloca %struct._GSList*, align 8
  %run = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._GSList* null, %struct._GSList** %group, align 8
  call void @gimp_ui_init(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.44, i32 0, i32 0), i32 0)
  %call = call i8* @gettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i32 0, i32 0)) #5
  %call1 = call %struct._GtkWidget* (i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) @gimp_dialog_new(i8* %call, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.46, i32 0, i32 0), %struct._GtkWidget* null, i32 0, void (i8*, i8*)* @gimp_standard_help_func, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.47, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.48, i32 0, i32 0), i32 -5, i8* null)
  store %struct._GtkWidget* %call1, %struct._GtkWidget** %dlg, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %dlg, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_dialog_get_type() #4
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call2)
  %2 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkDialog*
  call void (%struct._GtkDialog*, i32, ...) @gtk_dialog_set_alternative_button_order(%struct._GtkDialog* %2, i32 -5, i32 -6, i32 -1)
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %dlg, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_window_get_type() #4
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call4)
  %5 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkWindow*
  call void @gimp_window_set_transient(%struct._GtkWindow* %5)
  %call6 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 12)
  store %struct._GtkWidget* %call6, %struct._GtkWidget** %vbox, align 8
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %7 = bitcast %struct._GtkWidget* %6 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_container_get_type() #4
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call7)
  %8 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %8, i32 12)
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %dlg, align 8
  %10 = bitcast %struct._GtkWidget* %9 to %struct._GTypeInstance*
  %call9 = call i64 @gtk_dialog_get_type() #4
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call9)
  %11 = bitcast %struct._GTypeInstance* %call10 to %struct._GtkDialog*
  %call11 = call %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog* %11)
  %12 = bitcast %struct._GtkWidget* %call11 to %struct._GTypeInstance*
  %call12 = call i64 @gtk_box_get_type() #4
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call12)
  %13 = bitcast %struct._GTypeInstance* %call13 to %struct._GtkBox*
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %13, %struct._GtkWidget* %14, i32 1, i32 1, i32 0)
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %15)
  %call14 = call i8* @gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.49, i32 0, i32 0)) #5
  %call15 = call %struct._GtkWidget* @gimp_frame_new(i8* %call14)
  store %struct._GtkWidget* %call15, %struct._GtkWidget** %frame, align 8
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %17 = bitcast %struct._GtkWidget* %16 to %struct._GTypeInstance*
  %call16 = call i64 @gtk_box_get_type() #4
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call16)
  %18 = bitcast %struct._GTypeInstance* %call17 to %struct._GtkBox*
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %18, %struct._GtkWidget* %19, i32 0, i32 0, i32 0)
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %20)
  %call18 = call %struct._GtkWidget* @gtk_table_new(i32 3, i32 3, i32 0)
  store %struct._GtkWidget* %call18, %struct._GtkWidget** %table, align 8
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %22 = bitcast %struct._GtkWidget* %21 to %struct._GTypeInstance*
  %call19 = call i64 @gtk_table_get_type() #4
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call19)
  %23 = bitcast %struct._GTypeInstance* %call20 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %23, i32 6)
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %25 = bitcast %struct._GtkWidget* %24 to %struct._GTypeInstance*
  %call21 = call i64 @gtk_table_get_type() #4
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call21)
  %26 = bitcast %struct._GTypeInstance* %call22 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %26, i32 6)
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %28 = bitcast %struct._GtkWidget* %27 to %struct._GTypeInstance*
  %call23 = call i64 @gtk_table_get_type() #4
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call23)
  %29 = bitcast %struct._GTypeInstance* %call24 to %struct._GtkTable*
  call void @gtk_table_set_col_spacing(%struct._GtkTable* %29, i32 1, i32 12)
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %31 = bitcast %struct._GtkWidget* %30 to %struct._GTypeInstance*
  %call25 = call i64 @gtk_container_get_type() #4
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 %call25)
  %32 = bitcast %struct._GTypeInstance* %call26 to %struct._GtkContainer*
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_container_add(%struct._GtkContainer* %32, %struct._GtkWidget* %33)
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %34)
  %call27 = call %struct._GtkSizeGroup* @gtk_size_group_new(i32 1)
  store %struct._GtkSizeGroup* %call27, %struct._GtkSizeGroup** %spin_group, align 8
  %call28 = call %struct._GtkSizeGroup* @gtk_size_group_new(i32 1)
  store %struct._GtkSizeGroup* %call28, %struct._GtkSizeGroup** %label_group, align 8
  %35 = load double, double* getelementptr inbounds (%struct.WarpVals, %struct.WarpVals* @dvals, i32 0, i32 0), align 8
  %call29 = call %struct._GtkWidget* @gimp_spin_button_new(%struct._GtkObject** %adj, double %35, double -1.000000e+03, double 1.000000e+03, double 1.000000e+00, double 1.000000e+01, double 0.000000e+00, double 1.000000e+00, i32 2)
  store %struct._GtkWidget* %call29, %struct._GtkWidget** %spinbutton, align 8
  %36 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %spin_group, align 8
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  call void @gtk_size_group_add_widget(%struct._GtkSizeGroup* %36, %struct._GtkWidget* %37)
  %38 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %spin_group, align 8
  %39 = bitcast %struct._GtkSizeGroup* %38 to i8*
  call void @g_object_unref(i8* %39)
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %41 = bitcast %struct._GtkWidget* %40 to %struct._GTypeInstance*
  %call30 = call i64 @gtk_table_get_type() #4
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %41, i64 %call30)
  %42 = bitcast %struct._GTypeInstance* %call31 to %struct._GtkTable*
  %call32 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.50, i32 0, i32 0)) #5
  %43 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  %call33 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %42, i32 0, i32 0, i8* %call32, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %43, i32 1, i32 0)
  store %struct._GtkWidget* %call33, %struct._GtkWidget** %label, align 8
  %44 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %label_group, align 8
  %45 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_size_group_add_widget(%struct._GtkSizeGroup* %44, %struct._GtkWidget* %45)
  %46 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %label_group, align 8
  %47 = bitcast %struct._GtkSizeGroup* %46 to i8*
  call void @g_object_unref(i8* %47)
  %48 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %49 = bitcast %struct._GtkObject* %48 to i8*
  %call34 = call i64 @g_signal_connect_data(i8* %49, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.51, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_double_adjustment_update to void ()*), i8* bitcast (%struct.WarpVals* @dvals to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %50 = load i32, i32* getelementptr inbounds (%struct.WarpVals, %struct.WarpVals* @dvals, i32 0, i32 2), align 4
  %conv = sitofp i32 %50 to double
  %call35 = call %struct._GtkWidget* @gimp_spin_button_new(%struct._GtkObject** %adj, double %conv, double 1.000000e+00, double 1.000000e+02, double 1.000000e+00, double 5.000000e+00, double 0.000000e+00, double 1.000000e+00, i32 0)
  store %struct._GtkWidget* %call35, %struct._GtkWidget** %spinbutton, align 8
  %51 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %spin_group, align 8
  %52 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  call void @gtk_size_group_add_widget(%struct._GtkSizeGroup* %51, %struct._GtkWidget* %52)
  %53 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %54 = bitcast %struct._GtkWidget* %53 to %struct._GTypeInstance*
  %call36 = call i64 @gtk_table_get_type() #4
  %call37 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %54, i64 %call36)
  %55 = bitcast %struct._GTypeInstance* %call37 to %struct._GtkTable*
  %call38 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.52, i32 0, i32 0)) #5
  %56 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  %call39 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %55, i32 0, i32 1, i8* %call38, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %56, i32 1, i32 0)
  store %struct._GtkWidget* %call39, %struct._GtkWidget** %label, align 8
  %57 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %label_group, align 8
  %58 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_size_group_add_widget(%struct._GtkSizeGroup* %57, %struct._GtkWidget* %58)
  %59 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %60 = bitcast %struct._GtkObject* %59 to i8*
  %call40 = call i64 @g_signal_connect_data(i8* %60, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.51, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_int_adjustment_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.WarpVals, %struct.WarpVals* @dvals, i32 0, i32 2) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %call41 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.53, i32 0, i32 0)) #5
  %call42 = call %struct._GtkWidget* @gtk_label_new(i8* %call41)
  store %struct._GtkWidget* %call42, %struct._GtkWidget** %label, align 8
  %61 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %62 = bitcast %struct._GtkWidget* %61 to %struct._GTypeInstance*
  %call43 = call i64 @gtk_misc_get_type() #4
  %call44 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %62, i64 %call43)
  %63 = bitcast %struct._GTypeInstance* %call44 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %63, float 0.000000e+00, float 1.000000e+00)
  %64 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %65 = bitcast %struct._GtkWidget* %64 to %struct._GTypeInstance*
  %call45 = call i64 @gtk_table_get_type() #4
  %call46 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %65, i64 %call45)
  %66 = bitcast %struct._GTypeInstance* %call46 to %struct._GtkTable*
  %67 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_table_attach(%struct._GtkTable* %66, %struct._GtkWidget* %67, i32 2, i32 3, i32 0, i32 1, i32 4, i32 4, i32 0, i32 0)
  %68 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %68)
  %69 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %70 = bitcast %struct._GimpDrawable* %69 to i8*
  %call47 = call %struct._GtkWidget* @gimp_drawable_combo_box_new(i32 (i32, i32, i8*)* @warp_map_constrain, i8* %70)
  store %struct._GtkWidget* %call47, %struct._GtkWidget** %combo, align 8
  %71 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %72 = bitcast %struct._GtkWidget* %71 to %struct._GTypeInstance*
  %call48 = call i64 @gimp_int_combo_box_get_type() #4
  %call49 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %72, i64 %call48)
  %73 = bitcast %struct._GTypeInstance* %call49 to %struct._GimpIntComboBox*
  %74 = load i32, i32* getelementptr inbounds (%struct.WarpVals, %struct.WarpVals* @dvals, i32 0, i32 1), align 4
  %call50 = call i64 @gimp_int_combo_box_connect(%struct._GimpIntComboBox* %73, i32 %74, void ()* bitcast (i32 (%struct._GimpIntComboBox*, i32*)* @gimp_int_combo_box_get_active to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.WarpVals, %struct.WarpVals* @dvals, i32 0, i32 1) to i8*))
  %75 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %76 = bitcast %struct._GtkWidget* %75 to %struct._GTypeInstance*
  %call51 = call i64 @gtk_table_get_type() #4
  %call52 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %76, i64 %call51)
  %77 = bitcast %struct._GTypeInstance* %call52 to %struct._GtkTable*
  %78 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  call void @gtk_table_attach(%struct._GtkTable* %77, %struct._GtkWidget* %78, i32 2, i32 3, i32 1, i32 2, i32 5, i32 5, i32 0, i32 0)
  %79 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %79)
  %call53 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.54, i32 0, i32 0)) #5
  %call54 = call %struct._GtkWidget* @gtk_label_new(i8* %call53)
  store %struct._GtkWidget* %call54, %struct._GtkWidget** %label, align 8
  %80 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %81 = bitcast %struct._GtkWidget* %80 to %struct._GTypeInstance*
  %call55 = call i64 @gtk_misc_get_type() #4
  %call56 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %81, i64 %call55)
  %82 = bitcast %struct._GTypeInstance* %call56 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %82, float 0.000000e+00, float 0.000000e+00)
  %83 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %84 = bitcast %struct._GtkWidget* %83 to %struct._GTypeInstance*
  %call57 = call i64 @gtk_table_get_type() #4
  %call58 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %84, i64 %call57)
  %85 = bitcast %struct._GTypeInstance* %call58 to %struct._GtkTable*
  %86 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_table_attach(%struct._GtkTable* %85, %struct._GtkWidget* %86, i32 0, i32 1, i32 2, i32 3, i32 4, i32 4, i32 0, i32 0)
  %87 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %87)
  %call59 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 6)
  store %struct._GtkWidget* %call59, %struct._GtkWidget** %toggle_hbox, align 8
  %88 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %89 = bitcast %struct._GtkWidget* %88 to %struct._GTypeInstance*
  %call60 = call i64 @gtk_table_get_type() #4
  %call61 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %89, i64 %call60)
  %90 = bitcast %struct._GTypeInstance* %call61 to %struct._GtkTable*
  %91 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle_hbox, align 8
  call void @gtk_table_attach(%struct._GtkTable* %90, %struct._GtkWidget* %91, i32 1, i32 3, i32 2, i32 3, i32 4, i32 4, i32 0, i32 0)
  %92 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle_hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %92)
  %93 = load %struct._GSList*, %struct._GSList** %group, align 8
  %call62 = call i8* @gettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i32 0, i32 0)) #5
  %call63 = call %struct._GtkWidget* @gtk_radio_button_new_with_label(%struct._GSList* %93, i8* %call62)
  store %struct._GtkWidget* %call63, %struct._GtkWidget** %toggle, align 8
  %94 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %95 = bitcast %struct._GtkWidget* %94 to %struct._GTypeInstance*
  %call64 = call i64 @gtk_radio_button_get_type() #4
  %call65 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %95, i64 %call64)
  %96 = bitcast %struct._GTypeInstance* %call65 to %struct._GtkRadioButton*
  %call66 = call %struct._GSList* @gtk_radio_button_get_group(%struct._GtkRadioButton* %96)
  store %struct._GSList* %call66, %struct._GSList** %group, align 8
  %97 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle_hbox, align 8
  %98 = bitcast %struct._GtkWidget* %97 to %struct._GTypeInstance*
  %call67 = call i64 @gtk_box_get_type() #4
  %call68 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %98, i64 %call67)
  %99 = bitcast %struct._GTypeInstance* %call68 to %struct._GtkBox*
  %100 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %99, %struct._GtkWidget* %100, i32 0, i32 0, i32 0)
  %101 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %101)
  %102 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %103 = bitcast %struct._GtkWidget* %102 to %struct._GTypeInstance*
  %call69 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %103, i64 80)
  %104 = bitcast %struct._GTypeInstance* %call69 to %struct._GObject*
  call void @g_object_set_data(%struct._GObject* %104, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.56, i32 0, i32 0), i8* null)
  %105 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %106 = bitcast %struct._GtkWidget* %105 to i8*
  %call70 = call i64 @g_signal_connect_data(i8* %106, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.57, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_radio_button_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.WarpVals, %struct.WarpVals* @dvals, i32 0, i32 5) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %107 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %108 = bitcast %struct._GtkWidget* %107 to %struct._GTypeInstance*
  %call71 = call i64 @gtk_toggle_button_get_type() #4
  %call72 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %108, i64 %call71)
  %109 = bitcast %struct._GTypeInstance* %call72 to %struct._GtkToggleButton*
  %110 = load i32, i32* getelementptr inbounds (%struct.WarpVals, %struct.WarpVals* @dvals, i32 0, i32 5), align 4
  %cmp = icmp eq i32 %110, 0
  %conv73 = zext i1 %cmp to i32
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %109, i32 %conv73)
  %111 = load %struct._GSList*, %struct._GSList** %group, align 8
  %call74 = call i8* @gettext(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.58, i32 0, i32 0)) #5
  %call75 = call %struct._GtkWidget* @gtk_radio_button_new_with_label(%struct._GSList* %111, i8* %call74)
  store %struct._GtkWidget* %call75, %struct._GtkWidget** %toggle, align 8
  %112 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %113 = bitcast %struct._GtkWidget* %112 to %struct._GTypeInstance*
  %call76 = call i64 @gtk_radio_button_get_type() #4
  %call77 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %113, i64 %call76)
  %114 = bitcast %struct._GTypeInstance* %call77 to %struct._GtkRadioButton*
  %call78 = call %struct._GSList* @gtk_radio_button_get_group(%struct._GtkRadioButton* %114)
  store %struct._GSList* %call78, %struct._GSList** %group, align 8
  %115 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle_hbox, align 8
  %116 = bitcast %struct._GtkWidget* %115 to %struct._GTypeInstance*
  %call79 = call i64 @gtk_box_get_type() #4
  %call80 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %116, i64 %call79)
  %117 = bitcast %struct._GTypeInstance* %call80 to %struct._GtkBox*
  %118 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %117, %struct._GtkWidget* %118, i32 0, i32 0, i32 0)
  %119 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %119)
  %120 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %121 = bitcast %struct._GtkWidget* %120 to %struct._GTypeInstance*
  %call81 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %121, i64 80)
  %122 = bitcast %struct._GTypeInstance* %call81 to %struct._GObject*
  call void @g_object_set_data(%struct._GObject* %122, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.56, i32 0, i32 0), i8* inttoptr (i64 1 to i8*))
  %123 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %124 = bitcast %struct._GtkWidget* %123 to i8*
  %call82 = call i64 @g_signal_connect_data(i8* %124, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.57, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_radio_button_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.WarpVals, %struct.WarpVals* @dvals, i32 0, i32 5) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %125 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %126 = bitcast %struct._GtkWidget* %125 to %struct._GTypeInstance*
  %call83 = call i64 @gtk_toggle_button_get_type() #4
  %call84 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %126, i64 %call83)
  %127 = bitcast %struct._GTypeInstance* %call84 to %struct._GtkToggleButton*
  %128 = load i32, i32* getelementptr inbounds (%struct.WarpVals, %struct.WarpVals* @dvals, i32 0, i32 5), align 4
  %cmp85 = icmp eq i32 %128, 1
  %conv86 = zext i1 %cmp85 to i32
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %127, i32 %conv86)
  %129 = load %struct._GSList*, %struct._GSList** %group, align 8
  %call87 = call i8* @gettext(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.59, i32 0, i32 0)) #5
  %call88 = call %struct._GtkWidget* @gtk_radio_button_new_with_label(%struct._GSList* %129, i8* %call87)
  store %struct._GtkWidget* %call88, %struct._GtkWidget** %toggle, align 8
  %130 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %131 = bitcast %struct._GtkWidget* %130 to %struct._GTypeInstance*
  %call89 = call i64 @gtk_radio_button_get_type() #4
  %call90 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %131, i64 %call89)
  %132 = bitcast %struct._GTypeInstance* %call90 to %struct._GtkRadioButton*
  %call91 = call %struct._GSList* @gtk_radio_button_get_group(%struct._GtkRadioButton* %132)
  store %struct._GSList* %call91, %struct._GSList** %group, align 8
  %133 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle_hbox, align 8
  %134 = bitcast %struct._GtkWidget* %133 to %struct._GTypeInstance*
  %call92 = call i64 @gtk_box_get_type() #4
  %call93 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %134, i64 %call92)
  %135 = bitcast %struct._GTypeInstance* %call93 to %struct._GtkBox*
  %136 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %135, %struct._GtkWidget* %136, i32 0, i32 0, i32 0)
  %137 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %137)
  %138 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %139 = bitcast %struct._GtkWidget* %138 to %struct._GTypeInstance*
  %call94 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %139, i64 80)
  %140 = bitcast %struct._GTypeInstance* %call94 to %struct._GObject*
  call void @g_object_set_data(%struct._GObject* %140, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.56, i32 0, i32 0), i8* inttoptr (i64 2 to i8*))
  %141 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %142 = bitcast %struct._GtkWidget* %141 to i8*
  %call95 = call i64 @g_signal_connect_data(i8* %142, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.57, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_radio_button_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.WarpVals, %struct.WarpVals* @dvals, i32 0, i32 5) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %143 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %144 = bitcast %struct._GtkWidget* %143 to %struct._GTypeInstance*
  %call96 = call i64 @gtk_toggle_button_get_type() #4
  %call97 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %144, i64 %call96)
  %145 = bitcast %struct._GTypeInstance* %call97 to %struct._GtkToggleButton*
  %146 = load i32, i32* getelementptr inbounds (%struct.WarpVals, %struct.WarpVals* @dvals, i32 0, i32 5), align 4
  %cmp98 = icmp eq i32 %146, 2
  %conv99 = zext i1 %cmp98 to i32
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %145, i32 %conv99)
  %147 = load %struct._GSList*, %struct._GSList** %group, align 8
  %call100 = call i8* @gettext(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.60, i32 0, i32 0)) #5
  %call101 = call %struct._GtkWidget* @gtk_radio_button_new_with_label(%struct._GSList* %147, i8* %call100)
  store %struct._GtkWidget* %call101, %struct._GtkWidget** %toggle, align 8
  %148 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %149 = bitcast %struct._GtkWidget* %148 to %struct._GTypeInstance*
  %call102 = call i64 @gtk_radio_button_get_type() #4
  %call103 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %149, i64 %call102)
  %150 = bitcast %struct._GTypeInstance* %call103 to %struct._GtkRadioButton*
  %call104 = call %struct._GSList* @gtk_radio_button_get_group(%struct._GtkRadioButton* %150)
  store %struct._GSList* %call104, %struct._GSList** %group, align 8
  %151 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle_hbox, align 8
  %152 = bitcast %struct._GtkWidget* %151 to %struct._GTypeInstance*
  %call105 = call i64 @gtk_box_get_type() #4
  %call106 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %152, i64 %call105)
  %153 = bitcast %struct._GTypeInstance* %call106 to %struct._GtkBox*
  %154 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %153, %struct._GtkWidget* %154, i32 0, i32 0, i32 0)
  %155 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %155)
  %156 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %157 = bitcast %struct._GtkWidget* %156 to %struct._GTypeInstance*
  %call107 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %157, i64 80)
  %158 = bitcast %struct._GTypeInstance* %call107 to %struct._GObject*
  call void @g_object_set_data(%struct._GObject* %158, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.56, i32 0, i32 0), i8* inttoptr (i64 3 to i8*))
  %159 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %160 = bitcast %struct._GtkWidget* %159 to i8*
  %call108 = call i64 @g_signal_connect_data(i8* %160, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.57, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_radio_button_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.WarpVals, %struct.WarpVals* @dvals, i32 0, i32 5) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %161 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %162 = bitcast %struct._GtkWidget* %161 to %struct._GTypeInstance*
  %call109 = call i64 @gtk_toggle_button_get_type() #4
  %call110 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %162, i64 %call109)
  %163 = bitcast %struct._GTypeInstance* %call110 to %struct._GtkToggleButton*
  %164 = load i32, i32* getelementptr inbounds (%struct.WarpVals, %struct.WarpVals* @dvals, i32 0, i32 5), align 4
  %cmp111 = icmp eq i32 %164, 3
  %conv112 = zext i1 %cmp111 to i32
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %163, i32 %conv112)
  %call113 = call i8* @gettext(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.61, i32 0, i32 0)) #5
  %call114 = call %struct._GtkWidget* @gimp_frame_new(i8* %call113)
  store %struct._GtkWidget* %call114, %struct._GtkWidget** %frame, align 8
  %165 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %166 = bitcast %struct._GtkWidget* %165 to %struct._GTypeInstance*
  %call115 = call i64 @gtk_box_get_type() #4
  %call116 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %166, i64 %call115)
  %167 = bitcast %struct._GTypeInstance* %call116 to %struct._GtkBox*
  %168 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %167, %struct._GtkWidget* %168, i32 0, i32 0, i32 0)
  %169 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %169)
  %call117 = call %struct._GtkWidget* @gtk_table_new(i32 3, i32 3, i32 0)
  store %struct._GtkWidget* %call117, %struct._GtkWidget** %table, align 8
  %170 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %171 = bitcast %struct._GtkWidget* %170 to %struct._GTypeInstance*
  %call118 = call i64 @gtk_table_get_type() #4
  %call119 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %171, i64 %call118)
  %172 = bitcast %struct._GTypeInstance* %call119 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %172, i32 6)
  %173 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %174 = bitcast %struct._GtkWidget* %173 to %struct._GTypeInstance*
  %call120 = call i64 @gtk_table_get_type() #4
  %call121 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %174, i64 %call120)
  %175 = bitcast %struct._GTypeInstance* %call121 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %175, i32 6)
  %176 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %177 = bitcast %struct._GtkWidget* %176 to %struct._GTypeInstance*
  %call122 = call i64 @gtk_table_get_type() #4
  %call123 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %177, i64 %call122)
  %178 = bitcast %struct._GTypeInstance* %call123 to %struct._GtkTable*
  call void @gtk_table_set_col_spacing(%struct._GtkTable* %178, i32 1, i32 12)
  %179 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %180 = bitcast %struct._GtkWidget* %179 to %struct._GTypeInstance*
  %call124 = call i64 @gtk_container_get_type() #4
  %call125 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %180, i64 %call124)
  %181 = bitcast %struct._GTypeInstance* %call125 to %struct._GtkContainer*
  %182 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_container_add(%struct._GtkContainer* %181, %struct._GtkWidget* %182)
  %183 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %183)
  %184 = load double, double* getelementptr inbounds (%struct.WarpVals, %struct.WarpVals* @dvals, i32 0, i32 3), align 8
  %call126 = call %struct._GtkWidget* @gimp_spin_button_new(%struct._GtkObject** %adj, double %184, double 0.000000e+00, double 1.000000e+02, double 1.000000e+00, double 1.000000e+01, double 0.000000e+00, double 1.000000e+00, i32 2)
  store %struct._GtkWidget* %call126, %struct._GtkWidget** %spinbutton, align 8
  %185 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %spin_group, align 8
  %186 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  call void @gtk_size_group_add_widget(%struct._GtkSizeGroup* %185, %struct._GtkWidget* %186)
  %187 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %188 = bitcast %struct._GtkWidget* %187 to %struct._GTypeInstance*
  %call127 = call i64 @gtk_table_get_type() #4
  %call128 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %188, i64 %call127)
  %189 = bitcast %struct._GTypeInstance* %call128 to %struct._GtkTable*
  %call129 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.62, i32 0, i32 0)) #5
  %190 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  %call130 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %189, i32 0, i32 0, i8* %call129, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %190, i32 1, i32 0)
  store %struct._GtkWidget* %call130, %struct._GtkWidget** %label, align 8
  %191 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %label_group, align 8
  %192 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_size_group_add_widget(%struct._GtkSizeGroup* %191, %struct._GtkWidget* %192)
  %193 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %194 = bitcast %struct._GtkObject* %193 to i8*
  %call131 = call i64 @g_signal_connect_data(i8* %194, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.51, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_double_adjustment_update to void ()*), i8* bitcast (double* getelementptr inbounds (%struct.WarpVals, %struct.WarpVals* @dvals, i32 0, i32 3) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %195 = load double, double* getelementptr inbounds (%struct.WarpVals, %struct.WarpVals* @dvals, i32 0, i32 4), align 8
  %call132 = call %struct._GtkWidget* @gimp_spin_button_new(%struct._GtkObject** %adj, double %195, double 0.000000e+00, double 3.600000e+02, double 1.000000e+00, double 1.500000e+01, double 0.000000e+00, double 1.000000e+00, i32 1)
  store %struct._GtkWidget* %call132, %struct._GtkWidget** %spinbutton, align 8
  %196 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %spin_group, align 8
  %197 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  call void @gtk_size_group_add_widget(%struct._GtkSizeGroup* %196, %struct._GtkWidget* %197)
  %198 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %199 = bitcast %struct._GtkWidget* %198 to %struct._GTypeInstance*
  %call133 = call i64 @gtk_table_get_type() #4
  %call134 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %199, i64 %call133)
  %200 = bitcast %struct._GTypeInstance* %call134 to %struct._GtkTable*
  %call135 = call i8* @gettext(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.63, i32 0, i32 0)) #5
  %201 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  %call136 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %200, i32 0, i32 1, i8* %call135, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %201, i32 1, i32 0)
  store %struct._GtkWidget* %call136, %struct._GtkWidget** %label, align 8
  %202 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %label_group, align 8
  %203 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_size_group_add_widget(%struct._GtkSizeGroup* %202, %struct._GtkWidget* %203)
  %204 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %205 = bitcast %struct._GtkObject* %204 to i8*
  %call137 = call i64 @g_signal_connect_data(i8* %205, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.51, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_double_adjustment_update to void ()*), i8* bitcast (double* getelementptr inbounds (%struct.WarpVals, %struct.WarpVals* @dvals, i32 0, i32 4) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %206 = load i32, i32* getelementptr inbounds (%struct.WarpVals, %struct.WarpVals* @dvals, i32 0, i32 8), align 4
  %conv138 = sitofp i32 %206 to double
  %call139 = call %struct._GtkWidget* @gimp_spin_button_new(%struct._GtkObject** %adj, double %conv138, double 1.000000e+00, double 1.000000e+02, double 1.000000e+00, double 5.000000e+00, double 0.000000e+00, double 1.000000e+00, i32 0)
  store %struct._GtkWidget* %call139, %struct._GtkWidget** %spinbutton, align 8
  %207 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %spin_group, align 8
  %208 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  call void @gtk_size_group_add_widget(%struct._GtkSizeGroup* %207, %struct._GtkWidget* %208)
  %209 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %210 = bitcast %struct._GtkWidget* %209 to %struct._GTypeInstance*
  %call140 = call i64 @gtk_table_get_type() #4
  %call141 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %210, i64 %call140)
  %211 = bitcast %struct._GTypeInstance* %call141 to %struct._GtkTable*
  %call142 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.64, i32 0, i32 0)) #5
  %212 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  %call143 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %211, i32 0, i32 2, i8* %call142, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %212, i32 1, i32 0)
  store %struct._GtkWidget* %call143, %struct._GtkWidget** %label, align 8
  %213 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %label_group, align 8
  %214 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_size_group_add_widget(%struct._GtkSizeGroup* %213, %struct._GtkWidget* %214)
  %215 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %216 = bitcast %struct._GtkObject* %215 to i8*
  %call144 = call i64 @g_signal_connect_data(i8* %216, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.51, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_int_adjustment_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.WarpVals, %struct.WarpVals* @dvals, i32 0, i32 8) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %call145 = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.65, i32 0, i32 0)) #5
  %call146 = call %struct._GtkWidget* @gtk_label_new(i8* %call145)
  store %struct._GtkWidget* %call146, %struct._GtkWidget** %label, align 8
  %217 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %218 = bitcast %struct._GtkWidget* %217 to %struct._GTypeInstance*
  %call147 = call i64 @gtk_misc_get_type() #4
  %call148 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %218, i64 %call147)
  %219 = bitcast %struct._GTypeInstance* %call148 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %219, float 0.000000e+00, float 1.000000e+00)
  %220 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %221 = bitcast %struct._GtkWidget* %220 to %struct._GTypeInstance*
  %call149 = call i64 @gtk_table_get_type() #4
  %call150 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %221, i64 %call149)
  %222 = bitcast %struct._GTypeInstance* %call150 to %struct._GtkTable*
  %223 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_table_attach(%struct._GtkTable* %222, %struct._GtkWidget* %223, i32 2, i32 3, i32 0, i32 1, i32 4, i32 4, i32 0, i32 0)
  %224 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %224)
  %225 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %226 = bitcast %struct._GimpDrawable* %225 to i8*
  %call151 = call %struct._GtkWidget* @gimp_drawable_combo_box_new(i32 (i32, i32, i8*)* @warp_map_constrain, i8* %226)
  store %struct._GtkWidget* %call151, %struct._GtkWidget** %combo, align 8
  %227 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %228 = bitcast %struct._GtkWidget* %227 to %struct._GTypeInstance*
  %call152 = call i64 @gimp_int_combo_box_get_type() #4
  %call153 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %228, i64 %call152)
  %229 = bitcast %struct._GTypeInstance* %call153 to %struct._GimpIntComboBox*
  %230 = load i32, i32* getelementptr inbounds (%struct.WarpVals, %struct.WarpVals* @dvals, i32 0, i32 6), align 4
  %call154 = call i64 @gimp_int_combo_box_connect(%struct._GimpIntComboBox* %229, i32 %230, void ()* bitcast (i32 (%struct._GimpIntComboBox*, i32*)* @gimp_int_combo_box_get_active to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.WarpVals, %struct.WarpVals* @dvals, i32 0, i32 6) to i8*))
  %231 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %232 = bitcast %struct._GtkWidget* %231 to %struct._GTypeInstance*
  %call155 = call i64 @gtk_table_get_type() #4
  %call156 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %232, i64 %call155)
  %233 = bitcast %struct._GTypeInstance* %call156 to %struct._GtkTable*
  %234 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  call void @gtk_table_attach(%struct._GtkTable* %233, %struct._GtkWidget* %234, i32 2, i32 3, i32 1, i32 2, i32 5, i32 5, i32 0, i32 0)
  %235 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %235)
  %call157 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 4)
  store %struct._GtkWidget* %call157, %struct._GtkWidget** %toggle_hbox, align 8
  %236 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle_hbox, align 8
  %237 = bitcast %struct._GtkWidget* %236 to %struct._GTypeInstance*
  %call158 = call i64 @gtk_container_get_type() #4
  %call159 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %237, i64 %call158)
  %238 = bitcast %struct._GTypeInstance* %call159 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %238, i32 1)
  %239 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %240 = bitcast %struct._GtkWidget* %239 to %struct._GTypeInstance*
  %call160 = call i64 @gtk_table_get_type() #4
  %call161 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %240, i64 %call160)
  %241 = bitcast %struct._GTypeInstance* %call161 to %struct._GtkTable*
  %242 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle_hbox, align 8
  call void @gtk_table_attach(%struct._GtkTable* %241, %struct._GtkWidget* %242, i32 2, i32 3, i32 2, i32 3, i32 4, i32 4, i32 0, i32 0)
  %243 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle_hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %243)
  %call162 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.66, i32 0, i32 0)) #5
  %call163 = call %struct._GtkWidget* @gtk_check_button_new_with_label(i8* %call162)
  store %struct._GtkWidget* %call163, %struct._GtkWidget** %toggle, align 8
  %244 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle_hbox, align 8
  %245 = bitcast %struct._GtkWidget* %244 to %struct._GTypeInstance*
  %call164 = call i64 @gtk_box_get_type() #4
  %call165 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %245, i64 %call164)
  %246 = bitcast %struct._GTypeInstance* %call165 to %struct._GtkBox*
  %247 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %246, %struct._GtkWidget* %247, i32 0, i32 0, i32 0)
  %248 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %249 = bitcast %struct._GtkWidget* %248 to %struct._GTypeInstance*
  %call166 = call i64 @gtk_toggle_button_get_type() #4
  %call167 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %249, i64 %call166)
  %250 = bitcast %struct._GTypeInstance* %call167 to %struct._GtkToggleButton*
  %251 = load i32, i32* getelementptr inbounds (%struct.WarpVals, %struct.WarpVals* @dvals, i32 0, i32 7), align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %250, i32 %251)
  %252 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %252)
  %253 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %254 = bitcast %struct._GtkWidget* %253 to i8*
  %call168 = call i64 @g_signal_connect_data(i8* %254, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.57, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_toggle_button_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.WarpVals, %struct.WarpVals* @dvals, i32 0, i32 7) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %call169 = call i8* @gettext(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.67, i32 0, i32 0)) #5
  %call170 = call %struct._GtkWidget* @gimp_frame_new(i8* %call169)
  store %struct._GtkWidget* %call170, %struct._GtkWidget** %frame, align 8
  %255 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %256 = bitcast %struct._GtkWidget* %255 to %struct._GTypeInstance*
  %call171 = call i64 @gtk_box_get_type() #4
  %call172 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %256, i64 %call171)
  %257 = bitcast %struct._GTypeInstance* %call172 to %struct._GtkBox*
  %258 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %257, %struct._GtkWidget* %258, i32 0, i32 0, i32 0)
  %259 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %259)
  %call173 = call %struct._GtkWidget* @gtk_table_new(i32 3, i32 3, i32 0)
  store %struct._GtkWidget* %call173, %struct._GtkWidget** %table, align 8
  %260 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %261 = bitcast %struct._GtkWidget* %260 to %struct._GTypeInstance*
  %call174 = call i64 @gtk_table_get_type() #4
  %call175 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %261, i64 %call174)
  %262 = bitcast %struct._GTypeInstance* %call175 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %262, i32 6)
  %263 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %264 = bitcast %struct._GtkWidget* %263 to %struct._GTypeInstance*
  %call176 = call i64 @gtk_table_get_type() #4
  %call177 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %264, i64 %call176)
  %265 = bitcast %struct._GTypeInstance* %call177 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %265, i32 6)
  %266 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %267 = bitcast %struct._GtkWidget* %266 to %struct._GTypeInstance*
  %call178 = call i64 @gtk_table_get_type() #4
  %call179 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %267, i64 %call178)
  %268 = bitcast %struct._GTypeInstance* %call179 to %struct._GtkTable*
  call void @gtk_table_set_col_spacing(%struct._GtkTable* %268, i32 1, i32 12)
  %269 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %270 = bitcast %struct._GtkWidget* %269 to %struct._GTypeInstance*
  %call180 = call i64 @gtk_container_get_type() #4
  %call181 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %270, i64 %call180)
  %271 = bitcast %struct._GTypeInstance* %call181 to %struct._GtkContainer*
  %272 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_container_add(%struct._GtkContainer* %271, %struct._GtkWidget* %272)
  %273 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %273)
  %274 = load double, double* getelementptr inbounds (%struct.WarpVals, %struct.WarpVals* @dvals, i32 0, i32 10), align 8
  %call182 = call %struct._GtkWidget* @gimp_spin_button_new(%struct._GtkObject** %adj, double %274, double -1.000000e+03, double 1.000000e+03, double 1.000000e-02, double 1.000000e-01, double 0.000000e+00, double 1.000000e+00, i32 3)
  store %struct._GtkWidget* %call182, %struct._GtkWidget** %spinbutton, align 8
  %275 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %spin_group, align 8
  %276 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  call void @gtk_size_group_add_widget(%struct._GtkSizeGroup* %275, %struct._GtkWidget* %276)
  %277 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %278 = bitcast %struct._GtkWidget* %277 to %struct._GTypeInstance*
  %call183 = call i64 @gtk_table_get_type() #4
  %call184 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %278, i64 %call183)
  %279 = bitcast %struct._GTypeInstance* %call184 to %struct._GtkTable*
  %call185 = call i8* @gettext(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.68, i32 0, i32 0)) #5
  %280 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  %call186 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %279, i32 0, i32 0, i8* %call185, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %280, i32 1, i32 0)
  store %struct._GtkWidget* %call186, %struct._GtkWidget** %label, align 8
  %281 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %label_group, align 8
  %282 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_size_group_add_widget(%struct._GtkSizeGroup* %281, %struct._GtkWidget* %282)
  %283 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %284 = bitcast %struct._GtkObject* %283 to i8*
  %call187 = call i64 @g_signal_connect_data(i8* %284, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.51, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_double_adjustment_update to void ()*), i8* bitcast (double* getelementptr inbounds (%struct.WarpVals, %struct.WarpVals* @dvals, i32 0, i32 10) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %285 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %286 = bitcast %struct._GimpDrawable* %285 to i8*
  %call188 = call %struct._GtkWidget* @gimp_drawable_combo_box_new(i32 (i32, i32, i8*)* @warp_map_constrain, i8* %286)
  store %struct._GtkWidget* %call188, %struct._GtkWidget** %combo, align 8
  %287 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %288 = bitcast %struct._GtkWidget* %287 to %struct._GTypeInstance*
  %call189 = call i64 @gtk_table_get_type() #4
  %call190 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %288, i64 %call189)
  %289 = bitcast %struct._GTypeInstance* %call190 to %struct._GtkTable*
  %290 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  call void @gtk_table_attach(%struct._GtkTable* %289, %struct._GtkWidget* %290, i32 2, i32 3, i32 0, i32 1, i32 5, i32 5, i32 0, i32 0)
  %291 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %291)
  %292 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %293 = bitcast %struct._GtkWidget* %292 to %struct._GTypeInstance*
  %call191 = call i64 @gimp_int_combo_box_get_type() #4
  %call192 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %293, i64 %call191)
  %294 = bitcast %struct._GTypeInstance* %call192 to %struct._GimpIntComboBox*
  %295 = load i32, i32* getelementptr inbounds (%struct.WarpVals, %struct.WarpVals* @dvals, i32 0, i32 9), align 4
  %call193 = call i64 @gimp_int_combo_box_connect(%struct._GimpIntComboBox* %294, i32 %295, void ()* bitcast (i32 (%struct._GimpIntComboBox*, i32*)* @gimp_int_combo_box_get_active to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.WarpVals, %struct.WarpVals* @dvals, i32 0, i32 9) to i8*))
  %296 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %call194 = call i8* @gettext(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.69, i32 0, i32 0)) #5
  call void @gimp_help_set_help_data(%struct._GtkWidget* %296, i8* %call194, i8* null)
  %297 = load double, double* getelementptr inbounds (%struct.WarpVals, %struct.WarpVals* @dvals, i32 0, i32 12), align 8
  %call195 = call %struct._GtkWidget* @gimp_spin_button_new(%struct._GtkObject** %adj, double %297, double -1.000000e+03, double 1.000000e+03, double 1.000000e-02, double 1.000000e-01, double 0.000000e+00, double 1.000000e+00, i32 3)
  store %struct._GtkWidget* %call195, %struct._GtkWidget** %spinbutton, align 8
  %298 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %spin_group, align 8
  %299 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  call void @gtk_size_group_add_widget(%struct._GtkSizeGroup* %298, %struct._GtkWidget* %299)
  %300 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %301 = bitcast %struct._GtkWidget* %300 to %struct._GTypeInstance*
  %call196 = call i64 @gtk_table_get_type() #4
  %call197 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %301, i64 %call196)
  %302 = bitcast %struct._GTypeInstance* %call197 to %struct._GtkTable*
  %call198 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.70, i32 0, i32 0)) #5
  %303 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  %call199 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %302, i32 0, i32 1, i8* %call198, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %303, i32 1, i32 0)
  store %struct._GtkWidget* %call199, %struct._GtkWidget** %label, align 8
  %304 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %label_group, align 8
  %305 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_size_group_add_widget(%struct._GtkSizeGroup* %304, %struct._GtkWidget* %305)
  %306 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %307 = bitcast %struct._GtkObject* %306 to i8*
  %call200 = call i64 @g_signal_connect_data(i8* %307, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.51, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_double_adjustment_update to void ()*), i8* bitcast (double* getelementptr inbounds (%struct.WarpVals, %struct.WarpVals* @dvals, i32 0, i32 12) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %308 = load double, double* getelementptr inbounds (%struct.WarpVals, %struct.WarpVals* @dvals, i32 0, i32 13), align 8
  %call201 = call %struct._GtkWidget* @gimp_spin_button_new(%struct._GtkObject** %adj, double %308, double 0.000000e+00, double 3.600000e+02, double 1.000000e+00, double 1.500000e+01, double 0.000000e+00, double 1.000000e+00, i32 1)
  store %struct._GtkWidget* %call201, %struct._GtkWidget** %spinbutton, align 8
  %309 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %spin_group, align 8
  %310 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  call void @gtk_size_group_add_widget(%struct._GtkSizeGroup* %309, %struct._GtkWidget* %310)
  %311 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %312 = bitcast %struct._GtkWidget* %311 to %struct._GTypeInstance*
  %call202 = call i64 @gtk_table_get_type() #4
  %call203 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %312, i64 %call202)
  %313 = bitcast %struct._GTypeInstance* %call203 to %struct._GtkTable*
  %call204 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.71, i32 0, i32 0)) #5
  %314 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  %call205 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %313, i32 0, i32 2, i8* %call204, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %314, i32 1, i32 0)
  store %struct._GtkWidget* %call205, %struct._GtkWidget** %label, align 8
  %315 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %label_group, align 8
  %316 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_size_group_add_widget(%struct._GtkSizeGroup* %315, %struct._GtkWidget* %316)
  %317 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %318 = bitcast %struct._GtkObject* %317 to i8*
  %call206 = call i64 @g_signal_connect_data(i8* %318, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.51, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_double_adjustment_update to void ()*), i8* bitcast (double* getelementptr inbounds (%struct.WarpVals, %struct.WarpVals* @dvals, i32 0, i32 13) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %319 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %320 = bitcast %struct._GimpDrawable* %319 to i8*
  %call207 = call %struct._GtkWidget* @gimp_drawable_combo_box_new(i32 (i32, i32, i8*)* @warp_map_constrain, i8* %320)
  store %struct._GtkWidget* %call207, %struct._GtkWidget** %combo, align 8
  %321 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %322 = bitcast %struct._GtkWidget* %321 to %struct._GTypeInstance*
  %call208 = call i64 @gtk_table_get_type() #4
  %call209 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %322, i64 %call208)
  %323 = bitcast %struct._GTypeInstance* %call209 to %struct._GtkTable*
  %324 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  call void @gtk_table_attach(%struct._GtkTable* %323, %struct._GtkWidget* %324, i32 2, i32 3, i32 1, i32 2, i32 5, i32 5, i32 0, i32 0)
  %325 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %325)
  %326 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %327 = bitcast %struct._GtkWidget* %326 to %struct._GTypeInstance*
  %call210 = call i64 @gimp_int_combo_box_get_type() #4
  %call211 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %327, i64 %call210)
  %328 = bitcast %struct._GTypeInstance* %call211 to %struct._GimpIntComboBox*
  %329 = load i32, i32* getelementptr inbounds (%struct.WarpVals, %struct.WarpVals* @dvals, i32 0, i32 11), align 4
  %call212 = call i64 @gimp_int_combo_box_connect(%struct._GimpIntComboBox* %328, i32 %329, void ()* bitcast (i32 (%struct._GimpIntComboBox*, i32*)* @gimp_int_combo_box_get_active to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.WarpVals, %struct.WarpVals* @dvals, i32 0, i32 11) to i8*))
  %330 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %call213 = call i8* @gettext(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.72, i32 0, i32 0)) #5
  call void @gimp_help_set_help_data(%struct._GtkWidget* %330, i8* %call213, i8* null)
  %331 = load %struct._GtkWidget*, %struct._GtkWidget** %dlg, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %331)
  %332 = load %struct._GtkWidget*, %struct._GtkWidget** %dlg, align 8
  %333 = bitcast %struct._GtkWidget* %332 to %struct._GTypeInstance*
  %call214 = call i64 @gimp_dialog_get_type() #4
  %call215 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %333, i64 %call214)
  %334 = bitcast %struct._GTypeInstance* %call215 to %struct._GimpDialog*
  %call216 = call i32 @gimp_dialog_run(%struct._GimpDialog* %334)
  %cmp217 = icmp eq i32 %call216, -5
  %conv218 = zext i1 %cmp217 to i32
  store i32 %conv218, i32* %run, align 4
  %335 = load %struct._GtkWidget*, %struct._GtkWidget** %dlg, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %335)
  %336 = load i32, i32* %run, align 4
  ret i32 %336
}

declare void @gimp_tile_cache_ntiles(i64) #1

; Function Attrs: nounwind uwtable
define internal void @warp(%struct._GimpDrawable* %orig_draw) #0 {
entry:
  %orig_draw.addr = alloca %struct._GimpDrawable*, align 8
  %disp_map = alloca %struct._GimpDrawable*, align 8
  %mag_draw = alloca %struct._GimpDrawable*, align 8
  %map_x = alloca %struct._GimpDrawable*, align 8
  %map_y = alloca %struct._GimpDrawable*, align 8
  %first_time = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  %xdlayer = alloca i32, align 4
  %ydlayer = alloca i32, align 4
  %image_ID = alloca i32, align 4
  %warp_iter = alloca i32, align 4
  store %struct._GimpDrawable* %orig_draw, %struct._GimpDrawable** %orig_draw.addr, align 8
  store i32 1, i32* %first_time, align 4
  store i32 -1, i32* %xdlayer, align 4
  store i32 -1, i32* %ydlayer, align 4
  %0 = load i32, i32* getelementptr inbounds (%struct.WarpVals, %struct.WarpVals* @dvals, i32 0, i32 1), align 4
  %call = call %struct._GimpDrawable* @gimp_drawable_get(i32 %0)
  store %struct._GimpDrawable* %call, %struct._GimpDrawable** %disp_map, align 8
  %1 = load i32, i32* getelementptr inbounds (%struct.WarpVals, %struct.WarpVals* @dvals, i32 0, i32 6), align 4
  %call1 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %1)
  store %struct._GimpDrawable* %call1, %struct._GimpDrawable** %mag_draw, align 8
  %call2 = call i8* @gettext(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.73, i32 0, i32 0)) #5
  %call3 = call i32 @gimp_progress_init(i8* %call2)
  %2 = load %struct._GimpDrawable*, %struct._GimpDrawable** %orig_draw.addr, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %2, i32 0, i32 0
  %3 = load i32, i32* %drawable_id, align 4
  %call4 = call i32 @gimp_drawable_mask_intersect(i32 %3, i32* %x1, i32* %y1, i32* %width, i32* %height)
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %4 = load i32, i32* %x1, align 4
  %5 = load i32, i32* %width, align 4
  %add = add nsw i32 %4, %5
  store i32 %add, i32* %x2, align 4
  %6 = load i32, i32* %y1, align 4
  %7 = load i32, i32* %height, align 4
  %add5 = add nsw i32 %6, %7
  store i32 %add5, i32* %y2, align 4
  %8 = load %struct._GimpDrawable*, %struct._GimpDrawable** %orig_draw.addr, align 8
  %width6 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %8, i32 0, i32 1
  %9 = load i32, i32* %width6, align 4
  store i32 %9, i32* %width, align 4
  %10 = load %struct._GimpDrawable*, %struct._GimpDrawable** %orig_draw.addr, align 8
  %height7 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %10, i32 0, i32 2
  %11 = load i32, i32* %height7, align 4
  store i32 %11, i32* %height, align 4
  %12 = load %struct._GimpDrawable*, %struct._GimpDrawable** %disp_map, align 8
  call void @diff(%struct._GimpDrawable* %12, i32* %xdlayer, i32* %ydlayer)
  %13 = load i32, i32* %xdlayer, align 4
  %call8 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %13)
  store %struct._GimpDrawable* %call8, %struct._GimpDrawable** %map_x, align 8
  %14 = load i32, i32* %ydlayer, align 4
  %call9 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %14)
  store %struct._GimpDrawable* %call9, %struct._GimpDrawable** %map_y, align 8
  store i32 0, i32* %warp_iter, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %15 = load i32, i32* %warp_iter, align 4
  %16 = load i32, i32* getelementptr inbounds (%struct.WarpVals, %struct.WarpVals* @dvals, i32 0, i32 2), align 4
  %cmp = icmp slt i32 %15, %16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call10 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.74, i32 0, i32 0)) #5
  %17 = load i32, i32* %warp_iter, align 4
  %add11 = add nsw i32 %17, 1
  %call12 = call i32 (i8*, ...) @gimp_progress_init_printf(i8* %call10, i32 %add11)
  store i32 0, i32* @progress, align 4
  %18 = load %struct._GimpDrawable*, %struct._GimpDrawable** %orig_draw.addr, align 8
  %19 = load %struct._GimpDrawable*, %struct._GimpDrawable** %orig_draw.addr, align 8
  %20 = load %struct._GimpDrawable*, %struct._GimpDrawable** %map_x, align 8
  %21 = load %struct._GimpDrawable*, %struct._GimpDrawable** %map_y, align 8
  %22 = load %struct._GimpDrawable*, %struct._GimpDrawable** %mag_draw, align 8
  %23 = load i32, i32* %first_time, align 4
  %24 = load i32, i32* %warp_iter, align 4
  call void @warp_one(%struct._GimpDrawable* %18, %struct._GimpDrawable* %19, %struct._GimpDrawable* %20, %struct._GimpDrawable* %21, %struct._GimpDrawable* %22, i32 %23, i32 %24)
  %25 = load %struct._GimpDrawable*, %struct._GimpDrawable** %orig_draw.addr, align 8
  %drawable_id13 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %25, i32 0, i32 0
  %26 = load i32, i32* %drawable_id13, align 4
  %27 = load i32, i32* %x1, align 4
  %28 = load i32, i32* %y1, align 4
  %29 = load i32, i32* %x2, align 4
  %30 = load i32, i32* %x1, align 4
  %sub = sub nsw i32 %29, %30
  %31 = load i32, i32* %y2, align 4
  %32 = load i32, i32* %y1, align 4
  %sub14 = sub nsw i32 %31, %32
  %call15 = call i32 @gimp_drawable_update(i32 %26, i32 %27, i32 %28, i32 %sub, i32 %sub14)
  %33 = load i32, i32* @run_mode, align 4
  %cmp16 = icmp ne i32 %33, 1
  br i1 %cmp16, label %if.then.17, label %if.end.19

if.then.17:                                       ; preds = %for.body
  %call18 = call i32 @gimp_displays_flush()
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.17, %for.body
  store i32 0, i32* %first_time, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.19
  %34 = load i32, i32* %warp_iter, align 4
  %inc = add nsw i32 %34, 1
  store i32 %inc, i32* %warp_iter, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %35 = load %struct._GimpDrawable*, %struct._GimpDrawable** %map_x, align 8
  %drawable_id20 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %35, i32 0, i32 0
  %36 = load i32, i32* %drawable_id20, align 4
  %call21 = call i32 @gimp_item_get_image(i32 %36)
  store i32 %call21, i32* %image_ID, align 4
  %37 = load %struct._GimpDrawable*, %struct._GimpDrawable** %map_x, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %37)
  %38 = load %struct._GimpDrawable*, %struct._GimpDrawable** %map_y, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %38)
  %39 = load i32, i32* %image_ID, align 4
  %call22 = call i32 @gimp_image_delete(i32 %39)
  br label %return

return:                                           ; preds = %for.end, %if.then
  ret void
}

declare i32 @gimp_procedural_db_set_data(i8*, i8*, i32) #1

declare i32 @gimp_displays_flush() #1

declare void @gimp_drawable_detach(%struct._GimpDrawable*) #1

declare void @gimp_ui_init(i8*, i32) #1

declare %struct._GtkWidget* @gimp_dialog_new(i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #2

declare void @gimp_standard_help_func(i8*, i8*) #1

declare void @gtk_dialog_set_alternative_button_order(%struct._GtkDialog*, i32, ...) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_dialog_get_type() #3

declare void @gimp_window_set_transient(%struct._GtkWindow*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_window_get_type() #3

declare %struct._GtkWidget* @gtk_box_new(i32, i32) #1

declare void @gtk_container_set_border_width(%struct._GtkContainer*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #3

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

declare %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #3

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare %struct._GtkWidget* @gimp_frame_new(i8*) #1

declare %struct._GtkWidget* @gtk_table_new(i32, i32, i32) #1

declare void @gtk_table_set_row_spacings(%struct._GtkTable*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_table_get_type() #3

declare void @gtk_table_set_col_spacings(%struct._GtkTable*, i32) #1

declare void @gtk_table_set_col_spacing(%struct._GtkTable*, i32, i32) #1

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #1

declare %struct._GtkSizeGroup* @gtk_size_group_new(i32) #1

declare %struct._GtkWidget* @gimp_spin_button_new(%struct._GtkObject**, double, double, double, double, double, double, double, i32) #1

declare void @gtk_size_group_add_widget(%struct._GtkSizeGroup*, %struct._GtkWidget*) #1

declare void @g_object_unref(i8*) #1

declare %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable*, i32, i32, i8*, float, float, %struct._GtkWidget*, i32, i32) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

declare void @gimp_double_adjustment_update(%struct._GtkAdjustment*, i8*) #1

declare void @gimp_int_adjustment_update(%struct._GtkAdjustment*, i8*) #1

declare %struct._GtkWidget* @gtk_label_new(i8*) #1

declare void @gtk_misc_set_alignment(%struct._GtkMisc*, float, float) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_misc_get_type() #3

declare void @gtk_table_attach(%struct._GtkTable*, %struct._GtkWidget*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare %struct._GtkWidget* @gimp_drawable_combo_box_new(i32 (i32, i32, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @warp_map_constrain(i32 %image_id, i32 %drawable_id, i8* %data) #0 {
entry:
  %image_id.addr = alloca i32, align 4
  %drawable_id.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  store i32 %image_id, i32* %image_id.addr, align 4
  store i32 %drawable_id, i32* %drawable_id.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GimpDrawable*
  store %struct._GimpDrawable* %1, %struct._GimpDrawable** %drawable, align 8
  %2 = load i32, i32* %drawable_id.addr, align 4
  %call = call i32 @gimp_drawable_width(i32 %2)
  %3 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %3, i32 0, i32 1
  %4 = load i32, i32* %width, align 4
  %cmp = icmp eq i32 %call, %4
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %5 = load i32, i32* %drawable_id.addr, align 4
  %call1 = call i32 @gimp_drawable_height(i32 %5)
  %6 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %height = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %6, i32 0, i32 2
  %7 = load i32, i32* %height, align 4
  %cmp2 = icmp eq i32 %call1, %7
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %8 = phi i1 [ false, %entry ], [ %cmp2, %land.rhs ]
  %land.ext = zext i1 %8 to i32
  ret i32 %land.ext
}

declare i64 @gimp_int_combo_box_connect(%struct._GimpIntComboBox*, i32, void ()*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_int_combo_box_get_type() #3

declare i32 @gimp_int_combo_box_get_active(%struct._GimpIntComboBox*, i32*) #1

declare %struct._GtkWidget* @gtk_radio_button_new_with_label(%struct._GSList*, i8*) #1

declare %struct._GSList* @gtk_radio_button_get_group(%struct._GtkRadioButton*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_radio_button_get_type() #3

declare void @g_object_set_data(%struct._GObject*, i8*, i8*) #1

declare void @gimp_radio_button_update(%struct._GtkWidget*, i8*) #1

declare void @gtk_toggle_button_set_active(%struct._GtkToggleButton*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_toggle_button_get_type() #3

declare %struct._GtkWidget* @gtk_check_button_new_with_label(i8*) #1

declare void @gimp_toggle_button_update(%struct._GtkWidget*, i8*) #1

declare void @gimp_help_set_help_data(%struct._GtkWidget*, i8*, i8*) #1

declare i32 @gimp_dialog_run(%struct._GimpDialog*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_dialog_get_type() #3

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

declare i32 @gimp_drawable_width(i32) #1

declare i32 @gimp_drawable_height(i32) #1

declare i32 @gimp_progress_init(i8*) #1

declare i32 @gimp_drawable_mask_intersect(i32, i32*, i32*, i32*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @diff(%struct._GimpDrawable* %drawable, i32* %xl_id, i32* %yl_id) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %xl_id.addr = alloca i32*, align 8
  %yl_id.addr = alloca i32*, align 8
  %draw_xd = alloca %struct._GimpDrawable*, align 8
  %draw_yd = alloca %struct._GimpDrawable*, align 8
  %mdraw = alloca %struct._GimpDrawable*, align 8
  %vdraw = alloca %struct._GimpDrawable*, align 8
  %gdraw = alloca %struct._GimpDrawable*, align 8
  %image_id = alloca i32, align 4
  %new_image_id = alloca i32, align 4
  %layer_active = alloca i32, align 4
  %xlayer_id = alloca i32, align 4
  %ylayer_id = alloca i32, align 4
  %srcPR = alloca %struct._GimpPixelRgn, align 8
  %destxPR = alloca %struct._GimpPixelRgn, align 8
  %destyPR = alloca %struct._GimpPixelRgn, align 8
  %vecPR = alloca %struct._GimpPixelRgn, align 8
  %magPR = alloca %struct._GimpPixelRgn, align 8
  %gradPR = alloca %struct._GimpPixelRgn, align 8
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %src_bytes = alloca i32, align 4
  %mbytes = alloca i32, align 4
  %vbytes = alloca i32, align 4
  %gbytes = alloca i32, align 4
  %dest_bytes = alloca i32, align 4
  %dest_bytes_inc = alloca i32, align 4
  %do_gradmap = alloca i32, align 4
  %do_vecmap = alloca i32, align 4
  %do_magmap = alloca i32, align 4
  %destx = alloca i8*, align 8
  %dx = alloca i8*, align 8
  %desty = alloca i8*, align 8
  %dy = alloca i8*, align 8
  %tmp = alloca i8*, align 8
  %prev_row = alloca i8*, align 8
  %pr = alloca i8*, align 8
  %cur_row = alloca i8*, align 8
  %cr = alloca i8*, align 8
  %next_row = alloca i8*, align 8
  %nr = alloca i8*, align 8
  %prev_row_g = alloca i8*, align 8
  %prg = alloca i8*, align 8
  %cur_row_g = alloca i8*, align 8
  %crg = alloca i8*, align 8
  %next_row_g = alloca i8*, align 8
  %nrg = alloca i8*, align 8
  %cur_row_v = alloca i8*, align 8
  %crv = alloca i8*, align 8
  %cur_row_m = alloca i8*, align 8
  %crm = alloca i8*, align 8
  %row = alloca i32, align 4
  %col = alloca i32, align 4
  %offb = alloca i32, align 4
  %off = alloca i32, align 4
  %bytes = alloca i32, align 4
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  %dvalx = alloca i32, align 4
  %dvaly = alloca i32, align 4
  %tx = alloca double, align 8
  %ty = alloca double, align 8
  %rdx = alloca double, align 8
  %rdy = alloca double, align 8
  %rscalefac = alloca double, align 8
  %gscalefac = alloca double, align 8
  %r = alloca double, align 8
  %theta = alloca double, align 8
  %dtheta = alloca double, align 8
  %scale_vec_x = alloca double, align 8
  %scale_vec_y = alloca double, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store i32* %xl_id, i32** %xl_id.addr, align 8
  store i32* %yl_id, i32** %yl_id.addr, align 8
  store i32 0, i32* %mbytes, align 4
  store i32 0, i32* %vbytes, align 4
  store i32 0, i32* %gbytes, align 4
  store i32 0, i32* %do_gradmap, align 4
  store i32 0, i32* %do_vecmap, align 4
  store i32 0, i32* %do_magmap, align 4
  store i8* null, i8** %prg, align 8
  store i8* null, i8** %crg, align 8
  store i8* null, i8** %nrg, align 8
  store i8* null, i8** %crv, align 8
  store i8* null, i8** %crm, align 8
  %0 = load double, double* getelementptr inbounds (%struct.WarpVals, %struct.WarpVals* @dvals, i32 0, i32 10), align 8
  %cmp = fcmp une double %0, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %do_gradmap, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load double, double* getelementptr inbounds (%struct.WarpVals, %struct.WarpVals* @dvals, i32 0, i32 12), align 8
  %cmp39 = fcmp une double %1, 0.000000e+00
  br i1 %cmp39, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %if.end
  store i32 1, i32* %do_vecmap, align 4
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.40, %if.end
  %2 = load i32, i32* getelementptr inbounds (%struct.WarpVals, %struct.WarpVals* @dvals, i32 0, i32 7), align 4
  %cmp42 = icmp eq i32 %2, 1
  %conv = zext i1 %cmp42 to i32
  store i32 %conv, i32* %do_magmap, align 4
  %3 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %3, i32 0, i32 0
  %4 = load i32, i32* %drawable_id, align 4
  %call = call i32 @gimp_drawable_mask_intersect(i32 %4, i32* %x1, i32* %y1, i32* %width, i32* %height)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.44, label %if.then.43

if.then.43:                                       ; preds = %if.end.41
  br label %return

if.end.44:                                        ; preds = %if.end.41
  %5 = load i32, i32* %x1, align 4
  %6 = load i32, i32* %width, align 4
  %add = add nsw i32 %5, %6
  store i32 %add, i32* %x2, align 4
  %7 = load i32, i32* %y1, align 4
  %8 = load i32, i32* %height, align 4
  %add45 = add nsw i32 %7, %8
  store i32 %add45, i32* %y2, align 4
  %9 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %width46 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %9, i32 0, i32 1
  %10 = load i32, i32* %width46, align 4
  store i32 %10, i32* %width, align 4
  %11 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %height47 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %11, i32 0, i32 2
  %12 = load i32, i32* %height47, align 4
  store i32 %12, i32* %height, align 4
  %13 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %bpp = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %13, i32 0, i32 3
  %14 = load i32, i32* %bpp, align 4
  store i32 %14, i32* %src_bytes, align 4
  %15 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id48 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %15, i32 0, i32 0
  %16 = load i32, i32* %drawable_id48, align 4
  %call49 = call i32 @gimp_item_get_image(i32 %16)
  store i32 %call49, i32* %image_id, align 4
  %17 = load i32, i32* %image_id, align 4
  %call50 = call i32 @gimp_image_get_active_layer(i32 %17)
  store i32 %call50, i32* %layer_active, align 4
  %18 = load i32, i32* %width, align 4
  %19 = load i32, i32* %height, align 4
  %call51 = call i32 @gimp_image_new(i32 %18, i32 %19, i32 0)
  store i32 %call51, i32* %new_image_id, align 4
  %20 = load i32, i32* %new_image_id, align 4
  %21 = load i32, i32* %width, align 4
  %22 = load i32, i32* %height, align 4
  %call52 = call i32 @gimp_layer_new(i32 %20, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.75, i32 0, i32 0), i32 %21, i32 %22, i32 0, double 1.000000e+02, i32 0)
  store i32 %call52, i32* %xlayer_id, align 4
  %23 = load i32, i32* %new_image_id, align 4
  %24 = load i32, i32* %width, align 4
  %25 = load i32, i32* %height, align 4
  %call53 = call i32 @gimp_layer_new(i32 %23, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.76, i32 0, i32 0), i32 %24, i32 %25, i32 0, double 1.000000e+02, i32 0)
  store i32 %call53, i32* %ylayer_id, align 4
  %26 = load i32, i32* %ylayer_id, align 4
  %call54 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %26)
  store %struct._GimpDrawable* %call54, %struct._GimpDrawable** %draw_yd, align 8
  %27 = load i32, i32* %xlayer_id, align 4
  %call55 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %27)
  store %struct._GimpDrawable* %call55, %struct._GimpDrawable** %draw_xd, align 8
  %28 = load i32, i32* %new_image_id, align 4
  %29 = load i32, i32* %xlayer_id, align 4
  %call56 = call i32 @gimp_image_insert_layer(i32 %28, i32 %29, i32 -1, i32 1)
  %30 = load i32, i32* %new_image_id, align 4
  %31 = load i32, i32* %ylayer_id, align 4
  %call57 = call i32 @gimp_image_insert_layer(i32 %30, i32 %31, i32 -1, i32 1)
  %32 = load i32, i32* %xlayer_id, align 4
  %call58 = call i32 @gimp_drawable_fill(i32 %32, i32 1)
  %33 = load i32, i32* %ylayer_id, align 4
  %call59 = call i32 @gimp_drawable_fill(i32 %33, i32 1)
  %34 = load i32, i32* %image_id, align 4
  %35 = load i32, i32* %layer_active, align 4
  %call60 = call i32 @gimp_image_set_active_layer(i32 %34, i32 %35)
  %36 = load %struct._GimpDrawable*, %struct._GimpDrawable** %draw_xd, align 8
  %bpp61 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %36, i32 0, i32 3
  %37 = load i32, i32* %bpp61, align 4
  store i32 %37, i32* %dest_bytes, align 4
  %38 = load i32, i32* %dest_bytes, align 4
  %sub = sub nsw i32 %38, 2
  store i32 %sub, i32* %dest_bytes_inc, align 4
  %39 = load i32, i32* %x2, align 4
  %40 = load i32, i32* %x1, align 4
  %sub62 = sub nsw i32 %39, %40
  %add63 = add nsw i32 %sub62, 2
  %41 = load i32, i32* %src_bytes, align 4
  %mul = mul nsw i32 %add63, %41
  %conv64 = sext i32 %mul to i64
  %call65 = call noalias i8* @g_malloc_n(i64 %conv64, i64 1)
  store i8* %call65, i8** %prev_row, align 8
  %42 = load i32, i32* %x2, align 4
  %43 = load i32, i32* %x1, align 4
  %sub66 = sub nsw i32 %42, %43
  %add67 = add nsw i32 %sub66, 2
  %44 = load i32, i32* %src_bytes, align 4
  %mul68 = mul nsw i32 %add67, %44
  %conv69 = sext i32 %mul68 to i64
  %call70 = call noalias i8* @g_malloc_n(i64 %conv69, i64 1)
  store i8* %call70, i8** %cur_row, align 8
  %45 = load i32, i32* %x2, align 4
  %46 = load i32, i32* %x1, align 4
  %sub71 = sub nsw i32 %45, %46
  %add72 = add nsw i32 %sub71, 2
  %47 = load i32, i32* %src_bytes, align 4
  %mul73 = mul nsw i32 %add72, %47
  %conv74 = sext i32 %mul73 to i64
  %call75 = call noalias i8* @g_malloc_n(i64 %conv74, i64 1)
  store i8* %call75, i8** %next_row, align 8
  %48 = load i32, i32* %x2, align 4
  %49 = load i32, i32* %x1, align 4
  %sub76 = sub nsw i32 %48, %49
  %add77 = add nsw i32 %sub76, 2
  %50 = load i32, i32* %src_bytes, align 4
  %mul78 = mul nsw i32 %add77, %50
  %conv79 = sext i32 %mul78 to i64
  %call80 = call noalias i8* @g_malloc_n(i64 %conv79, i64 1)
  store i8* %call80, i8** %prev_row_g, align 8
  %51 = load i32, i32* %x2, align 4
  %52 = load i32, i32* %x1, align 4
  %sub81 = sub nsw i32 %51, %52
  %add82 = add nsw i32 %sub81, 2
  %53 = load i32, i32* %src_bytes, align 4
  %mul83 = mul nsw i32 %add82, %53
  %conv84 = sext i32 %mul83 to i64
  %call85 = call noalias i8* @g_malloc_n(i64 %conv84, i64 1)
  store i8* %call85, i8** %cur_row_g, align 8
  %54 = load i32, i32* %x2, align 4
  %55 = load i32, i32* %x1, align 4
  %sub86 = sub nsw i32 %54, %55
  %add87 = add nsw i32 %sub86, 2
  %56 = load i32, i32* %src_bytes, align 4
  %mul88 = mul nsw i32 %add87, %56
  %conv89 = sext i32 %mul88 to i64
  %call90 = call noalias i8* @g_malloc_n(i64 %conv89, i64 1)
  store i8* %call90, i8** %next_row_g, align 8
  %57 = load i32, i32* %x2, align 4
  %58 = load i32, i32* %x1, align 4
  %sub91 = sub nsw i32 %57, %58
  %add92 = add nsw i32 %sub91, 2
  %59 = load i32, i32* %src_bytes, align 4
  %mul93 = mul nsw i32 %add92, %59
  %conv94 = sext i32 %mul93 to i64
  %call95 = call noalias i8* @g_malloc_n(i64 %conv94, i64 1)
  store i8* %call95, i8** %cur_row_v, align 8
  %60 = load i32, i32* %x2, align 4
  %61 = load i32, i32* %x1, align 4
  %sub96 = sub nsw i32 %60, %61
  %add97 = add nsw i32 %sub96, 2
  %62 = load i32, i32* %src_bytes, align 4
  %mul98 = mul nsw i32 %add97, %62
  %conv99 = sext i32 %mul98 to i64
  %call100 = call noalias i8* @g_malloc_n(i64 %conv99, i64 1)
  store i8* %call100, i8** %cur_row_m, align 8
  %63 = load i32, i32* %x2, align 4
  %64 = load i32, i32* %x1, align 4
  %sub101 = sub nsw i32 %63, %64
  %65 = load i32, i32* %dest_bytes, align 4
  %mul102 = mul nsw i32 %sub101, %65
  %conv103 = sext i32 %mul102 to i64
  %call104 = call noalias i8* @g_malloc_n(i64 %conv103, i64 1)
  store i8* %call104, i8** %destx, align 8
  %66 = load i32, i32* %x2, align 4
  %67 = load i32, i32* %x1, align 4
  %sub105 = sub nsw i32 %66, %67
  %68 = load i32, i32* %dest_bytes, align 4
  %mul106 = mul nsw i32 %sub105, %68
  %conv107 = sext i32 %mul106 to i64
  %call108 = call noalias i8* @g_malloc_n(i64 %conv107, i64 1)
  store i8* %call108, i8** %desty, align 8
  %69 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %70 = load i32, i32* %width, align 4
  %71 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %srcPR, %struct._GimpDrawable* %69, i32 0, i32 0, i32 %70, i32 %71, i32 0, i32 0)
  %72 = load %struct._GimpDrawable*, %struct._GimpDrawable** %draw_xd, align 8
  %73 = load i32, i32* %width, align 4
  %74 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %destxPR, %struct._GimpDrawable* %72, i32 0, i32 0, i32 %73, i32 %74, i32 1, i32 0)
  %75 = load %struct._GimpDrawable*, %struct._GimpDrawable** %draw_yd, align 8
  %76 = load i32, i32* %width, align 4
  %77 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %destyPR, %struct._GimpDrawable* %75, i32 0, i32 0, i32 %76, i32 %77, i32 1, i32 0)
  %78 = load i8*, i8** %prev_row, align 8
  %79 = load i32, i32* %src_bytes, align 4
  %idx.ext = sext i32 %79 to i64
  %add.ptr = getelementptr inbounds i8, i8* %78, i64 %idx.ext
  store i8* %add.ptr, i8** %pr, align 8
  %80 = load i8*, i8** %cur_row, align 8
  %81 = load i32, i32* %src_bytes, align 4
  %idx.ext109 = sext i32 %81 to i64
  %add.ptr110 = getelementptr inbounds i8, i8* %80, i64 %idx.ext109
  store i8* %add.ptr110, i8** %cr, align 8
  %82 = load i8*, i8** %next_row, align 8
  %83 = load i32, i32* %src_bytes, align 4
  %idx.ext111 = sext i32 %83 to i64
  %add.ptr112 = getelementptr inbounds i8, i8* %82, i64 %idx.ext111
  store i8* %add.ptr112, i8** %nr, align 8
  %84 = load i8*, i8** %pr, align 8
  %85 = load i32, i32* %x1, align 4
  %86 = load i32, i32* %y1, align 4
  %87 = load i32, i32* %x2, align 4
  %88 = load i32, i32* %x1, align 4
  %sub113 = sub nsw i32 %87, %88
  call void @diff_prepare_row(%struct._GimpPixelRgn* %srcPR, i8* %84, i32 %85, i32 %86, i32 %sub113)
  %89 = load i8*, i8** %cr, align 8
  %90 = load i32, i32* %x1, align 4
  %91 = load i32, i32* %y1, align 4
  %add114 = add nsw i32 %91, 1
  %92 = load i32, i32* %x2, align 4
  %93 = load i32, i32* %x1, align 4
  %sub115 = sub nsw i32 %92, %93
  call void @diff_prepare_row(%struct._GimpPixelRgn* %srcPR, i8* %89, i32 %90, i32 %add114, i32 %sub115)
  %94 = load double, double* getelementptr inbounds (%struct.WarpVals, %struct.WarpVals* @dvals, i32 0, i32 12), align 8
  %95 = load double, double* getelementptr inbounds (%struct.WarpVals, %struct.WarpVals* @dvals, i32 0, i32 13), align 8
  %sub116 = fsub double 9.000000e+01, %95
  %mul117 = fmul double %sub116, 0x400921FB54442D18
  %div = fdiv double %mul117, 1.800000e+02
  %call118 = call double @cos(double %div) #5
  %mul119 = fmul double %94, %call118
  %mul120 = fmul double %mul119, 2.560000e+02
  %div121 = fdiv double %mul120, 1.000000e+01
  store double %div121, double* %scale_vec_x, align 8
  %96 = load double, double* getelementptr inbounds (%struct.WarpVals, %struct.WarpVals* @dvals, i32 0, i32 12), align 8
  %97 = load double, double* getelementptr inbounds (%struct.WarpVals, %struct.WarpVals* @dvals, i32 0, i32 13), align 8
  %sub122 = fsub double 9.000000e+01, %97
  %mul123 = fmul double %sub122, 0x400921FB54442D18
  %div124 = fdiv double %mul123, 1.800000e+02
  %call125 = call double @sin(double %div124) #5
  %mul126 = fmul double %96, %call125
  %mul127 = fmul double %mul126, 2.560000e+02
  %div128 = fdiv double %mul127, 1.000000e+01
  store double %div128, double* %scale_vec_y, align 8
  %98 = load i32, i32* %do_vecmap, align 4
  %tobool129 = icmp ne i32 %98, 0
  br i1 %tobool129, label %if.then.130, label %if.end.136

if.then.130:                                      ; preds = %if.end.44
  %99 = load i32, i32* getelementptr inbounds (%struct.WarpVals, %struct.WarpVals* @dvals, i32 0, i32 11), align 4
  %call131 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %99)
  store %struct._GimpDrawable* %call131, %struct._GimpDrawable** %vdraw, align 8
  %100 = load %struct._GimpDrawable*, %struct._GimpDrawable** %vdraw, align 8
  %bpp132 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %100, i32 0, i32 3
  %101 = load i32, i32* %bpp132, align 4
  store i32 %101, i32* %vbytes, align 4
  %102 = load %struct._GimpDrawable*, %struct._GimpDrawable** %vdraw, align 8
  %103 = load i32, i32* %width, align 4
  %104 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %vecPR, %struct._GimpDrawable* %102, i32 0, i32 0, i32 %103, i32 %104, i32 0, i32 0)
  %105 = load i8*, i8** %cur_row_v, align 8
  %106 = load i32, i32* %vbytes, align 4
  %idx.ext133 = sext i32 %106 to i64
  %add.ptr134 = getelementptr inbounds i8, i8* %105, i64 %idx.ext133
  store i8* %add.ptr134, i8** %crv, align 8
  %107 = load i8*, i8** %crv, align 8
  %108 = load i32, i32* %x1, align 4
  %109 = load i32, i32* %y1, align 4
  %110 = load i32, i32* %x2, align 4
  %111 = load i32, i32* %x1, align 4
  %sub135 = sub nsw i32 %110, %111
  call void @diff_prepare_row(%struct._GimpPixelRgn* %vecPR, i8* %107, i32 %108, i32 %109, i32 %sub135)
  br label %if.end.136

if.end.136:                                       ; preds = %if.then.130, %if.end.44
  %112 = load i32, i32* %do_gradmap, align 4
  %tobool137 = icmp ne i32 %112, 0
  br i1 %tobool137, label %if.then.138, label %if.end.150

if.then.138:                                      ; preds = %if.end.136
  %113 = load i32, i32* getelementptr inbounds (%struct.WarpVals, %struct.WarpVals* @dvals, i32 0, i32 9), align 4
  %call139 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %113)
  store %struct._GimpDrawable* %call139, %struct._GimpDrawable** %gdraw, align 8
  %114 = load %struct._GimpDrawable*, %struct._GimpDrawable** %gdraw, align 8
  %bpp140 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %114, i32 0, i32 3
  %115 = load i32, i32* %bpp140, align 4
  store i32 %115, i32* %gbytes, align 4
  %116 = load %struct._GimpDrawable*, %struct._GimpDrawable** %gdraw, align 8
  %117 = load i32, i32* %width, align 4
  %118 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %gradPR, %struct._GimpDrawable* %116, i32 0, i32 0, i32 %117, i32 %118, i32 0, i32 0)
  %119 = load i8*, i8** %prev_row_g, align 8
  %120 = load i32, i32* %gbytes, align 4
  %idx.ext141 = sext i32 %120 to i64
  %add.ptr142 = getelementptr inbounds i8, i8* %119, i64 %idx.ext141
  store i8* %add.ptr142, i8** %prg, align 8
  %121 = load i8*, i8** %cur_row_g, align 8
  %122 = load i32, i32* %gbytes, align 4
  %idx.ext143 = sext i32 %122 to i64
  %add.ptr144 = getelementptr inbounds i8, i8* %121, i64 %idx.ext143
  store i8* %add.ptr144, i8** %crg, align 8
  %123 = load i8*, i8** %next_row_g, align 8
  %124 = load i32, i32* %gbytes, align 4
  %idx.ext145 = sext i32 %124 to i64
  %add.ptr146 = getelementptr inbounds i8, i8* %123, i64 %idx.ext145
  store i8* %add.ptr146, i8** %nrg, align 8
  %125 = load i8*, i8** %prg, align 8
  %126 = load i32, i32* %x1, align 4
  %127 = load i32, i32* %y1, align 4
  %sub147 = sub nsw i32 %127, 1
  %128 = load i32, i32* %x2, align 4
  %129 = load i32, i32* %x1, align 4
  %sub148 = sub nsw i32 %128, %129
  call void @diff_prepare_row(%struct._GimpPixelRgn* %gradPR, i8* %125, i32 %126, i32 %sub147, i32 %sub148)
  %130 = load i8*, i8** %crg, align 8
  %131 = load i32, i32* %x1, align 4
  %132 = load i32, i32* %y1, align 4
  %133 = load i32, i32* %x2, align 4
  %134 = load i32, i32* %x1, align 4
  %sub149 = sub nsw i32 %133, %134
  call void @diff_prepare_row(%struct._GimpPixelRgn* %gradPR, i8* %130, i32 %131, i32 %132, i32 %sub149)
  br label %if.end.150

if.end.150:                                       ; preds = %if.then.138, %if.end.136
  %135 = load i32, i32* %do_magmap, align 4
  %tobool151 = icmp ne i32 %135, 0
  br i1 %tobool151, label %if.then.152, label %if.end.158

if.then.152:                                      ; preds = %if.end.150
  %136 = load i32, i32* getelementptr inbounds (%struct.WarpVals, %struct.WarpVals* @dvals, i32 0, i32 6), align 4
  %call153 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %136)
  store %struct._GimpDrawable* %call153, %struct._GimpDrawable** %mdraw, align 8
  %137 = load %struct._GimpDrawable*, %struct._GimpDrawable** %mdraw, align 8
  %bpp154 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %137, i32 0, i32 3
  %138 = load i32, i32* %bpp154, align 4
  store i32 %138, i32* %mbytes, align 4
  %139 = load %struct._GimpDrawable*, %struct._GimpDrawable** %mdraw, align 8
  %140 = load i32, i32* %width, align 4
  %141 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %magPR, %struct._GimpDrawable* %139, i32 0, i32 0, i32 %140, i32 %141, i32 0, i32 0)
  %142 = load i8*, i8** %cur_row_m, align 8
  %143 = load i32, i32* %mbytes, align 4
  %idx.ext155 = sext i32 %143 to i64
  %add.ptr156 = getelementptr inbounds i8, i8* %142, i64 %idx.ext155
  store i8* %add.ptr156, i8** %crm, align 8
  %144 = load i8*, i8** %crm, align 8
  %145 = load i32, i32* %x1, align 4
  %146 = load i32, i32* %y1, align 4
  %147 = load i32, i32* %x2, align 4
  %148 = load i32, i32* %x1, align 4
  %sub157 = sub nsw i32 %147, %148
  call void @diff_prepare_row(%struct._GimpPixelRgn* %magPR, i8* %144, i32 %145, i32 %146, i32 %sub157)
  br label %if.end.158

if.end.158:                                       ; preds = %if.then.152, %if.end.150
  %149 = load double, double* getelementptr inbounds (%struct.WarpVals, %struct.WarpVals* @dvals, i32 0, i32 4), align 8
  %mul159 = fmul double %149, 0x400921FB54442D18
  %div160 = fdiv double %mul159, 1.800000e+02
  store double %div160, double* %dtheta, align 8
  %150 = load i32, i32* %src_bytes, align 4
  %mul161 = mul nsw i32 3, %150
  %conv162 = sitofp i32 %mul161 to double
  %div163 = fdiv double 2.560000e+02, %conv162
  store double %div163, double* %rscalefac, align 8
  %151 = load double, double* getelementptr inbounds (%struct.WarpVals, %struct.WarpVals* @dvals, i32 0, i32 10), align 8
  %mul164 = fmul double %151, 2.560000e+02
  %152 = load i32, i32* %gbytes, align 4
  %mul165 = mul nsw i32 3, %152
  %conv166 = sitofp i32 %mul165 to double
  %div167 = fdiv double %mul164, %conv166
  store double %div167, double* %gscalefac, align 8
  %153 = load i32, i32* %y1, align 4
  store i32 %153, i32* %row, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.431, %if.end.158
  %154 = load i32, i32* %row, align 4
  %155 = load i32, i32* %y2, align 4
  %cmp168 = icmp slt i32 %154, %155
  br i1 %cmp168, label %for.body, label %for.end.433

for.body:                                         ; preds = %for.cond
  %156 = load i8*, i8** %nr, align 8
  %157 = load i32, i32* %x1, align 4
  %158 = load i32, i32* %row, align 4
  %add170 = add nsw i32 %158, 1
  %159 = load i32, i32* %x2, align 4
  %160 = load i32, i32* %x1, align 4
  %sub171 = sub nsw i32 %159, %160
  call void @diff_prepare_row(%struct._GimpPixelRgn* %srcPR, i8* %156, i32 %157, i32 %add170, i32 %sub171)
  %161 = load i32, i32* %do_magmap, align 4
  %tobool172 = icmp ne i32 %161, 0
  br i1 %tobool172, label %if.then.173, label %if.end.176

if.then.173:                                      ; preds = %for.body
  %162 = load i8*, i8** %crm, align 8
  %163 = load i32, i32* %x1, align 4
  %164 = load i32, i32* %row, align 4
  %add174 = add nsw i32 %164, 1
  %165 = load i32, i32* %x2, align 4
  %166 = load i32, i32* %x1, align 4
  %sub175 = sub nsw i32 %165, %166
  call void @diff_prepare_row(%struct._GimpPixelRgn* %magPR, i8* %162, i32 %163, i32 %add174, i32 %sub175)
  br label %if.end.176

if.end.176:                                       ; preds = %if.then.173, %for.body
  %167 = load i32, i32* %do_vecmap, align 4
  %tobool177 = icmp ne i32 %167, 0
  br i1 %tobool177, label %if.then.178, label %if.end.181

if.then.178:                                      ; preds = %if.end.176
  %168 = load i8*, i8** %crv, align 8
  %169 = load i32, i32* %x1, align 4
  %170 = load i32, i32* %row, align 4
  %add179 = add nsw i32 %170, 1
  %171 = load i32, i32* %x2, align 4
  %172 = load i32, i32* %x1, align 4
  %sub180 = sub nsw i32 %171, %172
  call void @diff_prepare_row(%struct._GimpPixelRgn* %vecPR, i8* %168, i32 %169, i32 %add179, i32 %sub180)
  br label %if.end.181

if.end.181:                                       ; preds = %if.then.178, %if.end.176
  %173 = load i32, i32* %do_gradmap, align 4
  %tobool182 = icmp ne i32 %173, 0
  br i1 %tobool182, label %if.then.183, label %if.end.186

if.then.183:                                      ; preds = %if.end.181
  %174 = load i8*, i8** %crg, align 8
  %175 = load i32, i32* %x1, align 4
  %176 = load i32, i32* %row, align 4
  %add184 = add nsw i32 %176, 1
  %177 = load i32, i32* %x2, align 4
  %178 = load i32, i32* %x1, align 4
  %sub185 = sub nsw i32 %177, %178
  call void @diff_prepare_row(%struct._GimpPixelRgn* %gradPR, i8* %174, i32 %175, i32 %add184, i32 %sub185)
  br label %if.end.186

if.end.186:                                       ; preds = %if.then.183, %if.end.181
  %179 = load i8*, i8** %destx, align 8
  store i8* %179, i8** %dx, align 8
  %180 = load i8*, i8** %desty, align 8
  store i8* %180, i8** %dy, align 8
  store i32 0, i32* %col, align 4
  br label %for.cond.187

for.cond.187:                                     ; preds = %for.inc.413, %if.end.186
  %181 = load i32, i32* %col, align 4
  %182 = load i32, i32* %x2, align 4
  %183 = load i32, i32* %x1, align 4
  %sub188 = sub nsw i32 %182, %183
  %cmp189 = icmp slt i32 %181, %sub188
  br i1 %cmp189, label %for.body.191, label %for.end.415

for.body.191:                                     ; preds = %for.cond.187
  store double 0.000000e+00, double* %rdx, align 8
  store double 0.000000e+00, double* %rdy, align 8
  store double 0.000000e+00, double* %ty, align 8
  store double 0.000000e+00, double* %tx, align 8
  %184 = load i32, i32* %col, align 4
  %185 = load i32, i32* %src_bytes, align 4
  %mul192 = mul nsw i32 %184, %185
  store i32 %mul192, i32* %offb, align 4
  store i32 0, i32* %bytes, align 4
  br label %for.cond.193

for.cond.193:                                     ; preds = %for.inc, %for.body.191
  %186 = load i32, i32* %bytes, align 4
  %187 = load i32, i32* %src_bytes, align 4
  %cmp194 = icmp slt i32 %186, %187
  br i1 %cmp194, label %for.body.196, label %for.end

for.body.196:                                     ; preds = %for.cond.193
  %188 = load i32, i32* %offb, align 4
  %189 = load i32, i32* %bytes, align 4
  %add197 = add nsw i32 %188, %189
  store i32 %add197, i32* %off, align 4
  %190 = load i32, i32* %off, align 4
  %191 = load i32, i32* %src_bytes, align 4
  %sub198 = sub nsw i32 %190, %191
  %idxprom = sext i32 %sub198 to i64
  %192 = load i8*, i8** %pr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %192, i64 %idxprom
  %193 = load i8, i8* %arrayidx, align 1
  %conv199 = zext i8 %193 to i32
  %sub200 = sub nsw i32 0, %conv199
  %194 = load i32, i32* %off, align 4
  %195 = load i32, i32* %src_bytes, align 4
  %add201 = add nsw i32 %194, %195
  %idxprom202 = sext i32 %add201 to i64
  %196 = load i8*, i8** %pr, align 8
  %arrayidx203 = getelementptr inbounds i8, i8* %196, i64 %idxprom202
  %197 = load i8, i8* %arrayidx203, align 1
  %conv204 = zext i8 %197 to i32
  %add205 = add nsw i32 %sub200, %conv204
  %198 = load i32, i32* %off, align 4
  %199 = load i32, i32* %src_bytes, align 4
  %sub206 = sub nsw i32 %198, %199
  %idxprom207 = sext i32 %sub206 to i64
  %200 = load i8*, i8** %cr, align 8
  %arrayidx208 = getelementptr inbounds i8, i8* %200, i64 %idxprom207
  %201 = load i8, i8* %arrayidx208, align 1
  %conv209 = zext i8 %201 to i32
  %mul210 = mul nsw i32 -2, %conv209
  %add211 = add nsw i32 %add205, %mul210
  %202 = load i32, i32* %off, align 4
  %203 = load i32, i32* %src_bytes, align 4
  %add212 = add nsw i32 %202, %203
  %idxprom213 = sext i32 %add212 to i64
  %204 = load i8*, i8** %cr, align 8
  %arrayidx214 = getelementptr inbounds i8, i8* %204, i64 %idxprom213
  %205 = load i8, i8* %arrayidx214, align 1
  %conv215 = zext i8 %205 to i32
  %mul216 = mul nsw i32 2, %conv215
  %add217 = add nsw i32 %add211, %mul216
  %206 = load i32, i32* %off, align 4
  %207 = load i32, i32* %src_bytes, align 4
  %sub218 = sub nsw i32 %206, %207
  %idxprom219 = sext i32 %sub218 to i64
  %208 = load i8*, i8** %nr, align 8
  %arrayidx220 = getelementptr inbounds i8, i8* %208, i64 %idxprom219
  %209 = load i8, i8* %arrayidx220, align 1
  %conv221 = zext i8 %209 to i32
  %sub222 = sub nsw i32 0, %conv221
  %add223 = add nsw i32 %add217, %sub222
  %210 = load i32, i32* %off, align 4
  %211 = load i32, i32* %src_bytes, align 4
  %add224 = add nsw i32 %210, %211
  %idxprom225 = sext i32 %add224 to i64
  %212 = load i8*, i8** %nr, align 8
  %arrayidx226 = getelementptr inbounds i8, i8* %212, i64 %idxprom225
  %213 = load i8, i8* %arrayidx226, align 1
  %conv227 = zext i8 %213 to i32
  %add228 = add nsw i32 %add223, %conv227
  %conv229 = sitofp i32 %add228 to double
  %214 = load double, double* %rdx, align 8
  %add230 = fadd double %214, %conv229
  store double %add230, double* %rdx, align 8
  %215 = load i32, i32* %off, align 4
  %216 = load i32, i32* %src_bytes, align 4
  %sub231 = sub nsw i32 %215, %216
  %idxprom232 = sext i32 %sub231 to i64
  %217 = load i8*, i8** %pr, align 8
  %arrayidx233 = getelementptr inbounds i8, i8* %217, i64 %idxprom232
  %218 = load i8, i8* %arrayidx233, align 1
  %conv234 = zext i8 %218 to i32
  %sub235 = sub nsw i32 0, %conv234
  %219 = load i32, i32* %off, align 4
  %idxprom236 = sext i32 %219 to i64
  %220 = load i8*, i8** %pr, align 8
  %arrayidx237 = getelementptr inbounds i8, i8* %220, i64 %idxprom236
  %221 = load i8, i8* %arrayidx237, align 1
  %conv238 = zext i8 %221 to i32
  %mul239 = mul nsw i32 2, %conv238
  %sub240 = sub nsw i32 %sub235, %mul239
  %222 = load i32, i32* %off, align 4
  %223 = load i32, i32* %src_bytes, align 4
  %add241 = add nsw i32 %222, %223
  %idxprom242 = sext i32 %add241 to i64
  %224 = load i8*, i8** %pr, align 8
  %arrayidx243 = getelementptr inbounds i8, i8* %224, i64 %idxprom242
  %225 = load i8, i8* %arrayidx243, align 1
  %conv244 = zext i8 %225 to i32
  %sub245 = sub nsw i32 %sub240, %conv244
  %226 = load i32, i32* %off, align 4
  %227 = load i32, i32* %src_bytes, align 4
  %sub246 = sub nsw i32 %226, %227
  %idxprom247 = sext i32 %sub246 to i64
  %228 = load i8*, i8** %nr, align 8
  %arrayidx248 = getelementptr inbounds i8, i8* %228, i64 %idxprom247
  %229 = load i8, i8* %arrayidx248, align 1
  %conv249 = zext i8 %229 to i32
  %add250 = add nsw i32 %sub245, %conv249
  %230 = load i32, i32* %off, align 4
  %idxprom251 = sext i32 %230 to i64
  %231 = load i8*, i8** %nr, align 8
  %arrayidx252 = getelementptr inbounds i8, i8* %231, i64 %idxprom251
  %232 = load i8, i8* %arrayidx252, align 1
  %conv253 = zext i8 %232 to i32
  %mul254 = mul nsw i32 2, %conv253
  %add255 = add nsw i32 %add250, %mul254
  %233 = load i32, i32* %off, align 4
  %234 = load i32, i32* %src_bytes, align 4
  %add256 = add nsw i32 %233, %234
  %idxprom257 = sext i32 %add256 to i64
  %235 = load i8*, i8** %nr, align 8
  %arrayidx258 = getelementptr inbounds i8, i8* %235, i64 %idxprom257
  %236 = load i8, i8* %arrayidx258, align 1
  %conv259 = zext i8 %236 to i32
  %add260 = add nsw i32 %add255, %conv259
  %conv261 = sitofp i32 %add260 to double
  %237 = load double, double* %rdy, align 8
  %add262 = fadd double %237, %conv261
  store double %add262, double* %rdy, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.196
  %238 = load i32, i32* %bytes, align 4
  %inc = add nsw i32 %238, 1
  store i32 %inc, i32* %bytes, align 4
  br label %for.cond.193

for.end:                                          ; preds = %for.cond.193
  %239 = load double, double* %rscalefac, align 8
  %240 = load double, double* %rdx, align 8
  %mul263 = fmul double %240, %239
  store double %mul263, double* %rdx, align 8
  %241 = load double, double* %rscalefac, align 8
  %242 = load double, double* %rdy, align 8
  %mul264 = fmul double %242, %241
  store double %mul264, double* %rdy, align 8
  %243 = load double, double* %rdy, align 8
  %244 = load double, double* %rdx, align 8
  %call265 = call double @atan2(double %243, double %244) #5
  store double %call265, double* %theta, align 8
  %245 = load double, double* %rdy, align 8
  %246 = load double, double* %rdy, align 8
  %mul266 = fmul double %245, %246
  %247 = load double, double* %rdx, align 8
  %248 = load double, double* %rdx, align 8
  %mul267 = fmul double %247, %248
  %add268 = fadd double %mul266, %mul267
  %call269 = call double @sqrt(double %add268) #5
  store double %call269, double* %r, align 8
  %249 = load double, double* %dtheta, align 8
  %250 = load double, double* %theta, align 8
  %add270 = fadd double %250, %249
  store double %add270, double* %theta, align 8
  %251 = load double, double* %r, align 8
  %252 = load double, double* %theta, align 8
  %call271 = call double @cos(double %252) #5
  %mul272 = fmul double %251, %call271
  store double %mul272, double* %rdx, align 8
  %253 = load double, double* %r, align 8
  %254 = load double, double* %theta, align 8
  %call273 = call double @sin(double %254) #5
  %mul274 = fmul double %253, %call273
  store double %mul274, double* %rdy, align 8
  %255 = load i32, i32* %do_gradmap, align 4
  %tobool275 = icmp ne i32 %255, 0
  br i1 %tobool275, label %if.then.276, label %if.end.357

if.then.276:                                      ; preds = %for.end
  %256 = load i32, i32* %col, align 4
  %257 = load i32, i32* %gbytes, align 4
  %mul277 = mul nsw i32 %256, %257
  store i32 %mul277, i32* %offb, align 4
  store i32 0, i32* %bytes, align 4
  br label %for.cond.278

for.cond.278:                                     ; preds = %for.inc.350, %if.then.276
  %258 = load i32, i32* %bytes, align 4
  %259 = load i32, i32* %src_bytes, align 4
  %cmp279 = icmp slt i32 %258, %259
  br i1 %cmp279, label %for.body.281, label %for.end.352

for.body.281:                                     ; preds = %for.cond.278
  %260 = load i32, i32* %offb, align 4
  %261 = load i32, i32* %bytes, align 4
  %add282 = add nsw i32 %260, %261
  store i32 %add282, i32* %off, align 4
  %262 = load i32, i32* %off, align 4
  %263 = load i32, i32* %gbytes, align 4
  %sub283 = sub nsw i32 %262, %263
  %idxprom284 = sext i32 %sub283 to i64
  %264 = load i8*, i8** %prg, align 8
  %arrayidx285 = getelementptr inbounds i8, i8* %264, i64 %idxprom284
  %265 = load i8, i8* %arrayidx285, align 1
  %conv286 = zext i8 %265 to i32
  %sub287 = sub nsw i32 0, %conv286
  %266 = load i32, i32* %off, align 4
  %267 = load i32, i32* %gbytes, align 4
  %add288 = add nsw i32 %266, %267
  %idxprom289 = sext i32 %add288 to i64
  %268 = load i8*, i8** %prg, align 8
  %arrayidx290 = getelementptr inbounds i8, i8* %268, i64 %idxprom289
  %269 = load i8, i8* %arrayidx290, align 1
  %conv291 = zext i8 %269 to i32
  %add292 = add nsw i32 %sub287, %conv291
  %270 = load i32, i32* %off, align 4
  %271 = load i32, i32* %gbytes, align 4
  %sub293 = sub nsw i32 %270, %271
  %idxprom294 = sext i32 %sub293 to i64
  %272 = load i8*, i8** %crg, align 8
  %arrayidx295 = getelementptr inbounds i8, i8* %272, i64 %idxprom294
  %273 = load i8, i8* %arrayidx295, align 1
  %conv296 = zext i8 %273 to i32
  %mul297 = mul nsw i32 -2, %conv296
  %add298 = add nsw i32 %add292, %mul297
  %274 = load i32, i32* %off, align 4
  %275 = load i32, i32* %gbytes, align 4
  %add299 = add nsw i32 %274, %275
  %idxprom300 = sext i32 %add299 to i64
  %276 = load i8*, i8** %crg, align 8
  %arrayidx301 = getelementptr inbounds i8, i8* %276, i64 %idxprom300
  %277 = load i8, i8* %arrayidx301, align 1
  %conv302 = zext i8 %277 to i32
  %mul303 = mul nsw i32 2, %conv302
  %add304 = add nsw i32 %add298, %mul303
  %278 = load i32, i32* %off, align 4
  %279 = load i32, i32* %gbytes, align 4
  %sub305 = sub nsw i32 %278, %279
  %idxprom306 = sext i32 %sub305 to i64
  %280 = load i8*, i8** %nrg, align 8
  %arrayidx307 = getelementptr inbounds i8, i8* %280, i64 %idxprom306
  %281 = load i8, i8* %arrayidx307, align 1
  %conv308 = zext i8 %281 to i32
  %sub309 = sub nsw i32 0, %conv308
  %add310 = add nsw i32 %add304, %sub309
  %282 = load i32, i32* %off, align 4
  %283 = load i32, i32* %gbytes, align 4
  %add311 = add nsw i32 %282, %283
  %idxprom312 = sext i32 %add311 to i64
  %284 = load i8*, i8** %nrg, align 8
  %arrayidx313 = getelementptr inbounds i8, i8* %284, i64 %idxprom312
  %285 = load i8, i8* %arrayidx313, align 1
  %conv314 = zext i8 %285 to i32
  %add315 = add nsw i32 %add310, %conv314
  %conv316 = sitofp i32 %add315 to double
  %286 = load double, double* %tx, align 8
  %add317 = fadd double %286, %conv316
  store double %add317, double* %tx, align 8
  %287 = load i32, i32* %off, align 4
  %288 = load i32, i32* %gbytes, align 4
  %sub318 = sub nsw i32 %287, %288
  %idxprom319 = sext i32 %sub318 to i64
  %289 = load i8*, i8** %prg, align 8
  %arrayidx320 = getelementptr inbounds i8, i8* %289, i64 %idxprom319
  %290 = load i8, i8* %arrayidx320, align 1
  %conv321 = zext i8 %290 to i32
  %sub322 = sub nsw i32 0, %conv321
  %291 = load i32, i32* %off, align 4
  %idxprom323 = sext i32 %291 to i64
  %292 = load i8*, i8** %prg, align 8
  %arrayidx324 = getelementptr inbounds i8, i8* %292, i64 %idxprom323
  %293 = load i8, i8* %arrayidx324, align 1
  %conv325 = zext i8 %293 to i32
  %mul326 = mul nsw i32 2, %conv325
  %sub327 = sub nsw i32 %sub322, %mul326
  %294 = load i32, i32* %off, align 4
  %295 = load i32, i32* %gbytes, align 4
  %add328 = add nsw i32 %294, %295
  %idxprom329 = sext i32 %add328 to i64
  %296 = load i8*, i8** %prg, align 8
  %arrayidx330 = getelementptr inbounds i8, i8* %296, i64 %idxprom329
  %297 = load i8, i8* %arrayidx330, align 1
  %conv331 = zext i8 %297 to i32
  %sub332 = sub nsw i32 %sub327, %conv331
  %298 = load i32, i32* %off, align 4
  %299 = load i32, i32* %gbytes, align 4
  %sub333 = sub nsw i32 %298, %299
  %idxprom334 = sext i32 %sub333 to i64
  %300 = load i8*, i8** %nrg, align 8
  %arrayidx335 = getelementptr inbounds i8, i8* %300, i64 %idxprom334
  %301 = load i8, i8* %arrayidx335, align 1
  %conv336 = zext i8 %301 to i32
  %add337 = add nsw i32 %sub332, %conv336
  %302 = load i32, i32* %off, align 4
  %idxprom338 = sext i32 %302 to i64
  %303 = load i8*, i8** %nrg, align 8
  %arrayidx339 = getelementptr inbounds i8, i8* %303, i64 %idxprom338
  %304 = load i8, i8* %arrayidx339, align 1
  %conv340 = zext i8 %304 to i32
  %mul341 = mul nsw i32 2, %conv340
  %add342 = add nsw i32 %add337, %mul341
  %305 = load i32, i32* %off, align 4
  %306 = load i32, i32* %gbytes, align 4
  %add343 = add nsw i32 %305, %306
  %idxprom344 = sext i32 %add343 to i64
  %307 = load i8*, i8** %nrg, align 8
  %arrayidx345 = getelementptr inbounds i8, i8* %307, i64 %idxprom344
  %308 = load i8, i8* %arrayidx345, align 1
  %conv346 = zext i8 %308 to i32
  %add347 = add nsw i32 %add342, %conv346
  %conv348 = sitofp i32 %add347 to double
  %309 = load double, double* %ty, align 8
  %add349 = fadd double %309, %conv348
  store double %add349, double* %ty, align 8
  br label %for.inc.350

for.inc.350:                                      ; preds = %for.body.281
  %310 = load i32, i32* %bytes, align 4
  %inc351 = add nsw i32 %310, 1
  store i32 %inc351, i32* %bytes, align 4
  br label %for.cond.278

for.end.352:                                      ; preds = %for.cond.278
  %311 = load double, double* %gscalefac, align 8
  %312 = load double, double* %tx, align 8
  %mul353 = fmul double %312, %311
  store double %mul353, double* %tx, align 8
  %313 = load double, double* %gscalefac, align 8
  %314 = load double, double* %ty, align 8
  %mul354 = fmul double %314, %313
  store double %mul354, double* %ty, align 8
  %315 = load double, double* %tx, align 8
  %316 = load double, double* %rdx, align 8
  %add355 = fadd double %316, %315
  store double %add355, double* %rdx, align 8
  %317 = load double, double* %ty, align 8
  %318 = load double, double* %rdy, align 8
  %add356 = fadd double %318, %317
  store double %add356, double* %rdy, align 8
  br label %if.end.357

if.end.357:                                       ; preds = %for.end.352, %for.end
  %319 = load i32, i32* %do_vecmap, align 4
  %tobool358 = icmp ne i32 %319, 0
  br i1 %tobool358, label %if.then.359, label %if.end.368

if.then.359:                                      ; preds = %if.end.357
  %320 = load i32, i32* %col, align 4
  %321 = load i32, i32* %vbytes, align 4
  %mul360 = mul nsw i32 %320, %321
  %idxprom361 = sext i32 %mul360 to i64
  %322 = load i8*, i8** %crv, align 8
  %arrayidx362 = getelementptr inbounds i8, i8* %322, i64 %idxprom361
  %323 = load i8, i8* %arrayidx362, align 1
  %conv363 = uitofp i8 %323 to double
  store double %conv363, double* %tx, align 8
  %324 = load double, double* %scale_vec_x, align 8
  %325 = load double, double* %tx, align 8
  %mul364 = fmul double %324, %325
  %326 = load double, double* %rdx, align 8
  %add365 = fadd double %326, %mul364
  store double %add365, double* %rdx, align 8
  %327 = load double, double* %scale_vec_y, align 8
  %328 = load double, double* %tx, align 8
  %mul366 = fmul double %327, %328
  %329 = load double, double* %rdy, align 8
  %add367 = fadd double %329, %mul366
  store double %add367, double* %rdy, align 8
  br label %if.end.368

if.end.368:                                       ; preds = %if.then.359, %if.end.357
  %330 = load i32, i32* %do_magmap, align 4
  %tobool369 = icmp ne i32 %330, 0
  br i1 %tobool369, label %if.then.370, label %if.end.379

if.then.370:                                      ; preds = %if.end.368
  %331 = load i32, i32* %col, align 4
  %332 = load i32, i32* %mbytes, align 4
  %mul371 = mul nsw i32 %331, %332
  %idxprom372 = sext i32 %mul371 to i64
  %333 = load i8*, i8** %crm, align 8
  %arrayidx373 = getelementptr inbounds i8, i8* %333, i64 %idxprom372
  %334 = load i8, i8* %arrayidx373, align 1
  %conv374 = uitofp i8 %334 to double
  store double %conv374, double* %tx, align 8
  %335 = load double, double* %rdx, align 8
  %336 = load double, double* %tx, align 8
  %mul375 = fmul double %335, %336
  %div376 = fdiv double %mul375, 2.550000e+02
  store double %div376, double* %rdx, align 8
  %337 = load double, double* %rdy, align 8
  %338 = load double, double* %tx, align 8
  %mul377 = fmul double %337, %338
  %div378 = fdiv double %mul377, 2.550000e+02
  store double %div378, double* %rdy, align 8
  br label %if.end.379

if.end.379:                                       ; preds = %if.then.370, %if.end.368
  %339 = load double, double* %rdx, align 8
  %add380 = fadd double %339, 3.276800e+04
  %conv381 = fptosi double %add380 to i32
  store i32 %conv381, i32* %dvalx, align 4
  %340 = load double, double* %rdy, align 8
  %add382 = fadd double %340, 3.276800e+04
  %conv383 = fptosi double %add382 to i32
  store i32 %conv383, i32* %dvaly, align 4
  %341 = load i32, i32* %dvalx, align 4
  %cmp384 = icmp slt i32 %341, 0
  br i1 %cmp384, label %if.then.386, label %if.end.387

if.then.386:                                      ; preds = %if.end.379
  store i32 0, i32* %dvalx, align 4
  br label %if.end.387

if.end.387:                                       ; preds = %if.then.386, %if.end.379
  %342 = load i32, i32* %dvalx, align 4
  %cmp388 = icmp sgt i32 %342, 65535
  br i1 %cmp388, label %if.then.390, label %if.end.391

if.then.390:                                      ; preds = %if.end.387
  store i32 65535, i32* %dvalx, align 4
  br label %if.end.391

if.end.391:                                       ; preds = %if.then.390, %if.end.387
  %343 = load i32, i32* %dvalx, align 4
  %shr = ashr i32 %343, 8
  %conv392 = trunc i32 %shr to i8
  %344 = load i8*, i8** %dx, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %344, i32 1
  store i8* %incdec.ptr, i8** %dx, align 8
  store i8 %conv392, i8* %344, align 1
  %345 = load i32, i32* %dvalx, align 4
  %rem = srem i32 %345, 256
  %conv393 = trunc i32 %rem to i8
  %346 = load i8*, i8** %dx, align 8
  %incdec.ptr394 = getelementptr inbounds i8, i8* %346, i32 1
  store i8* %incdec.ptr394, i8** %dx, align 8
  store i8 %conv393, i8* %346, align 1
  %347 = load i32, i32* %dest_bytes_inc, align 4
  %348 = load i8*, i8** %dx, align 8
  %idx.ext395 = sext i32 %347 to i64
  %add.ptr396 = getelementptr inbounds i8, i8* %348, i64 %idx.ext395
  store i8* %add.ptr396, i8** %dx, align 8
  %349 = load i32, i32* %dvaly, align 4
  %cmp397 = icmp slt i32 %349, 0
  br i1 %cmp397, label %if.then.399, label %if.end.400

if.then.399:                                      ; preds = %if.end.391
  store i32 0, i32* %dvaly, align 4
  br label %if.end.400

if.end.400:                                       ; preds = %if.then.399, %if.end.391
  %350 = load i32, i32* %dvaly, align 4
  %cmp401 = icmp sgt i32 %350, 65535
  br i1 %cmp401, label %if.then.403, label %if.end.404

if.then.403:                                      ; preds = %if.end.400
  store i32 65535, i32* %dvaly, align 4
  br label %if.end.404

if.end.404:                                       ; preds = %if.then.403, %if.end.400
  %351 = load i32, i32* %dvaly, align 4
  %shr405 = ashr i32 %351, 8
  %conv406 = trunc i32 %shr405 to i8
  %352 = load i8*, i8** %dy, align 8
  %incdec.ptr407 = getelementptr inbounds i8, i8* %352, i32 1
  store i8* %incdec.ptr407, i8** %dy, align 8
  store i8 %conv406, i8* %352, align 1
  %353 = load i32, i32* %dvaly, align 4
  %rem408 = srem i32 %353, 256
  %conv409 = trunc i32 %rem408 to i8
  %354 = load i8*, i8** %dy, align 8
  %incdec.ptr410 = getelementptr inbounds i8, i8* %354, i32 1
  store i8* %incdec.ptr410, i8** %dy, align 8
  store i8 %conv409, i8* %354, align 1
  %355 = load i32, i32* %dest_bytes_inc, align 4
  %356 = load i8*, i8** %dy, align 8
  %idx.ext411 = sext i32 %355 to i64
  %add.ptr412 = getelementptr inbounds i8, i8* %356, i64 %idx.ext411
  store i8* %add.ptr412, i8** %dy, align 8
  br label %for.inc.413

for.inc.413:                                      ; preds = %if.end.404
  %357 = load i32, i32* %col, align 4
  %inc414 = add nsw i32 %357, 1
  store i32 %inc414, i32* %col, align 4
  br label %for.cond.187

for.end.415:                                      ; preds = %for.cond.187
  %358 = load i8*, i8** %destx, align 8
  %359 = load i32, i32* %x1, align 4
  %360 = load i32, i32* %row, align 4
  %361 = load i32, i32* %x2, align 4
  %362 = load i32, i32* %x1, align 4
  %sub416 = sub nsw i32 %361, %362
  call void @gimp_pixel_rgn_set_row(%struct._GimpPixelRgn* %destxPR, i8* %358, i32 %359, i32 %360, i32 %sub416)
  %363 = load i8*, i8** %desty, align 8
  %364 = load i32, i32* %x1, align 4
  %365 = load i32, i32* %row, align 4
  %366 = load i32, i32* %x2, align 4
  %367 = load i32, i32* %x1, align 4
  %sub417 = sub nsw i32 %366, %367
  call void @gimp_pixel_rgn_set_row(%struct._GimpPixelRgn* %destyPR, i8* %363, i32 %364, i32 %365, i32 %sub417)
  %368 = load i8*, i8** %pr, align 8
  store i8* %368, i8** %tmp, align 8
  %369 = load i8*, i8** %cr, align 8
  store i8* %369, i8** %pr, align 8
  %370 = load i8*, i8** %nr, align 8
  store i8* %370, i8** %cr, align 8
  %371 = load i8*, i8** %tmp, align 8
  store i8* %371, i8** %nr, align 8
  %372 = load i32, i32* %do_gradmap, align 4
  %tobool418 = icmp ne i32 %372, 0
  br i1 %tobool418, label %if.then.419, label %if.end.420

if.then.419:                                      ; preds = %for.end.415
  %373 = load i8*, i8** %prg, align 8
  store i8* %373, i8** %tmp, align 8
  %374 = load i8*, i8** %crg, align 8
  store i8* %374, i8** %prg, align 8
  %375 = load i8*, i8** %nrg, align 8
  store i8* %375, i8** %crg, align 8
  %376 = load i8*, i8** %tmp, align 8
  store i8* %376, i8** %nrg, align 8
  br label %if.end.420

if.end.420:                                       ; preds = %if.then.419, %for.end.415
  %377 = load i32, i32* %row, align 4
  %rem421 = srem i32 %377, 8
  %cmp422 = icmp eq i32 %rem421, 0
  br i1 %cmp422, label %if.then.424, label %if.end.430

if.then.424:                                      ; preds = %if.end.420
  %378 = load i32, i32* %row, align 4
  %conv425 = sitofp i32 %378 to double
  %379 = load i32, i32* %y2, align 4
  %380 = load i32, i32* %y1, align 4
  %sub426 = sub nsw i32 %379, %380
  %conv427 = sitofp i32 %sub426 to double
  %div428 = fdiv double %conv425, %conv427
  %call429 = call i32 @gimp_progress_update(double %div428)
  br label %if.end.430

if.end.430:                                       ; preds = %if.then.424, %if.end.420
  br label %for.inc.431

for.inc.431:                                      ; preds = %if.end.430
  %381 = load i32, i32* %row, align 4
  %inc432 = add nsw i32 %381, 1
  store i32 %inc432, i32* %row, align 4
  br label %for.cond

for.end.433:                                      ; preds = %for.cond
  %call434 = call i32 @gimp_progress_update(double 1.000000e+00)
  %382 = load %struct._GimpDrawable*, %struct._GimpDrawable** %draw_xd, align 8
  call void @gimp_drawable_flush(%struct._GimpDrawable* %382)
  %383 = load %struct._GimpDrawable*, %struct._GimpDrawable** %draw_yd, align 8
  call void @gimp_drawable_flush(%struct._GimpDrawable* %383)
  %384 = load %struct._GimpDrawable*, %struct._GimpDrawable** %draw_xd, align 8
  %drawable_id435 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %384, i32 0, i32 0
  %385 = load i32, i32* %drawable_id435, align 4
  %386 = load i32, i32* %x1, align 4
  %387 = load i32, i32* %y1, align 4
  %388 = load i32, i32* %x2, align 4
  %389 = load i32, i32* %x1, align 4
  %sub436 = sub nsw i32 %388, %389
  %390 = load i32, i32* %y2, align 4
  %391 = load i32, i32* %y1, align 4
  %sub437 = sub nsw i32 %390, %391
  %call438 = call i32 @gimp_drawable_update(i32 %385, i32 %386, i32 %387, i32 %sub436, i32 %sub437)
  %392 = load %struct._GimpDrawable*, %struct._GimpDrawable** %draw_yd, align 8
  %drawable_id439 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %392, i32 0, i32 0
  %393 = load i32, i32* %drawable_id439, align 4
  %394 = load i32, i32* %x1, align 4
  %395 = load i32, i32* %y1, align 4
  %396 = load i32, i32* %x2, align 4
  %397 = load i32, i32* %x1, align 4
  %sub440 = sub nsw i32 %396, %397
  %398 = load i32, i32* %y2, align 4
  %399 = load i32, i32* %y1, align 4
  %sub441 = sub nsw i32 %398, %399
  %call442 = call i32 @gimp_drawable_update(i32 %393, i32 %394, i32 %395, i32 %sub440, i32 %sub441)
  %call443 = call i32 @gimp_displays_flush()
  %call444 = call i8* @gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.77, i32 0, i32 0)) #5
  %call445 = call i32 @gimp_progress_init(i8* %call444)
  %400 = load %struct._GimpDrawable*, %struct._GimpDrawable** %draw_xd, align 8
  call void @blur16(%struct._GimpDrawable* %400)
  %call446 = call i8* @gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.78, i32 0, i32 0)) #5
  %call447 = call i32 @gimp_progress_init(i8* %call446)
  %401 = load %struct._GimpDrawable*, %struct._GimpDrawable** %draw_yd, align 8
  call void @blur16(%struct._GimpDrawable* %401)
  %402 = load i8*, i8** %prev_row, align 8
  call void @g_free(i8* %402)
  %403 = load i8*, i8** %cur_row, align 8
  call void @g_free(i8* %403)
  %404 = load i8*, i8** %next_row, align 8
  call void @g_free(i8* %404)
  %405 = load i8*, i8** %prev_row_g, align 8
  call void @g_free(i8* %405)
  %406 = load i8*, i8** %cur_row_g, align 8
  call void @g_free(i8* %406)
  %407 = load i8*, i8** %next_row_g, align 8
  call void @g_free(i8* %407)
  %408 = load i8*, i8** %cur_row_v, align 8
  call void @g_free(i8* %408)
  %409 = load i8*, i8** %cur_row_m, align 8
  call void @g_free(i8* %409)
  %410 = load i8*, i8** %destx, align 8
  call void @g_free(i8* %410)
  %411 = load i8*, i8** %desty, align 8
  call void @g_free(i8* %411)
  %412 = load i32, i32* %xlayer_id, align 4
  %413 = load i32*, i32** %xl_id.addr, align 8
  store i32 %412, i32* %413, align 4
  %414 = load i32, i32* %ylayer_id, align 4
  %415 = load i32*, i32** %yl_id.addr, align 8
  store i32 %414, i32* %415, align 4
  br label %return

return:                                           ; preds = %for.end.433, %if.then.43
  ret void
}

declare i32 @gimp_progress_init_printf(i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal void @warp_one(%struct._GimpDrawable* %draw, %struct._GimpDrawable* %new, %struct._GimpDrawable* %map_x, %struct._GimpDrawable* %map_y, %struct._GimpDrawable* %mag_draw, i32 %first_time, i32 %step) #0 {
entry:
  %draw.addr = alloca %struct._GimpDrawable*, align 8
  %new.addr = alloca %struct._GimpDrawable*, align 8
  %map_x.addr = alloca %struct._GimpDrawable*, align 8
  %map_y.addr = alloca %struct._GimpDrawable*, align 8
  %mag_draw.addr = alloca %struct._GimpDrawable*, align 8
  %first_time.addr = alloca i32, align 4
  %step.addr = alloca i32, align 4
  %src_rgn = alloca %struct._GimpPixelRgn, align 8
  %dest_rgn = alloca %struct._GimpPixelRgn, align 8
  %map_x_rgn = alloca %struct._GimpPixelRgn, align 8
  %map_y_rgn = alloca %struct._GimpPixelRgn, align 8
  %mag_rgn = alloca %struct._GimpPixelRgn, align 8
  %tile = alloca %struct._GimpTile*, align 8
  %xtile = alloca %struct._GimpTile*, align 8
  %ytile = alloca %struct._GimpTile*, align 8
  %row = alloca i32, align 4
  %xrow = alloca i32, align 4
  %yrow = alloca i32, align 4
  %col = alloca i32, align 4
  %xcol = alloca i32, align 4
  %ycol = alloca i32, align 4
  %pr = alloca i8*, align 8
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %dest_bytes = alloca i32, align 4
  %destrow = alloca i8*, align 8
  %dest = alloca i8*, align 8
  %srcrow = alloca i8*, align 8
  %mxrow = alloca i8*, align 8
  %mx = alloca i8*, align 8
  %myrow = alloca i8*, align 8
  %my = alloca i8*, align 8
  %mmagrow = alloca i8*, align 8
  %mmag = alloca i8*, align 8
  %pixel = alloca [4 x [4 x i8]], align 16
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %max_progress = alloca i32, align 4
  %needx = alloca double, align 8
  %needy = alloca double, align 8
  %xval = alloca double, align 8
  %yval = alloca double, align 8
  %scalefac = alloca double, align 8
  %dscalefac = alloca double, align 8
  %xi = alloca i32, align 4
  %yi = alloca i32, align 4
  %substep = alloca i32, align 4
  %values = alloca [4 x i8], align 1
  %ivalues = alloca [4 x i32], align 16
  %val = alloca i8, align 1
  %k = alloca i32, align 4
  %dx = alloca double, align 8
  %dy = alloca double, align 8
  %mmag_alpha = alloca i32, align 4
  %xm_bytes = alloca i32, align 4
  %ym_bytes = alloca i32, align 4
  %mmag_bytes = alloca i32, align 4
  %gr = alloca %struct._GRand*, align 8
  store %struct._GimpDrawable* %draw, %struct._GimpDrawable** %draw.addr, align 8
  store %struct._GimpDrawable* %new, %struct._GimpDrawable** %new.addr, align 8
  store %struct._GimpDrawable* %map_x, %struct._GimpDrawable** %map_x.addr, align 8
  store %struct._GimpDrawable* %map_y, %struct._GimpDrawable** %map_y.addr, align 8
  store %struct._GimpDrawable* %mag_draw, %struct._GimpDrawable** %mag_draw.addr, align 8
  store i32 %first_time, i32* %first_time.addr, align 4
  store i32 %step, i32* %step.addr, align 4
  store %struct._GimpTile* null, %struct._GimpTile** %tile, align 8
  store %struct._GimpTile* null, %struct._GimpTile** %xtile, align 8
  store %struct._GimpTile* null, %struct._GimpTile** %ytile, align 8
  store i32 -1, i32* %row, align 4
  store i32 -1, i32* %xrow, align 4
  store i32 -1, i32* %yrow, align 4
  store i32 -1, i32* %col, align 4
  store i32 -1, i32* %xcol, align 4
  store i32 -1, i32* %ycol, align 4
  store i32 -1, i32* %width, align 4
  store i32 -1, i32* %height, align 4
  store i32 -1, i32* %dest_bytes, align 4
  store i8* null, i8** %mxrow, align 8
  store i8* null, i8** %myrow, align 8
  store i8* null, i8** %mmagrow, align 8
  store i8* null, i8** %mmag, align 8
  store double 0.000000e+00, double* %xval, align 8
  store double 0.000000e+00, double* %yval, align 8
  store i32 0, i32* %mmag_alpha, align 4
  store i32 1, i32* %xm_bytes, align 4
  store i32 1, i32* %ym_bytes, align 4
  store i32 1, i32* %mmag_bytes, align 4
  %call = call %struct._GRand* @g_rand_new()
  store %struct._GRand* %call, %struct._GRand** %gr, align 8
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %draw.addr, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %0, i32 0, i32 0
  %1 = load i32, i32* %drawable_id, align 4
  %call1 = call i32 @gimp_drawable_mask_intersect(i32 %1, i32* %x1, i32* %y1, i32* %width, i32* %height)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %x1, align 4
  %3 = load i32, i32* %width, align 4
  %add = add nsw i32 %2, %3
  store i32 %add, i32* %x2, align 4
  %4 = load i32, i32* %y1, align 4
  %5 = load i32, i32* %height, align 4
  %add2 = add nsw i32 %4, %5
  store i32 %add2, i32* %y2, align 4
  %6 = load %struct._GimpDrawable*, %struct._GimpDrawable** %draw.addr, align 8
  %width3 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %6, i32 0, i32 1
  %7 = load i32, i32* %width3, align 4
  store i32 %7, i32* %width, align 4
  %8 = load %struct._GimpDrawable*, %struct._GimpDrawable** %draw.addr, align 8
  %height4 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %8, i32 0, i32 2
  %9 = load i32, i32* %height4, align 4
  store i32 %9, i32* %height, align 4
  %10 = load %struct._GimpDrawable*, %struct._GimpDrawable** %draw.addr, align 8
  %bpp = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %10, i32 0, i32 3
  %11 = load i32, i32* %bpp, align 4
  store i32 %11, i32* %dest_bytes, align 4
  %12 = load i32, i32* %x2, align 4
  %13 = load i32, i32* %x1, align 4
  %sub = sub nsw i32 %12, %13
  %14 = load i32, i32* %y2, align 4
  %15 = load i32, i32* %y1, align 4
  %sub5 = sub nsw i32 %14, %15
  %mul = mul nsw i32 %sub, %sub5
  store i32 %mul, i32* %max_progress, align 4
  %16 = load %struct._GimpDrawable*, %struct._GimpDrawable** %draw.addr, align 8
  %17 = load i32, i32* %x1, align 4
  %18 = load i32, i32* %y1, align 4
  %19 = load i32, i32* %x2, align 4
  %20 = load i32, i32* %x1, align 4
  %sub6 = sub nsw i32 %19, %20
  %21 = load i32, i32* %y2, align 4
  %22 = load i32, i32* %y1, align 4
  %sub7 = sub nsw i32 %21, %22
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %src_rgn, %struct._GimpDrawable* %16, i32 %17, i32 %18, i32 %sub6, i32 %sub7, i32 0, i32 0)
  %23 = load i32, i32* %first_time.addr, align 4
  %tobool8 = icmp ne i32 %23, 0
  br i1 %tobool8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.end
  %24 = load %struct._GimpDrawable*, %struct._GimpDrawable** %new.addr, align 8
  %25 = load i32, i32* %x1, align 4
  %26 = load i32, i32* %y1, align 4
  %27 = load i32, i32* %x2, align 4
  %28 = load i32, i32* %x1, align 4
  %sub10 = sub nsw i32 %27, %28
  %29 = load i32, i32* %y2, align 4
  %30 = load i32, i32* %y1, align 4
  %sub11 = sub nsw i32 %29, %30
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %dest_rgn, %struct._GimpDrawable* %24, i32 %25, i32 %26, i32 %sub10, i32 %sub11, i32 1, i32 1)
  br label %if.end.14

if.else:                                          ; preds = %if.end
  %31 = load %struct._GimpDrawable*, %struct._GimpDrawable** %new.addr, align 8
  %32 = load i32, i32* %x1, align 4
  %33 = load i32, i32* %y1, align 4
  %34 = load i32, i32* %x2, align 4
  %35 = load i32, i32* %x1, align 4
  %sub12 = sub nsw i32 %34, %35
  %36 = load i32, i32* %y2, align 4
  %37 = load i32, i32* %y1, align 4
  %sub13 = sub nsw i32 %36, %37
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %dest_rgn, %struct._GimpDrawable* %31, i32 %32, i32 %33, i32 %sub12, i32 %sub13, i32 1, i32 1)
  br label %if.end.14

if.end.14:                                        ; preds = %if.else, %if.then.9
  %38 = load %struct._GimpDrawable*, %struct._GimpDrawable** %map_x.addr, align 8
  %39 = load i32, i32* %x1, align 4
  %40 = load i32, i32* %y1, align 4
  %41 = load i32, i32* %x2, align 4
  %42 = load i32, i32* %x1, align 4
  %sub15 = sub nsw i32 %41, %42
  %43 = load i32, i32* %y2, align 4
  %44 = load i32, i32* %y1, align 4
  %sub16 = sub nsw i32 %43, %44
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %map_x_rgn, %struct._GimpDrawable* %38, i32 %39, i32 %40, i32 %sub15, i32 %sub16, i32 0, i32 0)
  %45 = load %struct._GimpDrawable*, %struct._GimpDrawable** %map_x.addr, align 8
  %drawable_id17 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %45, i32 0, i32 0
  %46 = load i32, i32* %drawable_id17, align 4
  %call18 = call i32 @gimp_drawable_bpp(i32 %46)
  store i32 %call18, i32* %xm_bytes, align 4
  %47 = load %struct._GimpDrawable*, %struct._GimpDrawable** %map_y.addr, align 8
  %48 = load i32, i32* %x1, align 4
  %49 = load i32, i32* %y1, align 4
  %50 = load i32, i32* %x2, align 4
  %51 = load i32, i32* %x1, align 4
  %sub19 = sub nsw i32 %50, %51
  %52 = load i32, i32* %y2, align 4
  %53 = load i32, i32* %y1, align 4
  %sub20 = sub nsw i32 %52, %53
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %map_y_rgn, %struct._GimpDrawable* %47, i32 %48, i32 %49, i32 %sub19, i32 %sub20, i32 0, i32 0)
  %54 = load %struct._GimpDrawable*, %struct._GimpDrawable** %map_y.addr, align 8
  %drawable_id21 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %54, i32 0, i32 0
  %55 = load i32, i32* %drawable_id21, align 4
  %call22 = call i32 @gimp_drawable_bpp(i32 %55)
  store i32 %call22, i32* %ym_bytes, align 4
  %56 = load i32, i32* getelementptr inbounds (%struct.WarpVals, %struct.WarpVals* @dvals, i32 0, i32 7), align 4
  %tobool23 = icmp ne i32 %56, 0
  br i1 %tobool23, label %if.then.24, label %if.else.35

if.then.24:                                       ; preds = %if.end.14
  %57 = load %struct._GimpDrawable*, %struct._GimpDrawable** %mag_draw.addr, align 8
  %58 = load i32, i32* %x1, align 4
  %59 = load i32, i32* %y1, align 4
  %60 = load i32, i32* %x2, align 4
  %61 = load i32, i32* %x1, align 4
  %sub25 = sub nsw i32 %60, %61
  %62 = load i32, i32* %y2, align 4
  %63 = load i32, i32* %y1, align 4
  %sub26 = sub nsw i32 %62, %63
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %mag_rgn, %struct._GimpDrawable* %57, i32 %58, i32 %59, i32 %sub25, i32 %sub26, i32 0, i32 0)
  %64 = load %struct._GimpDrawable*, %struct._GimpDrawable** %mag_draw.addr, align 8
  %drawable_id27 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %64, i32 0, i32 0
  %65 = load i32, i32* %drawable_id27, align 4
  %call28 = call i32 @gimp_drawable_has_alpha(i32 %65)
  %tobool29 = icmp ne i32 %call28, 0
  br i1 %tobool29, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %if.then.24
  store i32 1, i32* %mmag_alpha, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.30, %if.then.24
  %66 = load %struct._GimpDrawable*, %struct._GimpDrawable** %mag_draw.addr, align 8
  %drawable_id32 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %66, i32 0, i32 0
  %67 = load i32, i32* %drawable_id32, align 4
  %call33 = call i32 @gimp_drawable_bpp(i32 %67)
  store i32 %call33, i32* %mmag_bytes, align 4
  %call34 = call i8* (i32, ...) @gimp_pixel_rgns_register(i32 5, %struct._GimpPixelRgn* %src_rgn, %struct._GimpPixelRgn* %dest_rgn, %struct._GimpPixelRgn* %map_x_rgn, %struct._GimpPixelRgn* %map_y_rgn, %struct._GimpPixelRgn* %mag_rgn)
  store i8* %call34, i8** %pr, align 8
  br label %if.end.37

if.else.35:                                       ; preds = %if.end.14
  %call36 = call i8* (i32, ...) @gimp_pixel_rgns_register(i32 4, %struct._GimpPixelRgn* %src_rgn, %struct._GimpPixelRgn* %dest_rgn, %struct._GimpPixelRgn* %map_x_rgn, %struct._GimpPixelRgn* %map_y_rgn)
  store i8* %call36, i8** %pr, align 8
  br label %if.end.37

if.end.37:                                        ; preds = %if.else.35, %if.end.31
  %68 = load double, double* getelementptr inbounds (%struct.WarpVals, %struct.WarpVals* @dvals, i32 0, i32 0), align 8
  %69 = load i32, i32* getelementptr inbounds (%struct.WarpVals, %struct.WarpVals* @dvals, i32 0, i32 8), align 4
  %conv = sitofp i32 %69 to double
  %mul38 = fmul double 3.264000e+04, %conv
  %div = fdiv double %68, %mul38
  store double %div, double* %dscalefac, align 8
  %70 = load i8*, i8** %pr, align 8
  store i8* %70, i8** %pr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.352, %if.end.37
  %71 = load i8*, i8** %pr, align 8
  %cmp = icmp ne i8* %71, null
  br i1 %cmp, label %for.body, label %for.end.354

for.body:                                         ; preds = %for.cond
  %data = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 0
  %72 = load i8*, i8** %data, align 8
  store i8* %72, i8** %srcrow, align 8
  %data40 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 0
  %73 = load i8*, i8** %data40, align 8
  store i8* %73, i8** %destrow, align 8
  %data41 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %map_x_rgn, i32 0, i32 0
  %74 = load i8*, i8** %data41, align 8
  store i8* %74, i8** %mxrow, align 8
  %data42 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %map_y_rgn, i32 0, i32 0
  %75 = load i8*, i8** %data42, align 8
  store i8* %75, i8** %myrow, align 8
  %76 = load i32, i32* getelementptr inbounds (%struct.WarpVals, %struct.WarpVals* @dvals, i32 0, i32 7), align 4
  %tobool43 = icmp ne i32 %76, 0
  br i1 %tobool43, label %if.then.44, label %if.end.46

if.then.44:                                       ; preds = %for.body
  %data45 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %mag_rgn, i32 0, i32 0
  %77 = load i8*, i8** %data45, align 8
  store i8* %77, i8** %mmagrow, align 8
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.44, %for.body
  %y47 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 5
  %78 = load i32, i32* %y47, align 4
  store i32 %78, i32* %y, align 4
  br label %for.cond.48

for.cond.48:                                      ; preds = %for.inc.341, %if.end.46
  %79 = load i32, i32* %y, align 4
  %y49 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 5
  %80 = load i32, i32* %y49, align 4
  %h = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 7
  %81 = load i32, i32* %h, align 4
  %add50 = add nsw i32 %80, %81
  %cmp51 = icmp slt i32 %79, %add50
  br i1 %cmp51, label %for.body.53, label %for.end.343

for.body.53:                                      ; preds = %for.cond.48
  %82 = load i8*, i8** %destrow, align 8
  store i8* %82, i8** %dest, align 8
  %83 = load i8*, i8** %mxrow, align 8
  store i8* %83, i8** %mx, align 8
  %84 = load i8*, i8** %myrow, align 8
  store i8* %84, i8** %my, align 8
  %85 = load i32, i32* getelementptr inbounds (%struct.WarpVals, %struct.WarpVals* @dvals, i32 0, i32 7), align 4
  %cmp54 = icmp eq i32 %85, 1
  br i1 %cmp54, label %if.then.56, label %if.end.57

if.then.56:                                       ; preds = %for.body.53
  %86 = load i8*, i8** %mmagrow, align 8
  store i8* %86, i8** %mmag, align 8
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.56, %for.body.53
  %x58 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 4
  %87 = load i32, i32* %x58, align 4
  store i32 %87, i32* %x, align 4
  br label %for.cond.59

for.cond.59:                                      ; preds = %for.inc.320, %if.end.57
  %88 = load i32, i32* %x, align 4
  %x60 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 4
  %89 = load i32, i32* %x60, align 4
  %w = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 6
  %90 = load i32, i32* %w, align 4
  %add61 = add nsw i32 %89, %90
  %cmp62 = icmp slt i32 %88, %add61
  br i1 %cmp62, label %for.body.64, label %for.end.322

for.body.64:                                      ; preds = %for.cond.59
  %91 = load double, double* %dscalefac, align 8
  %92 = load i8*, i8** %mx, align 8
  %arrayidx = getelementptr inbounds i8, i8* %92, i64 0
  %93 = load i8, i8* %arrayidx, align 1
  %conv65 = zext i8 %93 to i32
  %conv66 = sitofp i32 %conv65 to double
  %mul67 = fmul double 2.560000e+02, %conv66
  %94 = load i8*, i8** %mx, align 8
  %arrayidx68 = getelementptr inbounds i8, i8* %94, i64 1
  %95 = load i8, i8* %arrayidx68, align 1
  %conv69 = zext i8 %95 to i32
  %conv70 = sitofp i32 %conv69 to double
  %add71 = fadd double %mul67, %conv70
  %sub72 = fsub double %add71, 3.276800e+04
  %mul73 = fmul double %91, %sub72
  store double %mul73, double* %dx, align 8
  %96 = load double, double* %dscalefac, align 8
  %97 = load i8*, i8** %my, align 8
  %arrayidx74 = getelementptr inbounds i8, i8* %97, i64 0
  %98 = load i8, i8* %arrayidx74, align 1
  %conv75 = zext i8 %98 to i32
  %conv76 = sitofp i32 %conv75 to double
  %mul77 = fmul double 2.560000e+02, %conv76
  %99 = load i8*, i8** %my, align 8
  %arrayidx78 = getelementptr inbounds i8, i8* %99, i64 1
  %100 = load i8, i8* %arrayidx78, align 1
  %conv79 = zext i8 %100 to i32
  %conv80 = sitofp i32 %conv79 to double
  %add81 = fadd double %mul77, %conv80
  %sub82 = fsub double %add81, 3.276800e+04
  %mul83 = fmul double %96, %sub82
  store double %mul83, double* %dy, align 8
  %101 = load i32, i32* getelementptr inbounds (%struct.WarpVals, %struct.WarpVals* @dvals, i32 0, i32 7), align 4
  %tobool84 = icmp ne i32 %101, 0
  br i1 %tobool84, label %if.then.85, label %if.end.90

if.then.85:                                       ; preds = %for.body.64
  %102 = load i8*, i8** %mmag, align 8
  %103 = load i32, i32* %mmag_alpha, align 4
  %104 = load i32, i32* %mmag_bytes, align 4
  %call86 = call double @warp_map_mag_give_value(i8* %102, i32 %103, i32 %104)
  %div87 = fdiv double %call86, 2.550000e+02
  store double %div87, double* %scalefac, align 8
  %105 = load double, double* %scalefac, align 8
  %106 = load double, double* %dx, align 8
  %mul88 = fmul double %106, %105
  store double %mul88, double* %dx, align 8
  %107 = load double, double* %scalefac, align 8
  %108 = load double, double* %dy, align 8
  %mul89 = fmul double %108, %107
  store double %mul89, double* %dy, align 8
  br label %if.end.90

if.end.90:                                        ; preds = %if.then.85, %for.body.64
  %109 = load double, double* getelementptr inbounds (%struct.WarpVals, %struct.WarpVals* @dvals, i32 0, i32 3), align 8
  %cmp91 = fcmp une double %109, 0.000000e+00
  br i1 %cmp91, label %if.then.93, label %if.end.100

if.then.93:                                       ; preds = %if.end.90
  %110 = load %struct._GRand*, %struct._GRand** %gr, align 8
  %111 = load double, double* getelementptr inbounds (%struct.WarpVals, %struct.WarpVals* @dvals, i32 0, i32 3), align 8
  %sub94 = fsub double -0.000000e+00, %111
  %112 = load double, double* getelementptr inbounds (%struct.WarpVals, %struct.WarpVals* @dvals, i32 0, i32 3), align 8
  %call95 = call double @g_rand_double_range(%struct._GRand* %110, double %sub94, double %112)
  %113 = load double, double* %dx, align 8
  %add96 = fadd double %113, %call95
  store double %add96, double* %dx, align 8
  %114 = load %struct._GRand*, %struct._GRand** %gr, align 8
  %115 = load double, double* getelementptr inbounds (%struct.WarpVals, %struct.WarpVals* @dvals, i32 0, i32 3), align 8
  %sub97 = fsub double -0.000000e+00, %115
  %116 = load double, double* getelementptr inbounds (%struct.WarpVals, %struct.WarpVals* @dvals, i32 0, i32 3), align 8
  %call98 = call double @g_rand_double_range(%struct._GRand* %114, double %sub97, double %116)
  %117 = load double, double* %dy, align 8
  %add99 = fadd double %117, %call98
  store double %add99, double* %dy, align 8
  br label %if.end.100

if.end.100:                                       ; preds = %if.then.93, %if.end.90
  %118 = load i32, i32* getelementptr inbounds (%struct.WarpVals, %struct.WarpVals* @dvals, i32 0, i32 8), align 4
  %cmp101 = icmp ne i32 %118, 1
  br i1 %cmp101, label %if.then.103, label %if.end.247

if.then.103:                                      ; preds = %if.end.100
  store i32 1, i32* %substep, align 4
  br label %for.cond.104

for.cond.104:                                     ; preds = %for.inc, %if.then.103
  %119 = load i32, i32* %substep, align 4
  %120 = load i32, i32* getelementptr inbounds (%struct.WarpVals, %struct.WarpVals* @dvals, i32 0, i32 8), align 4
  %cmp105 = icmp slt i32 %119, %120
  br i1 %cmp105, label %for.body.107, label %for.end

for.body.107:                                     ; preds = %for.cond.104
  %121 = load i32, i32* %x, align 4
  %conv108 = sitofp i32 %121 to double
  %122 = load double, double* %dx, align 8
  %add109 = fadd double %conv108, %122
  store double %add109, double* %needx, align 8
  %123 = load i32, i32* %y, align 4
  %conv110 = sitofp i32 %123 to double
  %124 = load double, double* %dy, align 8
  %add111 = fadd double %conv110, %124
  store double %add111, double* %needy, align 8
  %125 = load double, double* %needx, align 8
  %cmp112 = fcmp oge double %125, 0.000000e+00
  br i1 %cmp112, label %if.then.114, label %if.else.116

if.then.114:                                      ; preds = %for.body.107
  %126 = load double, double* %needx, align 8
  %conv115 = fptosi double %126 to i32
  store i32 %conv115, i32* %xi, align 4
  br label %if.end.121

if.else.116:                                      ; preds = %for.body.107
  %127 = load double, double* %needx, align 8
  %sub117 = fsub double -0.000000e+00, %127
  %conv118 = fptosi double %sub117 to i32
  %add119 = add nsw i32 %conv118, 1
  %sub120 = sub nsw i32 0, %add119
  store i32 %sub120, i32* %xi, align 4
  br label %if.end.121

if.end.121:                                       ; preds = %if.else.116, %if.then.114
  %128 = load double, double* %needy, align 8
  %cmp122 = fcmp oge double %128, 0.000000e+00
  br i1 %cmp122, label %if.then.124, label %if.else.126

if.then.124:                                      ; preds = %if.end.121
  %129 = load double, double* %needy, align 8
  %conv125 = fptosi double %129 to i32
  store i32 %conv125, i32* %yi, align 4
  br label %if.end.131

if.else.126:                                      ; preds = %if.end.121
  %130 = load double, double* %needy, align 8
  %sub127 = fsub double -0.000000e+00, %130
  %conv128 = fptosi double %sub127 to i32
  %add129 = add nsw i32 %conv128, 1
  %sub130 = sub nsw i32 0, %add129
  store i32 %sub130, i32* %yi, align 4
  br label %if.end.131

if.end.131:                                       ; preds = %if.else.126, %if.then.124
  %131 = load %struct._GimpDrawable*, %struct._GimpDrawable** %map_x.addr, align 8
  %132 = load %struct._GimpTile*, %struct._GimpTile** %xtile, align 8
  %133 = load i32, i32* %width, align 4
  %134 = load i32, i32* %height, align 4
  %135 = load i32, i32* %x1, align 4
  %136 = load i32, i32* %y1, align 4
  %137 = load i32, i32* %x2, align 4
  %138 = load i32, i32* %y2, align 4
  %139 = load i32, i32* %xi, align 4
  %140 = load i32, i32* %yi, align 4
  %arrayidx132 = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %pixel, i32 0, i64 0
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx132, i32 0, i32 0
  %call133 = call %struct._GimpTile* @warp_pixel(%struct._GimpDrawable* %131, %struct._GimpTile* %132, i32 %133, i32 %134, i32 %135, i32 %136, i32 %137, i32 %138, i32 %139, i32 %140, i32* %xrow, i32* %xcol, i8* %arraydecay)
  store %struct._GimpTile* %call133, %struct._GimpTile** %xtile, align 8
  %141 = load %struct._GimpDrawable*, %struct._GimpDrawable** %map_x.addr, align 8
  %142 = load %struct._GimpTile*, %struct._GimpTile** %xtile, align 8
  %143 = load i32, i32* %width, align 4
  %144 = load i32, i32* %height, align 4
  %145 = load i32, i32* %x1, align 4
  %146 = load i32, i32* %y1, align 4
  %147 = load i32, i32* %x2, align 4
  %148 = load i32, i32* %y2, align 4
  %149 = load i32, i32* %xi, align 4
  %add134 = add nsw i32 %149, 1
  %150 = load i32, i32* %yi, align 4
  %arrayidx135 = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %pixel, i32 0, i64 1
  %arraydecay136 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx135, i32 0, i32 0
  %call137 = call %struct._GimpTile* @warp_pixel(%struct._GimpDrawable* %141, %struct._GimpTile* %142, i32 %143, i32 %144, i32 %145, i32 %146, i32 %147, i32 %148, i32 %add134, i32 %150, i32* %xrow, i32* %xcol, i8* %arraydecay136)
  store %struct._GimpTile* %call137, %struct._GimpTile** %xtile, align 8
  %151 = load %struct._GimpDrawable*, %struct._GimpDrawable** %map_x.addr, align 8
  %152 = load %struct._GimpTile*, %struct._GimpTile** %xtile, align 8
  %153 = load i32, i32* %width, align 4
  %154 = load i32, i32* %height, align 4
  %155 = load i32, i32* %x1, align 4
  %156 = load i32, i32* %y1, align 4
  %157 = load i32, i32* %x2, align 4
  %158 = load i32, i32* %y2, align 4
  %159 = load i32, i32* %xi, align 4
  %160 = load i32, i32* %yi, align 4
  %add138 = add nsw i32 %160, 1
  %arrayidx139 = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %pixel, i32 0, i64 2
  %arraydecay140 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx139, i32 0, i32 0
  %call141 = call %struct._GimpTile* @warp_pixel(%struct._GimpDrawable* %151, %struct._GimpTile* %152, i32 %153, i32 %154, i32 %155, i32 %156, i32 %157, i32 %158, i32 %159, i32 %add138, i32* %xrow, i32* %xcol, i8* %arraydecay140)
  store %struct._GimpTile* %call141, %struct._GimpTile** %xtile, align 8
  %161 = load %struct._GimpDrawable*, %struct._GimpDrawable** %map_x.addr, align 8
  %162 = load %struct._GimpTile*, %struct._GimpTile** %xtile, align 8
  %163 = load i32, i32* %width, align 4
  %164 = load i32, i32* %height, align 4
  %165 = load i32, i32* %x1, align 4
  %166 = load i32, i32* %y1, align 4
  %167 = load i32, i32* %x2, align 4
  %168 = load i32, i32* %y2, align 4
  %169 = load i32, i32* %xi, align 4
  %add142 = add nsw i32 %169, 1
  %170 = load i32, i32* %yi, align 4
  %add143 = add nsw i32 %170, 1
  %arrayidx144 = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %pixel, i32 0, i64 3
  %arraydecay145 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx144, i32 0, i32 0
  %call146 = call %struct._GimpTile* @warp_pixel(%struct._GimpDrawable* %161, %struct._GimpTile* %162, i32 %163, i32 %164, i32 %165, i32 %166, i32 %167, i32 %168, i32 %add142, i32 %add143, i32* %xrow, i32* %xcol, i8* %arraydecay145)
  store %struct._GimpTile* %call146, %struct._GimpTile** %xtile, align 8
  %arrayidx147 = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %pixel, i32 0, i64 0
  %arrayidx148 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx147, i32 0, i64 0
  %171 = load i8, i8* %arrayidx148, align 1
  %conv149 = zext i8 %171 to i32
  %mul150 = mul nsw i32 256, %conv149
  %arrayidx151 = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %pixel, i32 0, i64 0
  %arrayidx152 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx151, i32 0, i64 1
  %172 = load i8, i8* %arrayidx152, align 1
  %conv153 = zext i8 %172 to i32
  %add154 = add nsw i32 %mul150, %conv153
  %arrayidx155 = getelementptr inbounds [4 x i32], [4 x i32]* %ivalues, i32 0, i64 0
  store i32 %add154, i32* %arrayidx155, align 4
  %arrayidx156 = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %pixel, i32 0, i64 1
  %arrayidx157 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx156, i32 0, i64 0
  %173 = load i8, i8* %arrayidx157, align 1
  %conv158 = zext i8 %173 to i32
  %mul159 = mul nsw i32 256, %conv158
  %arrayidx160 = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %pixel, i32 0, i64 1
  %arrayidx161 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx160, i32 0, i64 1
  %174 = load i8, i8* %arrayidx161, align 1
  %conv162 = zext i8 %174 to i32
  %add163 = add nsw i32 %mul159, %conv162
  %arrayidx164 = getelementptr inbounds [4 x i32], [4 x i32]* %ivalues, i32 0, i64 1
  store i32 %add163, i32* %arrayidx164, align 4
  %arrayidx165 = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %pixel, i32 0, i64 2
  %arrayidx166 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx165, i32 0, i64 0
  %175 = load i8, i8* %arrayidx166, align 1
  %conv167 = zext i8 %175 to i32
  %mul168 = mul nsw i32 256, %conv167
  %arrayidx169 = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %pixel, i32 0, i64 2
  %arrayidx170 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx169, i32 0, i64 1
  %176 = load i8, i8* %arrayidx170, align 1
  %conv171 = zext i8 %176 to i32
  %add172 = add nsw i32 %mul168, %conv171
  %arrayidx173 = getelementptr inbounds [4 x i32], [4 x i32]* %ivalues, i32 0, i64 2
  store i32 %add172, i32* %arrayidx173, align 4
  %arrayidx174 = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %pixel, i32 0, i64 3
  %arrayidx175 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx174, i32 0, i64 0
  %177 = load i8, i8* %arrayidx175, align 1
  %conv176 = zext i8 %177 to i32
  %mul177 = mul nsw i32 256, %conv176
  %arrayidx178 = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %pixel, i32 0, i64 3
  %arrayidx179 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx178, i32 0, i64 1
  %178 = load i8, i8* %arrayidx179, align 1
  %conv180 = zext i8 %178 to i32
  %add181 = add nsw i32 %mul177, %conv180
  %arrayidx182 = getelementptr inbounds [4 x i32], [4 x i32]* %ivalues, i32 0, i64 3
  store i32 %add181, i32* %arrayidx182, align 4
  %179 = load double, double* %needx, align 8
  %180 = load double, double* %needy, align 8
  %arraydecay183 = getelementptr inbounds [4 x i32], [4 x i32]* %ivalues, i32 0, i32 0
  %call184 = call i32 @gimp_bilinear_32(double %179, double %180, i32* %arraydecay183)
  %conv185 = uitofp i32 %call184 to double
  store double %conv185, double* %xval, align 8
  %181 = load %struct._GimpDrawable*, %struct._GimpDrawable** %map_y.addr, align 8
  %182 = load %struct._GimpTile*, %struct._GimpTile** %ytile, align 8
  %183 = load i32, i32* %width, align 4
  %184 = load i32, i32* %height, align 4
  %185 = load i32, i32* %x1, align 4
  %186 = load i32, i32* %y1, align 4
  %187 = load i32, i32* %x2, align 4
  %188 = load i32, i32* %y2, align 4
  %189 = load i32, i32* %xi, align 4
  %190 = load i32, i32* %yi, align 4
  %arrayidx186 = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %pixel, i32 0, i64 0
  %arraydecay187 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx186, i32 0, i32 0
  %call188 = call %struct._GimpTile* @warp_pixel(%struct._GimpDrawable* %181, %struct._GimpTile* %182, i32 %183, i32 %184, i32 %185, i32 %186, i32 %187, i32 %188, i32 %189, i32 %190, i32* %yrow, i32* %ycol, i8* %arraydecay187)
  store %struct._GimpTile* %call188, %struct._GimpTile** %ytile, align 8
  %191 = load %struct._GimpDrawable*, %struct._GimpDrawable** %map_y.addr, align 8
  %192 = load %struct._GimpTile*, %struct._GimpTile** %ytile, align 8
  %193 = load i32, i32* %width, align 4
  %194 = load i32, i32* %height, align 4
  %195 = load i32, i32* %x1, align 4
  %196 = load i32, i32* %y1, align 4
  %197 = load i32, i32* %x2, align 4
  %198 = load i32, i32* %y2, align 4
  %199 = load i32, i32* %xi, align 4
  %add189 = add nsw i32 %199, 1
  %200 = load i32, i32* %yi, align 4
  %arrayidx190 = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %pixel, i32 0, i64 1
  %arraydecay191 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx190, i32 0, i32 0
  %call192 = call %struct._GimpTile* @warp_pixel(%struct._GimpDrawable* %191, %struct._GimpTile* %192, i32 %193, i32 %194, i32 %195, i32 %196, i32 %197, i32 %198, i32 %add189, i32 %200, i32* %yrow, i32* %ycol, i8* %arraydecay191)
  store %struct._GimpTile* %call192, %struct._GimpTile** %ytile, align 8
  %201 = load %struct._GimpDrawable*, %struct._GimpDrawable** %map_y.addr, align 8
  %202 = load %struct._GimpTile*, %struct._GimpTile** %ytile, align 8
  %203 = load i32, i32* %width, align 4
  %204 = load i32, i32* %height, align 4
  %205 = load i32, i32* %x1, align 4
  %206 = load i32, i32* %y1, align 4
  %207 = load i32, i32* %x2, align 4
  %208 = load i32, i32* %y2, align 4
  %209 = load i32, i32* %xi, align 4
  %210 = load i32, i32* %yi, align 4
  %add193 = add nsw i32 %210, 1
  %arrayidx194 = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %pixel, i32 0, i64 2
  %arraydecay195 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx194, i32 0, i32 0
  %call196 = call %struct._GimpTile* @warp_pixel(%struct._GimpDrawable* %201, %struct._GimpTile* %202, i32 %203, i32 %204, i32 %205, i32 %206, i32 %207, i32 %208, i32 %209, i32 %add193, i32* %yrow, i32* %ycol, i8* %arraydecay195)
  store %struct._GimpTile* %call196, %struct._GimpTile** %ytile, align 8
  %211 = load %struct._GimpDrawable*, %struct._GimpDrawable** %map_y.addr, align 8
  %212 = load %struct._GimpTile*, %struct._GimpTile** %ytile, align 8
  %213 = load i32, i32* %width, align 4
  %214 = load i32, i32* %height, align 4
  %215 = load i32, i32* %x1, align 4
  %216 = load i32, i32* %y1, align 4
  %217 = load i32, i32* %x2, align 4
  %218 = load i32, i32* %y2, align 4
  %219 = load i32, i32* %xi, align 4
  %add197 = add nsw i32 %219, 1
  %220 = load i32, i32* %yi, align 4
  %add198 = add nsw i32 %220, 1
  %arrayidx199 = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %pixel, i32 0, i64 3
  %arraydecay200 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx199, i32 0, i32 0
  %call201 = call %struct._GimpTile* @warp_pixel(%struct._GimpDrawable* %211, %struct._GimpTile* %212, i32 %213, i32 %214, i32 %215, i32 %216, i32 %217, i32 %218, i32 %add197, i32 %add198, i32* %yrow, i32* %ycol, i8* %arraydecay200)
  store %struct._GimpTile* %call201, %struct._GimpTile** %ytile, align 8
  %arrayidx202 = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %pixel, i32 0, i64 0
  %arrayidx203 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx202, i32 0, i64 0
  %221 = load i8, i8* %arrayidx203, align 1
  %conv204 = zext i8 %221 to i32
  %mul205 = mul nsw i32 256, %conv204
  %arrayidx206 = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %pixel, i32 0, i64 0
  %arrayidx207 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx206, i32 0, i64 1
  %222 = load i8, i8* %arrayidx207, align 1
  %conv208 = zext i8 %222 to i32
  %add209 = add nsw i32 %mul205, %conv208
  %arrayidx210 = getelementptr inbounds [4 x i32], [4 x i32]* %ivalues, i32 0, i64 0
  store i32 %add209, i32* %arrayidx210, align 4
  %arrayidx211 = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %pixel, i32 0, i64 1
  %arrayidx212 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx211, i32 0, i64 0
  %223 = load i8, i8* %arrayidx212, align 1
  %conv213 = zext i8 %223 to i32
  %mul214 = mul nsw i32 256, %conv213
  %arrayidx215 = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %pixel, i32 0, i64 1
  %arrayidx216 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx215, i32 0, i64 1
  %224 = load i8, i8* %arrayidx216, align 1
  %conv217 = zext i8 %224 to i32
  %add218 = add nsw i32 %mul214, %conv217
  %arrayidx219 = getelementptr inbounds [4 x i32], [4 x i32]* %ivalues, i32 0, i64 1
  store i32 %add218, i32* %arrayidx219, align 4
  %arrayidx220 = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %pixel, i32 0, i64 2
  %arrayidx221 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx220, i32 0, i64 0
  %225 = load i8, i8* %arrayidx221, align 1
  %conv222 = zext i8 %225 to i32
  %mul223 = mul nsw i32 256, %conv222
  %arrayidx224 = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %pixel, i32 0, i64 2
  %arrayidx225 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx224, i32 0, i64 1
  %226 = load i8, i8* %arrayidx225, align 1
  %conv226 = zext i8 %226 to i32
  %add227 = add nsw i32 %mul223, %conv226
  %arrayidx228 = getelementptr inbounds [4 x i32], [4 x i32]* %ivalues, i32 0, i64 2
  store i32 %add227, i32* %arrayidx228, align 4
  %arrayidx229 = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %pixel, i32 0, i64 3
  %arrayidx230 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx229, i32 0, i64 0
  %227 = load i8, i8* %arrayidx230, align 1
  %conv231 = zext i8 %227 to i32
  %mul232 = mul nsw i32 256, %conv231
  %arrayidx233 = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %pixel, i32 0, i64 3
  %arrayidx234 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx233, i32 0, i64 1
  %228 = load i8, i8* %arrayidx234, align 1
  %conv235 = zext i8 %228 to i32
  %add236 = add nsw i32 %mul232, %conv235
  %arrayidx237 = getelementptr inbounds [4 x i32], [4 x i32]* %ivalues, i32 0, i64 3
  store i32 %add236, i32* %arrayidx237, align 4
  %229 = load double, double* %needx, align 8
  %230 = load double, double* %needy, align 8
  %arraydecay238 = getelementptr inbounds [4 x i32], [4 x i32]* %ivalues, i32 0, i32 0
  %call239 = call i32 @gimp_bilinear_32(double %229, double %230, i32* %arraydecay238)
  %conv240 = uitofp i32 %call239 to double
  store double %conv240, double* %yval, align 8
  %231 = load double, double* %dscalefac, align 8
  %232 = load double, double* %xval, align 8
  %sub241 = fsub double %232, 3.276800e+04
  %mul242 = fmul double %231, %sub241
  %233 = load double, double* %dx, align 8
  %add243 = fadd double %233, %mul242
  store double %add243, double* %dx, align 8
  %234 = load double, double* %dscalefac, align 8
  %235 = load double, double* %yval, align 8
  %sub244 = fsub double %235, 3.276800e+04
  %mul245 = fmul double %234, %sub244
  %236 = load double, double* %dy, align 8
  %add246 = fadd double %236, %mul245
  store double %add246, double* %dy, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.131
  %237 = load i32, i32* %substep, align 4
  %inc = add nsw i32 %237, 1
  store i32 %inc, i32* %substep, align 4
  br label %for.cond.104

for.end:                                          ; preds = %for.cond.104
  br label %if.end.247

if.end.247:                                       ; preds = %for.end, %if.end.100
  %238 = load i32, i32* %x, align 4
  %conv248 = sitofp i32 %238 to double
  %239 = load double, double* %dx, align 8
  %add249 = fadd double %conv248, %239
  store double %add249, double* %needx, align 8
  %240 = load i32, i32* %y, align 4
  %conv250 = sitofp i32 %240 to double
  %241 = load double, double* %dy, align 8
  %add251 = fadd double %conv250, %241
  store double %add251, double* %needy, align 8
  %242 = load i32, i32* %xm_bytes, align 4
  %243 = load i8*, i8** %mx, align 8
  %idx.ext = sext i32 %242 to i64
  %add.ptr = getelementptr inbounds i8, i8* %243, i64 %idx.ext
  store i8* %add.ptr, i8** %mx, align 8
  %244 = load i32, i32* %ym_bytes, align 4
  %245 = load i8*, i8** %my, align 8
  %idx.ext252 = sext i32 %244 to i64
  %add.ptr253 = getelementptr inbounds i8, i8* %245, i64 %idx.ext252
  store i8* %add.ptr253, i8** %my, align 8
  %246 = load i32, i32* getelementptr inbounds (%struct.WarpVals, %struct.WarpVals* @dvals, i32 0, i32 7), align 4
  %cmp254 = icmp eq i32 %246, 1
  br i1 %cmp254, label %if.then.256, label %if.end.259

if.then.256:                                      ; preds = %if.end.247
  %247 = load i32, i32* %mmag_bytes, align 4
  %248 = load i8*, i8** %mmag, align 8
  %idx.ext257 = sext i32 %247 to i64
  %add.ptr258 = getelementptr inbounds i8, i8* %248, i64 %idx.ext257
  store i8* %add.ptr258, i8** %mmag, align 8
  br label %if.end.259

if.end.259:                                       ; preds = %if.then.256, %if.end.247
  %249 = load double, double* %needx, align 8
  %cmp260 = fcmp oge double %249, 0.000000e+00
  br i1 %cmp260, label %if.then.262, label %if.else.264

if.then.262:                                      ; preds = %if.end.259
  %250 = load double, double* %needx, align 8
  %conv263 = fptosi double %250 to i32
  store i32 %conv263, i32* %xi, align 4
  br label %if.end.269

if.else.264:                                      ; preds = %if.end.259
  %251 = load double, double* %needx, align 8
  %sub265 = fsub double -0.000000e+00, %251
  %conv266 = fptosi double %sub265 to i32
  %add267 = add nsw i32 %conv266, 1
  %sub268 = sub nsw i32 0, %add267
  store i32 %sub268, i32* %xi, align 4
  br label %if.end.269

if.end.269:                                       ; preds = %if.else.264, %if.then.262
  %252 = load double, double* %needy, align 8
  %cmp270 = fcmp oge double %252, 0.000000e+00
  br i1 %cmp270, label %if.then.272, label %if.else.274

if.then.272:                                      ; preds = %if.end.269
  %253 = load double, double* %needy, align 8
  %conv273 = fptosi double %253 to i32
  store i32 %conv273, i32* %yi, align 4
  br label %if.end.279

if.else.274:                                      ; preds = %if.end.269
  %254 = load double, double* %needy, align 8
  %sub275 = fsub double -0.000000e+00, %254
  %conv276 = fptosi double %sub275 to i32
  %add277 = add nsw i32 %conv276, 1
  %sub278 = sub nsw i32 0, %add277
  store i32 %sub278, i32* %yi, align 4
  br label %if.end.279

if.end.279:                                       ; preds = %if.else.274, %if.then.272
  %255 = load %struct._GimpDrawable*, %struct._GimpDrawable** %draw.addr, align 8
  %256 = load %struct._GimpTile*, %struct._GimpTile** %tile, align 8
  %257 = load i32, i32* %width, align 4
  %258 = load i32, i32* %height, align 4
  %259 = load i32, i32* %x1, align 4
  %260 = load i32, i32* %y1, align 4
  %261 = load i32, i32* %x2, align 4
  %262 = load i32, i32* %y2, align 4
  %263 = load i32, i32* %xi, align 4
  %264 = load i32, i32* %yi, align 4
  %arrayidx280 = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %pixel, i32 0, i64 0
  %arraydecay281 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx280, i32 0, i32 0
  %call282 = call %struct._GimpTile* @warp_pixel(%struct._GimpDrawable* %255, %struct._GimpTile* %256, i32 %257, i32 %258, i32 %259, i32 %260, i32 %261, i32 %262, i32 %263, i32 %264, i32* %row, i32* %col, i8* %arraydecay281)
  store %struct._GimpTile* %call282, %struct._GimpTile** %tile, align 8
  %265 = load %struct._GimpDrawable*, %struct._GimpDrawable** %draw.addr, align 8
  %266 = load %struct._GimpTile*, %struct._GimpTile** %tile, align 8
  %267 = load i32, i32* %width, align 4
  %268 = load i32, i32* %height, align 4
  %269 = load i32, i32* %x1, align 4
  %270 = load i32, i32* %y1, align 4
  %271 = load i32, i32* %x2, align 4
  %272 = load i32, i32* %y2, align 4
  %273 = load i32, i32* %xi, align 4
  %add283 = add nsw i32 %273, 1
  %274 = load i32, i32* %yi, align 4
  %arrayidx284 = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %pixel, i32 0, i64 1
  %arraydecay285 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx284, i32 0, i32 0
  %call286 = call %struct._GimpTile* @warp_pixel(%struct._GimpDrawable* %265, %struct._GimpTile* %266, i32 %267, i32 %268, i32 %269, i32 %270, i32 %271, i32 %272, i32 %add283, i32 %274, i32* %row, i32* %col, i8* %arraydecay285)
  store %struct._GimpTile* %call286, %struct._GimpTile** %tile, align 8
  %275 = load %struct._GimpDrawable*, %struct._GimpDrawable** %draw.addr, align 8
  %276 = load %struct._GimpTile*, %struct._GimpTile** %tile, align 8
  %277 = load i32, i32* %width, align 4
  %278 = load i32, i32* %height, align 4
  %279 = load i32, i32* %x1, align 4
  %280 = load i32, i32* %y1, align 4
  %281 = load i32, i32* %x2, align 4
  %282 = load i32, i32* %y2, align 4
  %283 = load i32, i32* %xi, align 4
  %284 = load i32, i32* %yi, align 4
  %add287 = add nsw i32 %284, 1
  %arrayidx288 = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %pixel, i32 0, i64 2
  %arraydecay289 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx288, i32 0, i32 0
  %call290 = call %struct._GimpTile* @warp_pixel(%struct._GimpDrawable* %275, %struct._GimpTile* %276, i32 %277, i32 %278, i32 %279, i32 %280, i32 %281, i32 %282, i32 %283, i32 %add287, i32* %row, i32* %col, i8* %arraydecay289)
  store %struct._GimpTile* %call290, %struct._GimpTile** %tile, align 8
  %285 = load %struct._GimpDrawable*, %struct._GimpDrawable** %draw.addr, align 8
  %286 = load %struct._GimpTile*, %struct._GimpTile** %tile, align 8
  %287 = load i32, i32* %width, align 4
  %288 = load i32, i32* %height, align 4
  %289 = load i32, i32* %x1, align 4
  %290 = load i32, i32* %y1, align 4
  %291 = load i32, i32* %x2, align 4
  %292 = load i32, i32* %y2, align 4
  %293 = load i32, i32* %xi, align 4
  %add291 = add nsw i32 %293, 1
  %294 = load i32, i32* %yi, align 4
  %add292 = add nsw i32 %294, 1
  %arrayidx293 = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %pixel, i32 0, i64 3
  %arraydecay294 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx293, i32 0, i32 0
  %call295 = call %struct._GimpTile* @warp_pixel(%struct._GimpDrawable* %285, %struct._GimpTile* %286, i32 %287, i32 %288, i32 %289, i32 %290, i32 %291, i32 %292, i32 %add291, i32 %add292, i32* %row, i32* %col, i8* %arraydecay294)
  store %struct._GimpTile* %call295, %struct._GimpTile** %tile, align 8
  store i32 0, i32* %k, align 4
  br label %for.cond.296

for.cond.296:                                     ; preds = %for.inc.317, %if.end.279
  %295 = load i32, i32* %k, align 4
  %296 = load i32, i32* %dest_bytes, align 4
  %cmp297 = icmp slt i32 %295, %296
  br i1 %cmp297, label %for.body.299, label %for.end.319

for.body.299:                                     ; preds = %for.cond.296
  %297 = load i32, i32* %k, align 4
  %idxprom = sext i32 %297 to i64
  %arrayidx300 = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %pixel, i32 0, i64 0
  %arrayidx301 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx300, i32 0, i64 %idxprom
  %298 = load i8, i8* %arrayidx301, align 1
  %arrayidx302 = getelementptr inbounds [4 x i8], [4 x i8]* %values, i32 0, i64 0
  store i8 %298, i8* %arrayidx302, align 1
  %299 = load i32, i32* %k, align 4
  %idxprom303 = sext i32 %299 to i64
  %arrayidx304 = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %pixel, i32 0, i64 1
  %arrayidx305 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx304, i32 0, i64 %idxprom303
  %300 = load i8, i8* %arrayidx305, align 1
  %arrayidx306 = getelementptr inbounds [4 x i8], [4 x i8]* %values, i32 0, i64 1
  store i8 %300, i8* %arrayidx306, align 1
  %301 = load i32, i32* %k, align 4
  %idxprom307 = sext i32 %301 to i64
  %arrayidx308 = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %pixel, i32 0, i64 2
  %arrayidx309 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx308, i32 0, i64 %idxprom307
  %302 = load i8, i8* %arrayidx309, align 1
  %arrayidx310 = getelementptr inbounds [4 x i8], [4 x i8]* %values, i32 0, i64 2
  store i8 %302, i8* %arrayidx310, align 1
  %303 = load i32, i32* %k, align 4
  %idxprom311 = sext i32 %303 to i64
  %arrayidx312 = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %pixel, i32 0, i64 3
  %arrayidx313 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx312, i32 0, i64 %idxprom311
  %304 = load i8, i8* %arrayidx313, align 1
  %arrayidx314 = getelementptr inbounds [4 x i8], [4 x i8]* %values, i32 0, i64 3
  store i8 %304, i8* %arrayidx314, align 1
  %305 = load double, double* %needx, align 8
  %306 = load double, double* %needy, align 8
  %arraydecay315 = getelementptr inbounds [4 x i8], [4 x i8]* %values, i32 0, i32 0
  %call316 = call zeroext i8 @gimp_bilinear_8(double %305, double %306, i8* %arraydecay315)
  store i8 %call316, i8* %val, align 1
  %307 = load i8, i8* %val, align 1
  %308 = load i8*, i8** %dest, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %308, i32 1
  store i8* %incdec.ptr, i8** %dest, align 8
  store i8 %307, i8* %308, align 1
  br label %for.inc.317

for.inc.317:                                      ; preds = %for.body.299
  %309 = load i32, i32* %k, align 4
  %inc318 = add nsw i32 %309, 1
  store i32 %inc318, i32* %k, align 4
  br label %for.cond.296

for.end.319:                                      ; preds = %for.cond.296
  br label %for.inc.320

for.inc.320:                                      ; preds = %for.end.319
  %310 = load i32, i32* %x, align 4
  %inc321 = add nsw i32 %310, 1
  store i32 %inc321, i32* %x, align 4
  br label %for.cond.59

for.end.322:                                      ; preds = %for.cond.59
  %rowstride = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 3
  %311 = load i32, i32* %rowstride, align 4
  %312 = load i8*, i8** %srcrow, align 8
  %idx.ext323 = sext i32 %311 to i64
  %add.ptr324 = getelementptr inbounds i8, i8* %312, i64 %idx.ext323
  store i8* %add.ptr324, i8** %srcrow, align 8
  %rowstride325 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 3
  %313 = load i32, i32* %rowstride325, align 4
  %314 = load i8*, i8** %destrow, align 8
  %idx.ext326 = sext i32 %313 to i64
  %add.ptr327 = getelementptr inbounds i8, i8* %314, i64 %idx.ext326
  store i8* %add.ptr327, i8** %destrow, align 8
  %rowstride328 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %map_x_rgn, i32 0, i32 3
  %315 = load i32, i32* %rowstride328, align 4
  %316 = load i8*, i8** %mxrow, align 8
  %idx.ext329 = sext i32 %315 to i64
  %add.ptr330 = getelementptr inbounds i8, i8* %316, i64 %idx.ext329
  store i8* %add.ptr330, i8** %mxrow, align 8
  %rowstride331 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %map_y_rgn, i32 0, i32 3
  %317 = load i32, i32* %rowstride331, align 4
  %318 = load i8*, i8** %myrow, align 8
  %idx.ext332 = sext i32 %317 to i64
  %add.ptr333 = getelementptr inbounds i8, i8* %318, i64 %idx.ext332
  store i8* %add.ptr333, i8** %myrow, align 8
  %319 = load i32, i32* getelementptr inbounds (%struct.WarpVals, %struct.WarpVals* @dvals, i32 0, i32 7), align 4
  %cmp334 = icmp eq i32 %319, 1
  br i1 %cmp334, label %if.then.336, label %if.end.340

if.then.336:                                      ; preds = %for.end.322
  %rowstride337 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %mag_rgn, i32 0, i32 3
  %320 = load i32, i32* %rowstride337, align 4
  %321 = load i8*, i8** %mmagrow, align 8
  %idx.ext338 = sext i32 %320 to i64
  %add.ptr339 = getelementptr inbounds i8, i8* %321, i64 %idx.ext338
  store i8* %add.ptr339, i8** %mmagrow, align 8
  br label %if.end.340

if.end.340:                                       ; preds = %if.then.336, %for.end.322
  br label %for.inc.341

for.inc.341:                                      ; preds = %if.end.340
  %322 = load i32, i32* %y, align 4
  %inc342 = add nsw i32 %322, 1
  store i32 %inc342, i32* %y, align 4
  br label %for.cond.48

for.end.343:                                      ; preds = %for.cond.48
  %w344 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 6
  %323 = load i32, i32* %w344, align 4
  %h345 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 7
  %324 = load i32, i32* %h345, align 4
  %mul346 = mul nsw i32 %323, %324
  %325 = load i32, i32* @progress, align 4
  %add347 = add nsw i32 %325, %mul346
  store i32 %add347, i32* @progress, align 4
  %326 = load i32, i32* @progress, align 4
  %conv348 = sitofp i32 %326 to double
  %327 = load i32, i32* %max_progress, align 4
  %conv349 = sitofp i32 %327 to double
  %div350 = fdiv double %conv348, %conv349
  %call351 = call i32 @gimp_progress_update(double %div350)
  br label %for.inc.352

for.inc.352:                                      ; preds = %for.end.343
  %328 = load i8*, i8** %pr, align 8
  %call353 = call i8* @gimp_pixel_rgns_process(i8* %328)
  store i8* %call353, i8** %pr, align 8
  br label %for.cond

for.end.354:                                      ; preds = %for.cond
  %call355 = call i32 @gimp_progress_update(double 1.000000e+00)
  %329 = load %struct._GimpTile*, %struct._GimpTile** %tile, align 8
  %cmp356 = icmp ne %struct._GimpTile* %329, null
  br i1 %cmp356, label %if.then.358, label %if.end.359

if.then.358:                                      ; preds = %for.end.354
  %330 = load %struct._GimpTile*, %struct._GimpTile** %tile, align 8
  call void @gimp_tile_unref(%struct._GimpTile* %330, i32 0)
  br label %if.end.359

if.end.359:                                       ; preds = %if.then.358, %for.end.354
  %331 = load %struct._GimpTile*, %struct._GimpTile** %xtile, align 8
  %cmp360 = icmp ne %struct._GimpTile* %331, null
  br i1 %cmp360, label %if.then.362, label %if.end.363

if.then.362:                                      ; preds = %if.end.359
  %332 = load %struct._GimpTile*, %struct._GimpTile** %xtile, align 8
  call void @gimp_tile_unref(%struct._GimpTile* %332, i32 0)
  br label %if.end.363

if.end.363:                                       ; preds = %if.then.362, %if.end.359
  %333 = load %struct._GimpTile*, %struct._GimpTile** %ytile, align 8
  %cmp364 = icmp ne %struct._GimpTile* %333, null
  br i1 %cmp364, label %if.then.366, label %if.end.367

if.then.366:                                      ; preds = %if.end.363
  %334 = load %struct._GimpTile*, %struct._GimpTile** %ytile, align 8
  call void @gimp_tile_unref(%struct._GimpTile* %334, i32 0)
  br label %if.end.367

if.end.367:                                       ; preds = %if.then.366, %if.end.363
  %335 = load %struct._GimpDrawable*, %struct._GimpDrawable** %new.addr, align 8
  call void @gimp_drawable_flush(%struct._GimpDrawable* %335)
  %336 = load %struct._GimpDrawable*, %struct._GimpDrawable** %draw.addr, align 8
  %drawable_id368 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %336, i32 0, i32 0
  %337 = load i32, i32* %drawable_id368, align 4
  %338 = load i32, i32* %first_time.addr, align 4
  %call369 = call i32 @gimp_drawable_merge_shadow(i32 %337, i32 %338)
  %339 = load %struct._GRand*, %struct._GRand** %gr, align 8
  call void @g_rand_free(%struct._GRand* %339)
  br label %return

return:                                           ; preds = %if.end.367, %if.then
  ret void
}

declare i32 @gimp_drawable_update(i32, i32, i32, i32, i32) #1

declare i32 @gimp_item_get_image(i32) #1

declare i32 @gimp_image_delete(i32) #1

declare i32 @gimp_image_get_active_layer(i32) #1

declare i32 @gimp_image_new(i32, i32, i32) #1

declare i32 @gimp_layer_new(i32, i8*, i32, i32, i32, double, i32) #1

declare i32 @gimp_image_insert_layer(i32, i32, i32, i32) #1

declare i32 @gimp_drawable_fill(i32, i32) #1

declare i32 @gimp_image_set_active_layer(i32, i32) #1

declare noalias i8* @g_malloc_n(i64, i64) #1

declare void @gimp_pixel_rgn_init(%struct._GimpPixelRgn*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @diff_prepare_row(%struct._GimpPixelRgn* %pixel_rgn, i8* %data, i32 %x, i32 %y, i32 %w) #0 {
entry:
  %pixel_rgn.addr = alloca %struct._GimpPixelRgn*, align 8
  %data.addr = alloca i8*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %b = alloca i32, align 4
  store %struct._GimpPixelRgn* %pixel_rgn, %struct._GimpPixelRgn** %pixel_rgn.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %w, i32* %w.addr, align 4
  %0 = load i32, i32* %y.addr, align 4
  %1 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pixel_rgn.addr, align 8
  %h = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %1, i32 0, i32 7
  %2 = load i32, i32* %h, align 4
  %sub = sub nsw i32 %2, 1
  %cmp = icmp sgt i32 %0, %sub
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %3 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pixel_rgn.addr, align 8
  %h1 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %3, i32 0, i32 7
  %4 = load i32, i32* %h1, align 4
  %sub2 = sub nsw i32 %4, 1
  br label %cond.end.6

cond.false:                                       ; preds = %entry
  %5 = load i32, i32* %y.addr, align 4
  %cmp3 = icmp slt i32 %5, 0
  br i1 %cmp3, label %cond.true.4, label %cond.false.5

cond.true.4:                                      ; preds = %cond.false
  br label %cond.end

cond.false.5:                                     ; preds = %cond.false
  %6 = load i32, i32* %y.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false.5, %cond.true.4
  %cond = phi i32 [ 0, %cond.true.4 ], [ %6, %cond.false.5 ]
  br label %cond.end.6

cond.end.6:                                       ; preds = %cond.end, %cond.true
  %cond7 = phi i32 [ %sub2, %cond.true ], [ %cond, %cond.end ]
  store i32 %cond7, i32* %y.addr, align 4
  %7 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pixel_rgn.addr, align 8
  %8 = load i8*, i8** %data.addr, align 8
  %9 = load i32, i32* %x.addr, align 4
  %10 = load i32, i32* %y.addr, align 4
  %11 = load i32, i32* %w.addr, align 4
  call void @gimp_pixel_rgn_get_row(%struct._GimpPixelRgn* %7, i8* %8, i32 %9, i32 %10, i32 %11)
  store i32 0, i32* %b, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end.6
  %12 = load i32, i32* %b, align 4
  %13 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pixel_rgn.addr, align 8
  %bpp = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %13, i32 0, i32 2
  %14 = load i32, i32* %bpp, align 4
  %cmp8 = icmp slt i32 %12, %14
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load i32, i32* %b, align 4
  %idxprom = sext i32 %15 to i64
  %16 = load i8*, i8** %data.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %16, i64 %idxprom
  %17 = load i8, i8* %arrayidx, align 1
  %18 = load i32, i32* %b, align 4
  %19 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pixel_rgn.addr, align 8
  %bpp9 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %19, i32 0, i32 2
  %20 = load i32, i32* %bpp9, align 4
  %sub10 = sub nsw i32 %18, %20
  %idxprom11 = sext i32 %sub10 to i64
  %21 = load i8*, i8** %data.addr, align 8
  %arrayidx12 = getelementptr inbounds i8, i8* %21, i64 %idxprom11
  store i8 %17, i8* %arrayidx12, align 1
  %22 = load i32, i32* %w.addr, align 4
  %sub13 = sub nsw i32 %22, 1
  %23 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pixel_rgn.addr, align 8
  %bpp14 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %23, i32 0, i32 2
  %24 = load i32, i32* %bpp14, align 4
  %mul = mul nsw i32 %sub13, %24
  %25 = load i32, i32* %b, align 4
  %add = add nsw i32 %mul, %25
  %idxprom15 = sext i32 %add to i64
  %26 = load i8*, i8** %data.addr, align 8
  %arrayidx16 = getelementptr inbounds i8, i8* %26, i64 %idxprom15
  %27 = load i8, i8* %arrayidx16, align 1
  %28 = load i32, i32* %w.addr, align 4
  %29 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pixel_rgn.addr, align 8
  %bpp17 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %29, i32 0, i32 2
  %30 = load i32, i32* %bpp17, align 4
  %mul18 = mul nsw i32 %28, %30
  %31 = load i32, i32* %b, align 4
  %add19 = add nsw i32 %mul18, %31
  %idxprom20 = sext i32 %add19 to i64
  %32 = load i8*, i8** %data.addr, align 8
  %arrayidx21 = getelementptr inbounds i8, i8* %32, i64 %idxprom20
  store i8 %27, i8* %arrayidx21, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %33 = load i32, i32* %b, align 4
  %inc = add nsw i32 %33, 1
  store i32 %inc, i32* %b, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind
declare double @cos(double) #2

; Function Attrs: nounwind
declare double @sin(double) #2

; Function Attrs: nounwind
declare double @atan2(double, double) #2

; Function Attrs: nounwind
declare double @sqrt(double) #2

declare void @gimp_pixel_rgn_set_row(%struct._GimpPixelRgn*, i8*, i32, i32, i32) #1

declare i32 @gimp_progress_update(double) #1

declare void @gimp_drawable_flush(%struct._GimpDrawable*) #1

; Function Attrs: nounwind uwtable
define internal void @blur16(%struct._GimpDrawable* %drawable) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %srcPR = alloca %struct._GimpPixelRgn, align 8
  %destPR = alloca %struct._GimpPixelRgn, align 8
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %src_bytes = alloca i32, align 4
  %dest_bytes = alloca i32, align 4
  %dest_bytes_inc = alloca i32, align 4
  %offb = alloca i32, align 4
  %off1 = alloca i32, align 4
  %dest = alloca i8*, align 8
  %d = alloca i8*, align 8
  %prev_row = alloca i8*, align 8
  %pr = alloca i8*, align 8
  %cur_row = alloca i8*, align 8
  %cr = alloca i8*, align 8
  %next_row = alloca i8*, align 8
  %nr = alloca i8*, align 8
  %tmp = alloca i8*, align 8
  %row = alloca i32, align 4
  %col = alloca i32, align 4
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  %pval = alloca double, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %0, i32 0, i32 0
  %1 = load i32, i32* %drawable_id, align 4
  %call = call i32 @gimp_drawable_mask_intersect(i32 %1, i32* %x1, i32* %y1, i32* %width, i32* %height)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %x1, align 4
  %3 = load i32, i32* %width, align 4
  %add = add nsw i32 %2, %3
  store i32 %add, i32* %x2, align 4
  %4 = load i32, i32* %y1, align 4
  %5 = load i32, i32* %height, align 4
  %add8 = add nsw i32 %4, %5
  store i32 %add8, i32* %y2, align 4
  %6 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %width9 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %6, i32 0, i32 1
  %7 = load i32, i32* %width9, align 4
  store i32 %7, i32* %width, align 4
  %8 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %height10 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %8, i32 0, i32 2
  %9 = load i32, i32* %height10, align 4
  store i32 %9, i32* %height, align 4
  %10 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %bpp = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %10, i32 0, i32 3
  %11 = load i32, i32* %bpp, align 4
  store i32 %11, i32* %src_bytes, align 4
  %12 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %bpp11 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %12, i32 0, i32 3
  %13 = load i32, i32* %bpp11, align 4
  store i32 %13, i32* %dest_bytes, align 4
  %14 = load i32, i32* %dest_bytes, align 4
  %sub = sub nsw i32 %14, 2
  store i32 %sub, i32* %dest_bytes_inc, align 4
  %15 = load i32, i32* %x2, align 4
  %16 = load i32, i32* %x1, align 4
  %sub12 = sub nsw i32 %15, %16
  %add13 = add nsw i32 %sub12, 2
  %17 = load i32, i32* %src_bytes, align 4
  %mul = mul nsw i32 %add13, %17
  %conv = sext i32 %mul to i64
  %call14 = call noalias i8* @g_malloc_n(i64 %conv, i64 1)
  store i8* %call14, i8** %prev_row, align 8
  %18 = load i32, i32* %x2, align 4
  %19 = load i32, i32* %x1, align 4
  %sub15 = sub nsw i32 %18, %19
  %add16 = add nsw i32 %sub15, 2
  %20 = load i32, i32* %src_bytes, align 4
  %mul17 = mul nsw i32 %add16, %20
  %conv18 = sext i32 %mul17 to i64
  %call19 = call noalias i8* @g_malloc_n(i64 %conv18, i64 1)
  store i8* %call19, i8** %cur_row, align 8
  %21 = load i32, i32* %x2, align 4
  %22 = load i32, i32* %x1, align 4
  %sub20 = sub nsw i32 %21, %22
  %add21 = add nsw i32 %sub20, 2
  %23 = load i32, i32* %src_bytes, align 4
  %mul22 = mul nsw i32 %add21, %23
  %conv23 = sext i32 %mul22 to i64
  %call24 = call noalias i8* @g_malloc_n(i64 %conv23, i64 1)
  store i8* %call24, i8** %next_row, align 8
  %24 = load i32, i32* %x2, align 4
  %25 = load i32, i32* %x1, align 4
  %sub25 = sub nsw i32 %24, %25
  %26 = load i32, i32* %src_bytes, align 4
  %mul26 = mul nsw i32 %sub25, %26
  %conv27 = sext i32 %mul26 to i64
  %call28 = call noalias i8* @g_malloc_n(i64 %conv27, i64 1)
  store i8* %call28, i8** %dest, align 8
  %27 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %28 = load i32, i32* %width, align 4
  %29 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %srcPR, %struct._GimpDrawable* %27, i32 0, i32 0, i32 %28, i32 %29, i32 0, i32 0)
  %30 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %31 = load i32, i32* %width, align 4
  %32 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %destPR, %struct._GimpDrawable* %30, i32 0, i32 0, i32 %31, i32 %32, i32 1, i32 1)
  %33 = load i8*, i8** %prev_row, align 8
  %34 = load i32, i32* %src_bytes, align 4
  %idx.ext = sext i32 %34 to i64
  %add.ptr = getelementptr inbounds i8, i8* %33, i64 %idx.ext
  store i8* %add.ptr, i8** %pr, align 8
  %35 = load i8*, i8** %cur_row, align 8
  %36 = load i32, i32* %src_bytes, align 4
  %idx.ext29 = sext i32 %36 to i64
  %add.ptr30 = getelementptr inbounds i8, i8* %35, i64 %idx.ext29
  store i8* %add.ptr30, i8** %cr, align 8
  %37 = load i8*, i8** %next_row, align 8
  %38 = load i32, i32* %src_bytes, align 4
  %idx.ext31 = sext i32 %38 to i64
  %add.ptr32 = getelementptr inbounds i8, i8* %37, i64 %idx.ext31
  store i8* %add.ptr32, i8** %nr, align 8
  %39 = load i8*, i8** %pr, align 8
  %40 = load i32, i32* %x1, align 4
  %41 = load i32, i32* %y1, align 4
  %42 = load i32, i32* %x2, align 4
  %43 = load i32, i32* %x1, align 4
  %sub33 = sub nsw i32 %42, %43
  call void @diff_prepare_row(%struct._GimpPixelRgn* %srcPR, i8* %39, i32 %40, i32 %41, i32 %sub33)
  %44 = load i8*, i8** %cr, align 8
  %45 = load i32, i32* %x1, align 4
  %46 = load i32, i32* %y1, align 4
  %add34 = add nsw i32 %46, 1
  %47 = load i32, i32* %x2, align 4
  %48 = load i32, i32* %x1, align 4
  %sub35 = sub nsw i32 %47, %48
  call void @diff_prepare_row(%struct._GimpPixelRgn* %srcPR, i8* %44, i32 %45, i32 %add34, i32 %sub35)
  %49 = load i32, i32* %y1, align 4
  store i32 %49, i32* %row, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.172, %if.end
  %50 = load i32, i32* %row, align 4
  %51 = load i32, i32* %y2, align 4
  %cmp = icmp slt i32 %50, %51
  br i1 %cmp, label %for.body, label %for.end.174

for.body:                                         ; preds = %for.cond
  %52 = load i8*, i8** %nr, align 8
  %53 = load i32, i32* %x1, align 4
  %54 = load i32, i32* %row, align 4
  %add37 = add nsw i32 %54, 1
  %55 = load i32, i32* %x2, align 4
  %56 = load i32, i32* %x1, align 4
  %sub38 = sub nsw i32 %55, %56
  call void @diff_prepare_row(%struct._GimpPixelRgn* %srcPR, i8* %52, i32 %53, i32 %add37, i32 %sub38)
  %57 = load i8*, i8** %dest, align 8
  store i8* %57, i8** %d, align 8
  store i32 0, i32* %col, align 4
  br label %for.cond.39

for.cond.39:                                      ; preds = %for.inc, %for.body
  %58 = load i32, i32* %col, align 4
  %59 = load i32, i32* %x2, align 4
  %60 = load i32, i32* %x1, align 4
  %sub40 = sub nsw i32 %59, %60
  %cmp41 = icmp slt i32 %58, %sub40
  br i1 %cmp41, label %for.body.43, label %for.end

for.body.43:                                      ; preds = %for.cond.39
  %61 = load i32, i32* %col, align 4
  %62 = load i32, i32* %src_bytes, align 4
  %mul44 = mul nsw i32 %61, %62
  store i32 %mul44, i32* %offb, align 4
  %63 = load i32, i32* %offb, align 4
  %add45 = add nsw i32 %63, 1
  store i32 %add45, i32* %off1, align 4
  %64 = load i32, i32* %offb, align 4
  %65 = load i32, i32* %src_bytes, align 4
  %sub46 = sub nsw i32 %64, %65
  %idxprom = sext i32 %sub46 to i64
  %66 = load i8*, i8** %pr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %66, i64 %idxprom
  %67 = load i8, i8* %arrayidx, align 1
  %conv47 = zext i8 %67 to i32
  %conv48 = sitofp i32 %conv47 to double
  %mul49 = fmul double 2.560000e+02, %conv48
  %68 = load i32, i32* %off1, align 4
  %69 = load i32, i32* %src_bytes, align 4
  %sub50 = sub nsw i32 %68, %69
  %idxprom51 = sext i32 %sub50 to i64
  %70 = load i8*, i8** %pr, align 8
  %arrayidx52 = getelementptr inbounds i8, i8* %70, i64 %idxprom51
  %71 = load i8, i8* %arrayidx52, align 1
  %conv53 = zext i8 %71 to i32
  %conv54 = sitofp i32 %conv53 to double
  %add55 = fadd double %mul49, %conv54
  %72 = load i32, i32* %offb, align 4
  %idxprom56 = sext i32 %72 to i64
  %73 = load i8*, i8** %pr, align 8
  %arrayidx57 = getelementptr inbounds i8, i8* %73, i64 %idxprom56
  %74 = load i8, i8* %arrayidx57, align 1
  %conv58 = zext i8 %74 to i32
  %conv59 = sitofp i32 %conv58 to double
  %mul60 = fmul double 2.560000e+02, %conv59
  %add61 = fadd double %add55, %mul60
  %75 = load i32, i32* %off1, align 4
  %idxprom62 = sext i32 %75 to i64
  %76 = load i8*, i8** %pr, align 8
  %arrayidx63 = getelementptr inbounds i8, i8* %76, i64 %idxprom62
  %77 = load i8, i8* %arrayidx63, align 1
  %conv64 = zext i8 %77 to i32
  %conv65 = sitofp i32 %conv64 to double
  %add66 = fadd double %add61, %conv65
  %78 = load i32, i32* %offb, align 4
  %79 = load i32, i32* %src_bytes, align 4
  %add67 = add nsw i32 %78, %79
  %idxprom68 = sext i32 %add67 to i64
  %80 = load i8*, i8** %pr, align 8
  %arrayidx69 = getelementptr inbounds i8, i8* %80, i64 %idxprom68
  %81 = load i8, i8* %arrayidx69, align 1
  %conv70 = zext i8 %81 to i32
  %conv71 = sitofp i32 %conv70 to double
  %mul72 = fmul double 2.560000e+02, %conv71
  %add73 = fadd double %add66, %mul72
  %82 = load i32, i32* %off1, align 4
  %83 = load i32, i32* %src_bytes, align 4
  %add74 = add nsw i32 %82, %83
  %idxprom75 = sext i32 %add74 to i64
  %84 = load i8*, i8** %pr, align 8
  %arrayidx76 = getelementptr inbounds i8, i8* %84, i64 %idxprom75
  %85 = load i8, i8* %arrayidx76, align 1
  %conv77 = zext i8 %85 to i32
  %conv78 = sitofp i32 %conv77 to double
  %add79 = fadd double %add73, %conv78
  %86 = load i32, i32* %offb, align 4
  %87 = load i32, i32* %src_bytes, align 4
  %sub80 = sub nsw i32 %86, %87
  %idxprom81 = sext i32 %sub80 to i64
  %88 = load i8*, i8** %cr, align 8
  %arrayidx82 = getelementptr inbounds i8, i8* %88, i64 %idxprom81
  %89 = load i8, i8* %arrayidx82, align 1
  %conv83 = zext i8 %89 to i32
  %conv84 = sitofp i32 %conv83 to double
  %mul85 = fmul double 2.560000e+02, %conv84
  %add86 = fadd double %add79, %mul85
  %90 = load i32, i32* %off1, align 4
  %91 = load i32, i32* %src_bytes, align 4
  %sub87 = sub nsw i32 %90, %91
  %idxprom88 = sext i32 %sub87 to i64
  %92 = load i8*, i8** %cr, align 8
  %arrayidx89 = getelementptr inbounds i8, i8* %92, i64 %idxprom88
  %93 = load i8, i8* %arrayidx89, align 1
  %conv90 = zext i8 %93 to i32
  %conv91 = sitofp i32 %conv90 to double
  %add92 = fadd double %add86, %conv91
  %94 = load i32, i32* %offb, align 4
  %idxprom93 = sext i32 %94 to i64
  %95 = load i8*, i8** %cr, align 8
  %arrayidx94 = getelementptr inbounds i8, i8* %95, i64 %idxprom93
  %96 = load i8, i8* %arrayidx94, align 1
  %conv95 = zext i8 %96 to i32
  %conv96 = sitofp i32 %conv95 to double
  %mul97 = fmul double 2.560000e+02, %conv96
  %add98 = fadd double %add92, %mul97
  %97 = load i32, i32* %off1, align 4
  %idxprom99 = sext i32 %97 to i64
  %98 = load i8*, i8** %cr, align 8
  %arrayidx100 = getelementptr inbounds i8, i8* %98, i64 %idxprom99
  %99 = load i8, i8* %arrayidx100, align 1
  %conv101 = zext i8 %99 to i32
  %conv102 = sitofp i32 %conv101 to double
  %add103 = fadd double %add98, %conv102
  %100 = load i32, i32* %offb, align 4
  %101 = load i32, i32* %src_bytes, align 4
  %add104 = add nsw i32 %100, %101
  %idxprom105 = sext i32 %add104 to i64
  %102 = load i8*, i8** %cr, align 8
  %arrayidx106 = getelementptr inbounds i8, i8* %102, i64 %idxprom105
  %103 = load i8, i8* %arrayidx106, align 1
  %conv107 = zext i8 %103 to i32
  %conv108 = sitofp i32 %conv107 to double
  %mul109 = fmul double 2.560000e+02, %conv108
  %add110 = fadd double %add103, %mul109
  %104 = load i32, i32* %off1, align 4
  %105 = load i32, i32* %src_bytes, align 4
  %add111 = add nsw i32 %104, %105
  %idxprom112 = sext i32 %add111 to i64
  %106 = load i8*, i8** %cr, align 8
  %arrayidx113 = getelementptr inbounds i8, i8* %106, i64 %idxprom112
  %107 = load i8, i8* %arrayidx113, align 1
  %conv114 = zext i8 %107 to i32
  %conv115 = sitofp i32 %conv114 to double
  %add116 = fadd double %add110, %conv115
  %108 = load i32, i32* %offb, align 4
  %109 = load i32, i32* %src_bytes, align 4
  %sub117 = sub nsw i32 %108, %109
  %idxprom118 = sext i32 %sub117 to i64
  %110 = load i8*, i8** %nr, align 8
  %arrayidx119 = getelementptr inbounds i8, i8* %110, i64 %idxprom118
  %111 = load i8, i8* %arrayidx119, align 1
  %conv120 = zext i8 %111 to i32
  %conv121 = sitofp i32 %conv120 to double
  %mul122 = fmul double 2.560000e+02, %conv121
  %add123 = fadd double %add116, %mul122
  %112 = load i32, i32* %off1, align 4
  %113 = load i32, i32* %src_bytes, align 4
  %sub124 = sub nsw i32 %112, %113
  %idxprom125 = sext i32 %sub124 to i64
  %114 = load i8*, i8** %nr, align 8
  %arrayidx126 = getelementptr inbounds i8, i8* %114, i64 %idxprom125
  %115 = load i8, i8* %arrayidx126, align 1
  %conv127 = zext i8 %115 to i32
  %conv128 = sitofp i32 %conv127 to double
  %add129 = fadd double %add123, %conv128
  %116 = load i32, i32* %offb, align 4
  %idxprom130 = sext i32 %116 to i64
  %117 = load i8*, i8** %nr, align 8
  %arrayidx131 = getelementptr inbounds i8, i8* %117, i64 %idxprom130
  %118 = load i8, i8* %arrayidx131, align 1
  %conv132 = zext i8 %118 to i32
  %conv133 = sitofp i32 %conv132 to double
  %mul134 = fmul double 2.560000e+02, %conv133
  %add135 = fadd double %add129, %mul134
  %119 = load i32, i32* %off1, align 4
  %idxprom136 = sext i32 %119 to i64
  %120 = load i8*, i8** %nr, align 8
  %arrayidx137 = getelementptr inbounds i8, i8* %120, i64 %idxprom136
  %121 = load i8, i8* %arrayidx137, align 1
  %conv138 = zext i8 %121 to i32
  %conv139 = sitofp i32 %conv138 to double
  %add140 = fadd double %add135, %conv139
  %122 = load i32, i32* %offb, align 4
  %123 = load i32, i32* %src_bytes, align 4
  %add141 = add nsw i32 %122, %123
  %idxprom142 = sext i32 %add141 to i64
  %124 = load i8*, i8** %nr, align 8
  %arrayidx143 = getelementptr inbounds i8, i8* %124, i64 %idxprom142
  %125 = load i8, i8* %arrayidx143, align 1
  %conv144 = zext i8 %125 to i32
  %conv145 = sitofp i32 %conv144 to double
  %mul146 = fmul double 2.560000e+02, %conv145
  %add147 = fadd double %add140, %mul146
  %126 = load i32, i32* %off1, align 4
  %127 = load i32, i32* %src_bytes, align 4
  %add148 = add nsw i32 %126, %127
  %idxprom149 = sext i32 %add148 to i64
  %128 = load i8*, i8** %nr, align 8
  %arrayidx150 = getelementptr inbounds i8, i8* %128, i64 %idxprom149
  %129 = load i8, i8* %arrayidx150, align 1
  %conv151 = zext i8 %129 to i32
  %conv152 = sitofp i32 %conv151 to double
  %add153 = fadd double %add147, %conv152
  store double %add153, double* %pval, align 8
  %130 = load double, double* %pval, align 8
  %div = fdiv double %130, 9.000000e+00
  store double %div, double* %pval, align 8
  %131 = load double, double* %pval, align 8
  %conv154 = fptosi double %131 to i32
  %shr = ashr i32 %conv154, 8
  %conv155 = trunc i32 %shr to i8
  %132 = load i8*, i8** %d, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %132, i32 1
  store i8* %incdec.ptr, i8** %d, align 8
  store i8 %conv155, i8* %132, align 1
  %133 = load double, double* %pval, align 8
  %conv156 = fptosi double %133 to i32
  %rem = srem i32 %conv156, 256
  %conv157 = trunc i32 %rem to i8
  %134 = load i8*, i8** %d, align 8
  %incdec.ptr158 = getelementptr inbounds i8, i8* %134, i32 1
  store i8* %incdec.ptr158, i8** %d, align 8
  store i8 %conv157, i8* %134, align 1
  %135 = load i32, i32* %dest_bytes_inc, align 4
  %136 = load i8*, i8** %d, align 8
  %idx.ext159 = sext i32 %135 to i64
  %add.ptr160 = getelementptr inbounds i8, i8* %136, i64 %idx.ext159
  store i8* %add.ptr160, i8** %d, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.43
  %137 = load i32, i32* %col, align 4
  %inc = add nsw i32 %137, 1
  store i32 %inc, i32* %col, align 4
  br label %for.cond.39

for.end:                                          ; preds = %for.cond.39
  %138 = load i8*, i8** %dest, align 8
  %139 = load i32, i32* %x1, align 4
  %140 = load i32, i32* %row, align 4
  %141 = load i32, i32* %x2, align 4
  %142 = load i32, i32* %x1, align 4
  %sub161 = sub nsw i32 %141, %142
  call void @gimp_pixel_rgn_set_row(%struct._GimpPixelRgn* %destPR, i8* %138, i32 %139, i32 %140, i32 %sub161)
  %143 = load i8*, i8** %pr, align 8
  store i8* %143, i8** %tmp, align 8
  %144 = load i8*, i8** %cr, align 8
  store i8* %144, i8** %pr, align 8
  %145 = load i8*, i8** %nr, align 8
  store i8* %145, i8** %cr, align 8
  %146 = load i8*, i8** %tmp, align 8
  store i8* %146, i8** %nr, align 8
  %147 = load i32, i32* %row, align 4
  %rem162 = srem i32 %147, 8
  %cmp163 = icmp eq i32 %rem162, 0
  br i1 %cmp163, label %if.then.165, label %if.end.171

if.then.165:                                      ; preds = %for.end
  %148 = load i32, i32* %row, align 4
  %conv166 = sitofp i32 %148 to double
  %149 = load i32, i32* %y2, align 4
  %150 = load i32, i32* %y1, align 4
  %sub167 = sub nsw i32 %149, %150
  %conv168 = sitofp i32 %sub167 to double
  %div169 = fdiv double %conv166, %conv168
  %call170 = call i32 @gimp_progress_update(double %div169)
  br label %if.end.171

if.end.171:                                       ; preds = %if.then.165, %for.end
  br label %for.inc.172

for.inc.172:                                      ; preds = %if.end.171
  %151 = load i32, i32* %row, align 4
  %inc173 = add nsw i32 %151, 1
  store i32 %inc173, i32* %row, align 4
  br label %for.cond

for.end.174:                                      ; preds = %for.cond
  %call175 = call i32 @gimp_progress_update(double 1.000000e+00)
  %152 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  call void @gimp_drawable_flush(%struct._GimpDrawable* %152)
  %153 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id176 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %153, i32 0, i32 0
  %154 = load i32, i32* %drawable_id176, align 4
  %call177 = call i32 @gimp_drawable_merge_shadow(i32 %154, i32 1)
  %155 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id178 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %155, i32 0, i32 0
  %156 = load i32, i32* %drawable_id178, align 4
  %157 = load i32, i32* %x1, align 4
  %158 = load i32, i32* %y1, align 4
  %159 = load i32, i32* %x2, align 4
  %160 = load i32, i32* %x1, align 4
  %sub179 = sub nsw i32 %159, %160
  %161 = load i32, i32* %y2, align 4
  %162 = load i32, i32* %y1, align 4
  %sub180 = sub nsw i32 %161, %162
  %call181 = call i32 @gimp_drawable_update(i32 %156, i32 %157, i32 %158, i32 %sub179, i32 %sub180)
  %163 = load i8*, i8** %prev_row, align 8
  call void @g_free(i8* %163)
  %164 = load i8*, i8** %cur_row, align 8
  call void @g_free(i8* %164)
  %165 = load i8*, i8** %next_row, align 8
  call void @g_free(i8* %165)
  %166 = load i8*, i8** %dest, align 8
  call void @g_free(i8* %166)
  br label %return

return:                                           ; preds = %for.end.174, %if.then
  ret void
}

declare void @g_free(i8*) #1

declare void @gimp_pixel_rgn_get_row(%struct._GimpPixelRgn*, i8*, i32, i32, i32) #1

declare i32 @gimp_drawable_merge_shadow(i32, i32) #1

declare %struct._GRand* @g_rand_new() #1

declare i32 @gimp_drawable_bpp(i32) #1

declare i32 @gimp_drawable_has_alpha(i32) #1

declare i8* @gimp_pixel_rgns_register(i32, ...) #1

; Function Attrs: nounwind uwtable
define internal double @warp_map_mag_give_value(i8* %pt, i32 %alpha, i32 %bytes) #0 {
entry:
  %pt.addr = alloca i8*, align 8
  %alpha.addr = alloca i32, align 4
  %bytes.addr = alloca i32, align 4
  %ret = alloca double, align 8
  %val_alpha = alloca double, align 8
  store i8* %pt, i8** %pt.addr, align 8
  store i32 %alpha, i32* %alpha.addr, align 4
  store i32 %bytes, i32* %bytes.addr, align 4
  %0 = load i32, i32* %bytes.addr, align 4
  %cmp = icmp sge i32 %0, 3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %pt.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 0
  %2 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %3 = load i8*, i8** %pt.addr, align 8
  %arrayidx1 = getelementptr inbounds i8, i8* %3, i64 1
  %4 = load i8, i8* %arrayidx1, align 1
  %conv2 = zext i8 %4 to i32
  %add = add nsw i32 %conv, %conv2
  %5 = load i8*, i8** %pt.addr, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %5, i64 2
  %6 = load i8, i8* %arrayidx3, align 1
  %conv4 = zext i8 %6 to i32
  %add5 = add nsw i32 %add, %conv4
  %conv6 = sitofp i32 %add5 to double
  %div = fdiv double %conv6, 3.000000e+00
  store double %div, double* %ret, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %7 = load i8*, i8** %pt.addr, align 8
  %8 = load i8, i8* %7, align 1
  %conv7 = uitofp i8 %8 to double
  store double %conv7, double* %ret, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %9 = load i32, i32* %alpha.addr, align 4
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %if.then.8, label %if.end.12

if.then.8:                                        ; preds = %if.end
  %10 = load i32, i32* %bytes.addr, align 4
  %sub = sub nsw i32 %10, 1
  %idxprom = sext i32 %sub to i64
  %11 = load i8*, i8** %pt.addr, align 8
  %arrayidx9 = getelementptr inbounds i8, i8* %11, i64 %idxprom
  %12 = load i8, i8* %arrayidx9, align 1
  %conv10 = uitofp i8 %12 to double
  store double %conv10, double* %val_alpha, align 8
  %13 = load double, double* %ret, align 8
  %14 = load double, double* %val_alpha, align 8
  %mul = fmul double %13, %14
  %div11 = fdiv double %mul, 2.550000e+02
  store double %div11, double* %ret, align 8
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.8, %if.end
  %15 = load double, double* %ret, align 8
  ret double %15
}

declare double @g_rand_double_range(%struct._GRand*, double, double) #1

; Function Attrs: nounwind uwtable
define internal %struct._GimpTile* @warp_pixel(%struct._GimpDrawable* %drawable, %struct._GimpTile* %tile, i32 %width, i32 %height, i32 %x1, i32 %y1, i32 %x2, i32 %y2, i32 %x, i32 %y, i32* %row, i32* %col, i8* %pixel) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %tile.addr = alloca %struct._GimpTile*, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %x1.addr = alloca i32, align 4
  %y1.addr = alloca i32, align 4
  %x2.addr = alloca i32, align 4
  %y2.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %row.addr = alloca i32*, align 8
  %col.addr = alloca i32*, align 8
  %pixel.addr = alloca i8*, align 8
  %data = alloca i8*, align 8
  %b = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._GimpTile* %tile, %struct._GimpTile** %tile.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store i32 %x1, i32* %x1.addr, align 4
  store i32 %y1, i32* %y1.addr, align 4
  store i32 %x2, i32* %x2.addr, align 4
  store i32 %y2, i32* %y2.addr, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32* %row, i32** %row.addr, align 8
  store i32* %col, i32** %col.addr, align 8
  store i8* %pixel, i8** %pixel.addr, align 8
  %0 = load i32, i32* getelementptr inbounds (%struct.WarpVals, %struct.WarpVals* @dvals, i32 0, i32 5), align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else.13

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %x.addr, align 4
  %cmp1 = icmp slt i32 %1, 0
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  %2 = load i32, i32* %width.addr, align 4
  %3 = load i32, i32* %x.addr, align 4
  %sub = sub nsw i32 0, %3
  %4 = load i32, i32* %width.addr, align 4
  %rem = srem i32 %sub, %4
  %sub3 = sub nsw i32 %2, %rem
  store i32 %sub3, i32* %x.addr, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  %5 = load i32, i32* %width.addr, align 4
  %6 = load i32, i32* %x.addr, align 4
  %rem4 = srem i32 %6, %5
  store i32 %rem4, i32* %x.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.2
  %7 = load i32, i32* %y.addr, align 4
  %cmp5 = icmp slt i32 %7, 0
  br i1 %cmp5, label %if.then.6, label %if.else.10

if.then.6:                                        ; preds = %if.end
  %8 = load i32, i32* %height.addr, align 4
  %9 = load i32, i32* %y.addr, align 4
  %sub7 = sub nsw i32 0, %9
  %10 = load i32, i32* %height.addr, align 4
  %rem8 = srem i32 %sub7, %10
  %sub9 = sub nsw i32 %8, %rem8
  store i32 %sub9, i32* %y.addr, align 4
  br label %if.end.12

if.else.10:                                       ; preds = %if.end
  %11 = load i32, i32* %height.addr, align 4
  %12 = load i32, i32* %y.addr, align 4
  %rem11 = srem i32 %12, %11
  store i32 %rem11, i32* %y.addr, align 4
  br label %if.end.12

if.end.12:                                        ; preds = %if.else.10, %if.then.6
  br label %if.end.35

if.else.13:                                       ; preds = %entry
  %13 = load i32, i32* getelementptr inbounds (%struct.WarpVals, %struct.WarpVals* @dvals, i32 0, i32 5), align 4
  %cmp14 = icmp eq i32 %13, 1
  br i1 %cmp14, label %if.then.15, label %if.end.34

if.then.15:                                       ; preds = %if.else.13
  %14 = load i32, i32* %x.addr, align 4
  %cmp16 = icmp slt i32 %14, 0
  br i1 %cmp16, label %if.then.17, label %if.else.18

if.then.17:                                       ; preds = %if.then.15
  store i32 0, i32* %x.addr, align 4
  br label %if.end.24

if.else.18:                                       ; preds = %if.then.15
  %15 = load i32, i32* %x.addr, align 4
  %16 = load i32, i32* %width.addr, align 4
  %sub19 = sub nsw i32 %16, 1
  %cmp20 = icmp sgt i32 %15, %sub19
  br i1 %cmp20, label %if.then.21, label %if.end.23

if.then.21:                                       ; preds = %if.else.18
  %17 = load i32, i32* %width.addr, align 4
  %sub22 = sub nsw i32 %17, 1
  store i32 %sub22, i32* %x.addr, align 4
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.21, %if.else.18
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %if.then.17
  %18 = load i32, i32* %y.addr, align 4
  %cmp25 = icmp slt i32 %18, 0
  br i1 %cmp25, label %if.then.26, label %if.else.27

if.then.26:                                       ; preds = %if.end.24
  store i32 0, i32* %y.addr, align 4
  br label %if.end.33

if.else.27:                                       ; preds = %if.end.24
  %19 = load i32, i32* %y.addr, align 4
  %20 = load i32, i32* %height.addr, align 4
  %sub28 = sub nsw i32 %20, 1
  %cmp29 = icmp sgt i32 %19, %sub28
  br i1 %cmp29, label %if.then.30, label %if.end.32

if.then.30:                                       ; preds = %if.else.27
  %21 = load i32, i32* %height.addr, align 4
  %sub31 = sub nsw i32 %21, 1
  store i32 %sub31, i32* %y.addr, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.30, %if.else.27
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.then.26
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %if.else.13
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %if.end.12
  %22 = load i32, i32* %x.addr, align 4
  %23 = load i32, i32* %x1.addr, align 4
  %cmp36 = icmp sge i32 %22, %23
  br i1 %cmp36, label %land.lhs.true, label %if.else.56

land.lhs.true:                                    ; preds = %if.end.35
  %24 = load i32, i32* %y.addr, align 4
  %25 = load i32, i32* %y1.addr, align 4
  %cmp37 = icmp sge i32 %24, %25
  br i1 %cmp37, label %land.lhs.true.38, label %if.else.56

land.lhs.true.38:                                 ; preds = %land.lhs.true
  %26 = load i32, i32* %x.addr, align 4
  %27 = load i32, i32* %x2.addr, align 4
  %cmp39 = icmp slt i32 %26, %27
  br i1 %cmp39, label %land.lhs.true.40, label %if.else.56

land.lhs.true.40:                                 ; preds = %land.lhs.true.38
  %28 = load i32, i32* %y.addr, align 4
  %29 = load i32, i32* %y2.addr, align 4
  %cmp41 = icmp slt i32 %28, %29
  br i1 %cmp41, label %if.then.42, label %if.else.56

if.then.42:                                       ; preds = %land.lhs.true.40
  %30 = load i32, i32* %x.addr, align 4
  %31 = load i32, i32* @tile_width, align 4
  %div = udiv i32 %30, %31
  %32 = load i32*, i32** %col.addr, align 8
  %33 = load i32, i32* %32, align 4
  %cmp43 = icmp ne i32 %div, %33
  br i1 %cmp43, label %if.then.46, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.42
  %34 = load i32, i32* %y.addr, align 4
  %35 = load i32, i32* @tile_height, align 4
  %div44 = udiv i32 %34, %35
  %36 = load i32*, i32** %row.addr, align 8
  %37 = load i32, i32* %36, align 4
  %cmp45 = icmp ne i32 %div44, %37
  br i1 %cmp45, label %if.then.46, label %if.end.51

if.then.46:                                       ; preds = %lor.lhs.false, %if.then.42
  %38 = load i32, i32* %x.addr, align 4
  %39 = load i32, i32* @tile_width, align 4
  %div47 = udiv i32 %38, %39
  %40 = load i32*, i32** %col.addr, align 8
  store i32 %div47, i32* %40, align 4
  %41 = load i32, i32* %y.addr, align 4
  %42 = load i32, i32* @tile_height, align 4
  %div48 = udiv i32 %41, %42
  %43 = load i32*, i32** %row.addr, align 8
  store i32 %div48, i32* %43, align 4
  %44 = load %struct._GimpTile*, %struct._GimpTile** %tile.addr, align 8
  %tobool = icmp ne %struct._GimpTile* %44, null
  br i1 %tobool, label %if.then.49, label %if.end.50

if.then.49:                                       ; preds = %if.then.46
  %45 = load %struct._GimpTile*, %struct._GimpTile** %tile.addr, align 8
  call void @gimp_tile_unref(%struct._GimpTile* %45, i32 0)
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.49, %if.then.46
  %46 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %47 = load i32*, i32** %row.addr, align 8
  %48 = load i32, i32* %47, align 4
  %49 = load i32*, i32** %col.addr, align 8
  %50 = load i32, i32* %49, align 4
  %call = call %struct._GimpTile* @gimp_drawable_get_tile(%struct._GimpDrawable* %46, i32 0, i32 %48, i32 %50)
  store %struct._GimpTile* %call, %struct._GimpTile** %tile.addr, align 8
  %51 = load %struct._GimpTile*, %struct._GimpTile** %tile.addr, align 8
  call void @gimp_tile_ref(%struct._GimpTile* %51)
  br label %if.end.51

if.end.51:                                        ; preds = %if.end.50, %lor.lhs.false
  %52 = load %struct._GimpTile*, %struct._GimpTile** %tile.addr, align 8
  %data52 = getelementptr inbounds %struct._GimpTile, %struct._GimpTile* %52, i32 0, i32 6
  %53 = load i8*, i8** %data52, align 8
  %54 = load %struct._GimpTile*, %struct._GimpTile** %tile.addr, align 8
  %bpp = getelementptr inbounds %struct._GimpTile, %struct._GimpTile* %54, i32 0, i32 2
  %55 = load i32, i32* %bpp, align 4
  %56 = load %struct._GimpTile*, %struct._GimpTile** %tile.addr, align 8
  %ewidth = getelementptr inbounds %struct._GimpTile, %struct._GimpTile* %56, i32 0, i32 0
  %57 = load i32, i32* %ewidth, align 4
  %58 = load i32, i32* %y.addr, align 4
  %59 = load i32, i32* @tile_height, align 4
  %rem53 = urem i32 %58, %59
  %mul = mul i32 %57, %rem53
  %60 = load i32, i32* %x.addr, align 4
  %61 = load i32, i32* @tile_width, align 4
  %rem54 = urem i32 %60, %61
  %add = add i32 %mul, %rem54
  %mul55 = mul i32 %55, %add
  %idx.ext = zext i32 %mul55 to i64
  %add.ptr = getelementptr inbounds i8, i8* %53, i64 %idx.ext
  store i8* %add.ptr, i8** %data, align 8
  br label %if.end.61

if.else.56:                                       ; preds = %land.lhs.true.40, %land.lhs.true.38, %land.lhs.true, %if.end.35
  %62 = load i32, i32* getelementptr inbounds (%struct.WarpVals, %struct.WarpVals* @dvals, i32 0, i32 5), align 4
  %cmp57 = icmp eq i32 %62, 2
  br i1 %cmp57, label %if.then.58, label %if.else.59

if.then.58:                                       ; preds = %if.else.56
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @warp_pixel.empty_pixel, i32 0, i32 0), i8** %data, align 8
  br label %if.end.60

if.else.59:                                       ; preds = %if.else.56
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @color_pixel, i32 0, i32 0), i8** %data, align 8
  br label %if.end.60

if.end.60:                                        ; preds = %if.else.59, %if.then.58
  br label %if.end.61

if.end.61:                                        ; preds = %if.end.60, %if.end.51
  store i32 0, i32* %b, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.61
  %63 = load i32, i32* %b, align 4
  %64 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %bpp62 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %64, i32 0, i32 3
  %65 = load i32, i32* %bpp62, align 4
  %cmp63 = icmp ult i32 %63, %65
  br i1 %cmp63, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %66 = load i32, i32* %b, align 4
  %idxprom = sext i32 %66 to i64
  %67 = load i8*, i8** %data, align 8
  %arrayidx = getelementptr inbounds i8, i8* %67, i64 %idxprom
  %68 = load i8, i8* %arrayidx, align 1
  %69 = load i32, i32* %b, align 4
  %idxprom64 = sext i32 %69 to i64
  %70 = load i8*, i8** %pixel.addr, align 8
  %arrayidx65 = getelementptr inbounds i8, i8* %70, i64 %idxprom64
  store i8 %68, i8* %arrayidx65, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %71 = load i32, i32* %b, align 4
  %inc = add nsw i32 %71, 1
  store i32 %inc, i32* %b, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %72 = load %struct._GimpTile*, %struct._GimpTile** %tile.addr, align 8
  ret %struct._GimpTile* %72
}

declare i32 @gimp_bilinear_32(double, double, i32*) #1

declare zeroext i8 @gimp_bilinear_8(double, double, i8*) #1

declare i8* @gimp_pixel_rgns_process(i8*) #1

declare void @gimp_tile_unref(%struct._GimpTile*, i32) #1

declare void @g_rand_free(%struct._GRand*) #1

declare %struct._GimpTile* @gimp_drawable_get_tile(%struct._GimpDrawable*, i32, i32, i32) #1

declare void @gimp_tile_ref(%struct._GimpTile*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
