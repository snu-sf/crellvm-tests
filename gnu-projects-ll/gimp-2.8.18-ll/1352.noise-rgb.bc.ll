; ModuleID = './plug-ins/common/noise-rgb.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpPlugInInfo = type { void ()*, void ()*, void ()*, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* }
%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpParamDef = type { i32, i8*, i8* }
%struct._GRand = type opaque
%struct.NoisifyVals = type { i32, i32, [4 x double] }
%struct.NoisifyInterface = type { i32, [4 x %struct._GtkObject*] }
%struct._GtkObject = type { %struct._GObject, i32 }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GimpDrawable = type { i32, i32, i32, i32, i32, i32, %struct._GimpTile*, %struct._GimpTile* }
%struct._GimpTile = type { i32, i32, i32, i32, i16, i8, i8*, %struct._GimpDrawable* }
%struct._GtkWidget = type { %struct._GtkObject, i16, i8, i8, i8*, %struct._GtkStyle*, %struct._GtkRequisition, %struct._GdkRectangle, %struct._GdkDrawable*, %struct._GtkWidget* }
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
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GtkToggleButton = type { %struct._GtkButton, i8 }
%struct._GtkButton = type { %struct._GtkBin, %struct._GdkDrawable*, i8*, i32, i16 }
%struct._GtkTable = type { %struct._GtkContainer, %struct._GList*, %struct._GtkTableRowCol*, %struct._GtkTableRowCol*, i16, i16, i16, i16, i8 }
%struct._GtkTableRowCol = type { i16, i16, i16, i8 }
%struct._GimpDialog = type { %struct._GtkDialog }
%struct._GimpPreview = type { %struct._GtkBox, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GdkCursor*, %struct._GdkCursor*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GdkCursor = type { i32, i32 }
%struct._GimpPixelRgn = type { i8*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32, i8, i32 }
%struct._GimpDrawablePreview = type { %struct._GimpScrolledPreview, %struct._GimpDrawable* }
%struct._GimpScrolledPreview = type { %struct._GimpPreview, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GdkCursor*, i8*, i8* }
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }

@PLUG_IN_INFO = constant %struct._GimpPlugInInfo { void ()* null, void ()* null, void ()* @query, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* @run }, align 8
@query.scatter_args = internal constant [9 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i32 0, i32 0) }, %struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.9, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.11, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.15, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.17, i32 0, i32 0) }], align 16
@.str = private unnamed_addr constant [9 x i8] c"run-mode\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"The run mode { RUN-INTERACTIVE (0), RUN-NONINTERACTIVE (1) }\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Input image (unused)\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"drawable\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"Input drawable\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"independent\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"Noise in channels independent\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"correlated\00", align 1
@.str.9 = private unnamed_addr constant [52 x i8] c"Noise correlated (i.e. multiplicative not additive)\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"noise-1\00", align 1
@.str.11 = private unnamed_addr constant [39 x i8] c"Noise in the first channel (red, gray)\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"noise-2\00", align 1
@.str.13 = private unnamed_addr constant [48 x i8] c"Noise in the second channel (green, gray_alpha)\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"noise-3\00", align 1
@.str.15 = private unnamed_addr constant [34 x i8] c"Noise in the third channel (blue)\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"noise-4\00", align 1
@.str.17 = private unnamed_addr constant [36 x i8] c"Noise in the fourth channel (alpha)\00", align 1
@query.noisify_args = internal constant [8 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i32 0, i32 0) }, %struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.11, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.15, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.17, i32 0, i32 0) }], align 16
@.str.18 = private unnamed_addr constant [18 x i8] c"plug-in-rgb-noise\00", align 1
@.str.19 = private unnamed_addr constant [33 x i8] c"Distort colors by random amounts\00", align 1
@.str.20 = private unnamed_addr constant [246 x i8] c"Add normally distributed (zero mean) random values to image channels.  Noise may be additive (uncorrelated) or multiplicative (correlated - also known as speckle noise). For colour images colour channels may be treated together or independently.\00", align 1
@.str.21 = private unnamed_addr constant [18 x i8] c"Torsten Martinsen\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"May 2000\00", align 1
@.str.23 = private unnamed_addr constant [14 x i8] c"_RGB Noise...\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"RGB*, GRAY*\00", align 1
@.str.25 = private unnamed_addr constant [22 x i8] c"<Image>/Filters/Noise\00", align 1
@.str.26 = private unnamed_addr constant [16 x i8] c"plug-in-noisify\00", align 1
@.str.27 = private unnamed_addr constant [37 x i8] c"Adds random noise to image channels \00", align 1
@.str.28 = private unnamed_addr constant [138 x i8] c"Add normally distributed random values to image channels. For colour images each colour channel may be treated together or independently.\00", align 1
@run.values = internal global [1 x %struct._GimpParam] zeroinitializer, align 16
@.str.29 = private unnamed_addr constant [20 x i8] c"gimp20-std-plug-ins\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@noise_gr = internal global %struct._GRand* null, align 8
@nvals = internal global %struct.NoisifyVals { i32 1, i32 0, [4 x double] [double 2.000000e-01, double 2.000000e-01, double 2.000000e-01, double 0.000000e+00] }, align 8
@.str.31 = private unnamed_addr constant [13 x i8] c"Adding noise\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"noise-rgb\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"RGB Noise\00", align 1
@.str.34 = private unnamed_addr constant [15 x i8] c"gimp-noise-rgb\00", align 1
@.str.35 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"gtk-ok\00", align 1
@.str.37 = private unnamed_addr constant [12 x i8] c"invalidated\00", align 1
@.str.38 = private unnamed_addr constant [18 x i8] c"Co_rrelated noise\00", align 1
@.str.39 = private unnamed_addr constant [8 x i8] c"toggled\00", align 1
@.str.40 = private unnamed_addr constant [17 x i8] c"_Independent RGB\00", align 1
@noise_int = internal global %struct.NoisifyInterface zeroinitializer, align 8
@.str.41 = private unnamed_addr constant [7 x i8] c"_Gray:\00", align 1
@.str.42 = private unnamed_addr constant [8 x i8] c"_Alpha:\00", align 1
@.str.43 = private unnamed_addr constant [6 x i8] c"_Red:\00", align 1
@.str.44 = private unnamed_addr constant [8 x i8] c"_Green:\00", align 1
@.str.45 = private unnamed_addr constant [7 x i8] c"_Blue:\00", align 1
@.str.46 = private unnamed_addr constant [13 x i8] c"Channel #%d:\00", align 1
@.str.47 = private unnamed_addr constant [14 x i8] c"value-changed\00", align 1

; Function Attrs: nounwind uwtable
define internal void @query() #0 {
entry:
  call void @gimp_install_procedure(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([246 x i8], [246 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i32 0, i32 0), i32 1, i32 9, i32 0, %struct._GimpParamDef* getelementptr inbounds ([9 x %struct._GimpParamDef], [9 x %struct._GimpParamDef]* @query.scatter_args, i32 0, i32 0), %struct._GimpParamDef* null)
  %call = call i32 @gimp_plugin_menu_register(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.25, i32 0, i32 0))
  call void @gimp_install_procedure(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([138 x i8], [138 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i32 0, i32 0), i32 1, i32 8, i32 0, %struct._GimpParamDef* getelementptr inbounds ([8 x %struct._GimpParamDef], [8 x %struct._GimpParamDef]* @query.noisify_args, i32 0, i32 0), %struct._GimpParamDef* null)
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
  %status = alloca i32, align 4
  %run_mode = alloca i32, align 4
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
  %call = call i8* @gimp_locale_directory() #5
  %call1 = call i8* @bindtextdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.29, i32 0, i32 0), i8* %call) #6
  %call2 = call i8* @bind_textdomain_codeset(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i32 0, i32 0)) #6
  %call3 = call i8* @textdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.29, i32 0, i32 0)) #6
  br label %do.end

