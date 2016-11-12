; ModuleID = './plug-ins/common/sinus.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpPlugInInfo = type { void ()*, void ()*, void ()*, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* }
%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpParamDef = type { i32, i8*, i8* }
%struct.SinusVals = type { double, double, double, double, i32, i32, i64, i64, i64, %struct._GimpRGB, %struct._GimpRGB, i32 }
%struct._GimpDrawable = type { i32, i32, i32, i32, i32, i32, %struct._GimpTile*, %struct._GimpTile* }
%struct._GimpTile = type { i32, i32, i32, i32, i16, i8, i8*, %struct._GimpDrawable* }
%struct.mwPreview = type { i32, i32, i32, double, i8* }
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
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GtkNotebook = type { %struct._GtkContainer, i8*, %struct._GList*, %struct._GList*, %struct._GList*, %struct._GtkWidget*, %struct._GdkDrawable*, i32, i16, i16, i24 }
%struct._GtkTable = type { %struct._GtkContainer, %struct._GList*, %struct._GtkTableRowCol*, %struct._GtkTableRowCol*, i16, i16, i16, i16, i8 }
%struct._GtkTableRowCol = type { i16, i16, i16, i8 }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GtkLabel = type { %struct._GtkMisc, i8*, i16, i32, i8*, %struct._PangoAttrList*, %struct._PangoAttrList*, %struct._PangoLayout*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkLabelSelectionInfo* }
%struct._GtkMisc = type { %struct._GtkWidget, float, float, i16, i16 }
%struct._PangoAttrList = type opaque
%struct._PangoLayout = type opaque
%struct._GtkLabelSelectionInfo = type opaque
%struct._GtkSpinButton = type { %struct._GtkEntry, %struct._GtkAdjustment*, %struct._GdkDrawable*, i32, double, double, i32, i24 }
%struct._GtkEntry = type { %struct._GtkWidget, i8*, i8, i16, i16, %struct._GdkDrawable*, %struct._GtkIMContext*, %struct._GtkWidget*, i32, i32, %struct._PangoLayout*, i16, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32 }
%struct._GtkIMContext = type { %struct._GObject }
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._GtkToggleButton = type { %struct._GtkButton, i8 }
%struct._GtkButton = type { %struct._GtkBin, %struct._GdkDrawable*, i8*, i32, i16 }
%struct._GimpDialog = type { %struct._GtkDialog }
%struct.params = type { i32, i32, double, double, double, double, double, double, double, double, double, double (double)*, i8, i8, i8, i8, i32, i32, i32, i32 }
%struct._GimpPixelRgn = type { i8*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32, i8, i32 }
%struct._GtkFrame = type { %struct._GtkBin, %struct._GtkWidget*, i16, float, float, %struct._GdkRectangle }
%struct._GimpColorButton = type { %struct._GimpButton, i8*, i32, %struct._GtkWidget*, %struct._GtkWidget*, i8* }
%struct._GimpButton = type { %struct._GtkButton, i32 }
%struct._GimpPreviewArea = type { %struct._GtkDrawingArea, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8* }
%struct._GtkDrawingArea = type { %struct._GtkWidget, i8* }
%struct._GRand = type opaque

@PLUG_IN_INFO = constant %struct._GimpPlugInInfo { void ()* null, void ()* null, void ()* @query, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* @run }, align 8
@query.args = internal constant [16 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i32 0, i32 0) }, %struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.13, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.15, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.17, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.19, i32 0, i32 0) }, %struct._GimpParamDef { i32 10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.21, i32 0, i32 0) }, %struct._GimpParamDef { i32 10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.23, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.25, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.27, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.29, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.31, i32 0, i32 0) }], align 16
@.str = private unnamed_addr constant [9 x i8] c"run-mode\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"The run mode { RUN-INTERACTIVE (0), RUN-NONINTERACTIVE (1) }\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Input image (unused)\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"drawable\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"Input drawable\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"xscale\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"Scale value for x axis\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"yscale\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"Scale value dor y axis\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"complex\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"Complexity factor\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"seed\00", align 1
@.str.13 = private unnamed_addr constant [39 x i8] c"Seed value for random number generator\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"tiling\00", align 1
@.str.15 = private unnamed_addr constant [40 x i8] c"If set, the pattern generated will tile\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"perturb\00", align 1
@.str.17 = private unnamed_addr constant [50 x i8] c"If set, the pattern is a little more distorted...\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"colors\00", align 1
@.str.19 = private unnamed_addr constant [59 x i8] c"where to take the colors (0= B&W,  1= fg/bg, 2= col1/col2)\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"col1\00", align 1
@.str.21 = private unnamed_addr constant [30 x i8] c"fist color (sometimes unused)\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"col2\00", align 1
@.str.23 = private unnamed_addr constant [32 x i8] c"second color (sometimes unused)\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"alpha1\00", align 1
@.str.25 = private unnamed_addr constant [69 x i8] c"alpha for the first color (used if the drawable has an alpha chanel)\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"alpha2\00", align 1
@.str.27 = private unnamed_addr constant [70 x i8] c"alpha for the second color (used if the drawable has an alpha chanel)\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"blend\00", align 1
@.str.29 = private unnamed_addr constant [38 x i8] c"0= linear, 1= bilinear, 2= sinusoidal\00", align 1
@.str.30 = private unnamed_addr constant [12 x i8] c"blend-power\00", align 1
@.str.31 = private unnamed_addr constant [31 x i8] c"Power used to strech the blend\00", align 1
@.str.32 = private unnamed_addr constant [14 x i8] c"plug-in-sinus\00", align 1
@.str.33 = private unnamed_addr constant [37 x i8] c"Generate complex sinusoidal textures\00", align 1
@.str.34 = private unnamed_addr constant [19 x i8] c"FIX ME: sinus help\00", align 1
@.str.35 = private unnamed_addr constant [16 x i8] c"Xavier Bouchoux\00", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c"1997\00", align 1
@.str.37 = private unnamed_addr constant [10 x i8] c"_Sinus...\00", align 1
@.str.38 = private unnamed_addr constant [12 x i8] c"RGB*, GRAY*\00", align 1
@.str.39 = private unnamed_addr constant [31 x i8] c"<Image>/Filters/Render/Pattern\00", align 1
@run.values = internal global [1 x %struct._GimpParam] zeroinitializer, align 16
@.str.40 = private unnamed_addr constant [20 x i8] c"gimp20-std-plug-ins\00", align 1
@.str.41 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@svals = internal global %struct.SinusVals { double 1.500000e+01, double 1.500000e+01, double 1.000000e+00, double 0.000000e+00, i32 42, i32 1, i64 1, i64 0, i64 2, %struct._GimpRGB { double 1.000000e+00, double 1.000000e+00, double 0.000000e+00, double 1.000000e+00 }, %struct._GimpRGB { double 0.000000e+00, double 0.000000e+00, double 1.000000e+00, double 1.000000e+00 }, i32 0 }, align 8
@drawable = internal global %struct._GimpDrawable* null, align 8
@thePreview = internal global %struct.mwPreview* null, align 8
@drawable_is_grayscale = internal global i32 0, align 4
@.str.42 = private unnamed_addr constant [17 x i8] c"Sinus: rendering\00", align 1
@.str.43 = private unnamed_addr constant [6 x i8] c"sinus\00", align 1
@.str.44 = private unnamed_addr constant [6 x i8] c"Sinus\00", align 1
@.str.45 = private unnamed_addr constant [11 x i8] c"gimp-sinus\00", align 1
@.str.46 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.47 = private unnamed_addr constant [7 x i8] c"gtk-ok\00", align 1
@.str.48 = private unnamed_addr constant [17 x i8] c"Drawing Settings\00", align 1
@.str.49 = private unnamed_addr constant [10 x i8] c"_X scale:\00", align 1
@.str.50 = private unnamed_addr constant [14 x i8] c"value-changed\00", align 1
@.str.51 = private unnamed_addr constant [10 x i8] c"_Y scale:\00", align 1
@.str.52 = private unnamed_addr constant [13 x i8] c"Co_mplexity:\00", align 1
@.str.53 = private unnamed_addr constant [21 x i8] c"Calculation Settings\00", align 1
@.str.54 = private unnamed_addr constant [14 x i8] c"R_andom seed:\00", align 1
@.str.55 = private unnamed_addr constant [11 x i8] c"spinbutton\00", align 1
@.str.56 = private unnamed_addr constant [15 x i8] c"_Force tiling?\00", align 1
@.str.57 = private unnamed_addr constant [8 x i8] c"toggled\00", align 1
@.str.58 = private unnamed_addr constant [7 x i8] c"_Ideal\00", align 1
@.str.59 = private unnamed_addr constant [11 x i8] c"_Distorted\00", align 1
@.str.60 = private unnamed_addr constant [10 x i8] c"_Settings\00", align 1
@.str.61 = private unnamed_addr constant [7 x i8] c"Colors\00", align 1
@.str.62 = private unnamed_addr constant [32 x i8] c"The colors are white and black.\00", align 1
@.str.63 = private unnamed_addr constant [15 x i8] c"Bl_ack & white\00", align 1
@.str.64 = private unnamed_addr constant [25 x i8] c"_Foreground & background\00", align 1
@.str.65 = private unnamed_addr constant [14 x i8] c"C_hoose here:\00", align 1
@.str.66 = private unnamed_addr constant [12 x i8] c"First color\00", align 1
@.str.67 = private unnamed_addr constant [14 x i8] c"color-changed\00", align 1
@.str.68 = private unnamed_addr constant [13 x i8] c"Second color\00", align 1
@.str.69 = private unnamed_addr constant [15 x i8] c"Alpha Channels\00", align 1
@.str.70 = private unnamed_addr constant [14 x i8] c"F_irst color:\00", align 1
@.str.71 = private unnamed_addr constant [15 x i8] c"S_econd color:\00", align 1
@.str.72 = private unnamed_addr constant [8 x i8] c"Co_lors\00", align 1
@.str.73 = private unnamed_addr constant [15 x i8] c"Blend Settings\00", align 1
@.str.74 = private unnamed_addr constant [9 x i8] c"Gradient\00", align 1
@.str.75 = private unnamed_addr constant [8 x i8] c"L_inear\00", align 1
@.str.76 = private unnamed_addr constant [10 x i8] c"Bili_near\00", align 1
@.str.77 = private unnamed_addr constant [12 x i8] c"Sin_usoidal\00", align 1
@.str.78 = private unnamed_addr constant [11 x i8] c"_Exponent:\00", align 1
@.str.79 = private unnamed_addr constant [7 x i8] c"_Blend\00", align 1
@.str.80 = private unnamed_addr constant [12 x i8] c"Do _preview\00", align 1
@do_preview = internal global i32 1, align 4
@sinus_do_preview.theWidget = internal global %struct._GtkWidget* null, align 8

; Function Attrs: nounwind uwtable
define internal void @query() #0 {
entry:
  call void @gimp_install_procedure(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.38, i32 0, i32 0), i32 1, i32 16, i32 0, %struct._GimpParamDef* getelementptr inbounds ([16 x %struct._GimpParamDef], [16 x %struct._GimpParamDef]* @query.args, i32 0, i32 0), %struct._GimpParamDef* null)
  %call = call i32 @gimp_plugin_menu_register(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.39, i32 0, i32 0))
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
  %run_mode = alloca i32, align 4
  %status = alloca i32, align 4
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
  %2 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 1, i32* %2, align 4
  %3 = load %struct._GimpParam**, %struct._GimpParam*** %return_vals.addr, align 8
  store %struct._GimpParam* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i32 0), %struct._GimpParam** %3, align 8
  store i32 21, i32* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 0), align 4
  %4 = load i32, i32* %status, align 4
  store i32 %4, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %call = call i8* @gimp_locale_directory() #5
  %call1 = call i8* @bindtextdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.40, i32 0, i32 0), i8* %call) #4
  %call2 = call i8* @bind_textdomain_codeset(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.41, i32 0, i32 0)) #4
  %call3 = call i8* @textdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.40, i32 0, i32 0)) #4
  br label %do.end

do.end:                                           ; preds = %do.body
  %5 = load i32, i32* %run_mode, align 4
  switch i32 %5, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.11
    i32 2, label %sw.bb.57
  ]

sw.bb:                                            ; preds = %do.end
  %call4 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.32, i32 0, i32 0), i8* bitcast (%struct.SinusVals* @svals to i8*))
  %6 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx5 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %6, i64 2
  %data6 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx5, i32 0, i32 1
  %d_drawable = bitcast %union._GimpParamData* %data6 to i32*
  %7 = load i32, i32* %d_drawable, align 4
  %call7 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %7)
  store %struct._GimpDrawable* %call7, %struct._GimpDrawable** @drawable, align 8
  %8 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  %call8 = call %struct.mwPreview* @mw_preview_build_virgin(%struct._GimpDrawable* %8)
  store %struct.mwPreview* %call8, %struct.mwPreview** @thePreview, align 8
  %9 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %9, i32 0, i32 0
  %10 = load i32, i32* %drawable_id, align 4
  %call9 = call i32 @gimp_drawable_is_gray(i32 %10)
  store i32 %call9, i32* @drawable_is_grayscale, align 4
  %call10 = call i32 @sinus_dialog()
  %tobool = icmp ne i32 %call10, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb
  br label %return

if.end:                                           ; preds = %sw.bb
  br label %sw.epilog

sw.bb.11:                                         ; preds = %do.end
  %11 = load i32, i32* %nparams.addr, align 4
  %cmp = icmp ne i32 %11, 17
  br i1 %cmp, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %sw.bb.11
  store i32 1, i32* %status, align 4
  br label %if.end.56

if.else:                                          ; preds = %sw.bb.11
  %12 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx13 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %12, i64 3
  %data14 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx13, i32 0, i32 1
  %d_float = bitcast %union._GimpParamData* %data14 to double*
  %13 = load double, double* %d_float, align 8
  store double %13, double* getelementptr inbounds (%struct.SinusVals, %struct.SinusVals* @svals, i32 0, i32 0), align 8
  %14 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx15 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %14, i64 4
  %data16 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx15, i32 0, i32 1
  %d_float17 = bitcast %union._GimpParamData* %data16 to double*
  %15 = load double, double* %d_float17, align 8
  store double %15, double* getelementptr inbounds (%struct.SinusVals, %struct.SinusVals* @svals, i32 0, i32 1), align 8
  %16 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx18 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %16, i64 5
  %data19 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx18, i32 0, i32 1
  %d_float20 = bitcast %union._GimpParamData* %data19 to double*
  %17 = load double, double* %d_float20, align 8
  store double %17, double* getelementptr inbounds (%struct.SinusVals, %struct.SinusVals* @svals, i32 0, i32 2), align 8
  %18 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx21 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %18, i64 6
  %data22 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx21, i32 0, i32 1
  %d_int3223 = bitcast %union._GimpParamData* %data22 to i32*
  %19 = load i32, i32* %d_int3223, align 4
  store i32 %19, i32* getelementptr inbounds (%struct.SinusVals, %struct.SinusVals* @svals, i32 0, i32 4), align 4
  %20 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx24 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %20, i64 7
  %data25 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx24, i32 0, i32 1
  %d_int3226 = bitcast %union._GimpParamData* %data25 to i32*
  %21 = load i32, i32* %d_int3226, align 4
  store i32 %21, i32* getelementptr inbounds (%struct.SinusVals, %struct.SinusVals* @svals, i32 0, i32 5), align 4
  %22 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx27 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %22, i64 8
  %data28 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx27, i32 0, i32 1
  %d_int3229 = bitcast %union._GimpParamData* %data28 to i32*
  %23 = load i32, i32* %d_int3229, align 4
  %conv = sext i32 %23 to i64
  store i64 %conv, i64* getelementptr inbounds (%struct.SinusVals, %struct.SinusVals* @svals, i32 0, i32 6), align 8
  %24 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx30 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %24, i64 9
  %data31 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx30, i32 0, i32 1
  %d_int3232 = bitcast %union._GimpParamData* %data31 to i32*
  %25 = load i32, i32* %d_int3232, align 4
  %conv33 = sext i32 %25 to i64
  store i64 %conv33, i64* getelementptr inbounds (%struct.SinusVals, %struct.SinusVals* @svals, i32 0, i32 8), align 8
  %26 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx34 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %26, i64 10
  %data35 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx34, i32 0, i32 1
  %d_color = bitcast %union._GimpParamData* %data35 to %struct._GimpRGB*
  %27 = bitcast %struct._GimpRGB* %d_color to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct._GimpRGB* getelementptr inbounds (%struct.SinusVals, %struct.SinusVals* @svals, i32 0, i32 9) to i8*), i8* %27, i64 32, i32 8, i1 false)
  %28 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx36 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %28, i64 11
  %data37 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx36, i32 0, i32 1
  %d_color38 = bitcast %union._GimpParamData* %data37 to %struct._GimpRGB*
  %29 = bitcast %struct._GimpRGB* %d_color38 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct._GimpRGB* getelementptr inbounds (%struct.SinusVals, %struct.SinusVals* @svals, i32 0, i32 10) to i8*), i8* %29, i64 32, i32 8, i1 false)
  %30 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx39 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %30, i64 12
  %data40 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx39, i32 0, i32 1
  %d_float41 = bitcast %union._GimpParamData* %data40 to double*
  %31 = load double, double* %d_float41, align 8
  call void @gimp_rgb_set_alpha(%struct._GimpRGB* getelementptr inbounds (%struct.SinusVals, %struct.SinusVals* @svals, i32 0, i32 9), double %31)
  %32 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx42 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %32, i64 13
  %data43 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx42, i32 0, i32 1
  %d_float44 = bitcast %union._GimpParamData* %data43 to double*
  %33 = load double, double* %d_float44, align 8
  call void @gimp_rgb_set_alpha(%struct._GimpRGB* getelementptr inbounds (%struct.SinusVals, %struct.SinusVals* @svals, i32 0, i32 10), double %33)
  %34 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx45 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %34, i64 14
  %data46 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx45, i32 0, i32 1
  %d_int3247 = bitcast %union._GimpParamData* %data46 to i32*
  %35 = load i32, i32* %d_int3247, align 4
  %conv48 = sext i32 %35 to i64
  store i64 %conv48, i64* getelementptr inbounds (%struct.SinusVals, %struct.SinusVals* @svals, i32 0, i32 7), align 8
  %36 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx49 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %36, i64 15
  %data50 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx49, i32 0, i32 1
  %d_float51 = bitcast %union._GimpParamData* %data50 to double*
  %37 = load double, double* %d_float51, align 8
  store double %37, double* getelementptr inbounds (%struct.SinusVals, %struct.SinusVals* @svals, i32 0, i32 3), align 8
  %38 = load i32, i32* getelementptr inbounds (%struct.SinusVals, %struct.SinusVals* @svals, i32 0, i32 11), align 4
  %tobool52 = icmp ne i32 %38, 0
  br i1 %tobool52, label %if.then.53, label %if.end.55

