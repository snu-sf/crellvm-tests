; ModuleID = './plug-ins/common/noise-randomize.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpPlugInInfo = type { void ()*, void ()*, void ()*, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* }
%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpParamDef = type { i32, i8*, i8* }
%struct._GRand = type opaque
%struct.RandomizeVals = type { double, double, i32, i32 }
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
%struct._GtkLabel = type { %struct._GtkMisc, i8*, i16, i32, i8*, %struct._PangoAttrList*, %struct._PangoAttrList*, %struct._PangoLayout*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkLabelSelectionInfo* }
%struct._GtkMisc = type { %struct._GtkWidget, float, float, i16, i16 }
%struct._PangoAttrList = type opaque
%struct._PangoLayout = type opaque
%struct._GtkLabelSelectionInfo = type opaque
%struct._GimpDialog = type { %struct._GtkDialog }
%struct._GimpPixelRgn = type { i8*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32, i8, i32 }
%struct._GimpDrawablePreview = type { %struct._GimpScrolledPreview, %struct._GimpDrawable* }
%struct._GimpScrolledPreview = type { %struct._GimpPreview, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GdkCursor*, i8*, i8* }
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }

@PLUG_IN_INFO = constant %struct._GimpPlugInInfo { void ()* null, void ()* null, void ()* @query, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* @run }, align 8
@query.args = internal constant [7 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i32 0, i32 0) }, %struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.13, i32 0, i32 0) }], align 16
@.str = private unnamed_addr constant [9 x i8] c"run_mode\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"The run mode { RUN-INTERACTIVE (0), RUN-NONINTERACTIVE (1) }\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Input image (unused)\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"drawable\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"Input drawable\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"rndm_pct\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"Randomization percentage (1.0 - 100.0)\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"rndm_rcount\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"Repeat count (1.0 - 100.0)\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"randomize\00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c"Use random seed { TRUE, FALSE }\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"seed\00", align 1
@.str.13 = private unnamed_addr constant [45 x i8] c"Seed value (used only if randomize is FALSE)\00", align 1
@.str.14 = private unnamed_addr constant [42 x i8] c"Completely randomize a fraction of pixels\00", align 1
@.str.15 = private unnamed_addr constant [48 x i8] c"Randomly interchange some pixels with neighbors\00", align 1
@.str.16 = private unnamed_addr constant [57 x i8] c"Randomly slide some pixels downward (similar to melting)\00", align 1
@.str.17 = private unnamed_addr constant [173 x i8] c"This plug-in ``hurls'' randomly-valued pixels onto the selection or image.  You may select the percentage of pixels to modify and the number of times to repeat the process.\00", align 1
@.str.18 = private unnamed_addr constant [158 x i8] c"This plug-in replaces a pixel with a random adjacent pixel.  You may select the percentage of pixels to modify and the number of times to repeat the process.\00", align 1
@.str.19 = private unnamed_addr constant [159 x i8] c"This plug-in slurs (melts like a bunch of icicles) an image.  You may select the percentage of pixels to modify and the number of times to repeat the process.\00", align 1
@.str.20 = private unnamed_addr constant [28 x i8] c"Miles O'Neal  <meo@rru.com>\00", align 1
@.str.21 = private unnamed_addr constant [137 x i8] c"Miles O'Neal, Spencer Kimball, Peter Mattis, Torsten Martinsen, Brian Degenhardt, Federico Mena Quintero, Stephen Norris, Daniel Cotting\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"1995-1998\00", align 1
@PLUG_IN_PROC = internal global [3 x i8*] [i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.30, i32 0, i32 0)], align 16
@.str.23 = private unnamed_addr constant [9 x i8] c"_Hurl...\00", align 1
@.str.24 = private unnamed_addr constant [22 x i8] c"RGB*, GRAY*, INDEXED*\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"_Pick...\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"_Slur...\00", align 1
@.str.27 = private unnamed_addr constant [22 x i8] c"<Image>/Filters/Noise\00", align 1
@.str.28 = private unnamed_addr constant [23 x i8] c"plug-in-randomize-hurl\00", align 1
@.str.29 = private unnamed_addr constant [23 x i8] c"plug-in-randomize-pick\00", align 1
@.str.30 = private unnamed_addr constant [23 x i8] c"plug-in-randomize-slur\00", align 1
@run.values = internal global [1 x %struct._GimpParam] zeroinitializer, align 16
@.str.31 = private unnamed_addr constant [20 x i8] c"gimp20-std-plug-ins\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@rndm_type = internal global i32 1, align 4
@gr = internal global %struct._GRand* null, align 8
@pivals = internal global %struct.RandomizeVals { double 5.000000e+01, double 1.000000e+00, i32 0, i32 10 }, align 8
@.str.33 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@RNDM_NAME = internal global [3 x i8*] [i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.48, i32 0, i32 0)], align 16
@.str.34 = private unnamed_addr constant [16 x i8] c"noise-randomize\00", align 1
@.str.35 = private unnamed_addr constant [21 x i8] c"gimp-noise-randomize\00", align 1
@.str.36 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.37 = private unnamed_addr constant [7 x i8] c"gtk-ok\00", align 1
@.str.38 = private unnamed_addr constant [12 x i8] c"invalidated\00", align 1
@.str.39 = private unnamed_addr constant [14 x i8] c"_Random seed:\00", align 1
@.str.40 = private unnamed_addr constant [11 x i8] c"spinbutton\00", align 1
@.str.41 = private unnamed_addr constant [20 x i8] c"R_andomization (%):\00", align 1
@.str.42 = private unnamed_addr constant [36 x i8] c"Percentage of pixels to be filtered\00", align 1
@.str.43 = private unnamed_addr constant [14 x i8] c"value-changed\00", align 1
@.str.44 = private unnamed_addr constant [9 x i8] c"R_epeat:\00", align 1
@.str.45 = private unnamed_addr constant [32 x i8] c"Number of times to apply filter\00", align 1
@.str.46 = private unnamed_addr constant [12 x i8] c"Random Hurl\00", align 1
@.str.47 = private unnamed_addr constant [12 x i8] c"Random Pick\00", align 1
@.str.48 = private unnamed_addr constant [12 x i8] c"Random Slur\00", align 1

; Function Attrs: nounwind uwtable
define internal void @query() #0 {
entry:
  %hurl_blurb = alloca i8*, align 8
  %pick_blurb = alloca i8*, align 8
  %slur_blurb = alloca i8*, align 8
  %hurl_help = alloca i8*, align 8
  %pick_help = alloca i8*, align 8
  %slur_help = alloca i8*, align 8
  %author = alloca i8*, align 8
  %copyrights = alloca i8*, align 8
  %copyright_date = alloca i8*, align 8
  store i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.14, i32 0, i32 0), i8** %hurl_blurb, align 8
  store i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.15, i32 0, i32 0), i8** %pick_blurb, align 8
  store i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.16, i32 0, i32 0), i8** %slur_blurb, align 8
  store i8* getelementptr inbounds ([173 x i8], [173 x i8]* @.str.17, i32 0, i32 0), i8** %hurl_help, align 8
  store i8* getelementptr inbounds ([158 x i8], [158 x i8]* @.str.18, i32 0, i32 0), i8** %pick_help, align 8
  store i8* getelementptr inbounds ([159 x i8], [159 x i8]* @.str.19, i32 0, i32 0), i8** %slur_help, align 8
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.20, i32 0, i32 0), i8** %author, align 8
  store i8* getelementptr inbounds ([137 x i8], [137 x i8]* @.str.21, i32 0, i32 0), i8** %copyrights, align 8
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i32 0, i32 0), i8** %copyright_date, align 8
  %0 = load i8*, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @PLUG_IN_PROC, i32 0, i64 0), align 8
  %1 = load i8*, i8** %hurl_blurb, align 8
  %2 = load i8*, i8** %hurl_help, align 8
  %3 = load i8*, i8** %author, align 8
  %4 = load i8*, i8** %copyrights, align 8
  %5 = load i8*, i8** %copyright_date, align 8
  call void @gimp_install_procedure(i8* %0, i8* %1, i8* %2, i8* %3, i8* %4, i8* %5, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.24, i32 0, i32 0), i32 1, i32 7, i32 0, %struct._GimpParamDef* getelementptr inbounds ([7 x %struct._GimpParamDef], [7 x %struct._GimpParamDef]* @query.args, i32 0, i32 0), %struct._GimpParamDef* null)
  %6 = load i8*, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @PLUG_IN_PROC, i32 0, i64 1), align 8
  %7 = load i8*, i8** %pick_blurb, align 8
  %8 = load i8*, i8** %pick_help, align 8
  %9 = load i8*, i8** %author, align 8
  %10 = load i8*, i8** %copyrights, align 8
  %11 = load i8*, i8** %copyright_date, align 8
  call void @gimp_install_procedure(i8* %6, i8* %7, i8* %8, i8* %9, i8* %10, i8* %11, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.24, i32 0, i32 0), i32 1, i32 7, i32 0, %struct._GimpParamDef* getelementptr inbounds ([7 x %struct._GimpParamDef], [7 x %struct._GimpParamDef]* @query.args, i32 0, i32 0), %struct._GimpParamDef* null)
  %12 = load i8*, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @PLUG_IN_PROC, i32 0, i64 2), align 8
  %13 = load i8*, i8** %slur_blurb, align 8
  %14 = load i8*, i8** %slur_help, align 8
  %15 = load i8*, i8** %author, align 8
  %16 = load i8*, i8** %copyrights, align 8
  %17 = load i8*, i8** %copyright_date, align 8
  call void @gimp_install_procedure(i8* %12, i8* %13, i8* %14, i8* %15, i8* %16, i8* %17, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.24, i32 0, i32 0), i32 1, i32 7, i32 0, %struct._GimpParamDef* getelementptr inbounds ([7 x %struct._GimpParamDef], [7 x %struct._GimpParamDef]* @query.args, i32 0, i32 0), %struct._GimpParamDef* null)
  %18 = load i8*, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @PLUG_IN_PROC, i32 0, i64 0), align 8
  %call = call i32 @gimp_plugin_menu_register(i8* %18, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.27, i32 0, i32 0))
  %19 = load i8*, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @PLUG_IN_PROC, i32 0, i64 1), align 8
  %call1 = call i32 @gimp_plugin_menu_register(i8* %19, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.27, i32 0, i32 0))
  %20 = load i8*, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @PLUG_IN_PROC, i32 0, i64 2), align 8
  %call2 = call i32 @gimp_plugin_menu_register(i8* %20, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.27, i32 0, i32 0))
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
  store i8* %name, i8** %name.addr, align 8
  store i32 %nparams, i32* %nparams.addr, align 4
  store %struct._GimpParam* %param, %struct._GimpParam** %param.addr, align 8
  store i32* %nreturn_vals, i32** %nreturn_vals.addr, align 8
  store %struct._GimpParam** %return_vals, %struct._GimpParam*** %return_vals.addr, align 8
  store i32 3, i32* %status, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %call = call i8* @gimp_locale_directory() #6
  %call1 = call i8* @bindtextdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.31, i32 0, i32 0), i8* %call) #7
  %call2 = call i8* @bind_textdomain_codeset(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i32 0, i32 0)) #7
  %call3 = call i8* @textdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.31, i32 0, i32 0)) #7
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load i8*, i8** %name.addr, align 8
  %1 = load i8*, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @PLUG_IN_PROC, i32 0, i64 0), align 8
  %call4 = call i32 @strcmp(i8* %0, i8* %1) #8
  %cmp = icmp eq i32 %call4, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.end
  store i32 1, i32* @rndm_type, align 4
  br label %if.end.13