do.end:                                           ; preds = %do.body
  %2 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 1, i32* %2, align 4
  %3 = load %struct._GimpParam**, %struct._GimpParam*** %return_vals.addr, align 8
  store %struct._GimpParam* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i32 0), %struct._GimpParam** %3, align 8
  store i32 21, i32* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 0), align 4
  %4 = load i32, i32* %status, align 4
  store i32 %4, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  %call4 = call %struct._GRand* @g_rand_new()
  store %struct._GRand* %call4, %struct._GRand** @noise_gr, align 8
  %5 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx5 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %5, i64 2
  %data6 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx5, i32 0, i32 1
  %d_drawable = bitcast %union._GimpParamData* %data6 to i32*
  %6 = load i32, i32* %d_drawable, align 4
  %call7 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %6)
  store %struct._GimpDrawable* %call7, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_tile_cache_ntiles(i64 16)
  %7 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %7, i32 0, i32 0
  %8 = load i32, i32* %drawable_id, align 4
  %call8 = call i32 @gimp_drawable_is_gray(i32 %8)
  %tobool = icmp ne i32 %call8, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  store double 0.000000e+00, double* getelementptr inbounds (%struct.NoisifyVals, %struct.NoisifyVals* @nvals, i32 0, i32 2, i64 1), align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %do.end
  %9 = load i32, i32* %run_mode, align 4
  switch i32 %9, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.14
    i32 2, label %sw.bb.68
  ]

sw.bb:                                            ; preds = %if.end
  %call9 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i32 0, i32 0), i8* bitcast (%struct.NoisifyVals* @nvals to i8*))
  %10 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %11 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %bpp = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %11, i32 0, i32 3
  %12 = load i32, i32* %bpp, align 4
  %call10 = call i32 @noisify_dialog(%struct._GimpDrawable* %10, i32 %12)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.end.13, label %if.then.12

if.then.12:                                       ; preds = %sw.bb
  %13 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %13)
  %14 = load %struct._GRand*, %struct._GRand** @noise_gr, align 8
  call void @g_rand_free(%struct._GRand* %14)
  br label %return

if.end.13:                                        ; preds = %sw.bb
  br label %sw.epilog

sw.bb.14:                                         ; preds = %if.end
  %15 = load i8*, i8** %name.addr, align 8
  %call15 = call i32 @strcmp(i8* %15, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.26, i32 0, i32 0)) #7
  %cmp = icmp eq i32 %call15, 0
  br i1 %cmp, label %if.then.16, label %if.else.35

if.then.16:                                       ; preds = %sw.bb.14
  %16 = load i32, i32* %nparams.addr, align 4
  %cmp17 = icmp ne i32 %16, 8
  br i1 %cmp17, label %if.then.18, label %if.else

if.then.18:                                       ; preds = %if.then.16
  store i32 1, i32* %status, align 4
  br label %if.end.34

if.else:                                          ; preds = %if.then.16
  %17 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx19 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %17, i64 3
  %data20 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx19, i32 0, i32 1
  %d_int3221 = bitcast %union._GimpParamData* %data20 to i32*
  %18 = load i32, i32* %d_int3221, align 4
  %tobool22 = icmp ne i32 %18, 0
  %cond = select i1 %tobool22, i32 1, i32 0
  store i32 %cond, i32* getelementptr inbounds (%struct.NoisifyVals, %struct.NoisifyVals* @nvals, i32 0, i32 0), align 4
  store i32 0, i32* getelementptr inbounds (%struct.NoisifyVals, %struct.NoisifyVals* @nvals, i32 0, i32 1), align 4
  %19 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx23 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %19, i64 4
  %data24 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx23, i32 0, i32 1
  %d_float = bitcast %union._GimpParamData* %data24 to double*
  %20 = load double, double* %d_float, align 8
  store double %20, double* getelementptr inbounds (%struct.NoisifyVals, %struct.NoisifyVals* @nvals, i32 0, i32 2, i64 0), align 8
  %21 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx25 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %21, i64 5
  %data26 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx25, i32 0, i32 1
  %d_float27 = bitcast %union._GimpParamData* %data26 to double*
  %22 = load double, double* %d_float27, align 8
  store double %22, double* getelementptr inbounds (%struct.NoisifyVals, %struct.NoisifyVals* @nvals, i32 0, i32 2, i64 1), align 8
  %23 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx28 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %23, i64 6
  %data29 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx28, i32 0, i32 1
  %d_float30 = bitcast %union._GimpParamData* %data29 to double*
  %24 = load double, double* %d_float30, align 8
  store double %24, double* getelementptr inbounds (%struct.NoisifyVals, %struct.NoisifyVals* @nvals, i32 0, i32 2, i64 2), align 8
  %25 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx31 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %25, i64 7
  %data32 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx31, i32 0, i32 1
  %d_float33 = bitcast %union._GimpParamData* %data32 to double*
  %26 = load double, double* %d_float33, align 8
  store double %26, double* getelementptr inbounds (%struct.NoisifyVals, %struct.NoisifyVals* @nvals, i32 0, i32 2, i64 3), align 8
  br label %if.end.34

if.end.34:                                        ; preds = %if.else, %if.then.18
  br label %if.end.67

if.else.35:                                       ; preds = %sw.bb.14
  %27 = load i8*, i8** %name.addr, align 8
  %call36 = call i32 @strcmp(i8* %27, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i32 0, i32 0)) #7
  %cmp37 = icmp eq i32 %call36, 0
  br i1 %cmp37, label %if.then.38, label %if.else.65

if.then.38:                                       ; preds = %if.else.35
  %28 = load i32, i32* %nparams.addr, align 4
  %cmp39 = icmp ne i32 %28, 9
  br i1 %cmp39, label %if.then.40, label %if.else.41

if.then.40:                                       ; preds = %if.then.38
  store i32 1, i32* %status, align 4
  br label %if.end.64

if.else.41:                                       ; preds = %if.then.38
  %29 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx42 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %29, i64 3
  %data43 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx42, i32 0, i32 1
  %d_int3244 = bitcast %union._GimpParamData* %data43 to i32*
  %30 = load i32, i32* %d_int3244, align 4
  %tobool45 = icmp ne i32 %30, 0
  %cond46 = select i1 %tobool45, i32 1, i32 0
  store i32 %cond46, i32* getelementptr inbounds (%struct.NoisifyVals, %struct.NoisifyVals* @nvals, i32 0, i32 0), align 4
  %31 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx47 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %31, i64 4
  %data48 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx47, i32 0, i32 1
  %d_int3249 = bitcast %union._GimpParamData* %data48 to i32*
  %32 = load i32, i32* %d_int3249, align 4
  %tobool50 = icmp ne i32 %32, 0
  %cond51 = select i1 %tobool50, i32 1, i32 0
  store i32 %cond51, i32* getelementptr inbounds (%struct.NoisifyVals, %struct.NoisifyVals* @nvals, i32 0, i32 1), align 4
  %33 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx52 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %33, i64 5
  %data53 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx52, i32 0, i32 1
  %d_float54 = bitcast %union._GimpParamData* %data53 to double*
  %34 = load double, double* %d_float54, align 8
  store double %34, double* getelementptr inbounds (%struct.NoisifyVals, %struct.NoisifyVals* @nvals, i32 0, i32 2, i64 0), align 8
  %35 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx55 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %35, i64 6
  %data56 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx55, i32 0, i32 1
  %d_float57 = bitcast %union._GimpParamData* %data56 to double*
  %36 = load double, double* %d_float57, align 8
  store double %36, double* getelementptr inbounds (%struct.NoisifyVals, %struct.NoisifyVals* @nvals, i32 0, i32 2, i64 1), align 8
  %37 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx58 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %37, i64 7
  %data59 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx58, i32 0, i32 1
  %d_float60 = bitcast %union._GimpParamData* %data59 to double*
  %38 = load double, double* %d_float60, align 8
  store double %38, double* getelementptr inbounds (%struct.NoisifyVals, %struct.NoisifyVals* @nvals, i32 0, i32 2, i64 2), align 8
  %39 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx61 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %39, i64 8
  %data62 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx61, i32 0, i32 1
  %d_float63 = bitcast %union._GimpParamData* %data62 to double*
  %40 = load double, double* %d_float63, align 8
  store double %40, double* getelementptr inbounds (%struct.NoisifyVals, %struct.NoisifyVals* @nvals, i32 0, i32 2, i64 3), align 8
  br label %if.end.64

