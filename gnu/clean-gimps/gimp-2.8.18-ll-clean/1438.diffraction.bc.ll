; ModuleID = './plug-ins/common/diffraction.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpPlugInInfo = type { void ()*, void ()*, void ()*, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* }
%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpParamDef = type { i32, i8*, i8* }
%struct.diffraction_vals_t = type { double, double, double, double, double, double, double, double, double, double, double, double }
%struct.diffraction_interface_t = type { %struct._GtkWidget*, %struct._GtkWidget*, [12288 x i8] }
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
%struct._GimpDrawable = type { i32, i32, i32, i32, i32, i32, %struct._GimpTile*, %struct._GimpTile* }
%struct._GimpTile = type { i32, i32, i32, i32, i16, i8, i8*, %struct._GimpDrawable* }
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
%struct._GtkFrame = type { %struct._GtkBin, %struct._GtkWidget*, i16, float, float, %struct._GdkRectangle }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GtkNotebook = type { %struct._GtkContainer, i8*, %struct._GList*, %struct._GList*, %struct._GList*, %struct._GtkWidget*, %struct._GdkDrawable*, i32, i16, i16, i24 }
%struct._GtkTable = type { %struct._GtkContainer, %struct._GList*, %struct._GtkTableRowCol*, %struct._GtkTableRowCol*, i16, i16, i16, i16, i8 }
%struct._GtkTableRowCol = type { i16, i16, i16, i8 }
%struct._GimpDialog = type { %struct._GtkDialog }
%struct._GimpRgnIterator = type opaque
%struct.DiffractionParam_t = type { double, double, i32, i32 }
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._GtkProgressBar = type { %struct._GtkProgress, i32, i32, i32, i32, i32, i32, i32, double, i8 }
%struct._GtkProgress = type { %struct._GtkWidget, %struct._GtkAdjustment*, %struct._GdkDrawable*, i8*, float, float, i8 }
%struct._GimpPreviewArea = type { %struct._GtkDrawingArea, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8* }
%struct._GtkDrawingArea = type { %struct._GtkWidget, i8* }

@PLUG_IN_INFO = constant %struct._GimpPlugInInfo { void ()* null, void ()* null, void ()* @query, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* @run }, align 8
@query.args = internal constant [15 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i32 0, i32 0) }, %struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.15, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.17, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.19, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.21, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.23, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.25, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.27, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.29, i32 0, i32 0) }], align 16
@.str = private unnamed_addr constant [9 x i8] c"run-mode\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"The run mode { RUN-INTERACTIVE (0), RUN-NONINTERACTIVE (1) }\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"Input image\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"drawable\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"Input drawable\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"lam-r\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"Light frequency (red)\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"lam-g\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"Light frequency (green)\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"lam-b\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"Light frequency (blue)\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"contour-r\00", align 1
@.str.13 = private unnamed_addr constant [25 x i8] c"Number of contours (red)\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"contour-g\00", align 1
@.str.15 = private unnamed_addr constant [27 x i8] c"Number of contours (green)\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"contour-b\00", align 1
@.str.17 = private unnamed_addr constant [26 x i8] c"Number of contours (blue)\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"edges-r\00", align 1
@.str.19 = private unnamed_addr constant [28 x i8] c"Number of sharp edges (red)\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"edges-g\00", align 1
@.str.21 = private unnamed_addr constant [30 x i8] c"Number of sharp edges (green)\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"edges-b\00", align 1
@.str.23 = private unnamed_addr constant [29 x i8] c"Number of sharp edges (blue)\00", align 1
@.str.24 = private unnamed_addr constant [11 x i8] c"brightness\00", align 1
@.str.25 = private unnamed_addr constant [46 x i8] c"Brightness and shifting/fattening of contours\00", align 1
@.str.26 = private unnamed_addr constant [11 x i8] c"scattering\00", align 1
@.str.27 = private unnamed_addr constant [31 x i8] c"Scattering (Speed vs. quality)\00", align 1
@.str.28 = private unnamed_addr constant [13 x i8] c"polarization\00", align 1
@.str.29 = private unnamed_addr constant [13 x i8] c"Polarization\00", align 1
@.str.30 = private unnamed_addr constant [20 x i8] c"plug-in-diffraction\00", align 1
@.str.31 = private unnamed_addr constant [30 x i8] c"Generate diffraction patterns\00", align 1
@.str.32 = private unnamed_addr constant [49 x i8] c"Help?  What help?  Real men do not need help :-)\00", align 1
@.str.33 = private unnamed_addr constant [23 x i8] c"Federico Mena Quintero\00", align 1
@.str.34 = private unnamed_addr constant [40 x i8] c"Federico Mena Quintero & David Bleecker\00", align 1
@.str.35 = private unnamed_addr constant [16 x i8] c"April 1997, 0.5\00", align 1
@.str.36 = private unnamed_addr constant [25 x i8] c"_Diffraction Patterns...\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"RGB*\00", align 1
@.str.38 = private unnamed_addr constant [31 x i8] c"<Image>/Filters/Render/Pattern\00", align 1
@run.values = internal global [1 x %struct._GimpParam] zeroinitializer, align 16
@.str.39 = private unnamed_addr constant [20 x i8] c"gimp20-std-plug-ins\00", align 1
@.str.40 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@dvals = internal global %struct.diffraction_vals_t { double 8.150000e-01, double 1.221000e+00, double 1.123000e+00, double 8.210000e-01, double 8.210000e-01, double 9.740000e-01, double 6.100000e-01, double 6.770000e-01, double 6.360000e-01, double 6.600000e-02, double 3.712600e+01, double -4.730000e-01 }, align 8
@cos_lut = internal global [101 x double] zeroinitializer, align 16
@param_lut1 = internal global [101 x double] zeroinitializer, align 16
@param_lut2 = internal global [101 x double] zeroinitializer, align 16
@.str.41 = private unnamed_addr constant [12 x i8] c"diffraction\00", align 1
@.str.42 = private unnamed_addr constant [21 x i8] c"Diffraction Patterns\00", align 1
@.str.43 = private unnamed_addr constant [17 x i8] c"gimp-diffraction\00", align 1
@.str.44 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.45 = private unnamed_addr constant [7 x i8] c"gtk-ok\00", align 1
@dint = internal global %struct.diffraction_interface_t zeroinitializer, align 8
@.str.46 = private unnamed_addr constant [10 x i8] c"_Preview!\00", align 1
@.str.47 = private unnamed_addr constant [8 x i8] c"clicked\00", align 1
@.str.48 = private unnamed_addr constant [6 x i8] c"_Red:\00", align 1
@.str.49 = private unnamed_addr constant [14 x i8] c"value-changed\00", align 1
@.str.50 = private unnamed_addr constant [8 x i8] c"_Green:\00", align 1
@.str.51 = private unnamed_addr constant [7 x i8] c"_Blue:\00", align 1
@.str.52 = private unnamed_addr constant [12 x i8] c"Frequencies\00", align 1
@.str.53 = private unnamed_addr constant [9 x i8] c"Contours\00", align 1
@.str.54 = private unnamed_addr constant [12 x i8] c"Sharp Edges\00", align 1
@.str.55 = private unnamed_addr constant [13 x i8] c"_Brightness:\00", align 1
@.str.56 = private unnamed_addr constant [13 x i8] c"Sc_attering:\00", align 1
@.str.57 = private unnamed_addr constant [15 x i8] c"Po_larization:\00", align 1
@.str.58 = private unnamed_addr constant [14 x i8] c"Other Options\00", align 1
@.str.59 = private unnamed_addr constant [29 x i8] c"Creating diffraction pattern\00", align 1

; Function Attrs: nounwind uwtable
define internal void @query() #0 {
entry:
  call void @gimp_install_procedure(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i32 0, i32 0), i32 1, i32 15, i32 0, %struct._GimpParamDef* getelementptr inbounds ([15 x %struct._GimpParamDef], [15 x %struct._GimpParamDef]* @query.args, i32 0, i32 0), %struct._GimpParamDef* null)
  %call = call i32 @gimp_plugin_menu_register(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.38, i32 0, i32 0))
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
  %active_drawable = alloca %struct._GimpDrawable*, align 8
  %status = alloca i32, align 4
  %run_mode = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 8
  store i32 %nparams, i32* %nparams.addr, align 4
  store %struct._GimpParam* %param, %struct._GimpParam** %param.addr, align 8
  store i32* %nreturn_vals, i32** %nreturn_vals.addr, align 8
  store %struct._GimpParam** %return_vals, %struct._GimpParam*** %return_vals.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %call = call i8* @gimp_locale_directory() #4
  %call1 = call i8* @bindtextdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.39, i32 0, i32 0), i8* %call) #5
  %call2 = call i8* @bind_textdomain_codeset(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i32 0, i32 0)) #5
  %call3 = call i8* @textdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.39, i32 0, i32 0)) #5
  br label %do.end