if.else:                                          ; preds = %do.end
  %2 = load i8*, i8** %name.addr, align 8
  %3 = load i8*, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @PLUG_IN_PROC, i32 0, i64 1), align 8
  %call5 = call i32 @strcmp(i8* %2, i8* %3) #8
  %cmp6 = icmp eq i32 %call5, 0
  br i1 %cmp6, label %if.then.7, label %if.else.8

if.then.7:                                        ; preds = %if.else
  store i32 2, i32* @rndm_type, align 4
  br label %if.end.12

if.else.8:                                        ; preds = %if.else
  %4 = load i8*, i8** %name.addr, align 8
  %5 = load i8*, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @PLUG_IN_PROC, i32 0, i64 2), align 8
  %call9 = call i32 @strcmp(i8* %4, i8* %5) #8
  %cmp10 = icmp eq i32 %call9, 0
  br i1 %cmp10, label %if.then.11, label %if.end

if.then.11:                                       ; preds = %if.else.8
  store i32 3, i32* @rndm_type, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.11, %if.else.8
  br label %if.end.12

if.end.12:                                        ; preds = %if.end, %if.then.7
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %if.then
  %6 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %6, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_int32 = bitcast %union._GimpParamData* %data to i32*
  %7 = load i32, i32* %d_int32, align 4
  store i32 %7, i32* %run_mode, align 4
  %8 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx14 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %8, i64 2
  %data15 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx14, i32 0, i32 1
  %d_drawable = bitcast %union._GimpParamData* %data15 to i32*
  %9 = load i32, i32* %d_drawable, align 4
  %call16 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %9)
  store %struct._GimpDrawable* %call16, %struct._GimpDrawable** %drawable, align 8
  %10 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 1, i32* %10, align 4
  %11 = load %struct._GimpParam**, %struct._GimpParam*** %return_vals.addr, align 8
  store %struct._GimpParam* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i32 0), %struct._GimpParam** %11, align 8
  store i32 21, i32* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 0), align 4
  %12 = load i32, i32* %status, align 4
  store i32 %12, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  %call17 = call %struct._GRand* @g_rand_new()
  store %struct._GRand* %call17, %struct._GRand** @gr, align 8
  %13 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %13, i32 0, i32 0
  %14 = load i32, i32* %drawable_id, align 4
  %call18 = call i32 @gimp_drawable_is_rgb(i32 %14)
  %tobool = icmp ne i32 %call18, 0
  br i1 %tobool, label %if.then.26, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.13
  %15 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id19 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %15, i32 0, i32 0
  %16 = load i32, i32* %drawable_id19, align 4
  %call20 = call i32 @gimp_drawable_is_gray(i32 %16)
  %tobool21 = icmp ne i32 %call20, 0
  br i1 %tobool21, label %if.then.26, label %lor.lhs.false.22

lor.lhs.false.22:                                 ; preds = %lor.lhs.false
  %17 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id23 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %17, i32 0, i32 0
  %18 = load i32, i32* %drawable_id23, align 4
  %call24 = call i32 @gimp_drawable_is_indexed(i32 %18)
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %if.then.26, label %if.else.106

if.then.26:                                       ; preds = %lor.lhs.false.22, %lor.lhs.false, %if.end.13
  %19 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %ntile_cols = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %19, i32 0, i32 5
  %20 = load i32, i32* %ntile_cols, align 4
  %mul = mul i32 2, %20
  %conv = zext i32 %mul to i64
  call void @gimp_tile_cache_ntiles(i64 %conv)
  %21 = load i32, i32* %run_mode, align 4
  switch i32 %21, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.33
    i32 2, label %sw.bb.75
  ]

sw.bb:                                            ; preds = %if.then.26
  %22 = load i32, i32* @rndm_type, align 4
  %sub = sub nsw i32 %22, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx27 = getelementptr inbounds [3 x i8*], [3 x i8*]* @PLUG_IN_PROC, i32 0, i64 %idxprom
  %23 = load i8*, i8** %arrayidx27, align 8
  %call28 = call i32 @gimp_procedural_db_get_data(i8* %23, i8* bitcast (%struct.RandomizeVals* @pivals to i8*))
  %24 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call29 = call i32 @randomize_dialog(%struct._GimpDrawable* %24)
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %if.end.32, label %if.then.31

if.then.31:                                       ; preds = %sw.bb
  br label %return

if.end.32:                                        ; preds = %sw.bb
  br label %sw.epilog

sw.bb.33:                                         ; preds = %if.then.26
  %25 = load i32, i32* %nparams.addr, align 4
  %cmp34 = icmp ne i32 %25, 7
  br i1 %cmp34, label %if.then.36, label %if.else.37

if.then.36:                                       ; preds = %sw.bb.33
  store i32 1, i32* %status, align 4
  br label %if.end.74

if.else.37:                                       ; preds = %sw.bb.33
  %26 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx38 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %26, i64 3
  %data39 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx38, i32 0, i32 1
  %d_float = bitcast %union._GimpParamData* %data39 to double*
  %27 = load double, double* %d_float, align 8
  store double %27, double* getelementptr inbounds (%struct.RandomizeVals, %struct.RandomizeVals* @pivals, i32 0, i32 0), align 8
  %28 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx40 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %28, i64 4
  %data41 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx40, i32 0, i32 1
  %d_float42 = bitcast %union._GimpParamData* %data41 to double*
  %29 = load double, double* %d_float42, align 8
  store double %29, double* getelementptr inbounds (%struct.RandomizeVals, %struct.RandomizeVals* @pivals, i32 0, i32 1), align 8
  %30 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx43 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %30, i64 5
  %data44 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx43, i32 0, i32 1
  %d_int3245 = bitcast %union._GimpParamData* %data44 to i32*
  %31 = load i32, i32* %d_int3245, align 4
  store i32 %31, i32* getelementptr inbounds (%struct.RandomizeVals, %struct.RandomizeVals* @pivals, i32 0, i32 2), align 4
  %32 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx46 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %32, i64 6
  %data47 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx46, i32 0, i32 1
  %d_int3248 = bitcast %union._GimpParamData* %data47 to i32*
  %33 = load i32, i32* %d_int3248, align 4
  store i32 %33, i32* getelementptr inbounds (%struct.RandomizeVals, %struct.RandomizeVals* @pivals, i32 0, i32 3), align 4
  %34 = load i32, i32* getelementptr inbounds (%struct.RandomizeVals, %struct.RandomizeVals* @pivals, i32 0, i32 2), align 4
  %tobool49 = icmp ne i32 %34, 0
  br i1 %tobool49, label %if.then.50, label %if.end.52

if.then.50:                                       ; preds = %if.else.37
  %call51 = call i32 @g_random_int()
  store i32 %call51, i32* getelementptr inbounds (%struct.RandomizeVals, %struct.RandomizeVals* @pivals, i32 0, i32 3), align 4
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.50, %if.else.37
  %35 = load i32, i32* @rndm_type, align 4
  %cmp53 = icmp ne i32 %35, 2
  br i1 %cmp53, label %land.lhs.true, label %lor.lhs.false.60

land.lhs.true:                                    ; preds = %if.end.52
  %36 = load i32, i32* @rndm_type, align 4
  %cmp55 = icmp ne i32 %36, 3
  br i1 %cmp55, label %land.lhs.true.57, label %lor.lhs.false.60

land.lhs.true.57:                                 ; preds = %land.lhs.true
  %37 = load i32, i32* @rndm_type, align 4
  %cmp58 = icmp ne i32 %37, 1
  br i1 %cmp58, label %if.then.72, label %lor.lhs.false.60

