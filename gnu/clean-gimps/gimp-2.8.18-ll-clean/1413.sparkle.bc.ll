; ModuleID = './plug-ins/common/sparkle.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpPlugInInfo = type { void ()*, void ()*, void ()*, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* }
%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpParamDef = type { i32, i8*, i8* }
%struct.SparkleVals = type { double, double, double, double, double, double, double, double, double, i32, i32, i32, i32 }
%struct._GimpDrawable = type { i32, i32, i32, i32, i32, i32, %struct._GimpTile*, %struct._GimpTile* }
%struct._GimpTile = type { i32, i32, i32, i32, i16, i8, i8*, %struct._GimpDrawable* }
%struct._GimpPreview = type { %struct._GtkBox, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GdkCursor*, %struct._GdkCursor*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
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
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GdkCursor = type { i32, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GtkDialog = type { %struct._GtkWindow, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GtkTable = type { %struct._GtkContainer, %struct._GList*, %struct._GtkTableRowCol*, %struct._GtkTableRowCol*, i16, i16, i16, i16, i8 }
%struct._GtkTableRowCol = type { i16, i16, i16, i8 }
%struct._GtkToggleButton = type { %struct._GtkButton, i8 }
%struct._GtkButton = type { %struct._GtkBin, %struct._GdkDrawable*, i8*, i32, i16 }
%struct._GimpDialog = type { %struct._GtkDialog }
%struct._GimpPixelRgn = type { i8*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32, i8, i32 }
%struct._GRand = type opaque
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }

@PLUG_IN_INFO = constant %struct._GimpPlugInInfo { void ()* null, void ()* null, void ()* @query, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* @run }, align 8
@query.args = internal constant [16 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i32 0, i32 0) }, %struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.15, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.17, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.19, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.21, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.23, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.25, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.27, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.29, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.31, i32 0, i32 0) }], align 16
@.str = private unnamed_addr constant [9 x i8] c"run-mode\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"The run mode { RUN-INTERACTIVE (0), RUN-NONINTERACTIVE (1) }\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Input image (unused)\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"drawable\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"Input drawable\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"lum-threshold\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"Luminosity threshold (0.0 - 1.0)\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"flare-inten\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"Flare intensity (0.0 - 1.0)\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"spike-len\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"Spike length (in pixels)\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"spike-pts\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"# of spike points\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"spike-angle\00", align 1
@.str.15 = private unnamed_addr constant [40 x i8] c"Spike angle (0-360 degrees, -1: random)\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"density\00", align 1
@.str.17 = private unnamed_addr constant [26 x i8] c"Spike density (0.0 - 1.0)\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"transparency\00", align 1
@.str.19 = private unnamed_addr constant [25 x i8] c"Transparency (0.0 - 1.0)\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"random-hue\00", align 1
@.str.21 = private unnamed_addr constant [23 x i8] c"Random hue (0.0 - 1.0)\00", align 1
@.str.22 = private unnamed_addr constant [18 x i8] c"random-saturation\00", align 1
@.str.23 = private unnamed_addr constant [30 x i8] c"Random saturation (0.0 - 1.0)\00", align 1
@.str.24 = private unnamed_addr constant [20 x i8] c"preserve-luminosity\00", align 1
@.str.25 = private unnamed_addr constant [33 x i8] c"Preserve luminosity (TRUE/FALSE)\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"inverse\00", align 1
@.str.27 = private unnamed_addr constant [21 x i8] c"Inverse (TRUE/FALSE)\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"border\00", align 1
@.str.29 = private unnamed_addr constant [24 x i8] c"Add border (TRUE/FALSE)\00", align 1
@.str.30 = private unnamed_addr constant [11 x i8] c"color-type\00", align 1
@.str.31 = private unnamed_addr constant [67 x i8] c"Color of sparkles: { NATURAL (0), FOREGROUND (1), BACKGROUND (2) }\00", align 1
@.str.32 = private unnamed_addr constant [16 x i8] c"plug-in-sparkle\00", align 1
@.str.33 = private unnamed_addr constant [39 x i8] c"Turn bright spots into starry sparkles\00", align 1
@.str.34 = private unnamed_addr constant [106 x i8] c"Uses a percentage based luminoisty threhsold to find candidate pixels for adding some sparkles (spikes). \00", align 1
@.str.35 = private unnamed_addr constant [108 x i8] c"John Beale, & (ported to GIMP v0.54) Michael J. Hammel & ted to GIMP v1.0) & Seth Burgess & Spencer Kimball\00", align 1
@.str.36 = private unnamed_addr constant [11 x i8] c"John Beale\00", align 1
@.str.37 = private unnamed_addr constant [29 x i8] c"Version 1.27, September 2003\00", align 1
@.str.38 = private unnamed_addr constant [12 x i8] c"_Sparkle...\00", align 1
@.str.39 = private unnamed_addr constant [12 x i8] c"RGB*, GRAY*\00", align 1
@.str.40 = private unnamed_addr constant [39 x i8] c"<Image>/Filters/Light and Shadow/Light\00", align 1
@run.values = internal global [1 x %struct._GimpParam] zeroinitializer, align 16
@.str.41 = private unnamed_addr constant [20 x i8] c"gimp20-std-plug-ins\00", align 1
@.str.42 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@.str.43 = private unnamed_addr constant [36 x i8] c"Region selected for filter is empty\00", align 1
@svals = internal global %struct.SparkleVals { double 1.000000e-03, double 5.000000e-01, double 2.000000e+01, double 4.000000e+00, double 1.500000e+01, double 1.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, i32 0, i32 0, i32 0, i32 0 }, align 8
@.str.44 = private unnamed_addr constant [10 x i8] c"Sparkling\00", align 1
@.str.45 = private unnamed_addr constant [8 x i8] c"sparkle\00", align 1
@.str.46 = private unnamed_addr constant [8 x i8] c"Sparkle\00", align 1
@.str.47 = private unnamed_addr constant [13 x i8] c"gimp-sparkle\00", align 1
@.str.48 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.49 = private unnamed_addr constant [7 x i8] c"gtk-ok\00", align 1
@.str.50 = private unnamed_addr constant [12 x i8] c"invalidated\00", align 1
@.str.51 = private unnamed_addr constant [23 x i8] c"Luminosity _threshold:\00", align 1
@.str.52 = private unnamed_addr constant [32 x i8] c"Adjust the luminosity threshold\00", align 1
@.str.53 = private unnamed_addr constant [14 x i8] c"value-changed\00", align 1
@.str.54 = private unnamed_addr constant [18 x i8] c"F_lare intensity:\00", align 1
@.str.55 = private unnamed_addr constant [27 x i8] c"Adjust the flare intensity\00", align 1
@.str.56 = private unnamed_addr constant [15 x i8] c"_Spike length:\00", align 1
@.str.57 = private unnamed_addr constant [24 x i8] c"Adjust the spike length\00", align 1
@.str.58 = private unnamed_addr constant [15 x i8] c"Sp_ike points:\00", align 1
@.str.59 = private unnamed_addr constant [28 x i8] c"Adjust the number of spikes\00", align 1
@.str.60 = private unnamed_addr constant [27 x i8] c"Spi_ke angle (-1: random):\00", align 1
@.str.61 = private unnamed_addr constant [63 x i8] c"Adjust the spike angle (-1 causes a random angle to be chosen)\00", align 1
@.str.62 = private unnamed_addr constant [16 x i8] c"Spik_e density:\00", align 1
@.str.63 = private unnamed_addr constant [25 x i8] c"Adjust the spike density\00", align 1
@.str.64 = private unnamed_addr constant [15 x i8] c"Tr_ansparency:\00", align 1
@.str.65 = private unnamed_addr constant [33 x i8] c"Adjust the opacity of the spikes\00", align 1
@.str.66 = private unnamed_addr constant [13 x i8] c"_Random hue:\00", align 1
@.str.67 = private unnamed_addr constant [51 x i8] c"Adjust how much the hue should be changed randomly\00", align 1
@.str.68 = private unnamed_addr constant [20 x i8] c"Rando_m saturation:\00", align 1
@.str.69 = private unnamed_addr constant [58 x i8] c"Adjust how much the saturation should be changed randomly\00", align 1
@.str.70 = private unnamed_addr constant [21 x i8] c"_Preserve luminosity\00", align 1
@.str.71 = private unnamed_addr constant [36 x i8] c"Should the luminosity be preserved?\00", align 1
@.str.72 = private unnamed_addr constant [8 x i8] c"toggled\00", align 1
@.str.73 = private unnamed_addr constant [9 x i8] c"In_verse\00", align 1
@.str.74 = private unnamed_addr constant [31 x i8] c"Should the effect be inversed?\00", align 1
@.str.75 = private unnamed_addr constant [12 x i8] c"A_dd border\00", align 1
@.str.76 = private unnamed_addr constant [41 x i8] c"Draw a border of spikes around the image\00", align 1
@.str.77 = private unnamed_addr constant [15 x i8] c"_Natural color\00", align 1
@.str.78 = private unnamed_addr constant [18 x i8] c"_Foreground color\00", align 1
@.str.79 = private unnamed_addr constant [18 x i8] c"_Background color\00", align 1
@.str.80 = private unnamed_addr constant [27 x i8] c"Use the color of the image\00", align 1
@.str.81 = private unnamed_addr constant [25 x i8] c"Use the foreground color\00", align 1
@.str.82 = private unnamed_addr constant [25 x i8] c"Use the background color\00", align 1
@num_sparkles = internal global i32 0, align 4

; Function Attrs: nounwind uwtable
define internal void @query() #0 {
entry:
  call void @gimp_install_procedure(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([106 x i8], [106 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([108 x i8], [108 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.39, i32 0, i32 0), i32 1, i32 16, i32 0, %struct._GimpParamDef* getelementptr inbounds ([16 x %struct._GimpParamDef], [16 x %struct._GimpParamDef]* @query.args, i32 0, i32 0), %struct._GimpParamDef* null)
  %call = call i32 @gimp_plugin_menu_register(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.40, i32 0, i32 0))
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
  %drawable = alloca %struct._GimpDrawable*, align 8
  %run_mode = alloca i32, align 4
  %status = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %w = alloca i32, align 4
  %h = alloca i32, align 4
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
  %call1 = call i8* @bindtextdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.41, i32 0, i32 0), i8* %call) #4
  %call2 = call i8* @bind_textdomain_codeset(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.42, i32 0, i32 0)) #4
  %call3 = call i8* @textdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.41, i32 0, i32 0)) #4
  br label %do.end

do.end:                                           ; preds = %do.body
  %2 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 1, i32* %2, align 4
  %3 = load %struct._GimpParam**, %struct._GimpParam*** %return_vals.addr, align 8
  store %struct._GimpParam* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i32 0), %struct._GimpParam** %3, align 8
  store i32 21, i32* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 0), align 4
  %4 = load i32, i32* %status, align 4
  store i32 %4, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  %5 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx4 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %5, i64 2
  %data5 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx4, i32 0, i32 1
  %d_drawable = bitcast %union._GimpParamData* %data5 to i32*
  %6 = load i32, i32* %d_drawable, align 4
  %call6 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %6)
  store %struct._GimpDrawable* %call6, %struct._GimpDrawable** %drawable, align 8
  %7 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %7, i32 0, i32 0
  %8 = load i32, i32* %drawable_id, align 4
  %call7 = call i32 @gimp_drawable_mask_intersect(i32 %8, i32* %x, i32* %y, i32* %w, i32* %h)
  %tobool = icmp ne i32 %call7, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %do.end
  %call8 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.43, i32 0, i32 0)) #4
  call void (i8*, ...) @g_message(i8* %call8)
  br label %return

if.end:                                           ; preds = %do.end
  %9 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %9, i32 0, i32 1
  %10 = load i32, i32* %width, align 4
  %call9 = call i32 @gimp_tile_width() #6
  %div = udiv i32 %10, %call9
  %add = add i32 %div, 1
  %mul = mul i32 2, %add
  %conv = zext i32 %mul to i64
  call void @gimp_tile_cache_ntiles(i64 %conv)
  %11 = load i32, i32* %run_mode, align 4
  switch i32 %11, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.15
    i32 2, label %sw.bb.137
  ]

sw.bb:                                            ; preds = %if.end
  %call10 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.32, i32 0, i32 0), i8* bitcast (%struct.SparkleVals* @svals to i8*))
  %12 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call11 = call i32 @sparkle_dialog(%struct._GimpDrawable* %12)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.end.14, label %if.then.13

if.then.13:                                       ; preds = %sw.bb
  br label %return

if.end.14:                                        ; preds = %sw.bb
  br label %sw.epilog

sw.bb.15:                                         ; preds = %if.end
  %13 = load i32, i32* %nparams.addr, align 4
  %cmp = icmp ne i32 %13, 16
  br i1 %cmp, label %if.then.17, label %if.else

if.then.17:                                       ; preds = %sw.bb.15
  store i32 1, i32* %status, align 4
  br label %if.end.136

if.else:                                          ; preds = %sw.bb.15
  %14 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx18 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %14, i64 3
  %data19 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx18, i32 0, i32 1
  %d_float = bitcast %union._GimpParamData* %data19 to double*
  %15 = load double, double* %d_float, align 8
  store double %15, double* getelementptr inbounds (%struct.SparkleVals, %struct.SparkleVals* @svals, i32 0, i32 0), align 8
  %16 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx20 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %16, i64 4
  %data21 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx20, i32 0, i32 1
  %d_float22 = bitcast %union._GimpParamData* %data21 to double*
  %17 = load double, double* %d_float22, align 8
  store double %17, double* getelementptr inbounds (%struct.SparkleVals, %struct.SparkleVals* @svals, i32 0, i32 1), align 8
  %18 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx23 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %18, i64 5
  %data24 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx23, i32 0, i32 1
  %d_int3225 = bitcast %union._GimpParamData* %data24 to i32*
  %19 = load i32, i32* %d_int3225, align 4
  %conv26 = sitofp i32 %19 to double
  store double %conv26, double* getelementptr inbounds (%struct.SparkleVals, %struct.SparkleVals* @svals, i32 0, i32 2), align 8
  %20 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx27 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %20, i64 6
  %data28 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx27, i32 0, i32 1
  %d_int3229 = bitcast %union._GimpParamData* %data28 to i32*
  %21 = load i32, i32* %d_int3229, align 4
  %conv30 = sitofp i32 %21 to double
  store double %conv30, double* getelementptr inbounds (%struct.SparkleVals, %struct.SparkleVals* @svals, i32 0, i32 3), align 8
  %22 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx31 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %22, i64 7
  %data32 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx31, i32 0, i32 1
  %d_int3233 = bitcast %union._GimpParamData* %data32 to i32*
  %23 = load i32, i32* %d_int3233, align 4
  %conv34 = sitofp i32 %23 to double
  store double %conv34, double* getelementptr inbounds (%struct.SparkleVals, %struct.SparkleVals* @svals, i32 0, i32 4), align 8
  %24 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx35 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %24, i64 8
  %data36 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx35, i32 0, i32 1
  %d_float37 = bitcast %union._GimpParamData* %data36 to double*
  %25 = load double, double* %d_float37, align 8
  store double %25, double* getelementptr inbounds (%struct.SparkleVals, %struct.SparkleVals* @svals, i32 0, i32 5), align 8
  %26 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx38 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %26, i64 9
  %data39 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx38, i32 0, i32 1
  %d_float40 = bitcast %union._GimpParamData* %data39 to double*
  %27 = load double, double* %d_float40, align 8
  store double %27, double* getelementptr inbounds (%struct.SparkleVals, %struct.SparkleVals* @svals, i32 0, i32 6), align 8
  %28 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx41 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %28, i64 10
  %data42 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx41, i32 0, i32 1
  %d_float43 = bitcast %union._GimpParamData* %data42 to double*
  %29 = load double, double* %d_float43, align 8
  store double %29, double* getelementptr inbounds (%struct.SparkleVals, %struct.SparkleVals* @svals, i32 0, i32 7), align 8
  %30 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx44 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %30, i64 11
  %data45 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx44, i32 0, i32 1
  %d_float46 = bitcast %union._GimpParamData* %data45 to double*
  %31 = load double, double* %d_float46, align 8
  store double %31, double* getelementptr inbounds (%struct.SparkleVals, %struct.SparkleVals* @svals, i32 0, i32 8), align 8
  %32 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx47 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %32, i64 12
  %data48 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx47, i32 0, i32 1
  %d_int3249 = bitcast %union._GimpParamData* %data48 to i32*
  %33 = load i32, i32* %d_int3249, align 4
  %tobool50 = icmp ne i32 %33, 0
  %cond = select i1 %tobool50, i32 1, i32 0
  store i32 %cond, i32* getelementptr inbounds (%struct.SparkleVals, %struct.SparkleVals* @svals, i32 0, i32 9), align 4
  %34 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx51 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %34, i64 13
  %data52 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx51, i32 0, i32 1
  %d_int3253 = bitcast %union._GimpParamData* %data52 to i32*
  %35 = load i32, i32* %d_int3253, align 4
  %tobool54 = icmp ne i32 %35, 0
  %cond55 = select i1 %tobool54, i32 1, i32 0
  store i32 %cond55, i32* getelementptr inbounds (%struct.SparkleVals, %struct.SparkleVals* @svals, i32 0, i32 10), align 4
  %36 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx56 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %36, i64 14
  %data57 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx56, i32 0, i32 1
  %d_int3258 = bitcast %union._GimpParamData* %data57 to i32*
  %37 = load i32, i32* %d_int3258, align 4
  %tobool59 = icmp ne i32 %37, 0
  %cond60 = select i1 %tobool59, i32 1, i32 0
  store i32 %cond60, i32* getelementptr inbounds (%struct.SparkleVals, %struct.SparkleVals* @svals, i32 0, i32 11), align 4
  %38 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx61 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %38, i64 15
  %data62 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx61, i32 0, i32 1
  %d_int3263 = bitcast %union._GimpParamData* %data62 to i32*
  %39 = load i32, i32* %d_int3263, align 4
  store i32 %39, i32* getelementptr inbounds (%struct.SparkleVals, %struct.SparkleVals* @svals, i32 0, i32 12), align 4
  %40 = load double, double* getelementptr inbounds (%struct.SparkleVals, %struct.SparkleVals* @svals, i32 0, i32 0), align 8
  %cmp64 = fcmp olt double %40, 0.000000e+00
  br i1 %cmp64, label %if.then.68, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %41 = load double, double* getelementptr inbounds (%struct.SparkleVals, %struct.SparkleVals* @svals, i32 0, i32 0), align 8
  %cmp66 = fcmp ogt double %41, 1.000000e+00
  br i1 %cmp66, label %if.then.68, label %if.else.69

if.then.68:                                       ; preds = %lor.lhs.false, %if.else
  store i32 1, i32* %status, align 4
  br label %if.end.135

if.else.69:                                       ; preds = %lor.lhs.false
  %42 = load double, double* getelementptr inbounds (%struct.SparkleVals, %struct.SparkleVals* @svals, i32 0, i32 1), align 8
  %cmp70 = fcmp olt double %42, 0.000000e+00
  br i1 %cmp70, label %if.then.75, label %lor.lhs.false.72