do.end:                                           ; preds = %do.body
  call void @diff_init_luts()
  store i32 3, i32* %status, align 4
  %0 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %0, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_int32 = bitcast %union._GimpParamData* %data to i32*
  %1 = load i32, i32* %d_int32, align 4
  store i32 %1, i32* %run_mode, align 4
  store i32 21, i32* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 0), align 4
  %2 = load i32, i32* %status, align 4
  store i32 %2, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  %3 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 1, i32* %3, align 4
  %4 = load %struct._GimpParam**, %struct._GimpParam*** %return_vals.addr, align 8
  store %struct._GimpParam* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i32 0), %struct._GimpParam** %4, align 8
  %5 = load i32, i32* %run_mode, align 4
  switch i32 %5, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.6
    i32 2, label %sw.bb.47
  ]

sw.bb:                                            ; preds = %do.end
  %call4 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.30, i32 0, i32 0), i8* bitcast (%struct.diffraction_vals_t* @dvals to i8*))
  %call5 = call i32 @diffraction_dialog()
  %tobool = icmp ne i32 %call5, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb
  br label %return

if.end:                                           ; preds = %sw.bb
  br label %sw.epilog

sw.bb.6:                                          ; preds = %do.end
  %6 = load i32, i32* %nparams.addr, align 4
  %cmp = icmp ne i32 %6, 15
  br i1 %cmp, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %sw.bb.6
  store i32 1, i32* %status, align 4
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %sw.bb.6
  %7 = load i32, i32* %status, align 4
  %cmp9 = icmp eq i32 %7, 3
  br i1 %cmp9, label %if.then.10, label %if.end.46

if.then.10:                                       ; preds = %if.end.8
  %8 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx11 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %8, i64 3
  %data12 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx11, i32 0, i32 1
  %d_float = bitcast %union._GimpParamData* %data12 to double*
  %9 = load double, double* %d_float, align 8
  store double %9, double* getelementptr inbounds (%struct.diffraction_vals_t, %struct.diffraction_vals_t* @dvals, i32 0, i32 0), align 8
  %10 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx13 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %10, i64 4
  %data14 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx13, i32 0, i32 1
  %d_float15 = bitcast %union._GimpParamData* %data14 to double*
  %11 = load double, double* %d_float15, align 8
  store double %11, double* getelementptr inbounds (%struct.diffraction_vals_t, %struct.diffraction_vals_t* @dvals, i32 0, i32 1), align 8
  %12 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx16 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %12, i64 5
  %data17 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx16, i32 0, i32 1
  %d_float18 = bitcast %union._GimpParamData* %data17 to double*
  %13 = load double, double* %d_float18, align 8
  store double %13, double* getelementptr inbounds (%struct.diffraction_vals_t, %struct.diffraction_vals_t* @dvals, i32 0, i32 2), align 8
  %14 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx19 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %14, i64 6
  %data20 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx19, i32 0, i32 1
  %d_float21 = bitcast %union._GimpParamData* %data20 to double*
  %15 = load double, double* %d_float21, align 8
  store double %15, double* getelementptr inbounds (%struct.diffraction_vals_t, %struct.diffraction_vals_t* @dvals, i32 0, i32 3), align 8
  %16 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx22 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %16, i64 7
  %data23 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx22, i32 0, i32 1
  %d_float24 = bitcast %union._GimpParamData* %data23 to double*
  %17 = load double, double* %d_float24, align 8
  store double %17, double* getelementptr inbounds (%struct.diffraction_vals_t, %struct.diffraction_vals_t* @dvals, i32 0, i32 4), align 8
  %18 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx25 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %18, i64 8
  %data26 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx25, i32 0, i32 1
  %d_float27 = bitcast %union._GimpParamData* %data26 to double*
  %19 = load double, double* %d_float27, align 8
  store double %19, double* getelementptr inbounds (%struct.diffraction_vals_t, %struct.diffraction_vals_t* @dvals, i32 0, i32 5), align 8
  %20 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx28 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %20, i64 9
  %data29 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx28, i32 0, i32 1
  %d_float30 = bitcast %union._GimpParamData* %data29 to double*
  %21 = load double, double* %d_float30, align 8
  store double %21, double* getelementptr inbounds (%struct.diffraction_vals_t, %struct.diffraction_vals_t* @dvals, i32 0, i32 6), align 8
  %22 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx31 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %22, i64 10
  %data32 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx31, i32 0, i32 1
  %d_float33 = bitcast %union._GimpParamData* %data32 to double*
  %23 = load double, double* %d_float33, align 8
  store double %23, double* getelementptr inbounds (%struct.diffraction_vals_t, %struct.diffraction_vals_t* @dvals, i32 0, i32 7), align 8
  %24 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx34 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %24, i64 11
  %data35 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx34, i32 0, i32 1
  %d_float36 = bitcast %union._GimpParamData* %data35 to double*
  %25 = load double, double* %d_float36, align 8
  store double %25, double* getelementptr inbounds (%struct.diffraction_vals_t, %struct.diffraction_vals_t* @dvals, i32 0, i32 8), align 8
  %26 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx37 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %26, i64 12
  %data38 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx37, i32 0, i32 1
  %d_float39 = bitcast %union._GimpParamData* %data38 to double*
  %27 = load double, double* %d_float39, align 8
  store double %27, double* getelementptr inbounds (%struct.diffraction_vals_t, %struct.diffraction_vals_t* @dvals, i32 0, i32 9), align 8
  %28 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx40 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %28, i64 13
  %data41 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx40, i32 0, i32 1
  %d_float42 = bitcast %union._GimpParamData* %data41 to double*
  %29 = load double, double* %d_float42, align 8
  store double %29, double* getelementptr inbounds (%struct.diffraction_vals_t, %struct.diffraction_vals_t* @dvals, i32 0, i32 10), align 8
  %30 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx43 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %30, i64 14
  %data44 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx43, i32 0, i32 1
  %d_float45 = bitcast %union._GimpParamData* %data44 to double*
  %31 = load double, double* %d_float45, align 8
  store double %31, double* getelementptr inbounds (%struct.diffraction_vals_t, %struct.diffraction_vals_t* @dvals, i32 0, i32 11), align 8
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.10, %if.end.8
  br label %sw.epilog

sw.bb.47:                                         ; preds = %do.end
  %call48 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.30, i32 0, i32 0), i8* bitcast (%struct.diffraction_vals_t* @dvals to i8*))
  br label %sw.epilog

sw.default:                                       ; preds = %do.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.47, %if.end.46, %if.end
  %32 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx49 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %32, i64 2
  %data50 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx49, i32 0, i32 1
  %d_drawable = bitcast %union._GimpParamData* %data50 to i32*
  %33 = load i32, i32* %d_drawable, align 4
  %call51 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %33)
  store %struct._GimpDrawable* %call51, %struct._GimpDrawable** %active_drawable, align 8
  %34 = load i32, i32* %status, align 4
  %cmp52 = icmp eq i32 %34, 3
  br i1 %cmp52, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %sw.epilog
  %35 = load %struct._GimpDrawable*, %struct._GimpDrawable** %active_drawable, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %35, i32 0, i32 0
  %36 = load i32, i32* %drawable_id, align 4
  %call53 = call i32 @gimp_drawable_is_rgb(i32 %36)
  %tobool54 = icmp ne i32 %call53, 0
  br i1 %tobool54, label %if.then.55, label %if.else

if.then.55:                                       ; preds = %land.lhs.true
  %37 = load %struct._GimpDrawable*, %struct._GimpDrawable** %active_drawable, align 8
  %width = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %37, i32 0, i32 1
  %38 = load i32, i32* %width, align 4
  %call56 = call i32 @gimp_tile_width() #4
  %add = add i32 %38, %call56
  %sub = sub i32 %add, 1
  %call57 = call i32 @gimp_tile_width() #4
  %div = udiv i32 %sub, %call57
  %conv = zext i32 %div to i64
  call void @gimp_tile_cache_ntiles(i64 %conv)
  %39 = load %struct._GimpDrawable*, %struct._GimpDrawable** %active_drawable, align 8
  call void @diffraction(%struct._GimpDrawable* %39)
  %40 = load i32, i32* %run_mode, align 4
  %cmp58 = icmp ne i32 %40, 1
  br i1 %cmp58, label %if.then.60, label %if.end.62

if.then.60:                                       ; preds = %if.then.55
  %call61 = call i32 @gimp_displays_flush()
  br label %if.end.62

if.end.62:                                        ; preds = %if.then.60, %if.then.55
  %41 = load i32, i32* %run_mode, align 4
  %cmp63 = icmp eq i32 %41, 0
  br i1 %cmp63, label %if.then.65, label %if.end.67

if.then.65:                                       ; preds = %if.end.62
  %call66 = call i32 @gimp_procedural_db_set_data(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.30, i32 0, i32 0), i8* bitcast (%struct.diffraction_vals_t* @dvals to i8*), i32 96)
  br label %if.end.67

if.end.67:                                        ; preds = %if.then.65, %if.end.62
  br label %if.end.72

if.else:                                          ; preds = %land.lhs.true, %sw.epilog
  %42 = load i32, i32* %status, align 4
  %cmp68 = icmp eq i32 %42, 3
  br i1 %cmp68, label %if.then.70, label %if.end.71

if.then.70:                                       ; preds = %if.else
  store i32 0, i32* %status, align 4
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.70, %if.else
  br label %if.end.72

if.end.72:                                        ; preds = %if.end.71, %if.end.67
  %43 = load i32, i32* %status, align 4
  store i32 %43, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  %44 = load %struct._GimpDrawable*, %struct._GimpDrawable** %active_drawable, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %44)
  br label %return