lor.lhs.false.60:                                 ; preds = %land.lhs.true.57, %land.lhs.true, %if.end.52
  %38 = load double, double* getelementptr inbounds (%struct.RandomizeVals, %struct.RandomizeVals* @pivals, i32 0, i32 0), align 8
  %cmp61 = fcmp olt double %38, 1.000000e+00
  br i1 %cmp61, label %if.then.72, label %lor.lhs.false.63

lor.lhs.false.63:                                 ; preds = %lor.lhs.false.60
  %39 = load double, double* getelementptr inbounds (%struct.RandomizeVals, %struct.RandomizeVals* @pivals, i32 0, i32 0), align 8
  %cmp64 = fcmp ogt double %39, 1.000000e+02
  br i1 %cmp64, label %if.then.72, label %lor.lhs.false.66

lor.lhs.false.66:                                 ; preds = %lor.lhs.false.63
  %40 = load double, double* getelementptr inbounds (%struct.RandomizeVals, %struct.RandomizeVals* @pivals, i32 0, i32 1), align 8
  %cmp67 = fcmp olt double %40, 1.000000e+00
  br i1 %cmp67, label %if.then.72, label %lor.lhs.false.69

lor.lhs.false.69:                                 ; preds = %lor.lhs.false.66
  %41 = load double, double* getelementptr inbounds (%struct.RandomizeVals, %struct.RandomizeVals* @pivals, i32 0, i32 1), align 8
  %cmp70 = fcmp ogt double %41, 1.000000e+02
  br i1 %cmp70, label %if.then.72, label %if.end.73

if.then.72:                                       ; preds = %lor.lhs.false.69, %lor.lhs.false.66, %lor.lhs.false.63, %lor.lhs.false.60, %land.lhs.true.57
  store i32 1, i32* %status, align 4
  br label %if.end.73

if.end.73:                                        ; preds = %if.then.72, %lor.lhs.false.69
  br label %if.end.74

if.end.74:                                        ; preds = %if.end.73, %if.then.36
  br label %sw.epilog

sw.bb.75:                                         ; preds = %if.then.26
  %42 = load i32, i32* @rndm_type, align 4
  %sub76 = sub nsw i32 %42, 1
  %idxprom77 = sext i32 %sub76 to i64
  %arrayidx78 = getelementptr inbounds [3 x i8*], [3 x i8*]* @PLUG_IN_PROC, i32 0, i64 %idxprom77
  %43 = load i8*, i8** %arrayidx78, align 8
  %call79 = call i32 @gimp_procedural_db_get_data(i8* %43, i8* bitcast (%struct.RandomizeVals* @pivals to i8*))
  %44 = load i32, i32* getelementptr inbounds (%struct.RandomizeVals, %struct.RandomizeVals* @pivals, i32 0, i32 2), align 4
  %tobool80 = icmp ne i32 %44, 0
  br i1 %tobool80, label %if.then.81, label %if.end.83

if.then.81:                                       ; preds = %sw.bb.75
  %call82 = call i32 @g_random_int()
  store i32 %call82, i32* getelementptr inbounds (%struct.RandomizeVals, %struct.RandomizeVals* @pivals, i32 0, i32 3), align 4
  br label %if.end.83

if.end.83:                                        ; preds = %if.then.81, %sw.bb.75
  br label %sw.epilog

sw.default:                                       ; preds = %if.then.26
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.83, %if.end.74, %if.end.32
  %45 = load i32, i32* %status, align 4
  %cmp84 = icmp eq i32 %45, 3
  br i1 %cmp84, label %if.then.86, label %if.end.105

if.then.86:                                       ; preds = %sw.epilog
  %46 = load i32, i32* @rndm_type, align 4
  %sub87 = sub nsw i32 %46, 1
  %idxprom88 = sext i32 %sub87 to i64
  %arrayidx89 = getelementptr inbounds [3 x i8*], [3 x i8*]* @RNDM_NAME, i32 0, i64 %idxprom88
  %47 = load i8*, i8** %arrayidx89, align 8
  %call90 = call i8* @gettext(i8* %47) #7
  %call91 = call i32 (i8*, ...) @gimp_progress_init_printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.33, i32 0, i32 0), i8* %call90)
  %48 = load %struct._GRand*, %struct._GRand** @gr, align 8
  %49 = load i32, i32* getelementptr inbounds (%struct.RandomizeVals, %struct.RandomizeVals* @pivals, i32 0, i32 3), align 4
  call void @g_rand_set_seed(%struct._GRand* %48, i32 %49)
  %50 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @randomize(%struct._GimpDrawable* %50, %struct._GimpPreview* null)
  %51 = load i32, i32* %run_mode, align 4
  %cmp92 = icmp ne i32 %51, 1
  br i1 %cmp92, label %if.then.94, label %if.end.96

if.then.94:                                       ; preds = %if.then.86
  %call95 = call i32 @gimp_displays_flush()
  br label %if.end.96

if.end.96:                                        ; preds = %if.then.94, %if.then.86
  %52 = load i32, i32* %run_mode, align 4
  %cmp97 = icmp eq i32 %52, 0
  br i1 %cmp97, label %if.then.99, label %if.end.104

if.then.99:                                       ; preds = %if.end.96
  %53 = load i32, i32* @rndm_type, align 4
  %sub100 = sub nsw i32 %53, 1
  %idxprom101 = sext i32 %sub100 to i64
  %arrayidx102 = getelementptr inbounds [3 x i8*], [3 x i8*]* @PLUG_IN_PROC, i32 0, i64 %idxprom101
  %54 = load i8*, i8** %arrayidx102, align 8
  %call103 = call i32 @gimp_procedural_db_set_data(i8* %54, i8* bitcast (%struct.RandomizeVals* @pivals to i8*), i32 24)
  br label %if.end.104

if.end.104:                                       ; preds = %if.then.99, %if.end.96
  br label %if.end.105

if.end.105:                                       ; preds = %if.end.104, %sw.epilog
  br label %if.end.107

if.else.106:                                      ; preds = %lor.lhs.false.22
  store i32 0, i32* %status, align 4
  br label %if.end.107

if.end.107:                                       ; preds = %if.else.106, %if.end.105
  %55 = load %struct._GRand*, %struct._GRand** @gr, align 8
  call void @g_rand_free(%struct._GRand* %55)
  %56 = load i32, i32* %status, align 4
  store i32 %56, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  %57 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %57)
  br label %return

return:                                           ; preds = %if.end.107, %if.then.31
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

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

declare %struct._GimpDrawable* @gimp_drawable_get(i32) #1

declare %struct._GRand* @g_rand_new() #1

declare i32 @gimp_drawable_is_rgb(i32) #1

declare i32 @gimp_drawable_is_gray(i32) #1

declare i32 @gimp_drawable_is_indexed(i32) #1

declare void @gimp_tile_cache_ntiles(i64) #1