if.end.64:                                        ; preds = %if.else.41, %if.then.40
  br label %if.end.66

if.else.65:                                       ; preds = %if.else.35
  store i32 1, i32* %status, align 4
  br label %if.end.66

if.end.66:                                        ; preds = %if.else.65, %if.end.64
  br label %if.end.67

if.end.67:                                        ; preds = %if.end.66, %if.end.34
  br label %sw.epilog

sw.bb.68:                                         ; preds = %if.end
  %call69 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i32 0, i32 0), i8* bitcast (%struct.NoisifyVals* @nvals to i8*))
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.68, %if.end.67, %if.end.13
  %41 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id70 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %41, i32 0, i32 0
  %42 = load i32, i32* %drawable_id70, align 4
  %call71 = call i32 @gimp_drawable_is_indexed(i32 %42)
  %tobool72 = icmp ne i32 %call71, 0
  br i1 %tobool72, label %if.then.73, label %if.end.74

if.then.73:                                       ; preds = %sw.epilog
  store i32 0, i32* %status, align 4
  br label %if.end.74

if.end.74:                                        ; preds = %if.then.73, %sw.epilog
  %43 = load i32, i32* %status, align 4
  %cmp75 = icmp eq i32 %43, 3
  br i1 %cmp75, label %if.then.76, label %if.else.87

if.then.76:                                       ; preds = %if.end.74
  %call77 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.31, i32 0, i32 0)) #6
  %call78 = call i32 @gimp_progress_init(i8* %call77)
  %44 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %45 = load %struct._GRand*, %struct._GRand** @noise_gr, align 8
  %46 = bitcast %struct._GRand* %45 to i8*
  call void @gimp_rgn_iterate2(%struct._GimpDrawable* %44, i32 0, void (i8*, i8*, i32, i8*)* @noisify_func, i8* %46)
  %47 = load i32, i32* %run_mode, align 4
  %cmp79 = icmp ne i32 %47, 1
  br i1 %cmp79, label %if.then.80, label %if.end.82

if.then.80:                                       ; preds = %if.then.76
  %call81 = call i32 @gimp_displays_flush()
  br label %if.end.82

if.end.82:                                        ; preds = %if.then.80, %if.then.76
  %48 = load i32, i32* %run_mode, align 4
  %cmp83 = icmp eq i32 %48, 0
  br i1 %cmp83, label %if.then.84, label %if.end.86

if.then.84:                                       ; preds = %if.end.82
  %call85 = call i32 @gimp_procedural_db_set_data(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i32 0, i32 0), i8* bitcast (%struct.NoisifyVals* @nvals to i8*), i32 40)
  br label %if.end.86

if.end.86:                                        ; preds = %if.then.84, %if.end.82
  br label %if.end.88

if.else.87:                                       ; preds = %if.end.74
  store i32 0, i32* %status, align 4
  br label %if.end.88

if.end.88:                                        ; preds = %if.else.87, %if.end.86
  %49 = load i32, i32* %status, align 4
  store i32 %49, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  %50 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %50)
  %51 = load %struct._GRand*, %struct._GRand** @noise_gr, align 8
  call void @g_rand_free(%struct._GRand* %51)
  br label %return

return:                                           ; preds = %if.end.88, %if.then.12
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

declare %struct._GRand* @g_rand_new() #1

declare %struct._GimpDrawable* @gimp_drawable_get(i32) #1

declare void @gimp_tile_cache_ntiles(i64) #1

declare i32 @gimp_drawable_is_gray(i32) #1