return:                                           ; preds = %if.end.72, %if.then
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

; Function Attrs: nounwind uwtable
define internal void @diff_init_luts() #0 {
entry:
  %i = alloca i32, align 4
  %a = alloca double, align 8
  %sina = alloca double, align 8
  store double 0xC00921FB54442D18, double* %a, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp sle i32 %0, 100
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load double, double* %a, align 8
  %call = call double @sin(double %1) #5
  store double %call, double* %sina, align 8
  %2 = load double, double* %a, align 8
  %call1 = call double @cos(double %2) #5
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [101 x double], [101 x double]* @cos_lut, i32 0, i64 %idxprom
  store double %call1, double* %arrayidx, align 8
  %4 = load double, double* %sina, align 8
  %mul = fmul double 7.500000e-01, %4
  %5 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %5 to i64
  %arrayidx3 = getelementptr inbounds [101 x double], [101 x double]* @param_lut1, i32 0, i64 %idxprom2
  store double %mul, double* %arrayidx3, align 8
  %6 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %6 to i64
  %arrayidx5 = getelementptr inbounds [101 x double], [101 x double]* @cos_lut, i32 0, i64 %idxprom4
  %7 = load double, double* %arrayidx5, align 8
  %mul6 = fmul double 4.000000e+00, %7
  %8 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %8 to i64
  %arrayidx8 = getelementptr inbounds [101 x double], [101 x double]* @cos_lut, i32 0, i64 %idxprom7
  %9 = load double, double* %arrayidx8, align 8
  %mul9 = fmul double %mul6, %9
  %10 = load double, double* %sina, align 8
  %11 = load double, double* %sina, align 8
  %mul10 = fmul double %10, %11
  %add = fadd double %mul9, %mul10
  %mul11 = fmul double 5.000000e-01, %add
  %12 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %12 to i64
  %arrayidx13 = getelementptr inbounds [101 x double], [101 x double]* @param_lut2, i32 0, i64 %idxprom12
  store double %mul11, double* %arrayidx13, align 8
  %13 = load double, double* %a, align 8
  %add14 = fadd double %13, 0x3FB015BF9217271A
  store double %add14, double* %a, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %i, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare i32 @gimp_procedural_db_get_data(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @diffraction_dialog() #0 {
entry:
  %dialog = alloca %struct._GtkWidget*, align 8
  %hbox = alloca %struct._GtkWidget*, align 8
  %notebook = alloca %struct._GtkWidget*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  %vbox = alloca %struct._GtkWidget*, align 8
  %table = alloca %struct._GtkWidget*, align 8
  %label = alloca %struct._GtkWidget*, align 8
  %button = alloca %struct._GtkWidget*, align 8
  %adj = alloca %struct._GtkObject*, align 8
  %run = alloca i32, align 4
  call void @gimp_ui_init(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.41, i32 0, i32 0), i32 1)
  %call = call i8* @gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.42, i32 0, i32 0)) #5
  %call1 = call %struct._GtkWidget* (i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) @gimp_dialog_new(i8* %call, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.43, i32 0, i32 0), %struct._GtkWidget* null, i32 0, void (i8*, i8*)* @gimp_standard_help_func, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.44, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.45, i32 0, i32 0), i32 -5, i8* null)
  store %struct._GtkWidget* %call1, %struct._GtkWidget** %dialog, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_dialog_get_type() #4
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call2)
  %2 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkDialog*
  call void (%struct._GtkDialog*, i32, ...) @gtk_dialog_set_alternative_button_order(%struct._GtkDialog* %2, i32 -5, i32 -6, i32 -1)
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_window_get_type() #4
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call4)
  %5 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkWindow*
  call void @gimp_window_set_transient(%struct._GtkWindow* %5)
  %call6 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 12)
  store %struct._GtkWidget* %call6, %struct._GtkWidget** %hbox, align 8
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %7 = bitcast %struct._GtkWidget* %6 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_container_get_type() #4
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call7)
  %8 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %8, i32 12)
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %10 = bitcast %struct._GtkWidget* %9 to %struct._GTypeInstance*
  %call9 = call i64 @gtk_dialog_get_type() #4
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call9)
  %11 = bitcast %struct._GTypeInstance* %call10 to %struct._GtkDialog*
  %call11 = call %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog* %11)
  %12 = bitcast %struct._GtkWidget* %call11 to %struct._GTypeInstance*
  %call12 = call i64 @gtk_box_get_type() #4
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call12)
  %13 = bitcast %struct._GTypeInstance* %call13 to %struct._GtkBox*
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %13, %struct._GtkWidget* %14, i32 0, i32 0, i32 0)
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %15)
  %call14 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 2)
  store %struct._GtkWidget* %call14, %struct._GtkWidget** %vbox, align 8
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %17 = bitcast %struct._GtkWidget* %16 to %struct._GTypeInstance*
  %call15 = call i64 @gtk_box_get_type() #4
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call15)
  %18 = bitcast %struct._GTypeInstance* %call16 to %struct._GtkBox*
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %18, %struct._GtkWidget* %19, i32 0, i32 0, i32 0)
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %20)
  %call17 = call %struct._GtkWidget* @gtk_aspect_frame_new(i8* null, float 5.000000e-01, float 5.000000e-01, float 1.000000e+00, i32 1)
  store %struct._GtkWidget* %call17, %struct._GtkWidget** %frame, align 8
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %22 = bitcast %struct._GtkWidget* %21 to %struct._GTypeInstance*
  %call18 = call i64 @gtk_frame_get_type() #4
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call18)
  %23 = bitcast %struct._GTypeInstance* %call19 to %struct._GtkFrame*
  call void @gtk_frame_set_shadow_type(%struct._GtkFrame* %23, i32 1)
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %25 = bitcast %struct._GtkWidget* %24 to %struct._GTypeInstance*
  %call20 = call i64 @gtk_box_get_type() #4
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call20)
  %26 = bitcast %struct._GTypeInstance* %call21 to %struct._GtkBox*
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %26, %struct._GtkWidget* %27, i32 0, i32 0, i32 0)
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %28)
  %call22 = call %struct._GtkWidget* @gimp_preview_area_new()
  store %struct._GtkWidget* %call22, %struct._GtkWidget** getelementptr inbounds (%struct.diffraction_interface_t, %struct.diffraction_interface_t* @dint, i32 0, i32 0), align 8
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.diffraction_interface_t, %struct.diffraction_interface_t* @dint, i32 0, i32 0), align 8
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %29, i32 64, i32 64)
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %31 = bitcast %struct._GtkWidget* %30 to %struct._GTypeInstance*
  %call23 = call i64 @gtk_container_get_type() #4
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 %call23)
  %32 = bitcast %struct._GTypeInstance* %call24 to %struct._GtkContainer*
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.diffraction_interface_t, %struct.diffraction_interface_t* @dint, i32 0, i32 0), align 8
  call void @gtk_container_add(%struct._GtkContainer* %32, %struct._GtkWidget* %33)
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.diffraction_interface_t, %struct.diffraction_interface_t* @dint, i32 0, i32 0), align 8
  call void @gtk_widget_show(%struct._GtkWidget* %34)
  %call25 = call %struct._GtkWidget* @gtk_progress_bar_new()
  store %struct._GtkWidget* %call25, %struct._GtkWidget** getelementptr inbounds (%struct.diffraction_interface_t, %struct.diffraction_interface_t* @dint, i32 0, i32 1), align 8
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.diffraction_interface_t, %struct.diffraction_interface_t* @dint, i32 0, i32 1), align 8
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %35, i32 32, i32 16)
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %37 = bitcast %struct._GtkWidget* %36 to %struct._GTypeInstance*
  %call26 = call i64 @gtk_box_get_type() #4
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %37, i64 %call26)
  %38 = bitcast %struct._GTypeInstance* %call27 to %struct._GtkBox*
  %39 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.diffraction_interface_t, %struct.diffraction_interface_t* @dint, i32 0, i32 1), align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %38, %struct._GtkWidget* %39, i32 0, i32 0, i32 0)
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.diffraction_interface_t, %struct.diffraction_interface_t* @dint, i32 0, i32 1), align 8
  call void @gtk_widget_show(%struct._GtkWidget* %40)
  %call28 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.46, i32 0, i32 0)) #5
  %call29 = call %struct._GtkWidget* @gtk_button_new_with_mnemonic(i8* %call28)
  store %struct._GtkWidget* %call29, %struct._GtkWidget** %button, align 8
  %41 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %42 = bitcast %struct._GtkWidget* %41 to %struct._GTypeInstance*
  %call30 = call i64 @gtk_box_get_type() #4
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %42, i64 %call30)
  %43 = bitcast %struct._GTypeInstance* %call31 to %struct._GtkBox*
  %44 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %43, %struct._GtkWidget* %44, i32 0, i32 0, i32 0)
  %45 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %45)
  %46 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %47 = bitcast %struct._GtkWidget* %46 to i8*
  %call32 = call i64 @g_signal_connect_data(i8* %47, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.47, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @dialog_update_callback to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %call33 = call %struct._GtkWidget* @gtk_notebook_new()
  store %struct._GtkWidget* %call33, %struct._GtkWidget** %notebook, align 8
  %48 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook, align 8
  %49 = bitcast %struct._GtkWidget* %48 to %struct._GTypeInstance*
  %call34 = call i64 @gtk_notebook_get_type() #4
  %call35 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %49, i64 %call34)
  %50 = bitcast %struct._GTypeInstance* %call35 to %struct._GtkNotebook*
  call void @gtk_notebook_set_tab_pos(%struct._GtkNotebook* %50, i32 2)
  %51 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %52 = bitcast %struct._GtkWidget* %51 to %struct._GTypeInstance*
  %call36 = call i64 @gtk_box_get_type() #4
  %call37 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %52, i64 %call36)
  %53 = bitcast %struct._GTypeInstance* %call37 to %struct._GtkBox*
  %54 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %53, %struct._GtkWidget* %54, i32 1, i32 1, i32 0)
  %55 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %55)
  %call38 = call %struct._GtkWidget* @gtk_table_new(i32 3, i32 3, i32 0)
  store %struct._GtkWidget* %call38, %struct._GtkWidget** %table, align 8
  %56 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %57 = bitcast %struct._GtkWidget* %56 to %struct._GTypeInstance*
  %call39 = call i64 @gtk_table_get_type() #4
  %call40 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %57, i64 %call39)
  %58 = bitcast %struct._GTypeInstance* %call40 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %58, i32 6)
  %59 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %60 = bitcast %struct._GtkWidget* %59 to %struct._GTypeInstance*
  %call41 = call i64 @gtk_table_get_type() #4
  %call42 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %60, i64 %call41)
  %61 = bitcast %struct._GTypeInstance* %call42 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %61, i32 6)
  %62 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %63 = bitcast %struct._GtkWidget* %62 to %struct._GTypeInstance*
  %call43 = call i64 @gtk_container_get_type() #4
  %call44 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %63, i64 %call43)
  %64 = bitcast %struct._GTypeInstance* %call44 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %64, i32 12)
  %65 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %65)
  %66 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %67 = bitcast %struct._GtkWidget* %66 to %struct._GTypeInstance*
  %call45 = call i64 @gtk_table_get_type() #4
  %call46 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %67, i64 %call45)
  %68 = bitcast %struct._GTypeInstance* %call46 to %struct._GtkTable*
  %call47 = call i8* @gettext(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.48, i32 0, i32 0)) #5
  %69 = load double, double* getelementptr inbounds (%struct.diffraction_vals_t, %struct.diffraction_vals_t* @dvals, i32 0, i32 0), align 8
  %call48 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %68, i32 0, i32 0, i8* %call47, i32 150, i32 0, double %69, double 0.000000e+00, double 2.000000e+01, double 2.000000e-01, double 1.000000e+00, i32 3, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call48, %struct._GtkObject** %adj, align 8
  %70 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %71 = bitcast %struct._GtkObject* %70 to i8*
  %call49 = call i64 @g_signal_connect_data(i8* %71, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.49, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_double_adjustment_update to void ()*), i8* bitcast (%struct.diffraction_vals_t* @dvals to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %72 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %73 = bitcast %struct._GtkWidget* %72 to %struct._GTypeInstance*
  %call50 = call i64 @gtk_table_get_type() #4
  %call51 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %73, i64 %call50)
  %74 = bitcast %struct._GTypeInstance* %call51 to %struct._GtkTable*
  %call52 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.50, i32 0, i32 0)) #5
  %75 = load double, double* getelementptr inbounds (%struct.diffraction_vals_t, %struct.diffraction_vals_t* @dvals, i32 0, i32 1), align 8
  %call53 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %74, i32 0, i32 1, i8* %call52, i32 150, i32 0, double %75, double 0.000000e+00, double 2.000000e+01, double 2.000000e-01, double 1.000000e+00, i32 3, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call53, %struct._GtkObject** %adj, align 8
  %76 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %77 = bitcast %struct._GtkObject* %76 to i8*
  %call54 = call i64 @g_signal_connect_data(i8* %77, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.49, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_double_adjustment_update to void ()*), i8* bitcast (double* getelementptr inbounds (%struct.diffraction_vals_t, %struct.diffraction_vals_t* @dvals, i32 0, i32 1) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %78 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %79 = bitcast %struct._GtkWidget* %78 to %struct._GTypeInstance*
  %call55 = call i64 @gtk_table_get_type() #4
  %call56 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %79, i64 %call55)
  %80 = bitcast %struct._GTypeInstance* %call56 to %struct._GtkTable*
  %call57 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.51, i32 0, i32 0)) #5
  %81 = load double, double* getelementptr inbounds (%struct.diffraction_vals_t, %struct.diffraction_vals_t* @dvals, i32 0, i32 2), align 8
  %call58 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %80, i32 0, i32 2, i8* %call57, i32 150, i32 0, double %81, double 0.000000e+00, double 2.000000e+01, double 2.000000e-01, double 1.000000e+00, i32 3, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call58, %struct._GtkObject** %adj, align 8
  %82 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %83 = bitcast %struct._GtkObject* %82 to i8*
  %call59 = call i64 @g_signal_connect_data(i8* %83, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.49, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_double_adjustment_update to void ()*), i8* bitcast (double* getelementptr inbounds (%struct.diffraction_vals_t, %struct.diffraction_vals_t* @dvals, i32 0, i32 2) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %call60 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.52, i32 0, i32 0)) #5
  %call61 = call %struct._GtkWidget* @gtk_label_new_with_mnemonic(i8* %call60)
  store %struct._GtkWidget* %call61, %struct._GtkWidget** %label, align 8
  %84 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook, align 8
  %85 = bitcast %struct._GtkWidget* %84 to %struct._GTypeInstance*
  %call62 = call i64 @gtk_notebook_get_type() #4
  %call63 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %85, i64 %call62)
  %86 = bitcast %struct._GTypeInstance* %call63 to %struct._GtkNotebook*
  %87 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %88 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %call64 = call i32 @gtk_notebook_append_page(%struct._GtkNotebook* %86, %struct._GtkWidget* %87, %struct._GtkWidget* %88)
  %call65 = call %struct._GtkWidget* @gtk_table_new(i32 3, i32 3, i32 0)
  store %struct._GtkWidget* %call65, %struct._GtkWidget** %table, align 8
  %89 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %90 = bitcast %struct._GtkWidget* %89 to %struct._GTypeInstance*
  %call66 = call i64 @gtk_table_get_type() #4
  %call67 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %90, i64 %call66)
  %91 = bitcast %struct._GTypeInstance* %call67 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %91, i32 6)
  %92 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %93 = bitcast %struct._GtkWidget* %92 to %struct._GTypeInstance*
  %call68 = call i64 @gtk_table_get_type() #4
  %call69 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %93, i64 %call68)
  %94 = bitcast %struct._GTypeInstance* %call69 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %94, i32 6)
  %95 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %96 = bitcast %struct._GtkWidget* %95 to %struct._GTypeInstance*
  %call70 = call i64 @gtk_container_get_type() #4
  %call71 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %96, i64 %call70)
  %97 = bitcast %struct._GTypeInstance* %call71 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %97, i32 12)
  %98 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %98)
  %99 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %100 = bitcast %struct._GtkWidget* %99 to %struct._GTypeInstance*
  %call72 = call i64 @gtk_table_get_type() #4
  %call73 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %100, i64 %call72)
  %101 = bitcast %struct._GTypeInstance* %call73 to %struct._GtkTable*
  %call74 = call i8* @gettext(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.48, i32 0, i32 0)) #5
  %102 = load double, double* getelementptr inbounds (%struct.diffraction_vals_t, %struct.diffraction_vals_t* @dvals, i32 0, i32 3), align 8
  %call75 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %101, i32 0, i32 0, i8* %call74, i32 150, i32 0, double %102, double 0.000000e+00, double 1.000000e+01, double 1.000000e-01, double 1.000000e+00, i32 3, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call75, %struct._GtkObject** %adj, align 8
  %103 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %104 = bitcast %struct._GtkObject* %103 to i8*
  %call76 = call i64 @g_signal_connect_data(i8* %104, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.49, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_double_adjustment_update to void ()*), i8* bitcast (double* getelementptr inbounds (%struct.diffraction_vals_t, %struct.diffraction_vals_t* @dvals, i32 0, i32 3) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %105 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %106 = bitcast %struct._GtkWidget* %105 to %struct._GTypeInstance*
  %call77 = call i64 @gtk_table_get_type() #4
  %call78 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %106, i64 %call77)
  %107 = bitcast %struct._GTypeInstance* %call78 to %struct._GtkTable*
  %call79 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.50, i32 0, i32 0)) #5
  %108 = load double, double* getelementptr inbounds (%struct.diffraction_vals_t, %struct.diffraction_vals_t* @dvals, i32 0, i32 4), align 8
  %call80 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %107, i32 0, i32 1, i8* %call79, i32 150, i32 0, double %108, double 0.000000e+00, double 1.000000e+01, double 1.000000e-01, double 1.000000e+00, i32 3, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call80, %struct._GtkObject** %adj, align 8
  %109 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %110 = bitcast %struct._GtkObject* %109 to i8*
  %call81 = call i64 @g_signal_connect_data(i8* %110, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.49, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_double_adjustment_update to void ()*), i8* bitcast (double* getelementptr inbounds (%struct.diffraction_vals_t, %struct.diffraction_vals_t* @dvals, i32 0, i32 4) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %111 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %112 = bitcast %struct._GtkWidget* %111 to %struct._GTypeInstance*
  %call82 = call i64 @gtk_table_get_type() #4
  %call83 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %112, i64 %call82)
  %113 = bitcast %struct._GTypeInstance* %call83 to %struct._GtkTable*
  %call84 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.51, i32 0, i32 0)) #5
  %114 = load double, double* getelementptr inbounds (%struct.diffraction_vals_t, %struct.diffraction_vals_t* @dvals, i32 0, i32 5), align 8
  %call85 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %113, i32 0, i32 2, i8* %call84, i32 150, i32 0, double %114, double 0.000000e+00, double 1.000000e+01, double 1.000000e-01, double 1.000000e+00, i32 3, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call85, %struct._GtkObject** %adj, align 8
  %115 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %116 = bitcast %struct._GtkObject* %115 to i8*
  %call86 = call i64 @g_signal_connect_data(i8* %116, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.49, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_double_adjustment_update to void ()*), i8* bitcast (double* getelementptr inbounds (%struct.diffraction_vals_t, %struct.diffraction_vals_t* @dvals, i32 0, i32 5) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %call87 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.53, i32 0, i32 0)) #5
  %call88 = call %struct._GtkWidget* @gtk_label_new_with_mnemonic(i8* %call87)
  store %struct._GtkWidget* %call88, %struct._GtkWidget** %label, align 8
  %117 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook, align 8
  %118 = bitcast %struct._GtkWidget* %117 to %struct._GTypeInstance*
  %call89 = call i64 @gtk_notebook_get_type() #4
  %call90 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %118, i64 %call89)
  %119 = bitcast %struct._GTypeInstance* %call90 to %struct._GtkNotebook*
  %120 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %121 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %call91 = call i32 @gtk_notebook_append_page(%struct._GtkNotebook* %119, %struct._GtkWidget* %120, %struct._GtkWidget* %121)
  %call92 = call %struct._GtkWidget* @gtk_table_new(i32 3, i32 2, i32 0)
  store %struct._GtkWidget* %call92, %struct._GtkWidget** %table, align 8
  %122 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %123 = bitcast %struct._GtkWidget* %122 to %struct._GTypeInstance*
  %call93 = call i64 @gtk_table_get_type() #4
  %call94 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %123, i64 %call93)
  %124 = bitcast %struct._GTypeInstance* %call94 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %124, i32 6)
  %125 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %126 = bitcast %struct._GtkWidget* %125 to %struct._GTypeInstance*
  %call95 = call i64 @gtk_table_get_type() #4
  %call96 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %126, i64 %call95)
  %127 = bitcast %struct._GTypeInstance* %call96 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %127, i32 6)
  %128 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %129 = bitcast %struct._GtkWidget* %128 to %struct._GTypeInstance*
  %call97 = call i64 @gtk_container_get_type() #4
  %call98 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %129, i64 %call97)
  %130 = bitcast %struct._GTypeInstance* %call98 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %130, i32 12)
  %131 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %131)
  %132 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %133 = bitcast %struct._GtkWidget* %132 to %struct._GTypeInstance*
  %call99 = call i64 @gtk_table_get_type() #4
  %call100 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %133, i64 %call99)
  %134 = bitcast %struct._GTypeInstance* %call100 to %struct._GtkTable*
  %call101 = call i8* @gettext(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.48, i32 0, i32 0)) #5
  %135 = load double, double* getelementptr inbounds (%struct.diffraction_vals_t, %struct.diffraction_vals_t* @dvals, i32 0, i32 6), align 8
  %call102 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %134, i32 0, i32 0, i8* %call101, i32 150, i32 0, double %135, double 0.000000e+00, double 1.000000e+00, double 1.000000e-02, double 1.000000e-01, i32 3, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call102, %struct._GtkObject** %adj, align 8
  %136 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %137 = bitcast %struct._GtkObject* %136 to i8*
  %call103 = call i64 @g_signal_connect_data(i8* %137, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.49, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_double_adjustment_update to void ()*), i8* bitcast (double* getelementptr inbounds (%struct.diffraction_vals_t, %struct.diffraction_vals_t* @dvals, i32 0, i32 6) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %138 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %139 = bitcast %struct._GtkWidget* %138 to %struct._GTypeInstance*
  %call104 = call i64 @gtk_table_get_type() #4
  %call105 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %139, i64 %call104)
  %140 = bitcast %struct._GTypeInstance* %call105 to %struct._GtkTable*
  %call106 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.50, i32 0, i32 0)) #5
  %141 = load double, double* getelementptr inbounds (%struct.diffraction_vals_t, %struct.diffraction_vals_t* @dvals, i32 0, i32 7), align 8
  %call107 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %140, i32 0, i32 1, i8* %call106, i32 150, i32 0, double %141, double 0.000000e+00, double 1.000000e+00, double 1.000000e-02, double 1.000000e-01, i32 3, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call107, %struct._GtkObject** %adj, align 8
  %142 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %143 = bitcast %struct._GtkObject* %142 to i8*
  %call108 = call i64 @g_signal_connect_data(i8* %143, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.49, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_double_adjustment_update to void ()*), i8* bitcast (double* getelementptr inbounds (%struct.diffraction_vals_t, %struct.diffraction_vals_t* @dvals, i32 0, i32 7) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %144 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %145 = bitcast %struct._GtkWidget* %144 to %struct._GTypeInstance*
  %call109 = call i64 @gtk_table_get_type() #4
  %call110 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %145, i64 %call109)
  %146 = bitcast %struct._GTypeInstance* %call110 to %struct._GtkTable*
  %call111 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.51, i32 0, i32 0)) #5
  %147 = load double, double* getelementptr inbounds (%struct.diffraction_vals_t, %struct.diffraction_vals_t* @dvals, i32 0, i32 8), align 8
  %call112 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %146, i32 0, i32 2, i8* %call111, i32 150, i32 0, double %147, double 0.000000e+00, double 1.000000e+00, double 1.000000e-02, double 1.000000e-01, i32 3, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call112, %struct._GtkObject** %adj, align 8
  %148 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %149 = bitcast %struct._GtkObject* %148 to i8*
  %call113 = call i64 @g_signal_connect_data(i8* %149, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.49, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_double_adjustment_update to void ()*), i8* bitcast (double* getelementptr inbounds (%struct.diffraction_vals_t, %struct.diffraction_vals_t* @dvals, i32 0, i32 8) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %call114 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.54, i32 0, i32 0)) #5
  %call115 = call %struct._GtkWidget* @gtk_label_new_with_mnemonic(i8* %call114)
  store %struct._GtkWidget* %call115, %struct._GtkWidget** %label, align 8
  %150 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook, align 8
  %151 = bitcast %struct._GtkWidget* %150 to %struct._GTypeInstance*
  %call116 = call i64 @gtk_notebook_get_type() #4
  %call117 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %151, i64 %call116)
  %152 = bitcast %struct._GTypeInstance* %call117 to %struct._GtkNotebook*
  %153 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %154 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %call118 = call i32 @gtk_notebook_append_page(%struct._GtkNotebook* %152, %struct._GtkWidget* %153, %struct._GtkWidget* %154)
  %call119 = call %struct._GtkWidget* @gtk_table_new(i32 3, i32 2, i32 0)
  store %struct._GtkWidget* %call119, %struct._GtkWidget** %table, align 8
  %155 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %156 = bitcast %struct._GtkWidget* %155 to %struct._GTypeInstance*
  %call120 = call i64 @gtk_table_get_type() #4
  %call121 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %156, i64 %call120)
  %157 = bitcast %struct._GTypeInstance* %call121 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %157, i32 6)
  %158 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %159 = bitcast %struct._GtkWidget* %158 to %struct._GTypeInstance*
  %call122 = call i64 @gtk_table_get_type() #4
  %call123 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %159, i64 %call122)
  %160 = bitcast %struct._GTypeInstance* %call123 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %160, i32 6)
  %161 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %162 = bitcast %struct._GtkWidget* %161 to %struct._GTypeInstance*
  %call124 = call i64 @gtk_container_get_type() #4
  %call125 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %162, i64 %call124)
  %163 = bitcast %struct._GTypeInstance* %call125 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %163, i32 12)
  %164 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %164)
  %165 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %166 = bitcast %struct._GtkWidget* %165 to %struct._GTypeInstance*
  %call126 = call i64 @gtk_table_get_type() #4
  %call127 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %166, i64 %call126)
  %167 = bitcast %struct._GTypeInstance* %call127 to %struct._GtkTable*
  %call128 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.55, i32 0, i32 0)) #5
  %168 = load double, double* getelementptr inbounds (%struct.diffraction_vals_t, %struct.diffraction_vals_t* @dvals, i32 0, i32 9), align 8
  %call129 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %167, i32 0, i32 0, i8* %call128, i32 150, i32 7, double %168, double 0.000000e+00, double 1.000000e+00, double 1.000000e-02, double 1.000000e-01, i32 3, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call129, %struct._GtkObject** %adj, align 8
  %169 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %170 = bitcast %struct._GtkObject* %169 to i8*
  %call130 = call i64 @g_signal_connect_data(i8* %170, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.49, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_double_adjustment_update to void ()*), i8* bitcast (double* getelementptr inbounds (%struct.diffraction_vals_t, %struct.diffraction_vals_t* @dvals, i32 0, i32 9) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %171 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %172 = bitcast %struct._GtkWidget* %171 to %struct._GTypeInstance*
  %call131 = call i64 @gtk_table_get_type() #4
  %call132 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %172, i64 %call131)
  %173 = bitcast %struct._GTypeInstance* %call132 to %struct._GtkTable*
  %call133 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.56, i32 0, i32 0)) #5
  %174 = load double, double* getelementptr inbounds (%struct.diffraction_vals_t, %struct.diffraction_vals_t* @dvals, i32 0, i32 10), align 8
  %call134 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %173, i32 0, i32 1, i8* %call133, i32 150, i32 7, double %174, double 0.000000e+00, double 1.000000e+02, double 1.000000e+00, double 1.000000e+01, i32 3, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call134, %struct._GtkObject** %adj, align 8
  %175 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %176 = bitcast %struct._GtkObject* %175 to i8*
  %call135 = call i64 @g_signal_connect_data(i8* %176, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.49, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_double_adjustment_update to void ()*), i8* bitcast (double* getelementptr inbounds (%struct.diffraction_vals_t, %struct.diffraction_vals_t* @dvals, i32 0, i32 10) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %177 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %178 = bitcast %struct._GtkWidget* %177 to %struct._GTypeInstance*
  %call136 = call i64 @gtk_table_get_type() #4
  %call137 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %178, i64 %call136)
  %179 = bitcast %struct._GTypeInstance* %call137 to %struct._GtkTable*
  %call138 = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.57, i32 0, i32 0)) #5
  %180 = load double, double* getelementptr inbounds (%struct.diffraction_vals_t, %struct.diffraction_vals_t* @dvals, i32 0, i32 11), align 8
  %call139 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %179, i32 0, i32 2, i8* %call138, i32 150, i32 7, double %180, double -1.000000e+00, double 1.000000e+00, double 2.000000e-02, double 2.000000e-01, i32 3, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call139, %struct._GtkObject** %adj, align 8
  %181 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %182 = bitcast %struct._GtkObject* %181 to i8*
  %call140 = call i64 @g_signal_connect_data(i8* %182, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.49, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_double_adjustment_update to void ()*), i8* bitcast (double* getelementptr inbounds (%struct.diffraction_vals_t, %struct.diffraction_vals_t* @dvals, i32 0, i32 11) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %call141 = call i8* @gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.58, i32 0, i32 0)) #5
  %call142 = call %struct._GtkWidget* @gtk_label_new_with_mnemonic(i8* %call141)
  store %struct._GtkWidget* %call142, %struct._GtkWidget** %label, align 8
  %183 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook, align 8
  %184 = bitcast %struct._GtkWidget* %183 to %struct._GTypeInstance*
  %call143 = call i64 @gtk_notebook_get_type() #4
  %call144 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %184, i64 %call143)
  %185 = bitcast %struct._GTypeInstance* %call144 to %struct._GtkNotebook*
  %186 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %187 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %call145 = call i32 @gtk_notebook_append_page(%struct._GtkNotebook* %185, %struct._GtkWidget* %186, %struct._GtkWidget* %187)
  %188 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %188)
  call void @dialog_update_preview()
  %189 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %190 = bitcast %struct._GtkWidget* %189 to %struct._GTypeInstance*
  %call146 = call i64 @gimp_dialog_get_type() #4
  %call147 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %190, i64 %call146)
  %191 = bitcast %struct._GTypeInstance* %call147 to %struct._GimpDialog*
  %call148 = call i32 @gimp_dialog_run(%struct._GimpDialog* %191)
  %cmp = icmp eq i32 %call148, -5
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %run, align 4
  %192 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %192)
  %193 = load i32, i32* %run, align 4
  ret i32 %193
}