lor.lhs.false.72:                                 ; preds = %if.else.69
  %43 = load double, double* getelementptr inbounds (%struct.SparkleVals, %struct.SparkleVals* @svals, i32 0, i32 1), align 8
  %cmp73 = fcmp ogt double %43, 1.000000e+00
  br i1 %cmp73, label %if.then.75, label %if.else.76

if.then.75:                                       ; preds = %lor.lhs.false.72, %if.else.69
  store i32 1, i32* %status, align 4
  br label %if.end.134

if.else.76:                                       ; preds = %lor.lhs.false.72
  %44 = load double, double* getelementptr inbounds (%struct.SparkleVals, %struct.SparkleVals* @svals, i32 0, i32 2), align 8
  %cmp77 = fcmp olt double %44, 0.000000e+00
  br i1 %cmp77, label %if.then.79, label %if.else.80

if.then.79:                                       ; preds = %if.else.76
  store i32 1, i32* %status, align 4
  br label %if.end.133

if.else.80:                                       ; preds = %if.else.76
  %45 = load double, double* getelementptr inbounds (%struct.SparkleVals, %struct.SparkleVals* @svals, i32 0, i32 3), align 8
  %cmp81 = fcmp olt double %45, 0.000000e+00
  br i1 %cmp81, label %if.then.83, label %if.else.84

if.then.83:                                       ; preds = %if.else.80
  store i32 1, i32* %status, align 4
  br label %if.end.132

if.else.84:                                       ; preds = %if.else.80
  %46 = load double, double* getelementptr inbounds (%struct.SparkleVals, %struct.SparkleVals* @svals, i32 0, i32 4), align 8
  %cmp85 = fcmp olt double %46, -1.000000e+00
  br i1 %cmp85, label %if.then.90, label %lor.lhs.false.87

lor.lhs.false.87:                                 ; preds = %if.else.84
  %47 = load double, double* getelementptr inbounds (%struct.SparkleVals, %struct.SparkleVals* @svals, i32 0, i32 4), align 8
  %cmp88 = fcmp ogt double %47, 3.600000e+02
  br i1 %cmp88, label %if.then.90, label %if.else.91

if.then.90:                                       ; preds = %lor.lhs.false.87, %if.else.84
  store i32 1, i32* %status, align 4
  br label %if.end.131

if.else.91:                                       ; preds = %lor.lhs.false.87
  %48 = load double, double* getelementptr inbounds (%struct.SparkleVals, %struct.SparkleVals* @svals, i32 0, i32 5), align 8
  %cmp92 = fcmp olt double %48, 0.000000e+00
  br i1 %cmp92, label %if.then.97, label %lor.lhs.false.94

lor.lhs.false.94:                                 ; preds = %if.else.91
  %49 = load double, double* getelementptr inbounds (%struct.SparkleVals, %struct.SparkleVals* @svals, i32 0, i32 5), align 8
  %cmp95 = fcmp ogt double %49, 1.000000e+00
  br i1 %cmp95, label %if.then.97, label %if.else.98

if.then.97:                                       ; preds = %lor.lhs.false.94, %if.else.91
  store i32 1, i32* %status, align 4
  br label %if.end.130

if.else.98:                                       ; preds = %lor.lhs.false.94
  %50 = load double, double* getelementptr inbounds (%struct.SparkleVals, %struct.SparkleVals* @svals, i32 0, i32 6), align 8
  %cmp99 = fcmp olt double %50, 0.000000e+00
  br i1 %cmp99, label %if.then.104, label %lor.lhs.false.101

lor.lhs.false.101:                                ; preds = %if.else.98
  %51 = load double, double* getelementptr inbounds (%struct.SparkleVals, %struct.SparkleVals* @svals, i32 0, i32 6), align 8
  %cmp102 = fcmp ogt double %51, 1.000000e+00
  br i1 %cmp102, label %if.then.104, label %if.else.105

if.then.104:                                      ; preds = %lor.lhs.false.101, %if.else.98
  store i32 1, i32* %status, align 4
  br label %if.end.129

if.else.105:                                      ; preds = %lor.lhs.false.101
  %52 = load double, double* getelementptr inbounds (%struct.SparkleVals, %struct.SparkleVals* @svals, i32 0, i32 7), align 8
  %cmp106 = fcmp olt double %52, 0.000000e+00
  br i1 %cmp106, label %if.then.111, label %lor.lhs.false.108

lor.lhs.false.108:                                ; preds = %if.else.105
  %53 = load double, double* getelementptr inbounds (%struct.SparkleVals, %struct.SparkleVals* @svals, i32 0, i32 7), align 8
  %cmp109 = fcmp ogt double %53, 1.000000e+00
  br i1 %cmp109, label %if.then.111, label %if.else.112

if.then.111:                                      ; preds = %lor.lhs.false.108, %if.else.105
  store i32 1, i32* %status, align 4
  br label %if.end.128

if.else.112:                                      ; preds = %lor.lhs.false.108
  %54 = load double, double* getelementptr inbounds (%struct.SparkleVals, %struct.SparkleVals* @svals, i32 0, i32 8), align 8
  %cmp113 = fcmp olt double %54, 0.000000e+00
  br i1 %cmp113, label %if.then.118, label %lor.lhs.false.115

lor.lhs.false.115:                                ; preds = %if.else.112
  %55 = load double, double* getelementptr inbounds (%struct.SparkleVals, %struct.SparkleVals* @svals, i32 0, i32 8), align 8
  %cmp116 = fcmp ogt double %55, 1.000000e+00
  br i1 %cmp116, label %if.then.118, label %if.else.119

if.then.118:                                      ; preds = %lor.lhs.false.115, %if.else.112
  store i32 1, i32* %status, align 4
  br label %if.end.127

if.else.119:                                      ; preds = %lor.lhs.false.115
  %56 = load i32, i32* getelementptr inbounds (%struct.SparkleVals, %struct.SparkleVals* @svals, i32 0, i32 12), align 4
  %cmp120 = icmp slt i32 %56, 0
  br i1 %cmp120, label %if.then.125, label %lor.lhs.false.122

lor.lhs.false.122:                                ; preds = %if.else.119
  %57 = load i32, i32* getelementptr inbounds (%struct.SparkleVals, %struct.SparkleVals* @svals, i32 0, i32 12), align 4
  %cmp123 = icmp sgt i32 %57, 2
  br i1 %cmp123, label %if.then.125, label %if.end.126

if.then.125:                                      ; preds = %lor.lhs.false.122, %if.else.119
  store i32 1, i32* %status, align 4
  br label %if.end.126

if.end.126:                                       ; preds = %if.then.125, %lor.lhs.false.122
  br label %if.end.127

if.end.127:                                       ; preds = %if.end.126, %if.then.118
  br label %if.end.128

if.end.128:                                       ; preds = %if.end.127, %if.then.111
  br label %if.end.129

if.end.129:                                       ; preds = %if.end.128, %if.then.104
  br label %if.end.130

if.end.130:                                       ; preds = %if.end.129, %if.then.97
  br label %if.end.131

if.end.131:                                       ; preds = %if.end.130, %if.then.90
  br label %if.end.132

if.end.132:                                       ; preds = %if.end.131, %if.then.83
  br label %if.end.133

if.end.133:                                       ; preds = %if.end.132, %if.then.79
  br label %if.end.134

if.end.134:                                       ; preds = %if.end.133, %if.then.75
  br label %if.end.135

if.end.135:                                       ; preds = %if.end.134, %if.then.68
  br label %if.end.136

if.end.136:                                       ; preds = %if.end.135, %if.then.17
  br label %sw.epilog

sw.bb.137:                                        ; preds = %if.end
  %call138 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.32, i32 0, i32 0), i8* bitcast (%struct.SparkleVals* @svals to i8*))
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.137, %if.end.136, %if.end.14
  %58 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id139 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %58, i32 0, i32 0
  %59 = load i32, i32* %drawable_id139, align 4
  %call140 = call i32 @gimp_drawable_is_rgb(i32 %59)
  %tobool141 = icmp ne i32 %call140, 0
  br i1 %tobool141, label %if.then.146, label %lor.lhs.false.142

lor.lhs.false.142:                                ; preds = %sw.epilog
  %60 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id143 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %60, i32 0, i32 0
  %61 = load i32, i32* %drawable_id143, align 4
  %call144 = call i32 @gimp_drawable_is_gray(i32 %61)
  %tobool145 = icmp ne i32 %call144, 0
  br i1 %tobool145, label %if.then.146, label %if.else.159

if.then.146:                                      ; preds = %lor.lhs.false.142, %sw.epilog
  %call147 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.44, i32 0, i32 0)) #4
  %call148 = call i32 @gimp_progress_init(i8* %call147)
  %62 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @sparkle(%struct._GimpDrawable* %62, %struct._GimpPreview* null)
  %63 = load i32, i32* %run_mode, align 4
  %cmp149 = icmp ne i32 %63, 1
  br i1 %cmp149, label %if.then.151, label %if.end.153

if.then.151:                                      ; preds = %if.then.146
  %call152 = call i32 @gimp_displays_flush()
  br label %if.end.153

if.end.153:                                       ; preds = %if.then.151, %if.then.146
  %64 = load i32, i32* %run_mode, align 4
  %cmp154 = icmp eq i32 %64, 0
  br i1 %cmp154, label %if.then.156, label %if.end.158

if.then.156:                                      ; preds = %if.end.153
  %call157 = call i32 @gimp_procedural_db_set_data(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.32, i32 0, i32 0), i8* bitcast (%struct.SparkleVals* @svals to i8*), i32 88)
  br label %if.end.158

if.end.158:                                       ; preds = %if.then.156, %if.end.153
  br label %if.end.160

if.else.159:                                      ; preds = %lor.lhs.false.142
  store i32 0, i32* %status, align 4
  br label %if.end.160

if.end.160:                                       ; preds = %if.else.159, %if.end.158
  %65 = load i32, i32* %status, align 4
  store i32 %65, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  %66 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %66)
  br label %return

return:                                           ; preds = %if.end.160, %if.then.13, %if.then
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

declare %struct._GimpDrawable* @gimp_drawable_get(i32) #1

declare i32 @gimp_drawable_mask_intersect(i32, i32*, i32*, i32*, i32*) #1

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

declare void @gimp_tile_cache_ntiles(i64) #1

; Function Attrs: nounwind readnone
declare i32 @gimp_tile_width() #3