declare i32 @gimp_procedural_db_get_data(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @noisify_dialog(%struct._GimpDrawable* %drawable, i32 %channels) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %channels.addr = alloca i32, align 4
  %dialog = alloca %struct._GtkWidget*, align 8
  %main_vbox = alloca %struct._GtkWidget*, align 8
  %vbox = alloca %struct._GtkWidget*, align 8
  %preview = alloca %struct._GtkWidget*, align 8
  %toggle = alloca %struct._GtkWidget*, align 8
  %table = alloca %struct._GtkWidget*, align 8
  %run = alloca i32, align 4
  %buffer = alloca i8*, align 8
  %i = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store i32 %channels, i32* %channels.addr, align 4
  call void @gimp_ui_init(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i32 0, i32 0), i32 0)
  %call = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i32 0, i32 0)) #6
  %call1 = call %struct._GtkWidget* (i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) @gimp_dialog_new(i8* %call, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.34, i32 0, i32 0), %struct._GtkWidget* null, i32 0, void (i8*, i8*)* @gimp_standard_help_func, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.35, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i32 0, i32 0), i32 -5, i8* null)
  store %struct._GtkWidget* %call1, %struct._GtkWidget** %dialog, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_dialog_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call2)
  %2 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkDialog*
  call void (%struct._GtkDialog*, i32, ...) @gtk_dialog_set_alternative_button_order(%struct._GtkDialog* %2, i32 -5, i32 -6, i32 -1)
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_window_get_type() #5
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call4)
  %5 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkWindow*
  call void @gimp_window_set_transient(%struct._GtkWindow* %5)
  %call6 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 12)
  store %struct._GtkWidget* %call6, %struct._GtkWidget** %main_vbox, align 8
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %7 = bitcast %struct._GtkWidget* %6 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_container_get_type() #5
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call7)
  %8 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %8, i32 12)
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %10 = bitcast %struct._GtkWidget* %9 to %struct._GTypeInstance*
  %call9 = call i64 @gtk_dialog_get_type() #5
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call9)
  %11 = bitcast %struct._GTypeInstance* %call10 to %struct._GtkDialog*
  %call11 = call %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog* %11)
  %12 = bitcast %struct._GtkWidget* %call11 to %struct._GTypeInstance*
  %call12 = call i64 @gtk_box_get_type() #5
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
  %call15 = call i64 @gtk_box_get_type() #5
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call15)
  %19 = bitcast %struct._GTypeInstance* %call16 to %struct._GtkBox*
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %19, %struct._GtkWidget* %20, i32 0, i32 0, i32 0)
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %21)
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %23 = bitcast %struct._GtkWidget* %22 to i8*
  %call17 = call i64 @g_signal_connect_data(i8* %23, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.37, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @noisify to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %call18 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 6)
  store %struct._GtkWidget* %call18, %struct._GtkWidget** %vbox, align 8
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %25 = bitcast %struct._GtkWidget* %24 to %struct._GTypeInstance*
  %call19 = call i64 @gtk_box_get_type() #5
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call19)
  %26 = bitcast %struct._GTypeInstance* %call20 to %struct._GtkBox*
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %26, %struct._GtkWidget* %27, i32 0, i32 0, i32 0)
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %28)
  %call21 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.38, i32 0, i32 0)) #6
  %call22 = call %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8* %call21)
  store %struct._GtkWidget* %call22, %struct._GtkWidget** %toggle, align 8
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %30 = bitcast %struct._GtkWidget* %29 to %struct._GTypeInstance*
  %call23 = call i64 @gtk_toggle_button_get_type() #5
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call23)
  %31 = bitcast %struct._GTypeInstance* %call24 to %struct._GtkToggleButton*
  %32 = load i32, i32* getelementptr inbounds (%struct.NoisifyVals, %struct.NoisifyVals* @nvals, i32 0, i32 1), align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %31, i32 %32)
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %34 = bitcast %struct._GtkWidget* %33 to %struct._GTypeInstance*
  %call25 = call i64 @gtk_box_get_type() #5
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 %call25)
  %35 = bitcast %struct._GTypeInstance* %call26 to %struct._GtkBox*
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %35, %struct._GtkWidget* %36, i32 0, i32 0, i32 0)
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %37)
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %39 = bitcast %struct._GtkWidget* %38 to i8*
  %call27 = call i64 @g_signal_connect_data(i8* %39, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.39, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_toggle_button_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.NoisifyVals, %struct.NoisifyVals* @nvals, i32 0, i32 1) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %41 = bitcast %struct._GtkWidget* %40 to i8*
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %43 = bitcast %struct._GtkWidget* %42 to i8*
  %call28 = call i64 @g_signal_connect_data(i8* %41, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.39, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %43, void (i8*, %struct._GClosure*)* null, i32 2)
  %44 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %44, i32 0, i32 0
  %45 = load i32, i32* %drawable_id, align 4
  %call29 = call i32 @gimp_drawable_is_rgb(i32 %45)
  %tobool = icmp ne i32 %call29, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call30 = call i8* @gettext(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.40, i32 0, i32 0)) #6
  %call31 = call %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8* %call30)
  store %struct._GtkWidget* %call31, %struct._GtkWidget** %toggle, align 8
  %46 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %47 = bitcast %struct._GtkWidget* %46 to %struct._GTypeInstance*
  %call32 = call i64 @gtk_toggle_button_get_type() #5
  %call33 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %47, i64 %call32)
  %48 = bitcast %struct._GTypeInstance* %call33 to %struct._GtkToggleButton*
  %49 = load i32, i32* getelementptr inbounds (%struct.NoisifyVals, %struct.NoisifyVals* @nvals, i32 0, i32 0), align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %48, i32 %49)
  %50 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %51 = bitcast %struct._GtkWidget* %50 to %struct._GTypeInstance*
  %call34 = call i64 @gtk_box_get_type() #5
  %call35 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %51, i64 %call34)
  %52 = bitcast %struct._GTypeInstance* %call35 to %struct._GtkBox*
  %53 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %52, %struct._GtkWidget* %53, i32 0, i32 0, i32 0)
  %54 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %54)
  %55 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %56 = bitcast %struct._GtkWidget* %55 to i8*
  %call36 = call i64 @g_signal_connect_data(i8* %56, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.39, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_toggle_button_update to void ()*), i8* bitcast (%struct.NoisifyVals* @nvals to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %57 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %58 = bitcast %struct._GtkWidget* %57 to i8*
  %59 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %60 = bitcast %struct._GtkWidget* %59 to i8*
  %call37 = call i64 @g_signal_connect_data(i8* %58, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.39, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %60, void (i8*, %struct._GClosure*)* null, i32 2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %61 = load i32, i32* %channels.addr, align 4
  %call38 = call %struct._GtkWidget* @gtk_table_new(i32 %61, i32 3, i32 0)
  store %struct._GtkWidget* %call38, %struct._GtkWidget** %table, align 8
  %62 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %63 = bitcast %struct._GtkWidget* %62 to %struct._GTypeInstance*
  %call39 = call i64 @gtk_table_get_type() #5
  %call40 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %63, i64 %call39)
  %64 = bitcast %struct._GTypeInstance* %call40 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %64, i32 6)
  %65 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %66 = bitcast %struct._GtkWidget* %65 to %struct._GTypeInstance*
  %call41 = call i64 @gtk_table_get_type() #5
  %call42 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %66, i64 %call41)
  %67 = bitcast %struct._GTypeInstance* %call42 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %67, i32 6)
  %68 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %69 = bitcast %struct._GtkWidget* %68 to %struct._GTypeInstance*
  %call43 = call i64 @gtk_box_get_type() #5
  %call44 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %69, i64 %call43)
  %70 = bitcast %struct._GTypeInstance* %call44 to %struct._GtkBox*
  %71 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %70, %struct._GtkWidget* %71, i32 1, i32 1, i32 0)
  %72 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %72)
  %73 = load i32, i32* %channels.addr, align 4
  store i32 %73, i32* getelementptr inbounds (%struct.NoisifyInterface, %struct.NoisifyInterface* @noise_int, i32 0, i32 0), align 4
  %74 = load i32, i32* %channels.addr, align 4
  %cmp = icmp eq i32 %74, 1
  br i1 %cmp, label %if.then.45, label %if.else

if.then.45:                                       ; preds = %if.end
  %75 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %call46 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.41, i32 0, i32 0)) #6
  %76 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %77 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  call void @noisify_add_channel(%struct._GtkWidget* %75, i32 0, i8* %call46, %struct._GimpDrawable* %76, %struct._GtkWidget* %77)
  br label %if.end.75

if.else:                                          ; preds = %if.end
  %78 = load i32, i32* %channels.addr, align 4
  %cmp47 = icmp eq i32 %78, 2
  br i1 %cmp47, label %if.then.48, label %if.else.53

if.then.48:                                       ; preds = %if.else
  %79 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %call49 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.41, i32 0, i32 0)) #6
  %80 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %81 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  call void @noisify_add_channel(%struct._GtkWidget* %79, i32 0, i8* %call49, %struct._GimpDrawable* %80, %struct._GtkWidget* %81)
  %82 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %call50 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.42, i32 0, i32 0)) #6
  %83 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %84 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  call void @noisify_add_alpha_channel(%struct._GtkWidget* %82, i32 1, i8* %call50, %struct._GimpDrawable* %83, %struct._GtkWidget* %84)
  %85 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %86 = bitcast %struct._GtkWidget* %85 to %struct._GTypeInstance*
  %call51 = call i64 @gtk_table_get_type() #5
  %call52 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %86, i64 %call51)
  %87 = bitcast %struct._GTypeInstance* %call52 to %struct._GtkTable*
  call void @gtk_table_set_row_spacing(%struct._GtkTable* %87, i32 1, i32 15)
  br label %if.end.74

if.else.53:                                       ; preds = %if.else
  %88 = load i32, i32* %channels.addr, align 4
  %cmp54 = icmp eq i32 %88, 3
  br i1 %cmp54, label %if.then.55, label %if.else.59

if.then.55:                                       ; preds = %if.else.53
  %89 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %call56 = call i8* @gettext(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.43, i32 0, i32 0)) #6
  %90 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %91 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  call void @noisify_add_channel(%struct._GtkWidget* %89, i32 0, i8* %call56, %struct._GimpDrawable* %90, %struct._GtkWidget* %91)
  %92 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %call57 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.44, i32 0, i32 0)) #6
  %93 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %94 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  call void @noisify_add_channel(%struct._GtkWidget* %92, i32 1, i8* %call57, %struct._GimpDrawable* %93, %struct._GtkWidget* %94)
  %95 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %call58 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.45, i32 0, i32 0)) #6
  %96 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %97 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  call void @noisify_add_channel(%struct._GtkWidget* %95, i32 2, i8* %call58, %struct._GimpDrawable* %96, %struct._GtkWidget* %97)
  br label %if.end.73

if.else.59:                                       ; preds = %if.else.53
  %98 = load i32, i32* %channels.addr, align 4
  %cmp60 = icmp eq i32 %98, 4
  br i1 %cmp60, label %if.then.61, label %if.else.68