declare %struct._GimpDrawable* @gimp_drawable_get(i32) #1

declare i32 @gimp_drawable_is_rgb(i32) #1

declare void @gimp_tile_cache_ntiles(i64) #1

; Function Attrs: nounwind readnone
declare i32 @gimp_tile_width() #3

; Function Attrs: nounwind uwtable
define internal void @diffraction(%struct._GimpDrawable* %drawable) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %iter = alloca %struct._GimpRgnIterator*, align 8
  %param = alloca %struct.DiffractionParam_t, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %0, i32 0, i32 0
  %1 = load i32, i32* %drawable_id, align 4
  %call = call i32 @gimp_drawable_mask_intersect(i32 %1, i32* %x, i32* %y, i32* %width, i32* %height)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %x, align 4
  %x1 = getelementptr inbounds %struct.DiffractionParam_t, %struct.DiffractionParam_t* %param, i32 0, i32 2
  store i32 %2, i32* %x1, align 4
  %3 = load i32, i32* %y, align 4
  %y2 = getelementptr inbounds %struct.DiffractionParam_t, %struct.DiffractionParam_t* %param, i32 0, i32 3
  store i32 %3, i32* %y2, align 4
  %4 = load i32, i32* %width, align 4
  %sub = sub nsw i32 %4, 1
  %conv = sitofp i32 %sub to double
  %div = fdiv double 1.000000e+01, %conv
  %dhoriz = getelementptr inbounds %struct.DiffractionParam_t, %struct.DiffractionParam_t* %param, i32 0, i32 0
  store double %div, double* %dhoriz, align 8
  %5 = load i32, i32* %height, align 4
  %sub3 = sub nsw i32 %5, 1
  %conv4 = sitofp i32 %sub3 to double
  %div5 = fdiv double -1.000000e+01, %conv4
  %dvert = getelementptr inbounds %struct.DiffractionParam_t, %struct.DiffractionParam_t* %param, i32 0, i32 1
  store double %div5, double* %dvert, align 8
  %call6 = call i8* @gettext(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.59, i32 0, i32 0)) #5
  %call7 = call i32 @gimp_progress_init(i8* %call6)
  %6 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call8 = call %struct._GimpRgnIterator* @gimp_rgn_iterator_new(%struct._GimpDrawable* %6, i32 0)
  store %struct._GimpRgnIterator* %call8, %struct._GimpRgnIterator** %iter, align 8
  %7 = load %struct._GimpRgnIterator*, %struct._GimpRgnIterator** %iter, align 8
  %8 = bitcast %struct.DiffractionParam_t* %param to i8*
  call void @gimp_rgn_iterator_dest(%struct._GimpRgnIterator* %7, void (i32, i32, i8*, i32, i8*)* @diffraction_func, i8* %8)
  %9 = load %struct._GimpRgnIterator*, %struct._GimpRgnIterator** %iter, align 8
  call void @gimp_rgn_iterator_free(%struct._GimpRgnIterator* %9)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare i32 @gimp_displays_flush() #1