if.then.53:                                       ; preds = %if.else
  %call54 = call i32 @g_random_int()
  store i32 %call54, i32* getelementptr inbounds (%struct.SinusVals, %struct.SinusVals* @svals, i32 0, i32 4), align 4
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.53, %if.else
  br label %if.end.56

if.end.56:                                        ; preds = %if.end.55, %if.then.12
  br label %sw.epilog

sw.bb.57:                                         ; preds = %do.end
  %call58 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.32, i32 0, i32 0), i8* bitcast (%struct.SinusVals* @svals to i8*))
  %39 = load i32, i32* getelementptr inbounds (%struct.SinusVals, %struct.SinusVals* @svals, i32 0, i32 11), align 4
  %tobool59 = icmp ne i32 %39, 0
  br i1 %tobool59, label %if.then.60, label %if.end.62

if.then.60:                                       ; preds = %sw.bb.57
  %call61 = call i32 @g_random_int()
  store i32 %call61, i32* getelementptr inbounds (%struct.SinusVals, %struct.SinusVals* @svals, i32 0, i32 4), align 4
  br label %if.end.62

if.end.62:                                        ; preds = %if.then.60, %sw.bb.57
  br label %sw.epilog

sw.default:                                       ; preds = %do.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.62, %if.end.56, %if.end
  %40 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx63 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %40, i64 2
  %data64 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx63, i32 0, i32 1
  %d_drawable65 = bitcast %union._GimpParamData* %data64 to i32*
  %41 = load i32, i32* %d_drawable65, align 4
  %call66 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %41)
  store %struct._GimpDrawable* %call66, %struct._GimpDrawable** @drawable, align 8
  %42 = load i32, i32* %status, align 4
  %cmp67 = icmp eq i32 %42, 3
  br i1 %cmp67, label %land.lhs.true, label %if.else.88

land.lhs.true:                                    ; preds = %sw.epilog
  %43 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  %drawable_id69 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %43, i32 0, i32 0
  %44 = load i32, i32* %drawable_id69, align 4
  %call70 = call i32 @gimp_drawable_is_rgb(i32 %44)
  %tobool71 = icmp ne i32 %call70, 0
  br i1 %tobool71, label %if.then.75, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %45 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  %drawable_id72 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %45, i32 0, i32 0
  %46 = load i32, i32* %drawable_id72, align 4
  %call73 = call i32 @gimp_drawable_is_gray(i32 %46)
  %tobool74 = icmp ne i32 %call73, 0
  br i1 %tobool74, label %if.then.75, label %if.else.88

if.then.75:                                       ; preds = %lor.lhs.false, %land.lhs.true
  %call76 = call i8* @gettext(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.42, i32 0, i32 0)) #4
  %call77 = call i32 @gimp_progress_init(i8* %call76)
  call void @gimp_tile_cache_ntiles(i64 1)
  call void @sinus()
  %47 = load i32, i32* %run_mode, align 4
  %cmp78 = icmp ne i32 %47, 1
  br i1 %cmp78, label %if.then.80, label %if.end.82

if.then.80:                                       ; preds = %if.then.75
  %call81 = call i32 @gimp_displays_flush()
  br label %if.end.82

if.end.82:                                        ; preds = %if.then.80, %if.then.75
  %48 = load i32, i32* %run_mode, align 4
  %cmp83 = icmp eq i32 %48, 0
  br i1 %cmp83, label %if.then.85, label %if.end.87

if.then.85:                                       ; preds = %if.end.82
  %call86 = call i32 @gimp_procedural_db_set_data(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.32, i32 0, i32 0), i8* bitcast (%struct.SinusVals* @svals to i8*), i32 136)
  br label %if.end.87

if.end.87:                                        ; preds = %if.then.85, %if.end.82
  br label %if.end.89

if.else.88:                                       ; preds = %lor.lhs.false, %sw.epilog
  store i32 0, i32* %status, align 4
  br label %if.end.89

if.end.89:                                        ; preds = %if.else.88, %if.end.87
  %49 = load i32, i32* %status, align 4
  store i32 %49, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  %50 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %50)
  br label %return

return:                                           ; preds = %if.end.89, %if.then
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

declare i32 @gimp_procedural_db_get_data(i8*, i8*) #1

declare %struct._GimpDrawable* @gimp_drawable_get(i32) #1

; Function Attrs: nounwind uwtable
define internal %struct.mwPreview* @mw_preview_build_virgin(%struct._GimpDrawable* %drw) #0 {
entry:
  %drw.addr = alloca %struct._GimpDrawable*, align 8
  %mwp = alloca %struct.mwPreview*, align 8
  store %struct._GimpDrawable* %drw, %struct._GimpDrawable** %drw.addr, align 8
  %call = call noalias i8* @g_malloc_n(i64 1, i64 32)
  %0 = bitcast i8* %call to %struct.mwPreview*
  store %struct.mwPreview* %0, %struct.mwPreview** %mwp, align 8
  %1 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drw.addr, align 8
  %width = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %1, i32 0, i32 1
  %2 = load i32, i32* %width, align 4
  %3 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drw.addr, align 8
  %height = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %3, i32 0, i32 2
  %4 = load i32, i32* %height, align 4
  %cmp = icmp ugt i32 %2, %4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drw.addr, align 8
  %width1 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %5, i32 0, i32 1
  %6 = load i32, i32* %width1, align 4
  %conv = uitofp i32 %6 to double
  %div = fdiv double %conv, 1.000000e+02
  %7 = load %struct.mwPreview*, %struct.mwPreview** %mwp, align 8
  %scale = getelementptr inbounds %struct.mwPreview, %struct.mwPreview* %7, i32 0, i32 3
  store double %div, double* %scale, align 8
  %8 = load %struct.mwPreview*, %struct.mwPreview** %mwp, align 8
  %width2 = getelementptr inbounds %struct.mwPreview, %struct.mwPreview* %8, i32 0, i32 0
  store i32 100, i32* %width2, align 4
  %9 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drw.addr, align 8
  %height3 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %9, i32 0, i32 2
  %10 = load i32, i32* %height3, align 4
  %conv4 = uitofp i32 %10 to double
  %11 = load %struct.mwPreview*, %struct.mwPreview** %mwp, align 8
  %scale5 = getelementptr inbounds %struct.mwPreview, %struct.mwPreview* %11, i32 0, i32 3
  %12 = load double, double* %scale5, align 8
  %div6 = fdiv double %conv4, %12
  %conv7 = fptosi double %div6 to i32
  %13 = load %struct.mwPreview*, %struct.mwPreview** %mwp, align 8
  %height8 = getelementptr inbounds %struct.mwPreview, %struct.mwPreview* %13, i32 0, i32 1
  store i32 %conv7, i32* %height8, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %14 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drw.addr, align 8
  %height9 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %14, i32 0, i32 2
  %15 = load i32, i32* %height9, align 4
  %conv10 = uitofp i32 %15 to double
  %div11 = fdiv double %conv10, 1.000000e+02
  %16 = load %struct.mwPreview*, %struct.mwPreview** %mwp, align 8
  %scale12 = getelementptr inbounds %struct.mwPreview, %struct.mwPreview* %16, i32 0, i32 3
  store double %div11, double* %scale12, align 8
  %17 = load %struct.mwPreview*, %struct.mwPreview** %mwp, align 8
  %height13 = getelementptr inbounds %struct.mwPreview, %struct.mwPreview* %17, i32 0, i32 1
  store i32 100, i32* %height13, align 4
  %18 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drw.addr, align 8
  %width14 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %18, i32 0, i32 1
  %19 = load i32, i32* %width14, align 4
  %conv15 = uitofp i32 %19 to double
  %20 = load %struct.mwPreview*, %struct.mwPreview** %mwp, align 8
  %scale16 = getelementptr inbounds %struct.mwPreview, %struct.mwPreview* %20, i32 0, i32 3
  %21 = load double, double* %scale16, align 8
  %div17 = fdiv double %conv15, %21
  %conv18 = fptosi double %div17 to i32
  %22 = load %struct.mwPreview*, %struct.mwPreview** %mwp, align 8
  %width19 = getelementptr inbounds %struct.mwPreview, %struct.mwPreview* %22, i32 0, i32 0
  store i32 %conv18, i32* %width19, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %23 = load %struct.mwPreview*, %struct.mwPreview** %mwp, align 8
  %bpp = getelementptr inbounds %struct.mwPreview, %struct.mwPreview* %23, i32 0, i32 2
  store i32 3, i32* %bpp, align 4
  %24 = load %struct.mwPreview*, %struct.mwPreview** %mwp, align 8
  %bits = getelementptr inbounds %struct.mwPreview, %struct.mwPreview* %24, i32 0, i32 4
  store i8* null, i8** %bits, align 8
  %25 = load %struct.mwPreview*, %struct.mwPreview** %mwp, align 8
  ret %struct.mwPreview* %25
}