if.then.61:                                       ; preds = %if.else.59
  %99 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %call62 = call i8* @gettext(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.43, i32 0, i32 0)) #6
  %100 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %101 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  call void @noisify_add_channel(%struct._GtkWidget* %99, i32 0, i8* %call62, %struct._GimpDrawable* %100, %struct._GtkWidget* %101)
  %102 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %call63 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.44, i32 0, i32 0)) #6
  %103 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %104 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  call void @noisify_add_channel(%struct._GtkWidget* %102, i32 1, i8* %call63, %struct._GimpDrawable* %103, %struct._GtkWidget* %104)
  %105 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %call64 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.45, i32 0, i32 0)) #6
  %106 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %107 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  call void @noisify_add_channel(%struct._GtkWidget* %105, i32 2, i8* %call64, %struct._GimpDrawable* %106, %struct._GtkWidget* %107)
  %108 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %call65 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.42, i32 0, i32 0)) #6
  %109 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %110 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  call void @noisify_add_alpha_channel(%struct._GtkWidget* %108, i32 3, i8* %call65, %struct._GimpDrawable* %109, %struct._GtkWidget* %110)
  %111 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %112 = bitcast %struct._GtkWidget* %111 to %struct._GTypeInstance*
  %call66 = call i64 @gtk_table_get_type() #5
  %call67 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %112, i64 %call66)
  %113 = bitcast %struct._GTypeInstance* %call67 to %struct._GtkTable*
  call void @gtk_table_set_row_spacing(%struct._GtkTable* %113, i32 3, i32 15)
  br label %if.end.72

if.else.68:                                       ; preds = %if.else.59
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else.68
  %114 = load i32, i32* %i, align 4
  %115 = load i32, i32* %channels.addr, align 4
  %cmp69 = icmp slt i32 %114, %115
  br i1 %cmp69, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call70 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.46, i32 0, i32 0)) #6
  %116 = load i32, i32* %i, align 4
  %call71 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* %call70, i32 %116)
  store i8* %call71, i8** %buffer, align 8
  %117 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %118 = load i32, i32* %i, align 4
  %119 = load i8*, i8** %buffer, align 8
  %120 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %121 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  call void @noisify_add_channel(%struct._GtkWidget* %117, i32 %118, i8* %119, %struct._GimpDrawable* %120, %struct._GtkWidget* %121)
  %122 = load i8*, i8** %buffer, align 8
  call void @g_free(i8* %122)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %123 = load i32, i32* %i, align 4
  %inc = add nsw i32 %123, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.72

if.end.72:                                        ; preds = %for.end, %if.then.61
  br label %if.end.73

if.end.73:                                        ; preds = %if.end.72, %if.then.55
  br label %if.end.74

if.end.74:                                        ; preds = %if.end.73, %if.then.48
  br label %if.end.75

if.end.75:                                        ; preds = %if.end.74, %if.then.45
  %124 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %124)
  %125 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %126 = bitcast %struct._GtkWidget* %125 to %struct._GTypeInstance*
  %call76 = call i64 @gimp_dialog_get_type() #5
  %call77 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %126, i64 %call76)
  %127 = bitcast %struct._GTypeInstance* %call77 to %struct._GimpDialog*
  %call78 = call i32 @gimp_dialog_run(%struct._GimpDialog* %127)
  %cmp79 = icmp eq i32 %call78, -5
  %conv = zext i1 %cmp79 to i32
  store i32 %conv, i32* %run, align 4
  %128 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %128)
  %129 = load i32, i32* %run, align 4
  ret i32 %129
}

declare void @gimp_drawable_detach(%struct._GimpDrawable*) #1

declare void @g_rand_free(%struct._GRand*) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

declare i32 @gimp_drawable_is_indexed(i32) #1