declare i32 @gimp_procedural_db_set_data(i8*, i8*, i32) #1

declare void @gimp_drawable_detach(%struct._GimpDrawable*) #1

; Function Attrs: nounwind
declare double @sin(double) #2

; Function Attrs: nounwind
declare double @cos(double) #2

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

declare %struct._GtkWidget* @gtk_aspect_frame_new(i8*, float, float, float, i32) #1

declare void @gtk_frame_set_shadow_type(%struct._GtkFrame*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_frame_get_type() #3

declare %struct._GtkWidget* @gimp_preview_area_new() #1

declare void @gtk_widget_set_size_request(%struct._GtkWidget*, i32, i32) #1

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #1

declare %struct._GtkWidget* @gtk_progress_bar_new() #1

declare %struct._GtkWidget* @gtk_button_new_with_mnemonic(i8*) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @dialog_update_callback(%struct._GtkWidget* %widget, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @dialog_update_preview()
  ret void
}

declare %struct._GtkWidget* @gtk_notebook_new() #1

declare void @gtk_notebook_set_tab_pos(%struct._GtkNotebook*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_notebook_get_type() #3

declare %struct._GtkWidget* @gtk_table_new(i32, i32, i32) #1

declare void @gtk_table_set_col_spacings(%struct._GtkTable*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_table_get_type() #3

declare void @gtk_table_set_row_spacings(%struct._GtkTable*, i32) #1

declare %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable*, i32, i32, i8*, i32, i32, double, double, double, double, double, i32, i32, double, double, i8*, i8*) #1

declare void @gimp_double_adjustment_update(%struct._GtkAdjustment*, i8*) #1

declare %struct._GtkWidget* @gtk_label_new_with_mnemonic(i8*) #1

declare i32 @gtk_notebook_append_page(%struct._GtkNotebook*, %struct._GtkWidget*, %struct._GtkWidget*) #1

; Function Attrs: nounwind uwtable
define internal void @dialog_update_preview() #0 {
entry:
  %left = alloca double, align 8
  %right = alloca double, align 8
  %bottom = alloca double, align 8
  %top = alloca double, align 8
  %px = alloca double, align 8
  %py = alloca double, align 8
  %dx = alloca double, align 8
  %dy = alloca double, align 8
  %rgb = alloca %struct._GimpRGB, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %p = alloca i8*, align 8
  store double -5.000000e+00, double* %left, align 8
  store double 5.000000e+00, double* %right, align 8
  store double -5.000000e+00, double* %bottom, align 8
  store double 5.000000e+00, double* %top, align 8
  %0 = load double, double* %right, align 8
  %1 = load double, double* %left, align 8
  %sub = fsub double %0, %1
  %div = fdiv double %sub, 6.300000e+01
  store double %div, double* %dx, align 8
  %2 = load double, double* %bottom, align 8
  %3 = load double, double* %top, align 8
  %sub1 = fsub double %2, %3
  %div2 = fdiv double %sub1, 6.300000e+01
  store double %div2, double* %dy, align 8
  %4 = load double, double* %top, align 8
  store double %4, double* %py, align 8
  store i8* getelementptr inbounds (%struct.diffraction_interface_t, %struct.diffraction_interface_t* @dint, i32 0, i32 2, i32 0), i8** %p, align 8
  store i32 0, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.20, %entry
  %5 = load i32, i32* %y, align 4
  %cmp = icmp slt i32 %5, 64
  br i1 %cmp, label %for.body, label %for.end.22

for.body:                                         ; preds = %for.cond
  %6 = load double, double* %left, align 8
  store double %6, double* %px, align 8
  store i32 0, i32* %x, align 4
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc, %for.body
  %7 = load i32, i32* %x, align 4
  %cmp4 = icmp slt i32 %7, 64
  br i1 %cmp4, label %for.body.5, label %for.end

for.body.5:                                       ; preds = %for.cond.3
  %8 = load double, double* %px, align 8
  %9 = load double, double* %py, align 8
  call void @diff_diffract(double %8, double %9, %struct._GimpRGB* %rgb)
  %r = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %rgb, i32 0, i32 0
  %10 = load double, double* %r, align 8
  %mul = fmul double 2.550000e+02, %10
  %conv = fptoui double %mul to i8
  %11 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  store i8 %conv, i8* %11, align 1
  %g = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %rgb, i32 0, i32 1
  %12 = load double, double* %g, align 8
  %mul6 = fmul double 2.550000e+02, %12
  %conv7 = fptoui double %mul6 to i8
  %13 = load i8*, i8** %p, align 8
  %incdec.ptr8 = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %incdec.ptr8, i8** %p, align 8
  store i8 %conv7, i8* %13, align 1
  %b = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %rgb, i32 0, i32 2
  %14 = load double, double* %b, align 8
  %mul9 = fmul double 2.550000e+02, %14
  %conv10 = fptoui double %mul9 to i8
  %15 = load i8*, i8** %p, align 8
  %incdec.ptr11 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr11, i8** %p, align 8
  store i8 %conv10, i8* %15, align 1
  %16 = load double, double* %dx, align 8
  %17 = load double, double* %px, align 8
  %add = fadd double %17, %16
  store double %add, double* %px, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.5
  %18 = load i32, i32* %x, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond.3

for.end:                                          ; preds = %for.cond.3
  %19 = load i32, i32* %y, align 4
  %rem = srem i32 %19, 10
  %cmp12 = icmp eq i32 %rem, 0
  br i1 %cmp12, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.diffraction_interface_t, %struct.diffraction_interface_t* @dint, i32 0, i32 1), align 8
  %21 = bitcast %struct._GtkWidget* %20 to %struct._GTypeInstance*
  %call = call i64 @gtk_progress_bar_get_type() #4
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call)
  %22 = bitcast %struct._GTypeInstance* %call14 to %struct._GtkProgressBar*
  %23 = load i32, i32* %y, align 4
  %conv15 = sitofp i32 %23 to double
  %div16 = fdiv double %conv15, 6.300000e+01
  call void @gtk_progress_bar_set_fraction(%struct._GtkProgressBar* %22, double %div16)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %call17 = call i32 @gtk_events_pending()
  %tobool = icmp ne i32 %call17, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call18 = call i32 @gtk_main_iteration()
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end