declare i32 @gimp_procedural_db_get_data(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @sparkle_dialog(%struct._GimpDrawable* %drawable) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %dialog = alloca %struct._GtkWidget*, align 8
  %main_vbox = alloca %struct._GtkWidget*, align 8
  %preview = alloca %struct._GtkWidget*, align 8
  %vbox = alloca %struct._GtkWidget*, align 8
  %hbox = alloca %struct._GtkWidget*, align 8
  %table = alloca %struct._GtkWidget*, align 8
  %toggle = alloca %struct._GtkWidget*, align 8
  %r1 = alloca %struct._GtkWidget*, align 8
  %r2 = alloca %struct._GtkWidget*, align 8
  %r3 = alloca %struct._GtkWidget*, align 8
  %scale_data = alloca %struct._GtkObject*, align 8
  %run = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  call void @gimp_ui_init(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.45, i32 0, i32 0), i32 0)
  %call = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.46, i32 0, i32 0)) #4
  %call1 = call %struct._GtkWidget* (i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) @gimp_dialog_new(i8* %call, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.47, i32 0, i32 0), %struct._GtkWidget* null, i32 0, void (i8*, i8*)* @gimp_standard_help_func, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.48, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.49, i32 0, i32 0), i32 -5, i8* null)
  store %struct._GtkWidget* %call1, %struct._GtkWidget** %dialog, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_dialog_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call2)
  %2 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkDialog*
  call void (%struct._GtkDialog*, i32, ...) @gtk_dialog_set_alternative_button_order(%struct._GtkDialog* %2, i32 -5, i32 -6, i32 -1)
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_window_get_type() #6
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call4)
  %5 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkWindow*
  call void @gimp_window_set_transient(%struct._GtkWindow* %5)
  %call6 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 12)
  store %struct._GtkWidget* %call6, %struct._GtkWidget** %main_vbox, align 8
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %7 = bitcast %struct._GtkWidget* %6 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_container_get_type() #6
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call7)
  %8 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %8, i32 12)
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %10 = bitcast %struct._GtkWidget* %9 to %struct._GTypeInstance*
  %call9 = call i64 @gtk_dialog_get_type() #6
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call9)
  %11 = bitcast %struct._GTypeInstance* %call10 to %struct._GtkDialog*
  %call11 = call %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog* %11)
  %12 = bitcast %struct._GtkWidget* %call11 to %struct._GTypeInstance*
  %call12 = call i64 @gtk_box_get_type() #6
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call12)
  %13 = bitcast %struct._GTypeInstance* %call13 to %struct._GtkBox*
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %13, %struct._GtkWidget* %14, i32 1, i32 1, i32 0)
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %15)
  %16 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call14 = call %struct._GtkWidget* @gimp_drawable_preview_new(%struct._GimpDrawable* %16, i32* null)
  store %struct._GtkWidget* %call14, %struct._GtkWidget** %preview, align 8
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %18 = bitcast %struct._GtkWidget* %17 to %struct._GTypeInstance*
  %call15 = call i64 @gtk_box_get_type() #6
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call15)
  %19 = bitcast %struct._GTypeInstance* %call16 to %struct._GtkBox*
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %19, %struct._GtkWidget* %20, i32 1, i32 1, i32 0)
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %21)
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %23 = bitcast %struct._GtkWidget* %22 to i8*
  %24 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %25 = bitcast %struct._GimpDrawable* %24 to i8*
  %call17 = call i64 @g_signal_connect_data(i8* %23, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.50, i32 0, i32 0), void ()* bitcast (void (%struct._GimpDrawable*, %struct._GimpPreview*)* @sparkle to void ()*), i8* %25, void (i8*, %struct._GClosure*)* null, i32 2)
  %call18 = call %struct._GtkWidget* @gtk_table_new(i32 9, i32 3, i32 0)
  store %struct._GtkWidget* %call18, %struct._GtkWidget** %table, align 8
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %27 = bitcast %struct._GtkWidget* %26 to %struct._GTypeInstance*
  %call19 = call i64 @gtk_table_get_type() #6
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call19)
  %28 = bitcast %struct._GTypeInstance* %call20 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %28, i32 6)
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %30 = bitcast %struct._GtkWidget* %29 to %struct._GTypeInstance*
  %call21 = call i64 @gtk_table_get_type() #6
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call21)
  %31 = bitcast %struct._GTypeInstance* %call22 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %31, i32 6)
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %33 = bitcast %struct._GtkWidget* %32 to %struct._GTypeInstance*
  %call23 = call i64 @gtk_box_get_type() #6
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 %call23)
  %34 = bitcast %struct._GTypeInstance* %call24 to %struct._GtkBox*
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %34, %struct._GtkWidget* %35, i32 0, i32 0, i32 0)
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %36)
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %38 = bitcast %struct._GtkWidget* %37 to %struct._GTypeInstance*
  %call25 = call i64 @gtk_table_get_type() #6
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %38, i64 %call25)
  %39 = bitcast %struct._GTypeInstance* %call26 to %struct._GtkTable*
  %call27 = call i8* @gettext(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.51, i32 0, i32 0)) #4
  %40 = load double, double* getelementptr inbounds (%struct.SparkleVals, %struct.SparkleVals* @svals, i32 0, i32 0), align 8
  %call28 = call i8* @gettext(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.52, i32 0, i32 0)) #4
  %call29 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %39, i32 0, i32 0, i8* %call27, i32 175, i32 7, double %40, double 0.000000e+00, double 1.000000e-01, double 1.000000e-03, double 1.000000e-02, i32 3, i32 1, double 0.000000e+00, double 0.000000e+00, i8* %call28, i8* null)
  store %struct._GtkObject* %call29, %struct._GtkObject** %scale_data, align 8
  %41 = load %struct._GtkObject*, %struct._GtkObject** %scale_data, align 8
  %42 = bitcast %struct._GtkObject* %41 to i8*
  %call30 = call i64 @g_signal_connect_data(i8* %42, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.53, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_double_adjustment_update to void ()*), i8* bitcast (%struct.SparkleVals* @svals to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %43 = load %struct._GtkObject*, %struct._GtkObject** %scale_data, align 8
  %44 = bitcast %struct._GtkObject* %43 to i8*
  %45 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %46 = bitcast %struct._GtkWidget* %45 to i8*
  %call31 = call i64 @g_signal_connect_data(i8* %44, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.53, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %46, void (i8*, %struct._GClosure*)* null, i32 2)
  %47 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %48 = bitcast %struct._GtkWidget* %47 to %struct._GTypeInstance*
  %call32 = call i64 @gtk_table_get_type() #6
  %call33 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %48, i64 %call32)
  %49 = bitcast %struct._GTypeInstance* %call33 to %struct._GtkTable*
  %call34 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.54, i32 0, i32 0)) #4
  %50 = load double, double* getelementptr inbounds (%struct.SparkleVals, %struct.SparkleVals* @svals, i32 0, i32 1), align 8
  %call35 = call i8* @gettext(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.55, i32 0, i32 0)) #4
  %call36 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %49, i32 0, i32 1, i8* %call34, i32 175, i32 7, double %50, double 0.000000e+00, double 1.000000e+00, double 1.000000e-02, double 1.000000e-01, i32 2, i32 1, double 0.000000e+00, double 0.000000e+00, i8* %call35, i8* null)
  store %struct._GtkObject* %call36, %struct._GtkObject** %scale_data, align 8
  %51 = load %struct._GtkObject*, %struct._GtkObject** %scale_data, align 8
  %52 = bitcast %struct._GtkObject* %51 to i8*
  %call37 = call i64 @g_signal_connect_data(i8* %52, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.53, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_double_adjustment_update to void ()*), i8* bitcast (double* getelementptr inbounds (%struct.SparkleVals, %struct.SparkleVals* @svals, i32 0, i32 1) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %53 = load %struct._GtkObject*, %struct._GtkObject** %scale_data, align 8
  %54 = bitcast %struct._GtkObject* %53 to i8*
  %55 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %56 = bitcast %struct._GtkWidget* %55 to i8*
  %call38 = call i64 @g_signal_connect_data(i8* %54, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.53, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %56, void (i8*, %struct._GClosure*)* null, i32 2)
  %57 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %58 = bitcast %struct._GtkWidget* %57 to %struct._GTypeInstance*
  %call39 = call i64 @gtk_table_get_type() #6
  %call40 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %58, i64 %call39)
  %59 = bitcast %struct._GTypeInstance* %call40 to %struct._GtkTable*
  %call41 = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.56, i32 0, i32 0)) #4
  %60 = load double, double* getelementptr inbounds (%struct.SparkleVals, %struct.SparkleVals* @svals, i32 0, i32 2), align 8
  %call42 = call i8* @gettext(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.57, i32 0, i32 0)) #4
  %call43 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %59, i32 0, i32 2, i8* %call41, i32 175, i32 7, double %60, double 1.000000e+00, double 1.000000e+02, double 1.000000e+00, double 1.000000e+01, i32 0, i32 1, double 0.000000e+00, double 0.000000e+00, i8* %call42, i8* null)
  store %struct._GtkObject* %call43, %struct._GtkObject** %scale_data, align 8
  %61 = load %struct._GtkObject*, %struct._GtkObject** %scale_data, align 8
  %62 = bitcast %struct._GtkObject* %61 to i8*
  %call44 = call i64 @g_signal_connect_data(i8* %62, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.53, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_double_adjustment_update to void ()*), i8* bitcast (double* getelementptr inbounds (%struct.SparkleVals, %struct.SparkleVals* @svals, i32 0, i32 2) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %63 = load %struct._GtkObject*, %struct._GtkObject** %scale_data, align 8
  %64 = bitcast %struct._GtkObject* %63 to i8*
  %65 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %66 = bitcast %struct._GtkWidget* %65 to i8*
  %call45 = call i64 @g_signal_connect_data(i8* %64, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.53, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %66, void (i8*, %struct._GClosure*)* null, i32 2)
  %67 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %68 = bitcast %struct._GtkWidget* %67 to %struct._GTypeInstance*
  %call46 = call i64 @gtk_table_get_type() #6
  %call47 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %68, i64 %call46)
  %69 = bitcast %struct._GTypeInstance* %call47 to %struct._GtkTable*
  %call48 = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.58, i32 0, i32 0)) #4
  %70 = load double, double* getelementptr inbounds (%struct.SparkleVals, %struct.SparkleVals* @svals, i32 0, i32 3), align 8
  %call49 = call i8* @gettext(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.59, i32 0, i32 0)) #4
  %call50 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %69, i32 0, i32 3, i8* %call48, i32 175, i32 7, double %70, double 0.000000e+00, double 1.600000e+01, double 1.000000e+00, double 4.000000e+00, i32 0, i32 1, double 0.000000e+00, double 0.000000e+00, i8* %call49, i8* null)
  store %struct._GtkObject* %call50, %struct._GtkObject** %scale_data, align 8
  %71 = load %struct._GtkObject*, %struct._GtkObject** %scale_data, align 8
  %72 = bitcast %struct._GtkObject* %71 to i8*
  %call51 = call i64 @g_signal_connect_data(i8* %72, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.53, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_double_adjustment_update to void ()*), i8* bitcast (double* getelementptr inbounds (%struct.SparkleVals, %struct.SparkleVals* @svals, i32 0, i32 3) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %73 = load %struct._GtkObject*, %struct._GtkObject** %scale_data, align 8
  %74 = bitcast %struct._GtkObject* %73 to i8*
  %75 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %76 = bitcast %struct._GtkWidget* %75 to i8*
  %call52 = call i64 @g_signal_connect_data(i8* %74, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.53, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %76, void (i8*, %struct._GClosure*)* null, i32 2)
  %77 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %78 = bitcast %struct._GtkWidget* %77 to %struct._GTypeInstance*
  %call53 = call i64 @gtk_table_get_type() #6
  %call54 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %78, i64 %call53)
  %79 = bitcast %struct._GTypeInstance* %call54 to %struct._GtkTable*
  %call55 = call i8* @gettext(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.60, i32 0, i32 0)) #4
  %80 = load double, double* getelementptr inbounds (%struct.SparkleVals, %struct.SparkleVals* @svals, i32 0, i32 4), align 8
  %call56 = call i8* @gettext(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.61, i32 0, i32 0)) #4
  %call57 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %79, i32 0, i32 4, i8* %call55, i32 175, i32 7, double %80, double -1.000000e+00, double 3.600000e+02, double 1.000000e+00, double 1.500000e+01, i32 0, i32 1, double 0.000000e+00, double 0.000000e+00, i8* %call56, i8* null)
  store %struct._GtkObject* %call57, %struct._GtkObject** %scale_data, align 8
  %81 = load %struct._GtkObject*, %struct._GtkObject** %scale_data, align 8
  %82 = bitcast %struct._GtkObject* %81 to i8*
  %call58 = call i64 @g_signal_connect_data(i8* %82, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.53, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_double_adjustment_update to void ()*), i8* bitcast (double* getelementptr inbounds (%struct.SparkleVals, %struct.SparkleVals* @svals, i32 0, i32 4) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %83 = load %struct._GtkObject*, %struct._GtkObject** %scale_data, align 8
  %84 = bitcast %struct._GtkObject* %83 to i8*
  %85 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %86 = bitcast %struct._GtkWidget* %85 to i8*
  %call59 = call i64 @g_signal_connect_data(i8* %84, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.53, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %86, void (i8*, %struct._GClosure*)* null, i32 2)
  %87 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %88 = bitcast %struct._GtkWidget* %87 to %struct._GTypeInstance*
  %call60 = call i64 @gtk_table_get_type() #6
  %call61 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %88, i64 %call60)
  %89 = bitcast %struct._GTypeInstance* %call61 to %struct._GtkTable*
  %call62 = call i8* @gettext(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.62, i32 0, i32 0)) #4
  %90 = load double, double* getelementptr inbounds (%struct.SparkleVals, %struct.SparkleVals* @svals, i32 0, i32 5), align 8
  %call63 = call i8* @gettext(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.63, i32 0, i32 0)) #4
  %call64 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %89, i32 0, i32 5, i8* %call62, i32 175, i32 7, double %90, double 0.000000e+00, double 1.000000e+00, double 1.000000e-02, double 1.000000e-01, i32 2, i32 1, double 0.000000e+00, double 0.000000e+00, i8* %call63, i8* null)
  store %struct._GtkObject* %call64, %struct._GtkObject** %scale_data, align 8
  %91 = load %struct._GtkObject*, %struct._GtkObject** %scale_data, align 8
  %92 = bitcast %struct._GtkObject* %91 to i8*
  %call65 = call i64 @g_signal_connect_data(i8* %92, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.53, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_double_adjustment_update to void ()*), i8* bitcast (double* getelementptr inbounds (%struct.SparkleVals, %struct.SparkleVals* @svals, i32 0, i32 5) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %93 = load %struct._GtkObject*, %struct._GtkObject** %scale_data, align 8
  %94 = bitcast %struct._GtkObject* %93 to i8*
  %95 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %96 = bitcast %struct._GtkWidget* %95 to i8*
  %call66 = call i64 @g_signal_connect_data(i8* %94, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.53, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %96, void (i8*, %struct._GClosure*)* null, i32 2)
  %97 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %98 = bitcast %struct._GtkWidget* %97 to %struct._GTypeInstance*
  %call67 = call i64 @gtk_table_get_type() #6
  %call68 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %98, i64 %call67)
  %99 = bitcast %struct._GTypeInstance* %call68 to %struct._GtkTable*
  %call69 = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.64, i32 0, i32 0)) #4
  %100 = load double, double* getelementptr inbounds (%struct.SparkleVals, %struct.SparkleVals* @svals, i32 0, i32 6), align 8
  %call70 = call i8* @gettext(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.65, i32 0, i32 0)) #4
  %call71 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %99, i32 0, i32 6, i8* %call69, i32 175, i32 7, double %100, double 0.000000e+00, double 1.000000e+00, double 1.000000e-02, double 1.000000e-01, i32 2, i32 1, double 0.000000e+00, double 0.000000e+00, i8* %call70, i8* null)
  store %struct._GtkObject* %call71, %struct._GtkObject** %scale_data, align 8
  %101 = load %struct._GtkObject*, %struct._GtkObject** %scale_data, align 8
  %102 = bitcast %struct._GtkObject* %101 to i8*
  %call72 = call i64 @g_signal_connect_data(i8* %102, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.53, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_double_adjustment_update to void ()*), i8* bitcast (double* getelementptr inbounds (%struct.SparkleVals, %struct.SparkleVals* @svals, i32 0, i32 6) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %103 = load %struct._GtkObject*, %struct._GtkObject** %scale_data, align 8
  %104 = bitcast %struct._GtkObject* %103 to i8*
  %105 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %106 = bitcast %struct._GtkWidget* %105 to i8*
  %call73 = call i64 @g_signal_connect_data(i8* %104, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.53, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %106, void (i8*, %struct._GClosure*)* null, i32 2)
  %107 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %108 = bitcast %struct._GtkWidget* %107 to %struct._GTypeInstance*
  %call74 = call i64 @gtk_table_get_type() #6
  %call75 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %108, i64 %call74)
  %109 = bitcast %struct._GTypeInstance* %call75 to %struct._GtkTable*
  %call76 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.66, i32 0, i32 0)) #4
  %110 = load double, double* getelementptr inbounds (%struct.SparkleVals, %struct.SparkleVals* @svals, i32 0, i32 7), align 8
  %call77 = call i8* @gettext(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.67, i32 0, i32 0)) #4
  %call78 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %109, i32 0, i32 7, i8* %call76, i32 175, i32 7, double %110, double 0.000000e+00, double 1.000000e+00, double 1.000000e-02, double 1.000000e-01, i32 2, i32 1, double 0.000000e+00, double 0.000000e+00, i8* %call77, i8* null)
  store %struct._GtkObject* %call78, %struct._GtkObject** %scale_data, align 8
  %111 = load %struct._GtkObject*, %struct._GtkObject** %scale_data, align 8
  %112 = bitcast %struct._GtkObject* %111 to i8*
  %call79 = call i64 @g_signal_connect_data(i8* %112, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.53, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_double_adjustment_update to void ()*), i8* bitcast (double* getelementptr inbounds (%struct.SparkleVals, %struct.SparkleVals* @svals, i32 0, i32 7) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %113 = load %struct._GtkObject*, %struct._GtkObject** %scale_data, align 8
  %114 = bitcast %struct._GtkObject* %113 to i8*
  %115 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %116 = bitcast %struct._GtkWidget* %115 to i8*
  %call80 = call i64 @g_signal_connect_data(i8* %114, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.53, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %116, void (i8*, %struct._GClosure*)* null, i32 2)
  %117 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %118 = bitcast %struct._GtkWidget* %117 to %struct._GTypeInstance*
  %call81 = call i64 @gtk_table_get_type() #6
  %call82 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %118, i64 %call81)
  %119 = bitcast %struct._GTypeInstance* %call82 to %struct._GtkTable*
  %call83 = call i8* @gettext(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.68, i32 0, i32 0)) #4
  %120 = load double, double* getelementptr inbounds (%struct.SparkleVals, %struct.SparkleVals* @svals, i32 0, i32 8), align 8
  %call84 = call i8* @gettext(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.69, i32 0, i32 0)) #4
  %call85 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %119, i32 0, i32 8, i8* %call83, i32 175, i32 7, double %120, double 0.000000e+00, double 1.000000e+00, double 1.000000e-02, double 1.000000e-01, i32 2, i32 1, double 0.000000e+00, double 0.000000e+00, i8* %call84, i8* null)
  store %struct._GtkObject* %call85, %struct._GtkObject** %scale_data, align 8
  %121 = load %struct._GtkObject*, %struct._GtkObject** %scale_data, align 8
  %122 = bitcast %struct._GtkObject* %121 to i8*
  %call86 = call i64 @g_signal_connect_data(i8* %122, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.53, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_double_adjustment_update to void ()*), i8* bitcast (double* getelementptr inbounds (%struct.SparkleVals, %struct.SparkleVals* @svals, i32 0, i32 8) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %123 = load %struct._GtkObject*, %struct._GtkObject** %scale_data, align 8
  %124 = bitcast %struct._GtkObject* %123 to i8*
  %125 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %126 = bitcast %struct._GtkWidget* %125 to i8*
  %call87 = call i64 @g_signal_connect_data(i8* %124, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.53, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %126, void (i8*, %struct._GClosure*)* null, i32 2)
  %call88 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 12)
  store %struct._GtkWidget* %call88, %struct._GtkWidget** %hbox, align 8
  %127 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %128 = bitcast %struct._GtkWidget* %127 to %struct._GTypeInstance*
  %call89 = call i64 @gtk_box_get_type() #6
  %call90 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %128, i64 %call89)
  %129 = bitcast %struct._GTypeInstance* %call90 to %struct._GtkBox*
  %130 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %129, %struct._GtkWidget* %130, i32 0, i32 0, i32 0)
  %131 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %131)
  %call91 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 2)
  store %struct._GtkWidget* %call91, %struct._GtkWidget** %vbox, align 8
  %132 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %133 = bitcast %struct._GtkWidget* %132 to %struct._GTypeInstance*
  %call92 = call i64 @gtk_box_get_type() #6
  %call93 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %133, i64 %call92)
  %134 = bitcast %struct._GTypeInstance* %call93 to %struct._GtkBox*
  %135 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %134, %struct._GtkWidget* %135, i32 1, i32 1, i32 0)
  %136 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %136)
  %call94 = call i8* @gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.70, i32 0, i32 0)) #4
  %call95 = call %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8* %call94)
  store %struct._GtkWidget* %call95, %struct._GtkWidget** %toggle, align 8
  %137 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %138 = bitcast %struct._GtkWidget* %137 to %struct._GTypeInstance*
  %call96 = call i64 @gtk_box_get_type() #6
  %call97 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %138, i64 %call96)
  %139 = bitcast %struct._GTypeInstance* %call97 to %struct._GtkBox*
  %140 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %139, %struct._GtkWidget* %140, i32 0, i32 0, i32 0)
  %141 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %142 = bitcast %struct._GtkWidget* %141 to %struct._GTypeInstance*
  %call98 = call i64 @gtk_toggle_button_get_type() #6
  %call99 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %142, i64 %call98)
  %143 = bitcast %struct._GTypeInstance* %call99 to %struct._GtkToggleButton*
  %144 = load i32, i32* getelementptr inbounds (%struct.SparkleVals, %struct.SparkleVals* @svals, i32 0, i32 9), align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %143, i32 %144)
  %145 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %145)
  %146 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %call100 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.71, i32 0, i32 0)) #4
  call void @gimp_help_set_help_data(%struct._GtkWidget* %146, i8* %call100, i8* null)
  %147 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %148 = bitcast %struct._GtkWidget* %147 to i8*
  %call101 = call i64 @g_signal_connect_data(i8* %148, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.72, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_toggle_button_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.SparkleVals, %struct.SparkleVals* @svals, i32 0, i32 9) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %149 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %150 = bitcast %struct._GtkWidget* %149 to i8*
  %151 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %152 = bitcast %struct._GtkWidget* %151 to i8*
  %call102 = call i64 @g_signal_connect_data(i8* %150, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.72, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %152, void (i8*, %struct._GClosure*)* null, i32 2)
  %call103 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.73, i32 0, i32 0)) #4
  %call104 = call %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8* %call103)
  store %struct._GtkWidget* %call104, %struct._GtkWidget** %toggle, align 8
  %153 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %154 = bitcast %struct._GtkWidget* %153 to %struct._GTypeInstance*
  %call105 = call i64 @gtk_box_get_type() #6
  %call106 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %154, i64 %call105)
  %155 = bitcast %struct._GTypeInstance* %call106 to %struct._GtkBox*
  %156 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %155, %struct._GtkWidget* %156, i32 0, i32 0, i32 0)
  %157 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %158 = bitcast %struct._GtkWidget* %157 to %struct._GTypeInstance*
  %call107 = call i64 @gtk_toggle_button_get_type() #6
  %call108 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %158, i64 %call107)
  %159 = bitcast %struct._GTypeInstance* %call108 to %struct._GtkToggleButton*
  %160 = load i32, i32* getelementptr inbounds (%struct.SparkleVals, %struct.SparkleVals* @svals, i32 0, i32 10), align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %159, i32 %160)
  %161 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %161)
  %162 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %call109 = call i8* @gettext(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.74, i32 0, i32 0)) #4
  call void @gimp_help_set_help_data(%struct._GtkWidget* %162, i8* %call109, i8* null)
  %163 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %164 = bitcast %struct._GtkWidget* %163 to i8*
  %call110 = call i64 @g_signal_connect_data(i8* %164, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.72, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_toggle_button_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.SparkleVals, %struct.SparkleVals* @svals, i32 0, i32 10) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %165 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %166 = bitcast %struct._GtkWidget* %165 to i8*
  %167 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %168 = bitcast %struct._GtkWidget* %167 to i8*
  %call111 = call i64 @g_signal_connect_data(i8* %166, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.72, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %168, void (i8*, %struct._GClosure*)* null, i32 2)
  %call112 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.75, i32 0, i32 0)) #4
  %call113 = call %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8* %call112)
  store %struct._GtkWidget* %call113, %struct._GtkWidget** %toggle, align 8
  %169 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %170 = bitcast %struct._GtkWidget* %169 to %struct._GTypeInstance*
  %call114 = call i64 @gtk_box_get_type() #6
  %call115 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %170, i64 %call114)
  %171 = bitcast %struct._GTypeInstance* %call115 to %struct._GtkBox*
  %172 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %171, %struct._GtkWidget* %172, i32 0, i32 0, i32 0)
  %173 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %174 = bitcast %struct._GtkWidget* %173 to %struct._GTypeInstance*
  %call116 = call i64 @gtk_toggle_button_get_type() #6
  %call117 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %174, i64 %call116)
  %175 = bitcast %struct._GTypeInstance* %call117 to %struct._GtkToggleButton*
  %176 = load i32, i32* getelementptr inbounds (%struct.SparkleVals, %struct.SparkleVals* @svals, i32 0, i32 11), align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %175, i32 %176)
  %177 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %177)
  %178 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %call118 = call i8* @gettext(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.76, i32 0, i32 0)) #4
  call void @gimp_help_set_help_data(%struct._GtkWidget* %178, i8* %call118, i8* null)
  %179 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %180 = bitcast %struct._GtkWidget* %179 to i8*
  %call119 = call i64 @g_signal_connect_data(i8* %180, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.72, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_toggle_button_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.SparkleVals, %struct.SparkleVals* @svals, i32 0, i32 11) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %181 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %182 = bitcast %struct._GtkWidget* %181 to i8*
  %183 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %184 = bitcast %struct._GtkWidget* %183 to i8*
  %call120 = call i64 @g_signal_connect_data(i8* %182, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.72, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %184, void (i8*, %struct._GClosure*)* null, i32 2)
  %185 = load i32, i32* getelementptr inbounds (%struct.SparkleVals, %struct.SparkleVals* @svals, i32 0, i32 12), align 4
  %call121 = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.77, i32 0, i32 0)) #4
  %call122 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.78, i32 0, i32 0)) #4
  %call123 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.79, i32 0, i32 0)) #4
  %call124 = call %struct._GtkWidget* (i32, i8*, void ()*, i8*, i32, ...) @gimp_int_radio_group_new(i32 0, i8* null, void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_radio_button_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.SparkleVals, %struct.SparkleVals* @svals, i32 0, i32 12) to i8*), i32 %185, i8* %call121, i32 0, %struct._GtkWidget** %r1, i8* %call122, i32 1, %struct._GtkWidget** %r2, i8* %call123, i32 2, %struct._GtkWidget** %r3, i8* null)
  store %struct._GtkWidget* %call124, %struct._GtkWidget** %vbox, align 8
  %186 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %187 = bitcast %struct._GtkWidget* %186 to %struct._GTypeInstance*
  %call125 = call i64 @gtk_box_get_type() #6
  %call126 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %187, i64 %call125)
  %188 = bitcast %struct._GTypeInstance* %call126 to %struct._GtkBox*
  %189 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %188, %struct._GtkWidget* %189, i32 1, i32 1, i32 0)
  %190 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %190)
  %191 = load %struct._GtkWidget*, %struct._GtkWidget** %r1, align 8
  %call127 = call i8* @gettext(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.80, i32 0, i32 0)) #4
  call void @gimp_help_set_help_data(%struct._GtkWidget* %191, i8* %call127, i8* null)
  %192 = load %struct._GtkWidget*, %struct._GtkWidget** %r2, align 8
  %call128 = call i8* @gettext(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.81, i32 0, i32 0)) #4
  call void @gimp_help_set_help_data(%struct._GtkWidget* %192, i8* %call128, i8* null)
  %193 = load %struct._GtkWidget*, %struct._GtkWidget** %r3, align 8
  %call129 = call i8* @gettext(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.82, i32 0, i32 0)) #4
  call void @gimp_help_set_help_data(%struct._GtkWidget* %193, i8* %call129, i8* null)
  %194 = load %struct._GtkWidget*, %struct._GtkWidget** %r1, align 8
  %195 = bitcast %struct._GtkWidget* %194 to i8*
  %196 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %197 = bitcast %struct._GtkWidget* %196 to i8*
  %call130 = call i64 @g_signal_connect_data(i8* %195, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.72, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %197, void (i8*, %struct._GClosure*)* null, i32 2)
  %198 = load %struct._GtkWidget*, %struct._GtkWidget** %r2, align 8
  %199 = bitcast %struct._GtkWidget* %198 to i8*
  %200 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %201 = bitcast %struct._GtkWidget* %200 to i8*
  %call131 = call i64 @g_signal_connect_data(i8* %199, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.72, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %201, void (i8*, %struct._GClosure*)* null, i32 2)
  %202 = load %struct._GtkWidget*, %struct._GtkWidget** %r3, align 8
  %203 = bitcast %struct._GtkWidget* %202 to i8*
  %204 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %205 = bitcast %struct._GtkWidget* %204 to i8*
  %call132 = call i64 @g_signal_connect_data(i8* %203, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.72, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %205, void (i8*, %struct._GClosure*)* null, i32 2)
  %206 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %206)
  %207 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %208 = bitcast %struct._GtkWidget* %207 to %struct._GTypeInstance*
  %call133 = call i64 @gimp_dialog_get_type() #6
  %call134 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %208, i64 %call133)
  %209 = bitcast %struct._GTypeInstance* %call134 to %struct._GimpDialog*
  %call135 = call i32 @gimp_dialog_run(%struct._GimpDialog* %209)
  %cmp = icmp eq i32 %call135, -5
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %run, align 4
  %210 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %210)
  %211 = load i32, i32* %run, align 4
  ret i32 %211
}