declare i32 @gimp_progress_init(i8*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #2

declare void @gimp_rgn_iterate2(%struct._GimpDrawable*, i32, void (i8*, i8*, i32, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @noisify_func(i8* %src, i8* %dest, i32 %bpp, i8* %data) #0 {
entry:
  %src.addr = alloca i8*, align 8
  %dest.addr = alloca i8*, align 8
  %bpp.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %gr = alloca %struct._GRand*, align 8
  %noise = alloca double, align 8
  %b = alloca i32, align 4
  %p = alloca i32, align 4
  store i8* %src, i8** %src.addr, align 8
  store i8* %dest, i8** %dest.addr, align 8
  store i32 %bpp, i32* %bpp.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GRand*
  store %struct._GRand* %1, %struct._GRand** %gr, align 8
  store double 0.000000e+00, double* %noise, align 8
  store i32 0, i32* %b, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %b, align 4
  %3 = load i32, i32* %bpp.addr, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %b, align 4
  %cmp1 = icmp eq i32 %4, 0
  br i1 %cmp1, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %5 = load i32, i32* getelementptr inbounds (%struct.NoisifyVals, %struct.NoisifyVals* @nvals, i32 0, i32 0), align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false.2

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %6 = load i32, i32* %b, align 4
  %cmp3 = icmp eq i32 %6, 1
  br i1 %cmp3, label %land.lhs.true, label %lor.lhs.false.5

land.lhs.true:                                    ; preds = %lor.lhs.false.2
  %7 = load i32, i32* %bpp.addr, align 4
  %cmp4 = icmp eq i32 %7, 2
  br i1 %cmp4, label %if.then, label %lor.lhs.false.5

lor.lhs.false.5:                                  ; preds = %land.lhs.true, %lor.lhs.false.2
  %8 = load i32, i32* %b, align 4
  %cmp6 = icmp eq i32 %8, 3
  br i1 %cmp6, label %land.lhs.true.7, label %if.end

land.lhs.true.7:                                  ; preds = %lor.lhs.false.5
  %9 = load i32, i32* %bpp.addr, align 4
  %cmp8 = icmp eq i32 %9, 4
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.7, %land.lhs.true, %lor.lhs.false, %for.body
  %10 = load i32, i32* %b, align 4
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds [4 x double], [4 x double]* getelementptr inbounds (%struct.NoisifyVals, %struct.NoisifyVals* @nvals, i32 0, i32 2), i32 0, i64 %idxprom
  %11 = load double, double* %arrayidx, align 8
  %12 = load %struct._GRand*, %struct._GRand** %gr, align 8
  %call = call double @gauss(%struct._GRand* %12)
  %mul = fmul double %11, %call
  %mul9 = fmul double %mul, 1.270000e+02
  store double %mul9, double* %noise, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.7, %lor.lhs.false.5
  %13 = load i32, i32* %b, align 4
  %idxprom10 = sext i32 %13 to i64
  %arrayidx11 = getelementptr inbounds [4 x double], [4 x double]* getelementptr inbounds (%struct.NoisifyVals, %struct.NoisifyVals* @nvals, i32 0, i32 2), i32 0, i64 %idxprom10
  %14 = load double, double* %arrayidx11, align 8
  %cmp12 = fcmp ogt double %14, 0.000000e+00
  br i1 %cmp12, label %if.then.13, label %if.else.45

if.then.13:                                       ; preds = %if.end
  %15 = load i32, i32* getelementptr inbounds (%struct.NoisifyVals, %struct.NoisifyVals* @nvals, i32 0, i32 1), align 4
  %tobool14 = icmp ne i32 %15, 0
  br i1 %tobool14, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %if.then.13
  %16 = load i32, i32* %b, align 4
  %idxprom16 = sext i32 %16 to i64
  %17 = load i8*, i8** %src.addr, align 8
  %arrayidx17 = getelementptr inbounds i8, i8* %17, i64 %idxprom16
  %18 = load i8, i8* %arrayidx17, align 1
  %conv = zext i8 %18 to i32
  %conv18 = sitofp i32 %conv to double
  %19 = load i32, i32* %b, align 4
  %idxprom19 = sext i32 %19 to i64
  %20 = load i8*, i8** %src.addr, align 8
  %arrayidx20 = getelementptr inbounds i8, i8* %20, i64 %idxprom19
  %21 = load i8, i8* %arrayidx20, align 1
  %conv21 = zext i8 %21 to i32
  %conv22 = sitofp i32 %conv21 to double
  %22 = load double, double* %noise, align 8
  %div = fdiv double %22, 1.270000e+02
  %mul23 = fmul double %conv22, %div
  %add = fadd double %conv18, %mul23
  %add24 = fadd double %add, 5.000000e-01
  %conv25 = fptosi double %add24 to i32
  store i32 %conv25, i32* %p, align 4
  br label %if.end.33

if.else:                                          ; preds = %if.then.13
  %23 = load i32, i32* %b, align 4
  %idxprom26 = sext i32 %23 to i64
  %24 = load i8*, i8** %src.addr, align 8
  %arrayidx27 = getelementptr inbounds i8, i8* %24, i64 %idxprom26
  %25 = load i8, i8* %arrayidx27, align 1
  %conv28 = zext i8 %25 to i32
  %conv29 = sitofp i32 %conv28 to double
  %26 = load double, double* %noise, align 8
  %add30 = fadd double %conv29, %26
  %add31 = fadd double %add30, 5.000000e-01
  %conv32 = fptosi double %add31 to i32
  store i32 %conv32, i32* %p, align 4
  br label %if.end.33

if.end.33:                                        ; preds = %if.else, %if.then.15
  %27 = load i32, i32* %p, align 4
  %cmp34 = icmp sgt i32 %27, 255
  br i1 %cmp34, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.33
  br label %cond.end.40

cond.false:                                       ; preds = %if.end.33
  %28 = load i32, i32* %p, align 4
  %cmp36 = icmp slt i32 %28, 0
  br i1 %cmp36, label %cond.true.38, label %cond.false.39

cond.true.38:                                     ; preds = %cond.false
  br label %cond.end

cond.false.39:                                    ; preds = %cond.false
  %29 = load i32, i32* %p, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false.39, %cond.true.38
  %cond = phi i32 [ 0, %cond.true.38 ], [ %29, %cond.false.39 ]
  br label %cond.end.40

cond.end.40:                                      ; preds = %cond.end, %cond.true
  %cond41 = phi i32 [ 255, %cond.true ], [ %cond, %cond.end ]
  %conv42 = trunc i32 %cond41 to i8
  %30 = load i32, i32* %b, align 4
  %idxprom43 = sext i32 %30 to i64
  %31 = load i8*, i8** %dest.addr, align 8
  %arrayidx44 = getelementptr inbounds i8, i8* %31, i64 %idxprom43
  store i8 %conv42, i8* %arrayidx44, align 1
  br label %if.end.50

if.else.45:                                       ; preds = %if.end
  %32 = load i32, i32* %b, align 4
  %idxprom46 = sext i32 %32 to i64
  %33 = load i8*, i8** %src.addr, align 8
  %arrayidx47 = getelementptr inbounds i8, i8* %33, i64 %idxprom46
  %34 = load i8, i8* %arrayidx47, align 1
  %35 = load i32, i32* %b, align 4
  %idxprom48 = sext i32 %35 to i64
  %36 = load i8*, i8** %dest.addr, align 8
  %arrayidx49 = getelementptr inbounds i8, i8* %36, i64 %idxprom48
  store i8 %34, i8* %arrayidx49, align 1
  br label %if.end.50

if.end.50:                                        ; preds = %if.else.45, %cond.end.40
  br label %for.inc

for.inc:                                          ; preds = %if.end.50
  %37 = load i32, i32* %b, align 4
  %inc = add nsw i32 %37, 1
  store i32 %inc, i32* %b, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare i32 @gimp_displays_flush() #1

declare i32 @gimp_procedural_db_set_data(i8*, i8*, i32) #1

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

; Function Attrs: nounwind uwtable
define internal void @noisify(%struct._GimpPreview* %preview) #0 {
entry:
  %preview.addr = alloca %struct._GimpPreview*, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  %src_rgn = alloca %struct._GimpPixelRgn, align 8
  %src = alloca i8*, align 8
  %dst = alloca i8*, align 8
  %i = alloca i32, align 4
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %bpp = alloca i32, align 4
  %gr = alloca %struct._GRand*, align 8
  store %struct._GimpPreview* %preview, %struct._GimpPreview** %preview.addr, align 8
  %0 = load %struct._GRand*, %struct._GRand** @noise_gr, align 8
  %call = call %struct._GRand* @g_rand_copy(%struct._GRand* %0)
  store %struct._GRand* %call, %struct._GRand** %gr, align 8
  %1 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %2 = bitcast %struct._GimpPreview* %1 to %struct._GTypeInstance*
  %call1 = call i64 @gimp_drawable_preview_get_type() #5
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call1)
  %3 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpDrawablePreview*
  %call3 = call %struct._GimpDrawable* @gimp_drawable_preview_get_drawable(%struct._GimpDrawablePreview* %3)
  store %struct._GimpDrawable* %call3, %struct._GimpDrawable** %drawable, align 8
  %4 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  call void @gimp_preview_get_position(%struct._GimpPreview* %4, i32* %x1, i32* %y1)
  %5 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  call void @gimp_preview_get_size(%struct._GimpPreview* %5, i32* %width, i32* %height)
  %6 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %bpp4 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %6, i32 0, i32 3
  %7 = load i32, i32* %bpp4, align 4
  store i32 %7, i32* %bpp, align 4
  %8 = load i32, i32* %width, align 4
  %9 = load i32, i32* %height, align 4
  %mul = mul nsw i32 %8, %9
  %10 = load i32, i32* %bpp, align 4
  %mul5 = mul nsw i32 %mul, %10
  %conv = sext i32 %mul5 to i64
  %call6 = call noalias i8* @g_malloc_n(i64 %conv, i64 1)
  store i8* %call6, i8** %src, align 8
  %11 = load i32, i32* %width, align 4
  %12 = load i32, i32* %height, align 4
  %mul7 = mul nsw i32 %11, %12
  %13 = load i32, i32* %bpp, align 4
  %mul8 = mul nsw i32 %mul7, %13
  %conv9 = sext i32 %mul8 to i64
  %call10 = call noalias i8* @g_malloc_n(i64 %conv9, i64 1)
  store i8* %call10, i8** %dst, align 8
  %14 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %15 = load i32, i32* %x1, align 4
  %16 = load i32, i32* %y1, align 4
  %17 = load i32, i32* %width, align 4
  %18 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %src_rgn, %struct._GimpDrawable* %14, i32 %15, i32 %16, i32 %17, i32 %18, i32 0, i32 0)
  %19 = load i8*, i8** %src, align 8
  %20 = load i32, i32* %x1, align 4
  %21 = load i32, i32* %y1, align 4
  %22 = load i32, i32* %width, align 4
  %23 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_get_rect(%struct._GimpPixelRgn* %src_rgn, i8* %19, i32 %20, i32 %21, i32 %22, i32 %23)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %24 = load i32, i32* %i, align 4
  %25 = load i32, i32* %width, align 4
  %26 = load i32, i32* %height, align 4
  %mul11 = mul nsw i32 %25, %26
  %cmp = icmp slt i32 %24, %mul11
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %27 = load i8*, i8** %src, align 8
  %28 = load i32, i32* %i, align 4
  %29 = load i32, i32* %bpp, align 4
  %mul13 = mul nsw i32 %28, %29
  %idx.ext = sext i32 %mul13 to i64
  %add.ptr = getelementptr inbounds i8, i8* %27, i64 %idx.ext
  %30 = load i8*, i8** %dst, align 8
  %31 = load i32, i32* %i, align 4
  %32 = load i32, i32* %bpp, align 4
  %mul14 = mul nsw i32 %31, %32
  %idx.ext15 = sext i32 %mul14 to i64
  %add.ptr16 = getelementptr inbounds i8, i8* %30, i64 %idx.ext15
  %33 = load i32, i32* %bpp, align 4
  %34 = load %struct._GRand*, %struct._GRand** %gr, align 8
  %35 = bitcast %struct._GRand* %34 to i8*
  call void @noisify_func(i8* %add.ptr, i8* %add.ptr16, i32 %33, i8* %35)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %36 = load i32, i32* %i, align 4
  %inc = add nsw i32 %36, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %37 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %38 = load i8*, i8** %dst, align 8
  %39 = load i32, i32* %width, align 4
  %40 = load i32, i32* %bpp, align 4
  %mul17 = mul nsw i32 %39, %40
  call void @gimp_preview_draw_buffer(%struct._GimpPreview* %37, i8* %38, i32 %mul17)
  %41 = load i8*, i8** %src, align 8
  call void @g_free(i8* %41)
  %42 = load i8*, i8** %dst, align 8
  call void @g_free(i8* %42)
  %43 = load %struct._GRand*, %struct._GRand** %gr, align 8
  call void @g_rand_free(%struct._GRand* %43)
  ret void
}