declare i32 @gimp_drawable_is_gray(i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @sinus_dialog() #0 {
entry:
  %dlg = alloca %struct._GtkWidget*, align 8
  %main_hbox = alloca %struct._GtkWidget*, align 8
  %preview = alloca %struct._GtkWidget*, align 8
  %notebook = alloca %struct._GtkWidget*, align 8
  %page = alloca %struct._GtkWidget*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  %label = alloca %struct._GtkWidget*, align 8
  %vbox = alloca %struct._GtkWidget*, align 8
  %vbox2 = alloca %struct._GtkWidget*, align 8
  %hbox = alloca %struct._GtkWidget*, align 8
  %table = alloca %struct._GtkWidget*, align 8
  %toggle = alloca %struct._GtkWidget*, align 8
  %push_col1 = alloca %struct._GtkWidget*, align 8
  %push_col2 = alloca %struct._GtkWidget*, align 8
  %adj = alloca %struct._GtkObject*, align 8
  %run = alloca i32, align 4
  store %struct._GtkWidget* null, %struct._GtkWidget** %push_col1, align 8
  store %struct._GtkWidget* null, %struct._GtkWidget** %push_col2, align 8
  call void @gimp_ui_init(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.43, i32 0, i32 0), i32 1)
  %call = call i8* @gettext(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i32 0, i32 0)) #4
  %call1 = call %struct._GtkWidget* (i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) @gimp_dialog_new(i8* %call, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.45, i32 0, i32 0), %struct._GtkWidget* null, i32 0, void (i8*, i8*)* @gimp_standard_help_func, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.46, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.47, i32 0, i32 0), i32 -5, i8* null)
  store %struct._GtkWidget* %call1, %struct._GtkWidget** %dlg, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %dlg, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_dialog_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call2)
  %2 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkDialog*
  call void (%struct._GtkDialog*, i32, ...) @gtk_dialog_set_alternative_button_order(%struct._GtkDialog* %2, i32 -5, i32 -6, i32 -1)
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %dlg, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_window_get_type() #5
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call4)
  %5 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkWindow*
  call void @gimp_window_set_transient(%struct._GtkWindow* %5)
  %call6 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 12)
  store %struct._GtkWidget* %call6, %struct._GtkWidget** %main_hbox, align 8
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %main_hbox, align 8
  %7 = bitcast %struct._GtkWidget* %6 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_container_get_type() #5
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call7)
  %8 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %8, i32 12)
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %dlg, align 8
  %10 = bitcast %struct._GtkWidget* %9 to %struct._GTypeInstance*
  %call9 = call i64 @gtk_dialog_get_type() #5
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call9)
  %11 = bitcast %struct._GTypeInstance* %call10 to %struct._GtkDialog*
  %call11 = call %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog* %11)
  %12 = bitcast %struct._GtkWidget* %call11 to %struct._GTypeInstance*
  %call12 = call i64 @gtk_box_get_type() #5
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call12)
  %13 = bitcast %struct._GTypeInstance* %call13 to %struct._GtkBox*
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %main_hbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %13, %struct._GtkWidget* %14, i32 1, i32 1, i32 0)
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %main_hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %15)
  %call14 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 6)
  store %struct._GtkWidget* %call14, %struct._GtkWidget** %vbox, align 8
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %main_hbox, align 8
  %17 = bitcast %struct._GtkWidget* %16 to %struct._GTypeInstance*
  %call15 = call i64 @gtk_box_get_type() #5
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call15)
  %18 = bitcast %struct._GTypeInstance* %call16 to %struct._GtkBox*
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %18, %struct._GtkWidget* %19, i32 0, i32 0, i32 0)
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %20)
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %22 = load %struct.mwPreview*, %struct.mwPreview** @thePreview, align 8
  %call17 = call %struct._GtkWidget* @mw_preview_new(%struct._GtkWidget* %21, %struct.mwPreview* %22)
  store %struct._GtkWidget* %call17, %struct._GtkWidget** %preview, align 8
  %call18 = call %struct._GtkWidget* @gtk_notebook_new()
  store %struct._GtkWidget* %call18, %struct._GtkWidget** %notebook, align 8
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook, align 8
  %24 = bitcast %struct._GtkWidget* %23 to %struct._GTypeInstance*
  %call19 = call i64 @gtk_notebook_get_type() #5
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call19)
  %25 = bitcast %struct._GTypeInstance* %call20 to %struct._GtkNotebook*
  call void @gtk_notebook_set_tab_pos(%struct._GtkNotebook* %25, i32 2)
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %main_hbox, align 8
  %27 = bitcast %struct._GtkWidget* %26 to %struct._GTypeInstance*
  %call21 = call i64 @gtk_box_get_type() #5
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call21)
  %28 = bitcast %struct._GTypeInstance* %call22 to %struct._GtkBox*
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %28, %struct._GtkWidget* %29, i32 0, i32 0, i32 0)
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %30)
  %call23 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 12)
  store %struct._GtkWidget* %call23, %struct._GtkWidget** %page, align 8
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %page, align 8
  %32 = bitcast %struct._GtkWidget* %31 to %struct._GTypeInstance*
  %call24 = call i64 @gtk_container_get_type() #5
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %32, i64 %call24)
  %33 = bitcast %struct._GTypeInstance* %call25 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %33, i32 12)
  %call26 = call i8* @gettext(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.48, i32 0, i32 0)) #4
  %call27 = call %struct._GtkWidget* @gimp_frame_new(i8* %call26)
  store %struct._GtkWidget* %call27, %struct._GtkWidget** %frame, align 8
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** %page, align 8
  %35 = bitcast %struct._GtkWidget* %34 to %struct._GTypeInstance*
  %call28 = call i64 @gtk_box_get_type() #5
  %call29 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %35, i64 %call28)
  %36 = bitcast %struct._GTypeInstance* %call29 to %struct._GtkBox*
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %36, %struct._GtkWidget* %37, i32 0, i32 0, i32 0)
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %38)
  %call30 = call %struct._GtkWidget* @gtk_table_new(i32 3, i32 3, i32 0)
  store %struct._GtkWidget* %call30, %struct._GtkWidget** %table, align 8
  %39 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %40 = bitcast %struct._GtkWidget* %39 to %struct._GTypeInstance*
  %call31 = call i64 @gtk_table_get_type() #5
  %call32 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %40, i64 %call31)
  %41 = bitcast %struct._GTypeInstance* %call32 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %41, i32 6)
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %43 = bitcast %struct._GtkWidget* %42 to %struct._GTypeInstance*
  %call33 = call i64 @gtk_table_get_type() #5
  %call34 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %43, i64 %call33)
  %44 = bitcast %struct._GTypeInstance* %call34 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %44, i32 6)
  %45 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %46 = bitcast %struct._GtkWidget* %45 to %struct._GTypeInstance*
  %call35 = call i64 @gtk_container_get_type() #5
  %call36 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %46, i64 %call35)
  %47 = bitcast %struct._GTypeInstance* %call36 to %struct._GtkContainer*
  %48 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_container_add(%struct._GtkContainer* %47, %struct._GtkWidget* %48)
  %49 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %50 = bitcast %struct._GtkWidget* %49 to %struct._GTypeInstance*
  %call37 = call i64 @gtk_table_get_type() #5
  %call38 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %50, i64 %call37)
  %51 = bitcast %struct._GTypeInstance* %call38 to %struct._GtkTable*
  %call39 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.49, i32 0, i32 0)) #4
  %52 = load double, double* getelementptr inbounds (%struct.SinusVals, %struct.SinusVals* @svals, i32 0, i32 0), align 8
  %call40 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %51, i32 0, i32 0, i8* %call39, i32 140, i32 8, double %52, double 1.000000e-04, double 1.000000e+02, double 1.000000e-04, double 5.000000e+00, i32 4, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call40, %struct._GtkObject** %adj, align 8
  %53 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %54 = bitcast %struct._GtkObject* %53 to i8*
  %call41 = call i64 @g_signal_connect_data(i8* %54, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.50, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @sinus_double_adjustment_update to void ()*), i8* bitcast (%struct.SinusVals* @svals to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %55 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %56 = bitcast %struct._GtkWidget* %55 to %struct._GTypeInstance*
  %call42 = call i64 @gtk_table_get_type() #5
  %call43 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %56, i64 %call42)
  %57 = bitcast %struct._GTypeInstance* %call43 to %struct._GtkTable*
  %call44 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.51, i32 0, i32 0)) #4
  %58 = load double, double* getelementptr inbounds (%struct.SinusVals, %struct.SinusVals* @svals, i32 0, i32 1), align 8
  %call45 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %57, i32 0, i32 1, i8* %call44, i32 140, i32 8, double %58, double 1.000000e-04, double 1.000000e+02, double 1.000000e-04, double 5.000000e+00, i32 4, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call45, %struct._GtkObject** %adj, align 8
  %59 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %60 = bitcast %struct._GtkObject* %59 to i8*
  %call46 = call i64 @g_signal_connect_data(i8* %60, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.50, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @sinus_double_adjustment_update to void ()*), i8* bitcast (double* getelementptr inbounds (%struct.SinusVals, %struct.SinusVals* @svals, i32 0, i32 1) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %61 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %62 = bitcast %struct._GtkWidget* %61 to %struct._GTypeInstance*
  %call47 = call i64 @gtk_table_get_type() #5
  %call48 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %62, i64 %call47)
  %63 = bitcast %struct._GTypeInstance* %call48 to %struct._GtkTable*
  %call49 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.52, i32 0, i32 0)) #4
  %64 = load double, double* getelementptr inbounds (%struct.SinusVals, %struct.SinusVals* @svals, i32 0, i32 2), align 8
  %call50 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %63, i32 0, i32 2, i8* %call49, i32 140, i32 8, double %64, double 0.000000e+00, double 1.500000e+01, double 1.000000e-02, double 5.000000e+00, i32 2, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call50, %struct._GtkObject** %adj, align 8
  %65 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %66 = bitcast %struct._GtkObject* %65 to i8*
  %call51 = call i64 @g_signal_connect_data(i8* %66, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.50, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @sinus_double_adjustment_update to void ()*), i8* bitcast (double* getelementptr inbounds (%struct.SinusVals, %struct.SinusVals* @svals, i32 0, i32 2) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %67 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %67)
  %call52 = call i8* @gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.53, i32 0, i32 0)) #4
  %call53 = call %struct._GtkWidget* @gimp_frame_new(i8* %call52)
  store %struct._GtkWidget* %call53, %struct._GtkWidget** %frame, align 8
  %68 = load %struct._GtkWidget*, %struct._GtkWidget** %page, align 8
  %69 = bitcast %struct._GtkWidget* %68 to %struct._GTypeInstance*
  %call54 = call i64 @gtk_box_get_type() #5
  %call55 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %69, i64 %call54)
  %70 = bitcast %struct._GTypeInstance* %call55 to %struct._GtkBox*
  %71 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %70, %struct._GtkWidget* %71, i32 0, i32 0, i32 0)
  %72 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %72)
  %call56 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 6)
  store %struct._GtkWidget* %call56, %struct._GtkWidget** %vbox, align 8
  %73 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %74 = bitcast %struct._GtkWidget* %73 to %struct._GTypeInstance*
  %call57 = call i64 @gtk_container_get_type() #5
  %call58 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %74, i64 %call57)
  %75 = bitcast %struct._GTypeInstance* %call58 to %struct._GtkContainer*
  %76 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_container_add(%struct._GtkContainer* %75, %struct._GtkWidget* %76)
  %77 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %77)
  %call59 = call %struct._GtkWidget* @gtk_table_new(i32 3, i32 1, i32 0)
  store %struct._GtkWidget* %call59, %struct._GtkWidget** %table, align 8
  %78 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %79 = bitcast %struct._GtkWidget* %78 to %struct._GTypeInstance*
  %call60 = call i64 @gtk_table_get_type() #5
  %call61 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %79, i64 %call60)
  %80 = bitcast %struct._GTypeInstance* %call61 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %80, i32 6)
  %81 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %82 = bitcast %struct._GtkWidget* %81 to %struct._GTypeInstance*
  %call62 = call i64 @gtk_box_get_type() #5
  %call63 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %82, i64 %call62)
  %83 = bitcast %struct._GTypeInstance* %call63 to %struct._GtkBox*
  %84 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %83, %struct._GtkWidget* %84, i32 0, i32 0, i32 0)
  %call64 = call %struct._GtkWidget* @gimp_random_seed_new(i32* getelementptr inbounds (%struct.SinusVals, %struct.SinusVals* @svals, i32 0, i32 4), i32* getelementptr inbounds (%struct.SinusVals, %struct.SinusVals* @svals, i32 0, i32 11))
  store %struct._GtkWidget* %call64, %struct._GtkWidget** %hbox, align 8
  %85 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %86 = bitcast %struct._GtkWidget* %85 to %struct._GTypeInstance*
  %call65 = call i64 @gtk_table_get_type() #5
  %call66 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %86, i64 %call65)
  %87 = bitcast %struct._GTypeInstance* %call66 to %struct._GtkTable*
  %call67 = call i8* @gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.54, i32 0, i32 0)) #4
  %88 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %call68 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %87, i32 0, i32 0, i8* %call67, float 1.000000e+00, float 5.000000e-01, %struct._GtkWidget* %88, i32 1, i32 1)
  store %struct._GtkWidget* %call68, %struct._GtkWidget** %label, align 8
  %89 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %90 = bitcast %struct._GtkWidget* %89 to %struct._GTypeInstance*
  %call69 = call i64 @gtk_label_get_type() #5
  %call70 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %90, i64 %call69)
  %91 = bitcast %struct._GTypeInstance* %call70 to %struct._GtkLabel*
  %92 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %93 = bitcast %struct._GtkWidget* %92 to %struct._GTypeInstance*
  %call71 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %93, i64 80)
  %94 = bitcast %struct._GTypeInstance* %call71 to %struct._GObject*
  %call72 = call i8* @g_object_get_data(%struct._GObject* %94, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.55, i32 0, i32 0))
  %95 = bitcast i8* %call72 to %struct._GtkWidget*
  call void @gtk_label_set_mnemonic_widget(%struct._GtkLabel* %91, %struct._GtkWidget* %95)
  %96 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %97 = bitcast %struct._GtkWidget* %96 to %struct._GTypeInstance*
  %call73 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %97, i64 80)
  %98 = bitcast %struct._GTypeInstance* %call73 to %struct._GObject*
  %call74 = call i8* @g_object_get_data(%struct._GObject* %98, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.55, i32 0, i32 0))
  %99 = bitcast i8* %call74 to %struct._GTypeInstance*
  %call75 = call i64 @gtk_spin_button_get_type() #5
  %call76 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %99, i64 %call75)
  %100 = bitcast %struct._GTypeInstance* %call76 to %struct._GtkSpinButton*
  %call77 = call %struct._GtkAdjustment* @gtk_spin_button_get_adjustment(%struct._GtkSpinButton* %100)
  %101 = bitcast %struct._GtkAdjustment* %call77 to i8*
  %call78 = call i64 @g_signal_connect_data(i8* %101, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.50, i32 0, i32 0), void ()* bitcast (void (%struct._GObject*, i8*)* @sinus_random_update to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %102 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %102)
  %call79 = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.56, i32 0, i32 0)) #4
  %call80 = call %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8* %call79)
  store %struct._GtkWidget* %call80, %struct._GtkWidget** %toggle, align 8
  %103 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %104 = bitcast %struct._GtkWidget* %103 to %struct._GTypeInstance*
  %call81 = call i64 @gtk_toggle_button_get_type() #5
  %call82 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %104, i64 %call81)
  %105 = bitcast %struct._GTypeInstance* %call82 to %struct._GtkToggleButton*
  %106 = load i32, i32* getelementptr inbounds (%struct.SinusVals, %struct.SinusVals* @svals, i32 0, i32 5), align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %105, i32 %106)
  %107 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %108 = bitcast %struct._GtkWidget* %107 to %struct._GTypeInstance*
  %call83 = call i64 @gtk_box_get_type() #5
  %call84 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %108, i64 %call83)
  %109 = bitcast %struct._GTypeInstance* %call84 to %struct._GtkBox*
  %110 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %109, %struct._GtkWidget* %110, i32 0, i32 0, i32 0)
  %111 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %111)
  %112 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %113 = bitcast %struct._GtkWidget* %112 to i8*
  %call85 = call i64 @g_signal_connect_data(i8* %113, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.57, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @sinus_toggle_button_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.SinusVals, %struct.SinusVals* @svals, i32 0, i32 5) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %114 = load i64, i64* getelementptr inbounds (%struct.SinusVals, %struct.SinusVals* @svals, i32 0, i32 6), align 8
  %conv = trunc i64 %114 to i32
  %call86 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.58, i32 0, i32 0)) #4
  %call87 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.59, i32 0, i32 0)) #4
  %call88 = call %struct._GtkWidget* (i32, i8*, void ()*, i8*, i32, ...) @gimp_int_radio_group_new(i32 0, i8* null, void ()* bitcast (void (%struct._GtkWidget*, i8*)* @sinus_radio_button_update to void ()*), i8* bitcast (i64* getelementptr inbounds (%struct.SinusVals, %struct.SinusVals* @svals, i32 0, i32 6) to i8*), i32 %conv, i8* %call86, i64 0, i8* null, i8* %call87, i64 1, i8* null, i8* null)
  store %struct._GtkWidget* %call88, %struct._GtkWidget** %vbox2, align 8
  %115 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %116 = bitcast %struct._GtkWidget* %115 to %struct._GTypeInstance*
  %call89 = call i64 @gtk_box_get_type() #5
  %call90 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %116, i64 %call89)
  %117 = bitcast %struct._GTypeInstance* %call90 to %struct._GtkBox*
  %118 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox2, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %117, %struct._GtkWidget* %118, i32 0, i32 0, i32 0)
  %119 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox2, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %119)
  %call91 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.60, i32 0, i32 0)) #4
  %call92 = call %struct._GtkWidget* @gtk_label_new_with_mnemonic(i8* %call91)
  store %struct._GtkWidget* %call92, %struct._GtkWidget** %label, align 8
  %120 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook, align 8
  %121 = bitcast %struct._GtkWidget* %120 to %struct._GTypeInstance*
  %call93 = call i64 @gtk_notebook_get_type() #5
  %call94 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %121, i64 %call93)
  %122 = bitcast %struct._GTypeInstance* %call94 to %struct._GtkNotebook*
  %123 = load %struct._GtkWidget*, %struct._GtkWidget** %page, align 8
  %124 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %call95 = call i32 @gtk_notebook_append_page(%struct._GtkNotebook* %122, %struct._GtkWidget* %123, %struct._GtkWidget* %124)
  %125 = load %struct._GtkWidget*, %struct._GtkWidget** %page, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %125)
  %call96 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 12)
  store %struct._GtkWidget* %call96, %struct._GtkWidget** %page, align 8
  %126 = load %struct._GtkWidget*, %struct._GtkWidget** %page, align 8
  %127 = bitcast %struct._GtkWidget* %126 to %struct._GTypeInstance*
  %call97 = call i64 @gtk_container_get_type() #5
  %call98 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %127, i64 %call97)
  %128 = bitcast %struct._GTypeInstance* %call98 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %128, i32 12)
  %129 = load i32, i32* @drawable_is_grayscale, align 4
  %tobool = icmp ne i32 %129, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call99 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.61, i32 0, i32 0)) #4
  %call100 = call %struct._GtkWidget* @gimp_frame_new(i8* %call99)
  store %struct._GtkWidget* %call100, %struct._GtkWidget** %frame, align 8
  %130 = load %struct._GtkWidget*, %struct._GtkWidget** %page, align 8
  %131 = bitcast %struct._GtkWidget* %130 to %struct._GTypeInstance*
  %call101 = call i64 @gtk_box_get_type() #5
  %call102 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %131, i64 %call101)
  %132 = bitcast %struct._GTypeInstance* %call102 to %struct._GtkBox*
  %133 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %132, %struct._GtkWidget* %133, i32 0, i32 0, i32 0)
  %134 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %134)
  %call103 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 6)
  store %struct._GtkWidget* %call103, %struct._GtkWidget** %vbox, align 8
  %135 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %136 = bitcast %struct._GtkWidget* %135 to %struct._GTypeInstance*
  %call104 = call i64 @gtk_container_get_type() #5
  %call105 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %136, i64 %call104)
  %137 = bitcast %struct._GTypeInstance* %call105 to %struct._GtkContainer*
  %138 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_container_add(%struct._GtkContainer* %137, %struct._GtkWidget* %138)
  %139 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %139)
  %call106 = call i8* @gettext(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.62, i32 0, i32 0)) #4
  %call107 = call %struct._GtkWidget* @gtk_label_new(i8* %call106)
  store %struct._GtkWidget* %call107, %struct._GtkWidget** %label, align 8
  %140 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %141 = bitcast %struct._GtkWidget* %140 to %struct._GTypeInstance*
  %call108 = call i64 @gtk_misc_get_type() #5
  %call109 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %141, i64 %call108)
  %142 = bitcast %struct._GTypeInstance* %call109 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %142, float 5.000000e-01, float 5.000000e-01)
  %143 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %144 = bitcast %struct._GtkWidget* %143 to %struct._GTypeInstance*
  %call110 = call i64 @gtk_box_get_type() #5
  %call111 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %144, i64 %call110)
  %145 = bitcast %struct._GTypeInstance* %call111 to %struct._GtkBox*
  %146 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %145, %struct._GtkWidget* %146, i32 0, i32 0, i32 0)
  %147 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %147)
  br label %if.end