declare i32 @gimp_drawable_is_rgb(i32) #1

declare i32 @gimp_drawable_is_gray(i32) #1

declare i32 @gimp_progress_init(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @sparkle(%struct._GimpDrawable* %drawable, %struct._GimpPreview* %preview) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %preview.addr = alloca %struct._GimpPreview*, align 8
  %src_rgn = alloca %struct._GimpPixelRgn, align 8
  %dest_rgn = alloca %struct._GimpPixelRgn, align 8
  %nfrac = alloca double, align 8
  %length = alloca double, align 8
  %inten = alloca double, align 8
  %spike_angle = alloca double, align 8
  %cur_progress = alloca i32, align 4
  %max_progress = alloca i32, align 4
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %threshold = alloca i32, align 4
  %lum = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %b = alloca i32, align 4
  %gray = alloca i32, align 4
  %has_alpha = alloca i32, align 4
  %alpha = alloca i32, align 4
  %bytes = alloca i32, align 4
  %pr = alloca i8*, align 8
  %tile_width = alloca i32, align 4
  %tile_height = alloca i32, align 4
  %gr = alloca %struct._GRand*, align 8
  %dest_buf = alloca i8*, align 8
  %src = alloca i8*, align 8
  %s = alloca i8*, align 8
  %dest = alloca i8*, align 8
  %d = alloca i8*, align 8
  %src104 = alloca i8*, align 8
  %s105 = alloca i8*, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._GimpPreview* %preview, %struct._GimpPreview** %preview.addr, align 8
  store i8* null, i8** %dest_buf, align 8
  %call = call %struct._GRand* @g_rand_new()
  store %struct._GRand* %call, %struct._GRand** %gr, align 8
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %bpp = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %0, i32 0, i32 3
  %1 = load i32, i32* %bpp, align 4
  store i32 %1, i32* %bytes, align 4
  %2 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %tobool = icmp ne %struct._GimpPreview* %2, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  call void @gimp_preview_get_position(%struct._GimpPreview* %3, i32* %x1, i32* %y1)
  %4 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  call void @gimp_preview_get_size(%struct._GimpPreview* %4, i32* %width, i32* %height)
  %5 = load i32, i32* %x1, align 4
  %6 = load i32, i32* %width, align 4
  %add = add nsw i32 %5, %6
  store i32 %add, i32* %x2, align 4
  %7 = load i32, i32* %y1, align 4
  %8 = load i32, i32* %height, align 4
  %add1 = add nsw i32 %7, %8
  store i32 %add1, i32* %y2, align 4
  %9 = load i32, i32* %width, align 4
  %10 = load i32, i32* %height, align 4
  %mul = mul nsw i32 %9, %10
  %11 = load i32, i32* %bytes, align 4
  %mul2 = mul nsw i32 %mul, %11
  %conv = sext i32 %mul2 to i64
  %call3 = call noalias i8* @g_malloc0_n(i64 %conv, i64 1)
  store i8* %call3, i8** %dest_buf, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %12 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %12, i32 0, i32 0
  %13 = load i32, i32* %drawable_id, align 4
  %call4 = call i32 @gimp_drawable_mask_bounds(i32 %13, i32* %x1, i32* %y1, i32* %x2, i32* %y2)
  %14 = load i32, i32* %x2, align 4
  %15 = load i32, i32* %x1, align 4
  %sub = sub nsw i32 %14, %15
  store i32 %sub, i32* %width, align 4
  %16 = load i32, i32* %y2, align 4
  %17 = load i32, i32* %y1, align 4
  %sub5 = sub nsw i32 %16, %17
  store i32 %sub5, i32* %height, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %18 = load i32, i32* getelementptr inbounds (%struct.SparkleVals, %struct.SparkleVals* @svals, i32 0, i32 11), align 4
  %tobool6 = icmp ne i32 %18, 0
  br i1 %tobool6, label %if.then.7, label %if.else.10

if.then.7:                                        ; preds = %if.end
  %19 = load i32, i32* %width, align 4
  %20 = load i32, i32* %height, align 4
  %add8 = add nsw i32 %19, %20
  %mul9 = mul nsw i32 2, %add8
  store i32 %mul9, i32* @num_sparkles, align 4
  store i32 255, i32* %threshold, align 4
  br label %if.end.12

if.else.10:                                       ; preds = %if.end
  %21 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %22 = load double, double* getelementptr inbounds (%struct.SparkleVals, %struct.SparkleVals* @svals, i32 0, i32 0), align 8
  %call11 = call i32 @compute_lum_threshold(%struct._GimpDrawable* %21, double %22)
  store i32 %call11, i32* %threshold, align 4
  br label %if.end.12

if.end.12:                                        ; preds = %if.else.10, %if.then.7
  %23 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id13 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %23, i32 0, i32 0
  %24 = load i32, i32* %drawable_id13, align 4
  %call14 = call i32 @gimp_drawable_is_gray(i32 %24)
  store i32 %call14, i32* %gray, align 4
  %25 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id15 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %25, i32 0, i32 0
  %26 = load i32, i32* %drawable_id15, align 4
  %call16 = call i32 @gimp_drawable_has_alpha(i32 %26)
  store i32 %call16, i32* %has_alpha, align 4
  %27 = load i32, i32* %has_alpha, align 4
  %tobool17 = icmp ne i32 %27, 0
  br i1 %tobool17, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.12
  %28 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %bpp18 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %28, i32 0, i32 3
  %29 = load i32, i32* %bpp18, align 4
  %sub19 = sub i32 %29, 1
  br label %cond.end

cond.false:                                       ; preds = %if.end.12
  %30 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %bpp20 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %30, i32 0, i32 3
  %31 = load i32, i32* %bpp20, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub19, %cond.true ], [ %31, %cond.false ]
  store i32 %cond, i32* %alpha, align 4
  %call21 = call i32 @gimp_tile_width() #6
  store i32 %call21, i32* %tile_width, align 4
  %call22 = call i32 @gimp_tile_height() #6
  store i32 %call22, i32* %tile_height, align 4
  store i32 0, i32* %cur_progress, align 4
  %32 = load i32, i32* @num_sparkles, align 4
  store i32 %32, i32* %max_progress, align 4
  %33 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %34 = load i32, i32* %x1, align 4
  %35 = load i32, i32* %y1, align 4
  %36 = load i32, i32* %width, align 4
  %37 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %src_rgn, %struct._GimpDrawable* %33, i32 %34, i32 %35, i32 %36, i32 %37, i32 0, i32 0)
  %38 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %39 = load i32, i32* %x1, align 4
  %40 = load i32, i32* %y1, align 4
  %41 = load i32, i32* %width, align 4
  %42 = load i32, i32* %height, align 4
  %43 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %cmp = icmp eq %struct._GimpPreview* %43, null
  %conv23 = zext i1 %cmp to i32
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %dest_rgn, %struct._GimpDrawable* %38, i32 %39, i32 %40, i32 %41, i32 %42, i32 %conv23, i32 1)
  %call24 = call i8* (i32, ...) @gimp_pixel_rgns_register(i32 2, %struct._GimpPixelRgn* %src_rgn, %struct._GimpPixelRgn* %dest_rgn)
  store i8* %call24, i8** %pr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.94, %cond.end
  %44 = load i8*, i8** %pr, align 8
  %cmp25 = icmp ne i8* %44, null
  br i1 %cmp25, label %for.body, label %for.end.96

for.body:                                         ; preds = %for.cond
  %data = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 0
  %45 = load i8*, i8** %data, align 8
  store i8* %45, i8** %src, align 8
  %46 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %tobool27 = icmp ne %struct._GimpPreview* %46, null
  br i1 %tobool27, label %if.then.28, label %if.else.36

if.then.28:                                       ; preds = %for.body
  %47 = load i8*, i8** %dest_buf, align 8
  %y29 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 5
  %48 = load i32, i32* %y29, align 4
  %49 = load i32, i32* %y1, align 4
  %sub30 = sub nsw i32 %48, %49
  %50 = load i32, i32* %width, align 4
  %mul31 = mul nsw i32 %sub30, %50
  %x32 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 4
  %51 = load i32, i32* %x32, align 4
  %52 = load i32, i32* %x1, align 4
  %sub33 = sub nsw i32 %51, %52
  %add34 = add nsw i32 %mul31, %sub33
  %53 = load i32, i32* %bytes, align 4
  %mul35 = mul nsw i32 %add34, %53
  %idx.ext = sext i32 %mul35 to i64
  %add.ptr = getelementptr inbounds i8, i8* %47, i64 %idx.ext
  store i8* %add.ptr, i8** %dest, align 8
  br label %if.end.38

if.else.36:                                       ; preds = %for.body
  %data37 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 0
  %54 = load i8*, i8** %data37, align 8
  store i8* %54, i8** %dest, align 8
  br label %if.end.38

if.end.38:                                        ; preds = %if.else.36, %if.then.28
  store i32 0, i32* %y, align 4
  br label %for.cond.39

for.cond.39:                                      ; preds = %for.inc.91, %if.end.38
  %55 = load i32, i32* %y, align 4
  %h = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 7
  %56 = load i32, i32* %h, align 4
  %cmp40 = icmp slt i32 %55, %56
  br i1 %cmp40, label %for.body.42, label %for.end.93

for.body.42:                                      ; preds = %for.cond.39
  %57 = load i8*, i8** %src, align 8
  store i8* %57, i8** %s, align 8
  %58 = load i8*, i8** %dest, align 8
  store i8* %58, i8** %d, align 8
  store i32 0, i32* %x, align 4
  br label %for.cond.43

for.cond.43:                                      ; preds = %for.inc.76, %for.body.42
  %59 = load i32, i32* %x, align 4
  %w = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 6
  %60 = load i32, i32* %w, align 4
  %cmp44 = icmp slt i32 %59, %60
  br i1 %cmp44, label %for.body.46, label %for.end.78

for.body.46:                                      ; preds = %for.cond.43
  %61 = load i32, i32* %has_alpha, align 4
  %tobool47 = icmp ne i32 %61, 0
  br i1 %tobool47, label %land.lhs.true, label %if.else.53

land.lhs.true:                                    ; preds = %for.body.46
  %62 = load i32, i32* %alpha, align 4
  %idxprom = sext i32 %62 to i64
  %63 = load i8*, i8** %s, align 8
  %arrayidx = getelementptr inbounds i8, i8* %63, i64 %idxprom
  %64 = load i8, i8* %arrayidx, align 1
  %conv48 = zext i8 %64 to i32
  %cmp49 = icmp eq i32 %conv48, 0
  br i1 %cmp49, label %if.then.51, label %if.else.53

if.then.51:                                       ; preds = %land.lhs.true
  %65 = load i8*, i8** %d, align 8
  %66 = load i32, i32* %alpha, align 4
  %conv52 = sext i32 %66 to i64
  call void @llvm.memset.p0i8.i64(i8* %65, i8 0, i64 %conv52, i32 1, i1 false)
  br label %if.end.62

if.else.53:                                       ; preds = %land.lhs.true, %for.body.46
  store i32 0, i32* %b, align 4
  br label %for.cond.54

for.cond.54:                                      ; preds = %for.inc, %if.else.53
  %67 = load i32, i32* %b, align 4
  %68 = load i32, i32* %alpha, align 4
  %cmp55 = icmp slt i32 %67, %68
  br i1 %cmp55, label %for.body.57, label %for.end

for.body.57:                                      ; preds = %for.cond.54
  %69 = load i32, i32* %b, align 4
  %idxprom58 = sext i32 %69 to i64
  %70 = load i8*, i8** %s, align 8
  %arrayidx59 = getelementptr inbounds i8, i8* %70, i64 %idxprom58
  %71 = load i8, i8* %arrayidx59, align 1
  %72 = load i32, i32* %b, align 4
  %idxprom60 = sext i32 %72 to i64
  %73 = load i8*, i8** %d, align 8
  %arrayidx61 = getelementptr inbounds i8, i8* %73, i64 %idxprom60
  store i8 %71, i8* %arrayidx61, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body.57
  %74 = load i32, i32* %b, align 4
  %inc = add nsw i32 %74, 1
  store i32 %inc, i32* %b, align 4
  br label %for.cond.54

for.end:                                          ; preds = %for.cond.54
  br label %if.end.62

if.end.62:                                        ; preds = %for.end, %if.then.51
  %75 = load i32, i32* %has_alpha, align 4
  %tobool63 = icmp ne i32 %75, 0
  br i1 %tobool63, label %if.then.64, label %if.end.69

if.then.64:                                       ; preds = %if.end.62
  %76 = load i32, i32* %alpha, align 4
  %idxprom65 = sext i32 %76 to i64
  %77 = load i8*, i8** %s, align 8
  %arrayidx66 = getelementptr inbounds i8, i8* %77, i64 %idxprom65
  %78 = load i8, i8* %arrayidx66, align 1
  %79 = load i32, i32* %alpha, align 4
  %idxprom67 = sext i32 %79 to i64
  %80 = load i8*, i8** %d, align 8
  %arrayidx68 = getelementptr inbounds i8, i8* %80, i64 %idxprom67
  store i8 %78, i8* %arrayidx68, align 1
  br label %if.end.69

if.end.69:                                        ; preds = %if.then.64, %if.end.62
  %bpp70 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 2
  %81 = load i32, i32* %bpp70, align 4
  %82 = load i8*, i8** %s, align 8
  %idx.ext71 = sext i32 %81 to i64
  %add.ptr72 = getelementptr inbounds i8, i8* %82, i64 %idx.ext71
  store i8* %add.ptr72, i8** %s, align 8
  %bpp73 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 2
  %83 = load i32, i32* %bpp73, align 4
  %84 = load i8*, i8** %d, align 8
  %idx.ext74 = sext i32 %83 to i64
  %add.ptr75 = getelementptr inbounds i8, i8* %84, i64 %idx.ext74
  store i8* %add.ptr75, i8** %d, align 8
  br label %for.inc.76

for.inc.76:                                       ; preds = %if.end.69
  %85 = load i32, i32* %x, align 4
  %inc77 = add nsw i32 %85, 1
  store i32 %inc77, i32* %x, align 4
  br label %for.cond.43

for.end.78:                                       ; preds = %for.cond.43
  %rowstride = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 3
  %86 = load i32, i32* %rowstride, align 4
  %87 = load i8*, i8** %src, align 8
  %idx.ext79 = sext i32 %86 to i64
  %add.ptr80 = getelementptr inbounds i8, i8* %87, i64 %idx.ext79
  store i8* %add.ptr80, i8** %src, align 8
  %88 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %tobool81 = icmp ne %struct._GimpPreview* %88, null
  br i1 %tobool81, label %if.then.82, label %if.else.86

if.then.82:                                       ; preds = %for.end.78
  %89 = load i32, i32* %width, align 4
  %90 = load i32, i32* %bytes, align 4
  %mul83 = mul nsw i32 %89, %90
  %91 = load i8*, i8** %dest, align 8
  %idx.ext84 = sext i32 %mul83 to i64
  %add.ptr85 = getelementptr inbounds i8, i8* %91, i64 %idx.ext84
  store i8* %add.ptr85, i8** %dest, align 8
  br label %if.end.90

if.else.86:                                       ; preds = %for.end.78
  %rowstride87 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 3
  %92 = load i32, i32* %rowstride87, align 4
  %93 = load i8*, i8** %dest, align 8
  %idx.ext88 = sext i32 %92 to i64
  %add.ptr89 = getelementptr inbounds i8, i8* %93, i64 %idx.ext88
  store i8* %add.ptr89, i8** %dest, align 8
  br label %if.end.90

if.end.90:                                        ; preds = %if.else.86, %if.then.82
  br label %for.inc.91

for.inc.91:                                       ; preds = %if.end.90
  %94 = load i32, i32* %y, align 4
  %inc92 = add nsw i32 %94, 1
  store i32 %inc92, i32* %y, align 4
  br label %for.cond.39

for.end.93:                                       ; preds = %for.cond.39
  br label %for.inc.94

for.inc.94:                                       ; preds = %for.end.93
  %95 = load i8*, i8** %pr, align 8
  %call95 = call i8* @gimp_pixel_rgns_process(i8* %95)
  store i8* %call95, i8** %pr, align 8
  br label %for.cond

for.end.96:                                       ; preds = %for.cond
  %96 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %97 = load i32, i32* %x1, align 4
  %98 = load i32, i32* %y1, align 4
  %99 = load i32, i32* %width, align 4
  %100 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %src_rgn, %struct._GimpDrawable* %96, i32 %97, i32 %98, i32 %99, i32 %100, i32 0, i32 0)
  %101 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %102 = load i32, i32* %x1, align 4
  %103 = load i32, i32* %y1, align 4
  %104 = load i32, i32* %width, align 4
  %105 = load i32, i32* %height, align 4
  %106 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %cmp97 = icmp eq %struct._GimpPreview* %106, null
  %conv98 = zext i1 %cmp97 to i32
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %dest_rgn, %struct._GimpDrawable* %101, i32 %102, i32 %103, i32 %104, i32 %105, i32 %conv98, i32 1)
  %call99 = call i8* (i32, ...) @gimp_pixel_rgns_register(i32 2, %struct._GimpPixelRgn* %src_rgn, %struct._GimpPixelRgn* %dest_rgn)
  store i8* %call99, i8** %pr, align 8
  br label %for.cond.100