if.end:                                           ; preds = %while.end, %for.end
  %24 = load double, double* %dy, align 8
  %25 = load double, double* %py, align 8
  %add19 = fadd double %25, %24
  store double %add19, double* %py, align 8
  br label %for.inc.20

for.inc.20:                                       ; preds = %if.end
  %26 = load i32, i32* %y, align 4
  %inc21 = add nsw i32 %26, 1
  store i32 %inc21, i32* %y, align 4
  br label %for.cond

for.end.22:                                       ; preds = %for.cond
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.diffraction_interface_t, %struct.diffraction_interface_t* @dint, i32 0, i32 0), align 8
  %28 = bitcast %struct._GtkWidget* %27 to %struct._GTypeInstance*
  %call23 = call i64 @gimp_preview_area_get_type() #4
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call23)
  %29 = bitcast %struct._GTypeInstance* %call24 to %struct._GimpPreviewArea*
  call void @gimp_preview_area_draw(%struct._GimpPreviewArea* %29, i32 0, i32 0, i32 64, i32 64, i32 0, i8* getelementptr inbounds (%struct.diffraction_interface_t, %struct.diffraction_interface_t* @dint, i32 0, i32 2, i32 0), i32 192)
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.diffraction_interface_t, %struct.diffraction_interface_t* @dint, i32 0, i32 1), align 8
  %31 = bitcast %struct._GtkWidget* %30 to %struct._GTypeInstance*
  %call25 = call i64 @gtk_progress_bar_get_type() #4
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 %call25)
  %32 = bitcast %struct._GTypeInstance* %call26 to %struct._GtkProgressBar*
  call void @gtk_progress_bar_set_fraction(%struct._GtkProgressBar* %32, double 0.000000e+00)
  ret void
}