if.else:                                          ; preds = %entry
  %call112 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.61, i32 0, i32 0)) #4
  %148 = load i64, i64* getelementptr inbounds (%struct.SinusVals, %struct.SinusVals* @svals, i32 0, i32 8), align 8
  %conv113 = trunc i64 %148 to i32
  %call114 = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.63, i32 0, i32 0)) #4
  %call115 = call i8* @gettext(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.64, i32 0, i32 0)) #4
  %call116 = call i8* @gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.65, i32 0, i32 0)) #4
  %call117 = call %struct._GtkWidget* (i32, i8*, void ()*, i8*, i32, ...) @gimp_int_radio_group_new(i32 1, i8* %call112, void ()* bitcast (void (%struct._GtkWidget*, i8*)* @sinus_radio_button_update to void ()*), i8* bitcast (i64* getelementptr inbounds (%struct.SinusVals, %struct.SinusVals* @svals, i32 0, i32 8) to i8*), i32 %conv113, i8* %call114, i64 0, i8* null, i8* %call115, i64 1, i8* null, i8* %call116, i64 2, i8* null, i8* null)
  store %struct._GtkWidget* %call117, %struct._GtkWidget** %frame, align 8
  %149 = load %struct._GtkWidget*, %struct._GtkWidget** %page, align 8
  %150 = bitcast %struct._GtkWidget* %149 to %struct._GTypeInstance*
  %call118 = call i64 @gtk_box_get_type() #5
  %call119 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %150, i64 %call118)
  %151 = bitcast %struct._GTypeInstance* %call119 to %struct._GtkBox*
  %152 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %151, %struct._GtkWidget* %152, i32 0, i32 0, i32 0)
  %153 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %153)
  %154 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %155 = bitcast %struct._GtkWidget* %154 to %struct._GTypeInstance*
  %call120 = call i64 @gtk_bin_get_type() #5
  %call121 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %155, i64 %call120)
  %156 = bitcast %struct._GTypeInstance* %call121 to %struct._GtkBin*
  %call122 = call %struct._GtkWidget* @gtk_bin_get_child(%struct._GtkBin* %156)
  store %struct._GtkWidget* %call122, %struct._GtkWidget** %vbox, align 8
  %call123 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 12)
  store %struct._GtkWidget* %call123, %struct._GtkWidget** %hbox, align 8
  %157 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %158 = bitcast %struct._GtkWidget* %157 to %struct._GTypeInstance*
  %call124 = call i64 @gtk_box_get_type() #5
  %call125 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %158, i64 %call124)
  %159 = bitcast %struct._GTypeInstance* %call125 to %struct._GtkBox*
  %160 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %159, %struct._GtkWidget* %160, i32 0, i32 0, i32 0)
  %call126 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.66, i32 0, i32 0)) #4
  %call127 = call %struct._GtkWidget* @gimp_color_button_new(i8* %call126, i32 32, i32 32, %struct._GimpRGB* getelementptr inbounds (%struct.SinusVals, %struct.SinusVals* @svals, i32 0, i32 9), i32 1)
  store %struct._GtkWidget* %call127, %struct._GtkWidget** %push_col1, align 8
  %161 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %162 = bitcast %struct._GtkWidget* %161 to %struct._GTypeInstance*
  %call128 = call i64 @gtk_box_get_type() #5
  %call129 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %162, i64 %call128)
  %163 = bitcast %struct._GTypeInstance* %call129 to %struct._GtkBox*
  %164 = load %struct._GtkWidget*, %struct._GtkWidget** %push_col1, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %163, %struct._GtkWidget* %164, i32 0, i32 0, i32 0)
  %165 = load %struct._GtkWidget*, %struct._GtkWidget** %push_col1, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %165)
  %166 = load %struct._GtkWidget*, %struct._GtkWidget** %push_col1, align 8
  %167 = bitcast %struct._GtkWidget* %166 to i8*
  %call130 = call i64 @g_signal_connect_data(i8* %167, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.67, i32 0, i32 0), void ()* bitcast (void (%struct._GimpColorButton*, %struct._GimpRGB*)* @gimp_color_button_get_color to void ()*), i8* bitcast (%struct._GimpRGB* getelementptr inbounds (%struct.SinusVals, %struct.SinusVals* @svals, i32 0, i32 9) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %call131 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.68, i32 0, i32 0)) #4
  %call132 = call %struct._GtkWidget* @gimp_color_button_new(i8* %call131, i32 32, i32 32, %struct._GimpRGB* getelementptr inbounds (%struct.SinusVals, %struct.SinusVals* @svals, i32 0, i32 10), i32 1)
  store %struct._GtkWidget* %call132, %struct._GtkWidget** %push_col2, align 8
  %168 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %169 = bitcast %struct._GtkWidget* %168 to %struct._GTypeInstance*
  %call133 = call i64 @gtk_box_get_type() #5
  %call134 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %169, i64 %call133)
  %170 = bitcast %struct._GTypeInstance* %call134 to %struct._GtkBox*
  %171 = load %struct._GtkWidget*, %struct._GtkWidget** %push_col2, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %170, %struct._GtkWidget* %171, i32 0, i32 0, i32 0)
  %172 = load %struct._GtkWidget*, %struct._GtkWidget** %push_col2, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %172)
  %173 = load %struct._GtkWidget*, %struct._GtkWidget** %push_col2, align 8
  %174 = bitcast %struct._GtkWidget* %173 to i8*
  %call135 = call i64 @g_signal_connect_data(i8* %174, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.67, i32 0, i32 0), void ()* bitcast (void (%struct._GimpColorButton*, %struct._GimpRGB*)* @gimp_color_button_get_color to void ()*), i8* bitcast (%struct._GimpRGB* getelementptr inbounds (%struct.SinusVals, %struct.SinusVals* @svals, i32 0, i32 10) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %175 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %175)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call136 = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.69, i32 0, i32 0)) #4
  %call137 = call %struct._GtkWidget* @gimp_frame_new(i8* %call136)
  store %struct._GtkWidget* %call137, %struct._GtkWidget** %frame, align 8
  %176 = load %struct._GtkWidget*, %struct._GtkWidget** %page, align 8
  %177 = bitcast %struct._GtkWidget* %176 to %struct._GTypeInstance*
  %call138 = call i64 @gtk_box_get_type() #5
  %call139 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %177, i64 %call138)
  %178 = bitcast %struct._GTypeInstance* %call139 to %struct._GtkBox*
  %179 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %178, %struct._GtkWidget* %179, i32 0, i32 0, i32 0)
  %180 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %180)
  %181 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %182 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %182, i32 0, i32 0
  %183 = load i32, i32* %drawable_id, align 4
  %call140 = call i32 @gimp_drawable_has_alpha(i32 %183)
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %181, i32 %call140)
  %call141 = call %struct._GtkWidget* @gtk_table_new(i32 2, i32 3, i32 0)
  store %struct._GtkWidget* %call141, %struct._GtkWidget** %table, align 8
  %184 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %185 = bitcast %struct._GtkWidget* %184 to %struct._GTypeInstance*
  %call142 = call i64 @gtk_table_get_type() #5
  %call143 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %185, i64 %call142)
  %186 = bitcast %struct._GTypeInstance* %call143 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %186, i32 6)
  %187 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %188 = bitcast %struct._GtkWidget* %187 to %struct._GTypeInstance*
  %call144 = call i64 @gtk_table_get_type() #5
  %call145 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %188, i64 %call144)
  %189 = bitcast %struct._GTypeInstance* %call145 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %189, i32 6)
  %190 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %191 = bitcast %struct._GtkWidget* %190 to %struct._GTypeInstance*
  %call146 = call i64 @gtk_container_get_type() #5
  %call147 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %191, i64 %call146)
  %192 = bitcast %struct._GTypeInstance* %call147 to %struct._GtkContainer*
  %193 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_container_add(%struct._GtkContainer* %192, %struct._GtkWidget* %193)
  %194 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %195 = bitcast %struct._GtkWidget* %194 to %struct._GTypeInstance*
  %call148 = call i64 @gtk_table_get_type() #5
  %call149 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %195, i64 %call148)
  %196 = bitcast %struct._GTypeInstance* %call149 to %struct._GtkTable*
  %call150 = call i8* @gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.70, i32 0, i32 0)) #4
  %197 = load double, double* getelementptr inbounds (%struct.SinusVals, %struct.SinusVals* @svals, i32 0, i32 9, i32 3), align 8
  %call151 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %196, i32 0, i32 0, i8* %call150, i32 0, i32 0, double %197, double 0.000000e+00, double 1.000000e+00, double 1.000000e-02, double 1.000000e-01, i32 2, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call151, %struct._GtkObject** %adj, align 8
  %198 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %199 = bitcast %struct._GtkObject* %198 to i8*
  %200 = load %struct._GtkWidget*, %struct._GtkWidget** %push_col1, align 8
  %201 = bitcast %struct._GtkWidget* %200 to i8*
  %call152 = call i64 @g_signal_connect_data(i8* %199, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.50, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @alpha_scale_cb to void ()*), i8* %201, void (i8*, %struct._GClosure*)* null, i32 0)
  %202 = load %struct._GtkWidget*, %struct._GtkWidget** %push_col1, align 8
  %tobool153 = icmp ne %struct._GtkWidget* %202, null
  br i1 %tobool153, label %if.then.154, label %if.end.156

if.then.154:                                      ; preds = %if.end
  %203 = load %struct._GtkWidget*, %struct._GtkWidget** %push_col1, align 8
  %204 = bitcast %struct._GtkWidget* %203 to i8*
  %205 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %206 = bitcast %struct._GtkObject* %205 to i8*
  %call155 = call i64 @g_signal_connect_data(i8* %204, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.67, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @alpha_scale_update to void ()*), i8* %206, void (i8*, %struct._GClosure*)* null, i32 0)
  br label %if.end.156

if.end.156:                                       ; preds = %if.then.154, %if.end
  %207 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %208 = bitcast %struct._GtkWidget* %207 to %struct._GTypeInstance*
  %call157 = call i64 @gtk_table_get_type() #5
  %call158 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %208, i64 %call157)
  %209 = bitcast %struct._GTypeInstance* %call158 to %struct._GtkTable*
  %call159 = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.71, i32 0, i32 0)) #4
  %210 = load double, double* getelementptr inbounds (%struct.SinusVals, %struct.SinusVals* @svals, i32 0, i32 10, i32 3), align 8
  %call160 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %209, i32 0, i32 1, i8* %call159, i32 0, i32 0, double %210, double 0.000000e+00, double 1.000000e+00, double 1.000000e-02, double 1.000000e-01, i32 2, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call160, %struct._GtkObject** %adj, align 8
  %211 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %212 = bitcast %struct._GtkObject* %211 to i8*
  %213 = load %struct._GtkWidget*, %struct._GtkWidget** %push_col2, align 8
  %214 = bitcast %struct._GtkWidget* %213 to i8*
  %call161 = call i64 @g_signal_connect_data(i8* %212, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.50, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @alpha_scale_cb to void ()*), i8* %214, void (i8*, %struct._GClosure*)* null, i32 0)
  %215 = load %struct._GtkWidget*, %struct._GtkWidget** %push_col2, align 8
  %tobool162 = icmp ne %struct._GtkWidget* %215, null
  br i1 %tobool162, label %if.then.163, label %if.end.165

if.then.163:                                      ; preds = %if.end.156
  %216 = load %struct._GtkWidget*, %struct._GtkWidget** %push_col2, align 8
  %217 = bitcast %struct._GtkWidget* %216 to i8*
  %218 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %219 = bitcast %struct._GtkObject* %218 to i8*
  %call164 = call i64 @g_signal_connect_data(i8* %217, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.67, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @alpha_scale_update to void ()*), i8* %219, void (i8*, %struct._GClosure*)* null, i32 0)
  br label %if.end.165

if.end.165:                                       ; preds = %if.then.163, %if.end.156
  %220 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %220)
  %call166 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.72, i32 0, i32 0)) #4
  %call167 = call %struct._GtkWidget* @gtk_label_new_with_mnemonic(i8* %call166)
  store %struct._GtkWidget* %call167, %struct._GtkWidget** %label, align 8
  %221 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook, align 8
  %222 = bitcast %struct._GtkWidget* %221 to %struct._GTypeInstance*
  %call168 = call i64 @gtk_notebook_get_type() #5
  %call169 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %222, i64 %call168)
  %223 = bitcast %struct._GTypeInstance* %call169 to %struct._GtkNotebook*
  %224 = load %struct._GtkWidget*, %struct._GtkWidget** %page, align 8
  %225 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %call170 = call i32 @gtk_notebook_append_page(%struct._GtkNotebook* %223, %struct._GtkWidget* %224, %struct._GtkWidget* %225)
  %226 = load %struct._GtkWidget*, %struct._GtkWidget** %page, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %226)
  %call171 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 12)
  store %struct._GtkWidget* %call171, %struct._GtkWidget** %page, align 8
  %227 = load %struct._GtkWidget*, %struct._GtkWidget** %page, align 8
  %228 = bitcast %struct._GtkWidget* %227 to %struct._GTypeInstance*
  %call172 = call i64 @gtk_container_get_type() #5
  %call173 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %228, i64 %call172)
  %229 = bitcast %struct._GTypeInstance* %call173 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %229, i32 12)
  %call174 = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.73, i32 0, i32 0)) #4
  %call175 = call %struct._GtkWidget* @gimp_frame_new(i8* %call174)
  store %struct._GtkWidget* %call175, %struct._GtkWidget** %frame, align 8
  %230 = load %struct._GtkWidget*, %struct._GtkWidget** %page, align 8
  %231 = bitcast %struct._GtkWidget* %230 to %struct._GTypeInstance*
  %call176 = call i64 @gtk_box_get_type() #5
  %call177 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %231, i64 %call176)
  %232 = bitcast %struct._GTypeInstance* %call177 to %struct._GtkBox*
  %233 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %232, %struct._GtkWidget* %233, i32 1, i32 1, i32 0)
  %234 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %234)
  %call178 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 12)
  store %struct._GtkWidget* %call178, %struct._GtkWidget** %vbox, align 8
  %235 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %236 = bitcast %struct._GtkWidget* %235 to %struct._GTypeInstance*
  %call179 = call i64 @gtk_container_get_type() #5
  %call180 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %236, i64 %call179)
  %237 = bitcast %struct._GTypeInstance* %call180 to %struct._GtkContainer*
  %238 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_container_add(%struct._GtkContainer* %237, %struct._GtkWidget* %238)
  %239 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %239)
  %call181 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.74, i32 0, i32 0)) #4
  %240 = load i64, i64* getelementptr inbounds (%struct.SinusVals, %struct.SinusVals* @svals, i32 0, i32 7), align 8
  %conv182 = trunc i64 %240 to i32
  %call183 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.75, i32 0, i32 0)) #4
  %call184 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.76, i32 0, i32 0)) #4
  %call185 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.77, i32 0, i32 0)) #4
  %call186 = call %struct._GtkWidget* (i32, i8*, void ()*, i8*, i32, ...) @gimp_int_radio_group_new(i32 1, i8* %call181, void ()* bitcast (void (%struct._GtkWidget*, i8*)* @sinus_radio_button_update to void ()*), i8* bitcast (i64* getelementptr inbounds (%struct.SinusVals, %struct.SinusVals* @svals, i32 0, i32 7) to i8*), i32 %conv182, i8* %call183, i64 0, i8* null, i8* %call184, i64 1, i8* null, i8* %call185, i64 2, i8* null, i8* null)
  store %struct._GtkWidget* %call186, %struct._GtkWidget** %frame, align 8
  %241 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %242 = bitcast %struct._GtkWidget* %241 to %struct._GTypeInstance*
  %call187 = call i64 @gtk_box_get_type() #5
  %call188 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %242, i64 %call187)
  %243 = bitcast %struct._GTypeInstance* %call188 to %struct._GtkBox*
  %244 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %243, %struct._GtkWidget* %244, i32 0, i32 0, i32 0)
  %245 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %245)
  %call189 = call %struct._GtkWidget* @gtk_table_new(i32 1, i32 3, i32 0)
  store %struct._GtkWidget* %call189, %struct._GtkWidget** %table, align 8
  %246 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %247 = bitcast %struct._GtkWidget* %246 to %struct._GTypeInstance*
  %call190 = call i64 @gtk_table_get_type() #5
  %call191 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %247, i64 %call190)
  %248 = bitcast %struct._GTypeInstance* %call191 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %248, i32 6)
  %249 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %250 = bitcast %struct._GtkWidget* %249 to %struct._GTypeInstance*
  %call192 = call i64 @gtk_box_get_type() #5
  %call193 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %250, i64 %call192)
  %251 = bitcast %struct._GTypeInstance* %call193 to %struct._GtkBox*
  %252 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %251, %struct._GtkWidget* %252, i32 1, i32 1, i32 0)
  %253 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %254 = bitcast %struct._GtkWidget* %253 to %struct._GTypeInstance*
  %call194 = call i64 @gtk_table_get_type() #5
  %call195 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %254, i64 %call194)
  %255 = bitcast %struct._GTypeInstance* %call195 to %struct._GtkTable*
  %call196 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.78, i32 0, i32 0)) #4
  %256 = load double, double* getelementptr inbounds (%struct.SinusVals, %struct.SinusVals* @svals, i32 0, i32 3), align 8
  %call197 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %255, i32 0, i32 0, i8* %call196, i32 0, i32 0, double %256, double -7.500000e+00, double 7.500000e+00, double 1.000000e-02, double 5.000000e+00, i32 2, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call197, %struct._GtkObject** %adj, align 8
  %257 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %258 = bitcast %struct._GtkObject* %257 to i8*
  %call198 = call i64 @g_signal_connect_data(i8* %258, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.50, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @sinus_double_adjustment_update to void ()*), i8* bitcast (double* getelementptr inbounds (%struct.SinusVals, %struct.SinusVals* @svals, i32 0, i32 3) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %259 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %259)
  %call199 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.79, i32 0, i32 0)) #4
  %call200 = call %struct._GtkWidget* @gtk_label_new_with_mnemonic(i8* %call199)
  store %struct._GtkWidget* %call200, %struct._GtkWidget** %label, align 8
  %260 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook, align 8
  %261 = bitcast %struct._GtkWidget* %260 to %struct._GTypeInstance*
  %call201 = call i64 @gtk_notebook_get_type() #5
  %call202 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %261, i64 %call201)
  %262 = bitcast %struct._GTypeInstance* %call202 to %struct._GtkNotebook*
  %263 = load %struct._GtkWidget*, %struct._GtkWidget** %page, align 8
  %264 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %call203 = call i32 @gtk_notebook_append_page(%struct._GtkNotebook* %262, %struct._GtkWidget* %263, %struct._GtkWidget* %264)
  %265 = load %struct._GtkWidget*, %struct._GtkWidget** %page, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %265)
  %266 = load %struct._GtkWidget*, %struct._GtkWidget** %dlg, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %266)
  %267 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  call void @sinus_do_preview(%struct._GtkWidget* %267)
  %268 = load %struct._GtkWidget*, %struct._GtkWidget** %dlg, align 8
  %269 = bitcast %struct._GtkWidget* %268 to %struct._GTypeInstance*
  %call204 = call i64 @gimp_dialog_get_type() #5
  %call205 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %269, i64 %call204)
  %270 = bitcast %struct._GTypeInstance* %call205 to %struct._GimpDialog*
  %call206 = call i32 @gimp_dialog_run(%struct._GimpDialog* %270)
  %cmp = icmp eq i32 %call206, -5
  %conv207 = zext i1 %cmp to i32
  store i32 %conv207, i32* %run, align 4
  %271 = load %struct._GtkWidget*, %struct._GtkWidget** %dlg, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %271)
  %272 = load i32, i32* %run, align 4
  ret i32 %272
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

declare void @gimp_rgb_set_alpha(%struct._GimpRGB*, double) #1

declare i32 @g_random_int() #1

declare i32 @gimp_drawable_is_rgb(i32) #1