declare i32 @gimp_procedural_db_get_data(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @randomize_dialog(%struct._GimpDrawable* %drawable) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %dlg = alloca %struct._GtkWidget*, align 8
  %table = alloca %struct._GtkWidget*, align 8
  %label = alloca %struct._GtkWidget*, align 8
  %seed_hbox = alloca %struct._GtkWidget*, align 8
  %main_vbox = alloca %struct._GtkWidget*, align 8
  %preview = alloca %struct._GtkWidget*, align 8
  %adj = alloca %struct._GtkObject*, align 8
  %run = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  call void @gimp_ui_init(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.34, i32 0, i32 0), i32 0)
  %0 = load i32, i32* @rndm_type, align 4
  %sub = sub nsw i32 %0, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds [3 x i8*], [3 x i8*]* @RNDM_NAME, i32 0, i64 %idxprom
  %1 = load i8*, i8** %arrayidx, align 8
  %call = call i8* @gettext(i8* %1) #7
  %2 = load i32, i32* @rndm_type, align 4
  %sub1 = sub nsw i32 %2, 1
  %idxprom2 = sext i32 %sub1 to i64
  %arrayidx3 = getelementptr inbounds [3 x i8*], [3 x i8*]* @PLUG_IN_PROC, i32 0, i64 %idxprom2
  %3 = load i8*, i8** %arrayidx3, align 8
  %call4 = call %struct._GtkWidget* (i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) @gimp_dialog_new(i8* %call, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.35, i32 0, i32 0), %struct._GtkWidget* null, i32 0, void (i8*, i8*)* @gimp_standard_help_func, i8* %3, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.36, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i32 0, i32 0), i32 -5, i8* null)
  store %struct._GtkWidget* %call4, %struct._GtkWidget** %dlg, align 8
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %dlg, align 8
  %5 = bitcast %struct._GtkWidget* %4 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_dialog_get_type() #6
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call5)
  %6 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkDialog*
  call void (%struct._GtkDialog*, i32, ...) @gtk_dialog_set_alternative_button_order(%struct._GtkDialog* %6, i32 -5, i32 -6, i32 -1)
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %dlg, align 8
  %8 = bitcast %struct._GtkWidget* %7 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_window_get_type() #6
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call7)
  %9 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkWindow*
  call void @gimp_window_set_transient(%struct._GtkWindow* %9)
  %call9 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 12)
  store %struct._GtkWidget* %call9, %struct._GtkWidget** %main_vbox, align 8
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %11 = bitcast %struct._GtkWidget* %10 to %struct._GTypeInstance*
  %call10 = call i64 @gtk_container_get_type() #6
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call10)
  %12 = bitcast %struct._GTypeInstance* %call11 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %12, i32 12)
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %dlg, align 8
  %14 = bitcast %struct._GtkWidget* %13 to %struct._GTypeInstance*
  %call12 = call i64 @gtk_dialog_get_type() #6
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call12)
  %15 = bitcast %struct._GTypeInstance* %call13 to %struct._GtkDialog*
  %call14 = call %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog* %15)
  %16 = bitcast %struct._GtkWidget* %call14 to %struct._GTypeInstance*
  %call15 = call i64 @gtk_box_get_type() #6
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call15)
  %17 = bitcast %struct._GTypeInstance* %call16 to %struct._GtkBox*
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %17, %struct._GtkWidget* %18, i32 1, i32 1, i32 0)
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %19)
  %20 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call17 = call %struct._GtkWidget* @gimp_drawable_preview_new(%struct._GimpDrawable* %20, i32* null)
  store %struct._GtkWidget* %call17, %struct._GtkWidget** %preview, align 8
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %22 = bitcast %struct._GtkWidget* %21 to %struct._GTypeInstance*
  %call18 = call i64 @gtk_box_get_type() #6
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call18)
  %23 = bitcast %struct._GTypeInstance* %call19 to %struct._GtkBox*
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %23, %struct._GtkWidget* %24, i32 1, i32 1, i32 0)
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %25)
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %27 = bitcast %struct._GtkWidget* %26 to i8*
  %28 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %29 = bitcast %struct._GimpDrawable* %28 to i8*
  %call20 = call i64 @g_signal_connect_data(i8* %27, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.38, i32 0, i32 0), void ()* bitcast (void (%struct._GimpDrawable*, %struct._GimpPreview*)* @randomize to void ()*), i8* %29, void (i8*, %struct._GClosure*)* null, i32 2)
  %call21 = call %struct._GtkWidget* @gtk_table_new(i32 3, i32 3, i32 0)
  store %struct._GtkWidget* %call21, %struct._GtkWidget** %table, align 8
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %31 = bitcast %struct._GtkWidget* %30 to %struct._GTypeInstance*
  %call22 = call i64 @gtk_table_get_type() #6
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 %call22)
  %32 = bitcast %struct._GTypeInstance* %call23 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %32, i32 6)
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %34 = bitcast %struct._GtkWidget* %33 to %struct._GTypeInstance*
  %call24 = call i64 @gtk_table_get_type() #6
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 %call24)
  %35 = bitcast %struct._GTypeInstance* %call25 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %35, i32 6)
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %37 = bitcast %struct._GtkWidget* %36 to %struct._GTypeInstance*
  %call26 = call i64 @gtk_container_get_type() #6
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %37, i64 %call26)
  %38 = bitcast %struct._GTypeInstance* %call27 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %38, i32 12)
  %39 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %40 = bitcast %struct._GtkWidget* %39 to %struct._GTypeInstance*
  %call28 = call i64 @gtk_box_get_type() #6
  %call29 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %40, i64 %call28)
  %41 = bitcast %struct._GTypeInstance* %call29 to %struct._GtkBox*
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %41, %struct._GtkWidget* %42, i32 1, i32 1, i32 0)
  %43 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %43)
  %call30 = call %struct._GtkWidget* @gimp_random_seed_new(i32* getelementptr inbounds (%struct.RandomizeVals, %struct.RandomizeVals* @pivals, i32 0, i32 3), i32* getelementptr inbounds (%struct.RandomizeVals, %struct.RandomizeVals* @pivals, i32 0, i32 2))
  store %struct._GtkWidget* %call30, %struct._GtkWidget** %seed_hbox, align 8
  %44 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %45 = bitcast %struct._GtkWidget* %44 to %struct._GTypeInstance*
  %call31 = call i64 @gtk_table_get_type() #6
  %call32 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %45, i64 %call31)
  %46 = bitcast %struct._GTypeInstance* %call32 to %struct._GtkTable*
  %call33 = call i8* @gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.39, i32 0, i32 0)) #7
  %47 = load %struct._GtkWidget*, %struct._GtkWidget** %seed_hbox, align 8
  %call34 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %46, i32 0, i32 0, i8* %call33, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %47, i32 1, i32 1)
  store %struct._GtkWidget* %call34, %struct._GtkWidget** %label, align 8
  %48 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %49 = bitcast %struct._GtkWidget* %48 to %struct._GTypeInstance*
  %call35 = call i64 @gtk_label_get_type() #6
  %call36 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %49, i64 %call35)
  %50 = bitcast %struct._GTypeInstance* %call36 to %struct._GtkLabel*
  %51 = load %struct._GtkWidget*, %struct._GtkWidget** %seed_hbox, align 8
  %52 = bitcast %struct._GtkWidget* %51 to %struct._GTypeInstance*
  %call37 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %52, i64 80)
  %53 = bitcast %struct._GTypeInstance* %call37 to %struct._GObject*
  %call38 = call i8* @g_object_get_data(%struct._GObject* %53, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.40, i32 0, i32 0))
  %54 = bitcast i8* %call38 to %struct._GtkWidget*
  call void @gtk_label_set_mnemonic_widget(%struct._GtkLabel* %50, %struct._GtkWidget* %54)
  %55 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %56 = bitcast %struct._GtkWidget* %55 to %struct._GTypeInstance*
  %call39 = call i64 @gtk_table_get_type() #6
  %call40 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %56, i64 %call39)
  %57 = bitcast %struct._GTypeInstance* %call40 to %struct._GtkTable*
  %call41 = call i8* @gettext(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.41, i32 0, i32 0)) #7
  %58 = load double, double* getelementptr inbounds (%struct.RandomizeVals, %struct.RandomizeVals* @pivals, i32 0, i32 0), align 8
  %call42 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.42, i32 0, i32 0)) #7
  %call43 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %57, i32 0, i32 1, i8* %call41, i32 100, i32 0, double %58, double 1.000000e+00, double 1.000000e+02, double 1.000000e+00, double 1.000000e+01, i32 0, i32 1, double 0.000000e+00, double 0.000000e+00, i8* %call42, i8* null)
  store %struct._GtkObject* %call43, %struct._GtkObject** %adj, align 8
  %59 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %60 = bitcast %struct._GtkObject* %59 to i8*
  %call44 = call i64 @g_signal_connect_data(i8* %60, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.43, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_double_adjustment_update to void ()*), i8* bitcast (%struct.RandomizeVals* @pivals to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %61 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %62 = bitcast %struct._GtkObject* %61 to i8*
  %63 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %64 = bitcast %struct._GtkWidget* %63 to i8*
  %call45 = call i64 @g_signal_connect_data(i8* %62, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.43, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %64, void (i8*, %struct._GClosure*)* null, i32 2)
  %65 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %66 = bitcast %struct._GtkWidget* %65 to %struct._GTypeInstance*
  %call46 = call i64 @gtk_table_get_type() #6
  %call47 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %66, i64 %call46)
  %67 = bitcast %struct._GTypeInstance* %call47 to %struct._GtkTable*
  %call48 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.44, i32 0, i32 0)) #7
  %68 = load double, double* getelementptr inbounds (%struct.RandomizeVals, %struct.RandomizeVals* @pivals, i32 0, i32 1), align 8
  %call49 = call i8* @gettext(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.45, i32 0, i32 0)) #7
  %call50 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %67, i32 0, i32 2, i8* %call48, i32 100, i32 0, double %68, double 1.000000e+00, double 1.000000e+02, double 1.000000e+00, double 1.000000e+01, i32 0, i32 1, double 0.000000e+00, double 0.000000e+00, i8* %call49, i8* null)
  store %struct._GtkObject* %call50, %struct._GtkObject** %adj, align 8
  %69 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %70 = bitcast %struct._GtkObject* %69 to i8*
  %call51 = call i64 @g_signal_connect_data(i8* %70, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.43, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_double_adjustment_update to void ()*), i8* bitcast (double* getelementptr inbounds (%struct.RandomizeVals, %struct.RandomizeVals* @pivals, i32 0, i32 1) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %71 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %72 = bitcast %struct._GtkObject* %71 to i8*
  %73 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %74 = bitcast %struct._GtkWidget* %73 to i8*
  %call52 = call i64 @g_signal_connect_data(i8* %72, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.43, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %74, void (i8*, %struct._GClosure*)* null, i32 2)
  %75 = load %struct._GtkWidget*, %struct._GtkWidget** %dlg, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %75)
  %76 = load %struct._GtkWidget*, %struct._GtkWidget** %dlg, align 8
  %77 = bitcast %struct._GtkWidget* %76 to %struct._GTypeInstance*
  %call53 = call i64 @gimp_dialog_get_type() #6
  %call54 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %77, i64 %call53)
  %78 = bitcast %struct._GTypeInstance* %call54 to %struct._GimpDialog*
  %call55 = call i32 @gimp_dialog_run(%struct._GimpDialog* %78)
  %cmp = icmp eq i32 %call55, -5
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %run, align 4
  %79 = load %struct._GtkWidget*, %struct._GtkWidget** %dlg, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %79)
  %80 = load i32, i32* %run, align 4
  ret i32 %80
}

declare i32 @g_random_int() #1

declare i32 @gimp_progress_init_printf(i8*, ...) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #2