for.cond.100:                                     ; preds = %for.inc.211, %for.end.96
  %107 = load i8*, i8** %pr, align 8
  %cmp101 = icmp ne i8* %107, null
  br i1 %cmp101, label %for.body.103, label %for.end.213

for.body.103:                                     ; preds = %for.cond.100
  %data106 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 0
  %108 = load i8*, i8** %data106, align 8
  store i8* %108, i8** %src104, align 8
  store i32 0, i32* %y, align 4
  br label %for.cond.107

for.cond.107:                                     ; preds = %for.inc.208, %for.body.103
  %109 = load i32, i32* %y, align 4
  %h108 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 7
  %110 = load i32, i32* %h108, align 4
  %cmp109 = icmp slt i32 %109, %110
  br i1 %cmp109, label %for.body.111, label %for.end.210

for.body.111:                                     ; preds = %for.cond.107
  %111 = load i8*, i8** %src104, align 8
  store i8* %111, i8** %s105, align 8
  store i32 0, i32* %x, align 4
  br label %for.cond.112

for.cond.112:                                     ; preds = %for.inc.202, %for.body.111
  %112 = load i32, i32* %x, align 4
  %w113 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 6
  %113 = load i32, i32* %w113, align 4
  %cmp114 = icmp slt i32 %112, %113
  br i1 %cmp114, label %for.body.116, label %for.end.204

for.body.116:                                     ; preds = %for.cond.112
  %114 = load i32, i32* getelementptr inbounds (%struct.SparkleVals, %struct.SparkleVals* @svals, i32 0, i32 11), align 4
  %tobool117 = icmp ne i32 %114, 0
  br i1 %tobool117, label %if.then.118, label %if.else.144

if.then.118:                                      ; preds = %for.body.116
  %115 = load i32, i32* %x, align 4
  %x119 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 4
  %116 = load i32, i32* %x119, align 4
  %add120 = add nsw i32 %115, %116
  %cmp121 = icmp eq i32 %add120, 0
  br i1 %cmp121, label %if.then.141, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.118
  %117 = load i32, i32* %y, align 4
  %y123 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 5
  %118 = load i32, i32* %y123, align 4
  %add124 = add nsw i32 %117, %118
  %cmp125 = icmp eq i32 %add124, 0
  br i1 %cmp125, label %if.then.141, label %lor.lhs.false.127

lor.lhs.false.127:                                ; preds = %lor.lhs.false
  %119 = load i32, i32* %x, align 4
  %x128 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 4
  %120 = load i32, i32* %x128, align 4
  %add129 = add nsw i32 %119, %120
  %121 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %width130 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %121, i32 0, i32 1
  %122 = load i32, i32* %width130, align 4
  %sub131 = sub i32 %122, 1
  %cmp132 = icmp eq i32 %add129, %sub131
  br i1 %cmp132, label %if.then.141, label %lor.lhs.false.134

lor.lhs.false.134:                                ; preds = %lor.lhs.false.127
  %123 = load i32, i32* %y, align 4
  %y135 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 5
  %124 = load i32, i32* %y135, align 4
  %add136 = add nsw i32 %123, %124
  %125 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %height137 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %125, i32 0, i32 2
  %126 = load i32, i32* %height137, align 4
  %sub138 = sub i32 %126, 1
  %cmp139 = icmp eq i32 %add136, %sub138
  br i1 %cmp139, label %if.then.141, label %if.else.142

if.then.141:                                      ; preds = %lor.lhs.false.134, %lor.lhs.false.127, %lor.lhs.false, %if.then.118
  store i32 255, i32* %lum, align 4
  br label %if.end.143

if.else.142:                                      ; preds = %lor.lhs.false.134
  store i32 0, i32* %lum, align 4
  br label %if.end.143

if.end.143:                                       ; preds = %if.else.142, %if.then.141
  br label %if.end.146

if.else.144:                                      ; preds = %for.body.116
  %127 = load i8*, i8** %s105, align 8
  %128 = load i32, i32* %gray, align 4
  %129 = load i32, i32* %has_alpha, align 4
  %call145 = call i32 @compute_luminosity(i8* %127, i32 %128, i32 %129)
  store i32 %call145, i32* %lum, align 4
  br label %if.end.146

if.end.146:                                       ; preds = %if.else.144, %if.end.143
  %130 = load i32, i32* %lum, align 4
  %131 = load i32, i32* %threshold, align 4
  %cmp147 = icmp sge i32 %130, %131
  br i1 %cmp147, label %if.then.149, label %if.end.198

if.then.149:                                      ; preds = %if.end.146
  %132 = load i32, i32* %lum, align 4
  %add150 = add nsw i32 %132, 1
  %133 = load i32, i32* %threshold, align 4
  %sub151 = sub nsw i32 %add150, %133
  %conv152 = sitofp i32 %sub151 to double
  %134 = load i32, i32* %threshold, align 4
  %sub153 = sub nsw i32 256, %134
  %conv154 = sitofp i32 %sub153 to double
  %div = fdiv double %conv152, %conv154
  %call155 = call double @fabs(double %div) #6
  store double %call155, double* %nfrac, align 8
  %135 = load double, double* getelementptr inbounds (%struct.SparkleVals, %struct.SparkleVals* @svals, i32 0, i32 2), align 8
  %136 = load double, double* %nfrac, align 8
  %call156 = call double @pow(double %136, double 8.000000e-01) #4
  %mul157 = fmul double %135, %call156
  store double %mul157, double* %length, align 8
  %137 = load double, double* getelementptr inbounds (%struct.SparkleVals, %struct.SparkleVals* @svals, i32 0, i32 1), align 8
  %138 = load double, double* %nfrac, align 8
  %mul158 = fmul double %137, %138
  store double %mul158, double* %inten, align 8
  %139 = load double, double* getelementptr inbounds (%struct.SparkleVals, %struct.SparkleVals* @svals, i32 0, i32 3), align 8
  %cmp159 = fcmp ogt double %139, 0.000000e+00
  br i1 %cmp159, label %if.then.161, label %if.end.185

if.then.161:                                      ; preds = %if.then.149
  %140 = load double, double* getelementptr inbounds (%struct.SparkleVals, %struct.SparkleVals* @svals, i32 0, i32 4), align 8
  %cmp162 = fcmp oeq double %140, -1.000000e+00
  br i1 %cmp162, label %if.then.164, label %if.else.166

if.then.164:                                      ; preds = %if.then.161
  %141 = load %struct._GRand*, %struct._GRand** %gr, align 8
  %call165 = call double @g_rand_double_range(%struct._GRand* %141, double 0.000000e+00, double 3.600000e+02)
  store double %call165, double* %spike_angle, align 8
  br label %if.end.167

if.else.166:                                      ; preds = %if.then.161
  %142 = load double, double* getelementptr inbounds (%struct.SparkleVals, %struct.SparkleVals* @svals, i32 0, i32 4), align 8
  store double %142, double* %spike_angle, align 8
  br label %if.end.167

if.end.167:                                       ; preds = %if.else.166, %if.then.164
  %143 = load %struct._GRand*, %struct._GRand** %gr, align 8
  %call168 = call double @g_rand_double(%struct._GRand* %143)
  %144 = load double, double* getelementptr inbounds (%struct.SparkleVals, %struct.SparkleVals* @svals, i32 0, i32 5), align 8
  %cmp169 = fcmp ole double %call168, %144
  br i1 %cmp169, label %if.then.171, label %if.end.184

if.then.171:                                      ; preds = %if.end.167
  %145 = load i32, i32* %x1, align 4
  %146 = load i32, i32* %y1, align 4
  %147 = load i32, i32* %x2, align 4
  %148 = load i32, i32* %y2, align 4
  %149 = load i32, i32* %x, align 4
  %x172 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 4
  %150 = load i32, i32* %x172, align 4
  %add173 = add nsw i32 %149, %150
  %151 = load i32, i32* %y, align 4
  %y174 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 5
  %152 = load i32, i32* %y174, align 4
  %add175 = add nsw i32 %151, %152
  %153 = load i32, i32* %tile_width, align 4
  %154 = load i32, i32* %tile_height, align 4
  %155 = load double, double* %inten, align 8
  %156 = load double, double* %length, align 8
  %157 = load double, double* %spike_angle, align 8
  %158 = load %struct._GRand*, %struct._GRand** %gr, align 8
  %159 = load i8*, i8** %dest_buf, align 8
  call void @fspike(%struct._GimpPixelRgn* %src_rgn, %struct._GimpPixelRgn* %dest_rgn, i32 %145, i32 %146, i32 %147, i32 %148, i32 %add173, i32 %add175, i32 %153, i32 %154, double %155, double %156, double %157, %struct._GRand* %158, i8* %159)
  %160 = load i32, i32* %x1, align 4
  %161 = load i32, i32* %y1, align 4
  %162 = load i32, i32* %x2, align 4
  %163 = load i32, i32* %y2, align 4
  %164 = load i32, i32* %x, align 4
  %x176 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 4
  %165 = load i32, i32* %x176, align 4
  %add177 = add nsw i32 %164, %165
  %166 = load i32, i32* %y, align 4
  %y178 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 5
  %167 = load i32, i32* %y178, align 4
  %add179 = add nsw i32 %166, %167
  %168 = load i32, i32* %tile_width, align 4
  %169 = load i32, i32* %tile_height, align 4
  %170 = load double, double* %inten, align 8
  %mul180 = fmul double %170, 7.000000e-01
  %171 = load double, double* %length, align 8
  %mul181 = fmul double %171, 7.000000e-01
  %172 = load double, double* %spike_angle, align 8
  %173 = load double, double* getelementptr inbounds (%struct.SparkleVals, %struct.SparkleVals* @svals, i32 0, i32 3), align 8
  %div182 = fdiv double 1.800000e+02, %173
  %add183 = fadd double %172, %div182
  %174 = load %struct._GRand*, %struct._GRand** %gr, align 8
  %175 = load i8*, i8** %dest_buf, align 8
  call void @fspike(%struct._GimpPixelRgn* %src_rgn, %struct._GimpPixelRgn* %dest_rgn, i32 %160, i32 %161, i32 %162, i32 %163, i32 %add177, i32 %add179, i32 %168, i32 %169, double %mul180, double %mul181, double %add183, %struct._GRand* %174, i8* %175)
  br label %if.end.184

if.end.184:                                       ; preds = %if.then.171, %if.end.167
  br label %if.end.185

if.end.185:                                       ; preds = %if.end.184, %if.then.149
  %176 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %tobool186 = icmp ne %struct._GimpPreview* %176, null
  br i1 %tobool186, label %if.end.197, label %if.then.187

if.then.187:                                      ; preds = %if.end.185
  %177 = load i32, i32* %cur_progress, align 4
  %inc188 = add nsw i32 %177, 1
  store i32 %inc188, i32* %cur_progress, align 4
  %178 = load i32, i32* %cur_progress, align 4
  %rem = srem i32 %178, 5
  %cmp189 = icmp eq i32 %rem, 0
  br i1 %cmp189, label %if.then.191, label %if.end.196

if.then.191:                                      ; preds = %if.then.187
  %179 = load i32, i32* %cur_progress, align 4
  %conv192 = sitofp i32 %179 to double
  %180 = load i32, i32* %max_progress, align 4
  %conv193 = sitofp i32 %180 to double
  %div194 = fdiv double %conv192, %conv193
  %call195 = call i32 @gimp_progress_update(double %div194)
  br label %if.end.196

if.end.196:                                       ; preds = %if.then.191, %if.then.187
  br label %if.end.197

if.end.197:                                       ; preds = %if.end.196, %if.end.185
  br label %if.end.198

if.end.198:                                       ; preds = %if.end.197, %if.end.146
  %bpp199 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 2
  %181 = load i32, i32* %bpp199, align 4
  %182 = load i8*, i8** %s105, align 8
  %idx.ext200 = sext i32 %181 to i64
  %add.ptr201 = getelementptr inbounds i8, i8* %182, i64 %idx.ext200
  store i8* %add.ptr201, i8** %s105, align 8
  br label %for.inc.202

for.inc.202:                                      ; preds = %if.end.198
  %183 = load i32, i32* %x, align 4
  %inc203 = add nsw i32 %183, 1
  store i32 %inc203, i32* %x, align 4
  br label %for.cond.112

for.end.204:                                      ; preds = %for.cond.112
  %rowstride205 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 3
  %184 = load i32, i32* %rowstride205, align 4
  %185 = load i8*, i8** %src104, align 8
  %idx.ext206 = sext i32 %184 to i64
  %add.ptr207 = getelementptr inbounds i8, i8* %185, i64 %idx.ext206
  store i8* %add.ptr207, i8** %src104, align 8
  br label %for.inc.208

for.inc.208:                                      ; preds = %for.end.204
  %186 = load i32, i32* %y, align 4
  %inc209 = add nsw i32 %186, 1
  store i32 %inc209, i32* %y, align 4
  br label %for.cond.107

for.end.210:                                      ; preds = %for.cond.107
  br label %for.inc.211

for.inc.211:                                      ; preds = %for.end.210
  %187 = load i8*, i8** %pr, align 8
  %call212 = call i8* @gimp_pixel_rgns_process(i8* %187)
  store i8* %call212, i8** %pr, align 8
  br label %for.cond.100

for.end.213:                                      ; preds = %for.cond.100
  %188 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %tobool214 = icmp ne %struct._GimpPreview* %188, null
  br i1 %tobool214, label %if.then.215, label %if.else.217

if.then.215:                                      ; preds = %for.end.213
  %189 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %190 = load i8*, i8** %dest_buf, align 8
  %191 = load i32, i32* %width, align 4
  %192 = load i32, i32* %bytes, align 4
  %mul216 = mul nsw i32 %191, %192
  call void @gimp_preview_draw_buffer(%struct._GimpPreview* %189, i8* %190, i32 %mul216)
  %193 = load i8*, i8** %dest_buf, align 8
  call void @g_free(i8* %193)
  br label %if.end.223

if.else.217:                                      ; preds = %for.end.213
  %call218 = call i32 @gimp_progress_update(double 1.000000e+00)
  %194 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  call void @gimp_drawable_flush(%struct._GimpDrawable* %194)
  %195 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id219 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %195, i32 0, i32 0
  %196 = load i32, i32* %drawable_id219, align 4
  %call220 = call i32 @gimp_drawable_merge_shadow(i32 %196, i32 1)
  %197 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id221 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %197, i32 0, i32 0
  %198 = load i32, i32* %drawable_id221, align 4
  %199 = load i32, i32* %x1, align 4
  %200 = load i32, i32* %y1, align 4
  %201 = load i32, i32* %width, align 4
  %202 = load i32, i32* %height, align 4
  %call222 = call i32 @gimp_drawable_update(i32 %198, i32 %199, i32 %200, i32 %201, i32 %202)
  br label %if.end.223

if.end.223:                                       ; preds = %if.else.217, %if.then.215
  %203 = load %struct._GRand*, %struct._GRand** %gr, align 8
  call void @g_rand_free(%struct._GRand* %203)
  ret void
}

declare i32 @gimp_displays_flush() #1

declare i32 @gimp_procedural_db_set_data(i8*, i8*, i32) #1

declare void @gimp_drawable_detach(%struct._GimpDrawable*) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #4

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #4

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

declare %struct._GtkWidget* @gimp_drawable_preview_new(%struct._GimpDrawable*, i32*) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

declare %struct._GtkWidget* @gtk_table_new(i32, i32, i32) #1

declare void @gtk_table_set_col_spacings(%struct._GtkTable*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_table_get_type() #3

declare void @gtk_table_set_row_spacings(%struct._GtkTable*, i32) #1

declare %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable*, i32, i32, i8*, i32, i32, double, double, double, double, double, i32, i32, double, double, i8*, i8*) #1

declare void @gimp_double_adjustment_update(%struct._GtkAdjustment*, i8*) #1

declare void @gimp_preview_invalidate(%struct._GimpPreview*) #1

declare %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8*) #1

declare void @gtk_toggle_button_set_active(%struct._GtkToggleButton*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_toggle_button_get_type() #3

declare void @gimp_help_set_help_data(%struct._GtkWidget*, i8*, i8*) #1

declare void @gimp_toggle_button_update(%struct._GtkWidget*, i8*) #1

declare %struct._GtkWidget* @gimp_int_radio_group_new(i32, i8*, void ()*, i8*, i32, ...) #1

declare void @gimp_radio_button_update(%struct._GtkWidget*, i8*) #1

declare i32 @gimp_dialog_run(%struct._GimpDialog*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_dialog_get_type() #3

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

declare %struct._GRand* @g_rand_new() #1

declare void @gimp_preview_get_position(%struct._GimpPreview*, i32*, i32*) #1

declare void @gimp_preview_get_size(%struct._GimpPreview*, i32*, i32*) #1

declare noalias i8* @g_malloc0_n(i64, i64) #1

declare i32 @gimp_drawable_mask_bounds(i32, i32*, i32*, i32*, i32*) #1

; Function Attrs: nounwind uwtable
define internal i32 @compute_lum_threshold(%struct._GimpDrawable* %drawable, double %percentile) #0 {
entry:
  %retval = alloca i32, align 4
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %percentile.addr = alloca double, align 8
  %src_rgn = alloca %struct._GimpPixelRgn, align 8
  %pr = alloca i8*, align 8
  %values = alloca [256 x i32], align 16
  %total = alloca i32, align 4
  %sum = alloca i32, align 4
  %gray = alloca i32, align 4
  %has_alpha = alloca i32, align 4
  %i = alloca i32, align 4
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  %src = alloca i8*, align 8
  %s = alloca i8*, align 8
  %sx = alloca i32, align 4
  %sy = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store double %percentile, double* %percentile.addr, align 8
  %0 = bitcast [256 x i32]* %values to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 1024, i32 16, i1 false)
  %1 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %1, i32 0, i32 0
  %2 = load i32, i32* %drawable_id, align 4
  %call = call i32 @gimp_drawable_mask_bounds(i32 %2, i32* %x1, i32* %y1, i32* %x2, i32* %y2)
  %3 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id1 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %3, i32 0, i32 0
  %4 = load i32, i32* %drawable_id1, align 4
  %call2 = call i32 @gimp_drawable_is_gray(i32 %4)
  store i32 %call2, i32* %gray, align 4
  %5 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id3 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %5, i32 0, i32 0
  %6 = load i32, i32* %drawable_id3, align 4
  %call4 = call i32 @gimp_drawable_has_alpha(i32 %6)
  store i32 %call4, i32* %has_alpha, align 4
  %7 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %8 = load i32, i32* %x1, align 4
  %9 = load i32, i32* %y1, align 4
  %10 = load i32, i32* %x2, align 4
  %11 = load i32, i32* %x1, align 4
  %sub = sub nsw i32 %10, %11
  %12 = load i32, i32* %y2, align 4
  %13 = load i32, i32* %y1, align 4
  %sub5 = sub nsw i32 %12, %13
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %src_rgn, %struct._GimpDrawable* %7, i32 %8, i32 %9, i32 %sub, i32 %sub5, i32 0, i32 0)
  %call6 = call i8* (i32, ...) @gimp_pixel_rgns_register(i32 1, %struct._GimpPixelRgn* %src_rgn)
  store i8* %call6, i8** %pr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.20, %entry
  %14 = load i8*, i8** %pr, align 8
  %cmp = icmp ne i8* %14, null
  br i1 %cmp, label %for.body, label %for.end.22