declare i32 @gimp_progress_init(i8*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #2

declare void @gimp_tile_cache_ntiles(i64) #1

; Function Attrs: nounwind uwtable
define internal void @sinus() #0 {
entry:
  %p = alloca %struct.params, align 8
  %bytes = alloca i32, align 4
  %dest_rgn = alloca %struct._GimpPixelRgn, align 8
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  %pr = alloca i8*, align 8
  %progress = alloca i32, align 4
  %max_progress = alloca i32, align 4
  call void @prepare_coef(%struct.params* %p)
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %0, i32 0, i32 0
  %1 = load i32, i32* %drawable_id, align 4
  %call = call i32 @gimp_drawable_mask_bounds(i32 %1, i32* %x1, i32* %y1, i32* %x2, i32* %y2)
  %2 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  %width = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %2, i32 0, i32 1
  %3 = load i32, i32* %width, align 4
  %width1 = getelementptr inbounds %struct.params, %struct.params* %p, i32 0, i32 1
  store i32 %3, i32* %width1, align 4
  %4 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  %height = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %4, i32 0, i32 2
  %5 = load i32, i32* %height, align 4
  %height2 = getelementptr inbounds %struct.params, %struct.params* %p, i32 0, i32 0
  store i32 %5, i32* %height2, align 4
  %6 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  %bpp = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %6, i32 0, i32 3
  %7 = load i32, i32* %bpp, align 4
  store i32 %7, i32* %bytes, align 4
  %8 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  %9 = load i32, i32* %x1, align 4
  %10 = load i32, i32* %y1, align 4
  %11 = load i32, i32* %x2, align 4
  %12 = load i32, i32* %x1, align 4
  %sub = sub nsw i32 %11, %12
  %13 = load i32, i32* %y2, align 4
  %14 = load i32, i32* %y1, align 4
  %sub3 = sub nsw i32 %13, %14
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %dest_rgn, %struct._GimpDrawable* %8, i32 %9, i32 %10, i32 %sub, i32 %sub3, i32 1, i32 1)
  store i32 0, i32* %progress, align 4
  %15 = load i32, i32* %x2, align 4
  %16 = load i32, i32* %x1, align 4
  %sub4 = sub nsw i32 %15, %16
  %17 = load i32, i32* %y2, align 4
  %18 = load i32, i32* %y1, align 4
  %sub5 = sub nsw i32 %17, %18
  %mul = mul nsw i32 %sub4, %sub5
  store i32 %mul, i32* %max_progress, align 4
  %call6 = call i8* (i32, ...) @gimp_pixel_rgns_register(i32 1, %struct._GimpPixelRgn* %dest_rgn)
  store i8* %call6, i8** %pr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %19 = load i8*, i8** %pr, align 8
  %cmp = icmp ne i8* %19, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %20 = load i32, i32* %bytes, align 4
  switch i32 %20, label %sw.epilog [
    i32 4, label %sw.bb
    i32 3, label %sw.bb.7
    i32 2, label %sw.bb.14
    i32 1, label %sw.bb.21
  ]

sw.bb:                                            ; preds = %for.body
  %data = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 0
  %21 = load i8*, i8** %data, align 8
  %rowstride = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 3
  %22 = load i32, i32* %rowstride, align 4
  %x = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 4
  %23 = load i32, i32* %x, align 4
  %y = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 5
  %24 = load i32, i32* %y, align 4
  %w = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 6
  %25 = load i32, i32* %w, align 4
  %h = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 7
  %26 = load i32, i32* %h, align 4
  call void @compute_block_x(i8* %21, i32 %22, i32 %23, i32 %24, i32 %25, i32 %26, i32 4, void (i8*, double, %struct.params*)* @assign_block_4, %struct.params* %p)
  br label %sw.epilog

sw.bb.7:                                          ; preds = %for.body
  %data8 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 0
  %27 = load i8*, i8** %data8, align 8
  %rowstride9 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 3
  %28 = load i32, i32* %rowstride9, align 4
  %x10 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 4
  %29 = load i32, i32* %x10, align 4
  %y11 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 5
  %30 = load i32, i32* %y11, align 4
  %w12 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 6
  %31 = load i32, i32* %w12, align 4
  %h13 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 7
  %32 = load i32, i32* %h13, align 4
  call void @compute_block_x(i8* %27, i32 %28, i32 %29, i32 %30, i32 %31, i32 %32, i32 3, void (i8*, double, %struct.params*)* @assign_block_3, %struct.params* %p)
  br label %sw.epilog

sw.bb.14:                                         ; preds = %for.body
  %data15 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 0
  %33 = load i8*, i8** %data15, align 8
  %rowstride16 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 3
  %34 = load i32, i32* %rowstride16, align 4
  %x17 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 4
  %35 = load i32, i32* %x17, align 4
  %y18 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 5
  %36 = load i32, i32* %y18, align 4
  %w19 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 6
  %37 = load i32, i32* %w19, align 4
  %h20 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 7
  %38 = load i32, i32* %h20, align 4
  call void @compute_block_x(i8* %33, i32 %34, i32 %35, i32 %36, i32 %37, i32 %38, i32 2, void (i8*, double, %struct.params*)* @assign_block_2, %struct.params* %p)
  br label %sw.epilog

sw.bb.21:                                         ; preds = %for.body
  %data22 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 0
  %39 = load i8*, i8** %data22, align 8
  %rowstride23 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 3
  %40 = load i32, i32* %rowstride23, align 4
  %x24 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 4
  %41 = load i32, i32* %x24, align 4
  %y25 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 5
  %42 = load i32, i32* %y25, align 4
  %w26 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 6
  %43 = load i32, i32* %w26, align 4
  %h27 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 7
  %44 = load i32, i32* %h27, align 4
  call void @compute_block_x(i8* %39, i32 %40, i32 %41, i32 %42, i32 %43, i32 %44, i32 1, void (i8*, double, %struct.params*)* @assign_block_1, %struct.params* %p)
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.body, %sw.bb.21, %sw.bb.14, %sw.bb.7, %sw.bb
  %w28 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 6
  %45 = load i32, i32* %w28, align 4
  %h29 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 7
  %46 = load i32, i32* %h29, align 4
  %mul30 = mul nsw i32 %45, %46
  %47 = load i32, i32* %progress, align 4
  %add = add nsw i32 %47, %mul30
  store i32 %add, i32* %progress, align 4
  %48 = load i32, i32* %progress, align 4
  %conv = sitofp i32 %48 to double
  %49 = load i32, i32* %max_progress, align 4
  %conv31 = sitofp i32 %49 to double
  %div = fdiv double %conv, %conv31
  %call32 = call i32 @gimp_progress_update(double %div)
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog
  %50 = load i8*, i8** %pr, align 8
  %call33 = call i8* @gimp_pixel_rgns_process(i8* %50)
  store i8* %call33, i8** %pr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call34 = call i32 @gimp_progress_update(double 1.000000e+00)
  %51 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  call void @gimp_drawable_flush(%struct._GimpDrawable* %51)
  %52 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  %drawable_id35 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %52, i32 0, i32 0
  %53 = load i32, i32* %drawable_id35, align 4
  %call36 = call i32 @gimp_drawable_merge_shadow(i32 %53, i32 1)
  %54 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  %drawable_id37 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %54, i32 0, i32 0
  %55 = load i32, i32* %drawable_id37, align 4
  %56 = load i32, i32* %x1, align 4
  %57 = load i32, i32* %y1, align 4
  %58 = load i32, i32* %x2, align 4
  %59 = load i32, i32* %x1, align 4
  %sub38 = sub nsw i32 %58, %59
  %60 = load i32, i32* %y2, align 4
  %61 = load i32, i32* %y1, align 4
  %sub39 = sub nsw i32 %60, %61
  %call40 = call i32 @gimp_drawable_update(i32 %55, i32 %56, i32 %57, i32 %sub38, i32 %sub39)
  ret void
}

declare i32 @gimp_displays_flush() #1

declare i32 @gimp_procedural_db_set_data(i8*, i8*, i32) #1

declare void @gimp_drawable_detach(%struct._GimpDrawable*) #1

declare noalias i8* @g_malloc_n(i64, i64) #1

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

declare %struct._GtkWidget* @gtk_box_new(i32, i32) #1

declare void @gtk_container_set_border_width(%struct._GtkContainer*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #3

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

declare %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #3

declare void @gtk_widget_show(%struct._GtkWidget*) #1

; Function Attrs: nounwind uwtable
define internal %struct._GtkWidget* @mw_preview_new(%struct._GtkWidget* %parent, %struct.mwPreview* %mwp) #0 {
entry:
  %parent.addr = alloca %struct._GtkWidget*, align 8
  %mwp.addr = alloca %struct.mwPreview*, align 8
  %preview = alloca %struct._GtkWidget*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  %vbox = alloca %struct._GtkWidget*, align 8
  %button = alloca %struct._GtkWidget*, align 8
  store %struct._GtkWidget* %parent, %struct._GtkWidget** %parent.addr, align 8
  store %struct.mwPreview* %mwp, %struct.mwPreview** %mwp.addr, align 8
  %call = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 6)
  store %struct._GtkWidget* %call, %struct._GtkWidget** %vbox, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %parent.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call1 = call i64 @gtk_box_get_type() #5
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call1)
  %2 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkBox*
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %2, %struct._GtkWidget* %3, i32 0, i32 0, i32 0)
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %4)
  %call3 = call %struct._GtkWidget* @gtk_aspect_frame_new(i8* null, float 5.000000e-01, float 5.000000e-01, float 1.000000e+00, i32 1)
  store %struct._GtkWidget* %call3, %struct._GtkWidget** %frame, align 8
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %6 = bitcast %struct._GtkWidget* %5 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_frame_get_type() #5
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call4)
  %7 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkFrame*
  call void @gtk_frame_set_shadow_type(%struct._GtkFrame* %7, i32 1)
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %9 = bitcast %struct._GtkWidget* %8 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_box_get_type() #5
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call6)
  %10 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkBox*
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %10, %struct._GtkWidget* %11, i32 0, i32 0, i32 0)
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %12)
  %call8 = call %struct._GtkWidget* @gimp_preview_area_new()
  store %struct._GtkWidget* %call8, %struct._GtkWidget** %preview, align 8
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %14 = load %struct.mwPreview*, %struct.mwPreview** %mwp.addr, align 8
  %width = getelementptr inbounds %struct.mwPreview, %struct.mwPreview* %14, i32 0, i32 0
  %15 = load i32, i32* %width, align 4
  %16 = load %struct.mwPreview*, %struct.mwPreview** %mwp.addr, align 8
  %height = getelementptr inbounds %struct.mwPreview, %struct.mwPreview* %16, i32 0, i32 1
  %17 = load i32, i32* %height, align 4
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %13, i32 %15, i32 %17)
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %19 = bitcast %struct._GtkWidget* %18 to %struct._GTypeInstance*
  %call9 = call i64 @gtk_container_get_type() #5
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call9)
  %20 = bitcast %struct._GTypeInstance* %call10 to %struct._GtkContainer*
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  call void @gtk_container_add(%struct._GtkContainer* %20, %struct._GtkWidget* %21)
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %22)
  %call11 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.80, i32 0, i32 0)) #4
  %call12 = call %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8* %call11)
  store %struct._GtkWidget* %call12, %struct._GtkWidget** %button, align 8
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %24 = bitcast %struct._GtkWidget* %23 to %struct._GTypeInstance*
  %call13 = call i64 @gtk_toggle_button_get_type() #5
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call13)
  %25 = bitcast %struct._GTypeInstance* %call14 to %struct._GtkToggleButton*
  %26 = load i32, i32* @do_preview, align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %25, i32 %26)
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %28 = bitcast %struct._GtkWidget* %27 to %struct._GTypeInstance*
  %call15 = call i64 @gtk_box_get_type() #5
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call15)
  %29 = bitcast %struct._GTypeInstance* %call16 to %struct._GtkBox*
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %29, %struct._GtkWidget* %30, i32 0, i32 0, i32 0)
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %31)
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %33 = bitcast %struct._GtkWidget* %32 to i8*
  %call17 = call i64 @g_signal_connect_data(i8* %33, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.57, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @mw_preview_toggle_callback to void ()*), i8* bitcast (i32* @do_preview to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  ret %struct._GtkWidget* %34
}

declare %struct._GtkWidget* @gtk_notebook_new() #1

declare void @gtk_notebook_set_tab_pos(%struct._GtkNotebook*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_notebook_get_type() #3

declare %struct._GtkWidget* @gimp_frame_new(i8*) #1

declare %struct._GtkWidget* @gtk_table_new(i32, i32, i32) #1

declare void @gtk_table_set_col_spacings(%struct._GtkTable*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_table_get_type() #3

declare void @gtk_table_set_row_spacings(%struct._GtkTable*, i32) #1

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #1

declare %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable*, i32, i32, i8*, i32, i32, double, double, double, double, double, i32, i32, double, double, i8*, i8*) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @sinus_double_adjustment_update(%struct._GtkAdjustment* %adjustment, i8* %data) #0 {
entry:
  %adjustment.addr = alloca %struct._GtkAdjustment*, align 8
  %data.addr = alloca i8*, align 8
  store %struct._GtkAdjustment* %adjustment, %struct._GtkAdjustment** %adjustment.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment.addr, align 8
  %1 = load i8*, i8** %data.addr, align 8
  call void @gimp_double_adjustment_update(%struct._GtkAdjustment* %0, i8* %1)
  call void @sinus_do_preview(%struct._GtkWidget* null)
  ret void
}

declare %struct._GtkWidget* @gimp_random_seed_new(i32*, i32*) #1

declare %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable*, i32, i32, i8*, float, float, %struct._GtkWidget*, i32, i32) #1

declare void @gtk_label_set_mnemonic_widget(%struct._GtkLabel*, %struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_label_get_type() #3

declare i8* @g_object_get_data(%struct._GObject*, i8*) #1

declare %struct._GtkAdjustment* @gtk_spin_button_get_adjustment(%struct._GtkSpinButton*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_spin_button_get_type() #3

; Function Attrs: nounwind uwtable
define internal void @sinus_random_update(%struct._GObject* %unused, i8* %data) #0 {
entry:
  %unused.addr = alloca %struct._GObject*, align 8
  %data.addr = alloca i8*, align 8
  store %struct._GObject* %unused, %struct._GObject** %unused.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @sinus_do_preview(%struct._GtkWidget* null)
  ret void
}

declare %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8*) #1

declare void @gtk_toggle_button_set_active(%struct._GtkToggleButton*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_toggle_button_get_type() #3

; Function Attrs: nounwind uwtable
define internal void @sinus_toggle_button_update(%struct._GtkWidget* %widget, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = load i8*, i8** %data.addr, align 8
  call void @gimp_toggle_button_update(%struct._GtkWidget* %0, i8* %1)
  call void @sinus_do_preview(%struct._GtkWidget* null)
  ret void
}

declare %struct._GtkWidget* @gimp_int_radio_group_new(i32, i8*, void ()*, i8*, i32, ...) #1

; Function Attrs: nounwind uwtable
define internal void @sinus_radio_button_update(%struct._GtkWidget* %widget, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = load i8*, i8** %data.addr, align 8
  call void @gimp_radio_button_update(%struct._GtkWidget* %0, i8* %1)
  call void @sinus_do_preview(%struct._GtkWidget* null)
  ret void
}

declare %struct._GtkWidget* @gtk_label_new_with_mnemonic(i8*) #1

declare i32 @gtk_notebook_append_page(%struct._GtkNotebook*, %struct._GtkWidget*, %struct._GtkWidget*) #1

declare %struct._GtkWidget* @gtk_label_new(i8*) #1

declare void @gtk_misc_set_alignment(%struct._GtkMisc*, float, float) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_misc_get_type() #3

declare %struct._GtkWidget* @gtk_bin_get_child(%struct._GtkBin*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_bin_get_type() #3

declare %struct._GtkWidget* @gimp_color_button_new(i8*, i32, i32, %struct._GimpRGB*, i32) #1

declare void @gimp_color_button_get_color(%struct._GimpColorButton*, %struct._GimpRGB*) #1

declare void @gtk_widget_set_sensitive(%struct._GtkWidget*, i32) #1

declare i32 @gimp_drawable_has_alpha(i32) #1

; Function Attrs: nounwind uwtable
define internal void @alpha_scale_cb(%struct._GtkAdjustment* %adj, i8* %data) #0 {
entry:
  %adj.addr = alloca %struct._GtkAdjustment*, align 8
  %data.addr = alloca i8*, align 8
  %color_button = alloca %struct._GimpColorButton*, align 8
  %color = alloca %struct._GimpRGB, align 8
  store %struct._GtkAdjustment* %adj, %struct._GtkAdjustment** %adj.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %data.addr, align 8
  %2 = bitcast i8* %1 to %struct._GTypeInstance*
  %call = call i64 @gimp_color_button_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpColorButton*
  store %struct._GimpColorButton* %3, %struct._GimpColorButton** %color_button, align 8
  %4 = load %struct._GimpColorButton*, %struct._GimpColorButton** %color_button, align 8
  %5 = bitcast %struct._GimpColorButton* %4 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_color_button_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call2)
  %6 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpColorButton*
  call void @gimp_color_button_get_color(%struct._GimpColorButton* %6, %struct._GimpRGB* %color)
  %7 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj.addr, align 8
  %call4 = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %7)
  call void @gimp_rgb_set_alpha(%struct._GimpRGB* %color, double %call4)
  %8 = load %struct._GimpColorButton*, %struct._GimpColorButton** %color_button, align 8
  %9 = bitcast %struct._GimpColorButton* %8 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_color_button_get_type() #5
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call5)
  %10 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpColorButton*
  call void @gimp_color_button_set_color(%struct._GimpColorButton* %10, %struct._GimpRGB* %color)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @alpha_scale_update(%struct._GtkWidget* %color_button, i8* %data) #0 {
entry:
  %color_button.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  %adj = alloca %struct._GtkAdjustment*, align 8
  %color = alloca %struct._GimpRGB, align 8
  store %struct._GtkWidget* %color_button, %struct._GtkWidget** %color_button.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_adjustment_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkAdjustment*
  store %struct._GtkAdjustment* %2, %struct._GtkAdjustment** %adj, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %color_button.addr, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_color_button_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpColorButton*
  call void @gimp_color_button_get_color(%struct._GimpColorButton* %5, %struct._GimpRGB* %color)
  %6 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %a = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color, i32 0, i32 3
  %7 = load double, double* %a, align 8
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %6, double %7)
  call void @sinus_do_preview(%struct._GtkWidget* null)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @sinus_do_preview(%struct._GtkWidget* %widget) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %rowsize = alloca i32, align 4
  %buf = alloca i8*, align 8
  %p = alloca %struct.params, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  %0 = load i32, i32* @do_preview, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** @sinus_do_preview.theWidget, align 8
  %cmp = icmp eq %struct._GtkWidget* %1, null
  br i1 %cmp, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GtkWidget* %2, %struct._GtkWidget** @sinus_do_preview.theWidget, align 8
  br label %if.end.2