declare void @g_rand_set_seed(%struct._GRand*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @randomize(%struct._GimpDrawable* %drawable, %struct._GimpPreview* %preview) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %preview.addr = alloca %struct._GimpPreview*, align 8
  %srcPR = alloca %struct._GimpPixelRgn, align 8
  %destPR = alloca %struct._GimpPixelRgn, align 8
  %destPR2 = alloca %struct._GimpPixelRgn, align 8
  %sp = alloca %struct._GimpPixelRgn*, align 8
  %dp = alloca %struct._GimpPixelRgn*, align 8
  %tp = alloca %struct._GimpPixelRgn*, align 8
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %bytes = alloca i32, align 4
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
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %cnt = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %base = alloca double, align 8
  %inc178 = alloca double, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._GimpPreview* %preview, %struct._GimpPreview** %preview.addr, align 8
  %0 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %tobool = icmp ne %struct._GimpPreview* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  call void @gimp_preview_get_position(%struct._GimpPreview* %1, i32* %x, i32* %y)
  %2 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  call void @gimp_preview_get_size(%struct._GimpPreview* %2, i32* %width, i32* %height)
  br label %if.end.11

if.else:                                          ; preds = %entry
  %3 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %3, i32 0, i32 0
  %4 = load i32, i32* %drawable_id, align 4
  %call = call i32 @gimp_drawable_mask_intersect(i32 %4, i32* %x, i32* %y, i32* %width, i32* %height)
  %tobool9 = icmp ne i32 %call, 0
  br i1 %tobool9, label %if.end, label %if.then.10

if.then.10:                                       ; preds = %if.else
  br label %return

if.end:                                           ; preds = %if.else
  br label %if.end.11

if.end.11:                                        ; preds = %if.end, %if.then
  %5 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %bpp = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %5, i32 0, i32 3
  %6 = load i32, i32* %bpp, align 4
  store i32 %6, i32* %bytes, align 4
  %7 = load i32, i32* %width, align 4
  %add = add nsw i32 %7, 2
  %8 = load i32, i32* %bytes, align 4
  %mul = mul nsw i32 %add, %8
  %conv = sext i32 %mul to i64
  %call12 = call noalias i8* @g_malloc_n(i64 %conv, i64 1)
  store i8* %call12, i8** %prev_row, align 8
  %9 = load i32, i32* %width, align 4
  %add13 = add nsw i32 %9, 2
  %10 = load i32, i32* %bytes, align 4
  %mul14 = mul nsw i32 %add13, %10
  %conv15 = sext i32 %mul14 to i64
  %call16 = call noalias i8* @g_malloc_n(i64 %conv15, i64 1)
  store i8* %call16, i8** %cur_row, align 8
  %11 = load i32, i32* %width, align 4
  %add17 = add nsw i32 %11, 2
  %12 = load i32, i32* %bytes, align 4
  %mul18 = mul nsw i32 %add17, %12
  %conv19 = sext i32 %mul18 to i64
  %call20 = call noalias i8* @g_malloc_n(i64 %conv19, i64 1)
  store i8* %call20, i8** %next_row, align 8
  %13 = load i32, i32* %width, align 4
  %14 = load i32, i32* %bytes, align 4
  %mul21 = mul nsw i32 %13, %14
  %conv22 = sext i32 %mul21 to i64
  %call23 = call noalias i8* @g_malloc_n(i64 %conv22, i64 1)
  store i8* %call23, i8** %dest, align 8
  %15 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %16 = load i32, i32* %x, align 4
  %17 = load i32, i32* %y, align 4
  %18 = load i32, i32* %width, align 4
  %19 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %srcPR, %struct._GimpDrawable* %15, i32 %16, i32 %17, i32 %18, i32 %19, i32 0, i32 0)
  %20 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %21 = load i32, i32* %x, align 4
  %22 = load i32, i32* %y, align 4
  %23 = load i32, i32* %width, align 4
  %24 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %destPR, %struct._GimpDrawable* %20, i32 %21, i32 %22, i32 %23, i32 %24, i32 1, i32 1)
  %25 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %26 = load i32, i32* %x, align 4
  %27 = load i32, i32* %y, align 4
  %28 = load i32, i32* %width, align 4
  %29 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %destPR2, %struct._GimpDrawable* %25, i32 %26, i32 %27, i32 %28, i32 %29, i32 1, i32 1)
  store %struct._GimpPixelRgn* %srcPR, %struct._GimpPixelRgn** %sp, align 8
  store %struct._GimpPixelRgn* %destPR, %struct._GimpPixelRgn** %dp, align 8
  store %struct._GimpPixelRgn* null, %struct._GimpPixelRgn** %tp, align 8
  %30 = load i8*, i8** %prev_row, align 8
  %31 = load i32, i32* %bytes, align 4
  %idx.ext = sext i32 %31 to i64
  %add.ptr = getelementptr inbounds i8, i8* %30, i64 %idx.ext
  store i8* %add.ptr, i8** %pr, align 8
  %32 = load i8*, i8** %cur_row, align 8
  %33 = load i32, i32* %bytes, align 4
  %idx.ext24 = sext i32 %33 to i64
  %add.ptr25 = getelementptr inbounds i8, i8* %32, i64 %idx.ext24
  store i8* %add.ptr25, i8** %cr, align 8
  %34 = load i8*, i8** %next_row, align 8
  %35 = load i32, i32* %bytes, align 4
  %idx.ext26 = sext i32 %35 to i64
  %add.ptr27 = getelementptr inbounds i8, i8* %34, i64 %idx.ext26
  store i8* %add.ptr27, i8** %nr, align 8
  store i32 1, i32* %cnt, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.199, %if.end.11
  %36 = load i32, i32* %cnt, align 4
  %conv28 = sitofp i32 %36 to double
  %37 = load double, double* getelementptr inbounds (%struct.RandomizeVals, %struct.RandomizeVals* @pivals, i32 0, i32 1), align 8
  %cmp = fcmp ole double %conv28, %37
  br i1 %cmp, label %for.body, label %for.end.201

for.body:                                         ; preds = %for.cond
  %38 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %sp, align 8
  %39 = load i8*, i8** %pr, align 8
  %40 = load i32, i32* %x, align 4
  %41 = load i32, i32* %y, align 4
  %sub = sub nsw i32 %41, 1
  %42 = load i32, i32* %width, align 4
  call void @randomize_prepare_row(%struct._GimpPixelRgn* %38, i8* %39, i32 %40, i32 %sub, i32 %42)
  %43 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %sp, align 8
  %44 = load i8*, i8** %cr, align 8
  %45 = load i32, i32* %x, align 4
  %46 = load i32, i32* %y, align 4
  %47 = load i32, i32* %width, align 4
  call void @randomize_prepare_row(%struct._GimpPixelRgn* %43, i8* %44, i32 %45, i32 %46, i32 %47)
  %48 = load i32, i32* %y, align 4
  store i32 %48, i32* %row, align 4
  br label %for.cond.30

for.cond.30:                                      ; preds = %for.inc.186, %for.body
  %49 = load i32, i32* %row, align 4
  %50 = load i32, i32* %y, align 4
  %51 = load i32, i32* %height, align 4
  %add31 = add nsw i32 %50, %51
  %cmp32 = icmp slt i32 %49, %add31
  br i1 %cmp32, label %for.body.34, label %for.end.188

for.body.34:                                      ; preds = %for.cond.30
  %52 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %sp, align 8
  %53 = load i8*, i8** %nr, align 8
  %54 = load i32, i32* %x, align 4
  %55 = load i32, i32* %row, align 4
  %add35 = add nsw i32 %55, 1
  %56 = load i32, i32* %width, align 4
  call void @randomize_prepare_row(%struct._GimpPixelRgn* %52, i8* %53, i32 %54, i32 %add35, i32 %56)
  %57 = load i8*, i8** %dest, align 8
  store i8* %57, i8** %d, align 8
  store i32 0, i32* %col, align 4
  br label %for.cond.36

for.cond.36:                                      ; preds = %for.inc.168, %for.body.34
  %58 = load i32, i32* %col, align 4
  %59 = load i32, i32* %width, align 4
  %cmp37 = icmp slt i32 %58, %59
  br i1 %cmp37, label %for.body.39, label %for.end.170

for.body.39:                                      ; preds = %for.cond.36
  %60 = load %struct._GRand*, %struct._GRand** @gr, align 8
  %call40 = call i32 @g_rand_int_range(%struct._GRand* %60, i32 0, i32 100)
  %61 = load double, double* getelementptr inbounds (%struct.RandomizeVals, %struct.RandomizeVals* @pivals, i32 0, i32 0), align 8
  %conv41 = fptosi double %61 to i32
  %cmp42 = icmp sle i32 %call40, %conv41
  br i1 %cmp42, label %if.then.44, label %if.else.152

if.then.44:                                       ; preds = %for.body.39
  %62 = load i32, i32* @rndm_type, align 4
  switch i32 %62, label %sw.epilog.151 [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.51
    i32 3, label %sw.bb.120
  ]

sw.bb:                                            ; preds = %if.then.44
  store i32 0, i32* %j, align 4
  br label %for.cond.45

for.cond.45:                                      ; preds = %for.inc, %sw.bb
  %63 = load i32, i32* %j, align 4
  %64 = load i32, i32* %bytes, align 4
  %cmp46 = icmp slt i32 %63, %64
  br i1 %cmp46, label %for.body.48, label %for.end

for.body.48:                                      ; preds = %for.cond.45
  %65 = load %struct._GRand*, %struct._GRand** @gr, align 8
  %call49 = call i32 @g_rand_int_range(%struct._GRand* %65, i32 0, i32 256)
  %conv50 = trunc i32 %call49 to i8
  %66 = load i8*, i8** %d, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %incdec.ptr, i8** %d, align 8
  store i8 %conv50, i8* %66, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body.48
  %67 = load i32, i32* %j, align 4
  %inc = add nsw i32 %67, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.45

for.end:                                          ; preds = %for.cond.45
  br label %sw.epilog.151

sw.bb.51:                                         ; preds = %if.then.44
  %68 = load %struct._GRand*, %struct._GRand** @gr, align 8
  %call52 = call i32 @g_rand_int_range(%struct._GRand* %68, i32 0, i32 9)
  store i32 %call52, i32* %k, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.53