for.body:                                         ; preds = %for.cond
  %data = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 0
  %15 = load i8*, i8** %data, align 8
  store i8* %15, i8** %src, align 8
  store i32 0, i32* %sy, align 4
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc.17, %for.body
  %16 = load i32, i32* %sy, align 4
  %h = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 7
  %17 = load i32, i32* %h, align 4
  %cmp8 = icmp slt i32 %16, %17
  br i1 %cmp8, label %for.body.9, label %for.end.19

for.body.9:                                       ; preds = %for.cond.7
  %18 = load i8*, i8** %src, align 8
  store i8* %18, i8** %s, align 8
  store i32 0, i32* %sx, align 4
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc, %for.body.9
  %19 = load i32, i32* %sx, align 4
  %w = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 6
  %20 = load i32, i32* %w, align 4
  %cmp11 = icmp slt i32 %19, %20
  br i1 %cmp11, label %for.body.12, label %for.end

for.body.12:                                      ; preds = %for.cond.10
  %21 = load i8*, i8** %s, align 8
  %22 = load i32, i32* %gray, align 4
  %23 = load i32, i32* %has_alpha, align 4
  %call13 = call i32 @compute_luminosity(i8* %21, i32 %22, i32 %23)
  %idxprom = sext i32 %call13 to i64
  %arrayidx = getelementptr inbounds [256 x i32], [256 x i32]* %values, i32 0, i64 %idxprom
  %24 = load i32, i32* %arrayidx, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* %arrayidx, align 4
  %bpp = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 2
  %25 = load i32, i32* %bpp, align 4
  %26 = load i8*, i8** %s, align 8
  %idx.ext = sext i32 %25 to i64
  %add.ptr = getelementptr inbounds i8, i8* %26, i64 %idx.ext
  store i8* %add.ptr, i8** %s, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.12
  %27 = load i32, i32* %sx, align 4
  %inc14 = add nsw i32 %27, 1
  store i32 %inc14, i32* %sx, align 4
  br label %for.cond.10

for.end:                                          ; preds = %for.cond.10
  %rowstride = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 3
  %28 = load i32, i32* %rowstride, align 4
  %29 = load i8*, i8** %src, align 8
  %idx.ext15 = sext i32 %28 to i64
  %add.ptr16 = getelementptr inbounds i8, i8* %29, i64 %idx.ext15
  store i8* %add.ptr16, i8** %src, align 8
  br label %for.inc.17

for.inc.17:                                       ; preds = %for.end
  %30 = load i32, i32* %sy, align 4
  %inc18 = add nsw i32 %30, 1
  store i32 %inc18, i32* %sy, align 4
  br label %for.cond.7

for.end.19:                                       ; preds = %for.cond.7
  br label %for.inc.20

for.inc.20:                                       ; preds = %for.end.19
  %31 = load i8*, i8** %pr, align 8
  %call21 = call i8* @gimp_pixel_rgns_process(i8* %31)
  store i8* %call21, i8** %pr, align 8
  br label %for.cond

for.end.22:                                       ; preds = %for.cond
  %32 = load i32, i32* %x2, align 4
  %33 = load i32, i32* %x1, align 4
  %sub23 = sub nsw i32 %32, %33
  %34 = load i32, i32* %y2, align 4
  %35 = load i32, i32* %y1, align 4
  %sub24 = sub nsw i32 %34, %35
  %mul = mul nsw i32 %sub23, %sub24
  store i32 %mul, i32* %total, align 4
  store i32 0, i32* %sum, align 4
  store i32 255, i32* %i, align 4
  br label %for.cond.25

for.cond.25:                                      ; preds = %for.inc.34, %for.end.22
  %36 = load i32, i32* %i, align 4
  %cmp26 = icmp sge i32 %36, 0
  br i1 %cmp26, label %for.body.27, label %for.end.35

for.body.27:                                      ; preds = %for.cond.25
  %37 = load i32, i32* %i, align 4
  %idxprom28 = sext i32 %37 to i64
  %arrayidx29 = getelementptr inbounds [256 x i32], [256 x i32]* %values, i32 0, i64 %idxprom28
  %38 = load i32, i32* %arrayidx29, align 4
  %39 = load i32, i32* %sum, align 4
  %add = add nsw i32 %39, %38
  store i32 %add, i32* %sum, align 4
  %40 = load i32, i32* %sum, align 4
  %conv = sitofp i32 %40 to double
  %41 = load double, double* %percentile.addr, align 8
  %42 = load i32, i32* %total, align 4
  %conv30 = sitofp i32 %42 to double
  %mul31 = fmul double %41, %conv30
  %cmp32 = fcmp ogt double %conv, %mul31
  br i1 %cmp32, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.27
  %43 = load i32, i32* %sum, align 4
  store i32 %43, i32* @num_sparkles, align 4
  %44 = load i32, i32* %i, align 4
  store i32 %44, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body.27
  br label %for.inc.34

for.inc.34:                                       ; preds = %if.end
  %45 = load i32, i32* %i, align 4
  %dec = add nsw i32 %45, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond.25

for.end.35:                                       ; preds = %for.cond.25
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end.35, %if.then
  %46 = load i32, i32* %retval
  ret i32 %46
}

declare i32 @gimp_drawable_has_alpha(i32) #1

; Function Attrs: nounwind readnone
declare i32 @gimp_tile_height() #3

declare void @gimp_pixel_rgn_init(%struct._GimpPixelRgn*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32) #1

declare i8* @gimp_pixel_rgns_register(i32, ...) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

declare i8* @gimp_pixel_rgns_process(i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @compute_luminosity(i8* %pixel, i32 %gray, i32 %has_alpha) #0 {
entry:
  %retval = alloca i32, align 4
  %pixel.addr = alloca i8*, align 8
  %gray.addr = alloca i32, align 4
  %has_alpha.addr = alloca i32, align 4
  %pixel0 = alloca i32, align 4
  %pixel1 = alloca i32, align 4
  %pixel2 = alloca i32, align 4
  %min = alloca i32, align 4
  %max = alloca i32, align 4
  store i8* %pixel, i8** %pixel.addr, align 8
  store i32 %gray, i32* %gray.addr, align 4
  store i32 %has_alpha, i32* %has_alpha.addr, align 4
  %0 = load i32, i32* getelementptr inbounds (%struct.SparkleVals, %struct.SparkleVals* @svals, i32 0, i32 10), align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %pixel.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 0
  %2 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %sub = sub nsw i32 255, %conv
  store i32 %sub, i32* %pixel0, align 4
  %3 = load i8*, i8** %pixel.addr, align 8
  %arrayidx1 = getelementptr inbounds i8, i8* %3, i64 1
  %4 = load i8, i8* %arrayidx1, align 1
  %conv2 = zext i8 %4 to i32
  %sub3 = sub nsw i32 255, %conv2
  store i32 %sub3, i32* %pixel1, align 4
  %5 = load i8*, i8** %pixel.addr, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %5, i64 2
  %6 = load i8, i8* %arrayidx4, align 1
  %conv5 = zext i8 %6 to i32
  %sub6 = sub nsw i32 255, %conv5
  store i32 %sub6, i32* %pixel2, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %7 = load i8*, i8** %pixel.addr, align 8
  %arrayidx7 = getelementptr inbounds i8, i8* %7, i64 0
  %8 = load i8, i8* %arrayidx7, align 1
  %conv8 = zext i8 %8 to i32
  store i32 %conv8, i32* %pixel0, align 4
  %9 = load i8*, i8** %pixel.addr, align 8
  %arrayidx9 = getelementptr inbounds i8, i8* %9, i64 1
  %10 = load i8, i8* %arrayidx9, align 1
  %conv10 = zext i8 %10 to i32
  store i32 %conv10, i32* %pixel1, align 4
  %11 = load i8*, i8** %pixel.addr, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %11, i64 2
  %12 = load i8, i8* %arrayidx11, align 1
  %conv12 = zext i8 %12 to i32
  store i32 %conv12, i32* %pixel2, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %13 = load i32, i32* %gray.addr, align 4
  %tobool13 = icmp ne i32 %13, 0
  br i1 %tobool13, label %if.then.14, label %if.else.18

if.then.14:                                       ; preds = %if.end
  %14 = load i32, i32* %has_alpha.addr, align 4
  %tobool15 = icmp ne i32 %14, 0
  br i1 %tobool15, label %if.then.16, label %if.else.17

if.then.16:                                       ; preds = %if.then.14
  %15 = load i32, i32* %pixel0, align 4
  %16 = load i32, i32* %pixel1, align 4
  %mul = mul nsw i32 %15, %16
  %div = sdiv i32 %mul, 255
  store i32 %div, i32* %retval
  br label %return

if.else.17:                                       ; preds = %if.then.14
  %17 = load i32, i32* %pixel0, align 4
  store i32 %17, i32* %retval
  br label %return

if.else.18:                                       ; preds = %if.end
  %18 = load i32, i32* %pixel0, align 4
  %19 = load i32, i32* %pixel1, align 4
  %cmp = icmp slt i32 %18, %19
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else.18
  %20 = load i32, i32* %pixel0, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.else.18
  %21 = load i32, i32* %pixel1, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %20, %cond.true ], [ %21, %cond.false ]
  store i32 %cond, i32* %min, align 4
  %22 = load i32, i32* %min, align 4
  %23 = load i32, i32* %pixel2, align 4
  %cmp20 = icmp slt i32 %22, %23
  br i1 %cmp20, label %cond.true.22, label %cond.false.23

cond.true.22:                                     ; preds = %cond.end
  %24 = load i32, i32* %min, align 4
  br label %cond.end.24

cond.false.23:                                    ; preds = %cond.end
  %25 = load i32, i32* %pixel2, align 4
  br label %cond.end.24

cond.end.24:                                      ; preds = %cond.false.23, %cond.true.22
  %cond25 = phi i32 [ %24, %cond.true.22 ], [ %25, %cond.false.23 ]
  store i32 %cond25, i32* %min, align 4
  %26 = load i32, i32* %pixel0, align 4
  %27 = load i32, i32* %pixel1, align 4
  %cmp26 = icmp sgt i32 %26, %27
  br i1 %cmp26, label %cond.true.28, label %cond.false.29

cond.true.28:                                     ; preds = %cond.end.24
  %28 = load i32, i32* %pixel0, align 4
  br label %cond.end.30

cond.false.29:                                    ; preds = %cond.end.24
  %29 = load i32, i32* %pixel1, align 4
  br label %cond.end.30

cond.end.30:                                      ; preds = %cond.false.29, %cond.true.28
  %cond31 = phi i32 [ %28, %cond.true.28 ], [ %29, %cond.false.29 ]
  store i32 %cond31, i32* %max, align 4
  %30 = load i32, i32* %max, align 4
  %31 = load i32, i32* %pixel2, align 4
  %cmp32 = icmp sgt i32 %30, %31
  br i1 %cmp32, label %cond.true.34, label %cond.false.35

cond.true.34:                                     ; preds = %cond.end.30
  %32 = load i32, i32* %max, align 4
  br label %cond.end.36

cond.false.35:                                    ; preds = %cond.end.30
  %33 = load i32, i32* %pixel2, align 4
  br label %cond.end.36

cond.end.36:                                      ; preds = %cond.false.35, %cond.true.34
  %cond37 = phi i32 [ %32, %cond.true.34 ], [ %33, %cond.false.35 ]
  store i32 %cond37, i32* %max, align 4
  %34 = load i32, i32* %has_alpha.addr, align 4
  %tobool38 = icmp ne i32 %34, 0
  br i1 %tobool38, label %if.then.39, label %if.else.44

if.then.39:                                       ; preds = %cond.end.36
  %35 = load i32, i32* %min, align 4
  %36 = load i32, i32* %max, align 4
  %add = add nsw i32 %35, %36
  %37 = load i8*, i8** %pixel.addr, align 8
  %arrayidx40 = getelementptr inbounds i8, i8* %37, i64 3
  %38 = load i8, i8* %arrayidx40, align 1
  %conv41 = zext i8 %38 to i32
  %mul42 = mul nsw i32 %add, %conv41
  %div43 = sdiv i32 %mul42, 510
  store i32 %div43, i32* %retval
  br label %return

if.else.44:                                       ; preds = %cond.end.36
  %39 = load i32, i32* %min, align 4
  %40 = load i32, i32* %max, align 4
  %add45 = add nsw i32 %39, %40
  %div46 = sdiv i32 %add45, 2
  store i32 %div46, i32* %retval
  br label %return

return:                                           ; preds = %if.else.44, %if.then.39, %if.else.17, %if.then.16
  %41 = load i32, i32* %retval
  ret i32 %41
}

; Function Attrs: nounwind readnone
declare double @fabs(double) #3

; Function Attrs: nounwind
declare double @pow(double, double) #2

declare double @g_rand_double_range(%struct._GRand*, double, double) #1

declare double @g_rand_double(%struct._GRand*) #1

; Function Attrs: nounwind uwtable
define internal void @fspike(%struct._GimpPixelRgn* %src_rgn, %struct._GimpPixelRgn* %dest_rgn, i32 %x1, i32 %y1, i32 %x2, i32 %y2, i32 %xr, i32 %yr, i32 %tile_width, i32 %tile_height, double %inten, double %length, double %angle, %struct._GRand* %gr, i8* %dest_buf) #0 {
entry:
  %src_rgn.addr = alloca %struct._GimpPixelRgn*, align 8
  %dest_rgn.addr = alloca %struct._GimpPixelRgn*, align 8
  %x1.addr = alloca i32, align 4
  %y1.addr = alloca i32, align 4
  %x2.addr = alloca i32, align 4
  %y2.addr = alloca i32, align 4
  %xr.addr = alloca i32, align 4
  %yr.addr = alloca i32, align 4
  %tile_width.addr = alloca i32, align 4
  %tile_height.addr = alloca i32, align 4
  %inten.addr = alloca double, align 8
  %length.addr = alloca double, align 8
  %angle.addr = alloca double, align 8
  %gr.addr = alloca %struct._GRand*, align 8
  %dest_buf.addr = alloca i8*, align 8
  %efac = alloca double, align 8
  %xrt = alloca double, align 8
  %yrt = alloca double, align 8
  %dx = alloca double, align 8
  %dy = alloca double, align 8
  %rpos = alloca double, align 8
  %in = alloca double, align 8
  %theta = alloca double, align 8
  %sfac = alloca double, align 8
  %r = alloca i32, align 4
  %g = alloca i32, align 4
  %b = alloca i32, align 4
  %tile = alloca %struct._GimpTile*, align 8
  %row = alloca i32, align 4
  %col = alloca i32, align 4
  %i = alloca i32, align 4
  %bytes = alloca i32, align 4
  %ok = alloca i32, align 4
  %gimp_color = alloca %struct._GimpRGB, align 8
  %pixel = alloca [4 x i8], align 1
  %chosen_color = alloca [4 x i8], align 1
  %color = alloca [4 x i8], align 1
  store %struct._GimpPixelRgn* %src_rgn, %struct._GimpPixelRgn** %src_rgn.addr, align 8
  store %struct._GimpPixelRgn* %dest_rgn, %struct._GimpPixelRgn** %dest_rgn.addr, align 8
  store i32 %x1, i32* %x1.addr, align 4
  store i32 %y1, i32* %y1.addr, align 4
  store i32 %x2, i32* %x2.addr, align 4
  store i32 %y2, i32* %y2.addr, align 4
  store i32 %xr, i32* %xr.addr, align 4
  store i32 %yr, i32* %yr.addr, align 4
  store i32 %tile_width, i32* %tile_width.addr, align 4
  store i32 %tile_height, i32* %tile_height.addr, align 4
  store double %inten, double* %inten.addr, align 8
  store double %length, double* %length.addr, align 8
  store double %angle, double* %angle.addr, align 8
  store %struct._GRand* %gr, %struct._GRand** %gr.addr, align 8
  store i8* %dest_buf, i8** %dest_buf.addr, align 8
  store double 2.000000e+00, double* %efac, align 8
  store %struct._GimpTile* null, %struct._GimpTile** %tile, align 8
  %0 = load double, double* %angle.addr, align 8
  store double %0, double* %theta, align 8
  %1 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %dest_rgn.addr, align 8
  %bpp = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %1, i32 0, i32 2
  %2 = load i32, i32* %bpp, align 4
  store i32 %2, i32* %bytes, align 4
  store i32 -1, i32* %row, align 4
  store i32 -1, i32* %col, align 4
  %3 = load i32, i32* getelementptr inbounds (%struct.SparkleVals, %struct.SparkleVals* @svals, i32 0, i32 12), align 4
  switch i32 %3, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.1
    i32 2, label %sw.bb.4
  ]

sw.bb:                                            ; preds = %entry
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  %call = call i32 @gimp_context_get_foreground(%struct._GimpRGB* %gimp_color)
  %arrayidx = getelementptr inbounds [4 x i8], [4 x i8]* %chosen_color, i32 0, i64 0
  %arrayidx2 = getelementptr inbounds [4 x i8], [4 x i8]* %chosen_color, i32 0, i64 1
  %arrayidx3 = getelementptr inbounds [4 x i8], [4 x i8]* %chosen_color, i32 0, i64 2
  call void @gimp_rgb_get_uchar(%struct._GimpRGB* %gimp_color, i8* %arrayidx, i8* %arrayidx2, i8* %arrayidx3)
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  %call5 = call i32 @gimp_context_get_background(%struct._GimpRGB* %gimp_color)
  %arrayidx6 = getelementptr inbounds [4 x i8], [4 x i8]* %chosen_color, i32 0, i64 0
  %arrayidx7 = getelementptr inbounds [4 x i8], [4 x i8]* %chosen_color, i32 0, i64 1
  %arrayidx8 = getelementptr inbounds [4 x i8], [4 x i8]* %chosen_color, i32 0, i64 2
  call void @gimp_rgb_get_uchar(%struct._GimpRGB* %gimp_color, i8* %arrayidx6, i8* %arrayidx7, i8* %arrayidx8)
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb.4, %sw.bb.1, %sw.bb
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.epilog
  %4 = load i32, i32* %i, align 4
  %conv = sitofp i32 %4 to double
  %5 = load double, double* getelementptr inbounds (%struct.SparkleVals, %struct.SparkleVals* @svals, i32 0, i32 3), align 8
  %cmp = fcmp olt double %conv, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %dest_rgn.addr, align 8
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %pixel, i32 0, i32 0
  %7 = load i32, i32* %xr.addr, align 4
  %8 = load i32, i32* %yr.addr, align 4
  call void @gimp_pixel_rgn_get_pixel(%struct._GimpPixelRgn* %6, i8* %arraydecay, i32 %7, i32 %8)
  %9 = load i32, i32* getelementptr inbounds (%struct.SparkleVals, %struct.SparkleVals* @svals, i32 0, i32 12), align 4
  %cmp10 = icmp eq i32 %9, 0
  br i1 %cmp10, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %arrayidx12 = getelementptr inbounds [4 x i8], [4 x i8]* %pixel, i32 0, i64 0
  %10 = load i8, i8* %arrayidx12, align 1
  %arrayidx13 = getelementptr inbounds [4 x i8], [4 x i8]* %color, i32 0, i64 0
  store i8 %10, i8* %arrayidx13, align 1
  %arrayidx14 = getelementptr inbounds [4 x i8], [4 x i8]* %pixel, i32 0, i64 1
  %11 = load i8, i8* %arrayidx14, align 1
  %arrayidx15 = getelementptr inbounds [4 x i8], [4 x i8]* %color, i32 0, i64 1
  store i8 %11, i8* %arrayidx15, align 1
  %arrayidx16 = getelementptr inbounds [4 x i8], [4 x i8]* %pixel, i32 0, i64 2
  %12 = load i8, i8* %arrayidx16, align 1
  %arrayidx17 = getelementptr inbounds [4 x i8], [4 x i8]* %color, i32 0, i64 2
  store i8 %12, i8* %arrayidx17, align 1
  br label %if.end