if.end.2:                                         ; preds = %if.then.1, %if.end
  %3 = load %struct.mwPreview*, %struct.mwPreview** @thePreview, align 8
  %width = getelementptr inbounds %struct.mwPreview, %struct.mwPreview* %3, i32 0, i32 0
  %4 = load i32, i32* %width, align 4
  %5 = load %struct.mwPreview*, %struct.mwPreview** @thePreview, align 8
  %bpp = getelementptr inbounds %struct.mwPreview, %struct.mwPreview* %5, i32 0, i32 2
  %6 = load i32, i32* %bpp, align 4
  %mul = mul nsw i32 %4, %6
  store i32 %mul, i32* %rowsize, align 4
  %7 = load %struct.mwPreview*, %struct.mwPreview** @thePreview, align 8
  %width3 = getelementptr inbounds %struct.mwPreview, %struct.mwPreview* %7, i32 0, i32 0
  %8 = load i32, i32* %width3, align 4
  %9 = load %struct.mwPreview*, %struct.mwPreview** @thePreview, align 8
  %height = getelementptr inbounds %struct.mwPreview, %struct.mwPreview* %9, i32 0, i32 1
  %10 = load i32, i32* %height, align 4
  %mul4 = mul nsw i32 %8, %10
  %11 = load %struct.mwPreview*, %struct.mwPreview** @thePreview, align 8
  %bpp5 = getelementptr inbounds %struct.mwPreview, %struct.mwPreview* %11, i32 0, i32 2
  %12 = load i32, i32* %bpp5, align 4
  %mul6 = mul nsw i32 %mul4, %12
  %conv = sext i32 %mul6 to i64
  %call = call noalias i8* @g_malloc_n(i64 %conv, i64 1)
  store i8* %call, i8** %buf, align 8
  %13 = load %struct.mwPreview*, %struct.mwPreview** @thePreview, align 8
  %height7 = getelementptr inbounds %struct.mwPreview, %struct.mwPreview* %13, i32 0, i32 1
  %14 = load i32, i32* %height7, align 4
  %height8 = getelementptr inbounds %struct.params, %struct.params* %p, i32 0, i32 0
  store i32 %14, i32* %height8, align 4
  %15 = load %struct.mwPreview*, %struct.mwPreview** @thePreview, align 8
  %width9 = getelementptr inbounds %struct.mwPreview, %struct.mwPreview* %15, i32 0, i32 0
  %16 = load i32, i32* %width9, align 4
  %width10 = getelementptr inbounds %struct.params, %struct.params* %p, i32 0, i32 1
  store i32 %16, i32* %width10, align 4
  call void @prepare_coef(%struct.params* %p)
  %17 = load %struct.mwPreview*, %struct.mwPreview** @thePreview, align 8
  %bpp11 = getelementptr inbounds %struct.mwPreview, %struct.mwPreview* %17, i32 0, i32 2
  %18 = load i32, i32* %bpp11, align 4
  %cmp12 = icmp eq i32 %18, 3
  br i1 %cmp12, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %if.end.2
  %19 = load i8*, i8** %buf, align 8
  %20 = load i32, i32* %rowsize, align 4
  %21 = load %struct.mwPreview*, %struct.mwPreview** @thePreview, align 8
  %width15 = getelementptr inbounds %struct.mwPreview, %struct.mwPreview* %21, i32 0, i32 0
  %22 = load i32, i32* %width15, align 4
  %23 = load %struct.mwPreview*, %struct.mwPreview** @thePreview, align 8
  %height16 = getelementptr inbounds %struct.mwPreview, %struct.mwPreview* %23, i32 0, i32 1
  %24 = load i32, i32* %height16, align 4
  call void @compute_block_x(i8* %19, i32 %20, i32 0, i32 0, i32 %22, i32 %24, i32 3, void (i8*, double, %struct.params*)* @assign_block_3, %struct.params* %p)
  br label %if.end.24

if.else:                                          ; preds = %if.end.2
  %25 = load %struct.mwPreview*, %struct.mwPreview** @thePreview, align 8
  %bpp17 = getelementptr inbounds %struct.mwPreview, %struct.mwPreview* %25, i32 0, i32 2
  %26 = load i32, i32* %bpp17, align 4
  %cmp18 = icmp eq i32 %26, 1
  br i1 %cmp18, label %if.then.20, label %if.end.23

if.then.20:                                       ; preds = %if.else
  %27 = load i8*, i8** %buf, align 8
  %28 = load i32, i32* %rowsize, align 4
  %29 = load %struct.mwPreview*, %struct.mwPreview** @thePreview, align 8
  %width21 = getelementptr inbounds %struct.mwPreview, %struct.mwPreview* %29, i32 0, i32 0
  %30 = load i32, i32* %width21, align 4
  %31 = load %struct.mwPreview*, %struct.mwPreview** @thePreview, align 8
  %height22 = getelementptr inbounds %struct.mwPreview, %struct.mwPreview* %31, i32 0, i32 1
  %32 = load i32, i32* %height22, align 4
  call void @compute_block_x(i8* %27, i32 %28, i32 0, i32 0, i32 %30, i32 %32, i32 1, void (i8*, double, %struct.params*)* @assign_block_1, %struct.params* %p)
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.20, %if.else
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %if.then.14
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** @sinus_do_preview.theWidget, align 8
  %34 = bitcast %struct._GtkWidget* %33 to %struct._GTypeInstance*
  %call25 = call i64 @gimp_preview_area_get_type() #5
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 %call25)
  %35 = bitcast %struct._GTypeInstance* %call26 to %struct._GimpPreviewArea*
  %36 = load %struct.mwPreview*, %struct.mwPreview** @thePreview, align 8
  %width27 = getelementptr inbounds %struct.mwPreview, %struct.mwPreview* %36, i32 0, i32 0
  %37 = load i32, i32* %width27, align 4
  %38 = load %struct.mwPreview*, %struct.mwPreview** @thePreview, align 8
  %height28 = getelementptr inbounds %struct.mwPreview, %struct.mwPreview* %38, i32 0, i32 1
  %39 = load i32, i32* %height28, align 4
  %40 = load i8*, i8** %buf, align 8
  %41 = load i32, i32* %rowsize, align 4
  call void @gimp_preview_area_draw(%struct._GimpPreviewArea* %35, i32 0, i32 0, i32 %37, i32 %39, i32 0, i8* %40, i32 %41)
  %42 = load i8*, i8** %buf, align 8
  call void @g_free(i8* %42)
  br label %return

return:                                           ; preds = %if.end.24, %if.then
  ret void
}