declare i32 @gimp_dialog_run(%struct._GimpDialog*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_dialog_get_type() #3

; Function Attrs: nounwind uwtable
define internal void @diff_diffract(double %x, double %y, %struct._GimpRGB* %rgb) #0 {
entry:
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %rgb.addr = alloca %struct._GimpRGB*, align 8
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  store %struct._GimpRGB* %rgb, %struct._GimpRGB** %rgb.addr, align 8
  %0 = load double, double* %x.addr, align 8
  %1 = load double, double* %y.addr, align 8
  %2 = load double, double* getelementptr inbounds (%struct.diffraction_vals_t, %struct.diffraction_vals_t* @dvals, i32 0, i32 6), align 8
  %3 = load double, double* getelementptr inbounds (%struct.diffraction_vals_t, %struct.diffraction_vals_t* @dvals, i32 0, i32 3), align 8
  %4 = load double, double* getelementptr inbounds (%struct.diffraction_vals_t, %struct.diffraction_vals_t* @dvals, i32 0, i32 0), align 8
  %call = call double @diff_point(double %0, double %1, double %2, double %3, double %4)
  %5 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %r = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %5, i32 0, i32 0
  store double %call, double* %r, align 8
  %6 = load double, double* %x.addr, align 8
  %7 = load double, double* %y.addr, align 8
  %8 = load double, double* getelementptr inbounds (%struct.diffraction_vals_t, %struct.diffraction_vals_t* @dvals, i32 0, i32 7), align 8
  %9 = load double, double* getelementptr inbounds (%struct.diffraction_vals_t, %struct.diffraction_vals_t* @dvals, i32 0, i32 4), align 8
  %10 = load double, double* getelementptr inbounds (%struct.diffraction_vals_t, %struct.diffraction_vals_t* @dvals, i32 0, i32 1), align 8
  %call1 = call double @diff_point(double %6, double %7, double %8, double %9, double %10)
  %11 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %g = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %11, i32 0, i32 1
  store double %call1, double* %g, align 8
  %12 = load double, double* %x.addr, align 8
  %13 = load double, double* %y.addr, align 8
  %14 = load double, double* getelementptr inbounds (%struct.diffraction_vals_t, %struct.diffraction_vals_t* @dvals, i32 0, i32 8), align 8
  %15 = load double, double* getelementptr inbounds (%struct.diffraction_vals_t, %struct.diffraction_vals_t* @dvals, i32 0, i32 5), align 8
  %16 = load double, double* getelementptr inbounds (%struct.diffraction_vals_t, %struct.diffraction_vals_t* @dvals, i32 0, i32 2), align 8
  %call2 = call double @diff_point(double %12, double %13, double %14, double %15, double %16)
  %17 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %b = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %17, i32 0, i32 2
  store double %call2, double* %b, align 8
  ret void
}

declare void @gtk_progress_bar_set_fraction(%struct._GtkProgressBar*, double) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_progress_bar_get_type() #3

declare i32 @gtk_events_pending() #1

declare i32 @gtk_main_iteration() #1

declare void @gimp_preview_area_draw(%struct._GimpPreviewArea*, i32, i32, i32, i32, i32, i8*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_preview_area_get_type() #3

; Function Attrs: nounwind uwtable
define internal double @diff_point(double %x, double %y, double %edges, double %contours, double %lam) #0 {
entry:
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %edges.addr = alloca double, align 8
  %contours.addr = alloca double, align 8
  %lam.addr = alloca double, align 8
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  store double %edges, double* %edges.addr, align 8
  store double %contours, double* %contours.addr, align 8
  store double %lam, double* %lam.addr, align 8
  %0 = load double, double* %edges.addr, align 8
  %1 = load double, double* %contours.addr, align 8
  %2 = load double, double* getelementptr inbounds (%struct.diffraction_vals_t, %struct.diffraction_vals_t* @dvals, i32 0, i32 9), align 8
  %3 = load double, double* %x.addr, align 8
  %4 = load double, double* %y.addr, align 8
  %5 = load double, double* %lam.addr, align 8
  %call = call double @diff_intensity(double %3, double %4, double %5)
  %mul = fmul double %2, %call
  %call1 = call double @atan(double %mul) #5
  %mul2 = fmul double %1, %call1
  %call3 = call double @sin(double %mul2) #5
  %mul4 = fmul double %0, %call3
  %call5 = call double @fabs(double %mul4) #4
  ret double %call5
}