if.else:                                          ; preds = %for.body
  %arrayidx18 = getelementptr inbounds [4 x i8], [4 x i8]* %chosen_color, i32 0, i64 0
  %13 = load i8, i8* %arrayidx18, align 1
  %arrayidx19 = getelementptr inbounds [4 x i8], [4 x i8]* %color, i32 0, i64 0
  store i8 %13, i8* %arrayidx19, align 1
  %arrayidx20 = getelementptr inbounds [4 x i8], [4 x i8]* %chosen_color, i32 0, i64 1
  %14 = load i8, i8* %arrayidx20, align 1
  %arrayidx21 = getelementptr inbounds [4 x i8], [4 x i8]* %color, i32 0, i64 1
  store i8 %14, i8* %arrayidx21, align 1
  %arrayidx22 = getelementptr inbounds [4 x i8], [4 x i8]* %chosen_color, i32 0, i64 2
  %15 = load i8, i8* %arrayidx22, align 1
  %arrayidx23 = getelementptr inbounds [4 x i8], [4 x i8]* %color, i32 0, i64 2
  store i8 %15, i8* %arrayidx23, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %arrayidx24 = getelementptr inbounds [4 x i8], [4 x i8]* %pixel, i32 0, i64 3
  %16 = load i8, i8* %arrayidx24, align 1
  %arrayidx25 = getelementptr inbounds [4 x i8], [4 x i8]* %color, i32 0, i64 3
  store i8 %16, i8* %arrayidx25, align 1
  %17 = load i32, i32* getelementptr inbounds (%struct.SparkleVals, %struct.SparkleVals* @svals, i32 0, i32 10), align 4
  %tobool = icmp ne i32 %17, 0
  br i1 %tobool, label %if.then.26, label %if.end.41

if.then.26:                                       ; preds = %if.end
  %arrayidx27 = getelementptr inbounds [4 x i8], [4 x i8]* %color, i32 0, i64 0
  %18 = load i8, i8* %arrayidx27, align 1
  %conv28 = zext i8 %18 to i32
  %sub = sub nsw i32 255, %conv28
  %conv29 = trunc i32 %sub to i8
  %arrayidx30 = getelementptr inbounds [4 x i8], [4 x i8]* %color, i32 0, i64 0
  store i8 %conv29, i8* %arrayidx30, align 1
  %arrayidx31 = getelementptr inbounds [4 x i8], [4 x i8]* %color, i32 0, i64 1
  %19 = load i8, i8* %arrayidx31, align 1
  %conv32 = zext i8 %19 to i32
  %sub33 = sub nsw i32 255, %conv32
  %conv34 = trunc i32 %sub33 to i8
  %arrayidx35 = getelementptr inbounds [4 x i8], [4 x i8]* %color, i32 0, i64 1
  store i8 %conv34, i8* %arrayidx35, align 1
  %arrayidx36 = getelementptr inbounds [4 x i8], [4 x i8]* %color, i32 0, i64 2
  %20 = load i8, i8* %arrayidx36, align 1
  %conv37 = zext i8 %20 to i32
  %sub38 = sub nsw i32 255, %conv37
  %conv39 = trunc i32 %sub38 to i8
  %arrayidx40 = getelementptr inbounds [4 x i8], [4 x i8]* %color, i32 0, i64 2
  store i8 %conv39, i8* %arrayidx40, align 1
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.26, %if.end
  %21 = load double, double* getelementptr inbounds (%struct.SparkleVals, %struct.SparkleVals* @svals, i32 0, i32 7), align 8
  %cmp42 = fcmp ogt double %21, 0.000000e+00
  br i1 %cmp42, label %if.then.46, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.41
  %22 = load double, double* getelementptr inbounds (%struct.SparkleVals, %struct.SparkleVals* @svals, i32 0, i32 8), align 8
  %cmp44 = fcmp ogt double %22, 0.000000e+00
  br i1 %cmp44, label %if.then.46, label %if.end.90

if.then.46:                                       ; preds = %lor.lhs.false, %if.end.41
  %arrayidx47 = getelementptr inbounds [4 x i8], [4 x i8]* %color, i32 0, i64 0
  %23 = load i8, i8* %arrayidx47, align 1
  %conv48 = zext i8 %23 to i32
  %sub49 = sub nsw i32 255, %conv48
  store i32 %sub49, i32* %r, align 4
  %arrayidx50 = getelementptr inbounds [4 x i8], [4 x i8]* %color, i32 0, i64 1
  %24 = load i8, i8* %arrayidx50, align 1
  %conv51 = zext i8 %24 to i32
  %sub52 = sub nsw i32 255, %conv51
  store i32 %sub52, i32* %g, align 4
  %arrayidx53 = getelementptr inbounds [4 x i8], [4 x i8]* %color, i32 0, i64 2
  %25 = load i8, i8* %arrayidx53, align 1
  %conv54 = zext i8 %25 to i32
  %sub55 = sub nsw i32 255, %conv54
  store i32 %sub55, i32* %b, align 4
  call void @gimp_rgb_to_hsv_int(i32* %r, i32* %g, i32* %b)
  %26 = load double, double* getelementptr inbounds (%struct.SparkleVals, %struct.SparkleVals* @svals, i32 0, i32 7), align 8
  %27 = load %struct._GRand*, %struct._GRand** %gr.addr, align 8
  %call56 = call double @g_rand_double_range(%struct._GRand* %27, double -5.000000e-01, double 5.000000e-01)
  %mul = fmul double %26, %call56
  %mul57 = fmul double %mul, 2.550000e+02
  %28 = load i32, i32* %r, align 4
  %conv58 = sitofp i32 %28 to double
  %add = fadd double %conv58, %mul57
  %conv59 = fptosi double %add to i32
  store i32 %conv59, i32* %r, align 4
  %29 = load i32, i32* %r, align 4
  %cmp60 = icmp sge i32 %29, 255
  br i1 %cmp60, label %if.then.62, label %if.else.64

if.then.62:                                       ; preds = %if.then.46
  %30 = load i32, i32* %r, align 4
  %sub63 = sub nsw i32 %30, 255
  store i32 %sub63, i32* %r, align 4
  br label %if.end.70

if.else.64:                                       ; preds = %if.then.46
  %31 = load i32, i32* %r, align 4
  %cmp65 = icmp slt i32 %31, 0
  br i1 %cmp65, label %if.then.67, label %if.end.69

if.then.67:                                       ; preds = %if.else.64
  %32 = load i32, i32* %r, align 4
  %add68 = add nsw i32 %32, 255
  store i32 %add68, i32* %r, align 4
  br label %if.end.69

if.end.69:                                        ; preds = %if.then.67, %if.else.64
  br label %if.end.70

if.end.70:                                        ; preds = %if.end.69, %if.then.62
  %33 = load double, double* getelementptr inbounds (%struct.SparkleVals, %struct.SparkleVals* @svals, i32 0, i32 8), align 8
  %34 = load %struct._GRand*, %struct._GRand** %gr.addr, align 8
  %call71 = call double @g_rand_double_range(%struct._GRand* %34, double -1.000000e+00, double 1.000000e+00)
  %mul72 = fmul double %33, %call71
  %mul73 = fmul double %mul72, 2.550000e+02
  %35 = load i32, i32* %b, align 4
  %conv74 = sitofp i32 %35 to double
  %add75 = fadd double %conv74, %mul73
  %conv76 = fptosi double %add75 to i32
  store i32 %conv76, i32* %b, align 4
  %36 = load i32, i32* %b, align 4
  %cmp77 = icmp sgt i32 %36, 255
  br i1 %cmp77, label %if.then.79, label %if.end.80

if.then.79:                                       ; preds = %if.end.70
  store i32 255, i32* %b, align 4
  br label %if.end.80

if.end.80:                                        ; preds = %if.then.79, %if.end.70
  call void @gimp_hsv_to_rgb_int(i32* %r, i32* %g, i32* %b)
  %37 = load i32, i32* %r, align 4
  %sub81 = sub nsw i32 255, %37
  %conv82 = trunc i32 %sub81 to i8
  %arrayidx83 = getelementptr inbounds [4 x i8], [4 x i8]* %color, i32 0, i64 0
  store i8 %conv82, i8* %arrayidx83, align 1
  %38 = load i32, i32* %g, align 4
  %sub84 = sub nsw i32 255, %38
  %conv85 = trunc i32 %sub84 to i8
  %arrayidx86 = getelementptr inbounds [4 x i8], [4 x i8]* %color, i32 0, i64 1
  store i8 %conv85, i8* %arrayidx86, align 1
  %39 = load i32, i32* %b, align 4
  %sub87 = sub nsw i32 255, %39
  %conv88 = trunc i32 %sub87 to i8
  %arrayidx89 = getelementptr inbounds [4 x i8], [4 x i8]* %color, i32 0, i64 2
  store i8 %conv88, i8* %arrayidx89, align 1
  br label %if.end.90

if.end.90:                                        ; preds = %if.end.80, %lor.lhs.false
  %40 = load double, double* %theta, align 8
  %mul91 = fmul double %40, 0x400921FB54442D18
  %div = fdiv double %mul91, 1.800000e+02
  %call92 = call double @cos(double %div) #4
  %mul93 = fmul double 2.000000e-01, %call92
  store double %mul93, double* %dx, align 8
  %41 = load double, double* %theta, align 8
  %mul94 = fmul double %41, 0x400921FB54442D18
  %div95 = fdiv double %mul94, 1.800000e+02
  %call96 = call double @sin(double %div95) #4
  %mul97 = fmul double 2.000000e-01, %call96
  store double %mul97, double* %dy, align 8
  %42 = load i32, i32* %xr.addr, align 4
  %conv98 = sitofp i32 %42 to double
  store double %conv98, double* %xrt, align 8
  %43 = load i32, i32* %yr.addr, align 4
  %conv99 = sitofp i32 %43 to double
  store double %conv99, double* %yrt, align 8
  store double 2.000000e-01, double* %rpos, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end.90
  %44 = load double, double* %inten.addr, align 8
  %45 = load double, double* %rpos, align 8
  %46 = load double, double* %length.addr, align 8
  %div100 = fdiv double %45, %46
  %call101 = call double @pow(double %div100, double 2.000000e+00) #4
  %sub102 = fsub double -0.000000e+00, %call101
  %call103 = call double @exp(double %sub102) #4
  %mul104 = fmul double %44, %call103
  store double %mul104, double* %sfac, align 8
  store i32 0, i32* %ok, align 4
  %47 = load double, double* %sfac, align 8
  %mul105 = fmul double 2.000000e-01, %47
  store double %mul105, double* %in, align 8
  %48 = load double, double* %in, align 8
  %cmp106 = fcmp ogt double %48, 1.000000e-02
  br i1 %cmp106, label %if.then.108, label %if.end.109

if.then.108:                                      ; preds = %do.body
  store i32 1, i32* %ok, align 4
  br label %if.end.109

if.end.109:                                       ; preds = %if.then.108, %do.body
  %49 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %dest_rgn.addr, align 8
  %drawable = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %49, i32 0, i32 1
  %50 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %51 = load %struct._GimpTile*, %struct._GimpTile** %tile, align 8
  %52 = load i32, i32* %x1.addr, align 4
  %53 = load i32, i32* %y1.addr, align 4
  %54 = load i32, i32* %x2.addr, align 4
  %55 = load i32, i32* %y2.addr, align 4
  %56 = load double, double* %xrt, align 8
  %57 = load double, double* %yrt, align 8
  %58 = load i32, i32* %tile_width.addr, align 4
  %59 = load i32, i32* %tile_height.addr, align 4
  %60 = load i32, i32* %bytes, align 4
  %61 = load double, double* %in, align 8
  %arraydecay110 = getelementptr inbounds [4 x i8], [4 x i8]* %color, i32 0, i32 0
  %62 = load i8*, i8** %dest_buf.addr, align 8
  %call111 = call %struct._GimpTile* @rpnt(%struct._GimpDrawable* %50, %struct._GimpTile* %51, i32 %52, i32 %53, i32 %54, i32 %55, double %56, double %57, i32 %58, i32 %59, i32* %row, i32* %col, i32 %60, double %61, i8* %arraydecay110, i8* %62)
  store %struct._GimpTile* %call111, %struct._GimpTile** %tile, align 8
  %63 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %dest_rgn.addr, align 8
  %drawable112 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %63, i32 0, i32 1
  %64 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable112, align 8
  %65 = load %struct._GimpTile*, %struct._GimpTile** %tile, align 8
  %66 = load i32, i32* %x1.addr, align 4
  %67 = load i32, i32* %y1.addr, align 4
  %68 = load i32, i32* %x2.addr, align 4
  %69 = load i32, i32* %y2.addr, align 4
  %70 = load double, double* %xrt, align 8
  %add113 = fadd double %70, 1.000000e+00
  %71 = load double, double* %yrt, align 8
  %72 = load i32, i32* %tile_width.addr, align 4
  %73 = load i32, i32* %tile_height.addr, align 4
  %74 = load i32, i32* %bytes, align 4
  %75 = load double, double* %in, align 8
  %arraydecay114 = getelementptr inbounds [4 x i8], [4 x i8]* %color, i32 0, i32 0
  %76 = load i8*, i8** %dest_buf.addr, align 8
  %call115 = call %struct._GimpTile* @rpnt(%struct._GimpDrawable* %64, %struct._GimpTile* %65, i32 %66, i32 %67, i32 %68, i32 %69, double %add113, double %71, i32 %72, i32 %73, i32* %row, i32* %col, i32 %74, double %75, i8* %arraydecay114, i8* %76)
  store %struct._GimpTile* %call115, %struct._GimpTile** %tile, align 8
  %77 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %dest_rgn.addr, align 8
  %drawable116 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %77, i32 0, i32 1
  %78 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable116, align 8
  %79 = load %struct._GimpTile*, %struct._GimpTile** %tile, align 8
  %80 = load i32, i32* %x1.addr, align 4
  %81 = load i32, i32* %y1.addr, align 4
  %82 = load i32, i32* %x2.addr, align 4
  %83 = load i32, i32* %y2.addr, align 4
  %84 = load double, double* %xrt, align 8
  %add117 = fadd double %84, 1.000000e+00
  %85 = load double, double* %yrt, align 8
  %add118 = fadd double %85, 1.000000e+00
  %86 = load i32, i32* %tile_width.addr, align 4
  %87 = load i32, i32* %tile_height.addr, align 4
  %88 = load i32, i32* %bytes, align 4
  %89 = load double, double* %in, align 8
  %arraydecay119 = getelementptr inbounds [4 x i8], [4 x i8]* %color, i32 0, i32 0
  %90 = load i8*, i8** %dest_buf.addr, align 8
  %call120 = call %struct._GimpTile* @rpnt(%struct._GimpDrawable* %78, %struct._GimpTile* %79, i32 %80, i32 %81, i32 %82, i32 %83, double %add117, double %add118, i32 %86, i32 %87, i32* %row, i32* %col, i32 %88, double %89, i8* %arraydecay119, i8* %90)
  store %struct._GimpTile* %call120, %struct._GimpTile** %tile, align 8
  %91 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %dest_rgn.addr, align 8
  %drawable121 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %91, i32 0, i32 1
  %92 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable121, align 8
  %93 = load %struct._GimpTile*, %struct._GimpTile** %tile, align 8
  %94 = load i32, i32* %x1.addr, align 4
  %95 = load i32, i32* %y1.addr, align 4
  %96 = load i32, i32* %x2.addr, align 4
  %97 = load i32, i32* %y2.addr, align 4
  %98 = load double, double* %xrt, align 8
  %99 = load double, double* %yrt, align 8
  %add122 = fadd double %99, 1.000000e+00
  %100 = load i32, i32* %tile_width.addr, align 4
  %101 = load i32, i32* %tile_height.addr, align 4
  %102 = load i32, i32* %bytes, align 4
  %103 = load double, double* %in, align 8
  %arraydecay123 = getelementptr inbounds [4 x i8], [4 x i8]* %color, i32 0, i32 0
  %104 = load i8*, i8** %dest_buf.addr, align 8
  %call124 = call %struct._GimpTile* @rpnt(%struct._GimpDrawable* %92, %struct._GimpTile* %93, i32 %94, i32 %95, i32 %96, i32 %97, double %98, double %add122, i32 %100, i32 %101, i32* %row, i32* %col, i32 %102, double %103, i8* %arraydecay123, i8* %104)
  store %struct._GimpTile* %call124, %struct._GimpTile** %tile, align 8
  %105 = load double, double* %dx, align 8
  %106 = load double, double* %xrt, align 8
  %add125 = fadd double %106, %105
  store double %add125, double* %xrt, align 8
  %107 = load double, double* %dy, align 8
  %108 = load double, double* %yrt, align 8
  %add126 = fadd double %108, %107
  store double %add126, double* %yrt, align 8
  %109 = load double, double* %rpos, align 8
  %add127 = fadd double %109, 2.000000e-01
  store double %add127, double* %rpos, align 8
  br label %do.cond

do.cond:                                          ; preds = %if.end.109
  %110 = load i32, i32* %ok, align 4
  %tobool128 = icmp ne i32 %110, 0
  br i1 %tobool128, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %111 = load double, double* getelementptr inbounds (%struct.SparkleVals, %struct.SparkleVals* @svals, i32 0, i32 3), align 8
  %div129 = fdiv double 3.600000e+02, %111
  %112 = load double, double* %theta, align 8
  %add130 = fadd double %112, %div129
  store double %add130, double* %theta, align 8
  br label %for.inc

for.inc:                                          ; preds = %do.end
  %113 = load i32, i32* %i, align 4
  %inc = add nsw i32 %113, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %114 = load %struct._GimpTile*, %struct._GimpTile** %tile, align 8
  %tobool131 = icmp ne %struct._GimpTile* %114, null
  br i1 %tobool131, label %if.then.132, label %if.end.133

if.then.132:                                      ; preds = %for.end
  %115 = load %struct._GimpTile*, %struct._GimpTile** %tile, align 8
  call void @gimp_tile_unref(%struct._GimpTile* %115, i32 1)
  br label %if.end.133

if.end.133:                                       ; preds = %if.then.132, %for.end
  ret void
}

declare i32 @gimp_progress_update(double) #1

declare void @gimp_preview_draw_buffer(%struct._GimpPreview*, i8*, i32) #1

declare void @g_free(i8*) #1

declare void @gimp_drawable_flush(%struct._GimpDrawable*) #1