declare i32 @gimp_dialog_run(%struct._GimpDialog*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_dialog_get_type() #3

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

declare %struct._GtkWidget* @gtk_aspect_frame_new(i8*, float, float, float, i32) #1

declare void @gtk_frame_set_shadow_type(%struct._GtkFrame*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_frame_get_type() #3

declare %struct._GtkWidget* @gimp_preview_area_new() #1

declare void @gtk_widget_set_size_request(%struct._GtkWidget*, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @mw_preview_toggle_callback(%struct._GtkWidget* %widget, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = load i8*, i8** %data.addr, align 8
  call void @gimp_toggle_button_update(%struct._GtkWidget* %0, i8* %1)
  call void @sinus_do_preview(%struct._GtkWidget* null)
  ret void
}

declare void @gimp_toggle_button_update(%struct._GtkWidget*, i8*) #1

declare void @gimp_double_adjustment_update(%struct._GtkAdjustment*, i8*) #1

declare void @gimp_radio_button_update(%struct._GtkWidget*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_color_button_get_type() #3

declare double @gtk_adjustment_get_value(%struct._GtkAdjustment*) #1

declare void @gimp_color_button_set_color(%struct._GimpColorButton*, %struct._GimpRGB*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_adjustment_get_type() #3

declare void @gtk_adjustment_set_value(%struct._GtkAdjustment*, double) #1

; Function Attrs: nounwind uwtable
define internal void @prepare_coef(%struct.params* %p) #0 {
entry:
  %p.addr = alloca %struct.params*, align 8
  %color1 = alloca %struct._GimpRGB, align 8
  %color2 = alloca %struct._GimpRGB, align 8
  %scalex = alloca double, align 8
  %scaley = alloca double, align 8
  %gr = alloca %struct._GRand*, align 8
  store %struct.params* %p, %struct.params** %p.addr, align 8
  %0 = load double, double* getelementptr inbounds (%struct.SinusVals, %struct.SinusVals* @svals, i32 0, i32 0), align 8
  store double %0, double* %scalex, align 8
  %1 = load double, double* getelementptr inbounds (%struct.SinusVals, %struct.SinusVals* @svals, i32 0, i32 1), align 8
  store double %1, double* %scaley, align 8
  %call = call %struct._GRand* @g_rand_new()
  store %struct._GRand* %call, %struct._GRand** %gr, align 8
  %2 = load %struct._GRand*, %struct._GRand** %gr, align 8
  %3 = load i32, i32* getelementptr inbounds (%struct.SinusVals, %struct.SinusVals* @svals, i32 0, i32 4), align 4
  call void @g_rand_set_seed(%struct._GRand* %2, i32 %3)
  %4 = load i64, i64* getelementptr inbounds (%struct.SinusVals, %struct.SinusVals* @svals, i32 0, i32 7), align 8
  switch i64 %4, label %sw.default [
    i64 1, label %sw.bb
    i64 2, label %sw.bb.1
    i64 0, label %sw.bb.3
  ]

sw.bb:                                            ; preds = %entry
  %5 = load %struct.params*, %struct.params** %p.addr, align 8
  %blend = getelementptr inbounds %struct.params, %struct.params* %5, i32 0, i32 11
  store double (double)* @bilinear, double (double)** %blend, align 8
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  %6 = load %struct.params*, %struct.params** %p.addr, align 8
  %blend2 = getelementptr inbounds %struct.params, %struct.params* %6, i32 0, i32 11
  store double (double)* @cosinus, double (double)** %blend2, align 8
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  br label %sw.default

sw.default:                                       ; preds = %entry, %sw.bb.3
  %7 = load %struct.params*, %struct.params** %p.addr, align 8
  %blend4 = getelementptr inbounds %struct.params, %struct.params* %7, i32 0, i32 11
  store double (double)* @linear, double (double)** %blend4, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.1, %sw.bb
  %8 = load i64, i64* getelementptr inbounds (%struct.SinusVals, %struct.SinusVals* @svals, i32 0, i32 6), align 8
  %cmp = icmp eq i64 %8, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.epilog
  %9 = load %struct._GRand*, %struct._GRand** %gr, align 8
  %call5 = call i32 @g_rand_int(%struct._GRand* %9)
  %mul = mul i32 0, %call5
  %conv = uitofp i32 %mul to double
  %10 = load %struct.params*, %struct.params** %p.addr, align 8
  %c11 = getelementptr inbounds %struct.params, %struct.params* %10, i32 0, i32 2
  store double %conv, double* %c11, align 8
  %11 = load %struct._GRand*, %struct._GRand** %gr, align 8
  %call6 = call double @g_rand_double_range(%struct._GRand* %11, double -1.000000e+00, double 1.000000e+00)
  %12 = load double, double* %scaley, align 8
  %mul7 = fmul double %call6, %12
  %13 = load %struct.params*, %struct.params** %p.addr, align 8
  %c12 = getelementptr inbounds %struct.params, %struct.params* %13, i32 0, i32 3
  store double %mul7, double* %c12, align 8
  %14 = load %struct._GRand*, %struct._GRand** %gr, align 8
  %call8 = call double @g_rand_double_range(%struct._GRand* %14, double 0.000000e+00, double 0x401921FB54442D18)
  %15 = load %struct.params*, %struct.params** %p.addr, align 8
  %c13 = getelementptr inbounds %struct.params, %struct.params* %15, i32 0, i32 4
  store double %call8, double* %c13, align 8
  %16 = load %struct._GRand*, %struct._GRand** %gr, align 8
  %call9 = call i32 @g_rand_int(%struct._GRand* %16)
  %mul10 = mul i32 0, %call9
  %conv11 = uitofp i32 %mul10 to double
  %17 = load %struct.params*, %struct.params** %p.addr, align 8
  %c21 = getelementptr inbounds %struct.params, %struct.params* %17, i32 0, i32 5
  store double %conv11, double* %c21, align 8
  %18 = load %struct._GRand*, %struct._GRand** %gr, align 8
  %call12 = call double @g_rand_double_range(%struct._GRand* %18, double -1.000000e+00, double 1.000000e+00)
  %19 = load double, double* %scaley, align 8
  %mul13 = fmul double %call12, %19
  %20 = load %struct.params*, %struct.params** %p.addr, align 8
  %c22 = getelementptr inbounds %struct.params, %struct.params* %20, i32 0, i32 6
  store double %mul13, double* %c22, align 8
  %21 = load %struct._GRand*, %struct._GRand** %gr, align 8
  %call14 = call double @g_rand_double_range(%struct._GRand* %21, double 0.000000e+00, double 0x401921FB54442D18)
  %22 = load %struct.params*, %struct.params** %p.addr, align 8
  %c23 = getelementptr inbounds %struct.params, %struct.params* %22, i32 0, i32 7
  store double %call14, double* %c23, align 8
  %23 = load %struct._GRand*, %struct._GRand** %gr, align 8
  %call15 = call double @g_rand_double_range(%struct._GRand* %23, double -1.000000e+00, double 1.000000e+00)
  %24 = load double, double* %scalex, align 8
  %mul16 = fmul double %call15, %24
  %25 = load %struct.params*, %struct.params** %p.addr, align 8
  %c31 = getelementptr inbounds %struct.params, %struct.params* %25, i32 0, i32 8
  store double %mul16, double* %c31, align 8
  %26 = load %struct._GRand*, %struct._GRand** %gr, align 8
  %call17 = call i32 @g_rand_int(%struct._GRand* %26)
  %mul18 = mul i32 0, %call17
  %conv19 = uitofp i32 %mul18 to double
  %27 = load %struct.params*, %struct.params** %p.addr, align 8
  %c32 = getelementptr inbounds %struct.params, %struct.params* %27, i32 0, i32 9
  store double %conv19, double* %c32, align 8
  %28 = load %struct._GRand*, %struct._GRand** %gr, align 8
  %call20 = call double @g_rand_double_range(%struct._GRand* %28, double 0.000000e+00, double 0x401921FB54442D18)
  %29 = load %struct.params*, %struct.params** %p.addr, align 8
  %c33 = getelementptr inbounds %struct.params, %struct.params* %29, i32 0, i32 10
  store double %call20, double* %c33, align 8
  br label %if.end

if.else:                                          ; preds = %sw.epilog
  %30 = load %struct._GRand*, %struct._GRand** %gr, align 8
  %call21 = call double @g_rand_double_range(%struct._GRand* %30, double -1.000000e+00, double 1.000000e+00)
  %31 = load double, double* %scalex, align 8
  %mul22 = fmul double %call21, %31
  %32 = load %struct.params*, %struct.params** %p.addr, align 8
  %c1123 = getelementptr inbounds %struct.params, %struct.params* %32, i32 0, i32 2
  store double %mul22, double* %c1123, align 8
  %33 = load %struct._GRand*, %struct._GRand** %gr, align 8
  %call24 = call double @g_rand_double_range(%struct._GRand* %33, double -1.000000e+00, double 1.000000e+00)
  %34 = load double, double* %scaley, align 8
  %mul25 = fmul double %call24, %34
  %35 = load %struct.params*, %struct.params** %p.addr, align 8
  %c1226 = getelementptr inbounds %struct.params, %struct.params* %35, i32 0, i32 3
  store double %mul25, double* %c1226, align 8
  %36 = load %struct._GRand*, %struct._GRand** %gr, align 8
  %call27 = call double @g_rand_double_range(%struct._GRand* %36, double 0.000000e+00, double 0x401921FB54442D18)
  %37 = load %struct.params*, %struct.params** %p.addr, align 8
  %c1328 = getelementptr inbounds %struct.params, %struct.params* %37, i32 0, i32 4
  store double %call27, double* %c1328, align 8
  %38 = load %struct._GRand*, %struct._GRand** %gr, align 8
  %call29 = call double @g_rand_double_range(%struct._GRand* %38, double -1.000000e+00, double 1.000000e+00)
  %39 = load double, double* %scalex, align 8
  %mul30 = fmul double %call29, %39
  %40 = load %struct.params*, %struct.params** %p.addr, align 8
  %c2131 = getelementptr inbounds %struct.params, %struct.params* %40, i32 0, i32 5
  store double %mul30, double* %c2131, align 8
  %41 = load %struct._GRand*, %struct._GRand** %gr, align 8
  %call32 = call double @g_rand_double_range(%struct._GRand* %41, double -1.000000e+00, double 1.000000e+00)
  %42 = load double, double* %scaley, align 8
  %mul33 = fmul double %call32, %42
  %43 = load %struct.params*, %struct.params** %p.addr, align 8
  %c2234 = getelementptr inbounds %struct.params, %struct.params* %43, i32 0, i32 6
  store double %mul33, double* %c2234, align 8
  %44 = load %struct._GRand*, %struct._GRand** %gr, align 8
  %call35 = call double @g_rand_double_range(%struct._GRand* %44, double 0.000000e+00, double 0x401921FB54442D18)
  %45 = load %struct.params*, %struct.params** %p.addr, align 8
  %c2336 = getelementptr inbounds %struct.params, %struct.params* %45, i32 0, i32 7
  store double %call35, double* %c2336, align 8
  %46 = load %struct._GRand*, %struct._GRand** %gr, align 8
  %call37 = call double @g_rand_double_range(%struct._GRand* %46, double -1.000000e+00, double 1.000000e+00)
  %47 = load double, double* %scalex, align 8
  %mul38 = fmul double %call37, %47
  %48 = load %struct.params*, %struct.params** %p.addr, align 8
  %c3139 = getelementptr inbounds %struct.params, %struct.params* %48, i32 0, i32 8
  store double %mul38, double* %c3139, align 8
  %49 = load %struct._GRand*, %struct._GRand** %gr, align 8
  %call40 = call double @g_rand_double_range(%struct._GRand* %49, double -1.000000e+00, double 1.000000e+00)
  %50 = load double, double* %scaley, align 8
  %mul41 = fmul double %call40, %50
  %51 = load %struct.params*, %struct.params** %p.addr, align 8
  %c3242 = getelementptr inbounds %struct.params, %struct.params* %51, i32 0, i32 9
  store double %mul41, double* %c3242, align 8
  %52 = load %struct._GRand*, %struct._GRand** %gr, align 8
  %call43 = call double @g_rand_double_range(%struct._GRand* %52, double 0.000000e+00, double 0x401921FB54442D18)
  %53 = load %struct.params*, %struct.params** %p.addr, align 8
  %c3344 = getelementptr inbounds %struct.params, %struct.params* %53, i32 0, i32 10
  store double %call43, double* %c3344, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %54 = load i32, i32* getelementptr inbounds (%struct.SinusVals, %struct.SinusVals* @svals, i32 0, i32 5), align 4
  %tobool = icmp ne i32 %54, 0
  br i1 %tobool, label %if.then.45, label %if.end.92

if.then.45:                                       ; preds = %if.end
  %55 = load %struct.params*, %struct.params** %p.addr, align 8
  %c1146 = getelementptr inbounds %struct.params, %struct.params* %55, i32 0, i32 2
  %56 = load double, double* %c1146, align 8
  %div = fdiv double %56, 0x401921FB54442D18
  %add = fadd double %div, 5.000000e-01
  %conv47 = fptosi double %add to i32
  %mul48 = mul nsw i32 %conv47, 2
  %conv49 = sitofp i32 %mul48 to double
  %mul50 = fmul double %conv49, 0x400921FB54442D18
  %57 = load %struct.params*, %struct.params** %p.addr, align 8
  %c1151 = getelementptr inbounds %struct.params, %struct.params* %57, i32 0, i32 2
  store double %mul50, double* %c1151, align 8
  %58 = load %struct.params*, %struct.params** %p.addr, align 8
  %c1252 = getelementptr inbounds %struct.params, %struct.params* %58, i32 0, i32 3
  %59 = load double, double* %c1252, align 8
  %div53 = fdiv double %59, 0x401921FB54442D18
  %add54 = fadd double %div53, 5.000000e-01
  %conv55 = fptosi double %add54 to i32
  %mul56 = mul nsw i32 %conv55, 2
  %conv57 = sitofp i32 %mul56 to double
  %mul58 = fmul double %conv57, 0x400921FB54442D18
  %60 = load %struct.params*, %struct.params** %p.addr, align 8
  %c1259 = getelementptr inbounds %struct.params, %struct.params* %60, i32 0, i32 3
  store double %mul58, double* %c1259, align 8
  %61 = load %struct.params*, %struct.params** %p.addr, align 8
  %c2160 = getelementptr inbounds %struct.params, %struct.params* %61, i32 0, i32 5
  %62 = load double, double* %c2160, align 8
  %div61 = fdiv double %62, 0x401921FB54442D18
  %add62 = fadd double %div61, 5.000000e-01
  %conv63 = fptosi double %add62 to i32
  %mul64 = mul nsw i32 %conv63, 2
  %conv65 = sitofp i32 %mul64 to double
  %mul66 = fmul double %conv65, 0x400921FB54442D18
  %63 = load %struct.params*, %struct.params** %p.addr, align 8
  %c2167 = getelementptr inbounds %struct.params, %struct.params* %63, i32 0, i32 5
  store double %mul66, double* %c2167, align 8
  %64 = load %struct.params*, %struct.params** %p.addr, align 8
  %c2268 = getelementptr inbounds %struct.params, %struct.params* %64, i32 0, i32 6
  %65 = load double, double* %c2268, align 8
  %div69 = fdiv double %65, 0x401921FB54442D18
  %add70 = fadd double %div69, 5.000000e-01
  %conv71 = fptosi double %add70 to i32
  %mul72 = mul nsw i32 %conv71, 2
  %conv73 = sitofp i32 %mul72 to double
  %mul74 = fmul double %conv73, 0x400921FB54442D18
  %66 = load %struct.params*, %struct.params** %p.addr, align 8
  %c2275 = getelementptr inbounds %struct.params, %struct.params* %66, i32 0, i32 6
  store double %mul74, double* %c2275, align 8
  %67 = load %struct.params*, %struct.params** %p.addr, align 8
  %c3176 = getelementptr inbounds %struct.params, %struct.params* %67, i32 0, i32 8
  %68 = load double, double* %c3176, align 8
  %div77 = fdiv double %68, 0x401921FB54442D18
  %add78 = fadd double %div77, 5.000000e-01
  %conv79 = fptosi double %add78 to i32
  %mul80 = mul nsw i32 %conv79, 2
  %conv81 = sitofp i32 %mul80 to double
  %mul82 = fmul double %conv81, 0x400921FB54442D18
  %69 = load %struct.params*, %struct.params** %p.addr, align 8
  %c3183 = getelementptr inbounds %struct.params, %struct.params* %69, i32 0, i32 8
  store double %mul82, double* %c3183, align 8
  %70 = load %struct.params*, %struct.params** %p.addr, align 8
  %c3284 = getelementptr inbounds %struct.params, %struct.params* %70, i32 0, i32 9
  %71 = load double, double* %c3284, align 8
  %div85 = fdiv double %71, 0x401921FB54442D18
  %add86 = fadd double %div85, 5.000000e-01
  %conv87 = fptosi double %add86 to i32
  %mul88 = mul nsw i32 %conv87, 2
  %conv89 = sitofp i32 %mul88 to double
  %mul90 = fmul double %conv89, 0x400921FB54442D18
  %72 = load %struct.params*, %struct.params** %p.addr, align 8
  %c3291 = getelementptr inbounds %struct.params, %struct.params* %72, i32 0, i32 9
  store double %mul90, double* %c3291, align 8
  br label %if.end.92

if.end.92:                                        ; preds = %if.then.45, %if.end
  %73 = bitcast %struct._GimpRGB* %color1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %73, i8* bitcast (%struct._GimpRGB* getelementptr inbounds (%struct.SinusVals, %struct.SinusVals* @svals, i32 0, i32 9) to i8*), i64 32, i32 8, i1 false)
  %74 = bitcast %struct._GimpRGB* %color2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %74, i8* bitcast (%struct._GimpRGB* getelementptr inbounds (%struct.SinusVals, %struct.SinusVals* @svals, i32 0, i32 10) to i8*), i64 32, i32 8, i1 false)
  %75 = load i32, i32* @drawable_is_grayscale, align 4
  %tobool93 = icmp ne i32 %75, 0
  br i1 %tobool93, label %if.then.94, label %if.else.95

if.then.94:                                       ; preds = %if.end.92
  call void @gimp_rgb_set(%struct._GimpRGB* %color1, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00)
  call void @gimp_rgb_set(%struct._GimpRGB* %color2, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00)
  br label %if.end.102

if.else.95:                                       ; preds = %if.end.92
  %76 = load i64, i64* getelementptr inbounds (%struct.SinusVals, %struct.SinusVals* @svals, i32 0, i32 8), align 8
  switch i64 %76, label %sw.epilog.101 [
    i64 2, label %sw.bb.96
    i64 0, label %sw.bb.97
    i64 1, label %sw.bb.98
  ]

sw.bb.96:                                         ; preds = %if.else.95
  br label %sw.epilog.101

sw.bb.97:                                         ; preds = %if.else.95
  call void @gimp_rgb_set(%struct._GimpRGB* %color1, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00)
  call void @gimp_rgb_set(%struct._GimpRGB* %color2, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00)
  br label %sw.epilog.101

sw.bb.98:                                         ; preds = %if.else.95
  %call99 = call i32 @gimp_context_get_background(%struct._GimpRGB* %color1)
  %call100 = call i32 @gimp_context_get_foreground(%struct._GimpRGB* %color2)
  br label %sw.epilog.101

sw.epilog.101:                                    ; preds = %if.else.95, %sw.bb.98, %sw.bb.97, %sw.bb.96
  br label %if.end.102

if.end.102:                                       ; preds = %sw.epilog.101, %if.then.94
  %77 = load %struct.params*, %struct.params** %p.addr, align 8
  %r = getelementptr inbounds %struct.params, %struct.params* %77, i32 0, i32 12
  %78 = load %struct.params*, %struct.params** %p.addr, align 8
  %g = getelementptr inbounds %struct.params, %struct.params* %78, i32 0, i32 13
  %79 = load %struct.params*, %struct.params** %p.addr, align 8
  %b = getelementptr inbounds %struct.params, %struct.params* %79, i32 0, i32 14
  %80 = load %struct.params*, %struct.params** %p.addr, align 8
  %a = getelementptr inbounds %struct.params, %struct.params* %80, i32 0, i32 15
  call void @gimp_rgba_get_uchar(%struct._GimpRGB* %color1, i8* %r, i8* %g, i8* %b, i8* %a)
  call void @gimp_rgba_subtract(%struct._GimpRGB* %color2, %struct._GimpRGB* %color1)
  %r103 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color2, i32 0, i32 0
  %81 = load double, double* %r103, align 8
  %mul104 = fmul double %81, 2.550000e+02
  %conv105 = fptosi double %mul104 to i32
  %82 = load %struct.params*, %struct.params** %p.addr, align 8
  %dr = getelementptr inbounds %struct.params, %struct.params* %82, i32 0, i32 16
  store i32 %conv105, i32* %dr, align 4
  %g106 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color2, i32 0, i32 1
  %83 = load double, double* %g106, align 8
  %mul107 = fmul double %83, 2.550000e+02
  %conv108 = fptosi double %mul107 to i32
  %84 = load %struct.params*, %struct.params** %p.addr, align 8
  %dg = getelementptr inbounds %struct.params, %struct.params* %84, i32 0, i32 17
  store i32 %conv108, i32* %dg, align 4
  %b109 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color2, i32 0, i32 2
  %85 = load double, double* %b109, align 8
  %mul110 = fmul double %85, 2.550000e+02
  %conv111 = fptosi double %mul110 to i32
  %86 = load %struct.params*, %struct.params** %p.addr, align 8
  %db = getelementptr inbounds %struct.params, %struct.params* %86, i32 0, i32 18
  store i32 %conv111, i32* %db, align 4
  %a112 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color2, i32 0, i32 3
  %87 = load double, double* %a112, align 8
  %mul113 = fmul double %87, 2.550000e+02
  %conv114 = fptosi double %mul113 to i32
  %88 = load %struct.params*, %struct.params** %p.addr, align 8
  %da = getelementptr inbounds %struct.params, %struct.params* %88, i32 0, i32 19
  store i32 %conv114, i32* %da, align 4
  %89 = load %struct._GRand*, %struct._GRand** %gr, align 8
  call void @g_rand_free(%struct._GRand* %89)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @compute_block_x(i8* %dest_row, i32 %rowstride, i32 %x0, i32 %y0, i32 %w, i32 %h, i32 %bpp, void (i8*, double, %struct.params*)* %assign, %struct.params* %p) #0 {
entry:
  %dest_row.addr = alloca i8*, align 8
  %rowstride.addr = alloca i32, align 4
  %x0.addr = alloca i32, align 4
  %y0.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %bpp.addr = alloca i32, align 4
  %assign.addr = alloca void (i8*, double, %struct.params*)*, align 8
  %p.addr = alloca %struct.params*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %x = alloca double, align 8
  %y = alloca double, align 8
  %grey = alloca double, align 8
  %pow_exp = alloca double, align 8
  %dest = alloca i8*, align 8
  %c = alloca double, align 8
  store i8* %dest_row, i8** %dest_row.addr, align 8
  store i32 %rowstride, i32* %rowstride.addr, align 4
  store i32 %x0, i32* %x0.addr, align 4
  store i32 %y0, i32* %y0.addr, align 4
  store i32 %w, i32* %w.addr, align 4
  store i32 %h, i32* %h.addr, align 4
  store i32 %bpp, i32* %bpp.addr, align 4
  store void (i8*, double, %struct.params*)* %assign, void (i8*, double, %struct.params*)** %assign.addr, align 8
  store %struct.params* %p, %struct.params** %p.addr, align 8
  %0 = load double, double* getelementptr inbounds (%struct.SinusVals, %struct.SinusVals* @svals, i32 0, i32 3), align 8
  %call = call double @exp(double %0) #4
  store double %call, double* %pow_exp, align 8
  %1 = load i32, i32* %y0.addr, align 4
  store i32 %1, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.38, %entry
  %2 = load i32, i32* %j, align 4
  %3 = load i32, i32* %y0.addr, align 4
  %4 = load i32, i32* %h.addr, align 4
  %add = add nsw i32 %3, %4
  %cmp = icmp slt i32 %2, %add
  br i1 %cmp, label %for.body, label %for.end.40

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %j, align 4
  %conv = sitofp i32 %5 to double
  %6 = load %struct.params*, %struct.params** %p.addr, align 8
  %height = getelementptr inbounds %struct.params, %struct.params* %6, i32 0, i32 0
  %7 = load i32, i32* %height, align 4
  %conv1 = sitofp i32 %7 to double
  %div = fdiv double %conv, %conv1
  store double %div, double* %y, align 8
  %8 = load i8*, i8** %dest_row.addr, align 8
  store i8* %8, i8** %dest, align 8
  %9 = load i32, i32* %x0.addr, align 4
  store i32 %9, i32* %i, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %for.body
  %10 = load i32, i32* %i, align 4
  %11 = load i32, i32* %x0.addr, align 4
  %12 = load i32, i32* %w.addr, align 4
  %add3 = add nsw i32 %11, %12
  %cmp4 = icmp slt i32 %10, %add3
  br i1 %cmp4, label %for.body.6, label %for.end

for.body.6:                                       ; preds = %for.cond.2
  %13 = load i32, i32* %i, align 4
  %conv7 = sitofp i32 %13 to double
  %14 = load %struct.params*, %struct.params** %p.addr, align 8
  %width = getelementptr inbounds %struct.params, %struct.params* %14, i32 0, i32 1
  %15 = load i32, i32* %width, align 4
  %conv8 = sitofp i32 %15 to double
  %div9 = fdiv double %conv7, %conv8
  store double %div9, double* %x, align 8
  %16 = load %struct.params*, %struct.params** %p.addr, align 8
  %c31 = getelementptr inbounds %struct.params, %struct.params* %16, i32 0, i32 8
  %17 = load double, double* %c31, align 8
  %18 = load double, double* %x, align 8
  %mul = fmul double %17, %18
  %19 = load %struct.params*, %struct.params** %p.addr, align 8
  %c32 = getelementptr inbounds %struct.params, %struct.params* %19, i32 0, i32 9
  %20 = load double, double* %c32, align 8
  %21 = load double, double* %y, align 8
  %mul10 = fmul double %20, %21
  %add11 = fadd double %mul, %mul10
  %22 = load %struct.params*, %struct.params** %p.addr, align 8
  %c33 = getelementptr inbounds %struct.params, %struct.params* %22, i32 0, i32 10
  %23 = load double, double* %c33, align 8
  %add12 = fadd double %add11, %23
  %call13 = call double @sin(double %add12) #4
  %mul14 = fmul double 5.000000e-01, %call13
  store double %mul14, double* %c, align 8
  %24 = load %struct.params*, %struct.params** %p.addr, align 8
  %c11 = getelementptr inbounds %struct.params, %struct.params* %24, i32 0, i32 2
  %25 = load double, double* %c11, align 8
  %26 = load double, double* %x, align 8
  %mul15 = fmul double %25, %26
  %27 = load %struct.params*, %struct.params** %p.addr, align 8
  %c12 = getelementptr inbounds %struct.params, %struct.params* %27, i32 0, i32 3
  %28 = load double, double* %c12, align 8
  %29 = load double, double* %y, align 8
  %mul16 = fmul double %28, %29
  %add17 = fadd double %mul15, %mul16
  %30 = load %struct.params*, %struct.params** %p.addr, align 8
  %c13 = getelementptr inbounds %struct.params, %struct.params* %30, i32 0, i32 4
  %31 = load double, double* %c13, align 8
  %add18 = fadd double %add17, %31
  %call19 = call double @sin(double %add18) #4
  %32 = load double, double* %c, align 8
  %mul20 = fmul double 5.000000e-01, %32
  %add21 = fadd double 5.000000e-01, %mul20
  %mul22 = fmul double %call19, %add21
  %33 = load %struct.params*, %struct.params** %p.addr, align 8
  %c21 = getelementptr inbounds %struct.params, %struct.params* %33, i32 0, i32 5
  %34 = load double, double* %c21, align 8
  %35 = load double, double* %x, align 8
  %mul23 = fmul double %34, %35
  %36 = load %struct.params*, %struct.params** %p.addr, align 8
  %c22 = getelementptr inbounds %struct.params, %struct.params* %36, i32 0, i32 6
  %37 = load double, double* %c22, align 8
  %38 = load double, double* %y, align 8
  %mul24 = fmul double %37, %38
  %add25 = fadd double %mul23, %mul24
  %39 = load %struct.params*, %struct.params** %p.addr, align 8
  %c23 = getelementptr inbounds %struct.params, %struct.params* %39, i32 0, i32 7
  %40 = load double, double* %c23, align 8
  %add26 = fadd double %add25, %40
  %call27 = call double @sin(double %add26) #4
  %41 = load double, double* %c, align 8
  %mul28 = fmul double 5.000000e-01, %41
  %sub = fsub double 5.000000e-01, %mul28
  %mul29 = fmul double %call27, %sub
  %add30 = fadd double %mul22, %mul29
  store double %add30, double* %grey, align 8
  %42 = load %struct.params*, %struct.params** %p.addr, align 8
  %blend = getelementptr inbounds %struct.params, %struct.params* %42, i32 0, i32 11
  %43 = load double (double)*, double (double)** %blend, align 8
  %44 = load double, double* getelementptr inbounds (%struct.SinusVals, %struct.SinusVals* @svals, i32 0, i32 2), align 8
  %45 = load double, double* %grey, align 8
  %mul31 = fmul double 5.000000e-01, %45
  %add32 = fadd double 5.000000e-01, %mul31
  %mul33 = fmul double %44, %add32
  %call34 = call double %43(double %mul33)
  %46 = load double, double* %pow_exp, align 8
  %call35 = call double @pow(double %call34, double %46) #4
  store double %call35, double* %grey, align 8
  %47 = load void (i8*, double, %struct.params*)*, void (i8*, double, %struct.params*)** %assign.addr, align 8
  %48 = load i8*, i8** %dest, align 8
  %49 = load double, double* %grey, align 8
  %50 = load %struct.params*, %struct.params** %p.addr, align 8
  call void %47(i8* %48, double %49, %struct.params* %50)
  %51 = load i32, i32* %bpp.addr, align 4
  %52 = load i8*, i8** %dest, align 8
  %idx.ext = sext i32 %51 to i64
  %add.ptr = getelementptr inbounds i8, i8* %52, i64 %idx.ext
  store i8* %add.ptr, i8** %dest, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.6
  %53 = load i32, i32* %i, align 4
  %inc = add nsw i32 %53, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.2

for.end:                                          ; preds = %for.cond.2
  %54 = load i32, i32* %rowstride.addr, align 4
  %55 = load i8*, i8** %dest_row.addr, align 8
  %idx.ext36 = zext i32 %54 to i64
  %add.ptr37 = getelementptr inbounds i8, i8* %55, i64 %idx.ext36
  store i8* %add.ptr37, i8** %dest_row.addr, align 8
  br label %for.inc.38

for.inc.38:                                       ; preds = %for.end
  %56 = load i32, i32* %j, align 4
  %inc39 = add nsw i32 %56, 1
  store i32 %inc39, i32* %j, align 4
  br label %for.cond

for.end.40:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @assign_block_3(i8* %dest, double %grey, %struct.params* %p) #0 {
entry:
  %dest.addr = alloca i8*, align 8
  %grey.addr = alloca double, align 8
  %p.addr = alloca %struct.params*, align 8
  store i8* %dest, i8** %dest.addr, align 8
  store double %grey, double* %grey.addr, align 8
  store %struct.params* %p, %struct.params** %p.addr, align 8
  %0 = load %struct.params*, %struct.params** %p.addr, align 8
  %r = getelementptr inbounds %struct.params, %struct.params* %0, i32 0, i32 12
  %1 = load i8, i8* %r, align 1
  %conv = zext i8 %1 to i32
  %2 = load double, double* %grey.addr, align 8
  %3 = load %struct.params*, %struct.params** %p.addr, align 8
  %dr = getelementptr inbounds %struct.params, %struct.params* %3, i32 0, i32 16
  %4 = load i32, i32* %dr, align 4
  %conv1 = sitofp i32 %4 to double
  %mul = fmul double %2, %conv1
  %conv2 = fptosi double %mul to i32
  %add = add nsw i32 %conv, %conv2
  %conv3 = trunc i32 %add to i8
  %5 = load i8*, i8** %dest.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 0
  store i8 %conv3, i8* %arrayidx, align 1
  %6 = load %struct.params*, %struct.params** %p.addr, align 8
  %g = getelementptr inbounds %struct.params, %struct.params* %6, i32 0, i32 13
  %7 = load i8, i8* %g, align 1
  %conv4 = zext i8 %7 to i32
  %8 = load double, double* %grey.addr, align 8
  %9 = load %struct.params*, %struct.params** %p.addr, align 8
  %dg = getelementptr inbounds %struct.params, %struct.params* %9, i32 0, i32 17
  %10 = load i32, i32* %dg, align 4
  %conv5 = sitofp i32 %10 to double
  %mul6 = fmul double %8, %conv5
  %conv7 = fptosi double %mul6 to i32
  %add8 = add nsw i32 %conv4, %conv7
  %conv9 = trunc i32 %add8 to i8
  %11 = load i8*, i8** %dest.addr, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %11, i64 1
  store i8 %conv9, i8* %arrayidx10, align 1
  %12 = load %struct.params*, %struct.params** %p.addr, align 8
  %b = getelementptr inbounds %struct.params, %struct.params* %12, i32 0, i32 14
  %13 = load i8, i8* %b, align 1
  %conv11 = zext i8 %13 to i32
  %14 = load double, double* %grey.addr, align 8
  %15 = load %struct.params*, %struct.params** %p.addr, align 8
  %db = getelementptr inbounds %struct.params, %struct.params* %15, i32 0, i32 18
  %16 = load i32, i32* %db, align 4
  %conv12 = sitofp i32 %16 to double
  %mul13 = fmul double %14, %conv12
  %conv14 = fptosi double %mul13 to i32
  %add15 = add nsw i32 %conv11, %conv14
  %conv16 = trunc i32 %add15 to i8
  %17 = load i8*, i8** %dest.addr, align 8
  %arrayidx17 = getelementptr inbounds i8, i8* %17, i64 2
  store i8 %conv16, i8* %arrayidx17, align 1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @assign_block_1(i8* %dest, double %grey, %struct.params* %p) #0 {
entry:
  %dest.addr = alloca i8*, align 8
  %grey.addr = alloca double, align 8
  %p.addr = alloca %struct.params*, align 8
  store i8* %dest, i8** %dest.addr, align 8
  store double %grey, double* %grey.addr, align 8
  store %struct.params* %p, %struct.params** %p.addr, align 8
  %0 = load double, double* %grey.addr, align 8
  %mul = fmul double %0, 2.550000e+02
  %conv = fptoui double %mul to i8
  %1 = load i8*, i8** %dest.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 0
  store i8 %conv, i8* %arrayidx, align 1
  ret void
}

declare void @gimp_preview_area_draw(%struct._GimpPreviewArea*, i32, i32, i32, i32, i32, i8*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_preview_area_get_type() #3

declare void @g_free(i8*) #1

declare %struct._GRand* @g_rand_new() #1

declare void @g_rand_set_seed(%struct._GRand*, i32) #1

; Function Attrs: nounwind uwtable
define internal double @bilinear(double %v) #0 {
entry:
  %v.addr = alloca double, align 8
  %a = alloca double, align 8
  store double %v, double* %v.addr, align 8
  %0 = load double, double* %v.addr, align 8
  %1 = load double, double* %v.addr, align 8
  %conv = fptosi double %1 to i32
  %conv1 = sitofp i32 %conv to double
  %sub = fsub double %0, %conv1
  store double %sub, double* %a, align 8
  %2 = load double, double* %a, align 8
  %cmp = fcmp olt double %2, 0.000000e+00
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %3 = load double, double* %a, align 8
  %add = fadd double 1.000000e+00, %3
  br label %cond.end

cond.false:                                       ; preds = %entry
  %4 = load double, double* %a, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %add, %cond.true ], [ %4, %cond.false ]
  store double %cond, double* %a, align 8
  %5 = load double, double* %a, align 8
  %cmp3 = fcmp ogt double %5, 5.000000e-01
  br i1 %cmp3, label %cond.true.5, label %cond.false.7

cond.true.5:                                      ; preds = %cond.end
  %6 = load double, double* %a, align 8
  %mul = fmul double 2.000000e+00, %6
  %sub6 = fsub double 2.000000e+00, %mul
  br label %cond.end.9

cond.false.7:                                     ; preds = %cond.end
  %7 = load double, double* %a, align 8
  %mul8 = fmul double 2.000000e+00, %7
  br label %cond.end.9

cond.end.9:                                       ; preds = %cond.false.7, %cond.true.5
  %cond10 = phi double [ %sub6, %cond.true.5 ], [ %mul8, %cond.false.7 ]
  ret double %cond10
}

; Function Attrs: nounwind uwtable
define internal double @cosinus(double %v) #0 {
entry:
  %v.addr = alloca double, align 8
  store double %v, double* %v.addr, align 8
  %0 = load double, double* %v.addr, align 8
  %add = fadd double %0, 2.500000e-01
  %mul = fmul double %add, 0x400921FB54442D18
  %mul1 = fmul double %mul, 2.000000e+00
  %call = call double @sin(double %mul1) #4
  %mul2 = fmul double 5.000000e-01, %call
  %sub = fsub double 5.000000e-01, %mul2
  ret double %sub
}