declare %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8*) #1

declare void @gtk_toggle_button_set_active(%struct._GtkToggleButton*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_toggle_button_get_type() #3

declare void @gimp_toggle_button_update(%struct._GtkWidget*, i8*) #1

declare void @gimp_preview_invalidate(%struct._GimpPreview*) #1

declare i32 @gimp_drawable_is_rgb(i32) #1

declare %struct._GtkWidget* @gtk_table_new(i32, i32, i32) #1

declare void @gtk_table_set_col_spacings(%struct._GtkTable*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_table_get_type() #3

declare void @gtk_table_set_row_spacings(%struct._GtkTable*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @noisify_add_channel(%struct._GtkWidget* %table, i32 %channel, i8* %name, %struct._GimpDrawable* %drawable, %struct._GtkWidget* %preview) #0 {
entry:
  %table.addr = alloca %struct._GtkWidget*, align 8
  %channel.addr = alloca i32, align 4
  %name.addr = alloca i8*, align 8
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %preview.addr = alloca %struct._GtkWidget*, align 8
  %adj = alloca %struct._GtkObject*, align 8
  store %struct._GtkWidget* %table, %struct._GtkWidget** %table.addr, align 8
  store i32 %channel, i32* %channel.addr, align 4
  store i8* %name, i8** %name.addr, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._GtkWidget* %preview, %struct._GtkWidget** %preview.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %table.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_table_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkTable*
  %3 = load i32, i32* %channel.addr, align 4
  %add = add nsw i32 %3, 1
  %4 = load i8*, i8** %name.addr, align 8
  %5 = load i32, i32* %channel.addr, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [4 x double], [4 x double]* getelementptr inbounds (%struct.NoisifyVals, %struct.NoisifyVals* @nvals, i32 0, i32 2), i32 0, i64 %idxprom
  %6 = load double, double* %arrayidx, align 8
  %call2 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %2, i32 0, i32 %add, i8* %4, i32 125, i32 0, double %6, double 0.000000e+00, double 1.000000e+00, double 1.000000e-02, double 1.000000e-01, i32 2, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call2, %struct._GtkObject** %adj, align 8
  %7 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %8 = bitcast %struct._GtkObject* %7 to %struct._GTypeInstance*
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 80)
  %9 = bitcast %struct._GTypeInstance* %call3 to %struct._GObject*
  %10 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %11 = bitcast %struct._GimpDrawable* %10 to i8*
  call void @g_object_set_data(%struct._GObject* %9, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* %11)
  %12 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %13 = bitcast %struct._GtkObject* %12 to i8*
  %14 = load i32, i32* %channel.addr, align 4
  %idxprom4 = sext i32 %14 to i64
  %arrayidx5 = getelementptr inbounds [4 x double], [4 x double]* getelementptr inbounds (%struct.NoisifyVals, %struct.NoisifyVals* @nvals, i32 0, i32 2), i32 0, i64 %idxprom4
  %15 = bitcast double* %arrayidx5 to i8*
  %call6 = call i64 @g_signal_connect_data(i8* %13, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.47, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @noisify_double_adjustment_update to void ()*), i8* %15, void (i8*, %struct._GClosure*)* null, i32 0)
  %16 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %17 = bitcast %struct._GtkObject* %16 to i8*
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %preview.addr, align 8
  %19 = bitcast %struct._GtkWidget* %18 to i8*
  %call7 = call i64 @g_signal_connect_data(i8* %17, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.47, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %19, void (i8*, %struct._GClosure*)* null, i32 2)
  %20 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %21 = load i32, i32* %channel.addr, align 4
  %idxprom8 = sext i32 %21 to i64
  %arrayidx9 = getelementptr inbounds [4 x %struct._GtkObject*], [4 x %struct._GtkObject*]* getelementptr inbounds (%struct.NoisifyInterface, %struct.NoisifyInterface* @noise_int, i32 0, i32 1), i32 0, i64 %idxprom8
  store %struct._GtkObject* %20, %struct._GtkObject** %arrayidx9, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @noisify_add_alpha_channel(%struct._GtkWidget* %table, i32 %channel, i8* %name, %struct._GimpDrawable* %drawable, %struct._GtkWidget* %preview) #0 {
entry:
  %table.addr = alloca %struct._GtkWidget*, align 8
  %channel.addr = alloca i32, align 4
  %name.addr = alloca i8*, align 8
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %preview.addr = alloca %struct._GtkWidget*, align 8
  %adj = alloca %struct._GtkObject*, align 8
  store %struct._GtkWidget* %table, %struct._GtkWidget** %table.addr, align 8
  store i32 %channel, i32* %channel.addr, align 4
  store i8* %name, i8** %name.addr, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._GtkWidget* %preview, %struct._GtkWidget** %preview.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %table.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_table_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkTable*
  %3 = load i32, i32* %channel.addr, align 4
  %add = add nsw i32 %3, 1
  %4 = load i8*, i8** %name.addr, align 8
  %5 = load i32, i32* %channel.addr, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [4 x double], [4 x double]* getelementptr inbounds (%struct.NoisifyVals, %struct.NoisifyVals* @nvals, i32 0, i32 2), i32 0, i64 %idxprom
  %6 = load double, double* %arrayidx, align 8
  %call2 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %2, i32 0, i32 %add, i8* %4, i32 125, i32 0, double %6, double 0.000000e+00, double 1.000000e+00, double 1.000000e-02, double 1.000000e-01, i32 2, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call2, %struct._GtkObject** %adj, align 8
  %7 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %8 = bitcast %struct._GtkObject* %7 to %struct._GTypeInstance*
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 80)
  %9 = bitcast %struct._GTypeInstance* %call3 to %struct._GObject*
  %10 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %11 = bitcast %struct._GimpDrawable* %10 to i8*
  call void @g_object_set_data(%struct._GObject* %9, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* %11)
  %12 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %13 = bitcast %struct._GtkObject* %12 to i8*
  %14 = load i32, i32* %channel.addr, align 4
  %idxprom4 = sext i32 %14 to i64
  %arrayidx5 = getelementptr inbounds [4 x double], [4 x double]* getelementptr inbounds (%struct.NoisifyVals, %struct.NoisifyVals* @nvals, i32 0, i32 2), i32 0, i64 %idxprom4
  %15 = bitcast double* %arrayidx5 to i8*
  %call6 = call i64 @g_signal_connect_data(i8* %13, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.47, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_double_adjustment_update to void ()*), i8* %15, void (i8*, %struct._GClosure*)* null, i32 0)
  %16 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %17 = bitcast %struct._GtkObject* %16 to i8*
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %preview.addr, align 8
  %19 = bitcast %struct._GtkWidget* %18 to i8*
  %call7 = call i64 @g_signal_connect_data(i8* %17, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.47, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %19, void (i8*, %struct._GClosure*)* null, i32 2)
  %20 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %21 = load i32, i32* %channel.addr, align 4
  %idxprom8 = sext i32 %21 to i64
  %arrayidx9 = getelementptr inbounds [4 x %struct._GtkObject*], [4 x %struct._GtkObject*]* getelementptr inbounds (%struct.NoisifyInterface, %struct.NoisifyInterface* @noise_int, i32 0, i32 1), i32 0, i64 %idxprom8
  store %struct._GtkObject* %20, %struct._GtkObject** %arrayidx9, align 8
  ret void
}