for.cond.53:                                      ; preds = %for.inc.117, %sw.bb.51
  %69 = load i32, i32* %j, align 4
  %70 = load i32, i32* %bytes, align 4
  %cmp54 = icmp slt i32 %69, %70
  br i1 %cmp54, label %for.body.56, label %for.end.119

for.body.56:                                      ; preds = %for.cond.53
  %71 = load i32, i32* %col, align 4
  %72 = load i32, i32* %bytes, align 4
  %mul57 = mul nsw i32 %71, %72
  %73 = load i32, i32* %j, align 4
  %add58 = add nsw i32 %mul57, %73
  store i32 %add58, i32* %i, align 4
  %74 = load i32, i32* %k, align 4
  switch i32 %74, label %sw.epilog [
    i32 0, label %sw.bb.59
    i32 1, label %sw.bb.64
    i32 2, label %sw.bb.70
    i32 3, label %sw.bb.77
    i32 4, label %sw.bb.84
    i32 5, label %sw.bb.90
    i32 6, label %sw.bb.97
    i32 7, label %sw.bb.104
    i32 8, label %sw.bb.110
  ]

sw.bb.59:                                         ; preds = %for.body.56
  %75 = load i32, i32* %i, align 4
  %76 = load i32, i32* %bytes, align 4
  %sub60 = sub nsw i32 %75, %76
  %idxprom = sext i32 %sub60 to i64
  %77 = load i8*, i8** %pr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %77, i64 %idxprom
  %78 = load i8, i8* %arrayidx, align 1
  %conv61 = zext i8 %78 to i32
  %conv62 = trunc i32 %conv61 to i8
  %79 = load i8*, i8** %d, align 8
  %incdec.ptr63 = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %incdec.ptr63, i8** %d, align 8
  store i8 %conv62, i8* %79, align 1
  br label %sw.epilog

sw.bb.64:                                         ; preds = %for.body.56
  %80 = load i32, i32* %i, align 4
  %idxprom65 = sext i32 %80 to i64
  %81 = load i8*, i8** %pr, align 8
  %arrayidx66 = getelementptr inbounds i8, i8* %81, i64 %idxprom65
  %82 = load i8, i8* %arrayidx66, align 1
  %conv67 = zext i8 %82 to i32
  %conv68 = trunc i32 %conv67 to i8
  %83 = load i8*, i8** %d, align 8
  %incdec.ptr69 = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %incdec.ptr69, i8** %d, align 8
  store i8 %conv68, i8* %83, align 1
  br label %sw.epilog

sw.bb.70:                                         ; preds = %for.body.56
  %84 = load i32, i32* %i, align 4
  %85 = load i32, i32* %bytes, align 4
  %add71 = add nsw i32 %84, %85
  %idxprom72 = sext i32 %add71 to i64
  %86 = load i8*, i8** %pr, align 8
  %arrayidx73 = getelementptr inbounds i8, i8* %86, i64 %idxprom72
  %87 = load i8, i8* %arrayidx73, align 1
  %conv74 = zext i8 %87 to i32
  %conv75 = trunc i32 %conv74 to i8
  %88 = load i8*, i8** %d, align 8
  %incdec.ptr76 = getelementptr inbounds i8, i8* %88, i32 1
  store i8* %incdec.ptr76, i8** %d, align 8
  store i8 %conv75, i8* %88, align 1
  br label %sw.epilog

sw.bb.77:                                         ; preds = %for.body.56
  %89 = load i32, i32* %i, align 4
  %90 = load i32, i32* %bytes, align 4
  %sub78 = sub nsw i32 %89, %90
  %idxprom79 = sext i32 %sub78 to i64
  %91 = load i8*, i8** %cr, align 8
  %arrayidx80 = getelementptr inbounds i8, i8* %91, i64 %idxprom79
  %92 = load i8, i8* %arrayidx80, align 1
  %conv81 = zext i8 %92 to i32
  %conv82 = trunc i32 %conv81 to i8
  %93 = load i8*, i8** %d, align 8
  %incdec.ptr83 = getelementptr inbounds i8, i8* %93, i32 1
  store i8* %incdec.ptr83, i8** %d, align 8
  store i8 %conv82, i8* %93, align 1
  br label %sw.epilog

sw.bb.84:                                         ; preds = %for.body.56
  %94 = load i32, i32* %i, align 4
  %idxprom85 = sext i32 %94 to i64
  %95 = load i8*, i8** %cr, align 8
  %arrayidx86 = getelementptr inbounds i8, i8* %95, i64 %idxprom85
  %96 = load i8, i8* %arrayidx86, align 1
  %conv87 = zext i8 %96 to i32
  %conv88 = trunc i32 %conv87 to i8
  %97 = load i8*, i8** %d, align 8
  %incdec.ptr89 = getelementptr inbounds i8, i8* %97, i32 1
  store i8* %incdec.ptr89, i8** %d, align 8
  store i8 %conv88, i8* %97, align 1
  br label %sw.epilog

sw.bb.90:                                         ; preds = %for.body.56
  %98 = load i32, i32* %i, align 4
  %99 = load i32, i32* %bytes, align 4
  %add91 = add nsw i32 %98, %99
  %idxprom92 = sext i32 %add91 to i64
  %100 = load i8*, i8** %cr, align 8
  %arrayidx93 = getelementptr inbounds i8, i8* %100, i64 %idxprom92
  %101 = load i8, i8* %arrayidx93, align 1
  %conv94 = zext i8 %101 to i32
  %conv95 = trunc i32 %conv94 to i8
  %102 = load i8*, i8** %d, align 8
  %incdec.ptr96 = getelementptr inbounds i8, i8* %102, i32 1
  store i8* %incdec.ptr96, i8** %d, align 8
  store i8 %conv95, i8* %102, align 1
  br label %sw.epilog

sw.bb.97:                                         ; preds = %for.body.56
  %103 = load i32, i32* %i, align 4
  %104 = load i32, i32* %bytes, align 4
  %sub98 = sub nsw i32 %103, %104
  %idxprom99 = sext i32 %sub98 to i64
  %105 = load i8*, i8** %nr, align 8
  %arrayidx100 = getelementptr inbounds i8, i8* %105, i64 %idxprom99
  %106 = load i8, i8* %arrayidx100, align 1
  %conv101 = zext i8 %106 to i32
  %conv102 = trunc i32 %conv101 to i8
  %107 = load i8*, i8** %d, align 8
  %incdec.ptr103 = getelementptr inbounds i8, i8* %107, i32 1
  store i8* %incdec.ptr103, i8** %d, align 8
  store i8 %conv102, i8* %107, align 1
  br label %sw.epilog

sw.bb.104:                                        ; preds = %for.body.56
  %108 = load i32, i32* %i, align 4
  %idxprom105 = sext i32 %108 to i64
  %109 = load i8*, i8** %nr, align 8
  %arrayidx106 = getelementptr inbounds i8, i8* %109, i64 %idxprom105
  %110 = load i8, i8* %arrayidx106, align 1
  %conv107 = zext i8 %110 to i32
  %conv108 = trunc i32 %conv107 to i8
  %111 = load i8*, i8** %d, align 8
  %incdec.ptr109 = getelementptr inbounds i8, i8* %111, i32 1
  store i8* %incdec.ptr109, i8** %d, align 8
  store i8 %conv108, i8* %111, align 1
  br label %sw.epilog

sw.bb.110:                                        ; preds = %for.body.56
  %112 = load i32, i32* %i, align 4
  %113 = load i32, i32* %bytes, align 4
  %add111 = add nsw i32 %112, %113
  %idxprom112 = sext i32 %add111 to i64
  %114 = load i8*, i8** %nr, align 8
  %arrayidx113 = getelementptr inbounds i8, i8* %114, i64 %idxprom112
  %115 = load i8, i8* %arrayidx113, align 1
  %conv114 = zext i8 %115 to i32
  %conv115 = trunc i32 %conv114 to i8
  %116 = load i8*, i8** %d, align 8
  %incdec.ptr116 = getelementptr inbounds i8, i8* %116, i32 1
  store i8* %incdec.ptr116, i8** %d, align 8
  store i8 %conv115, i8* %116, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.body.56, %sw.bb.110, %sw.bb.104, %sw.bb.97, %sw.bb.90, %sw.bb.84, %sw.bb.77, %sw.bb.70, %sw.bb.64, %sw.bb.59
  br label %for.inc.117

for.inc.117:                                      ; preds = %sw.epilog
  %117 = load i32, i32* %j, align 4
  %inc118 = add nsw i32 %117, 1
  store i32 %inc118, i32* %j, align 4
  br label %for.cond.53

for.end.119:                                      ; preds = %for.cond.53
  br label %sw.epilog.151

sw.bb.120:                                        ; preds = %if.then.44
  %118 = load %struct._GRand*, %struct._GRand** @gr, align 8
  %call121 = call i32 @g_rand_int_range(%struct._GRand* %118, i32 0, i32 10)
  store i32 %call121, i32* %k, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.122

for.cond.122:                                     ; preds = %for.inc.148, %sw.bb.120
  %119 = load i32, i32* %j, align 4
  %120 = load i32, i32* %bytes, align 4
  %cmp123 = icmp slt i32 %119, %120
  br i1 %cmp123, label %for.body.125, label %for.end.150

for.body.125:                                     ; preds = %for.cond.122
  %121 = load i32, i32* %col, align 4
  %122 = load i32, i32* %bytes, align 4
  %mul126 = mul nsw i32 %121, %122
  %123 = load i32, i32* %j, align 4
  %add127 = add nsw i32 %mul126, %123
  store i32 %add127, i32* %i, align 4
  %124 = load i32, i32* %k, align 4
  switch i32 %124, label %sw.default [
    i32 0, label %sw.bb.128
    i32 9, label %sw.bb.135
  ]