declare i32 @gimp_drawable_merge_shadow(i32, i32) #1

declare i32 @gimp_drawable_update(i32, i32, i32, i32, i32) #1

declare void @g_rand_free(%struct._GRand*) #1

declare i32 @gimp_context_get_foreground(%struct._GimpRGB*) #1

declare void @gimp_rgb_get_uchar(%struct._GimpRGB*, i8*, i8*, i8*) #1

declare i32 @gimp_context_get_background(%struct._GimpRGB*) #1

declare void @gimp_pixel_rgn_get_pixel(%struct._GimpPixelRgn*, i8*, i32, i32) #1

declare void @gimp_rgb_to_hsv_int(i32*, i32*, i32*) #1

declare void @gimp_hsv_to_rgb_int(i32*, i32*, i32*) #1

; Function Attrs: nounwind
declare double @cos(double) #2

; Function Attrs: nounwind
declare double @sin(double) #2

; Function Attrs: nounwind
declare double @exp(double) #2

; Function Attrs: inlinehint nounwind uwtable
define internal %struct._GimpTile* @rpnt(%struct._GimpDrawable* %drawable, %struct._GimpTile* %tile, i32 %x1, i32 %y1, i32 %x2, i32 %y2, double %xr, double %yr, i32 %tile_width, i32 %tile_height, i32* %row, i32* %col, i32 %bytes, double %inten, i8* %color, i8* %dest_buf) #5 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %tile.addr = alloca %struct._GimpTile*, align 8
  %x1.addr = alloca i32, align 4
  %y1.addr = alloca i32, align 4
  %x2.addr = alloca i32, align 4
  %y2.addr = alloca i32, align 4
  %xr.addr = alloca double, align 8
  %yr.addr = alloca double, align 8
  %tile_width.addr = alloca i32, align 4
  %tile_height.addr = alloca i32, align 4
  %row.addr = alloca i32*, align 8
  %col.addr = alloca i32*, align 8
  %bytes.addr = alloca i32, align 4
  %inten.addr = alloca double, align 8
  %color.addr = alloca i8*, align 8
  %dest_buf.addr = alloca i8*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %b = alloca i32, align 4
  %dx = alloca double, align 8
  %dy = alloca double, align 8
  %rs = alloca double, align 8
  %val = alloca double, align 8
  %pixel = alloca i8*, align 8
  %new = alloca double, align 8
  %newcol = alloca i32, align 4
  %newrow = alloca i32, align 4
  %newcoloff = alloca i32, align 4
  %newrowoff = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._GimpTile* %tile, %struct._GimpTile** %tile.addr, align 8
  store i32 %x1, i32* %x1.addr, align 4
  store i32 %y1, i32* %y1.addr, align 4
  store i32 %x2, i32* %x2.addr, align 4
  store i32 %y2, i32* %y2.addr, align 4
  store double %xr, double* %xr.addr, align 8
  store double %yr, double* %yr.addr, align 8
  store i32 %tile_width, i32* %tile_width.addr, align 4
  store i32 %tile_height, i32* %tile_height.addr, align 4
  store i32* %row, i32** %row.addr, align 8
  store i32* %col, i32** %col.addr, align 8
  store i32 %bytes, i32* %bytes.addr, align 4
  store double %inten, double* %inten.addr, align 8
  store i8* %color, i8** %color.addr, align 8
  store i8* %dest_buf, i8** %dest_buf.addr, align 8
  %0 = load double, double* %xr.addr, align 8
  %conv = fptosi double %0 to i32
  store i32 %conv, i32* %x, align 4
  %1 = load double, double* %yr.addr, align 8
  %conv1 = fptosi double %1 to i32
  store i32 %conv1, i32* %y, align 4
  %2 = load i32, i32* %x, align 4
  %3 = load i32, i32* %x1.addr, align 4
  %cmp = icmp sge i32 %2, %3
  br i1 %cmp, label %land.lhs.true, label %if.end.106

land.lhs.true:                                    ; preds = %entry
  %4 = load i32, i32* %y, align 4
  %5 = load i32, i32* %y1.addr, align 4
  %cmp3 = icmp sge i32 %4, %5
  br i1 %cmp3, label %land.lhs.true.5, label %if.end.106

land.lhs.true.5:                                  ; preds = %land.lhs.true
  %6 = load i32, i32* %x, align 4
  %7 = load i32, i32* %x2.addr, align 4
  %cmp6 = icmp slt i32 %6, %7
  br i1 %cmp6, label %land.lhs.true.8, label %if.end.106

land.lhs.true.8:                                  ; preds = %land.lhs.true.5
  %8 = load i32, i32* %y, align 4
  %9 = load i32, i32* %y2.addr, align 4
  %cmp9 = icmp slt i32 %8, %9
  br i1 %cmp9, label %if.then, label %if.end.106

if.then:                                          ; preds = %land.lhs.true.8
  %10 = load i8*, i8** %dest_buf.addr, align 8
  %tobool = icmp ne i8* %10, null
  br i1 %tobool, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %if.then
  %11 = load i8*, i8** %dest_buf.addr, align 8
  %12 = load i32, i32* %y, align 4
  %13 = load i32, i32* %y1.addr, align 4
  %sub = sub nsw i32 %12, %13
  %14 = load i32, i32* %x2.addr, align 4
  %15 = load i32, i32* %x1.addr, align 4
  %sub12 = sub nsw i32 %14, %15
  %mul = mul nsw i32 %sub, %sub12
  %16 = load i32, i32* %x, align 4
  %17 = load i32, i32* %x1.addr, align 4
  %sub13 = sub nsw i32 %16, %17
  %add = add nsw i32 %mul, %sub13
  %18 = load i32, i32* %bytes.addr, align 4
  %mul14 = mul nsw i32 %add, %18
  %idx.ext = sext i32 %mul14 to i64
  %add.ptr = getelementptr inbounds i8, i8* %11, i64 %idx.ext
  store i8* %add.ptr, i8** %pixel, align 8
  br label %if.end.30

if.else:                                          ; preds = %if.then
  %19 = load i32, i32* %x, align 4
  %20 = load i32, i32* %tile_width.addr, align 4
  %div = sdiv i32 %19, %20
  store i32 %div, i32* %newcol, align 4
  %21 = load i32, i32* %x, align 4
  %22 = load i32, i32* %tile_width.addr, align 4
  %rem = srem i32 %21, %22
  store i32 %rem, i32* %newcoloff, align 4
  %23 = load i32, i32* %y, align 4
  %24 = load i32, i32* %tile_height.addr, align 4
  %div15 = sdiv i32 %23, %24
  store i32 %div15, i32* %newrow, align 4
  %25 = load i32, i32* %y, align 4
  %26 = load i32, i32* %tile_height.addr, align 4
  %rem16 = srem i32 %25, %26
  store i32 %rem16, i32* %newrowoff, align 4
  %27 = load i32, i32* %newcol, align 4
  %28 = load i32*, i32** %col.addr, align 8
  %29 = load i32, i32* %28, align 4
  %cmp17 = icmp ne i32 %27, %29
  br i1 %cmp17, label %if.then.21, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %30 = load i32, i32* %newrow, align 4
  %31 = load i32*, i32** %row.addr, align 8
  %32 = load i32, i32* %31, align 4
  %cmp19 = icmp ne i32 %30, %32
  br i1 %cmp19, label %if.then.21, label %if.end.24

if.then.21:                                       ; preds = %lor.lhs.false, %if.else
  %33 = load i32, i32* %newcol, align 4
  %34 = load i32*, i32** %col.addr, align 8
  store i32 %33, i32* %34, align 4
  %35 = load i32, i32* %newrow, align 4
  %36 = load i32*, i32** %row.addr, align 8
  store i32 %35, i32* %36, align 4
  %37 = load %struct._GimpTile*, %struct._GimpTile** %tile.addr, align 8
  %tobool22 = icmp ne %struct._GimpTile* %37, null
  br i1 %tobool22, label %if.then.23, label %if.end

if.then.23:                                       ; preds = %if.then.21
  %38 = load %struct._GimpTile*, %struct._GimpTile** %tile.addr, align 8
  call void @gimp_tile_unref(%struct._GimpTile* %38, i32 1)
  br label %if.end

if.end:                                           ; preds = %if.then.23, %if.then.21
  %39 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %40 = load i32*, i32** %row.addr, align 8
  %41 = load i32, i32* %40, align 4
  %42 = load i32*, i32** %col.addr, align 8
  %43 = load i32, i32* %42, align 4
  %call = call %struct._GimpTile* @gimp_drawable_get_tile(%struct._GimpDrawable* %39, i32 1, i32 %41, i32 %43)
  store %struct._GimpTile* %call, %struct._GimpTile** %tile.addr, align 8
  %44 = load %struct._GimpTile*, %struct._GimpTile** %tile.addr, align 8
  call void @gimp_tile_ref(%struct._GimpTile* %44)
  br label %if.end.24

if.end.24:                                        ; preds = %if.end, %lor.lhs.false
  %45 = load %struct._GimpTile*, %struct._GimpTile** %tile.addr, align 8
  %data = getelementptr inbounds %struct._GimpTile, %struct._GimpTile* %45, i32 0, i32 6
  %46 = load i8*, i8** %data, align 8
  %47 = load %struct._GimpTile*, %struct._GimpTile** %tile.addr, align 8
  %bpp = getelementptr inbounds %struct._GimpTile, %struct._GimpTile* %47, i32 0, i32 2
  %48 = load i32, i32* %bpp, align 4
  %49 = load %struct._GimpTile*, %struct._GimpTile** %tile.addr, align 8
  %ewidth = getelementptr inbounds %struct._GimpTile, %struct._GimpTile* %49, i32 0, i32 0
  %50 = load i32, i32* %ewidth, align 4
  %51 = load i32, i32* %newrowoff, align 4
  %mul25 = mul i32 %50, %51
  %52 = load i32, i32* %newcoloff, align 4
  %add26 = add i32 %mul25, %52
  %mul27 = mul i32 %48, %add26
  %idx.ext28 = zext i32 %mul27 to i64
  %add.ptr29 = getelementptr inbounds i8, i8* %46, i64 %idx.ext28
  store i8* %add.ptr29, i8** %pixel, align 8
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.24, %if.then.11
  %53 = load double, double* %xr.addr, align 8
  %54 = load i32, i32* %x, align 4
  %conv31 = sitofp i32 %54 to double
  %sub32 = fsub double %53, %conv31
  store double %sub32, double* %dx, align 8
  %55 = load double, double* %yr.addr, align 8
  %56 = load i32, i32* %y, align 4
  %conv33 = sitofp i32 %56 to double
  %sub34 = fsub double %55, %conv33
  store double %sub34, double* %dy, align 8
  %57 = load double, double* %dx, align 8
  %58 = load double, double* %dx, align 8
  %mul35 = fmul double %57, %58
  %59 = load double, double* %dy, align 8
  %60 = load double, double* %dy, align 8
  %mul36 = fmul double %59, %60
  %add37 = fadd double %mul35, %mul36
  store double %add37, double* %rs, align 8
  %61 = load double, double* %inten.addr, align 8
  %62 = load double, double* %rs, align 8
  %sub38 = fsub double -0.000000e+00, %62
  %div39 = fdiv double %sub38, 2.000000e+00
  %call40 = call double @exp(double %div39) #4
  %mul41 = fmul double %61, %call40
  store double %mul41, double* %val, align 8
  store i32 0, i32* %b, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.30
  %63 = load i32, i32* %b, align 4
  %64 = load i32, i32* %bytes.addr, align 4
  %cmp42 = icmp slt i32 %63, %64
  br i1 %cmp42, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %65 = load i32, i32* getelementptr inbounds (%struct.SparkleVals, %struct.SparkleVals* @svals, i32 0, i32 10), align 4
  %tobool44 = icmp ne i32 %65, 0
  br i1 %tobool44, label %if.then.45, label %if.else.49

if.then.45:                                       ; preds = %for.body
  %66 = load i32, i32* %b, align 4
  %idxprom = sext i32 %66 to i64
  %67 = load i8*, i8** %pixel, align 8
  %arrayidx = getelementptr inbounds i8, i8* %67, i64 %idxprom
  %68 = load i8, i8* %arrayidx, align 1
  %conv46 = zext i8 %68 to i32
  %sub47 = sub nsw i32 255, %conv46
  %conv48 = sitofp i32 %sub47 to double
  store double %conv48, double* %new, align 8
  br label %if.end.53

if.else.49:                                       ; preds = %for.body
  %69 = load i32, i32* %b, align 4
  %idxprom50 = sext i32 %69 to i64
  %70 = load i8*, i8** %pixel, align 8
  %arrayidx51 = getelementptr inbounds i8, i8* %70, i64 %idxprom50
  %71 = load i8, i8* %arrayidx51, align 1
  %conv52 = uitofp i8 %71 to double
  store double %conv52, double* %new, align 8
  br label %if.end.53

if.end.53:                                        ; preds = %if.else.49, %if.then.45
  %72 = load i32, i32* getelementptr inbounds (%struct.SparkleVals, %struct.SparkleVals* @svals, i32 0, i32 9), align 4
  %tobool54 = icmp ne i32 %72, 0
  br i1 %tobool54, label %if.then.55, label %if.end.81

if.then.55:                                       ; preds = %if.end.53
  %73 = load double, double* %new, align 8
  %74 = load i32, i32* %b, align 4
  %idxprom56 = sext i32 %74 to i64
  %75 = load i8*, i8** %color.addr, align 8
  %arrayidx57 = getelementptr inbounds i8, i8* %75, i64 %idxprom56
  %76 = load i8, i8* %arrayidx57, align 1
  %conv58 = zext i8 %76 to i32
  %conv59 = sitofp i32 %conv58 to double
  %cmp60 = fcmp olt double %73, %conv59
  br i1 %cmp60, label %if.then.62, label %if.else.67

if.then.62:                                       ; preds = %if.then.55
  %77 = load double, double* %val, align 8
  %78 = load double, double* getelementptr inbounds (%struct.SparkleVals, %struct.SparkleVals* @svals, i32 0, i32 6), align 8
  %sub63 = fsub double 1.000000e+00, %78
  %mul64 = fmul double %77, %sub63
  %sub65 = fsub double 1.000000e+00, %mul64
  %79 = load double, double* %new, align 8
  %mul66 = fmul double %79, %sub65
  store double %mul66, double* %new, align 8
  br label %if.end.80

if.else.67:                                       ; preds = %if.then.55
  %80 = load double, double* %val, align 8
  %81 = load i32, i32* %b, align 4
  %idxprom68 = sext i32 %81 to i64
  %82 = load i8*, i8** %color.addr, align 8
  %arrayidx69 = getelementptr inbounds i8, i8* %82, i64 %idxprom68
  %83 = load i8, i8* %arrayidx69, align 1
  %conv70 = zext i8 %83 to i32
  %conv71 = sitofp i32 %conv70 to double
  %mul72 = fmul double %80, %conv71
  %84 = load double, double* getelementptr inbounds (%struct.SparkleVals, %struct.SparkleVals* @svals, i32 0, i32 6), align 8
  %sub73 = fsub double 1.000000e+00, %84
  %mul74 = fmul double %mul72, %sub73
  %85 = load double, double* %new, align 8
  %sub75 = fsub double %85, %mul74
  store double %sub75, double* %new, align 8
  %86 = load double, double* %new, align 8
  %cmp76 = fcmp olt double %86, 0.000000e+00
  br i1 %cmp76, label %if.then.78, label %if.end.79

if.then.78:                                       ; preds = %if.else.67
  store double 0.000000e+00, double* %new, align 8
  br label %if.end.79

if.end.79:                                        ; preds = %if.then.78, %if.else.67
  br label %if.end.80

if.end.80:                                        ; preds = %if.end.79, %if.then.62
  br label %if.end.81

if.end.81:                                        ; preds = %if.end.80, %if.end.53
  %87 = load double, double* %val, align 8
  %88 = load double, double* getelementptr inbounds (%struct.SparkleVals, %struct.SparkleVals* @svals, i32 0, i32 6), align 8
  %mul82 = fmul double %87, %88
  %sub83 = fsub double 1.000000e+00, %mul82
  %89 = load double, double* %new, align 8
  %mul84 = fmul double %89, %sub83
  store double %mul84, double* %new, align 8
  %90 = load double, double* %val, align 8
  %91 = load i32, i32* %b, align 4
  %idxprom85 = sext i32 %91 to i64
  %92 = load i8*, i8** %color.addr, align 8
  %arrayidx86 = getelementptr inbounds i8, i8* %92, i64 %idxprom85
  %93 = load i8, i8* %arrayidx86, align 1
  %conv87 = zext i8 %93 to i32
  %conv88 = sitofp i32 %conv87 to double
  %mul89 = fmul double %90, %conv88
  %94 = load double, double* %new, align 8
  %add90 = fadd double %94, %mul89
  store double %add90, double* %new, align 8
  %95 = load double, double* %new, align 8
  %cmp91 = fcmp ogt double %95, 2.550000e+02
  br i1 %cmp91, label %if.then.93, label %if.end.94

if.then.93:                                       ; preds = %if.end.81
  store double 2.550000e+02, double* %new, align 8
  br label %if.end.94

if.end.94:                                        ; preds = %if.then.93, %if.end.81
  %96 = load i32, i32* getelementptr inbounds (%struct.SparkleVals, %struct.SparkleVals* @svals, i32 0, i32 10), align 4
  %tobool95 = icmp ne i32 %96, 0
  br i1 %tobool95, label %if.then.96, label %if.else.101

if.then.96:                                       ; preds = %if.end.94
  %97 = load double, double* %new, align 8
  %sub97 = fsub double 2.550000e+02, %97
  %conv98 = fptoui double %sub97 to i8
  %98 = load i32, i32* %b, align 4
  %idxprom99 = sext i32 %98 to i64
  %99 = load i8*, i8** %pixel, align 8
  %arrayidx100 = getelementptr inbounds i8, i8* %99, i64 %idxprom99
  store i8 %conv98, i8* %arrayidx100, align 1
  br label %if.end.105

if.else.101:                                      ; preds = %if.end.94
  %100 = load double, double* %new, align 8
  %conv102 = fptoui double %100 to i8
  %101 = load i32, i32* %b, align 4
  %idxprom103 = sext i32 %101 to i64
  %102 = load i8*, i8** %pixel, align 8
  %arrayidx104 = getelementptr inbounds i8, i8* %102, i64 %idxprom103
  store i8 %conv102, i8* %arrayidx104, align 1
  br label %if.end.105

if.end.105:                                       ; preds = %if.else.101, %if.then.96
  br label %for.inc

for.inc:                                          ; preds = %if.end.105
  %103 = load i32, i32* %b, align 4
  %inc = add nsw i32 %103, 1
  store i32 %inc, i32* %b, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.106

if.end.106:                                       ; preds = %for.end, %land.lhs.true.8, %land.lhs.true.5, %land.lhs.true, %entry
  %104 = load %struct._GimpTile*, %struct._GimpTile** %tile.addr, align 8
  ret %struct._GimpTile* %104
}

declare void @gimp_tile_unref(%struct._GimpTile*, i32) #1

declare %struct._GimpTile* @gimp_drawable_get_tile(%struct._GimpDrawable*, i32, i32, i32) #1

declare void @gimp_tile_ref(%struct._GimpTile*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