; Function Attrs: nounwind uwtable
define internal double @linear(double %v) #0 {
entry:
  %v.addr = alloca double, align 8
  %a = alloca double, align 8
  store double %v, double* %v.addr, align 8
  %0 = load double, double* %v.addr, align 8
  %1 = load double, double* %v.addr, align 8
  %conv = fptosi double %1 to i32
  %conv1 = sitofp i32 %conv to double
  %sub = fsub double %0, %conv1
  store double %sub, double* %a, align 8
  %2 = load double, double* %a, align 8
  %cmp = fcmp olt double %2, 0.000000e+00
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %3 = load double, double* %a, align 8
  %add = fadd double 1.000000e+00, %3
  br label %cond.end

cond.false:                                       ; preds = %entry
  %4 = load double, double* %a, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %add, %cond.true ], [ %4, %cond.false ]
  ret double %cond
}

declare i32 @g_rand_int(%struct._GRand*) #1

declare double @g_rand_double_range(%struct._GRand*, double, double) #1

declare void @gimp_rgb_set(%struct._GimpRGB*, double, double, double) #1

declare i32 @gimp_context_get_background(%struct._GimpRGB*) #1

declare i32 @gimp_context_get_foreground(%struct._GimpRGB*) #1

declare void @gimp_rgba_get_uchar(%struct._GimpRGB*, i8*, i8*, i8*, i8*) #1

declare void @gimp_rgba_subtract(%struct._GimpRGB*, %struct._GimpRGB*) #1

declare void @g_rand_free(%struct._GRand*) #1

; Function Attrs: nounwind
declare double @sin(double) #2

; Function Attrs: nounwind
declare double @exp(double) #2

; Function Attrs: nounwind
declare double @pow(double, double) #2

declare i32 @gimp_drawable_mask_bounds(i32, i32*, i32*, i32*, i32*) #1

declare void @gimp_pixel_rgn_init(%struct._GimpPixelRgn*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32) #1

declare i8* @gimp_pixel_rgns_register(i32, ...) #1

; Function Attrs: nounwind uwtable
define internal void @assign_block_4(i8* %dest, double %grey, %struct.params* %p) #0 {
entry:
  %dest.addr = alloca i8*, align 8
  %grey.addr = alloca double, align 8
  %p.addr = alloca %struct.params*, align 8
  store i8* %dest, i8** %dest.addr, align 8
  store double %grey, double* %grey.addr, align 8
  store %struct.params* %p, %struct.params** %p.addr, align 8
  %0 = load %struct.params*, %struct.params** %p.addr, align 8
  %r = getelementptr inbounds %struct.params, %struct.params* %0, i32 0, i32 12
  %1 = load i8, i8* %r, align 1
  %conv = zext i8 %1 to i32
  %2 = load double, double* %grey.addr, align 8
  %3 = load %struct.params*, %struct.params** %p.addr, align 8
  %dr = getelementptr inbounds %struct.params, %struct.params* %3, i32 0, i32 16
  %4 = load i32, i32* %dr, align 4
  %conv1 = sitofp i32 %4 to double
  %mul = fmul double %2, %conv1
  %conv2 = fptosi double %mul to i32
  %add = add nsw i32 %conv, %conv2
  %conv3 = trunc i32 %add to i8
  %5 = load i8*, i8** %dest.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 0
  store i8 %conv3, i8* %arrayidx, align 1
  %6 = load %struct.params*, %struct.params** %p.addr, align 8
  %g = getelementptr inbounds %struct.params, %struct.params* %6, i32 0, i32 13
  %7 = load i8, i8* %g, align 1
  %conv4 = zext i8 %7 to i32
  %8 = load double, double* %grey.addr, align 8
  %9 = load %struct.params*, %struct.params** %p.addr, align 8
  %dg = getelementptr inbounds %struct.params, %struct.params* %9, i32 0, i32 17
  %10 = load i32, i32* %dg, align 4
  %conv5 = sitofp i32 %10 to double
  %mul6 = fmul double %8, %conv5
  %conv7 = fptosi double %mul6 to i32
  %add8 = add nsw i32 %conv4, %conv7
  %conv9 = trunc i32 %add8 to i8
  %11 = load i8*, i8** %dest.addr, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %11, i64 1
  store i8 %conv9, i8* %arrayidx10, align 1
  %12 = load %struct.params*, %struct.params** %p.addr, align 8
  %b = getelementptr inbounds %struct.params, %struct.params* %12, i32 0, i32 14
  %13 = load i8, i8* %b, align 1
  %conv11 = zext i8 %13 to i32
  %14 = load double, double* %grey.addr, align 8
  %15 = load %struct.params*, %struct.params** %p.addr, align 8
  %db = getelementptr inbounds %struct.params, %struct.params* %15, i32 0, i32 18
  %16 = load i32, i32* %db, align 4
  %conv12 = sitofp i32 %16 to double
  %mul13 = fmul double %14, %conv12
  %conv14 = fptosi double %mul13 to i32
  %add15 = add nsw i32 %conv11, %conv14
  %conv16 = trunc i32 %add15 to i8
  %17 = load i8*, i8** %dest.addr, align 8
  %arrayidx17 = getelementptr inbounds i8, i8* %17, i64 2
  store i8 %conv16, i8* %arrayidx17, align 1
  %18 = load %struct.params*, %struct.params** %p.addr, align 8
  %a = getelementptr inbounds %struct.params, %struct.params* %18, i32 0, i32 15
  %19 = load i8, i8* %a, align 1
  %conv18 = zext i8 %19 to i32
  %20 = load double, double* %grey.addr, align 8
  %21 = load %struct.params*, %struct.params** %p.addr, align 8
  %da = getelementptr inbounds %struct.params, %struct.params* %21, i32 0, i32 19
  %22 = load i32, i32* %da, align 4
  %conv19 = sitofp i32 %22 to double
  %mul20 = fmul double %20, %conv19
  %conv21 = fptosi double %mul20 to i32
  %add22 = add nsw i32 %conv18, %conv21
  %conv23 = trunc i32 %add22 to i8
  %23 = load i8*, i8** %dest.addr, align 8
  %arrayidx24 = getelementptr inbounds i8, i8* %23, i64 3
  store i8 %conv23, i8* %arrayidx24, align 1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @assign_block_2(i8* %dest, double %grey, %struct.params* %p) #0 {
entry:
  %dest.addr = alloca i8*, align 8
  %grey.addr = alloca double, align 8
  %p.addr = alloca %struct.params*, align 8
  store i8* %dest, i8** %dest.addr, align 8
  store double %grey, double* %grey.addr, align 8
  store %struct.params* %p, %struct.params** %p.addr, align 8
  %0 = load double, double* %grey.addr, align 8
  %mul = fmul double %0, 2.550000e+02
  %conv = fptoui double %mul to i8
  %1 = load i8*, i8** %dest.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 0
  store i8 %conv, i8* %arrayidx, align 1
  %2 = load %struct.params*, %struct.params** %p.addr, align 8
  %a = getelementptr inbounds %struct.params, %struct.params* %2, i32 0, i32 15
  %3 = load i8, i8* %a, align 1
  %conv1 = zext i8 %3 to i32
  %4 = load double, double* %grey.addr, align 8
  %5 = load %struct.params*, %struct.params** %p.addr, align 8
  %da = getelementptr inbounds %struct.params, %struct.params* %5, i32 0, i32 19
  %6 = load i32, i32* %da, align 4
  %conv2 = sitofp i32 %6 to double
  %mul3 = fmul double %4, %conv2
  %conv4 = fptosi double %mul3 to i32
  %add = add nsw i32 %conv1, %conv4
  %conv5 = trunc i32 %add to i8
  %7 = load i8*, i8** %dest.addr, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %7, i64 1
  store i8 %conv5, i8* %arrayidx6, align 1
  ret void
}

declare i32 @gimp_progress_update(double) #1

declare i8* @gimp_pixel_rgns_process(i8*) #1

declare void @gimp_drawable_flush(%struct._GimpDrawable*) #1

declare i32 @gimp_drawable_merge_shadow(i32, i32) #1

declare i32 @gimp_drawable_update(i32, i32, i32, i32, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