; Function Attrs: nounwind readnone
declare double @fabs(double) #3

; Function Attrs: nounwind
declare double @atan(double) #2

; Function Attrs: nounwind uwtable
define internal double @diff_intensity(double %x, double %y, double %lam) #0 {
entry:
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %lam.addr = alloca double, align 8
  %i = alloca i32, align 4
  %cxy = alloca double, align 8
  %sxy = alloca double, align 8
  %param = alloca double, align 8
  %polpi2 = alloca double, align 8
  %cospolpi2 = alloca double, align 8
  %sinpolpi2 = alloca double, align 8
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  store double %lam, double* %lam.addr, align 8
  store double 0.000000e+00, double* %cxy, align 8
  store double 0.000000e+00, double* %sxy, align 8
  %0 = load double, double* %lam.addr, align 8
  %mul = fmul double %0, 4.000000e+00
  store double %mul, double* %lam.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %cmp = icmp sle i32 %1, 100
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load double, double* %lam.addr, align 8
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [101 x double], [101 x double]* @cos_lut, i32 0, i64 %idxprom
  %4 = load double, double* %arrayidx, align 8
  %5 = load double, double* %x.addr, align 8
  %mul1 = fmul double %4, %5
  %6 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %6 to i64
  %arrayidx3 = getelementptr inbounds [101 x double], [101 x double]* @param_lut1, i32 0, i64 %idxprom2
  %7 = load double, double* %arrayidx3, align 8
  %8 = load double, double* %y.addr, align 8
  %mul4 = fmul double %7, %8
  %add = fadd double %mul1, %mul4
  %9 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %9 to i64
  %arrayidx6 = getelementptr inbounds [101 x double], [101 x double]* @param_lut2, i32 0, i64 %idxprom5
  %10 = load double, double* %arrayidx6, align 8
  %sub = fsub double %add, %10
  %mul7 = fmul double %2, %sub
  store double %mul7, double* %param, align 8
  %11 = load double, double* %param, align 8
  %call = call double @cos(double %11) #5
  %12 = load double, double* %cxy, align 8
  %add8 = fadd double %12, %call
  store double %add8, double* %cxy, align 8
  %13 = load double, double* %param, align 8
  %call9 = call double @sin(double %13) #5
  %14 = load double, double* %sxy, align 8
  %add10 = fadd double %14, %call9
  store double %add10, double* %sxy, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i32, i32* %i, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %16 = load double, double* %cxy, align 8
  %mul11 = fmul double %16, 4.000000e-02
  store double %mul11, double* %cxy, align 8
  %17 = load double, double* %sxy, align 8
  %mul12 = fmul double %17, 4.000000e-02
  store double %mul12, double* %sxy, align 8
  %18 = load double, double* getelementptr inbounds (%struct.diffraction_vals_t, %struct.diffraction_vals_t* @dvals, i32 0, i32 11), align 8
  %mul13 = fmul double %18, 0x3FF921FB54442D18
  store double %mul13, double* %polpi2, align 8
  %19 = load double, double* %polpi2, align 8
  %call14 = call double @cos(double %19) #5
  store double %call14, double* %cospolpi2, align 8
  %20 = load double, double* %polpi2, align 8
  %call15 = call double @sin(double %20) #5
  store double %call15, double* %sinpolpi2, align 8
  %21 = load double, double* getelementptr inbounds (%struct.diffraction_vals_t, %struct.diffraction_vals_t* @dvals, i32 0, i32 10), align 8
  %22 = load double, double* %cospolpi2, align 8
  %23 = load double, double* %sinpolpi2, align 8
  %add16 = fadd double %22, %23
  %24 = load double, double* %cxy, align 8
  %mul17 = fmul double %add16, %24
  %25 = load double, double* %cxy, align 8
  %mul18 = fmul double %mul17, %25
  %26 = load double, double* %cospolpi2, align 8
  %27 = load double, double* %sinpolpi2, align 8
  %sub19 = fsub double %26, %27
  %28 = load double, double* %sxy, align 8
  %mul20 = fmul double %sub19, %28
  %29 = load double, double* %sxy, align 8
  %mul21 = fmul double %mul20, %29
  %add22 = fadd double %mul18, %mul21
  %mul23 = fmul double %21, %add22
  ret double %mul23
}

declare i32 @gimp_drawable_mask_intersect(i32, i32*, i32*, i32*, i32*) #1

declare i32 @gimp_progress_init(i8*) #1

declare %struct._GimpRgnIterator* @gimp_rgn_iterator_new(%struct._GimpDrawable*, i32) #1

declare void @gimp_rgn_iterator_dest(%struct._GimpRgnIterator*, void (i32, i32, i8*, i32, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @diffraction_func(i32 %x, i32 %y, i8* %dest, i32 %bpp, i8* %data) #0 {
entry:
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %dest.addr = alloca i8*, align 8
  %bpp.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %param = alloca %struct.DiffractionParam_t*, align 8
  %px = alloca double, align 8
  %py = alloca double, align 8
  %rgb = alloca %struct._GimpRGB, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i8* %dest, i8** %dest.addr, align 8
  store i32 %bpp, i32* %bpp.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct.DiffractionParam_t*
  store %struct.DiffractionParam_t* %1, %struct.DiffractionParam_t** %param, align 8
  %2 = load %struct.DiffractionParam_t*, %struct.DiffractionParam_t** %param, align 8
  %dhoriz = getelementptr inbounds %struct.DiffractionParam_t, %struct.DiffractionParam_t* %2, i32 0, i32 0
  %3 = load double, double* %dhoriz, align 8
  %4 = load i32, i32* %x.addr, align 4
  %5 = load %struct.DiffractionParam_t*, %struct.DiffractionParam_t** %param, align 8
  %x1 = getelementptr inbounds %struct.DiffractionParam_t, %struct.DiffractionParam_t* %5, i32 0, i32 2
  %6 = load i32, i32* %x1, align 4
  %sub = sub nsw i32 %4, %6
  %conv = sitofp i32 %sub to double
  %mul = fmul double %3, %conv
  %add = fadd double -5.000000e+00, %mul
  store double %add, double* %px, align 8
  %7 = load %struct.DiffractionParam_t*, %struct.DiffractionParam_t** %param, align 8
  %dvert = getelementptr inbounds %struct.DiffractionParam_t, %struct.DiffractionParam_t* %7, i32 0, i32 1
  %8 = load double, double* %dvert, align 8
  %9 = load i32, i32* %y.addr, align 4
  %10 = load %struct.DiffractionParam_t*, %struct.DiffractionParam_t** %param, align 8
  %y2 = getelementptr inbounds %struct.DiffractionParam_t, %struct.DiffractionParam_t* %10, i32 0, i32 3
  %11 = load i32, i32* %y2, align 4
  %sub3 = sub nsw i32 %9, %11
  %conv4 = sitofp i32 %sub3 to double
  %mul5 = fmul double %8, %conv4
  %add6 = fadd double 5.000000e+00, %mul5
  store double %add6, double* %py, align 8
  %12 = load double, double* %px, align 8
  %13 = load double, double* %py, align 8
  call void @diff_diffract(double %12, double %13, %struct._GimpRGB* %rgb)
  %r = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %rgb, i32 0, i32 0
  %14 = load double, double* %r, align 8
  %mul7 = fmul double 2.550000e+02, %14
  %conv8 = fptoui double %mul7 to i8
  %15 = load i8*, i8** %dest.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %15, i64 0
  store i8 %conv8, i8* %arrayidx, align 1
  %g = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %rgb, i32 0, i32 1
  %16 = load double, double* %g, align 8
  %mul9 = fmul double 2.550000e+02, %16
  %conv10 = fptoui double %mul9 to i8
  %17 = load i8*, i8** %dest.addr, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %17, i64 1
  store i8 %conv10, i8* %arrayidx11, align 1
  %b = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %rgb, i32 0, i32 2
  %18 = load double, double* %b, align 8
  %mul12 = fmul double 2.550000e+02, %18
  %conv13 = fptoui double %mul12 to i8
  %19 = load i8*, i8** %dest.addr, align 8
  %arrayidx14 = getelementptr inbounds i8, i8* %19, i64 2
  store i8 %conv13, i8* %arrayidx14, align 1
  %20 = load i32, i32* %bpp.addr, align 4
  %cmp = icmp eq i32 %20, 4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %21 = load i8*, i8** %dest.addr, align 8
  %arrayidx16 = getelementptr inbounds i8, i8* %21, i64 3
  store i8 -1, i8* %arrayidx16, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @gimp_rgn_iterator_free(%struct._GimpRgnIterator*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