sw.bb.128:                                        ; preds = %for.body.125
  %125 = load i32, i32* %i, align 4
  %126 = load i32, i32* %bytes, align 4
  %sub129 = sub nsw i32 %125, %126
  %idxprom130 = sext i32 %sub129 to i64
  %127 = load i8*, i8** %pr, align 8
  %arrayidx131 = getelementptr inbounds i8, i8* %127, i64 %idxprom130
  %128 = load i8, i8* %arrayidx131, align 1
  %conv132 = zext i8 %128 to i32
  %conv133 = trunc i32 %conv132 to i8
  %129 = load i8*, i8** %d, align 8
  %incdec.ptr134 = getelementptr inbounds i8, i8* %129, i32 1
  store i8* %incdec.ptr134, i8** %d, align 8
  store i8 %conv133, i8* %129, align 1
  br label %sw.epilog.147

sw.bb.135:                                        ; preds = %for.body.125
  %130 = load i32, i32* %i, align 4
  %131 = load i32, i32* %bytes, align 4
  %add136 = add nsw i32 %130, %131
  %idxprom137 = sext i32 %add136 to i64
  %132 = load i8*, i8** %pr, align 8
  %arrayidx138 = getelementptr inbounds i8, i8* %132, i64 %idxprom137
  %133 = load i8, i8* %arrayidx138, align 1
  %conv139 = zext i8 %133 to i32
  %conv140 = trunc i32 %conv139 to i8
  %134 = load i8*, i8** %d, align 8
  %incdec.ptr141 = getelementptr inbounds i8, i8* %134, i32 1
  store i8* %incdec.ptr141, i8** %d, align 8
  store i8 %conv140, i8* %134, align 1
  br label %sw.epilog.147

sw.default:                                       ; preds = %for.body.125
  %135 = load i32, i32* %i, align 4
  %idxprom142 = sext i32 %135 to i64
  %136 = load i8*, i8** %pr, align 8
  %arrayidx143 = getelementptr inbounds i8, i8* %136, i64 %idxprom142
  %137 = load i8, i8* %arrayidx143, align 1
  %conv144 = zext i8 %137 to i32
  %conv145 = trunc i32 %conv144 to i8
  %138 = load i8*, i8** %d, align 8
  %incdec.ptr146 = getelementptr inbounds i8, i8* %138, i32 1
  store i8* %incdec.ptr146, i8** %d, align 8
  store i8 %conv145, i8* %138, align 1
  br label %sw.epilog.147

sw.epilog.147:                                    ; preds = %sw.default, %sw.bb.135, %sw.bb.128
  br label %for.inc.148

for.inc.148:                                      ; preds = %sw.epilog.147
  %139 = load i32, i32* %j, align 4
  %inc149 = add nsw i32 %139, 1
  store i32 %inc149, i32* %j, align 4
  br label %for.cond.122

for.end.150:                                      ; preds = %for.cond.122
  br label %sw.epilog.151

sw.epilog.151:                                    ; preds = %if.then.44, %for.end.150, %for.end.119, %for.end
  br label %if.end.167

if.else.152:                                      ; preds = %for.body.39
  store i32 0, i32* %j, align 4
  br label %for.cond.153

for.cond.153:                                     ; preds = %for.inc.164, %if.else.152
  %140 = load i32, i32* %j, align 4
  %141 = load i32, i32* %bytes, align 4
  %cmp154 = icmp slt i32 %140, %141
  br i1 %cmp154, label %for.body.156, label %for.end.166

for.body.156:                                     ; preds = %for.cond.153
  %142 = load i32, i32* %col, align 4
  %143 = load i32, i32* %bytes, align 4
  %mul157 = mul nsw i32 %142, %143
  %144 = load i32, i32* %j, align 4
  %add158 = add nsw i32 %mul157, %144
  %idxprom159 = sext i32 %add158 to i64
  %145 = load i8*, i8** %cr, align 8
  %arrayidx160 = getelementptr inbounds i8, i8* %145, i64 %idxprom159
  %146 = load i8, i8* %arrayidx160, align 1
  %conv161 = zext i8 %146 to i32
  %conv162 = trunc i32 %conv161 to i8
  %147 = load i8*, i8** %d, align 8
  %incdec.ptr163 = getelementptr inbounds i8, i8* %147, i32 1
  store i8* %incdec.ptr163, i8** %d, align 8
  store i8 %conv162, i8* %147, align 1
  br label %for.inc.164

for.inc.164:                                      ; preds = %for.body.156
  %148 = load i32, i32* %j, align 4
  %inc165 = add nsw i32 %148, 1
  store i32 %inc165, i32* %j, align 4
  br label %for.cond.153

for.end.166:                                      ; preds = %for.cond.153
  br label %if.end.167

if.end.167:                                       ; preds = %for.end.166, %sw.epilog.151
  br label %for.inc.168

for.inc.168:                                      ; preds = %if.end.167
  %149 = load i32, i32* %col, align 4
  %inc169 = add nsw i32 %149, 1
  store i32 %inc169, i32* %col, align 4
  br label %for.cond.36

for.end.170:                                      ; preds = %for.cond.36
  %150 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %dp, align 8
  %151 = load i8*, i8** %dest, align 8
  %152 = load i32, i32* %x, align 4
  %153 = load i32, i32* %row, align 4
  %154 = load i32, i32* %width, align 4
  call void @gimp_pixel_rgn_set_row(%struct._GimpPixelRgn* %150, i8* %151, i32 %152, i32 %153, i32 %154)
  %155 = load i8*, i8** %pr, align 8
  store i8* %155, i8** %tmp, align 8
  %156 = load i8*, i8** %cr, align 8
  store i8* %156, i8** %pr, align 8
  %157 = load i8*, i8** %nr, align 8
  store i8* %157, i8** %cr, align 8
  %158 = load i8*, i8** %tmp, align 8
  store i8* %158, i8** %nr, align 8
  %159 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %tobool171 = icmp ne %struct._GimpPreview* %159, null
  br i1 %tobool171, label %if.end.185, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.end.170
  %160 = load i32, i32* %row, align 4
  %rem = srem i32 %160, 12
  %cmp172 = icmp eq i32 %rem, 0
  br i1 %cmp172, label %if.then.174, label %if.end.185

if.then.174:                                      ; preds = %land.lhs.true
  %161 = load i32, i32* %cnt, align 4
  %conv176 = sitofp i32 %161 to double
  %162 = load double, double* getelementptr inbounds (%struct.RandomizeVals, %struct.RandomizeVals* @pivals, i32 0, i32 1), align 8
  %div = fdiv double %conv176, %162
  store double %div, double* %base, align 8
  %163 = load i32, i32* %row, align 4
  %conv179 = sitofp i32 %163 to double
  %164 = load i32, i32* %height, align 4
  %conv180 = sitofp i32 %164 to double
  %165 = load double, double* getelementptr inbounds (%struct.RandomizeVals, %struct.RandomizeVals* @pivals, i32 0, i32 1), align 8
  %mul181 = fmul double %conv180, %165
  %div182 = fdiv double %conv179, %mul181
  store double %div182, double* %inc178, align 8
  %166 = load double, double* %base, align 8
  %167 = load double, double* %inc178, align 8
  %add183 = fadd double %166, %167
  %call184 = call i32 @gimp_progress_update(double %add183)
  br label %if.end.185

if.end.185:                                       ; preds = %if.then.174, %land.lhs.true, %for.end.170
  br label %for.inc.186

for.inc.186:                                      ; preds = %if.end.185
  %168 = load i32, i32* %row, align 4
  %inc187 = add nsw i32 %168, 1
  store i32 %inc187, i32* %row, align 4
  br label %for.cond.30

for.end.188:                                      ; preds = %for.cond.30
  %169 = load i32, i32* %cnt, align 4
  %conv189 = sitofp i32 %169 to double
  %170 = load double, double* getelementptr inbounds (%struct.RandomizeVals, %struct.RandomizeVals* @pivals, i32 0, i32 1), align 8
  %cmp190 = fcmp olt double %conv189, %170
  br i1 %cmp190, label %if.then.192, label %if.end.198

if.then.192:                                      ; preds = %for.end.188
  %171 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %tp, align 8
  %cmp193 = icmp ne %struct._GimpPixelRgn* %171, null
  br i1 %cmp193, label %if.then.195, label %if.else.196

if.then.195:                                      ; preds = %if.then.192
  %172 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %dp, align 8
  store %struct._GimpPixelRgn* %172, %struct._GimpPixelRgn** %tp, align 8
  %173 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %sp, align 8
  store %struct._GimpPixelRgn* %173, %struct._GimpPixelRgn** %dp, align 8
  %174 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %tp, align 8
  store %struct._GimpPixelRgn* %174, %struct._GimpPixelRgn** %sp, align 8
  br label %if.end.197

if.else.196:                                      ; preds = %if.then.192
  store %struct._GimpPixelRgn* %srcPR, %struct._GimpPixelRgn** %tp, align 8
  store %struct._GimpPixelRgn* %destPR, %struct._GimpPixelRgn** %sp, align 8
  store %struct._GimpPixelRgn* %destPR2, %struct._GimpPixelRgn** %dp, align 8
  br label %if.end.197

if.end.197:                                       ; preds = %if.else.196, %if.then.195
  br label %if.end.198

if.end.198:                                       ; preds = %if.end.197, %for.end.188
  br label %for.inc.199