declare void @gtk_table_set_row_spacing(%struct._GtkTable*, i32, i32) #1

declare noalias i8* @g_strdup_printf(i8*, ...) #1

declare void @g_free(i8*) #1

declare i32 @gimp_dialog_run(%struct._GimpDialog*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_dialog_get_type() #3

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

declare %struct._GRand* @g_rand_copy(%struct._GRand*) #1

declare %struct._GimpDrawable* @gimp_drawable_preview_get_drawable(%struct._GimpDrawablePreview*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_drawable_preview_get_type() #3

declare void @gimp_preview_get_position(%struct._GimpPreview*, i32*, i32*) #1

declare void @gimp_preview_get_size(%struct._GimpPreview*, i32*, i32*) #1

declare noalias i8* @g_malloc_n(i64, i64) #1

declare void @gimp_pixel_rgn_init(%struct._GimpPixelRgn*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32) #1

declare void @gimp_pixel_rgn_get_rect(%struct._GimpPixelRgn*, i8*, i32, i32, i32, i32) #1

declare void @gimp_preview_draw_buffer(%struct._GimpPreview*, i8*, i32) #1

declare %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable*, i32, i32, i8*, i32, i32, double, double, double, double, double, i32, i32, double, double, i8*, i8*) #1

declare void @g_object_set_data(%struct._GObject*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @noisify_double_adjustment_update(%struct._GtkAdjustment* %adjustment, i8* %data) #0 {
entry:
  %adjustment.addr = alloca %struct._GtkAdjustment*, align 8
  %data.addr = alloca i8*, align 8
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct._GtkAdjustment* %adjustment, %struct._GtkAdjustment** %adjustment.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment.addr, align 8
  %1 = load i8*, i8** %data.addr, align 8
  call void @gimp_double_adjustment_update(%struct._GtkAdjustment* %0, i8* %1)
  %2 = load i32, i32* getelementptr inbounds (%struct.NoisifyVals, %struct.NoisifyVals* @nvals, i32 0, i32 0), align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.end.11, label %if.then

if.then:                                          ; preds = %entry
  %3 = load i32, i32* getelementptr inbounds (%struct.NoisifyInterface, %struct.NoisifyInterface* @noise_int, i32 0, i32 0), align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.1
    i32 3, label %sw.bb.2
  ]

sw.bb:                                            ; preds = %if.then
  store i32 1, i32* %n, align 4
  br label %sw.epilog

sw.bb.1:                                          ; preds = %if.then
  store i32 1, i32* %n, align 4
  br label %sw.epilog

sw.bb.2:                                          ; preds = %if.then
  store i32 3, i32* %n, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.then
  store i32 3, i32* %n, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.2, %sw.bb.1, %sw.bb
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.epilog
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* %n, align 4
  %cmp = icmp slt i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment.addr, align 8
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds [4 x %struct._GtkObject*], [4 x %struct._GtkObject*]* getelementptr inbounds (%struct.NoisifyInterface, %struct.NoisifyInterface* @noise_int, i32 0, i32 1), i32 0, i64 %idxprom
  %8 = load %struct._GtkObject*, %struct._GtkObject** %arrayidx, align 8
  %9 = bitcast %struct._GtkObject* %8 to %struct._GTypeInstance*
  %call = call i64 @gtk_adjustment_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call)
  %10 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkAdjustment*
  %cmp4 = icmp ne %struct._GtkAdjustment* %6, %10
  br i1 %cmp4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %for.body
  %11 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %11 to i64
  %arrayidx7 = getelementptr inbounds [4 x %struct._GtkObject*], [4 x %struct._GtkObject*]* getelementptr inbounds (%struct.NoisifyInterface, %struct.NoisifyInterface* @noise_int, i32 0, i32 1), i32 0, i64 %idxprom6
  %12 = load %struct._GtkObject*, %struct._GtkObject** %arrayidx7, align 8
  %13 = bitcast %struct._GtkObject* %12 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_adjustment_get_type() #5
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call8)
  %14 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkAdjustment*
  %15 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment.addr, align 8
  %call10 = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %15)
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %14, double %call10)
  br label %if.end

if.end:                                           ; preds = %if.then.5, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %16 = load i32, i32* %i, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.11

if.end.11:                                        ; preds = %for.end, %entry
  ret void
}

declare void @gimp_double_adjustment_update(%struct._GtkAdjustment*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_adjustment_get_type() #3

declare void @gtk_adjustment_set_value(%struct._GtkAdjustment*, double) #1

declare double @gtk_adjustment_get_value(%struct._GtkAdjustment*) #1

; Function Attrs: nounwind uwtable
define internal double @gauss(%struct._GRand* %gr) #0 {
entry:
  %gr.addr = alloca %struct._GRand*, align 8
  %u = alloca double, align 8
  %v = alloca double, align 8
  %x = alloca double, align 8
  store %struct._GRand* %gr, %struct._GRand** %gr.addr, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond.3, %entry
  %0 = load %struct._GRand*, %struct._GRand** %gr.addr, align 8
  %call = call double @g_rand_double(%struct._GRand* %0)
  store double %call, double* %v, align 8
  br label %do.body.1

do.body.1:                                        ; preds = %do.cond, %do.body
  %1 = load %struct._GRand*, %struct._GRand** %gr.addr, align 8
  %call2 = call double @g_rand_double(%struct._GRand* %1)
  store double %call2, double* %u, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body.1
  %2 = load double, double* %u, align 8
  %cmp = fcmp oeq double %2, 0.000000e+00
  br i1 %cmp, label %do.body.1, label %do.end

do.end:                                           ; preds = %do.cond
  %3 = load double, double* %v, align 8
  %sub = fsub double %3, 5.000000e-01
  %mul = fmul double 0x3FFB72CD3F331398, %sub
  %4 = load double, double* %u, align 8
  %div = fdiv double %mul, %4
  store double %div, double* %x, align 8
  br label %do.cond.3

do.cond.3:                                        ; preds = %do.end
  %5 = load double, double* %x, align 8
  %6 = load double, double* %x, align 8
  %mul4 = fmul double %5, %6
  %7 = load double, double* %u, align 8
  %call5 = call double @log(double %7) #6
  %mul6 = fmul double -4.000000e+00, %call5
  %cmp7 = fcmp ogt double %mul4, %mul6
  br i1 %cmp7, label %do.body, label %do.end.8

do.end.8:                                         ; preds = %do.cond.3
  %8 = load double, double* %x, align 8
  ret double %8
}

declare double @g_rand_double(%struct._GRand*) #1

; Function Attrs: nounwind
declare double @log(double) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