for.inc.199:                                      ; preds = %if.end.198
  %175 = load i32, i32* %cnt, align 4
  %inc200 = add nsw i32 %175, 1
  store i32 %inc200, i32* %cnt, align 4
  br label %for.cond

for.end.201:                                      ; preds = %for.cond
  %176 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %tobool202 = icmp ne %struct._GimpPreview* %176, null
  br i1 %tobool202, label %if.end.205, label %if.then.203

if.then.203:                                      ; preds = %for.end.201
  %call204 = call i32 @gimp_progress_update(double 1.000000e+00)
  br label %if.end.205

if.end.205:                                       ; preds = %if.then.203, %for.end.201
  %177 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %tobool206 = icmp ne %struct._GimpPreview* %177, null
  br i1 %tobool206, label %if.then.207, label %if.else.210

if.then.207:                                      ; preds = %if.end.205
  %178 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %179 = bitcast %struct._GimpPreview* %178 to %struct._GTypeInstance*
  %call208 = call i64 @gimp_drawable_preview_get_type() #6
  %call209 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %179, i64 %call208)
  %180 = bitcast %struct._GTypeInstance* %call209 to %struct._GimpDrawablePreview*
  %181 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %dp, align 8
  call void @gimp_drawable_preview_draw_region(%struct._GimpDrawablePreview* %180, %struct._GimpPixelRgn* %181)
  br label %if.end.215

if.else.210:                                      ; preds = %if.end.205
  %182 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  call void @gimp_drawable_flush(%struct._GimpDrawable* %182)
  %183 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id211 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %183, i32 0, i32 0
  %184 = load i32, i32* %drawable_id211, align 4
  %call212 = call i32 @gimp_drawable_merge_shadow(i32 %184, i32 1)
  %185 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id213 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %185, i32 0, i32 0
  %186 = load i32, i32* %drawable_id213, align 4
  %187 = load i32, i32* %x, align 4
  %188 = load i32, i32* %y, align 4
  %189 = load i32, i32* %width, align 4
  %190 = load i32, i32* %height, align 4
  %call214 = call i32 @gimp_drawable_update(i32 %186, i32 %187, i32 %188, i32 %189, i32 %190)
  br label %if.end.215

if.end.215:                                       ; preds = %if.else.210, %if.then.207
  %191 = load i8*, i8** %prev_row, align 8
  call void @g_free(i8* %191)
  %192 = load i8*, i8** %cur_row, align 8
  call void @g_free(i8* %192)
  %193 = load i8*, i8** %next_row, align 8
  call void @g_free(i8* %193)
  %194 = load i8*, i8** %dest, align 8
  call void @g_free(i8* %194)
  br label %return

return:                                           ; preds = %if.end.215, %if.then.10
  ret void
}

declare i32 @gimp_displays_flush() #1

declare i32 @gimp_procedural_db_set_data(i8*, i8*, i32) #1

declare void @g_rand_free(%struct._GRand*) #1

declare void @gimp_drawable_detach(%struct._GimpDrawable*) #1

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

declare %struct._GtkWidget* @gimp_random_seed_new(i32*, i32*) #1

declare %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable*, i32, i32, i8*, float, float, %struct._GtkWidget*, i32, i32) #1

declare void @gtk_label_set_mnemonic_widget(%struct._GtkLabel*, %struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_label_get_type() #3

declare i8* @g_object_get_data(%struct._GObject*, i8*) #1

declare %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable*, i32, i32, i8*, i32, i32, double, double, double, double, double, i32, i32, double, double, i8*, i8*) #1

declare void @gimp_double_adjustment_update(%struct._GtkAdjustment*, i8*) #1

declare void @gimp_preview_invalidate(%struct._GimpPreview*) #1

declare i32 @gimp_dialog_run(%struct._GimpDialog*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_dialog_get_type() #3

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

declare void @gimp_preview_get_position(%struct._GimpPreview*, i32*, i32*) #1

declare void @gimp_preview_get_size(%struct._GimpPreview*, i32*, i32*) #1

declare i32 @gimp_drawable_mask_intersect(i32, i32*, i32*, i32*, i32*) #1

declare noalias i8* @g_malloc_n(i64, i64) #1

declare void @gimp_pixel_rgn_init(%struct._GimpPixelRgn*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: inlinehint nounwind uwtable
define internal void @randomize_prepare_row(%struct._GimpPixelRgn* %pixel_rgn, i8* %data, i32 %x, i32 %y, i32 %w) #5 {
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
  %cmp = icmp sle i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pixel_rgn.addr, align 8
  %2 = load i8*, i8** %data.addr, align 8
  %3 = load i32, i32* %x.addr, align 4
  %4 = load i32, i32* %y.addr, align 4
  %add = add nsw i32 %4, 1
  %5 = load i32, i32* %w.addr, align 4
  call void @gimp_pixel_rgn_get_row(%struct._GimpPixelRgn* %1, i8* %2, i32 %3, i32 %add, i32 %5)
  br label %if.end.4

if.else:                                          ; preds = %entry
  %6 = load i32, i32* %y.addr, align 4
  %7 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pixel_rgn.addr, align 8
  %h = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %7, i32 0, i32 7
  %8 = load i32, i32* %h, align 4
  %cmp1 = icmp sge i32 %6, %8
  br i1 %cmp1, label %if.then.2, label %if.else.3

if.then.2:                                        ; preds = %if.else
  %9 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pixel_rgn.addr, align 8
  %10 = load i8*, i8** %data.addr, align 8
  %11 = load i32, i32* %x.addr, align 4
  %12 = load i32, i32* %y.addr, align 4
  %sub = sub nsw i32 %12, 1
  %13 = load i32, i32* %w.addr, align 4
  call void @gimp_pixel_rgn_get_row(%struct._GimpPixelRgn* %9, i8* %10, i32 %11, i32 %sub, i32 %13)
  br label %if.end

if.else.3:                                        ; preds = %if.else
  %14 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pixel_rgn.addr, align 8
  %15 = load i8*, i8** %data.addr, align 8
  %16 = load i32, i32* %x.addr, align 4
  %17 = load i32, i32* %y.addr, align 4
  %18 = load i32, i32* %w.addr, align 4
  call void @gimp_pixel_rgn_get_row(%struct._GimpPixelRgn* %14, i8* %15, i32 %16, i32 %17, i32 %18)
  br label %if.end

if.end:                                           ; preds = %if.else.3, %if.then.2
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %if.then
  store i32 0, i32* %b, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.4
  %19 = load i32, i32* %b, align 4
  %20 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pixel_rgn.addr, align 8
  %bpp = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %20, i32 0, i32 2
  %21 = load i32, i32* %bpp, align 4
  %cmp5 = icmp slt i32 %19, %21
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %22 = load i32, i32* %b, align 4
  %idxprom = sext i32 %22 to i64
  %23 = load i8*, i8** %data.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %23, i64 %idxprom
  %24 = load i8, i8* %arrayidx, align 1
  %25 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pixel_rgn.addr, align 8
  %bpp6 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %25, i32 0, i32 2
  %26 = load i32, i32* %bpp6, align 4
  %sub7 = sub nsw i32 0, %26
  %27 = load i32, i32* %b, align 4
  %add8 = add nsw i32 %sub7, %27
  %idxprom9 = sext i32 %add8 to i64
  %28 = load i8*, i8** %data.addr, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %28, i64 %idxprom9
  store i8 %24, i8* %arrayidx10, align 1
  %29 = load i32, i32* %w.addr, align 4
  %sub11 = sub nsw i32 %29, 1
  %30 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pixel_rgn.addr, align 8
  %bpp12 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %30, i32 0, i32 2
  %31 = load i32, i32* %bpp12, align 4
  %mul = mul nsw i32 %sub11, %31
  %32 = load i32, i32* %b, align 4
  %add13 = add nsw i32 %mul, %32
  %idxprom14 = sext i32 %add13 to i64
  %33 = load i8*, i8** %data.addr, align 8
  %arrayidx15 = getelementptr inbounds i8, i8* %33, i64 %idxprom14
  %34 = load i8, i8* %arrayidx15, align 1
  %35 = load i32, i32* %w.addr, align 4
  %36 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pixel_rgn.addr, align 8
  %bpp16 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %36, i32 0, i32 2
  %37 = load i32, i32* %bpp16, align 4
  %mul17 = mul nsw i32 %35, %37
  %38 = load i32, i32* %b, align 4
  %add18 = add nsw i32 %mul17, %38
  %idxprom19 = sext i32 %add18 to i64
  %39 = load i8*, i8** %data.addr, align 8
  %arrayidx20 = getelementptr inbounds i8, i8* %39, i64 %idxprom19
  store i8 %34, i8* %arrayidx20, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %40 = load i32, i32* %b, align 4
  %inc = add nsw i32 %40, 1
  store i32 %inc, i32* %b, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare i32 @g_rand_int_range(%struct._GRand*, i32, i32) #1

declare void @gimp_pixel_rgn_set_row(%struct._GimpPixelRgn*, i8*, i32, i32, i32) #1

declare i32 @gimp_progress_update(double) #1

declare void @gimp_drawable_preview_draw_region(%struct._GimpDrawablePreview*, %struct._GimpPixelRgn*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_drawable_preview_get_type() #3

declare void @gimp_drawable_flush(%struct._GimpDrawable*) #1

declare i32 @gimp_drawable_merge_shadow(i32, i32) #1

declare i32 @gimp_drawable_update(i32, i32, i32, i32, i32) #1

declare void @g_free(i8*) #1

declare void @gimp_pixel_rgn_get_row(%struct._GimpPixelRgn*, i8*, i32, i32, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind }
attributes #8 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
